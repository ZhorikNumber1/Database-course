/*
	4. Показать список продуктов (ProductID), 
	которые имеют несколько скидок на единицу продукции (UnitPriceDiscount), 
	из таблицы Sales.SalesOrderDetail, используя SELF JOIN
*/

SELECT DISTINCT S1."ProductID"
FROM "Sales"."SalesOrderDetail" S1
INNER JOIN "Sales"."SalesOrderDetail" S2 
    ON S1."ProductID" = S2."ProductID" 
    AND S1."UnitPriceDiscount" > 0 
    AND S2."UnitPriceDiscount" > 0 
    AND S1."SalesOrderDetailID" != S2."SalesOrderDetailID";
