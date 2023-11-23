/*
	4. Выбрать те линейки товаров (ProductLine) из таблицы Production.Product,
	где минимальная цена больше 3 (из выборки исключить пустые поля).
*/

SELECT "ProductLine"
FROM "Production"."Product"
WHERE "ListPrice" > 3 AND "ListPrice" IS NOT NULL AND "ProductLine" IS NOT NULL;





