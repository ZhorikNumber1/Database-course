/*
	1. Показать номера аккаунтов (AcountNumber) и поля FirstName, 
	LastName из таблиц Person.Person, Sales.Customers
*/

SELECT C."AccountNumber", P."FirstName", P."LastName"
FROM "Person"."Person" P
JOIN "Sales"."Customer" C ON P."BusinessEntityID" = C."CustomerID";







