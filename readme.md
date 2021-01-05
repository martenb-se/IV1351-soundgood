# Soundgood Music School
This project is made possible with:
* **PostgreSQL 13.1** DBMS.
* **Java 11**
  * **PostgreSQL JDBC Driver 42.2.18**: 
    [PostgreSQL JDBC Driver Download Page](https://jdbc.postgresql.org/download.html).
  * **JUnit 5.4** for application testing.
* **Node 15.2.1** for data generation.

## Sample printout


## Install
### Database

Database file:
[./resources/soundgood_music_school.sql](https://github.com/martenb-se/IV1351-soundgood/blob/master/resource/soundgood_music_school.sql)

Go into the **PostgreSQL interactive terminal**
```
$ psql -U [USERNAME]
```
Create a new database (_soundgood_) for the data.
```
$ CREATE DATABASE soundgood;
```
Enter the desired database and import the above database structure.
```
$ \c soundgood
$ \i './resource/soundgood_music_school.sql';
```

### Data
Data file:
[./resources/soundgood_music_school_test_data.sql](https://github.com/martenb-se/IV1351-soundgood/blob/master/resource/soundgood_music_school_test_data.sql)

Import the database data into the same database as above.
```
$ \i './resource/soundgood_music_school_test_data.sql';
```

#### Data Generation
Script file: 
[./resources/generate.data.js](https://github.com/martenb-se/IV1351-soundgood/blob/master/resource/generate.data.js)

To generate new data, run the generation script in Node and send the output to the new file. 
The script will generate data for a valid database state (but the data has no other logical 
restrictions and is only pseudorandomly generated). The script generates around 100 000 rows 
and might take more than 30 seconds to finish.
```
$ node ./resource/generate.data.js > "./resource/soundgood_music_school_test_data.sql"
```

### Application
#### Database Setup
Create a `SettingsDatabaseSchool.java`-file in `./src/se/martenb/iv1351/soundgood/integration` directory and 
implement the `SettingsDatabase` methods as shown below:
```java
package se.martenb.iv1351.soundgood.integration;

/**
 * Settings for database.
 */
public class SettingsDatabaseSchool implements SettingsDatabase {
    private static final String DATABASE_URL = "jdbc:postgresql://[DATABASE_URL]";
    private static final String DATABASE_USER = "[DATABASE_USER]";
    private static final String DATABASE_PASS = "[DATABASE_PASSWORD]";

    /**
     * @return The database URL
     */
    @Override
    public String getURL() {
        return DATABASE_URL;
    }

    /**
     * @return The database username.
     */
    @Override
    public String getUsername() {
        return DATABASE_USER;
    }

    /**
     * @return The database password.
     */
    @Override
    public String getPassword() {
        return DATABASE_PASS;
    }
}
```

Replace 
- `[DATABASE_URL]` with the JDBC PostgresSQL URL to the table.
- `[DATABASE_USER]` with the database user.
- `[DATABASE_PASSWORD]` with the database password.

## Troubleshooting
### Missing Driver
When running, if you are met by the following message:
``` 
se.martenb.iv1351.soundgood.integration.SchoolDBException: Could not connect to the database.
...
Caused by: java.sql.SQLException: No suitable driver found for jdbc:postgresql://...
...
```
Download the PosgreSQL JDBC Driver from the 
[PostgreSQL JDBC Driver Download Page](https://jdbc.postgresql.org/download.html) and add the `postgresql-*.jar`-file 
to your **classpath**.