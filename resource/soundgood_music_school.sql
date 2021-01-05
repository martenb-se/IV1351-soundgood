--
-- Settings
--
SET client_encoding = 'UTF8';

--
-- Clear old views
-- 
DROP VIEW IF EXISTS "query_upcoming_lesson_group" CASCADE;
DROP VIEW IF EXISTS "query_active_student_rentals" CASCADE;
DROP VIEW IF EXISTS "query_active_rentals" CASCADE;
DROP VIEW IF EXISTS "query_next_week_ensemble" CASCADE;
DROP VIEW IF EXISTS "olap_last_month_lessons_given" CASCADE;
DROP VIEW IF EXISTS "olap_current_month_lessons_given" CASCADE;
DROP VIEW IF EXISTS "olap_monthly_lesson" CASCADE;
DROP VIEW IF EXISTS "olap_monthly_lesson_ensemble" CASCADE;
DROP VIEW IF EXISTS "olap_monthly_lesson_group" CASCADE;
DROP VIEW IF EXISTS "olap_monthly_lesson_individual" CASCADE;
DROP VIEW IF EXISTS "olap_monthly_rentals_type" CASCADE;
DROP VIEW IF EXISTS "olap_monthly_rentals" CASCADE;

--
-- Clear old tables
--
DROP TABLE IF EXISTS "instrument_category" CASCADE;
DROP TABLE IF EXISTS "instrument" CASCADE;
DROP TABLE IF EXISTS "genre" CASCADE;
DROP TABLE IF EXISTS "address" CASCADE;
DROP TABLE IF EXISTS "email" CASCADE;
DROP TABLE IF EXISTS "phone" CASCADE;
DROP TABLE IF EXISTS "person" CASCADE;
DROP TABLE IF EXISTS "instructor" CASCADE;
DROP TABLE IF EXISTS "student" CASCADE;
DROP TABLE IF EXISTS "parent" CASCADE;
DROP TABLE IF EXISTS "student_application" CASCADE;
DROP TABLE IF EXISTS "advanced_audition" CASCADE;
DROP TABLE IF EXISTS "calendar_day" CASCADE;
DROP TABLE IF EXISTS "group_lesson_slot" CASCADE;
DROP TABLE IF EXISTS "individual_lesson_period" CASCADE;
DROP TABLE IF EXISTS "individual_lesson" CASCADE;
DROP TABLE IF EXISTS "scheduled_lesson" CASCADE;
DROP TABLE IF EXISTS "group_lesson" CASCADE;
DROP TABLE IF EXISTS "ensemble" CASCADE;
DROP TABLE IF EXISTS "instrument_in_stock" CASCADE;
DROP TABLE IF EXISTS "pricing_scheme_instrument_fee" CASCADE;
DROP TABLE IF EXISTS "instrument_rental" CASCADE;
DROP TABLE IF EXISTS "pricing_scheme" CASCADE;
DROP TABLE IF EXISTS "student_bill" CASCADE;
DROP TABLE IF EXISTS "instructor_salary" CASCADE;
DROP TABLE IF EXISTS "student_instrument" CASCADE;
DROP TABLE IF EXISTS "instrument_taught_by_instructor" CASCADE;
DROP TABLE IF EXISTS "student_sibling" CASCADE;
DROP TABLE IF EXISTS "parent_student" CASCADE;
DROP TABLE IF EXISTS "person_email" CASCADE;
DROP TABLE IF EXISTS "person_phone" CASCADE;
DROP TABLE IF EXISTS "parent_email" CASCADE;
DROP TABLE IF EXISTS "parent_phone" CASCADE;
DROP TABLE IF EXISTS "available_instructor_during_individual_lesson_period" CASCADE;
DROP TABLE IF EXISTS "booked_individual_lesson_on_individual_lesson_period" CASCADE;
DROP TABLE IF EXISTS "scheduled_lesson_student" CASCADE;
DROP TABLE IF EXISTS "student_bill_pricing_scheme" CASCADE;
DROP TABLE IF EXISTS "instructor_salary_pricing_scheme" CASCADE;

--
-- Drop Triggers
--
DROP FUNCTION IF EXISTS procedure_delete_dangling_address CASCADE;
DROP FUNCTION IF EXISTS procedure_delete_dangling_person CASCADE;
DROP FUNCTION IF EXISTS procedure_check_max_rentals CASCADE;
DROP FUNCTION IF EXISTS procedure_check_available_stock CASCADE;

--
-- PostgreSQL Functions
--
-- Delete dangling address
CREATE OR REPLACE FUNCTION procedure_delete_dangling_address()
RETURNS TRIGGER AS $$
BEGIN
  DELETE 
  FROM address AS d
  WHERE d.id IN (SELECT a.id
    FROM address AS a
      LEFT JOIN person AS p ON a.id = p.address_id
    WHERE p.address_id IS NULL
  );
RETURN NULL;
END;
$$ LANGUAGE plpgsql;

-- Delete dangling person
CREATE OR REPLACE FUNCTION procedure_delete_dangling_person()
RETURNS TRIGGER AS $$
BEGIN
DELETE 
  FROM person AS d
  WHERE d.id IN (
    SELECT p.id
    FROM person AS p
      LEFT JOIN instructor AS i ON p.id = i.person_id
      LEFT JOIN student AS s ON p.id = s.person_id
    WHERE i.person_id IS NULL AND s.person_id IS NULL
  );
RETURN NULL;
END;
$$ LANGUAGE plpgsql;

-- Protect from too many rentals by a student
CREATE OR REPLACE FUNCTION procedure_check_max_rentals()
RETURNS TRIGGER AS $$
BEGIN
  IF ((
    SELECT
      student_person_id
    FROM query_active_student_rentals
    WHERE rented_quantity > 2
  ) > 0) THEN
    RAISE EXCEPTION 'Too many rentals!';
  END IF;
RETURN NULL;
END;
$$ LANGUAGE plpgsql;

-- Protect from renting out an instrument not in stock
CREATE OR REPLACE FUNCTION procedure_check_available_stock()
RETURNS TRIGGER AS $$
BEGIN
  IF ((
    SELECT
      instrument_in_stock_id
    FROM query_active_rentals
    WHERE available_quantity < 0
  ) > 0) THEN
    RAISE EXCEPTION 'Instrument is not available!';
  END IF;
RETURN NULL;
END;
$$ LANGUAGE plpgsql;

--
-- Categories
--
CREATE TABLE instrument_category
(
  "id" serial PRIMARY KEY,
  "name" varchar(2000) UNIQUE NOT NULL
);

--
-- Objects
--
CREATE TABLE instrument
(
  "id" serial PRIMARY KEY,
  "type" varchar(2000) UNIQUE NOT NULL,
  "instrument_category_id" int NOT NULL,
  CONSTRAINT fk_instrument_instrument_category
    FOREIGN KEY("instrument_category_id")
      REFERENCES instrument_category("id")
        ON DELETE RESTRICT
);

CREATE TABLE genre
(
  "id" serial PRIMARY KEY,
  "name" varchar(2000) NOT NULL
);

--
-- Contact
--
CREATE TABLE address
(
  "id" serial PRIMARY KEY,
  "city_name" varchar(2000) NOT NULL,
  "street_name" varchar(2000) NOT NULL,
  "zip_code" varchar(2000) NOT NULL
);

CREATE TABLE email
(
  "id" serial PRIMARY KEY,
  "email_address" varchar(2000) UNIQUE NOT NULL
);

CREATE TABLE phone
(
  "id" serial PRIMARY KEY,
  "phone_number" varchar(2000) UNIQUE NOT NULL,
  "phone_type" varchar(2000) NOT NULL
);

--
-- People
--
CREATE TABLE person
(
  "id" serial PRIMARY KEY,
  "address_id" int NOT NULL,
  "first_name" varchar(2000) NOT NULL,
  "last_name"  varchar(2000) NOT NULL,
  "birth_date" date NOT NULL,
  "person_number" varchar(100) UNIQUE NOT NULL,
  CONSTRAINT fk_person_address
    FOREIGN KEY("address_id")
      REFERENCES address("id")
        ON DELETE RESTRICT
);

CREATE TABLE instructor
(
  "person_id" int PRIMARY KEY,
  "employee_id" varchar(100) NOT NULL,
  "able_to_teach_ensembles" boolean DEFAULT false NOT NULL,
  CONSTRAINT fk_instructor_person
    FOREIGN KEY("person_id")
      REFERENCES person("id")
        ON DELETE RESTRICT
);

CREATE TABLE student
(
  "person_id" int PRIMARY KEY,
  "student_id" varchar(100) NOT NULL,
  "genre_id" int,
  CONSTRAINT fk_student_person
    FOREIGN KEY("person_id")
      REFERENCES person("id")
        ON DELETE RESTRICT,
  CONSTRAINT fk_student_genre
    FOREIGN KEY("genre_id")
      REFERENCES genre("id")
        ON DELETE RESTRICT
);

CREATE TABLE parent
(
  "id" serial PRIMARY KEY,
  "first_name" varchar(2000) NOT NULL,
  "last_name"  varchar(2000) NOT NULL
);

--
-- Application 
--
CREATE TABLE student_application
(
  "id" serial PRIMARY KEY,
  "first_name" varchar(2000) NOT NULL,
  "last_name" varchar(2000) NOT NULL,
  "birth_date" date NOT NULL,
  "person_number" varchar(100) UNIQUE NOT NULL,
  "email_id" int NOT NULL,
  "phone_id" int NOT NULL,
  "instrument_id" int,
  "skill_level" varchar(2000),
  "genre_id" int,
  "on_waiting_list" boolean DEFAULT false NOT NULL,
  CONSTRAINT fk_student_application_email
    FOREIGN KEY("email_id")
      REFERENCES email("id")
        ON DELETE RESTRICT,
  CONSTRAINT fk_student_application_phone
    FOREIGN KEY("phone_id")
      REFERENCES phone("id")
        ON DELETE RESTRICT,
  CONSTRAINT fk_student_application_instrument
    FOREIGN KEY("instrument_id")
      REFERENCES instrument("id")
        ON DELETE RESTRICT,
  CONSTRAINT fk_student_application_genre
    FOREIGN KEY("genre_id")
      REFERENCES genre("id")
        ON DELETE RESTRICT,
  CONSTRAINT ck_student_birth_date
    -- CHECK
    -- If YEAR is more than 10 (they are old enough)
    -- OR
    -- If YEAR is 10 AND
    -- MONTH is at least the SAME AND
    -- DAY is at least the SAME
    -- (meaning birthay is TODAY)
    CHECK (DATE_PART('year', CURRENT_DATE) - DATE_PART('year', "birth_date") > 10 OR 
      DATE_PART('year', CURRENT_DATE) - DATE_PART('year', "birth_date") = 10 AND
    	  DATE_PART('month', CURRENT_DATE) - DATE_PART('month', "birth_date") >= 0 AND
    		  DATE_PART('day', CURRENT_DATE) - DATE_PART('day', "birth_date") >= 0),
  CONSTRAINT ck_student_instrument_or_genre
  	CHECK ("instrument_id" IS NOT NULL AND "genre_id" IS NULL OR
  	  "genre_id" IS NOT NULL AND "instrument_id" IS NULL),
  CONSTRAINT ck_student_instrument_and_skill_level
  	CHECK ("instrument_id" IS NULL OR 
  	  "instrument_id" IS NOT NULL AND "skill_level" IS NOT NULL),
  CONSTRAINT ck_student_skill_level
  	CHECK ("instrument_id" IS NULL OR "skill_level" IS NULL OR
  	  "skill_level" = 'beginner' OR
  	  "skill_level" = 'intermediate' OR
  	  "skill_level" = 'advanced')
);

COMMENT ON CONSTRAINT ck_student_birth_date ON student_application IS 'Student must be at least 10 years old.';
COMMENT ON CONSTRAINT ck_student_instrument_or_genre ON student_application IS 'Student must have instrument or genre.';
COMMENT ON CONSTRAINT ck_student_instrument_and_skill_level ON student_application IS 'Student must specify skill level when applying for an instrument.';
COMMENT ON CONSTRAINT ck_student_skill_level ON student_application IS 'Student skill level must be "beginner", "intermediate" or "advanced".';

CREATE TABLE advanced_audition
(
  "student_application_id" int PRIMARY KEY,
  "date" date NOT NULL,
  "time" time NOT NULL,
  "passing_grade" boolean,
  CONSTRAINT fk_advanced_audition_student_application
    FOREIGN KEY("student_application_id")
      REFERENCES student_application("id")
        ON DELETE CASCADE
);

--
-- Calendar 
--
CREATE TABLE calendar_day
(
  "date" date PRIMARY KEY,
  "is_special_day_price" boolean DEFAULT false NOT NULL
);

CREATE TABLE group_lesson_slot
(
  "id" serial PRIMARY KEY,
  "calendar_day_date" date NOT NULL,
  "place" varchar(2000) NOT NULL,
  "start_time" time NOT NULL,
  "end_time" time NOT NULL,
  CONSTRAINT fk_group_lesson_slot_calendar_day
    FOREIGN KEY("calendar_day_date")
      REFERENCES calendar_day("date")
        ON DELETE RESTRICT
);

CREATE TABLE individual_lesson_period
(
  "id" serial PRIMARY KEY,
  "calendar_day_date" date NOT NULL,
  "start_time" time NOT NULL,
  "end_time" time NOT NULL,
  CONSTRAINT fk_individual_lesson_period_calendar_day
    FOREIGN KEY("calendar_day_date")
      REFERENCES calendar_day("date")
        ON DELETE RESTRICT
);

CREATE TABLE individual_lesson
(
  "id" serial PRIMARY KEY,
  "student_person_id" int NOT NULL,
  "instructor_person_id" int NOT NULL,
  "instrument_id" int NOT NULL,
  CONSTRAINT fk_individual_lesson_student
    FOREIGN KEY("student_person_id")
      REFERENCES student("person_id")
        ON DELETE RESTRICT,
  CONSTRAINT fk_individual_lesson_instructor
    FOREIGN KEY("instructor_person_id")
      REFERENCES instructor("person_id")
        ON DELETE RESTRICT,
  CONSTRAINT fk_individual_lesson_instrument
    FOREIGN KEY("instrument_id")
      REFERENCES instrument("id")
        ON DELETE RESTRICT
);

CREATE TABLE scheduled_lesson
(
  "group_lesson_slot_id" int PRIMARY KEY,
  "available_places" int NOT NULL,
  "min_enrolled_students" int NOT NULL,
  "instructor_person_id" int NOT NULL,
  CONSTRAINT fk_ischeduled_lesson_group_lesson_slot
    FOREIGN KEY("group_lesson_slot_id")
      REFERENCES group_lesson_slot("id")
        ON DELETE CASCADE,
  CONSTRAINT fk_scheduled_lesson_instructor
    FOREIGN KEY("instructor_person_id")
      REFERENCES instructor("person_id")
        ON DELETE CASCADE
);

CREATE TABLE group_lesson
(
  "group_lesson_slot_id" int PRIMARY KEY,
  "instrument_id" int NOT NULL,
  "skill_level" varchar(2000) NOT NULL,
  CONSTRAINT fk_group_lesson_group_lesson_slot
    FOREIGN KEY("group_lesson_slot_id")
      REFERENCES group_lesson_slot("id")
        ON DELETE CASCADE,
  CONSTRAINT fk_group_lesson_instrument
    FOREIGN KEY("instrument_id")
      REFERENCES instrument("id")
        ON DELETE CASCADE,
  CONSTRAINT ck_group_lesson_skill_level
  	CHECK ("skill_level" = 'beginner' OR
  	  "skill_level" = 'intermediate' OR
  	  "skill_level" = 'advanced')
);

COMMENT ON CONSTRAINT ck_group_lesson_skill_level ON group_lesson IS 'Group lesson instrument skill level must be "beginner", "intermediate" or "advanced".';

CREATE TABLE ensemble
(
  "group_lesson_slot_id" int PRIMARY KEY,
  "genre_id" int NOT NULL,
  CONSTRAINT fk_ensemble_group_lesson_slot
    FOREIGN KEY("group_lesson_slot_id")
      REFERENCES group_lesson_slot("id")
        ON DELETE CASCADE,
  CONSTRAINT fk_ensemble_genre
    FOREIGN KEY("genre_id")
      REFERENCES genre("id")
        ON DELETE CASCADE
);

CREATE TABLE instrument_in_stock
(
  "id" serial PRIMARY KEY,
  "instrument_brand" varchar(2000) NOT NULL,
  "available_quantity" int NOT NULL,
  "instrument_id" int NOT NULL,
  UNIQUE ("instrument_brand", "instrument_id"),
  CONSTRAINT fk_instrument_in_stock_instrument
    FOREIGN KEY("instrument_id")
      REFERENCES instrument("id")
        ON DELETE RESTRICT
);

CREATE TABLE pricing_scheme_instrument_fee
(
  "id" serial PRIMARY KEY,
  "date" date NOT NULL,
  "instrument_in_stock_id" int NOT NULL,
  "price" numeric(100) NOT NULL,
  UNIQUE ("date", "instrument_in_stock_id"),
  CONSTRAINT fk_psif_instrument_in_stock
    FOREIGN KEY("instrument_in_stock_id")
      REFERENCES instrument_in_stock("id")
        ON DELETE RESTRICT
);

CREATE TABLE instrument_rental
(
  "id" serial PRIMARY KEY,
  "pricing_scheme_instrument_fee_id" int NOT NULL,
  "instrument_in_stock_id" int NOT NULL,
  "date_from" date NOT NULL,
  "date_to" date,
  "student_person_id" int NOT NULL,
  CONSTRAINT fk_instrument_rental_iisi
    FOREIGN KEY("instrument_in_stock_id")
      REFERENCES instrument_in_stock("id")
        ON DELETE RESTRICT,
  CONSTRAINT fk_instrument_rental_psifi
    FOREIGN KEY("pricing_scheme_instrument_fee_id")
      REFERENCES pricing_scheme_instrument_fee("id")
        ON DELETE RESTRICT,
  CONSTRAINT fk_instrument_rental_spi
    FOREIGN KEY("student_person_id")
      REFERENCES student("person_id")
        ON DELETE CASCADE
);

CREATE TABLE pricing_scheme
(
  "id" serial PRIMARY KEY,
  "date" date UNIQUE NOT NULL,
  "price_beginner" numeric(100) NOT NULL,
  "price_intermediate" numeric(100) NOT NULL,
  "price_advanced" numeric(100) NOT NULL,
  "price_individual" numeric(100) NOT NULL,
  "price_group" numeric(100) NOT NULL,
  "price_special_day" numeric(100) NOT NULL,
  "discount_sibling" decimal(5,4) NOT NULL
);

CREATE TABLE student_bill
(
  "id" serial PRIMARY KEY,
  "student_bill" numeric(100) NOT NULL,
  "billing_date_from" date NOT NULL,
  "billing_date_to" date NOT NULL,
  "student_person_id" int NOT NULL,
  CONSTRAINT fk_student_bill_student
    FOREIGN KEY("student_person_id")
      REFERENCES student("person_id")
        ON DELETE CASCADE
);

CREATE TABLE instructor_salary
(
  "id" serial PRIMARY KEY,
  "total_salary" numeric(100) NOT NULL,
  "salary_date_from" date NOT NULL,
  "salary_date_to" date NOT NULL,
  "instructor_person_id" int NOT NULL,
  CONSTRAINT fk_instructor_salary_instructor
    FOREIGN KEY("instructor_person_id")
      REFERENCES instructor("person_id")
        ON DELETE RESTRICT
);

--
-- Relationships
--
-- Tools
CREATE TABLE student_instrument
(
  "student_person_id" int NOT NULL,
  "instrument_id" int NOT NULL,
  "skill_level" varchar(2000) NOT NULL,
  PRIMARY KEY ("student_person_id", "instrument_id"),
  CONSTRAINT fk_student_instrument_student
    FOREIGN KEY("student_person_id")
      REFERENCES student("person_id")
        ON DELETE CASCADE,
  CONSTRAINT fk_student_instrument_instrument
    FOREIGN KEY("instrument_id")
      REFERENCES instrument("id")
        ON DELETE CASCADE,
  CONSTRAINT ck_student_instrument_skill_level
  	CHECK ("skill_level" = 'beginner' OR
  	  "skill_level" = 'intermediate' OR
  	  "skill_level" = 'advanced')
);

COMMENT ON CONSTRAINT ck_student_instrument_skill_level ON student_instrument IS 'Student instrument skill level must be "beginner", "intermediate" or "advanced".';

CREATE TABLE instrument_taught_by_instructor
(
  "instructor_person_id" int NOT NULL,
  "instrument_id" int NOT NULL,
  PRIMARY KEY ("instructor_person_id", "instrument_id"),
  CONSTRAINT fk_instrument_taught_by_instructor_instructor
    FOREIGN KEY("instructor_person_id")
      REFERENCES instructor("person_id")
        ON DELETE CASCADE,
  CONSTRAINT fk_instrument_taught_by_instructor_instrument
    FOREIGN KEY("instrument_id")
      REFERENCES instrument("id")
        ON DELETE CASCADE
);


-- People
CREATE TABLE student_sibling
(
  "student_person_id" int NOT NULL,
  "sibling_person_id" int NOT NULL,
  PRIMARY KEY ("student_person_id", "sibling_person_id"),
  CONSTRAINT fk_student_sibling_student
    FOREIGN KEY("student_person_id")
      REFERENCES student("person_id")
        ON DELETE CASCADE,
  CONSTRAINT fk_student_sibling_sibling
    FOREIGN KEY("sibling_person_id")
      REFERENCES student("person_id")
        ON DELETE CASCADE
);

CREATE TABLE parent_student
(
  "parent_id" int NOT NULL,
  "student_person_id" int NOT NULL,
  PRIMARY KEY ("parent_id", "student_person_id"),
  CONSTRAINT fk_parent_student_parent
    FOREIGN KEY("parent_id")
      REFERENCES parent("id")
        ON DELETE CASCADE,
  CONSTRAINT fk_parent_student_student
    FOREIGN KEY("student_person_id")
      REFERENCES student("person_id")
        ON DELETE CASCADE
);

-- Contact
CREATE TABLE person_email
(
  "person_id" int NOT NULL,
  "email_id" int NOT NULL,
  PRIMARY KEY ("person_id", "email_id"),
  CONSTRAINT fk_person_email_person
    FOREIGN KEY("person_id")
      REFERENCES person("id")
        ON DELETE CASCADE,
  CONSTRAINT fk_person_email_email
    FOREIGN KEY("email_id")
      REFERENCES email("id")
        ON DELETE CASCADE
);

CREATE TABLE person_phone
(
  "person_id" int NOT NULL,
  "phone_id" int NOT NULL,
  PRIMARY KEY ("person_id", "phone_id"),
  CONSTRAINT fk_person_phone_person
    FOREIGN KEY("person_id")
      REFERENCES person("id")
        ON DELETE CASCADE,
  CONSTRAINT fk_person_phone_phone
    FOREIGN KEY("phone_id")
      REFERENCES phone("id")
        ON DELETE CASCADE
);

CREATE TABLE parent_email
(
  "parent_id" int NOT NULL,
  "email_id" int NOT NULL,
  PRIMARY KEY ("parent_id", "email_id"),
  CONSTRAINT fk_parent_email_parent
    FOREIGN KEY("parent_id")
      REFERENCES parent("id")
        ON DELETE CASCADE,
  CONSTRAINT fk_parent_email_email
    FOREIGN KEY("email_id")
      REFERENCES email("id")
        ON DELETE CASCADE
);

CREATE TABLE parent_phone
(
  "parent_id" int NOT NULL,
  "phone_id" int NOT NULL,
  PRIMARY KEY ("parent_id", "phone_id"),
  CONSTRAINT fk_parent_phone_parent
    FOREIGN KEY("parent_id")
      REFERENCES parent("id")
        ON DELETE CASCADE,
  CONSTRAINT fk_parent_phone_phone
    FOREIGN KEY("phone_id")
      REFERENCES phone("id")
        ON DELETE CASCADE
);

-- Calendar 
CREATE TABLE available_instructor_during_individual_lesson_period
(
  "instructor_person_id" int NOT NULL,
  "individual_lesson_period_id" int NOT NULL,
  PRIMARY KEY ("instructor_person_id", "individual_lesson_period_id"),
  CONSTRAINT fk_aidil_instructor
    FOREIGN KEY("instructor_person_id")
      REFERENCES instructor("person_id")
        ON DELETE CASCADE,
  CONSTRAINT fk_aidil_ndividual_lesson_period
    FOREIGN KEY("individual_lesson_period_id")
      REFERENCES individual_lesson_period("id")
        ON DELETE CASCADE
);

CREATE TABLE booked_individual_lesson_on_individual_lesson_period
(
  "individual_lesson_id" int NOT NULL,
  "individual_lesson_period_id" int NOT NULL,
  PRIMARY KEY ("individual_lesson_id", "individual_lesson_period_id"),
  CONSTRAINT fk_biloilp_instructor
    FOREIGN KEY("individual_lesson_id")
      REFERENCES individual_lesson("id")
        ON DELETE CASCADE,
  CONSTRAINT fk_biloilp_ndividual_lesson_period
    FOREIGN KEY("individual_lesson_period_id")
      REFERENCES individual_lesson_period("id")
        ON DELETE CASCADE
);

CREATE TABLE scheduled_lesson_student
(
  "group_lesson_slot_id" int NOT NULL,
  "student_person_id" int NOT NULL,
  PRIMARY KEY ("group_lesson_slot_id", "student_person_id"),
  CONSTRAINT fk_scheduled_lesson_student_group_lesson_slot
    FOREIGN KEY("group_lesson_slot_id")
      REFERENCES group_lesson_slot("id")
        ON DELETE CASCADE,
  CONSTRAINT fk_scheduled_lesson_student_student
    FOREIGN KEY("student_person_id")
      REFERENCES student("person_id")
        ON DELETE CASCADE
);

CREATE TABLE student_bill_pricing_scheme
(
  "student_bill_id" int NOT NULL,
  "pricing_scheme_id" int NOT NULL,
  PRIMARY KEY ("student_bill_id", "pricing_scheme_id"),
  CONSTRAINT fk_sbps_student_bill
    FOREIGN KEY("student_bill_id")
      REFERENCES student_bill("id")
        ON DELETE CASCADE,
  CONSTRAINT fk_sbps_pricing_scheme
    FOREIGN KEY("pricing_scheme_id")
      REFERENCES pricing_scheme("id")
        ON DELETE CASCADE
);

CREATE TABLE instructor_salary_pricing_scheme
(
  "instructor_salary_id" int NOT NULL,
  "pricing_scheme_id" int NOT NULL,
  PRIMARY KEY ("instructor_salary_id", "pricing_scheme_id"),
  CONSTRAINT fk_isps_instructor_salary
    FOREIGN KEY("instructor_salary_id")
      REFERENCES instructor_salary("id")
        ON DELETE CASCADE,
  CONSTRAINT fk_isps_pricing_scheme
    FOREIGN KEY("pricing_scheme_id")
      REFERENCES pricing_scheme("id")
        ON DELETE CASCADE
);
      
---
--- VIEWS
---
CREATE VIEW olap_monthly_rentals AS SELECT 
  extract(year from date_from) as year, 
  extract(month from date_from) as month,
  COUNT(id) total_rentals
FROM instrument_rental
GROUP BY
  year, 
  month
ORDER BY 
  year ASC,
  month ASC;
  
CREATE VIEW olap_monthly_rentals_type AS SELECT
  extract(year from ins_rnt.date_from) as year, 
  extract(month from ins_rnt.date_from) as month,
  ins.type AS instrument_type,
  ins.id AS instrument_id,
  COUNT(ins_rnt.id) total_rentals
FROM ( 
  SELECT *
  FROM instrument_rental
) AS ins_rnt
LEFT JOIN instrument_in_stock AS ins_stk
  ON ins_rnt.instrument_in_stock_id = ins_stk.id
LEFT JOIN instrument AS ins
  ON ins_stk.instrument_id = ins.id
GROUP BY
  year, 
  month,
  ins.type,
  ins.id
ORDER BY
  year,
  month,
  ins.id;
  
CREATE VIEW olap_monthly_lesson_individual AS SELECT
  extract(year from ilp.calendar_day_date) as year, 
  extract(month from ilp.calendar_day_date) as month,
  COUNT(biloilp.individual_lesson_id) total_lessons
FROM (
  SELECT
    *
  FROM individual_lesson_period
  WHERE calendar_day_date < CURRENT_DATE
) as ilp
LEFT JOIN booked_individual_lesson_on_individual_lesson_period AS biloilp
  ON ilp.id = biloilp.individual_lesson_period_id
GROUP BY
  year, 
  month
ORDER BY 
  year ASC,
  month ASC;
  
CREATE VIEW olap_monthly_lesson_group AS SELECT
  extract(year from gls.calendar_day_date) as year, 
  extract(month from gls.calendar_day_date) as month,
  COUNT(gl.group_lesson_slot_id) total_lessons
FROM (
  SELECT
    *
  FROM group_lesson_slot
  WHERE calendar_day_date < CURRENT_DATE
) as gls
LEFT JOIN group_lesson AS gl
  ON gls.id = gl.group_lesson_slot_id
GROUP BY
  year, 
  month
ORDER BY 
  year ASC,
  month ASC;
  
CREATE VIEW olap_monthly_lesson_ensemble AS SELECT
  extract(year from gls.calendar_day_date) as year, 
  extract(month from gls.calendar_day_date) as month,
  COUNT(en.group_lesson_slot_id) total_lessons
FROM (
  SELECT
    *
  FROM group_lesson_slot
  WHERE calendar_day_date < CURRENT_DATE
) as gls
LEFT JOIN ensemble AS en
  ON gls.id = en.group_lesson_slot_id
GROUP BY
  year, 
  month
ORDER BY 
  year ASC,
  month ASC;
  
CREATE VIEW olap_monthly_lesson AS SELECT
  ind.year,
  ind.month,
  (ind.total_lessons + grp.total_lessons + ens.total_lessons) AS total_lessons
FROM olap_monthly_lesson_individual AS ind
LEFT JOIN olap_monthly_lesson_group AS grp
  ON ind.year = grp.year AND
  ind.month = grp.month
LEFT JOIN olap_monthly_lesson_ensemble AS ens
  ON ind.year = ens.year AND
  ind.month = ens.month;

CREATE VIEW olap_current_month_lessons_given AS SELECT
  instructor_person_id,
  (total_lessons_individual + total_lessons_group + total_lessons_ensemble) AS total_lessons
FROM (
  SELECT
    instructor_person_id,
    CASE WHEN il.total_lessons_individual IS NULL 
      THEN 0 
      ELSE il.total_lessons_individual 
    END AS total_lessons_individual,
    CASE WHEN gl.total_lessons_group IS NULL 
      THEN 0 
      ELSE gl.total_lessons_group 
    END AS total_lessons_group,
    CASE WHEN en.total_lessons_ensemble IS NULL 
      THEN 0 
      ELSE en.total_lessons_ensemble 
    END AS total_lessons_ensemble
  FROM (
    SELECT
      instructor_person_id,
      COUNT(id) total_lessons_individual
    FROM (
      SELECT 
        individual_lesson_id AS id
      FROM ( 
        SELECT
          id AS individual_lesson_period_id
        FROM individual_lesson_period
        WHERE
          extract(year from calendar_day_date) = DATE_PART('year', CURRENT_DATE) AND
          extract(month from calendar_day_date) = DATE_PART('month', CURRENT_DATE)
      ) AS ilp
      NATURAL JOIN booked_individual_lesson_on_individual_lesson_period
    ) AS biloilp
    NATURAL JOIN individual_lesson
    GROUP BY
      instructor_person_id
  ) AS il
  NATURAL FULL OUTER JOIN (
    SELECT 
      instructor_person_id,
      COUNT(group_lesson_slot_id) total_lessons_group
    FROM ( 
      SELECT 
        group_lesson_slot_id
      FROM ( 
        SELECT
          id AS group_lesson_slot_id
        FROM group_lesson_slot
        WHERE
          extract(year from calendar_day_date) = DATE_PART('year', CURRENT_DATE) AND
          extract(month from calendar_day_date) = DATE_PART('month', CURRENT_DATE)
      ) AS gls
      NATURAL JOIN group_lesson
    ) AS gl
    NATURAL JOIN scheduled_lesson
    GROUP BY
      instructor_person_id
  ) AS gl
  NATURAL FULL OUTER JOIN (
    SELECT 
      instructor_person_id,
      COUNT(group_lesson_slot_id) total_lessons_ensemble
    FROM ( 
      SELECT 
        group_lesson_slot_id
      FROM ( 
        SELECT
          id AS group_lesson_slot_id
        FROM group_lesson_slot
        WHERE
          extract(year from calendar_day_date) = DATE_PART('year', CURRENT_DATE) AND
          extract(month from calendar_day_date) = DATE_PART('month', CURRENT_DATE)
      ) AS gls
      NATURAL JOIN ensemble
    ) AS en
    NATURAL JOIN scheduled_lesson
    GROUP BY
      instructor_person_id
  ) AS en
) AS totals
ORDER BY
  instructor_person_id ASC;

CREATE MATERIALIZED VIEW olap_last_month_lessons_given AS SELECT
  instructor_person_id,
  (total_lessons_individual + total_lessons_group + total_lessons_ensemble) AS total_lessons
FROM (
  SELECT
    instructor_person_id,
    CASE WHEN il.total_lessons_individual IS NULL 
      THEN 0 
      ELSE il.total_lessons_individual 
    END AS total_lessons_individual,
    CASE WHEN gl.total_lessons_group IS NULL 
      THEN 0 
      ELSE gl.total_lessons_group 
    END AS total_lessons_group,
    CASE WHEN en.total_lessons_ensemble IS NULL 
      THEN 0 
      ELSE en.total_lessons_ensemble 
    END AS total_lessons_ensemble
  FROM (
    SELECT
      instructor_person_id,
      COUNT(id) total_lessons_individual
    FROM (
      SELECT 
        individual_lesson_id AS id
      FROM ( 
        SELECT
          id AS individual_lesson_period_id
        FROM individual_lesson_period
        WHERE
          extract(year from calendar_day_date) = DATE_PART('year', CURRENT_DATE - INTERVAL '1 month') AND
          extract(month from calendar_day_date) = DATE_PART('month', CURRENT_DATE - INTERVAL '1 month')
      ) AS ilp
      NATURAL JOIN booked_individual_lesson_on_individual_lesson_period
    ) AS biloilp
    NATURAL JOIN individual_lesson
    GROUP BY
      instructor_person_id
  ) AS il
  NATURAL FULL OUTER JOIN (
    SELECT 
      instructor_person_id,
      COUNT(group_lesson_slot_id) total_lessons_group
    FROM ( 
      SELECT 
        group_lesson_slot_id
      FROM ( 
        SELECT
          id AS group_lesson_slot_id
        FROM group_lesson_slot
        WHERE
          extract(year from calendar_day_date) = DATE_PART('year', CURRENT_DATE - INTERVAL '1 month') AND
          extract(month from calendar_day_date) = DATE_PART('month', CURRENT_DATE - INTERVAL '1 month')
      ) AS gls
      NATURAL JOIN group_lesson
    ) AS gl
    NATURAL JOIN scheduled_lesson
    GROUP BY
      instructor_person_id
  ) AS gl
  NATURAL FULL OUTER JOIN (
    SELECT 
      instructor_person_id,
      COUNT(group_lesson_slot_id) total_lessons_ensemble
    FROM ( 
      SELECT 
        group_lesson_slot_id
      FROM ( 
        SELECT
          id AS group_lesson_slot_id
        FROM group_lesson_slot
        WHERE
          extract(year from calendar_day_date) = DATE_PART('year', CURRENT_DATE - INTERVAL '1 month') AND
          extract(month from calendar_day_date) = DATE_PART('month', CURRENT_DATE - INTERVAL '1 month')
      ) AS gls
      NATURAL JOIN ensemble
    ) AS en
    NATURAL JOIN scheduled_lesson
    GROUP BY
      instructor_person_id
  ) AS en
) AS totals
ORDER BY
  instructor_person_id ASC;
  

  
CREATE VIEW query_active_rentals AS SELECT
  active_rentals.instrument_in_stock_id,
  iis.instrument_brand,
  iis.instrument_id,
  iis.available_quantity AS maximum_quantity,
  active_rentals.rented_quantity,
  (iis.available_quantity - active_rentals.rented_quantity) available_quantity
FROM (
  SELECT
    instrument_in_stock_id,
    COUNT(id) rented_quantity
  FROM instrument_rental AS ir
  WHERE date_to IS NULL
  GROUP BY
    instrument_in_stock_id
) AS active_rentals
INNER JOIN instrument_in_stock AS iis
  ON active_rentals.instrument_in_stock_id = iis.id;
  
CREATE VIEW query_active_student_rentals AS SELECT
  student_person_id,
  COUNT(id) rented_quantity
FROM instrument_rental AS ir
WHERE date_to IS NULL
GROUP BY
  student_person_id
ORDER BY
  student_person_id ASC;
  
CREATE VIEW query_upcoming_lesson_group AS SELECT
  ugls_bp.group_lesson_slot_id,
  ugls_bp.calendar_day_date,
  ugls_bp.start_time,
  ugls_bp.end_time,
  ugls_bp.calendar_timestamp_start,
  ugls_bp.calendar_timestamp_end,
  ugls_bp.place,
  gl.instrument_id,
  gl.skill_level,
  ugls_bp.available_places AS maximum_places,
  ugls_bp.booked_places,
  (ugls_bp.available_places - ugls_bp.booked_places) available_places
FROM (
  SELECT
    uls_bp.*,
    sl.available_places
  FROM (
    SELECT
      uls.*,
      sls_bp.booked_places
    FROM (
      SELECT
        id AS group_lesson_slot_id,
        calendar_day_date,
        start_time,
        end_time,
        TO_TIMESTAMP(calendar_day_date || ' ' || start_time, 'YYYY-MM-DD HH24:MI:SS') calendar_timestamp_start,
        TO_TIMESTAMP(calendar_day_date || ' ' || end_time, 'YYYY-MM-DD HH24:MI:SS') calendar_timestamp_end,
        place
      FROM group_lesson_slot
      WHERE
        calendar_day_date > CURRENT_DATE
    ) AS uls
    NATURAL JOIN (
      SELECT
        group_lesson_slot_id,
        COUNT(student_person_id) AS booked_places
      FROM scheduled_lesson_student
      GROUP BY
        group_lesson_slot_id
    ) AS sls_bp
  ) AS uls_bp
  NATURAL JOIN scheduled_lesson AS sl
) AS ugls_bp
NATURAL JOIN group_lesson AS gl
ORDER BY
  ugls_bp.calendar_day_date ASC, 
  ugls_bp.start_time ASC,
  gl.instrument_id ASC,
  CASE 
    WHEN gl.skill_level = 'beginner' THEN '1'
    WHEN gl.skill_level = 'intermediate' THEN '2'
    ELSE 3 END ASC,
  ugls_bp.place ASC;
--
-- Triggers
--
-- Remove dangling address if no person have reference to it
CREATE TRIGGER tr_person_removal
  AFTER DELETE ON person
    FOR EACH STATEMENT
      EXECUTE FUNCTION procedure_delete_dangling_address();
      
-- Remove dangling person if no student OR instructor have reference to it
CREATE TRIGGER tr_student_removal
  AFTER DELETE ON student
    FOR EACH STATEMENT
      EXECUTE FUNCTION procedure_delete_dangling_person();
CREATE TRIGGER tr_instructor_removal
  AFTER DELETE ON instructor
    FOR EACH STATEMENT
      EXECUTE FUNCTION procedure_delete_dangling_person();
      
-- Protect from too many rentals by a student
CREATE TRIGGER tr_instrument_rental_max_block
  AFTER INSERT ON instrument_rental
    FOR EACH STATEMENT
      EXECUTE FUNCTION procedure_check_max_rentals();
      
-- Protect from renting out an instrument not in stock
CREATE TRIGGER tr_instrument_rental_not_available
  AFTER INSERT ON instrument_rental
    FOR EACH STATEMENT
      EXECUTE FUNCTION procedure_check_available_stock();