-- Q1
use ap;
show tables;

-- INNER JOIN/EQUI JOINT
SELECT v.vendor_name, v.vendor_id,i.invoice_id,i.invoice_date
FROM vendors v INNER JOIN invoices i
ON v.vendor_id=i.invoice_id
ORDER BY vendor_name;

-- INNER JOIN/EQUI JOINT
SELECT v.vendor_name, v.vendor_id,i.invoice_id,i.invoice_date
FROM vendors v, invoices i
WHERE v.vendor_id=i.invoice_id
ORDER BY vendor_name;

SELECT v.vendor_name, v.vendor_id,i.invoice_id,i.invoice_date
FROM vendors v NATURAL JOIN invoices i 
ORDER BY vendor_name;

-- CROSS JOIN IMPLICIT SYNTAX 
SELECT v.vendor_name, v.vendor_id,i.invoice_id,i.invoice_date
FROM vendors v CROSS JOIN invoices i 
ORDER BY vendor_name;

-- CROSS JOIN EXPLICIT SYNTAX 
SELECT v.vendor_name, v.vendor_id,i.invoice_id,i.invoice_date
FROM vendors v CROSS JOIN invoices i 
ON v.vendor_id=i.invoice_id
ORDER BY vendor_name;


-- Q2
use ex;
show tables;

SELECT e.employee_id, concat(e.first_name,", ", e.last_name) 
 as 'Employee Name', d.department_name
FROM employees e , departments d
WHERE d.department_number = e.department_number
order by 2;


-- Q3

SELECT  customers.customer_zip ZIPCODE,
concat(om.customers.customer_first_name, ", ",om.customers.customer_last_name) Customer_Name,
ap.vendors.vendor_name
FROM om.customers, ap.vendors
WHERE om.customers.customer_zip = ap.vendors.vendor_zip_code;

