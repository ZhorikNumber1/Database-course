/*
	9. Показать поля ProductID, AverageLeadTime, StandardPrice Purchasing.ProductVendor, 
	используя вместо названия таблицы псевдоним 'p'. 
	Отсортировать все строки в алфавитном порядке в соответствии с полем StandardPrice.
*/

SELECT p."ProductID", p."AverageLeadTime", p."StandardPrice"
FROM "Purchasing"."ProductVendor" AS p
ORDER BY p."StandardPrice" ASC;

