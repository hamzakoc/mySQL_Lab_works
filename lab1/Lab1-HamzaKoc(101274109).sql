-- This is a script file for Lab1 ( Hamza Koc)
show databases;
use ex;
show tables;
describe employees;
-- SELECT stament also called a query
-- * also called wild card 

SELECT * FROM employees;

SELECT first_name, last_name, department_number FROM employees WHERE department_number <= 6;   -- <> or != not equal

SELECT first_name, last_name, department_number 
FROM employees WHERE last_name like 'smith';  -- = not recommeded for string. But it still works

SELECT * FROM Paid_Invoices 
WHERE payment_total >=2500;

SELECT * FROM customers WHERE customer_state like 'IL';

SELECT * FROM customers ORDER BY customer_last_name desc;

