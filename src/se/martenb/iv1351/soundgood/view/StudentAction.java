package se.martenb.iv1351.soundgood.view;

/**
 * Defines all actions a student can perform.
 */
public enum StudentAction {
    /**
     * Login via mobile BankID
     */
    LOGIN_BANKID,
    /**
     * Login via email address
     */
    LOGIN_EMAIL,
    /**
     * Login via student ID
     */
    LOGIN_STUDENT_ID,
    /**
     * Logout from application.
     */
    LOGOUT,
    /**
     * Search for instruments by type.
     */
    INSTRUMENT_SEARCH_BY_TYPE,
    /**
     * List all rented instruments by student in order to terminate a rental.
     */
    INSTRUMENT_LIST_TERMINATE
}
