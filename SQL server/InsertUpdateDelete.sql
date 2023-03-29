USE fitbit_db;

DESCRIBE activetime;

--  Insert 
-- Success 
INSERT INTO activetime (ActiveTimeId,VeryActiveMinutes,FairlyActiveMinutes,LightlyActiveMinutes, SedentaryMinutes)
VALUES (500, 27, 30, 50, 50);
SELECT * FROM activetime WHERE ActiveTimeId = 500;

-- Error (Trying to insert dublicate record with same Primary Key)
INSERT INTO activetime (ActiveTimeId)
VALUES (500);
SELECT * FROM activetime WHERE ActiveTimeId = 500;

-- Update
-- Success
UPDATE activetime 
SET VeryActiveMinutes = 34
WHERE ActiveTimeId = 500;
SELECT * FROM activetime WHERE ActiveTimeId = 500;
-- Error (Trying to update string value to a integer datatype field)
UPDATE activetime 
SET VeryActiveMinutes = 'Test'
WHERE ActiveTimeId = 500;

-- Delete 
-- Success
DELETE FROM activeTime
WHERE ActiveTimeId = 500;
-- Error (DataType mismatch)
DELETE FROM activeTime
WHERE ActiveTimeId = 'Test';

