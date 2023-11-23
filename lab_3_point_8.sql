/*
	8. Показать список ProductID, которые содержатся в таблице
	Production.Product, но не содержатся в таблице Production.
	ProductDocument.
*/

SELECT P."ProductID"
FROM "Production"."Product" P
WHERE NOT EXISTS (
    SELECT 1
    FROM "Production"."ProductDocument" PD
    WHERE P."ProductID" = PD."ProductID"
);












