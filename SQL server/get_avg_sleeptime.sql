USE fitbit_db;

DROP FUNCTION IF EXISTS get_avg_sleeptime;

DELIMITER //

CREATE FUNCTION get_avg_sleeptime (
user_id BIGINT)

RETURNS double
DETERMINISTIC READS SQL DATA

BEGIN

DECLARE avg_sleeptime double;

SELECT 
    ROUND(AVG(TotalMinutesAsleep), 2)
INTO avg_sleeptime FROM
    sleeptime
        JOIN
    dailyactivity ON sleeptime.SleepId = dailyactivity.SleepId
WHERE
    Id = user_id;

RETURN round((avg_sleeptime / 60.0), 2);
END//

select get_avg_sleeptime(1503960366);
