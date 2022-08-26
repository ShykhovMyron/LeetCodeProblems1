# <p>Table: <code>Patients</code></p>
#
# <pre>
# +--------------+---------+
# | Column Name  | Type    |
# +--------------+---------+
# | patient_id   | int     |
# | patient_name | varchar |
# | conditions   | varchar |
# +--------------+---------+
# patient_id is the primary key for this table.
# 'conditions' contains 0 or more code separated by spaces.
# This table contains information of the patients in the hospital.
# </pre>
#
# <p>&nbsp;</p>
#
# <p>Write an SQL query to report the patient_id, patient_name all conditions of patients who have Type I Diabetes. Type I Diabetes always starts with <code>DIAB1</code> prefix</p>
#
# <p>Return the result table in <strong>any order</strong>.</p>
#
# <p>The query result format is in the following example.</p>
#
# <p>&nbsp;</p>
# <p><strong>Example 1:</strong></p>
#
# <pre>
# <strong>Input:</strong>
# Patients table:
# +------------+--------------+--------------+
# | patient_id | patient_name | conditions   |
# +------------+--------------+--------------+
# | 1          | Daniel       | YFEV COUGH   |
# | 2          | Alice        |              |
# | 3          | Bob          | DIAB100 MYOP |
# | 4          | George       | ACNE DIAB100 |
# | 5          | Alain        | DIAB201      |
# +------------+--------------+--------------+
# <strong>Output:</strong>
# +------------+--------------+--------------+
# | patient_id | patient_name | conditions   |
# +------------+--------------+--------------+
# | 3          | Bob          | DIAB100 MYOP |
# | 4          | George       | ACNE DIAB100 |
# +------------+--------------+--------------+
# <strong>Explanation:</strong> Bob and George both have a condition that starts with DIAB1.
# </pre>
#
# <div><div>Related Topics</div><div><li>Database</li></div></div><br><div><li>👍 183</li><li>👎 226</li></div>

# There is no code of Java type for this problem
SELECT patient_id, patient_name, conditions
FROM Patients
WHERE conditions LIKE '% DIAB1%'
   OR conditions LIKE 'DIAB1%'