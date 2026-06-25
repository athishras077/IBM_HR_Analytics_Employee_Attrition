# 📊 Data Dictionary — IBM HR Analytics Employee Attrition Dataset

## 📌 Overview

This data dictionary defines each feature in the IBM HR Analytics Employee Attrition dataset. It explains the meaning, data type, and business relevance of each column to ensure consistent understanding across stakeholders.

---

## 🎯 Target Variable

| Column    | Description                           | Type                 | Business Meaning                                          |
| --------- | ------------------------------------- | -------------------- | --------------------------------------------------------- |
| Attrition | Whether the employee left the company | Categorical (Binary) | Primary target variable used to analyze employee turnover |

---

## 👤 Employee Identification

| Column         | Description                         | Type    | Business Meaning                           |
| -------------- | ----------------------------------- | ------- | ------------------------------------------ |
| EmployeeNumber | Unique ID assigned to each employee | Integer | Used only for identification, not analysis |
| EmployeeCount  | Constant value (1 for all records)  | Integer | No analytical value; can be removed        |

---

## 👥 Demographics

| Column        | Description                      | Type                   | Business Meaning                     |
| ------------- | -------------------------------- | ---------------------- | ------------------------------------ |
| Age           | Age of employee                  | Numerical              | Helps analyze attrition by age group |
| Gender        | Gender of employee               | Categorical            | Used for demographic analysis        |
| MaritalStatus | Marital status of employee       | Categorical            | May influence attrition behavior     |
| Over18        | Indicates if employee is over 18 | Categorical (Constant) | No analytical value                  |

---

## 🏢 Work & Job Information

| Column           | Description                       | Type               | Business Meaning                          |
| ---------------- | --------------------------------- | ------------------ | ----------------------------------------- |
| BusinessTravel   | Frequency of business travel      | Categorical        | Impacts work-life balance and attrition   |
| Department       | Department of employee            | Categorical        | Helps identify high-attrition departments |
| JobRole          | Role of employee in organization  | Categorical        | Used for role-based attrition analysis    |
| JobLevel         | Level of job in hierarchy         | Numerical          | Indicates seniority                       |
| DistanceFromHome | Distance from home to workplace   | Numerical          | May influence job satisfaction            |
| StandardHours    | Standard working hours (constant) | Integer (Constant) | No analytical value                       |

---

## 💰 Compensation & Salary

| Column            | Description                   | Type      | Business Meaning                 |
| ----------------- | ----------------------------- | --------- | -------------------------------- |
| MonthlyIncome     | Monthly salary of employee    | Numerical | Key factor in attrition analysis |
| DailyRate         | Daily salary rate             | Numerical | Compensation structure indicator |
| HourlyRate        | Hourly wage                   | Numerical | Used in compensation breakdown   |
| MonthlyRate       | Monthly rate value            | Numerical | Supplementary salary information |
| PercentSalaryHike | Percentage increase in salary | Numerical | Indicates reward growth          |
| StockOptionLevel  | Stock benefits level          | Numerical | Employee retention incentive     |

---

## 📈 Experience & Tenure

| Column                  | Description                           | Type      | Business Meaning                     |
| ----------------------- | ------------------------------------- | --------- | ------------------------------------ |
| TotalWorkingYears       | Total professional experience         | Numerical | Strong predictor of attrition        |
| YearsAtCompany          | Years spent in current company        | Numerical | Measures employee loyalty            |
| YearsInCurrentRole      | Years in current role                 | Numerical | Role stability indicator             |
| YearsSinceLastPromotion | Time since last promotion             | Numerical | Career growth indicator              |
| YearsWithCurrManager    | Time with current manager             | Numerical | Manager-employee relationship factor |
| NumCompaniesWorked      | Number of companies worked previously | Numerical | Career mobility indicator            |

---

## 😊 Employee Satisfaction

| Column                   | Description                        | Type                  | Business Meaning               |
| ------------------------ | ---------------------------------- | --------------------- | ------------------------------ |
| JobSatisfaction          | Satisfaction with job role         | Numerical (1–4 scale) | Key HR engagement metric       |
| EnvironmentSatisfaction  | Satisfaction with work environment | Numerical (1–4 scale) | Workplace conditions indicator |
| RelationshipSatisfaction | Satisfaction with relationships    | Numerical (1–4 scale) | Team dynamics indicator        |
| WorkLifeBalance          | Work-life balance rating           | Numerical (1–4 scale) | Critical attrition driver      |
| JobInvolvement           | Level of job involvement           | Numerical (1–4 scale) | Employee engagement level      |

---

## 🎓 Education & Training

| Column                | Description                  | Type        | Business Meaning             |
| --------------------- | ---------------------------- | ----------- | ---------------------------- |
| Education             | Education level of employee  | Numerical   | Qualification indicator      |
| EducationField        | Field of education           | Categorical | Helps analyze role alignment |
| TrainingTimesLastYear | Number of trainings attended | Numerical   | Skill development indicator  |

---

## 📊 Performance Metrics

| Column                  | Description                  | Type      | Business Meaning              |
| ----------------------- | ---------------------------- | --------- | ----------------------------- |
| PerformanceRating       | Employee performance score   | Numerical | Evaluation of job performance |
| EnvironmentSatisfaction | Workplace satisfaction score | Numerical | HR engagement indicator       |

---

## 📌 Key Notes

* Constant columns identified:

  * EmployeeCount
  * StandardHours
  * Over18

* These columns will be removed during **Data Cleaning Phase** as they do not contribute to analysis.

* `EmployeeNumber` is an identifier and should not be used in statistical modeling or correlation analysis.

---

## 📌 Summary

This dataset contains rich HR information across:

* Demographics
* Compensation
* Job roles
* Employee satisfaction
* Career progression

It is highly suitable for:

* Attrition analysis
* HR performance insights
* Workforce behavior studies
