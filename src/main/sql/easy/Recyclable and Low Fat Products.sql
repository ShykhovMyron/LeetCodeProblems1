# <p>Table: <code>Products</code></p>
#
# <pre>
# +-------------+---------+
# | Column Name | Type    |
# +-------------+---------+
# | product_id  | int     |
# | low_fats    | enum    |
# | recyclable  | enum    |
# +-------------+---------+
# product_id is the primary key for this table.
# low_fats is an ENUM of type ('Y', 'N') where 'Y' means this product is low fat and 'N' means it is not.
# recyclable is an ENUM of types ('Y', 'N') where 'Y' means this product is recyclable and 'N' means it is not.</pre>
#
# <p>&nbsp;</p>
#
# <p>Write an SQL query to find the ids of products that are both low fat and recyclable.</p>
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
# Products table:
# +-------------+----------+------------+
# | product_id  | low_fats | recyclable |
# +-------------+----------+------------+
# | 0           | Y        | N          |
# | 1           | Y        | Y          |
# | 2           | N        | Y          |
# | 3           | Y        | Y          |
# | 4           | N        | N          |
# +-------------+----------+------------+
# <strong>Output:</strong>
# +-------------+
# | product_id  |
# +-------------+
# | 1           |
# | 3           |
# +-------------+
# <strong>Explanation:</strong> Only products 1 and 3 are both low fat and recyclable.
# </pre>
#
# <div><div>Related Topics</div><div><li>Database</li></div></div><br><div><li>👍 453</li><li>👎 62</li></div>

# There is no code of Java type for this problem
SELECT product_id
FROM Products
WHERE low_fats LIKE 'Y'
  AND recyclable LIKE 'Y'