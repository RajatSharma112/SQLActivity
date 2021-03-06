Select * from Rajat_Activities.orders where salesman_id= (Select Distinct salesman_id from Rajat_Activities.orders where customer_id= 3007);

Select * from Rajat_Activities.orders where salesman_id In (Select salesman_id from Rajat_Activities.salesman where city= 'New York');

Select  grade, count(*) from Rajat_Activities.customers GROUP BY grade HAVING grade> (Select avg(grade) from Rajat_Activities.customers where city= 'New York');

SELECT order_no, purchase_amount, order_date, salesman_id FROM Rajat_Activities.orders
WHERE salesman_id IN( SELECT salesman_id FROM Rajat_Activities.salesman
WHERE commission=( SELECT MAX(commission) FROM Rajat_Activities.salesman));

