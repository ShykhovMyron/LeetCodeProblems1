#<p>Table: <code>Customers</code></p>
#
#<pre>
#+-------------+---------+
#| Column Name | Type    |
#+-------------+---------+
#| id          | int     |
#| name        | varchar |
#+-------------+---------+
#id is the primary key column for this table.
#Each row of this table indicates the ID and name of a customer.
#</pre>
#
#<p>&nbsp;</p>
#
#<p>Table: <code>Orders</code></p>
#
#<pre>
#+-------------+------+
#| Column Name | Type |
#+-------------+------+
#| id          | int  |
#| customerId  | int  |
#+-------------+------+
#id is the primary key column for this table.
#customerId is a foreign key of the ID from the Customers table.
#Each row of this table indicates the ID of an order and the ID of the customer who ordered it.
#</pre>
#
#<p>&nbsp;</p>
#
#<p>Write an SQL query to report all customers who never order anything.</p>
#
#<p>Return the result table in <strong>any order</strong>.</p>
#
#<p>The query result format is in the following example.</p>
#
#<p>&nbsp;</p>
#<p><strong>Example 1:</strong></p>
#
#<pre>
#<strong>Input:</strong>
#Customers table:
#+----+-------+
#| id | name  |
#+----+-------+
#| 1  | Joe   |
#| 2  | Henry |
#| 3  | Sam   |
#| 4  | Max   |
#+----+-------+
#Orders table:
#+----+------------+
#| id | customerId |
#+----+------------+
#| 1  | 3          |
#| 2  | 1          |
#+----+------------+
#<strong>Output:</strong>
#+-----------+
#| Customers |
#+-----------+
#| Henry     |
#| Max       |
#+-----------+
#</pre>
#
#<div><div>Related Topics</div><div><li>Database</li></div></div><br><div><li>👍 1390</li><li>👎 90</li></div>

#There is no code of Java type for this problem
SELECT name as Customers
FROM Customers c
         LEFT JOIN Orders o ON c.id = o.customerId
WHERE o.customerId IS NULL