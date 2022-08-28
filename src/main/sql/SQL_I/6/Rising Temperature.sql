# <p>Table: <code>Weather</code></p>
#
# <pre>
# +---------------+---------+
# | Column Name   | Type    |
# +---------------+---------+
# | id            | int     |
# | recordDate    | date    |
# | temperature   | int     |
# +---------------+---------+
# id is the primary key for this table.
# This table contains information about the temperature on a certain day.
# </pre>
#
# <p>&nbsp;</p>
#
# <p>Write an SQL query to find all dates' <code>Id</code> with higher temperatures compared to its previous dates (yesterday).</p>
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
# Weather table:
# +----+------------+-------------+
# | id | recordDate | temperature |
# +----+------------+-------------+
# | 1  | 2015-01-01 | 10          |
# | 2  | 2015-01-02 | 25          |
# | 3  | 2015-01-03 | 20          |
# | 4  | 2015-01-04 | 30          |
# +----+------------+-------------+
# <strong>Output:</strong>
# +----+
# | id |
# +----+
# | 2  |
# | 4  |
# +----+
# <strong>Explanation:</strong>
# In 2015-01-02, the temperature was higher than the previous day (10 -&gt; 25).
# In 2015-01-04, the temperature was higher than the previous day (20 -&gt; 30).
# </pre>
#
# <div><div>Related Topics</div><div><li>Database</li></div></div><br><div><li>👍 1119</li><li>👎 399</li></div>

# There is no code of Java type for this problem
SELECT w1.id
FROM weather w1
         JOIN weather w2
              ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
                  AND w1.temperature > w2.temperature