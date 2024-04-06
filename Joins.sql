-- Joins

select * 
from employee_demographics ;
 
select * 
from employee_salary ;

-- 1. Inner Join
-- Returns the rows that are same from both the columns
-- By default JOIN represent the inner join
-- ON is used to specify the particular table on which we are going to perform the joins

select * 
from employee_demographics
inner join employee_salary
	on employee_demographics.employee_id = employee_salary.employee_id ;

-- We can aslo make this shorter just by using the Aliasing

select *
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id ;
    
select dem.employee_id, age, salary
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id ;

-- 2. Outer Joins
-- i> Left Outer Join 
-- 	 Takes everything from the left table even if there are no similar column vallues
-- 	 Then it only returns the matches from the right table

select *
from employee_demographics as dem
left join employee_salary as sal
	on dem.employee_id = sal.employee_id ;
    
-- ii> Right Outer Join
-- Takes everything from the right table even if there are no similar column values
-- Then it only returns the matches from the left table

select * 
from employee_demographics as dem
right join employee_salary as sal
	on dem.employee_id = sal.employee_id ;
    
-- 3. Self Join
-- 	It is a join where you tie the table to itself

select *
from employee_salary as emp1
join employee_salary as emp2
	on emp1.employee_id = emp2.employee_id ;

-- Cosider we have to assign a employee as a santa, 
-- where employees will be santa for their next higher employee id

select emp1.employee_id as santa,
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_id,
emp2.first_name as first_name_emp,
emp2.last_name as last_name_emp
from employee_salary as emp1
join employee_salary as emp2
	on emp1.employee_id + 1 = emp2.employee_id ;
    
-- Joining Multiple tables together

select *
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
join parks_departments as pd
	on sal.dept_id = pd.department_id ;
    
