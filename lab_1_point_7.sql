/*
	7 + 10. Из таблицы Production.Document показать поля DocumentNode, Title и FileExtension. 
	Все пустые значения поля FileExtension заменить на заменить на '.txt'. 
	Названия полей оставить без изменений.
*/

SELECT "DocumentNode", "Title", COALESCE("FileExtension", '.txt') AS "FileExtension"
FROM "Production"."Document";
