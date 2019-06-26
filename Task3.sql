
SELECT MIN(p.Price) FROM [dbo].[Products] p WHERE p.Name like '%CPU%'
SELECT AVG(p.Price) FROM [dbo].[Products] p WHERE p.Name = 'Monitor'
SELECT COUNT(*) FROM [dbo].[Products] p WHERE p.Name like '%drive%' and p.Price between 30 and 50
SELECT SUM(p.Price) FROM [dbo].[Products] p WHERE p.Name = 'Memory'
SELECT MIN(p.Price) FROM [dbo].[Products] p WHERE p.Name = 'Printer'
SELECT COUNT(*) FROM [dbo].[Products] p WHERE p.Name not like '%s%' and p.Name like '%e'
SELECT MAX(p.Price) FROM [dbo].[Products] p WHERE p.Name != 'SSD Drive' and p.Name like '%drive'
SELECT COUNT(*) FROM [dbo].[Products] p WHERE p.Name != 'Monitor'
SELECT AVG(p.Price) FROM [dbo].[Products] p WHERE p.Price > 100
SELECT COUNT(*) FROM [dbo].[Products] p WHERE p.Name not like '%s%' and p.Name not like '%j%' and p.Name like '% %'




SELECT YEAR(e.EventDate) ,COUNT(*) FROM Event e
GROUP BY YEAR(e.EventDate)
ORDER BY 2 DESC

SELECT c.CountryName,COUNT(*) FROM Event e
JOIN Country c on e.CountryID = c.CountryID
WHERE YEAR(e.EventDate) BETWEEN 1901 and 2000 
GROUP BY c.CountryName
ORDER BY c.CountryName

SELECT co.ContinentName,COUNT(*) FROM Country c
JOIN Continent co on co.ContinentID = c.ContinentID
GROUP BY co.ContinentName

SELECT c.CountryName,YEAR(e.EventDate),COUNT(*) FROM Event e
JOIN Country c on e.CountryID = c.CountryID
WHERE c.CountryName in ('Germany', 'France', 'Spain')
GROUP BY c.CountryName, YEAR(e.EventDate)
ORDER BY 2