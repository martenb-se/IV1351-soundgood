/*
 * Author: Mårten Björkman
 * Course: IV1351 (HT201)
 * Program: TIDAB
 * Email: marteb@kth.se
 */
package se.martenb.iv1351.soundgood.controller;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class ControllerTest {

    @Test
    void initiateStudentController() {
        try {
            Controller controller = new Controller();
        } catch (Exception e) {
            fail("Failed to initiate controller.");
        }
    }

    @Test
    void numberOfActiveRentals() {
        try {
            Controller controller = new Controller();
            try {
                controller.numberOfActiveRentals();
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
            Controller controller = new Controller();
            try {
                controller.listRentedInstruments();
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
            Controller controller = new Controller();
            try {
                controller.terminateRental(-1);
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
            Controller controller = new Controller();
            try {
                controller.listRentableInstrumentByType("test");
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
            Controller controller = new Controller();
            try {
                controller.listRentableInstrumentType();
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
            Controller controller = new Controller();
            try {
                controller.rentInstrument(-1);
                fail("Allowed to try to create rental without logging in.");
            } catch (Exception ignored) {
                // Not tested here
            }
        } catch (Exception e) {
            // Not tested here
        }
    }
}