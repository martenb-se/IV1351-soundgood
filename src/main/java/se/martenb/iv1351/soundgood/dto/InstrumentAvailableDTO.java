/*
 * Author: Mårten Björkman
 * Course: IV1351 (HT201)
 * Program: TIDAB
 * Email: marteb@kth.se
 */
package se.martenb.iv1351.soundgood.dto;

/**
 * An available to rent instrument.
 */
public class InstrumentAvailableDTO {
    private final RentableInstrumentDTO rentableInstrument;
    private final int maximumQuantity;
    private final int rentedQuantity;
    private final int availableQuantity;

    /**
     * Create an available to rent instrument.
     *
     * @param rentableInstrument The rentable instrument.
     * @param rentedQuantity The maximum available quantity.
     * @param maximumQuantity The rented quantity.
     * @param availableQuantity The available quantity.
     */
    public InstrumentAvailableDTO(RentableInstrumentDTO rentableInstrument, int maximumQuantity, int rentedQuantity,
                                  int availableQuantity) {
        this.rentableInstrument = rentableInstrument;
        this.maximumQuantity = maximumQuantity;
        this.rentedQuantity = rentedQuantity;
        this.availableQuantity = availableQuantity;
    }

    /**
     * @return The rentable instrument.
     */
    public RentableInstrumentDTO getRentableInstrument() {
        return rentableInstrument;
    }

    /**
     * @return The maximum available quantity.
     */
    public int getMaximumQuantity() {
        return maximumQuantity;
    }

    /**
     * @return The rented quantity.
     */
    public int getRentedQuantity() {
        return rentedQuantity;
    }

    /**
     * @return The available quantity.
     */
    public int getAvailableQuantity() {
        return availableQuantity;
    }

    /**
     * String representation of an available instrument.
     * @return The string representation.
     */
    @Override
    public String toString() {
        return rentableInstrument.toString();
    }
}
