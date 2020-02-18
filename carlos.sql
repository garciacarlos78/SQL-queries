SELECT COUNT(*) AS total 
FROM usairlineflights2.flights;

SELECT Origin, AVG(ArrDelay) AS prom_arribades, AVG(DepDelay) AS prom_sortides
FROM flights
GROUP BY Origin;

SELECT Origin, colYear, colMonth, AVG(ArrDelay) AS prom_arribades 
FROM flights
GROUP BY Origin, colYear, colMonth
ORDER BY Origin, colYear;

SELECT UniqueCarrier, colYear, colMonth, SUM(Cancelled) AS total_cancelled
FROM flights
GROUP BY UniqueCarrier, colYear, colMonth
ORDER BY total_cancelled DESC;

SELECT TailNum, SUM(Distance) AS totalDistance
FROM flights
WHERE TailNum NOT LIKE ''
GROUP BY TailNum
ORDER BY totalDistance DESC LIMIT 10;

SELECT UniqueCarrier, AVG(ArrDelay) AS avgDelay FROM flights
GROUP BY UniqueCarrier
HAVING avgDelay > 10
ORDER BY avgDelay DESC;


