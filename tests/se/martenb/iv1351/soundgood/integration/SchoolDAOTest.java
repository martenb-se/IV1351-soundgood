/*
 * Author: Mårten Björkman
 * Course: IV1351 (HT201)
 * Program: TIDAB
 * Email: marteb@kth.se
 */
package se.martenb.iv1351.soundgood.integration;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

import java.util.MissingResourceException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

class SchoolDAOTest {
    private SchoolDAO schoolDAO;

    @AfterEach
    void tearDown() {
        schoolDAO = null;
    }

    @Test
    void testInitializeDAOSettingsExist() {
        try {
            Class.forName("se.martenb.iv1351.soundgood.integration.SettingsDatabaseSchool");
            try {
                schoolDAO = new SchoolDAO();
            } catch (MissingResourceException e) {
                fail("Could not initialize DAO even though settings exits.");
            } catch (SchoolDBException ignored) {
                // Not tested here
            }
        } catch (ClassNotFoundException exception) {
            try {
                schoolDAO = new SchoolDAO();
                fail("Initialized DAO without any settings.");
            } catch (SchoolDBException unwantedException) {
                fail("Initialized DAO without any settings.");
            } catch (MissingResourceException wantedException) {
                fail("Database settings does not exist.");
            }
        }
    }

    @Test
    void testInitializeDAOSettingsDatabaseExist() {
        String patternNonexistentDatabase = "database \"(.*?)\" does not exist";
        Pattern regexNonexistentDatabase = Pattern.compile(patternNonexistentDatabase);
        try {
            schoolDAO = new SchoolDAO();
        } catch (MissingResourceException ignored) {
            // Not tested here
        } catch (SchoolDBException exception) {
            if (exception.getCause().getClass().toString().equals("class org.postgresql.util.PSQLException")) {
                Matcher matcherNonexistentDatabase =
                        regexNonexistentDatabase.matcher(exception.getCause().getMessage());
                if (matcherNonexistentDatabase.find()) {
                    fail("Database found in settings does not exist: " + matcherNonexistentDatabase.group(1) + ".");
                }
            }
        }
    }

    @Test
    void testInitializeDAOSettingsUsernamePasswordMatch() {
        String patternUsernamePasswordMatch = "password authentication failed for user \"(.*?)\"";
        Pattern regexUsernamePasswordMatch = Pattern.compile(patternUsernamePasswordMatch);
        try {
            schoolDAO = new SchoolDAO();
        } catch (MissingResourceException ignored) {
            // Not tested here
        } catch (SchoolDBException exception) {
            if (exception.getCause().getClass().toString().equals("class org.postgresql.util.PSQLException")) {
                Matcher matcherUsernamePasswordMatch =
                        regexUsernamePasswordMatch.matcher(exception.getCause().getMessage());
                if (matcherUsernamePasswordMatch.find()) {
                    fail("Password in settings cannot authenticate the specified user: " +
                            matcherUsernamePasswordMatch.group(1) + ".");
                } else {
                    exception.printStackTrace();
                    fail("org.postgresql.util.PSQLException was thrown for an unknown reason: " +
                            exception.toString());
                }
            }
        }
    }

    @Test
    void testInitializeDAOUnknownPSQLException() {
        String patternNonexistentDatabase = "database \"(.*?)\" does not exist";
        Pattern regexNonexistentDatabase = Pattern.compile(patternNonexistentDatabase);
        String patternUsernamePasswordMatch = "password authentication failed for user \"(.*?)\"";
        Pattern regexUsernamePasswordMatch = Pattern.compile(patternUsernamePasswordMatch);
        try {
            schoolDAO = new SchoolDAO();
        } catch (MissingResourceException ignored) {
            // Not tested here
        } catch (SchoolDBException exception) {
            if (exception.getCause().getClass().toString().equals("class org.postgresql.util.PSQLException")) {
                Matcher matcherNonexistentDatabase =
                        regexNonexistentDatabase.matcher(exception.getCause().getMessage());
                Matcher matcherUsernamePasswordMatch =
                        regexUsernamePasswordMatch.matcher(exception.getCause().getMessage());
                if (!matcherNonexistentDatabase.find() && !matcherUsernamePasswordMatch.find()) {
                    exception.printStackTrace();
                    fail("org.postgresql.util.PSQLException was thrown for an unknown reason: " +
                            exception.toString());
                }
            }
        }
    }

    @Test
    void testInitializeDAOUnknownSchoolDBException() {
        try {
            schoolDAO = new SchoolDAO();
        } catch (MissingResourceException ignored) {
            // Not tested here
        } catch (SchoolDBException exception) {
            if (!exception.getCause().getClass().toString().equals("class org.postgresql.util.PSQLException")) {
                exception.printStackTrace();
                fail("SchoolDBException was thrown for an unknown reason: " +
                        exception.toString());
            }
        }
    }

    @Test
    void testFindAllAvailableInstrumentTypeRelationsExist() {
        String patternNonexistentRelation = "relation \"(.*?)\" does not exist";
        Pattern regexNonexistentRelation = Pattern.compile(patternNonexistentRelation);
        try {
            schoolDAO = new SchoolDAO();
            try {
                schoolDAO.findAllAvailableInstrumentType();
            } catch (SchoolDBException exception) {
                if (exception.getCause().getClass().toString().equals("class org.postgresql.util.PSQLException")) {
                    Matcher matcherNonexistentRelation =
                            regexNonexistentRelation.matcher(exception.getCause().getMessage());
                    if (matcherNonexistentRelation.find()) {
                        fail("Required relation does not exist: " + matcherNonexistentRelation.group(1) + ".");
                    } else {
                        exception.printStackTrace();
                        fail("org.postgresql.util.PSQLException was thrown for an unknown reason: " +
                                exception.toString());
                    }
                } else {
                    exception.printStackTrace();
                    fail("SchoolDBException was thrown for an unknown reason: " +
                            exception.toString());
                }

            }
        } catch (SchoolDBException | MissingResourceException ignored) {
            // Not tested here..
        }
    }

    @Test
    void testFindAllAvailableInstrumentsByTypeRelationsExist() {
        String patternNonexistentRelation = "relation \"(.*?)\" does not exist";
        Pattern regexNonexistentRelation = Pattern.compile(patternNonexistentRelation);
        try {
            schoolDAO = new SchoolDAO();
            try {
                schoolDAO.findAllAvailableInstrumentsByType("");
            } catch (SchoolDBException exception) {
                if (exception.getCause().getClass().toString().equals("class org.postgresql.util.PSQLException")) {
                    Matcher matcherNonexistentRelation =
                            regexNonexistentRelation.matcher(exception.getCause().getMessage());
                    if (matcherNonexistentRelation.find()) {
                        fail("Required relation does not exist: " + matcherNonexistentRelation.group(1) + ".");
                    } else {
                        exception.printStackTrace();
                        fail("org.postgresql.util.PSQLException was thrown for an unknown reason: " +
                                exception.toString());
                    }
                } else {
                    exception.printStackTrace();
                    fail("SchoolDBException was thrown for an unknown reason: " +
                            exception.toString());
                }

            }
        } catch (SchoolDBException | MissingResourceException ignored) {
            // Not tested here..
        }
    }

    @Test
    void testFindStudentByPersonNumberRelationsExist() {
        String patternNonexistentRelation = "relation \"(.*?)\" does not exist";
        Pattern regexNonexistentRelation = Pattern.compile(patternNonexistentRelation);
        try {
            schoolDAO = new SchoolDAO();
            try {
                schoolDAO.findStudentByPersonNumber("1");
            } catch (SchoolDBException exception) {
                if (exception.getCause().getClass().toString().equals("class org.postgresql.util.PSQLException")) {
                    Matcher matcherNonexistentRelation =
                            regexNonexistentRelation.matcher(exception.getCause().getMessage());
                    if (matcherNonexistentRelation.find()) {
                        fail("Required relation does not exist: " + matcherNonexistentRelation.group(1) + ".");
                    } else {
                        exception.printStackTrace();
                        fail("org.postgresql.util.PSQLException was thrown for an unknown reason: " +
                                exception.toString());
                    }
                } else {
                    exception.printStackTrace();
                    fail("SchoolDBException was thrown for an unknown reason: " +
                            exception.toString());
                }

            }
        } catch (SchoolDBException | MissingResourceException ignored) {
            // Not tested here..
        }
    }

    @Test
    void testFindStudentByEmailAddressRelationsExist() {
        String patternNonexistentRelation = "relation \"(.*?)\" does not exist";
        Pattern regexNonexistentRelation = Pattern.compile(patternNonexistentRelation);
        try {
            schoolDAO = new SchoolDAO();
            try {
                schoolDAO.findStudentByEmailAddress("1");
            } catch (SchoolDBException exception) {
                if (exception.getCause().getClass().toString().equals("class org.postgresql.util.PSQLException")) {
                    Matcher matcherNonexistentRelation =
                            regexNonexistentRelation.matcher(exception.getCause().getMessage());
                    if (matcherNonexistentRelation.find()) {
                        fail("Required relation does not exist: " + matcherNonexistentRelation.group(1) + ".");
                    } else {
                        exception.printStackTrace();
                        fail("org.postgresql.util.PSQLException was thrown for an unknown reason: " +
                                exception.toString());
                    }
                } else {
                    exception.printStackTrace();
                    fail("SchoolDBException was thrown for an unknown reason: " +
                            exception.toString());
                }

            }
        } catch (SchoolDBException | MissingResourceException ignored) {
            // Not tested here..
        }
    }

    @Test
    void testFindStudentByStudentIDRelationsExist() {
        String patternNonexistentRelation = "relation \"(.*?)\" does not exist";
        Pattern regexNonexistentRelation = Pattern.compile(patternNonexistentRelation);
        try {
            schoolDAO = new SchoolDAO();
            try {
                schoolDAO.findStudentByStudentID("1");
            } catch (SchoolDBException exception) {
                if (exception.getCause().getClass().toString().equals("class org.postgresql.util.PSQLException")) {
                    Matcher matcherNonexistentRelation =
                            regexNonexistentRelation.matcher(exception.getCause().getMessage());
                    if (matcherNonexistentRelation.find()) {
                        fail("Required relation does not exist: " + matcherNonexistentRelation.group(1) + ".");
                    } else {
                        exception.printStackTrace();
                        fail("org.postgresql.util.PSQLException was thrown for an unknown reason: " +
                                exception.toString());
                    }
                } else {
                    exception.printStackTrace();
                    fail("SchoolDBException was thrown for an unknown reason: " +
                            exception.toString());
                }

            }
        } catch (SchoolDBException | MissingResourceException ignored) {
            // Not tested here..
        }
    }

    @Test
    void testNumberActiveRentalsByStudentRelationsExist() {
        String patternNonexistentRelation = "relation \"(.*?)\" does not exist";
        Pattern regexNonexistentRelation = Pattern.compile(patternNonexistentRelation);
        try {
            schoolDAO = new SchoolDAO();
            try {
                schoolDAO.numberActiveRentalsByStudent(1);
            } catch (SchoolDBException exception) {
                if (exception.getCause().getClass().toString().equals("class org.postgresql.util.PSQLException")) {
                    Matcher matcherNonexistentRelation =
                            regexNonexistentRelation.matcher(exception.getCause().getMessage());
                    if (matcherNonexistentRelation.find()) {
                        fail("Required relation does not exist: " + matcherNonexistentRelation.group(1) + ".");
                    } else {
                        exception.printStackTrace();
                        fail("org.postgresql.util.PSQLException was thrown for an unknown reason: " +
                                exception.toString());
                    }
                } else {
                    exception.printStackTrace();
                    fail("SchoolDBException was thrown for an unknown reason: " +
                            exception.toString());
                }

            }
        } catch (SchoolDBException | MissingResourceException ignored) {
            // Not tested here..
        }
    }

    @Test
    void testFindAllRentedInstrumentsByStudentRelationsExist() {
        String patternNonexistentRelation = "relation \"(.*?)\" does not exist";
        Pattern regexNonexistentRelation = Pattern.compile(patternNonexistentRelation);
        try {
            schoolDAO = new SchoolDAO();
            try {
                schoolDAO.findAllRentedInstrumentsByStudent(1);
            } catch (SchoolDBException exception) {
                if (exception.getCause().getClass().toString().equals("class org.postgresql.util.PSQLException")) {
                    Matcher matcherNonexistentRelation =
                            regexNonexistentRelation.matcher(exception.getCause().getMessage());
                    if (matcherNonexistentRelation.find()) {
                        fail("Required relation does not exist: " + matcherNonexistentRelation.group(1) + ".");
                    } else {
                        exception.printStackTrace();
                        fail("org.postgresql.util.PSQLException was thrown for an unknown reason: " +
                                exception.toString());
                    }
                } else {
                    exception.printStackTrace();
                    fail("SchoolDBException was thrown for an unknown reason: " +
                            exception.toString());
                }

            }
        } catch (SchoolDBException | MissingResourceException ignored) {
            // Not tested here..
        }
    }
}