/*
 * Author: Mårten Björkman
 * Course: IV1351 (HT201)
 * Program: TIDAB
 * Email: marteb@kth.se
 */
package se.martenb.iv1351.soundgood.startup;

import se.martenb.iv1351.soundgood.controller.Controller;
import se.martenb.iv1351.soundgood.integration.SchoolDBException;
import se.martenb.iv1351.soundgood.view.View;

public class Main {
    public static void main(String[] args) {
        try {
            View consoleView = new View(new Controller());
            consoleView.runDeveloperView();
        } catch(SchoolDBException exception) {
            System.out.println("Unable to start application.");
            exception.printStackTrace();
        }
    }
}
