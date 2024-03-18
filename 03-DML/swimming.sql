-- DATA MANIPULATION LANGUAGE : Insert, Update, Delete (CUD)
-- DML: INSERT INTO: add a new row into an existing table
INSERT INTO parents(first_name, last_name)
VALUES ("Daisy", "Lou");

INSERT INTO locations(name, address)
VALUES ("Bishan Swimming Complex", "Bishan St 81"),
        ("YCK Swimming Complex", "Ang Mo Kio Ave 1");

-- UPDATE an existing row
UPDATE locations SET name="Commonwealth Sports Hall"
WHERE location_id = 2;

UPDATE students SET swimming_level="Intermediate"
WHERE student_id = 1;

-- How to update multiple columns at the same time
UPDATE parents SET first_name="Stella", last_name="Tan"
WHERE parent_id=4;

-- DELETE 
-- the `where` is super important because it
-- specifies which rows to DELETE
-- if there is no `where` clause, then all the rows are DELETED
DELETE FROM locations WHERE location_id = 5;