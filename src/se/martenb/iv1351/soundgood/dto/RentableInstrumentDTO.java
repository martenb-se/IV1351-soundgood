/*
 * Author: Mårten Björkman
 * Course: IV1351 (HT201)
 * Program: TIDAB
 * Email: marteb@kth.se
 */
package se.martenb.iv1351.soundgood.dto;

import se.martenb.iv1351.soundgood.util.Amount;

import java.math.BigDecimal;

/**
 * An instrument that is rentable.
 */
public class RentableInstrumentDTO {
    private final int instrumentInStockID;
    private final String instrumentBrand;
    private final InstrumentDTO instrument;
    private final Amount rentalPrice;

    /**
     * Create a rentable instrument.
     *  @param instrumentInStockID The rentable instrument stock ID.
     * @param instrumentBrand The rentable instrument brand.
     * @param instrument The instrument.
     * @param rentalPrice The current rental price.
     */
    public RentableInstrumentDTO(int instrumentInStockID, String instrumentBrand, InstrumentDTO instrument,
                                 BigDecimal rentalPrice) {
        this.instrumentInStockID = instrumentInStockID;
        this.instrumentBrand = instrumentBrand;
        this.instrument = instrument;
        this.rentalPrice = new Amount(rentalPrice);
    }

    /**
     * @return The rentable instrument stock ID.
     */
    public int getInstrumentInStockID() {
        return instrumentInStockID;
    }

    /**
     * @return The rentable instrument brand.
     */
    public String getInstrumentBrand() {
        return instrumentBrand;
    }

    /**
     * @return The instrument.
     */
    public InstrumentDTO getInstrument() {
        return instrument;
    }

    /**
     * @return The current rental price.
     */
    public Amount getRentalPrice() {
        return rentalPrice;
    }

    /**
     * String representation of a rentable instrument.
     * @return The string representation.
     */
    @Override
    public String toString() {
        return instrument.toString() + "\n\tBrand:\t" + instrumentBrand + "\n\tPrice:\t" + rentalPrice.toString();
    }
}
