/*
 * Author: Mårten Björkman
 * Course: IV1351 (HT201)
 * Program: TIDAB
 * Email: marteb@kth.se
 *
 * - [ Description ] -----------------------------
 *
 * Imported from a previous project:
 * https://github.com/martenb-se/iv1350-saleprocess/blob/master/src/main/java/se/martenb/iv1350/project/saleprocess/view/ErrorMessageHandler.java
 *
 */
package se.martenb.iv1351.soundgood.view;

/**
 * Handler for user friendly error logs.
 */
public class ErrorMessageHandler {
    /**
     * Send user friendly log to output.
     *
     * @param logString The error message.
     */
    public void showErrorMessage(String logString) {
        StringBuilder errorMessage = new StringBuilder();
        errorMessage.append("!!\n!! Error! ");
        errorMessage.append(logString);
        errorMessage.append("Contact an administrator.");
        errorMessage.append("\n!!");
        System.out.println(errorMessage);
    }

}
