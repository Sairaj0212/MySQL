-- String Functions
-- These are the built-in functions in mysql that are used to perform different operations on strings diffrently

-- 1> Length

select length('mysql') ;

select first_name, length(first_name)
from employee_demographics 
order by 2;

-- 2> Upper and Lower

select upper('mysql');
select lower('MySQL');

select upper(first_name)
from employee_demographics;

-- 3> Trim
-- Used to get the white sapce in the front or the back
-- ltrim or rtrim is used to add the white spaces to the right or left

select rtrim('           MySQL          '); 

-- 4> Left and Right 

select first_name,
left(first_name,4),
right(first_name,4)
from employee_demographics ;

-- 5> Subquereis
-- It allows you to specify the starting poistion of a string and and specifies how many characters we want to go to right

select first_name,
left(first_name,4),
right(first_name,4),
substring(first_name,3,2) 'substring',
birth_date,
substring(birth_date,6,2) as Birth_Month
from employee_demographics ;

-- 6> Replace
-- It replaces the specific character with the character that you want to be there

select first_name, replace(first_name, 'a','z')
from employee_demographics ;

-- 7> Locate
-- It specifies the position of a specific character in a stirng

select locate('s','MySQl');

select first_name, locate('An',first_name)
from employee_demographics ;

-- 8> Concat

select first_name, last_name,
concat(first_name,' ',last_name) as full_name
from employee_demographics ;

