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

class InstrumentAvailableDTOTest {
    private int instrumentID = 0;
    private int instrumentCategoryID = 0;
    private String instrumentType = null;
    private String instrumentCategoryName = null;
    private InstrumentDTO instrument = null;
    private int instrumentInStockID = 0;
    private String instrumentBrand = null;
    private BigDecimal rentalPrice = null;
    private RentableInstrumentDTO rentableInstrument = null;
    int maximumQuantity = 0;
    int rentedQuantity = 0;
    int availableQuantity = 0;

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
        rentableInstrument = new RentableInstrumentDTO(instrumentInStockID, instrumentBrand, instrument, rentalPrice);
        maximumQuantity = 10;
        rentedQuantity = 7;
        availableQuantity = 3;
    }

    @AfterEach
    void tearDown() {
        availableQuantity = 0;
        rentedQuantity = 0;
        maximumQuantity = 0;
        rentableInstrument = null;
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
        InstrumentAvailableDTO instrumentAvailable = new InstrumentAvailableDTO(rentableInstrument, maximumQuantity,
                rentedQuantity, availableQuantity);
        String expectedResult = rentableInstrument.toString();
        String result = instrumentAvailable.toString();
        assertEquals(result, expectedResult);
    }
}