-- Hamza KOC 101274109

-- Q1
use ap;
SELECT 
	COUNT(payment_total) AS No_of_Payments, -- COUNT(*) AS No_of_Payments
	SUM(payment_total) AS Total_Payment_Amount, 
	AVG(payment_total) AS AvarageAmaount, 
	MIN(payment_total) AS MinimumPayment,
	MAX(payment_total) AS MaximumPayment
FROM invoices 
WHERE payment_total > 0;


-- Q2
SELECT vendor_state, COUNT(DISTINCT i.vendor_id) TotalVendors, SUM(payment_total) TotalPayments
FROM vendors v INNER JOIN invoices i
ON v.vendor_id=i.vendor_id
GROUP BY vendor_state
ORDER bY vendor_state;

-- Q3
use om;
SELECT order_date OrderDate, COUNT(DISTINCT o.order_id) AS "Number of Orders Placed",
SUM(od.order_qty*i.unit_price) TotalSales
FROM orders o, order_details od, items i
WHERE o.order_id=od.order_id
AND od.item_id=i.item_id
GROUP BY order_date
HAVING COUNT(DISTINCT o.order_id)>1
ORDER BY 1 ;

-- Q4
use ex;
SELECT IFNULL(d.department_name,'TOTAL'), COUNT(e.employee_id) "Number oF Employees"
FROM departments d, employees e
WHERE d.department_number=e.department_number
GROUP BY d.department_name WITH ROLLUP
ORDER BY 1;





