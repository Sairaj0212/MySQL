-- Limit and Aliasing 
-- Limit is used fro specifying how many rows you want in your output

select *
from employee_demographics
limit 3 ; 
-- This will print only top three rows

select *
from employee_demographics
order by age desc
limit 3 ; 
-- This will print only three top aged employees

select *
from employee_demographics
order by age desc
limit 2 , 1 ;
-- This will print 1st row next after 2nd row

-- Aliasing
-- Aliasing is the way to change the name of the column

select gender, avg (age) as avg_age
from employee_demographics
group by gender;
-- It is not necessary to use as keyword for aliasing the coumn name

 