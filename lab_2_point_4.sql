/*
	4. Выбрать те линейки товаров (ProductLine) из таблицы Production.Product,
	где минимальная цена больше 3 (из выборки исключить пустые поля).
*/

SELECT "ProductLine"
	FROM "Production"."Product"
	WHERE "ProductLine" IS NOT NULL
	GROUP BY "ProductLine"
	HAVING MIN("ListPrice") > 3;