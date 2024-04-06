-- Subquereis
-- Query within another query

-- 1> Where Statement
select * 
from employee_demographics
where employee_id in 
					( select employee_id
					  from employee_salary
                      where dept_id = 1)
;

-- 2> Select Statement

select first_name, salary,
(select avg(salary)
from employee_salary)
from employee_salary ; 

-- 3> From Statement

select gender, avg(age), min(age), max(age), count(age)
from employee_demographics
group by gender ;

select *
from
(select gender, avg(age), min(age), max(age), count(age)
from employee_demographics
group by gender) as Agg_Table ;


select avg(`max(age)`)
from
(select gender, avg(age), min(age), max(age), count(age)
from employee_demographics
group by gender) as Agg_Table ;


-- After aliasing it no need to use back ticks (` `)
select avg(max_age)
from
(select gender, 
avg(age) as avg_age, 
min(age) as min_age,
max(age) as max_age,
count(age)
from employee_demographics
group by gender) as Agg_Table ;



