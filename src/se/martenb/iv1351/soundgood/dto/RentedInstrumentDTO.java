/*
 * Author: Mårten Björkman
 * Course: IV1351 (HT201)
 * Program: TIDAB
 * Email: marteb@kth.se
 */
package se.martenb.iv1351.soundgood.dto;

import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

/**
 * An instrument rented by a student.
 */
public class RentedInstrumentDTO {
    private final int rentalID;
    private final Date rentalDate;
    private final RentableInstrumentDTO rentableInstrument;

    /**
     * Create a rented instrument.
     * @param rentalID The current rental ID.
     * @param rentalDate The rental date.
     * @param rentableInstrument The rentable instrument.
     */
    public RentedInstrumentDTO(int rentalID, Date rentalDate, RentableInstrumentDTO rentableInstrument) {
        this.rentalID = rentalID;
        this.rentalDate = rentalDate;
        this.rentableInstrument = rentableInstrument;
    }

    /**
     * @return The current rental ID.
     */
    public int getRentalID() {
        return rentalID;
    }

    /**
     * @return The rental date.
     */
    public Date getRentalDate() {
        return rentalDate;
    }

    /**
     * @return The rentable instrument.
     */
    public RentableInstrumentDTO getRentableInstrument() {
        return rentableInstrument;
    }

    /**
     * String representation of a rented instrument.
     * @return The string representation.
     */
    @Override
    public String toString() {
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        return rentableInstrument.toString() + "\n\tDate:\t" + dateFormat.format(rentalDate);
    }
}
