package se.martenb.iv1351.soundgood.dto;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class InstrumentDTOTest {
    private int instrumentID = 0;
    private int instrumentCategoryID = 0;
    private String instrumentType = null;
    private String instrumentCategoryName = null;

    @BeforeEach
    void setUp() {
        instrumentID = 1;
        instrumentCategoryID = 1;
        instrumentType = "TestingType";
        instrumentCategoryName = "TestingCategory";
    }

    @AfterEach
    void tearDown() {
        instrumentID = 0;
        instrumentCategoryID = 0;
        instrumentType = null;
        instrumentCategoryName = null;
    }

    @Test
    void testToString() {
        InstrumentDTO instrumentToTest = new InstrumentDTO(instrumentID, instrumentCategoryID, instrumentType,
                instrumentCategoryName);
        String expectedResult = instrumentType + " (" + instrumentCategoryName + ")";
        String result = instrumentToTest.toString();
        assertEquals(result, expectedResult);
    }
}