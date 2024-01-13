USE cars;
-- READ DATA-- 
SELECT*FROM car_dekho;
-- Total car get to count of total records-- 7207
SELECT COUNT(*) FROM car_dekho;
-- The manager asked the employee how many cars will be avaliable in 2023--  6
SELECT COUNT(*) FROM car_dekho WHERE year = 2023;
-- The manager asked the employee how many cars will be avaliable in 2020,2021,2022--  7,7,74
SELECT COUNT(*) FROM car_dekho WHERE year in (2020,2021,2022) GROUP BY year;
-- client asked me top print the total of cars by year.I dont see all details-- 
SELECT year, COUNT(*) FROM car_dekho GROUP BY year;
-- Client asked to car dealer agent how many desel cars will be there in 2020-- 20
SELECT COUNT(*) FROM car_dekho WHERE YEAR = 2020 and fuel ="Diesel";
-- Client asked to car dealer agent how many desel cars will be there in 2020-- 51
SELECT COUNT(*) FROM car_dekho WHERE year = 2020 and fuel = "Petrol";
-- The manager told the employee to give a print of All the fuel cars (petrol,diesel,CNG) come by all year-- 
SELECT year, COUNT(*) FROM car_dekho WHERE fuel = "CNG" GROUP BY year;
SELECT year, COUNT(*) FROM car_dekho WHERE fuel = "Petrol" GROUP BY year;
SELECT year, COUNT(*) FROM car_dekho WHERE fuel = "Diesel" GROUP BY year;
-- Manager said there where more than 100 cars n a given year, which year had more than 100  -- 
SELECT year, COUNT(*) FROM car_dekho group BY year having COUNT(*)>100;
SELECT year, COUNT(*) FROM car_dekho GROUP BY year having COUNT(*)<50;
-- The manager said to the employee All cars count etails between 2015 and 2023 we need a complete list-- 4124
SELECT COUNT(*) FROM car_dekho WHERE year between 2015 and 2023;
-- The manager said to the employee All cars details etween 2015 to 2023 we need complete list --
SELECT * FROM car_dekho WHERE year between 2015 and 2023;









