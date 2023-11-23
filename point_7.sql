/*
	7 + 10. Из таблицы Production.Document показать поля DocumentNode, Title и FileExtension. 
	Все пустые значения поля FileExtension заменить на NULL, а затем все NULL этого же поля заменить на '.txt'. 
	Названия полей оставить без изменений.
*/

SELECT "DocumentNode", "Title", "FileExtension"
FROM "Production"."Document";

UPDATE "Production"."Document"
SET "FileExtension" = null
WHERE "FileExtension" = '';

UPDATE "Production"."Document"
SET "FileExtension" = '.txt'
WHERE "FileExtension" IS NULL;

SELECT "DocumentNode", "Title", "FileExtension"
FROM "Production"."Document";
