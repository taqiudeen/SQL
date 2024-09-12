SELECT COUNT(orders.OID) as TTL, zip.state
FROM orders
JOIN customers ON customers.CustID = orders.CustID
JOIN zip ON zip.zipcode = customers.Zip
GROUP BY zip.state
ORDER BY zip.state