/*
 * Author: Mårten Björkman
 * Course: IV1351 (HT201)
 * Program: TIDAB
 * Email: marteb@kth.se
 */
package se.martenb.iv1351.soundgood.dto;

import java.sql.Date;

/**
 * Represents a person in the school.
 */
public class PersonDTO {
    private final int personID;
    private final String personNumber;
    private final Date birthDate;
    private final String firstName;
    private final String lastName;

    /**
     * Create a person.
     *
     * @param personID The application person id.
     * @param personNumber The person number.
     * @param birthDate The birth date.
     * @param firstName The first name.
     * @param lastName The last name.
     */
    public PersonDTO(int personID, String personNumber, Date birthDate, String firstName, String lastName) {
        this.personID = personID;
        this.personNumber = personNumber;
        this.birthDate = birthDate;
        this.firstName = firstName;
        this.lastName = lastName;
    }

    /**
     * @return The application person id.
     */
    public int getPersonID() {
        return personID;
    }

    /**
     * @return The person number.
     */
    public String getPersonNumber() {
        return personNumber;
    }

    /**
     * @return The birth date.
     */
    public Date getBirthDate() {
        return birthDate;
    }

    /**
     * @return The first name.
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     * @return The last name.
     */
    public String getLastName() {
        return lastName;
    }
}
