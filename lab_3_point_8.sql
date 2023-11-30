/*
	8. Показать список ProductID, которые содержатся в таблице
	Production.Product, но не содержатся в таблице Production.
	ProductDocument.
*/

SELECT P."ProductID"
FROM "Production"."Product" P
	EXCEPT
SELECT PD."ProductID"
FROM "Production"."ProductDocument" PD;