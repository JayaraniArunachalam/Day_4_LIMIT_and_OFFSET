SELECT age, count(*) FROM patients GROUP BY age ORDER BY age;
SELECT * FROM patients LIMIT 5;
SELECT * FROM patients LIMIT 10 OFFSET 10;
SELECT * FROM patients ORDER BY arrival_date DESC LIMIT 10;
SELECT patient_id, name, service, satisfaction AS satisfaction_score
FROM patients 
ORDER BY satisfaction_score DESC 
LIMIT 5 OFFSET 2;