-- Case Statements
-- Allows you to add logic in your select statement

select first_name,
last_name,
age,
case
	when age <= 30 then 'Young' 
    when age between 31 and 50 then 'old'
    when age >= 50 then "On Death's Door"
end as Age_Bracket
from employee_demographics ;

-- Pay Increase and Bonus
-- > 50000 = 5%
-- > 50000 = 7%
-- Finance = 10%

select first_name, last_name, salary,
case
	when salary < 50000 then salary * 1.05
    when salary > 50000 then salary * 1.07
end as New_Salary,
case
	when dept_id = 6 then salary * .10
end as Bonus
from employee_salary ;
