# <p>Table: <code>Products</code></p>
#
# <pre>
# +-------------+---------+
# | Column Name | Type    |
# +-------------+---------+
# | product_id  | int     |
# | store1      | int     |
# | store2      | int     |
# | store3      | int     |
# +-------------+---------+
# product_id is the primary key for this table.
# Each row in this table indicates the product's price in 3 different stores: store1, store2, and store3.
# If the product is not available in a store, the price will be null in that store's column.
# </pre>
#
# <p>&nbsp;</p>
#
# <p>Write an SQL query to rearrange the <code>Products</code> table so that each row has <code>(product_id, store, price)</code>. If a product is not available in a store, do <strong>not</strong> include a row with that <code>product_id</code> and <code>store</code> combination in the result table.</p>
#
#     <p>Return the result table in <strong>any order</strong>.</p>
#
#     <p>The query result format is in the following example.</p>
#
#     <p>&nbsp;</p>
# <p><strong>Example 1:</strong></p>
#
# <pre>
# <strong>Input:</strong>
# Products table:
# +------------+--------+--------+--------+
# | product_id | store1 | store2 | store3 |
# +------------+--------+--------+--------+
# | 0          | 95     | 100    | 105    |
# | 1          | 70     | null   | 80     |
# +------------+--------+--------+--------+
# <strong>Output:</strong>
# +------------+--------+-------+
# | product_id | store  | price |
# +------------+--------+-------+
# | 0          | store1 | 95    |
# | 0          | store2 | 100   |
# | 0          | store3 | 105   |
# | 1          | store1 | 70    |
# | 1          | store3 | 80    |
# +------------+--------+-------+
# <strong>Explanation:</strong>
# Product 0 is available in all three stores with prices 95, 100, and 105 respectively.
# Product 1 is available in store1 with price 70 and store3 with price 80. The product is not available in store2.
# </pre>
#
# <div><div>Related Topics</div><div><li>Database</li></div></div><br><div><li>👍 345</li><li>👎 16</li></div>

# There is no code of Java type for this problem
# Write your MySQL query statement below
SELECT product_id, 'store1' as store, store1 as price
FROM Products
WHERE store1 IS NOT NULL
UNION
SELECT product_id, 'store2', store2
FROM Products
WHERE store2 IS NOT NULL
UNION
SELECT product_id, 'store3', store3
FROM Products
WHERE store3 IS NOT NULL
ORDER BY product_id, price
