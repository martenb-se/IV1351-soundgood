/*
 * Author: Mårten Björkman
 * Course: IV1351 (HT201)
 * Program: TIDAB
 * Email: marteb@kth.se
 */
package se.martenb.iv1351.soundgood.dto;

/**
 * An instrument used in the school.
 */
public class InstrumentDTO {
    private final int instrumentID;
    private final int instrumentCategoryID;
    private final String instrumentType;
    private final String instrumentCategoryName;

    /**
     * Creates a new instrument.
     * @param instrumentID The instrument ID.
     * @param instrumentCategoryID The instrument category ID.
     * @param instrumentType The instrument type.
     * @param instrumentCategoryName The instrument category name.
     */
    public InstrumentDTO(int instrumentID, int instrumentCategoryID, String instrumentType,
                         String instrumentCategoryName) {
        this.instrumentID = instrumentID;
        this.instrumentCategoryID = instrumentCategoryID;
        this.instrumentType = instrumentType;
        this.instrumentCategoryName = instrumentCategoryName;
    }

    /**
     * @return The instrument ID.
     */
    public int getInstrumentID() {
        return instrumentID;
    }

    /**
     * @return The instrument category ID.
     */
    public int getInstrumentCategoryID() {
        return instrumentCategoryID;
    }

    /**
     * @return The instrument type.
     */
    public String getInstrumentType() {
        return instrumentType;
    }

    /**
     * @return The instrument category name.
     */
    public String getInstrumentCategoryName() {
        return instrumentCategoryName;
    }

    /**
     * String representation of an instrument.
     * @return The string representation.
     */
    @Override
    public String toString() {
        return instrumentType + " (" + instrumentCategoryName + ")";
    }
}
