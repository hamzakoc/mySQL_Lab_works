
-- 1
SELECT invoice_total,
FORMAT(invoice_total,1) AS total_format,
CONVERT(invoice_total,SIGNED) AS total_convert,
CAST(invoice_total AS SIGNED) AS total_cast
FROM ap.invoices;

-- 2
SELECT invoice_date,
CAST(invoice_date AS datetime) AS invoice_datetime,
CAST(invoice_date AS char(4)) AS invoice_char4
FROM ap.invoices;


-- 3
SELECT invoice_total,
ROUND(invoice_total,1 ) as one_digit,
ROUND(invoice_total,0 ) as zero_digit_round, 
TRUNCATE(invoice_total,0) as zero_digit_truncate  
FROM ap.invoices;