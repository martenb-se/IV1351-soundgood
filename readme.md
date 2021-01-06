# Soundgood Music School
This project is made possible with:
* **PostgreSQL 13.1** DBMS.
* **Java 11**
  * **PostgreSQL JDBC Driver 42.2.18**: 
    [PostgreSQL JDBC Driver Download Page](https://jdbc.postgresql.org/download.html).
  * **JUnit 5.4** for application testing.
* **Node 15.2.1** for data generation.

## Sample printout
```
##############################
#                            #
#   SOUNDGOOD MUSIC SCHOOL   #
#                            #
############[DeveloperView]###


Select a log in method:
1. Mobile BankID.
2. Email and password.
3. Student ID and password.
4. Exit.
   3
   Enter your student ID:
   S-000030
   Enter your password:
   [PASSWORD NOT REQUIRED IN DEVELOPER VIEW]
   ~ Welcome Kenneth ~

Available options:
1. Search for an instrument to rent.
2. Terminate an ongoing rental.
3. Logout.
   1
   Search for an instrument by type:
   piano
1. Piano (keyboard)
   Brand:	Gibson
   Price:	159.00 SEK
2. Piano (keyboard)
   Brand:	Harman Professional
   Price:	149.00 SEK
3. Piano (keyboard)
   Brand:	Yamaha
   Price:	239.00 SEK
4. Go back.
   2
   Selected:
   Piano (keyboard)
   Brand:	Harman Professional
   Price:	149.00 SEK
   Do you wish to rent this instrument? [Y/N]
   y
   Rental complete! Your instrument will be delivered to you within 5 hours.
   Available options:
1. Terminate an ongoing rental.
2. Logout.
   1
   Select a rental of an instrument to terminate:
1. Piano (keyboard)
   Brand:	Harman Professional
   Price:	149.00 SEK
   Date:	2021-01-06
2. Clavinet (keyboard)
   Brand:	Gibson
   Price:	179.00 SEK
   Date:	2020-05-08
3. Go back.
   2
   Selected:
   Clavinet (keyboard)
   Brand:	Gibson
   Price:	179.00 SEK
   Date:	2020-05-08
   Do you wish to terminate rental of this instrument? [Y/N]
   yes
   Rental termination complete! Your instrument will be picked up within 5 hours.
   Available options:
1. Search for an instrument to rent.
2. Terminate an ongoing rental.
3. Logout.
   3
   Quitting..
```

## Install
### Clone
Clone the repository
```
$ git clone git@github.com:martenb-se/IV1351-soundgood.git
```

### Database
Install the database file
([./resources/soundgood_music_school.sql](https://github.com/martenb-se/IV1351-soundgood/blob/master/resources/soundgood_music_school.sql))

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
$ \i './resources/soundgood_music_school.sql'
```

### Data
Data file:
[./resources/soundgood_music_school_test_data.sql](https://github.com/martenb-se/IV1351-soundgood/blob/master/resources/soundgood_music_school_test_data.sql)

Import the database data into the same database as above.
```
$ \i './resources/soundgood_music_school_test_data.sql'
```

#### Data Generation
Script file: 
[./resources/generate.data.js](https://github.com/martenb-se/IV1351-soundgood/blob/master/resources/generate.data.js)

To generate new data, run the generation script in Node and send the output to the new file. 
The script will generate data for a valid database state (but the data has no other logical 
restrictions and is only pseudorandomly generated). The script generates around 100 000 rows 
and might take more than 30 seconds to finish.
```
$ node ./resources/generate.data.js > "./resources/soundgood_music_school_test_data.sql"
```

### Application
#### Database Setup
Create a `SettingsDatabaseSchool.java`-file in `./src/main/java/se/martenb/iv1351/soundgood/integration/` directory and 
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

#### Maven: Install and Test the java application
It's easiest to install, test and run the application using Maven: 
[Apache.org - Installing Apache Maven](https://maven.apache.org/install.html)
Make sure you have installed and set up the database before installing.
Go to the project root and run:
```
$ mvn install
```

#### Maven: Running
```
$ mvn exec:java
```

## Troubleshooting
### Missing Driver
When installing manually and running without Maven, if you are met by the following message:
``` 
se.martenb.iv1351.soundgood.integration.SchoolDBException: Could not connect to the database.
...
Caused by: java.sql.SQLException: No suitable driver found for jdbc:postgresql://...
...
```
Download the PosgreSQL JDBC Driver from the 
[PostgreSQL JDBC Driver Download Page](https://jdbc.postgresql.org/download.html) and add the `postgresql-*.jar`-file 
to your **classpath**.