# Day_4_LIMIT_and_OFFSET
LIMIT restricts the number of rows to be returned and OFFSET skips a specified number of rows.

## 📚 Concepts Covered
* **LIMIT** restricts the number of rows returned. 
* **OFFSET** skips a specified number of rows before returning results.
* **Pagination** formula: OFFSET = (page_number - 1) × page_size.
* Combine with **ORDER BY** for consistent results:
* Query execution order: (Limit is applied Last)
* ➡️ FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY → LIMIT

## 🏥 Dataset: 
- [patients](https://github.com/JayaraniArunachalam/Day_1_SQL_Creating-DB-Tables-and-fetch-UNIQUE-values/blob/main/patients.csv)

Columns in the dataset: patient_id,	name,	age,	arrival_date,	departure_date,	service	satisfaction

## 📅Challenge: Day 4 
Find the 3rd to 7th highest patient satisfaction scores from the patients table, showing patient_id, name, service, and satisfaction. Display only these 5 records.

## ✅ [SQL Solution](https://github.com/JayaraniArunachalam/Day_4_LIMIT_and_OFFSET/blob/main/DAY_4_MYSQL_IDC_LIMIT_OFFSET.sql)
  ``` MYSQL
SELECT patient_id, name, service, satisfaction AS satisfaction_score
FROM patients 
ORDER BY satisfaction_score DESC 
LIMIT 5 OFFSET 2;
```
## 📊 Result:
👉[Result / Output](https://github.com/JayaraniArunachalam/Day_4_LIMIT_and_OFFSET/blob/main/DAY_4_MYSQL_IDC_LIMIT_OFFSET.sql)

## 💡 Key Learnings- Conceptual Focus
- Pagination helps break large datasets into smaller, manageable chunks — just like browsing multiple pages on an e-commerce site.
- In real-world applications, pagination is automated using LIMIT and OFFSET dynamically — backend code (like Python, PHP, or JavaScript) calculates OFFSET = (page_number - 1) × page_size based on the user’s navigation.
- This ensures users only fetch the data they need for each page instead of loading the entire dataset at once.

Thank you [Indian Data Club](https://www.linkedin.com/company/indian-data-club/posts/?feedView=all) for starting this challenge and [DPDzero](https://www.linkedin.com/company/dpdzero/) the title sponsor of this challenge

Connect with me on [LinkedIn](https://www.linkedin.com/in/jayarani-arunachalam-23jun1990/)
