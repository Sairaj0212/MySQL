-- Window Function

-- Using Group by
select gender, avg(salary) as avg_salary
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
group by gender ;

-- Using Window Function
-- OVER 
select gender, avg(salary) over()
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id ;
    
-- Partition by 

select dem.first_name, dem.last_name, avg(salary) over(partition by gender)
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id ;
    
    
    
select dem.first_name, dem.last_name, sum(salary) over(partition by gender)
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id ;
    
    
    
-- Rolling Total

select dem.first_name, dem.last_name, salary,       
sum(salary) over(partition by gender order by dem.employee_id) as Rolling_Total
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id ;


-- Row Number

select dem.employee_id, dem.first_name, dem.last_name, salary,       
row_number() over()
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id ;
    
-- Basically Row Numbers are not repetitive but it can be when we use partition by

 select dem.employee_id,dem.first_name, dem.last_name,dem.gender,salary,       
row_number() over(partition by gender order by salary desc)as row_num,
rank() over(partition by gender order by salary desc) as rank_num,
-- It prints by positionally means in o/p skips 6
-- So we can use the dense_rank to overcome this
dense_rank() over(partition by gender order by salary desc) as dens_rank_num
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id ;

-- Basically ranks asiign numbers positionally
-- While dens_rank assign numbers numerically
