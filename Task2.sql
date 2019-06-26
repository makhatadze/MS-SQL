SELECT REPLICATE(c.ContinentName + ',', 2) FROM Continent c 
	WHERE LEFT(c.ContinentName, 1) = 'a' and RIGHT(c.ContinentName, 1) != 'a'


SELECT UPPER(c.CountryName) FROM Country c  WHERE c.ContinentID BETWEEN 2 and 5

SELECT LOWER(c.CountryName) FROM Country c WHERE CountryName like '% %'

SELECT * from event c WHERE c.EventName not like '%war%' and YEAR(c.EventDate) >= 2000

SELECT c.EventName, c.eventDetails, c.eventdate FROM Event c WHERE EventDate like '%01-01'

