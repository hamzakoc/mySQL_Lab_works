-- CROSS JOIN
SELECT vendors.vendor_id, vendor_name,
invoice_id,  invoice_date
FROM vendors ,  invoices;

-- NATURAL JOIN

SELECT vendors.vendor_id, vendor_name,
invoice_id,  invoice_date
FROM vendors NATURAL JOIN  invoices;

-- INNER JOIN/EQUI JOIN  table alias
SELECT v.vendor_id, v.vendor_name,
i.invoice_id,  i.invoice_date
FROM vendors v ,  invoices i
WHERE v.VENDOR_ID = i.VENDOR_ID;

-- INNER JOIN
SELECT v.vendor_name,v.vendor_id, 
i.invoice_id,  i.invoice_date
FROM vendors v INNER JOIN  invoices i
ON v.VENDOR_ID = i.VENDOR_ID
ORDER BY 1 ;

-- schema ex
use ex;

SELECT e.employee_id, concat(e.first_name,", ", e.last_name) 
 as 'Employee Name', d.department_name
FROM employees e , departments d
WHERE d.department_number = e.department_number
order by 2;

-- vendors(ap) and customers(om) who live in same zipcode
SELECT  customers.customer_zip ZIPCODE,
concat(om.customers.customer_first_name, ", ",om.customers.customer_last_name) Customer_Name,
ap.vendors.vendor_name
FROM om.customers, ap.vendors
WHERE om.customers.customer_zip = ap.vendors.vendor_zip_code;




