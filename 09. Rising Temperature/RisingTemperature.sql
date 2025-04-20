-- PostgreSQL solution
SELECT 
    w.id as Id 
FROM Weather as w 
WHERE EXISTS (
    SELECT 
        1 
    FROM Weather 
    WHERE recordDate = w.recordDate - 1 
    AND temperature < w.temperature
);

-- MySQL solution
SELECT 
    id AS Id 
FROM Weather AS w 
WHERE EXISTS (
    SELECT 
        1 
    FROM Weather 
    WHERE recordDate = w.recordDate - INTERVAL 1 DAY 
    AND temperature < w.temperature
);