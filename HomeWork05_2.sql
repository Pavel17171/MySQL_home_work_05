CREATE DATABASE IF NOT EXISTS home_work_5_2;
USE home_work_5_2;

DROP TABLE IF EXISTS train;

CREATE TABLE train
(
	train_id INT NOT NULL,
    station VARCHAR(45),
    station_time TIME
);

INSERT train
VALUES
	(110, 'San Francisco', '10:00:00'),
    (110, 'Redwood City', '10:54:00'),
    (110, 'Palo Alto', '11:02:00'),
    (110, 'San Jose', '12:35:00'),
    (120, 'San Francisco', '11:00:00'),
    (120, 'Palo Alto', '12:49:00'),
    (120, 'San Jose', '13:00:00');

SELECT * FROM train;


SELECT *, TIMEDIFF(LEAD(station_time) 
OVER(PARTITION BY train_id), station_time) AS to_the_next_station
FROM train;
