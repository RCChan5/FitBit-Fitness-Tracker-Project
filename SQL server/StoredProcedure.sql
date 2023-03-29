USE fitbit_db;

DROP PROCEDURE IF EXISTS health_status;

DELIMITER //
CREATE PROCEDURE  health_status
 (
id_param BIGINT)
BEGIN

DECLARE avg_steps_var DOUBLE;
DECLARE no_of_records INT;
DECLARE	avg_distance_var DOUBLE;
DECLARE avg_calories_var DOUBLE;
DECLARE user_status TEXT;

DECLARE avg_sleeptimehrs DOUBLE;

 SET avg_sleeptimehrs = get_avg_sleeptime(id_param);
SELECT 
    ROUND(AVG(TotalSteps), 2),
    ROUND(AVG(TotalDistance), 2),
    ROUND(AVG(Calories), 2),
    COUNT(*)
INTO avg_steps_var , avg_distance_var , avg_calories_var , no_of_records FROM
    fitbit_db.dailyactivity
WHERE
    Id = id_param;
    
    IF(avg_steps_var > 1000) AND (avg_calories_var > 2000) AND ( avg_distance_var > 6 )  and  ( avg_sleeptimehrs > 7 OR avg_sleeptimehrs < 9)  THEN 
    SET user_status = "Healthy";
    ELSE
    SET user_status = "Needs to work on Health";
    END IF;

SELECT 
    avg_steps_var AS Average_StepsCount,
    avg_distance_var AS Avgerage_Distance,
    avg_calories_var AS Average_ColoriesBurn,
    avg_sleeptimehrs as Average_sleeptime,
    no_of_records,
	user_status AS Health_Status;

END//

DELIMITER ;

CALL health_status(1503960366);

