select * from employee_attrition limit 2;

# Which age group experiences the highest attrition?

select 
case 
when age < 30 then "Under 30"
when age between 30 and 39 then "30-39"
when age between 40 and 49 then "40-49"
else "50+" end as age_group,
count(*) as total_employee,
sum(case when attrition = "yes" then 1 else 0 end) as employee_left,
round(sum(case when attrition = "yes" then 1 else 0 end)*100.0/count(*),2) as attrition_rate
from employee_attrition group by age_group order by attrition_rate desc;

# Does attrition decrease as salary increases?

select 
case
when monthlyincome < 3000 then "low income"
when monthlyincome between 3000 and 7000 then "Medium income"
else "High Income" end as salary_band,
count(*) as total_employee,
sum(case when attrition = "yes" then 1 else 0 end) as employee_left,
round(sum(case when attrition = "yes" then 1 else 0 end)*100.0/count(*),2) as attrition_rate
from employee_attrition group by salary_band order by attrition_rate desc;

# At what career stage do employees leave most often?

select
case
when yearsatcompany < 3 then "0-2 years"
when yearsatcompany between 3 and 7 then "3-7 years" 
when yearsatcompany between 8 and 15 then "8-15 years"
else "15+ years" end as experience_band,
count(*) as total_employee,
sum(case when attrition = "yes" then 1 else 0 end) as employee_left,
round(sum(case when attrition = "yes" then 1 else 0 end)*100.0/count(*),2) as attrition_rate
from employee_attrition group by experience_band order by attrition_rate desc;

# Top 5 Job Roles with Highest Attrition

select jobrole, count(*) as employees_left from employee_attrition where Attrition = "yes" group by jobrole order by employees_left desc limit 5;

# Rank Departments by Attrition Rate

with department_attrition as 
(select department, 
round(sum(case when attrition = "yes" then 1 else 0 end)*100.0/count(*),2) as attrition_rate 
from employee_attrition group by Department)
select department, attrition_rate, rank() over(order by attrition_rate desc) as department_rank from department_attrition;

# Top Earners in Each Department

with ranked_employee as 
(
select department, jobrole, monthlyincome, 
row_number() over(partition by department order by monthlyincome desc) as rn from employee_attrition
)
select department, jobrole, monthlyincome from ranked_employee where rn = 1;

# Department Average Salary vs Company Average

select department,
round(avg(monthlyincome), 2) as department_avg_salary,
(select round(avg(monthlyincome), 2) from employee_attrition ) as company_avg_salary 
from employee_attrition group by Department;

# Employees at Highest Risk

select age, monthlyincome, yearsatcompany, overtime, jobsatisfaction, attrition from employee_attrition
where overtime = "yes" and MonthlyIncome < "3000" and YearsAtCompany < 3 order by MonthlyIncome;

