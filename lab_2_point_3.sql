/*
	3. Найти количество номеров телефона разного типа (PhoneNumberTypeID) из
	таблицы Person.PersonPhone, где в номере телефона первые три цифры
	совпадают с последними тремя.
*/

SELECT "PhoneNumberTypeID", COUNT(*) AS "PhoneTypeCount"
FROM "Person"."PersonPhone"
WHERE LEFT("PhoneNumber", 3) = RIGHT("PhoneNumber", 3)
GROUP BY "PhoneNumberTypeID";




