
#QUESTION 1

SELECT count(*) FROM Planes
where speed > 0;

SELECT min(speed) FROM planes; 

SELECT max(speed) FROM planes; 

#QUESTION 2

SELECT sum(distance) FROM flights
where year = 2013;

SELECT sum(distance) FROM flights
where year = 2013 AND tailnum is NULL; 

#QUESTION 3

SELECT manufacturer, sum(distance) FROM flights
INNER JOIN planes ON flights.tailnum = planes.tailnum
where flights.year = 2013 AND month = 7 AND day = 5
Group by manufacturer;


SELECT manufacturer, sum(distance) FROM flights
LEFT OUTER JOIN planes ON flights.tailnum = planes.tailnum
where flights.year = 2013 AND month = 6 AND day = 8
Group by manufacturer;

#QUESTION 4 - Finding the max distance sorted by manufacturer. 

SELECT manufacturer, max(distance) FROM flights
INNER JOIN planes ON flights.tailnum = planes.tailnum
where flights.year = 2013 AND month = 7 AND day = 5
Group by manufacturer;
