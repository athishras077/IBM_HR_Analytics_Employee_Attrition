select * from employee_attrition limit 2;

# Which department loses the most employees?
select department, count(*) as employee_left from employee_attrition where attrition = "yes" group by department order by employee_left desc;

# Which department has the highest attrition rate?
select department, count(*) as total_employees,
sum(case when attrition = "yes" then 1 else 0 end) AS employees_left,
round(
SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) * 100.0 /
count(*), 2
) AS attrition_rate
FROM employee_attrition GROUP BY Department ORDER BY attrition_rate DESC;

# Which job roles experience the highest turnover?
select jobrole, COUNT(*) AS employees_left from employee_attrition WHERE Attrition='Yes' group by jobrole order by employees_left desc;

# Do employees who work overtime leave more frequently?
select overtime, COUNT(*) AS total_employees,
sum(case when attrition = "yes" then 1 else 0 end) as employees_left,
round(sum(case when attrition = "yes" then 1 else 0 end) *100.0/count(*), 2) as attrition_rate
from employee_attrition group by overtime;

# Do employees who leave earn less?
select attrition, round(avg(monthlyincome),2) as avg_income from employee_attrition group by Attrition;

# Are employees who leave younger?
select attrition, round(avg(age),2) as average_age from employee_attrition group by Attrition;

# Do newer employees leave more frequently?
select attrition, round(avg(yearsatcompany),2) as avg_years_at_company from employee_attrition group by Attrition;

# Does marital status influence attrition?
select maritalstatus, count(*) as total_employees,
sum(case when attrition = "yes" then 1 else 0 end) as employees_left,
round(sum(case when attrition = "yes" then 1 else 0 end)*100.0/count(*),2) as attrition_rate
from employee_attrition group by maritalstatus order by attrition_rate desc;