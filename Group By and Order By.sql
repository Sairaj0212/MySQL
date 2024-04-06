# Group By and Order By in MySQL
 
select gender
from employee_demographics
group by gender ; 
 
select gender , avg(age) 
from employee_demographics
group by gender ; # We have used aggregate function avg (average of age) but grouped by gender

# We can use group by on multiple columns
select occupation , salary
from employee_salary
group by occupation , salary;

select gender , avg(age), max(age), min(age), count(age) #Count will count the number of rows # We can multiple aggregate functions 
from employee_demographics
group by gender ;

-- Order by sets the result in either ascending or descending order

select *
from employee_demographics
order by first_name ; # By default order by clause is in Ascending order ASC

select *
from employee_demographics
order by first_name desc ; # DESC will print the result set in descending order

select *
from employee_demographics
order by gender, age desc ; # We can order by multiple columns

select *
from employee_demographics
order by age, gender ;
-- Here we have order by a age column first and gender column as second 
-- so it will only order by the age column only because there are no same values int the age column
-- Therefore it will not apply order by on the gender column 

select *
from employee_demographics
order by 5,4 ; 
-- We can also specify just the column position intead of column name








