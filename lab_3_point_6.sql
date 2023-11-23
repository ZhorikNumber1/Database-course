/*
	6. Показать подкатегории продуктов (ProductSubcategoryID из таблицы Production.Product), 
	которые имеют несколько цветов, начинающихся на «B», используя SELF JOIN
*/

SELECT P."ProductSubcategoryID"
FROM "Production"."Product" AS P
	INNER JOIN "Production"."Product" AS P2
	ON P."ProductSubcategoryID" = P2."ProductSubcategoryID"
	AND SUBSTRING(P."Color", 1, 1) = 'B'
	AND SUBSTRING(P2."Color", 1, 1) = 'B'
	AND P."Color" <> P2."Color"
GROUP BY P."ProductSubcategoryID"
HAVING COUNT(DISTINCT P."Color") > 1;

/*
SELECT P1."ProductSubcategoryID"
FROM "Production"."Product" P1
INNER JOIN "Production"."Product" P2 ON P1."ProductID" = P2."ProductID" 
	AND P1."Color" LIKE 'B%' 
	AND P2."Color" LIKE 'B%'
	AND P1."Color" <> P2."Color"
GROUP BY P1."ProductSubcategoryID"
HAVING COUNT(DISTINCT P1."Color") > 1; 
*/









