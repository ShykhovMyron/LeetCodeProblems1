# <p>Table: <code>Person</code></p>
#
# <pre>
# +-------------+---------+
# | Column Name | Type    |
# +-------------+---------+
# | id          | int     |
# | email       | varchar |
# +-------------+---------+
# id is the primary key column for this table.
# Each row of this table contains an email. The emails will not contain uppercase letters.
# </pre>
#
# <p>&nbsp;</p>
#
# <p>Write an SQL query to report all the duplicate emails.</p>
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
# Person table:
# +----+---------+
# | id | email   |
# +----+---------+
# | 1  | a@b.com |
# | 2  | c@d.com |
# | 3  | a@b.com |
# +----+---------+
# <strong>Output:</strong>
# +---------+
# | Email   |
# +---------+
# | a@b.com |
# +---------+
# <strong>Explanation:</strong> a@b.com is repeated two times.
# </pre>
#
# <div><div>Related Topics</div><div><li>Database</li></div></div><br><div><li>👍 1291</li><li>👎 52</li></div>

# There is no code of Java type for this problem
SELECT email
FROM person
GROUP BY email
HAVING COUNT(*) > 1