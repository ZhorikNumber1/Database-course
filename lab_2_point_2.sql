/*
	2. Найти количество нулевых (NULL) значений веса из таблицы
	Production.Product.
*/

SELECT COUNT(*) AS "NullWeightCount"
FROM "Production"."Product"
WHERE "Weight" IS NULL;



