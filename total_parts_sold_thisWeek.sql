SELECT orders.oDate, COUNT(invoices.partno) as ttl
FROM invoices
JOIN orders ON invoices.OID = orders.OID  
WHERE orders.oDate >= CURRENT_DATE() - 7 AND orders.oDate < CURRENT_DATE() + 1
GROUP BY orders.oDate;