select * from employee_attrition limit 2;
# How many employees are in the dataset?
select count(*) as total_employees from employee_attrition;

# How many employees left the company?
select count(*) as employees_left from employee_attrition where attrition = "Yes";

# How many employees remained with the company?
select count(*) as employees_stayed from employee_attrition where attrition = "no";

# What percentage of employees left the company?
SELECT
ROUND(
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
    * 100.0 / COUNT(*),
    2
) AS attrition_rate
FROM employee_attrition;

# Which department has the largest workforce?
select department, count(*) as employee_count from employee_attrition group by department order by employee_count  desc;

# What is the gender distribution of employees?
select gender, count(*) as employee_count from employee_attrition group by gender;

# What is the marital status breakdown of employees?
select maritalstatus, count(*) as employee_count from employee_attrition group by maritalstatus order by employee_count desc;

# Which job roles have the highest number of employees?
select jobrole, count(*) as employee_count from employee_attrition group by jobrole order by employee_count desc;



