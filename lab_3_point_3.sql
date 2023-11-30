/*
	3. Показать список людей (поля FirstName, LastName), 
	в котором указано, имеется ли логин идентификатор (LoginID) или нет, из таблиц 
	HumanResources.Employee, 
	Person.Person, используя RIGHT OUTER JOIN
*/

SELECT P."FirstName", P."LastName", 
       CASE WHEN E."LoginID" IS NOT NULL THEN 'Есть' ELSE 'Нет' END as "HasLoginID"
FROM "HumanResources"."Employee" E
RIGHT OUTER JOIN "Person"."Person" P ON E."BusinessEntityID" = P."BusinessEntityID"
WHERE P."BusinessEntityID" IS NOT NULL;
