/*
 * Author: Mårten Björkman
 * Course: IV1351 (HT201)
 * Program: TIDAB
 * Email: marteb@kth.se
 */
package se.martenb.iv1351.soundgood.integration;

/**
 * Class containing database settings
 */
public interface SettingsDatabase {
    /**
     * @return The database URL
     */
    public String getURL();

    /**
     * @return The database username.
     */
    public String getUsername();

    /**
     * @return The database password.
     */
    public String getPassword();
}
