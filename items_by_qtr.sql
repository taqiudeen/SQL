
#items ordered per qtr

SELECT QUARTER(orders.oDate) as QTR , COUNT(invoices.PartNo) as TotalItems
FROM orders
JOIN invoices ON invoices.OID = orders.OID
GROUP BY QTR;

-- QTR	TotalItems	
-- #1 		507
-- #2		553
-- #3		553
-- #4		503

-- #items ordered per qtr

-- checking results

-- SELECT orders.oDate, COUNT(invoices.PartNo) as TotalItems
-- FROM orders
-- JOIN invoices ON invoices.OID = orders.OID
-- WHERE orders.oDate >= "2024-01-01" AND orders.oDate <= "2024-03-31"