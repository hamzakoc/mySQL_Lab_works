-- HAMZA KOC 101274109

-- Q1 

use om;
SELECT CONCAT(c.customer_first_name,',',c.customer_last_name) AS CustomerName, 
o.order_id,i.title,o.order_date, od.order_qty,  i.unit_price, (order_qty*unit_price) AS TOTAL
FROM customers c, orders o, order_details od , items i
WHERE c.customer_id=o.customer_id
AND o.order_id=od.order_id
AND i.item_id=od.item_id
ORDER BY CustomerName, order_date;


-- Q2
use ap;
desc vendors;
	SELECT vendor_name, vendor_state
	FROM vendors
	WHERE vendor_state='CA'
UNION
	SELECT vendor_name, 'Outside CA'
	FROM vendors
    WHERE vendor_state <> 'CA'
    ORDER BY 1;


-- Q3

use ap;
desc vendors;

SELECT v1.vendor_id, v1.vendor_name, CONCAT(v1.vendor_contact_first_name, ' ',v1.vendor_contact_last_name) AS contact_name
FROM vendors v1 JOIN vendors v2
ON v1.vendor_id <> v2.vendor_id 
AND v1.vendor_contact_last_name=v2.vendor_contact_last_name
ORDER BY 1 DESC;







