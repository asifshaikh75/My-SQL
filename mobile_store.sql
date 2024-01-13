CREATE SCHEMA mobilestore;
USE mobilestore;
SELECT * FROM mobile;
-- check mobile features and price list --
SELECT phone_name, price FROM mobile;
-- find out the price of 5 most expensive phones --
SELECT * FROM mobile
ORDER BY price desc
limit 5;
-- find out the price of 5 most expensive phones --
SELECT * FROM mobile
ORDER BY price asc
limit 5;
-- List of top 5 samsung phones with price and all features --
SELECT * FROM mobile WHERE brands = "samsung"
ORDER BY price desc
limit 5;
-- Must have andriod phone list top 5 High price andriod phones--
SELECT * FROM mobile WHERE Operating_System_Type = "Android"
ORDER BY price desc
limit 5;
-- Must have andriod phone list top 5 lower price andriod phones--
SELECT * FROM mobile WHERE Operating_System_Type = "Android"
ORDER BY price asc
limit 5;
-- Must have IOS phone list top 5 Highest price iOS phones--
SELECT * FROM mobile WHERE Operating_System_Type = "iOS"
ORDER BY price desc
limit 5;
-- Must have IOS phone list top 5 lower price iOS phones--
SELECT * FROM mobile WHERE Operating_System_Type = "iOS"
ORDER BY price asc
limit 5;
-- write a query which phones support 5g also top phones with 5g support
SELECT * FROM mobile WHERE  5G_Availability = "Yes"
ORDER BY price desc 
limit 5;
-- total price of all mobile is to be found with brand name 
SELECT brands, sum(price) FROM mobile group by brands;

















