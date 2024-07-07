# nested select statements to return one col and one row
# ISNULL used to return 0 when no rows are returned

SELECT(( ( (SELECT `accountbalance` FROM `accounts` WHERE accountno = 1 ) + (SELECT IFNULL((SELECT SUM(deposits.depositamount) FROM deposits WHERE deposits.depositclear IS NULL),0))) - ( (SELECT IFNULL((SELECT SUM(purchases.purchaseamount) FROM purchases WHERE purchases.purchaseclear IS NULL) ,0)) + (SELECT SUM(budgetitemsaved) FROM budgetitems) ) ) ) as TTL;