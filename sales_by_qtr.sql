

-- total sales by Quarter

SELECT QUARTER(orders.oDate) as QTR,  SUM(parts.Price) as Total 
FROM invoices
JOIN parts ON parts.PartNo = invoices.PartNo
JOIN orders ON orders.OID = invoices.OID
GROUP BY QTR;

-- QTR		Total	
-- 1 		6904.27
-- 2		7647.32
-- 3 		7683.67
-- 4 		6954.63


-- check resluts for Q1

SELECT orders.oDate,  SUM(parts.Price) as Total 
FROM invoices
JOIN parts ON parts.PartNo = invoices.PartNo
JOIN orders ON orders.OID = invoices.OID
WHERE orders.oDate >= "2024-01-01" AND orders.oDate <= "2024-03-31";

-- oDate 			Total
-- 2024-01-01 		6904.27
