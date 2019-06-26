select COUNT(*) FROM Sales s
WHERE s.VehicleId in
(
    select v.VehicleId from Vehicles v
    WHERE v.BodyStyleId in
    (
        select b.BodyStyleId from VehicleBodyStyles b
        WHERE b.[Description] = 'hatchback'
    )
)

SELECT a.Make, a.Model, a.Price from Vehicles a
WHERE a.Price = 
(
    select max(v.Price) FROM Vehicles v
)


select a.make, a.model FROM Vehicles a
WHERE a.BodyStyleId in
(
    select b.BodyStyleId from VehicleBodyStyles b
    WHERE b.Description = 'sedan'
)


SELECT c.FirstName, c.LastName from Customers c
WHERE c.CustomerId in
(
    select s.CustomerId from Sales s
    WHERE s.SaleDate in 
    (
        select MIN(sa.saledate) from Sales sa
    )
)

SELECT COUNT(*) , YEAR(s.saledate) FROM Sales s
GROUP BY YEAR(s.SaleDate)

select a.Model, a.Year from Vehicles a
WHERE a.Price = 
(
    select min(v.Price) from Vehicles v
    WHERE v.Make  = 'BMW'
)



select COUNT(*) FROM Sales sa 
WHERE sa.SalesPersonId in
(
    select sp.SalesPersonId from SalesPeople sp
    WHERE sp.FirstName = 'Jeff' AND sp.LastName = 'Paulson'
)

and YEAR(sa.SaleDate) = 2016 and MONTH(sa.SaleDate) BETWEEN 6 and 12


SELECT v.Make, v. Model  from vehicles v
WHERE v.Price > 200 
(
    select AVG(Price) from Vehicles 
)
SELECT COUNT(*) FROM Sales a 
WHERE a.SalesPersonId in
(
    select s.SalesPersonId from SalesPeople s
    WHERE s.FirstName = 'Paul' and s.LastName = 'Hill'
)
and YEAR(s.SaleDate) = 2017 and MONTH(s.SaleDate) BETWEEN 1 and 6