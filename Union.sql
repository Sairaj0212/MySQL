-- Unions 
-- Unions allows you to combine Similar ROWS together
-- By default Union is UNION DISTINCT

select first_name, last_name
from employee_demographics
union 
select first_name, last_name
from employee_salary ;

-- UNION ALL is used to combine all the rows from the two tables

select first_name, last_name
from employee_demographics
union all
select first_name, last_name
from employee_salary ;

-- Lets cosider we have to remove the old employees and the employees who are highly paid

select first_name, last_name,'old Man' as Label
from employee_demographics
where age > 40 and gender = 'male'
union
select first_name, last_name,'old Lady' as Label
from employee_demographics
where age > 40 and gender = 'female'
union 
select first_name, last_name, 'Highly paid'as Label2 
from employee_salary
where salary > 70000
order by first_name, last_name
;
