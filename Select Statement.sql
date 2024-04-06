# Select Statement in MySQL

select * 
from parks_and_recreation.employee_demographics;

select first_name,
last_name,
birth_date,
age,
(age + 10) * 10 + 10
from parks_and_recreation.employee_demographics;
 
# PEMDAS (Parenthesis -> Exponent -> Multiplication -> Division -> Addition -> Substarction)
 
select gender
from parks_and_recreation.employee_demographics;

select distinct gender # prints only distinct values whether male or female 
from parks_and_recreation.employee_demographics;
