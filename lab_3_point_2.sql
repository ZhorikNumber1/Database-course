/*
	2. Показать список продуктов (поле Name), в котором указано, 
	есть ли у продукта единицы измерения веса или нет, 
	из таблиц Production.Product, Production.UnitMeasure, используя LEFT OUTER JOIN
*/

SELECT P."Name", CASE WHEN UM."UnitMeasureCode" IS NOT NULL THEN 'Есть' ELSE 'Нет' END as "IsWeightUnit"
FROM "Production"."Product" P
LEFT OUTER JOIN "Production"."UnitMeasure" UM ON P."WeightUnitMeasureCode" = UM."UnitMeasureCode"
WHERE P."WeightUnitMeasureCode" IS NOT NULL;