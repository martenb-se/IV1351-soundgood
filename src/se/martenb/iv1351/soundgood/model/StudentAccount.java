package se.martenb.iv1351.soundgood.model;

import se.martenb.iv1351.soundgood.dto.InstrumentAvailableDTO;
import se.martenb.iv1351.soundgood.dto.RentedInstrumentDTO;
import se.martenb.iv1351.soundgood.dto.StudentDTO;
import se.martenb.iv1351.soundgood.integration.SchoolDAO;
import se.martenb.iv1351.soundgood.integration.SchoolDBException;

import java.util.List;

/**
 * Represents a student account and what actions a student can perform.
 */
public class StudentAccount {
    private final SchoolDAO schoolDb;
    StudentDTO student;

    /**
     * Create a new instance of a student account.
     * @throws SchoolDBException If failed to load the database.
     */
    public StudentAccount() throws SchoolDBException {
        schoolDb = new SchoolDAO();
    }

    private boolean loggedIn() {
        return student != null;
    }

    /**
     * Ask if a user is logged in.
     * @return True if the student is logged in.
     */
    public boolean isStudentLoggedIn() {
        return loggedIn();
    }

    /**
     * Authenticate student with Soundgood School Stuent ID
     *
     * @param studentID The student ID.
     * @throws AuthenticationException If the authentication failed.
     * @return The authenticated in student.
     */
    public StudentDTO authStudentID(String studentID) throws AuthenticationException {
        String failureMessage = "Could not authenticate student with student ID: " + studentID;
        try {
            student = schoolDb.findStudentByStudentID(studentID);
            if (student == null)
                throw new AuthenticationException(failureMessage);
            return student;
        } catch (Exception e) {
            throw new AuthenticationException(failureMessage, e);
        }
    }

    /**
     * Authenticate student with email address.
     *
     * @param emailAddress The student's email address.
     * @throws AuthenticationException If the authentication failed.
     * @return The authenticated in student.
     */
    public StudentDTO authStudentEmailAddress(String emailAddress) throws AuthenticationException {
        String failureMessage = "Could not authenticate student with the email address: " + emailAddress;
        try {
            StudentDTO student = schoolDb.findStudentByEmailAddress(emailAddress);
            if (student == null)
                throw new AuthenticationException(failureMessage);
            return student;
        } catch (Exception e) {
            throw new AuthenticationException(failureMessage, e);
        }
    }

    /**
     * Authenticate student with mobile BankID
     *
     * @param personNumber The student's personNumber
     * @throws AuthenticationException If the authentication failed.
     * @return The authenticated in student.
     */
    public StudentDTO authStudentBankID(String personNumber) throws AuthenticationException {
        String failureMessage = "Could not authenticate student with the person number: " + personNumber;
        try {
            StudentDTO student = schoolDb.findStudentByPersonNumber(personNumber);
            if (student == null)
                throw new AuthenticationException(failureMessage);
            return student;
        } catch (Exception e) {
            throw new AuthenticationException(failureMessage, e);
        }
    }

    /**
     * Get number of active rentals by student.
     *
     * @return Number of active rentals by student.
     * @throws AuthenticationException If no student is logged in.
     * @throws SchoolDBException If unable to get active rentals number.
     */
    public int getActiveRentals() throws AuthenticationException, SchoolDBException {
        if (!loggedIn())
            throw new AuthenticationException("No logged in student.");
        return schoolDb.numberActiveRentalsByStudent(student.getPerson().getPersonID());
    }

    /**
     * List all instruments rented by the current student.
     *
     * @return A list of all rented instruments by the current student.
     * @throws AuthenticationException If no student is logged in.
     * @throws SchoolDBException If unable to get active rentals.
     */
    public List<RentedInstrumentDTO> listRentedInstruments() throws AuthenticationException, SchoolDBException {
        if (!loggedIn())
            throw new AuthenticationException("No logged in student.");
        return schoolDb.findAllRentedInstrumentsByStudent(student.getPerson().getPersonID());
    }

    /**
     * Terminate specified rental.
     *
     * @param rentalID The ID for the rental to terminate.
     * @throws AuthenticationException If no student is logged in.
     * @throws RentalException If unable to terminate rental
     */
    public void terminateRental(int rentalID) throws AuthenticationException, RentalException {
        if (!loggedIn())
            throw new AuthenticationException("No logged in student.");
        try {
            schoolDb.terminateRental(rentalID);
        } catch (Exception e) {
            throw new RentalException("Unable to terminate rental.");
        }
    }

    private void verifyStudentIsAllowedToRent() throws AuthenticationException, SchoolDBException, RentalException {
        if (getActiveRentals() >= 2)
            throw new RentalException("Student have reached maximum amount of allowed rentals");
    }

    /**
     * List all rentable instruments by type.
     *
     * @param type The type to look for.
     * @return A list for all rentable instruments with the specific type.
     * @throws AuthenticationException If no student is logged in.
     * @throws RentalException If the student is not allowed to rent.
     * @throws InstrumentStockException If the listing failed.
     */
    public List<InstrumentAvailableDTO> listRentableInstrumentByType(String type) throws AuthenticationException,
            RentalException, InstrumentStockException {
        try {
            verifyStudentIsAllowedToRent();
        } catch (SchoolDBException e) {
            throw new RentalException("Unable to verify if student is allowed to rent an instrument.");
        }
        try {
            return schoolDb.findAllAvailableInstrumentsByType(type);
        } catch (Exception e) {
            throw new InstrumentStockException("Could not search the instrument stock for the instrument type.", e);
        }
    }

    /**
     * List all types with instruments that are available to rent.
     *
     * @return A list of all types with available instruments to rent.
     * @throws AuthenticationException If no student is logged in.
     * @throws RentalException If the student is not allowed to rent.
     * @throws InstrumentStockException If the listing failed.
     */
    public List<String> listRentableInstrumentType() throws AuthenticationException, RentalException,
            InstrumentStockException {
        try {
            verifyStudentIsAllowedToRent();
        } catch (SchoolDBException e) {
            throw new RentalException("Unable to verify if student is allowed to rent an instrument.");
        }
        try {
            return schoolDb.findAllAvailableInstrumentType();
        } catch (Exception e) {
            throw new InstrumentStockException("Could not search the instrument stock for available instrument types.", e);
        }
    }

    /**
     * Rent a specified instrument.
     *
     * @param instrumentInStockID The ID of instrument in stock to rent.
     * @throws AuthenticationException If no student is logged in.
     * @throws RentalException If the student is not allowed to rent or if the rental failed.
     */
    public void rentInstrument(int instrumentInStockID) throws AuthenticationException, RentalException {
        try {
            verifyStudentIsAllowedToRent();
        } catch (SchoolDBException e) {
            throw new RentalException("Unable to verify if student is allowed to rent an instrument.");
        }
        try {
            schoolDb.createRental(student.getPerson().getPersonID(), instrumentInStockID);
        } catch (Exception e) {
            throw new RentalException("Could not rent instrument", e);
        }
    }

}
