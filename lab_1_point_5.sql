/*
  	5. Из таблицы Production.ProductModel 
	показать ID модели товара (ProductModelID), 
	наименование товара (Name) и дата модификации 
	продукта ModifiedDate. Показать только те товары, 
	у которых в названии содержится слово «перчатки» ('Gloves').
*/

SELECT "ProductModelID", "Name", "ModifiedDate"
FROM "Production"."ProductModel"
WHERE "Name" LIKE '%Gloves%';