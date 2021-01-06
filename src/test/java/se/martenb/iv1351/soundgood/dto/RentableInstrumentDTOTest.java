/*
 * Author: Mårten Björkman
 * Course: IV1351 (HT201)
 * Program: TIDAB
 * Email: marteb@kth.se
 */
package se.martenb.iv1351.soundgood.dto;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.math.BigDecimal;

import static org.junit.jupiter.api.Assertions.*;

class RentableInstrumentDTOTest {
    private int instrumentID = 0;
    private int instrumentCategoryID = 0;
    private String instrumentType = null;
    private String instrumentCategoryName = null;
    private InstrumentDTO instrument = null;
    private int instrumentInStockID = 0;
    private String instrumentBrand = null;
    private BigDecimal rentalPrice = null;

    @BeforeEach
    void setUp() {
        instrumentID = 1;
        instrumentCategoryID = 1;
        instrumentType = "TestingType";
        instrumentCategoryName = "TestingCategory";
        instrument = new InstrumentDTO(instrumentID, instrumentCategoryID, instrumentType, instrumentCategoryName);
        instrumentInStockID = 1;
        instrumentBrand = "TestingBrand";
        rentalPrice = new BigDecimal("100.00");
    }

    @AfterEach
    void tearDown() {
        rentalPrice = null;
        instrumentBrand = null;
        instrumentInStockID = 0;
        instrument = null;
        instrumentID = 0;
        instrumentCategoryID = 0;
        instrumentType = null;
        instrumentCategoryName = null;
    }

    @Test
    void testToString() {
        RentableInstrumentDTO rentableInstrument = new RentableInstrumentDTO(instrumentInStockID, instrumentBrand,
                instrument, rentalPrice);
        String expectedResult = instrument.toString() + "\n\tBrand:\t" + instrumentBrand + "\n\tPrice:\t" +
                rentableInstrument.getRentalPrice().toString();
        String result = rentableInstrument.toString();
        assertEquals(result, expectedResult);
    }
}