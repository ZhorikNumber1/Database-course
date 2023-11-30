/*
	5. Показать список скидок на единицу продукции (UnitPriceDiscount), 
	к которым относятся несколько продуктов (ProductID), 
	из таблицы Sales.SalesOrderDetail, используя SELF JOIN.
*/

SELECT S1."UnitPriceDiscount"
FROM "Sales"."SalesOrderDetail" S1
INNER JOIN "Sales"."SalesOrderDetail" S2 
    ON S1."UnitPriceDiscount" = S2."UnitPriceDiscount"
    AND S1."ProductID" != S2."ProductID"
    AND S1."UnitPriceDiscount" > 0
GROUP BY S1."UnitPriceDiscount"
HAVING COUNT(DISTINCT S1."ProductID") > 1;