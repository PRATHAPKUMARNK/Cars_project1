create schema cars;    
use cars; 
-- 1} Read data--
select * from car_dekho;

-- 2} Total Cars : count
select count(*) from car_dekho; 

-- 3}The number of cars in 2023
select name, year from car_dekho
	where year = 1998;

-- 4}number of cars in 2020, 2021 , 2022
select count(*) from car_dekho
	-- where year = 2020 or year = 2021 or year = 2022;
    where year in (2022, 2021, 2020)
    group by year;               -- to get sum comment this line

-- 5}Total number of car by year
select year, count(*) from car_dekho 
	group by year;

-- 6}Total number of Diesel cars in 2020
select count(*) from car_dekho 
	where year = 2020 and fuel = 'diesel';

-- 7}Total number of Petrol cars in 2020
select count(*) from car_dekho 
	where year = 2020 and fuel = 'Petrol';

-- 8} all fuel car group by years    (skip)
select year, count(year) from car_dekho 
	where fuel = 'Petrol' 
    group by year;

-- 9} Years having more than 100 cars
select year, count(*) from car_dekho
    group by year 
    having count(*) > 100;   
    
-- 10} car details between 2015 to 2023
select Name, year from car_dekho
	where year between 2015 and 2023;
select Year, count(*)  from car_dekho
	group by year;
    
    