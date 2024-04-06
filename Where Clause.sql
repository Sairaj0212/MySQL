# Where Clause
select *
from employee_salary
where first_name = 'Leslie' ; # = is comparison operator

select *
from employee_salary
where salary > 50000 ; # > is greater than operator 

select *
from employee_salary
where salary >= 50000 ; # > is greater than or equal to operator

select *
from employee_salary
where salary < 50000 ; # > is less than operator

select *
from employee_salary
where salary <= 50000 ; # > is less than or equal to operator

select *
from employee_demographics
where gender = 'female';

select *
from employee_demographics
where gender != 'female'; # != is not equal to operator

select *
from employee_demographics
where birth_date > '1985-01-01';

-- AND OR NOT are the Logical Operators
select *
from employee_demographics
where birth_date > '1985-01-01'
and gender = 'male';

select * 
from employee_demographics
where birth_date > '1985-01-01'
or gender = 'male' ;

select * 
from employee_demographics
where birth_date >'1985-01-01'
or not gender = 'male' ;

select * 
from employee_demographics
where (first_name ='Leslie' and age = 44) or age > 55 ; # Isolated Where Statement

-- Like Statement
-- With the Like Statement we use the 2 signs % and _
-- % means anything value and _ means only the specific value

select *
from employee_demographics
where first_name like 'jer%';  # Here we have used the % sign so it will print the all the values taht may contain the jer letters

select *
from employee_demographics
where first_name like '%er%'; # Here %er% will find out the records which contain the er in their whole sequence of word

select *
from employee_demographics
where first_name like 'a%'; # Here a% will print the first name of employees starting with letter a

select *
from employee_demographics
where first_name like 'a__'; # Here we have used _ sign two times after a so it will print the first name starting with a and have only two letters after a 

select *
from employee_demographics
where first_name like 'a___'; # Here we have used _ sign three times after a so it will print the first name starting with a and have only three letters after a

select *
from employee_demographics
where first_name like 'a___%'; # We can also combine both % and _

select *
from employee_demographics
where birth_date like '1989%'; # We can also use Like Statement with Numeric Values











