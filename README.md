# Day_4_LIMIT_and_OFFSET
LIMIT restricts the number of rows to be returned and OFFSET skips a specified number of rows.

## 📚 Concepts Covered
* Five core aggregates: COUNT, SUM, MIN, MAX, AVG
* ROUND() function helps present cleaner AVG
* Aggregates ignore NULL (except COUNT(*)). 
* Use AS to Alias aggregates for readable column names.


## 🏥 Dataset: 
- [patients](https://github.com/JayaraniArunachalam/Day_1_SQL_Creating-DB-Tables-and-fetch-UNIQUE-values/blob/main/patients.csv)

Columns in the dataset: patient_id,	name,	age,	arrival_date,	departure_date,	service	satisfaction

## 📅Challenge: Day 5 
Calculate the total number of patients admitted, total patients refused, and the average patient satisfaction across all services and weeks. Round the average satisfaction to 2 decimal places.

## ✅ [SQL Solution](https://github.com/JayaraniArunachalam/Day_4_LIMIT_and_OFFSET/blob/main/DAY_4_MYSQL_IDC_LIMIT_OFFSET.sql)
  ``` MYSQL
SUM(patients_admitted) AS PATIENT_ADMSN_COUNT,
SUM(patients_refused) AS PATIENT_RFSD_COUNT,
ROUND(AVG(patient_satisfaction),2) AS AVG_SATISFACTION
FROM services_weekly;
```
## 📊 Result:
👉[Result / Output](https://github.com/JayaraniArunachalam/Day_4_LIMIT_and_OFFSET/blob/main/Day%204%20LIMIT%20OFFSET%20op.png)


## 📊 Insight:
This gives a single-row summary showing the hospital’s overall admissions, refusals, and average satisfaction.

## 💡 Key Learnings- Conceptual Focus
________________________________________
When I first read the question — “Calculate totals and averages across all services and weeks” — I thought a GROUP BY might be needed. 
But “across all” means we need an overall summary, not grouped by any column. Hence, aggregate functions like SUM() or AVG() are applied directly without GROUP BY.
# About GROUP BY:
 	* All non-aggregated columns in SELECT must appear in GROUP BY.
      *SELECT non-aggregated columns ⊆ GROUP BY columns
 	* The reverse is not true: you can include columns in GROUP BY even if they are not in SELECT.

Thank you [Indian Data Club](https://www.linkedin.com/company/indian-data-club/posts/?feedView=all) for starting this challenge and [DPDzero](https://www.linkedin.com/company/dpdzero/) the title sponsor of this challenge

Connect with me on [LinkedIn](https://www.linkedin.com/in/jayarani-arunachalam-23jun1990/)
