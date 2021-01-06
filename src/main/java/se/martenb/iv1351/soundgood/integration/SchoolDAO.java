/*
 * Author: Mårten Björkman
 * Course: IV1351 (HT201)
 * Program: TIDAB
 * Email: marteb@kth.se
 *
 * - [ Description ] -----------------------------
 *
 * This file is heavily influenced by the file Leif Lindbäck created:
 * https://github.com/KTH-IV1351/jdbc-bank/blob/master/src/main/java/se/kth/iv1351/bankjdbc/integration/BankDAO.java
 *
 * The MIT License (MIT)
 * Copyright (c) 2020 Leif Lindbäck
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction,including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so,subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 */
package se.martenb.iv1351.soundgood.integration;

import se.martenb.iv1351.soundgood.dto.PersonDTO;
import se.martenb.iv1351.soundgood.dto.StudentDTO;
import se.martenb.iv1351.soundgood.dto.InstrumentDTO;
import se.martenb.iv1351.soundgood.dto.RentableInstrumentDTO;
import se.martenb.iv1351.soundgood.dto.InstrumentAvailableDTO;
import se.martenb.iv1351.soundgood.dto.RentedInstrumentDTO;

import java.lang.reflect.InvocationTargetException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.MissingResourceException;

/**
 * Data access object (DAO) to responsible for handling all database calls in the
 * Soundgood Music School application.
 */
public class SchoolDAO {
    private static final String PERSON_TABLE_NAME = "person";
    private static final String STUDENT_TABLE_NAME = "student";
    private static final String EMAIL_TABLE_NAME = "email";
    private static final String PERSON_EMAIL_TABLE_NAME = "person_email";
    private static final String ACTIVE_RENTALS_TABLE_NAME = "query_active_rentals";
    private static final String ACTIVE_STUDENT_RENTALS = "query_active_student_rentals";
    private static final String INSTRUMENT_TABLE_NAME = "instrument";
    private static final String INSTRUMENT_CATEGORY_TABLE_NAME = "instrument_category";
    private static final String PRICING_SCHEME_INSTRUMENT_FEE_TABLE_NAME = "pricing_scheme_instrument_fee";
    private static final String INSTRUMENT_IN_STOCK_TABLE_NAME = "instrument_in_stock";
    private static final String INSTRUMENT_RENTAL_TABLE_NAME = "instrument_rental";

    private static final String PERSON_PK_COLUMN_NAME = "id";
    private static final String STUDENT_PK_COLUMN_NAME = "person_id";
    private static final String INSTRUMENT_PK_COLUMN_NAME = "id";
    private static final String INSTRUMENT_IN_STOCK_PK_COLUMN_NAME = "id";
    private static final String INSTRUMENT_CATEGORY_PK_COLUMN_NAME = "id";
    private static final String EMAIL_PK_COLUMN_NAME = "id";
    private static final String PRICING_SCHEME_INSTRUMENT_FEE_PK = "id";
    private static final String INSTRUMENT_RENTAL_PK_COLUMN_NAME = "id";

    private static final String PERSON_FK_COLUMN_NAME = "person_id";
    private static final String STUDENT_FK_COLUMN_NAME = "student_person_id";
    private static final String EMAIL_FK_COLUMN_NAME = "email_id";
    private static final String INSTRUMENT_FK_COLUMN_NAME = "instrument_id";
    private static final String INSTRUMENT_IN_STOCK_FK_COLUMN_NAME = "instrument_in_stock_id";
    private static final String INSTRUMENT_CATEGORY_FK_COLUMN_NAME = "instrument_category_id";
    private static final String PRICING_SCHEME_INSTRUMENT_FEE_FK = "pricing_scheme_instrument_fee_id";

    private static final String PERSON_PERSON_NUMBER_COLUMN_NAME = "person_number";
    private static final String PERSON_BIRTH_DATE_COLUMN_NAME = "birth_date";
    private static final String PERSON_FIRST_NAME_COLUMN_NAME = "first_name";
    private static final String PERSON_LAST_NAME_COLUMN_NAME = "last_name";

    private static final String STUDENT_STUDENT_ID_COLUMN_NAME = "student_id";

    private static final String EMAIL_EMAIL_ADDRESS_COLUMN_NAME = "email_address";

    private static final String ACTIVE_RENTALS_MAXIMUM_QUANTITY_COLUMN_NAME = "maximum_quantity";
    private static final String ACTIVE_RENTALS_RENTED_QUANTITY_COLUMN_NAME = "rented_quantity";
    private static final String ACTIVE_RENTALS_AVAILABLE_QUANTITY_COLUMN_NAME = "available_quantity";

    private static final String ACTIVE_STUDENT_RENTALS_RENTED_QUANTITY_COLUMN_NAME = "rented_quantity";

    private static final String INSTRUMENT_TYPE_COLUMN_NAME = "type";

    private static final String INSTRUMENT_CATEGORY_NAME_COLUMN_NAME = "name";

    private static final String PRICING_SCHEME_INSTRUMENT_FEE_DATE_COLUMN_NAME = "date";
    private static final String PRICING_SCHEME_INSTRUMENT_FEE_PRICE_COLUMN_NAME = "price";

    private static final String INSTRUMENT_IN_STOCK_INSTRUMENT_BRAND_COLUMN_NAME = "instrument_brand";

    private static final String INSTRUMENT_RENTAL_DATE_FROM_COLUMN_NAME = "date_from";
    private static final String INSTRUMENT_RENTAL_DATE_TO_COLUMN_NAME = "date_to";

    private String DatabaseURL;
    private String DatabaseUser;
    private String DatabasePass;

    private Connection connection;
    private PreparedStatement findStudentByPersonNumberStmt;
    private PreparedStatement findStudentByEmailAddressStmt;
    private PreparedStatement findStudentByStudentIDStmt;
    private PreparedStatement findAvailableInstrumentTypeStmt;
    private PreparedStatement findAvailableInstrumentsByTypeStmt;
    private PreparedStatement numberActiveRentalsByStudentStmt;
    private PreparedStatement findRentedInstrumentsStmt;
    private PreparedStatement createRentalStmt;
    private PreparedStatement updateRentalTerminateStmt;

    /**
     * Creates a database connected DAO.
     * @throws SchoolDBException If failed to connect to the database.
     * @throws MissingResourceException If failed to find the settings class.
     */
    public SchoolDAO() throws SchoolDBException, MissingResourceException {
        initializeDatabaseSettings();
        try {
            connectToSchoolDB();
            prepareStatements();
        } catch (SQLException exception) {
            throw new SchoolDBException("Could not connect to the database.", exception);
        }
    }

    private void initializeDatabaseSettings() {
        try {
            Class<?> clazz = Class.forName("se.martenb.iv1351.soundgood.integration.SettingsDatabaseSchool");
            SettingsDatabase settingsDatabase = (SettingsDatabase) clazz.getDeclaredConstructor().newInstance();
            this.DatabaseURL = settingsDatabase.getURL();
            this.DatabaseUser = settingsDatabase.getUsername();
            this.DatabasePass = settingsDatabase.getPassword();
        } catch(ClassNotFoundException | NoSuchMethodException | InstantiationException | IllegalAccessException |
                InvocationTargetException e ) {
            throw new MissingResourceException("se.martenb.iv1351.soundgood.integration.SettingsDatabaseSchool class " +
                    "does not exist.","se.martenb.iv1351.soundgood.integration.SettingsDatabase","");
        }
    }

    private StudentDTO findStudentByStringParameter(PreparedStatement stmt, String param)
            throws SchoolDBException {
        String failureMessage = "Could not search for specified student.";
        ResultSet result = null;
        try {
            stmt.setString(1, param);
            result = stmt.executeQuery();
            if(result.next()) {
                PersonDTO person = new PersonDTO(result.getInt(PERSON_FK_COLUMN_NAME),
                        result.getString(PERSON_PERSON_NUMBER_COLUMN_NAME),
                        result.getDate(PERSON_BIRTH_DATE_COLUMN_NAME), result.getString(PERSON_FIRST_NAME_COLUMN_NAME),
                        result.getString(PERSON_LAST_NAME_COLUMN_NAME));
                return new StudentDTO(person, result.getString(STUDENT_STUDENT_ID_COLUMN_NAME));
            }
        } catch (SQLException sqlExecuteException) {
            handleException(failureMessage, sqlExecuteException);
        } finally {
            if (result != null) {
                closeResultSet(failureMessage, result);
            }
        }
        return null;
    }

    /**
     * Find a student by their person number.
     *
     * @param personNumber The student's person number.
     * @return The student.
     * @throws SchoolDBException If failed to look for student.
     */
    public StudentDTO findStudentByPersonNumber(String personNumber) throws SchoolDBException {
        return this.findStudentByStringParameter(findStudentByPersonNumberStmt, personNumber);
    }

    /**
     * Find a student by their email address.
     *
     * @param emailAddress The student's email address.
     * @return The student.
     * @throws SchoolDBException If failed to look for student.
     */
    public StudentDTO findStudentByEmailAddress(String emailAddress) throws SchoolDBException {
        return this.findStudentByStringParameter(findStudentByEmailAddressStmt, emailAddress);
    }

    /**
     * Find a student by their Soundgood Music School ID.
     *
     * @param studentID The student's Soundgood Music School ID.
     * @return The student.
     * @throws SchoolDBException If failed to look for student.
     */
    public StudentDTO findStudentByStudentID(String studentID) throws SchoolDBException {
        return this.findStudentByStringParameter(findStudentByStudentIDStmt, studentID);
    }

    /**
     * Get number of active rentals for specified student.
     *
     * @param studentPersonID The student's application person ID.
     * @return The number of active rentals.
     * @throws SchoolDBException If failed to look for rentals.
     */
    public int numberActiveRentalsByStudent(int studentPersonID) throws SchoolDBException {
        String failureMessage = "Could not search in active rentals.";
        ResultSet result = null;
        try {
            numberActiveRentalsByStudentStmt.setInt(1, studentPersonID);
            result = numberActiveRentalsByStudentStmt.executeQuery();
            if(result.next()) {
                return result.getInt(ACTIVE_STUDENT_RENTALS_RENTED_QUANTITY_COLUMN_NAME);
            }
        } catch (SQLException sqlExecuteException) {
            handleException(failureMessage, sqlExecuteException);
        } finally {
            if (result != null) {
                closeResultSet(failureMessage, result);
            }
        }
        return 0;
    }

    public List<RentedInstrumentDTO> findAllRentedInstrumentsByStudent(int studentPersonID) throws SchoolDBException {
        String failureMessage = "Could not search for rented instruments.";
        List<RentedInstrumentDTO> rentedInstrumentList = new ArrayList<>();
        ResultSet result = null;
        try {
            findRentedInstrumentsStmt.setInt(1, studentPersonID);
            result = findRentedInstrumentsStmt.executeQuery();
            while(result.next()) {
                InstrumentDTO instrument = new InstrumentDTO(result.getInt(INSTRUMENT_FK_COLUMN_NAME),
                        result.getInt(INSTRUMENT_CATEGORY_FK_COLUMN_NAME),
                        result.getString(INSTRUMENT_TYPE_COLUMN_NAME),
                        result.getString(INSTRUMENT_CATEGORY_NAME_COLUMN_NAME));
                RentableInstrumentDTO rentableInstrument =
                        new RentableInstrumentDTO(result.getInt(INSTRUMENT_IN_STOCK_FK_COLUMN_NAME),
                                result.getString(INSTRUMENT_IN_STOCK_INSTRUMENT_BRAND_COLUMN_NAME), instrument,
                                result.getBigDecimal(PRICING_SCHEME_INSTRUMENT_FEE_PRICE_COLUMN_NAME));
                rentedInstrumentList.add(new RentedInstrumentDTO(result.getInt(INSTRUMENT_RENTAL_PK_COLUMN_NAME),
                        result.getDate(INSTRUMENT_RENTAL_DATE_FROM_COLUMN_NAME), rentableInstrument));
            }
        } catch (SQLException sqlExecuteException) {
            handleException(failureMessage, sqlExecuteException);
        } finally {
            if (result != null) {
                closeResultSet(failureMessage, result);
            }
        }
        return rentedInstrumentList;
    }

    /**
     * Retrieves all instrument types where it's possible to rent an instrument.
     *
     * @return A list of all instrument types that are possible to rent.
     * @throws SchoolDBException If failed to list all available types.
     */
    public List<String> findAllAvailableInstrumentType() throws SchoolDBException {
        String failureMessage = "Could not search for available instruments types to rent.";
        List<String> typesAvailable = new ArrayList<>();
        try (ResultSet result = findAvailableInstrumentTypeStmt.executeQuery()) {
            while(result.next()) {
                typesAvailable.add(result.getString(INSTRUMENT_TYPE_COLUMN_NAME));
            }
        } catch (SQLException sqlExecuteException) {
            handleException(failureMessage, sqlExecuteException);
        }
        return typesAvailable;
    }

    /**
     * Retrieves all available instruments by specific type for rent.
     *
     * @param instrumentType The instrument type.
     * @return A list of all instruments of specified type for rent.
     * @throws SchoolDBException If failed to list all available instruments.
     */
    public List<InstrumentAvailableDTO> findAllAvailableInstrumentsByType(String instrumentType)
            throws SchoolDBException {
        String failureMessage = "Could not search for available instruments to rent.";
        List<InstrumentAvailableDTO> instrumentAvailable = new ArrayList<>();
        ResultSet result = null;
        try {
            findAvailableInstrumentsByTypeStmt.setString(1, instrumentType.toLowerCase());
            result = findAvailableInstrumentsByTypeStmt.executeQuery();
            while(result.next()) {
                InstrumentDTO instrument = new InstrumentDTO(result.getInt(INSTRUMENT_FK_COLUMN_NAME),
                        result.getInt(INSTRUMENT_CATEGORY_FK_COLUMN_NAME),
                        result.getString(INSTRUMENT_TYPE_COLUMN_NAME),
                        result.getString(INSTRUMENT_CATEGORY_NAME_COLUMN_NAME));
                RentableInstrumentDTO rentableInstrument =
                        new RentableInstrumentDTO(result.getInt(INSTRUMENT_IN_STOCK_FK_COLUMN_NAME),
                                result.getString(INSTRUMENT_IN_STOCK_INSTRUMENT_BRAND_COLUMN_NAME), instrument,
                                result.getBigDecimal(PRICING_SCHEME_INSTRUMENT_FEE_PRICE_COLUMN_NAME));
                instrumentAvailable.add(new InstrumentAvailableDTO(rentableInstrument,
                        result.getInt(ACTIVE_RENTALS_MAXIMUM_QUANTITY_COLUMN_NAME),
                        result.getInt(ACTIVE_RENTALS_RENTED_QUANTITY_COLUMN_NAME),
                        result.getInt(ACTIVE_RENTALS_AVAILABLE_QUANTITY_COLUMN_NAME)));
            }
        } catch (SQLException sqlExecuteException) {
            handleException(failureMessage, sqlExecuteException);
        } finally {
            if (result != null) {
                closeResultSet(failureMessage, result);
            }
        }
        return instrumentAvailable;
    }

    /**
     * Creates a new rental.
     *
     * @param studentPersonID The application person ID for the student who rents.
     * @param instrumentInStockID The instrument in stock ID for the instrument to rent.
     * @throws SchoolDBException If failed to create a new rental.
     */
    public void createRental(int studentPersonID, int instrumentInStockID) throws SchoolDBException {
        String failureMessage = "Could not rent specified instrument.";
        int updatedRows = 0;
        try {
            createRentalStmt.setInt(1, studentPersonID);
            createRentalStmt.setInt(2, instrumentInStockID);
            updatedRows = createRentalStmt.executeUpdate();
            if (updatedRows != 1) {
                handleException(failureMessage, null);
            }
            connection.commit();
        } catch (SQLException sqlExecuteException) {
            handleException(failureMessage, sqlExecuteException);
        }
    }

    /**
     * Terminate a specified rental.
     *
     * @param rentalID The rental to terminate.
     * @throws SchoolDBException If failed to terminate rental.
     */
    public void terminateRental(int rentalID) throws SchoolDBException {
        String failureMessage = "Could not terminate rental.";
        int updatedRows = 0;
        try {
            updateRentalTerminateStmt.setInt(1, rentalID);
            updatedRows = updateRentalTerminateStmt.executeUpdate();
            if (updatedRows != 1) {
                handleException(failureMessage, null);
            }
            connection.commit();
        } catch (SQLException sqlExecuteException) {
            handleException(failureMessage, sqlExecuteException);
        }
    }

    private void connectToSchoolDB() throws SQLException {
        connection = DriverManager.getConnection(this.DatabaseURL, this.DatabaseUser, this.DatabasePass);
        connection.setAutoCommit(false);
    }

    private void prepareStatements() throws SQLException {
        String studentColumnsSel = "s." + STUDENT_PK_COLUMN_NAME + ", " + "s." + STUDENT_STUDENT_ID_COLUMN_NAME + ", " +
                "p." + PERSON_PERSON_NUMBER_COLUMN_NAME + ", " + "p." + PERSON_BIRTH_DATE_COLUMN_NAME + ", " + "p." +
                PERSON_FIRST_NAME_COLUMN_NAME + ", " + "p." + PERSON_LAST_NAME_COLUMN_NAME + " ";

        findStudentByPersonNumberStmt = connection.prepareStatement("SELECT " + studentColumnsSel +
                "FROM (SELECT * FROM " + PERSON_TABLE_NAME + " WHERE " + PERSON_PERSON_NUMBER_COLUMN_NAME +
                " = ?) AS p INNER JOIN " + STUDENT_TABLE_NAME + " AS s ON p." + PERSON_PK_COLUMN_NAME + " = s." +
                PERSON_FK_COLUMN_NAME);

        findStudentByEmailAddressStmt = connection.prepareStatement("SELECT " + studentColumnsSel +
                "FROM (SELECT * FROM " + EMAIL_TABLE_NAME + " WHERE " + EMAIL_EMAIL_ADDRESS_COLUMN_NAME +
                " = ?) AS e INNER JOIN " + PERSON_EMAIL_TABLE_NAME + " AS pe ON e." + EMAIL_PK_COLUMN_NAME + " = pe." +
                EMAIL_FK_COLUMN_NAME + " INNER JOIN " + STUDENT_TABLE_NAME + " AS s ON pe." + PERSON_FK_COLUMN_NAME +
                " = s." + PERSON_FK_COLUMN_NAME + " INNER JOIN " + PERSON_TABLE_NAME + " AS p ON pe." +
                PERSON_FK_COLUMN_NAME + " = p." + PERSON_PK_COLUMN_NAME);

        findStudentByStudentIDStmt = connection.prepareStatement("SELECT " + studentColumnsSel +
                "FROM (SELECT * FROM " + STUDENT_TABLE_NAME + " WHERE " + STUDENT_STUDENT_ID_COLUMN_NAME +
                " = ?) AS s INNER JOIN " + PERSON_TABLE_NAME + " AS p ON s." + PERSON_FK_COLUMN_NAME + " = p." +
                PERSON_PK_COLUMN_NAME);

        findAvailableInstrumentsByTypeStmt = connection.prepareStatement("SELECT ins." +
                INSTRUMENT_CATEGORY_FK_COLUMN_NAME + ", ins_cat." + INSTRUMENT_CATEGORY_NAME_COLUMN_NAME + ", aiis." +
                INSTRUMENT_FK_COLUMN_NAME + ", ins." + INSTRUMENT_TYPE_COLUMN_NAME + ", aiis." +
                INSTRUMENT_IN_STOCK_INSTRUMENT_BRAND_COLUMN_NAME + ", aiis." + INSTRUMENT_IN_STOCK_FK_COLUMN_NAME +
                ", aiis." + ACTIVE_RENTALS_MAXIMUM_QUANTITY_COLUMN_NAME + ", aiis." +
                ACTIVE_RENTALS_RENTED_QUANTITY_COLUMN_NAME + ", aiis." + ACTIVE_RENTALS_AVAILABLE_QUANTITY_COLUMN_NAME +
                ", apsif." + PRICING_SCHEME_INSTRUMENT_FEE_PRICE_COLUMN_NAME + " FROM (SELECT * FROM " +
                ACTIVE_RENTALS_TABLE_NAME + " WHERE " + ACTIVE_RENTALS_AVAILABLE_QUANTITY_COLUMN_NAME +

                " > 0) AS aiis INNER JOIN ( " +
                "  SELECT " +
                "    * " +
                "  FROM " + INSTRUMENT_TABLE_NAME + " " +
                "  WHERE LOWER(" + INSTRUMENT_TYPE_COLUMN_NAME + ") = ? " +

                ") AS ins ON aiis." + INSTRUMENT_FK_COLUMN_NAME +
                " = ins." + INSTRUMENT_PK_COLUMN_NAME + " INNER JOIN " + INSTRUMENT_CATEGORY_TABLE_NAME +
                " AS ins_cat ON ins." + INSTRUMENT_CATEGORY_FK_COLUMN_NAME + " = ins_cat." +
                INSTRUMENT_CATEGORY_PK_COLUMN_NAME + " INNER JOIN (SELECT psif.* FROM (SELECT MAX(" +
                PRICING_SCHEME_INSTRUMENT_FEE_DATE_COLUMN_NAME + ") as " +
                PRICING_SCHEME_INSTRUMENT_FEE_DATE_COLUMN_NAME + ", " + INSTRUMENT_IN_STOCK_FK_COLUMN_NAME +
                " FROM " + PRICING_SCHEME_INSTRUMENT_FEE_TABLE_NAME + " GROUP BY " +
                INSTRUMENT_IN_STOCK_FK_COLUMN_NAME + " ) AS apsif INNER JOIN " +
                PRICING_SCHEME_INSTRUMENT_FEE_TABLE_NAME + " AS psif ON apsif." +
                PRICING_SCHEME_INSTRUMENT_FEE_DATE_COLUMN_NAME + " = psif." +
                PRICING_SCHEME_INSTRUMENT_FEE_DATE_COLUMN_NAME + " AND apsif." + INSTRUMENT_IN_STOCK_FK_COLUMN_NAME +
                " = psif." + INSTRUMENT_IN_STOCK_FK_COLUMN_NAME + " ) AS apsif ON aiis." +
                INSTRUMENT_IN_STOCK_FK_COLUMN_NAME + " = apsif." + INSTRUMENT_IN_STOCK_FK_COLUMN_NAME +
                " ORDER BY ins_cat." + INSTRUMENT_CATEGORY_NAME_COLUMN_NAME + ", ins." + INSTRUMENT_TYPE_COLUMN_NAME +
                ", aiis." + INSTRUMENT_IN_STOCK_INSTRUMENT_BRAND_COLUMN_NAME);

        findAvailableInstrumentTypeStmt = connection.prepareStatement("SELECT " +
                "  ins." + INSTRUMENT_TYPE_COLUMN_NAME + " " +
                "FROM ( " +
                "  SELECT " +
                "    * " +
                "  FROM " + ACTIVE_RENTALS_TABLE_NAME + " " +
                "  WHERE " + ACTIVE_RENTALS_AVAILABLE_QUANTITY_COLUMN_NAME + " > 0 " +
                ") AS aiis " +
                "INNER JOIN " + INSTRUMENT_TABLE_NAME + " AS ins " +
                "  ON aiis."  + INSTRUMENT_FK_COLUMN_NAME + " = ins." + INSTRUMENT_PK_COLUMN_NAME + " " +
                "GROUP BY " +
                "  ins." + INSTRUMENT_TYPE_COLUMN_NAME + " " +
                "ORDER BY " +
                "  ins." + INSTRUMENT_TYPE_COLUMN_NAME);

        numberActiveRentalsByStudentStmt = connection.prepareStatement("SELECT * FROM " + ACTIVE_STUDENT_RENTALS +
                " WHERE " + STUDENT_FK_COLUMN_NAME + " = ?");

        findRentedInstrumentsStmt = connection.prepareStatement("SELECT ir." + INSTRUMENT_RENTAL_PK_COLUMN_NAME +
                ", ir." + INSTRUMENT_IN_STOCK_FK_COLUMN_NAME + ", i." + INSTRUMENT_CATEGORY_FK_COLUMN_NAME + ", iis." +
                INSTRUMENT_FK_COLUMN_NAME + ", ic." + INSTRUMENT_CATEGORY_NAME_COLUMN_NAME + ", i." +
                INSTRUMENT_TYPE_COLUMN_NAME + ", iis." + INSTRUMENT_IN_STOCK_INSTRUMENT_BRAND_COLUMN_NAME + ", psif." +
                PRICING_SCHEME_INSTRUMENT_FEE_PRICE_COLUMN_NAME + ", ir." + INSTRUMENT_RENTAL_DATE_FROM_COLUMN_NAME +
                " FROM (SELECT * FROM " + INSTRUMENT_RENTAL_TABLE_NAME + " WHERE " +
                INSTRUMENT_RENTAL_DATE_TO_COLUMN_NAME + " IS NULL AND " + STUDENT_FK_COLUMN_NAME +
                " = ?) AS ir INNER JOIN " + PRICING_SCHEME_INSTRUMENT_FEE_TABLE_NAME + " AS psif ON ir." +
                PRICING_SCHEME_INSTRUMENT_FEE_FK + " = psif." + PRICING_SCHEME_INSTRUMENT_FEE_PK + " INNER JOIN " +
                INSTRUMENT_IN_STOCK_TABLE_NAME + " AS iis ON ir." + INSTRUMENT_IN_STOCK_FK_COLUMN_NAME + " = iis." +
                INSTRUMENT_IN_STOCK_PK_COLUMN_NAME + " INNER JOIN " + INSTRUMENT_TABLE_NAME + " AS i ON iis." +
                INSTRUMENT_FK_COLUMN_NAME + " = i." + INSTRUMENT_PK_COLUMN_NAME + " INNER JOIN " +
                INSTRUMENT_CATEGORY_TABLE_NAME + " AS ic ON i." + INSTRUMENT_CATEGORY_FK_COLUMN_NAME + " = ic." +
                INSTRUMENT_CATEGORY_PK_COLUMN_NAME);

        createRentalStmt = connection.prepareStatement("INSERT INTO " + INSTRUMENT_RENTAL_TABLE_NAME + " (" +
                PRICING_SCHEME_INSTRUMENT_FEE_FK +  ", " + INSTRUMENT_IN_STOCK_FK_COLUMN_NAME + ", " +
                INSTRUMENT_RENTAL_DATE_FROM_COLUMN_NAME + ", " + STUDENT_FK_COLUMN_NAME + ") SELECT psif." +
                PRICING_SCHEME_INSTRUMENT_FEE_PK + ", psif. " + INSTRUMENT_IN_STOCK_FK_COLUMN_NAME +
                ", now(), ? FROM (SELECT MAX(" + PRICING_SCHEME_INSTRUMENT_FEE_DATE_COLUMN_NAME + ") as " +
                PRICING_SCHEME_INSTRUMENT_FEE_DATE_COLUMN_NAME + ", " + INSTRUMENT_IN_STOCK_FK_COLUMN_NAME + " FROM " +
                PRICING_SCHEME_INSTRUMENT_FEE_TABLE_NAME + " GROUP BY " + INSTRUMENT_IN_STOCK_FK_COLUMN_NAME +
                ") AS apsif INNER JOIN " + PRICING_SCHEME_INSTRUMENT_FEE_TABLE_NAME + " AS psif ON apsif." +
                PRICING_SCHEME_INSTRUMENT_FEE_DATE_COLUMN_NAME + " = psif." +
                PRICING_SCHEME_INSTRUMENT_FEE_DATE_COLUMN_NAME + " AND apsif." + INSTRUMENT_IN_STOCK_FK_COLUMN_NAME +
                " = psif." + INSTRUMENT_IN_STOCK_FK_COLUMN_NAME + " WHERE psif." + INSTRUMENT_IN_STOCK_FK_COLUMN_NAME +
                " = ?");

        updateRentalTerminateStmt = connection.prepareStatement("UPDATE " + INSTRUMENT_RENTAL_TABLE_NAME + " SET " +
                INSTRUMENT_RENTAL_DATE_TO_COLUMN_NAME + " = now() WHERE " + INSTRUMENT_RENTAL_PK_COLUMN_NAME + " = ?");

    }

    private void handleException(String failureMessage, Exception exceptionCause) throws SchoolDBException {
        String completeFailureMessage = failureMessage;
        try {
            connection.rollback();
        } catch (SQLException rollbackException) {
            completeFailureMessage += " Failed to rollback transaction. Reason: " + rollbackException.getMessage();
        }

        if (exceptionCause != null) {
            throw new SchoolDBException(completeFailureMessage, exceptionCause);
        } else {
            throw new SchoolDBException(completeFailureMessage);
        }
    }

    private void closeResultSet(String failureMessage, ResultSet result) throws SchoolDBException {
        try {
            result.close();
        } catch (Exception e) {
            throw new SchoolDBException(failureMessage + " Could not close result set.", e);
        }
    }

}
