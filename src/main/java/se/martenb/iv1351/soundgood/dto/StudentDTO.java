/*
 * Author: Mårten Björkman
 * Course: IV1351 (HT201)
 * Program: TIDAB
 * Email: marteb@kth.se
 */
package se.martenb.iv1351.soundgood.dto;

/**
 * Represents a student.
 */
public class StudentDTO {
    private final PersonDTO person;
    private final String studentID;

    /**
     * Initialize student.
     *
     * @param person The person.
     * @param studentID The school student id.
     */
    public StudentDTO(PersonDTO person, String studentID) {
        this.person = person;
        this.studentID = studentID;
    }

    /**
     * @return The person.
     */
    public PersonDTO getPerson() {
        return person;
    }

    /**
     * @return The school student id.
     */
    public String getStudentID() {
        return studentID;
    }
}
