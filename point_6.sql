/*
	6. Из таблицы Production.ProductModel показать ID модели товара (ProductModelID), 
	наименование товара (Name) и дата модификации продукта ModifiedDate. 
	Показать только те товары, у которых в названии содержится слово «перчатки» ('Gloves').
*/
SELECT "ScrapReasonID", "Name"
FROM "Production"."ScrapReason"
WHERE "Name" IN ('Color incorrect','Drill size too large','Drill size too small','Paint process failed');