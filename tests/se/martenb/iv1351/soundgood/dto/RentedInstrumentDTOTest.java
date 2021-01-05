package se.martenb.iv1351.soundgood.dto;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.math.BigDecimal;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import static org.junit.jupiter.api.Assertions.*;

class RentedInstrumentDTOTest {
    private int instrumentID = 0;
    private int instrumentCategoryID = 0;
    private String instrumentType = null;
    private String instrumentCategoryName = null;
    private InstrumentDTO instrument = null;
    private int instrumentInStockID = 0;
    private String instrumentBrand = null;
    private BigDecimal rentalPrice = null;
    private RentableInstrumentDTO rentableInstrument = null;
    private int rentalID = 0;
    private Date rentalDate = null;

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
        rentalID = 1;
        rentalDate = new Date(System.currentTimeMillis());
    }

    @AfterEach
    void tearDown() {
        rentalDate = null;
        rentalID = 0;
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
        RentedInstrumentDTO rentedInstrument = new RentedInstrumentDTO(rentalID, rentalDate, rentableInstrument);
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String expectedResult = rentableInstrument.toString() + "\n\tDate:\t" + dateFormat.format(rentalDate);
        String result = rentedInstrument.toString();
        assertEquals(result, expectedResult);
    }
}