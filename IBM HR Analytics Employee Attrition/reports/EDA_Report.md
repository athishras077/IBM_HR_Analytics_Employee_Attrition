# Exploratory Data Analysis (EDA) Report

## Project

IBM HR Analytics Employee Attrition & Performance Analysis

---

# 1. Objective

The objective of this Exploratory Data Analysis (EDA) is to understand employee characteristics, identify patterns associated with employee attrition, and generate actionable business insights that can help improve employee retention.

The analysis focuses on:

* Understanding employee demographics
* Examining compensation patterns
* Exploring employee tenure and experience
* Identifying factors associated with employee attrition
* Supporting HR decision-making through data-driven insights

---

# 2. Dataset Overview

| Metric                          | Value  |
| ------------------------------- | ------ |
| Total Employees                 | 1,470  |
| Total Features (After Cleaning) | 31     |
| Employees Retained              | 1,233  |
| Employees Left                  | 237    |
| Attrition Rate                  | 16.12% |

---

# 3. Target Variable Analysis

## Attrition Distribution

| Attrition Status | Count | Percentage |
| ---------------- | ----- | ---------- |
| No               | 1,233 | 83.88%     |
| Yes              | 237   | 16.12%     |

### Key Findings

* Most employees remain with the organization.
* Approximately one out of every six employees leaves the company.
* The dataset exhibits class imbalance, with significantly more retained employees than employees who left.

### Business Insight

Although attrition is not widespread, a 16.12% attrition rate represents a meaningful business concern due to recruitment costs, onboarding expenses, productivity loss, and potential disruption to business operations.

---

# 4. Univariate Analysis

## Age Distribution

### Observations

* Most employees fall within the 30–40 age range.
* Very few employees are younger than 20 or older than 55.
* The age distribution appears relatively balanced.

### Business Insight

The organization primarily employs mid-career professionals, indicating a stable and experienced workforce.

---

## Monthly Income Distribution

### Observations

* Most employees earn low to medium income levels.
* A smaller proportion of employees earn significantly higher salaries.
* Income distribution is positively skewed.

### Business Insight

The workforce consists largely of junior and mid-level employees, with a smaller number of senior-level positions.

---

## Years at Company Distribution

### Observations

* Many employees have relatively short to medium tenure.
* Employee counts decrease as tenure increases.
* Long-tenured employees are less common.

### Business Insight

Employee retention efforts may be particularly important during the early years of employment.

---

# 5. Bivariate Analysis

## Attrition vs Overtime

### Observations

* Employees working overtime exhibit significantly higher attrition compared to employees who do not work overtime.

### Business Insight

Excessive workload and extended working hours may contribute to employee burnout and turnover.

### Recommendation

Monitor overtime levels and investigate departments where overtime is consistently high.

---

## Attrition vs Department

### Observations

* Attrition rates vary across departments.
* Some departments experience higher employee turnover than others.

### Business Insight

Attrition is not evenly distributed across the organization.

### Recommendation

Develop department-specific retention strategies based on turnover patterns.

---

## Attrition vs Job Role

### Observations

* Certain job roles exhibit noticeably higher attrition rates.
* Employee turnover is concentrated within specific positions.

### Business Insight

Job role characteristics may influence employee retention.

### Recommendation

Conduct targeted retention analysis for high-risk job roles.

---

## Attrition vs Monthly Income

### Observations

* Employees who left generally have lower monthly incomes compared to employees who remained.

### Business Insight

Compensation may be a contributing factor in employee attrition.

### Recommendation

Review salary competitiveness and compensation structures for vulnerable employee groups.

---

## Attrition vs Age

### Observations

* Younger employees tend to leave more frequently than older employees.

### Business Insight

Early-career professionals may be more likely to seek alternative opportunities.

### Recommendation

Improve career development programs and internal growth opportunities.

---

## Attrition vs Years at Company

### Observations

* Employees with shorter tenure show higher attrition rates.
* Attrition decreases as employee tenure increases.

### Business Insight

The highest retention risk occurs during the early years of employment.

### Recommendation

Strengthen onboarding programs and early-career employee engagement initiatives.

---

## Attrition vs Job Satisfaction

### Observations

* Employees with lower job satisfaction exhibit higher attrition.

### Business Insight

Employee satisfaction is a critical retention factor.

### Recommendation

Regularly monitor employee satisfaction and address workplace concerns proactively.

---

## Attrition vs Work-Life Balance

### Observations

* Employees reporting lower work-life balance are more likely to leave.

### Business Insight

Work-life balance significantly influences employee retention.

### Recommendation

Promote flexible work policies and employee wellness initiatives.

---

# 6. Correlation Analysis

## Correlation Heatmap

A correlation heatmap was generated to examine relationships among numerical variables.

### Key Findings

* Years at Company shows positive correlation with Years in Current Role and Years with Current Manager.
* Job Level exhibits a positive relationship with Monthly Income.
* Total Working Years is positively correlated with Job Level and Monthly Income.

### Business Insight

Career progression, experience, and compensation are strongly interconnected within the organization.

---

# 7. Key Business Findings

1. Employee attrition rate is 16.12%.
2. Overtime is strongly associated with higher attrition.
3. Younger employees are more likely to leave.
4. Employees with shorter tenure experience higher attrition.
5. Lower-income employees show higher turnover.
6. Job satisfaction influences employee retention.
7. Work-life balance impacts attrition behavior.
8. Attrition varies across departments and job roles.

---

# 8. Business Recommendations

Based on the analysis, the following recommendations are proposed:

### Recommendation 1: Reduce Excessive Overtime

* Monitor employee workloads.
* Identify teams with consistently high overtime.
* Encourage workload balancing.

### Recommendation 2: Improve Early-Career Retention

* Strengthen onboarding processes.
* Provide mentorship programs.
* Establish clear career progression paths.

### Recommendation 3: Review Compensation Strategy

* Benchmark salaries against industry standards.
* Evaluate compensation for high-risk employee groups.

### Recommendation 4: Improve Employee Satisfaction

* Conduct regular employee feedback surveys.
* Address workplace concerns proactively.

### Recommendation 5: Enhance Work-Life Balance

* Promote flexible work arrangements.
* Support employee wellness initiatives.

---

# 9. Conclusion

The Exploratory Data Analysis identified several factors associated with employee attrition, including overtime, age, tenure, compensation, job satisfaction, and work-life balance.

These findings provide a strong foundation for further business analysis, SQL-based investigations, and dashboard development in Power BI. The insights generated from this analysis can support data-driven HR strategies aimed at improving employee retention and organizational performance.
