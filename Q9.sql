Q9. From the following tables write a SQL query to find those customers with a grade less than 300. Return cust_name, customer city, grade, Salesman, salesmancity. The result should be ordered by ascending customer_id.

Sample table: customer

 customer_id |   cust_name    |    city    | grade | salesman_id 
-------------+----------------+------------+-------+-------------
        3002 | Nick Rimando   | New York   |   100 |        5001
        3007 | Brad Davis     | New York   |   200 |        5001
        3005 | Graham Zusi    | California |   200 |        5002
        3008 | Julian Green   | London     |   300 |        5002
        3004 | Fabian Johnson | Paris      |   300 |        5006
        3009 | Geoff Cameron  | Berlin     |   100 |        5003
        3003 | Jozy Altidor   | Moscow     |   200 |        5007
        3001 | Brad Guzan     | London     |       |        5005

Sample table: salesman

 salesman_id |    name    |   city   | commission 
-------------+------------+----------+------------
        5001 | James Hoog | New York |       0.15
        5002 | Nail Knite | Paris    |       0.13
        5005 | Pit Alex   | London   |       0.11
        5006 | Mc Lyon    | Paris    |       0.14
        5007 | Paul Adam  | Rome     |       0.13
        5003 | Lauson Hen | San Jose |       0.12

Solution : 

1. SELECT a.cust_name,a.city,a.grade, 
b.name AS "Salesman", b.city 
FROM customer a 
LEFT OUTER JOIN salesman b 
ON a.salesman_id=b.salesman_id 
WHERE a.grade<300 
ORDER BY a.customer_id;

2. select a.cust_name as "Customer",a.city as "Customer City",a.grade,b.name,b.city as "Salesman city" from customer a LEFT JOIN salesman b ON a.salesman_id = b.salesman_id
where a.grade < 300 order by a.customer_id
