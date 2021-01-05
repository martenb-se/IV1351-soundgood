/*
 * Author: Mårten Björkman
 * Course: IV1351 (HT201)
 * Program: TIDAB
 * Email: marteb@kth.se
 *
 * - [ Description ] -----------------------------
 *
 * This file is heavily influenced by the file Leif Lindbäck created:
 * https://github.com/KTH-IV1351/jdbc-bank/blob/master/src/main/java/se/kth/iv1351/bankjdbc/controller/Controller.java
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
package se.martenb.iv1351.soundgood.controller;

import se.martenb.iv1351.soundgood.dto.InstrumentAvailableDTO;
import se.martenb.iv1351.soundgood.dto.RentedInstrumentDTO;
import se.martenb.iv1351.soundgood.dto.StudentDTO;
import se.martenb.iv1351.soundgood.integration.SchoolDBException;
import se.martenb.iv1351.soundgood.model.StudentAccount;

import java.util.List;

/**
 * Application controller.
 */
public class Controller {
    private StudentAccount studentAccount = null;

    /**
     * Create a new instance, connect to the Soundgood School database.
     *
     * @throws SchoolDBException If unable to connect to the database.
     */
    public Controller() throws SchoolDBException {
        studentAccount = new StudentAccount();
    }

    /**
     * Authenticate student with Soundgood School Stuent ID
     *
     * @param studentID The student ID.
     * @throws OperationFailedException If the authentication failed.
     * @return The logged in student.
     */
    public StudentDTO loginStudentID(String studentID) throws OperationFailedException {
        String failureMessage = "Could not log in with student ID.";
        try {
            return studentAccount.authStudentID(studentID);
        } catch (Exception e) {
            throw new OperationFailedException(failureMessage, e);
        }
    }

    /**
     * Authenticate student with email address.
     *
     * @param emailAddress The student's email address.
     * @throws OperationFailedException If the authentication failed.
     * @return The logged in student.
     */
    public StudentDTO loginStudentEmailAddress(String emailAddress) throws OperationFailedException {
        String failureMessage = "Could not log in with email address.";
        try {
            return studentAccount.authStudentEmailAddress(emailAddress);
        } catch (Exception e) {
            throw new OperationFailedException(failureMessage, e);
        }
    }

    /**
     * Authenticate student with mobile BankID
     *
     * @param personNumber The student's personNumber
     * @throws OperationFailedException If the authentication failed.
     * @return The logged in student.
     */
    public StudentDTO loginStudentBankID(String personNumber) throws OperationFailedException {
        String failureMessage = "Could not log in with mobile BankID.";
        try {
            return studentAccount.authStudentBankID(personNumber);
        } catch (Exception e) {
            throw new OperationFailedException(failureMessage, e);
        }
    }

    /**
     * Get number of active rentals.
     *
     * @return The number of active rentals.
     * @throws OperationFailedException If unable to get number of active rentals.
     */
    public int numberOfActiveRentals() throws OperationFailedException {
        String failureMessage = "Could not get number of active rentals.";
        try {
            return studentAccount.getActiveRentals();
        } catch (Exception e) {
            throw new OperationFailedException(failureMessage, e);
        }
    }

    /**
     * List all rented instruments by student.
     *
     * @return A list of all active rentals by student.
     * @throws OperationFailedException If the listing failed.
     */
    public List<RentedInstrumentDTO> listRentedInstruments() throws OperationFailedException {
        String failureMessage = "Could not get number of active rentals.";
        try {
            return studentAccount.listRentedInstruments();
        } catch (Exception e) {
            throw new OperationFailedException(failureMessage, e);
        }
    }

    /**
     * Terminate the specified rental.
     *
     * @param rentalID The ID for the rental to terminate.
     * @throws OperationFailedException If unable to get number of active rentals.
     */
    public void terminateRental(int rentalID) throws OperationFailedException {
        String failureMessage = "Could not get number of active rentals.";
        try {
            studentAccount.terminateRental(rentalID);
        } catch (Exception e) {
            throw new OperationFailedException(failureMessage, e);
        }
    }

    /**
     * List all rentable instruments by type.
     *
     * @param type The type to look for.
     * @return A list for all rentable instruments with the specific type.
     * @throws OperationFailedException If the listing failed.
     */
    public List<InstrumentAvailableDTO> listRentableInstrumentByType(String type) throws OperationFailedException {
        String failureMessage = "Could not list rentable instruments.";
        try {
            return studentAccount.listRentableInstrumentByType(type);
        } catch (Exception e) {
            throw new OperationFailedException(failureMessage, e);
        }
    }

    /**
     * List all types with instruments that are available to rent.
     *
     * @return A list of all types with available instruments to rent.
     * @throws OperationFailedException If the listing failed.
     */
    public List<String> listRentableInstrumentType() throws OperationFailedException {
        String failureMessage = "Could not list rentable instrument types.";
        try {
            return studentAccount.listRentableInstrumentType();
        } catch (Exception e) {
            throw new OperationFailedException(failureMessage, e);
        }
    }

    /**
     * Rent a specified instrument.
     *
     * @param instrumentInStockID The ID for the instrument in stock.
     * @throws OperationFailedException If renting failed.
     */
    public void rentInstrument(int instrumentInStockID) throws OperationFailedException {
        String failureMessage = "Could not rent instrument.";
        try {
            studentAccount.rentInstrument(instrumentInStockID);
        } catch (Exception e) {
            throw new OperationFailedException(failureMessage, e);
        }
    }

}
