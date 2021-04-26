
-- Q1
SELECT start_date, 
DATE_FORMAT(start_date, '%b/%d/%y') AS format1,
DATE_FORMAT(start_date, '%c/%d/%y') AS format2,
TIME_FORMAt(start_date, '%r') AS twelve_hour
FROM ex.date_sample
WHERE DATE_FORMAT(start_date, '%m/%d/%y');


-- Q2
use ap;
show tables;
SELECT 
invoice_number,
invoice_date,
DATE_ADD(invoice_date, INTERVAL 30 DAY) AS date_plus_30_days,
payment_date,
DATEDIFF(payment_date,invoice_date) AS days_to_pay,
EXTRACT(MONTH FROM invoice_date) AS month,
EXTRACT(YEAR FROM invoice_date) AS year
FROM invoices
WHERE DATE_FORMAT(invoice_date, '%M') = 'may';


-- Q3
use ex;
show tables;
SELECT emp_name,
REGEXP_SUBSTR(emp_name, '[A-Z]*') AS first_name,
REGEXP_SUBSTR(emp_name, ' (.*)') AS last_name
FROM string_sample;


-- Q4 
SELECT
invoice_number, 
(invoice_total-payment_total-credit_total)  as balance_due,
DENSE_RANK() OVER (ORDER BY (payment_total-invoice_total-credit_total)) as balance_rank
FROM ap.invoices 
WHERE (invoice_total-payment_total-credit_total) > 0 
ORDER BY (invoice_total-payment_total) DESC  ;



