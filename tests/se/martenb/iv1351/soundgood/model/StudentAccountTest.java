/*
 * Author: Mårten Björkman
 * Course: IV1351 (HT201)
 * Program: TIDAB
 * Email: marteb@kth.se
 */
package se.martenb.iv1351.soundgood.model;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class StudentAccountTest {
    @Test
    void initiateStudentAccount() {
        try {
            StudentAccount studentAccount = new StudentAccount();
        } catch (Exception e) {
            fail("Failed to initiate student account.");
        }
    }

    @Test
    void isStudentLoggedIn() {
        try {
            StudentAccount studentAccount = new StudentAccount();
            assertFalse(studentAccount.isStudentLoggedIn(), "Student is logged in without logging in.");
        } catch (Exception e) {
            // Not tested here
        }
    }

    @Test
    void getActiveRentals() {
        try {
            StudentAccount studentAccount = new StudentAccount();
            try {
                studentAccount.getActiveRentals();
                fail("Got active rentals without active login.");
            } catch (Exception ignored) {
                // Not tested here
            }
        } catch (Exception e) {
            // Not tested here
        }
    }

    @Test
    void listRentedInstruments() {
        try {
            StudentAccount studentAccount = new StudentAccount();
            try {
                studentAccount.listRentedInstruments();
                fail("Listed active rentals without logging in.");
            } catch (Exception ignored) {
                // Not tested here
            }
        } catch (Exception e) {
            // Not tested here
        }
    }

    @Test
    void terminateRental() {
        try {
            StudentAccount studentAccount = new StudentAccount();
            try {
                studentAccount.terminateRental(-1);
                fail("Allowed to try to terminate rental without logging in.");
            } catch (Exception ignored) {
                // Not tested here
            }
        } catch (Exception e) {
            // Not tested here
        }
    }

    @Test
    void listRentableInstrumentByType() {
        try {
            StudentAccount studentAccount = new StudentAccount();
            try {
                studentAccount.listRentableInstrumentByType("test");
                fail("Allowed to list instruments without login.");
            } catch (Exception ignored) {
                // Not tested here
            }
        } catch (Exception e) {
            // Not tested here
        }
    }

    @Test
    void listRentableInstrumentType() {
        try {
            StudentAccount studentAccount = new StudentAccount();
            try {
                studentAccount.listRentableInstrumentType();
                fail("Allowed to list instrument types without login.");
            } catch (Exception ignored) {
                // Not tested here
            }
        } catch (Exception e) {
            // Not tested here
        }
    }

    @Test
    void rentInstrument() {
        try {
            StudentAccount studentAccount = new StudentAccount();
            try {
                studentAccount.rentInstrument(-1);
                fail("Allowed to try to create rental without logging in.");
            } catch (Exception ignored) {
                // Not tested here
            }
        } catch (Exception e) {
            // Not tested here
        }
    }
}