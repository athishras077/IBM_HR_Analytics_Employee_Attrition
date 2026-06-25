## Dataset Structure Summary

- Total Records: 1,470
- Total Features: 35
- Numerical Features: 26
- Categorical Features: 9

### Target Variable
- Attrition

### Identifier Columns
- EmployeeNumber

### Constant Columns Identified
- EmployeeCount
- StandardHours
- Over18 (to be verified)

### Key Observations
- No obvious invalid ranges in numerical variables.
- Several employee satisfaction metrics are available.
- Multiple experience-related variables support attrition analysis.
- Constant columns will be removed during the Data Cleaning phase.

## Data Quality Assessment

### Missing Values
- Total Missing Values: 0
- All records are complete.

### Duplicate Records
- Duplicate Rows: 0
- Duplicate Employee IDs: 0

### Constant Columns
- EmployeeCount
- Over18
- StandardHours

### Categorical Consistency
- No inconsistent labels detected.
- Binary and categorical features use standardized values.

### Numeric Validation
- No negative or impossible values identified.

### Conclusion
The dataset demonstrates high data quality and is suitable for analysis after removing non-informative columns during the Data Cleaning phase.

## Removed Constant Columns

Three constant columns were identified and removed because they contained the same value for every employee.

| Column | Reason |
|--------|--------|
| EmployeeCount | Constant value (1) |
| Over18 | Constant value (Y) |
| StandardHours | Constant value (80) |

Dataset shape changed from **(1470, 35)** to **(1470, 32)**.