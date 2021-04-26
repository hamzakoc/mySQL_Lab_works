
-- 1.	Invoices (ap.invoices) that have a Balance due of more than 1000 dollars with lowest to highest balance (Balance = invocie_total-payment_total-credit_total)
SELECT invoice_id, 
invoice_total - payment_total - 
credit_total as Balance   
from ap.invoices 
where invoice_total - payment_total - credit_total > 0
order by 2 desc;

-- 2.	Employee Ids and their full names as show below  (schema: ex)
select * from ex.employees;
select employee_id, concat(first_name, ', ',last_name) as FullName from ex.employees;

-- 3.	Vendor names-ordered alphabetically and their states for all vendors who reside in one of the following states (Florida, New Jersey, Wisconsin, DC)

select vendor_name, vendor_state from ap.vendors 
where vendor_state IN( 'FL', 'NJ', 'WI', 'DC')
order by 1 ;

-- 4.	All customers (schema ex) whose telephone area code is (309) {Hint: use the Left function to extract the first 5 characters of the phone number

SELECT * from ex.customers
where left(customer_phone,5) like '(309)';

-- 5.	The company provided a 20% Disocunt to its customers retrieve the invoice data with discount (0.2* invoice_total) and total due (.8*invoice_total)- round to 2 decimal places.{schema ap}


select invoice_id, invoice_date, invoice_total, round(.20*invoice_total,2) as Discount, invoice_total*.8 as TotalDue from ap.invoices;


