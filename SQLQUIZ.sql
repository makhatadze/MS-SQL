
select d.Name, c.Credits, min(c.Credits), max(c.Credits) from dbo.Department d join dbo.Course c on d.DepartmentID=c.DepartmentID
where (d.Name= 'Economics')
group by d.Name, c.Credits

select p.FirstName, (Sum(s.Grade)/count(s.Grade)) from dbo.Person p join dbo.Department d on p.PersonID=d.DepartmentID join dbo.StudentGrade s on p.PersonID=s.StudentID
where (d.StartDate='2003')
group by p.FirstName

select c.Name, count(p.EnrollmentDate) from dbo.Country c join dbo.City co on c.CountryId=co.CountryId join dbo.Person p on p.CityId=co.CityId
where p.EnrollmentDate is Not NULL and (c.Name='USA' or c.Name='Canada')
group by c.Name, co.Name , p.HireDate


select d.Name, c.Title, COUNT(c.Title)  from dbo.Department d join dbo.Course c on d.DepartmentID=c.DepartmentID
group by d.Name, c.Title
select co.Name, c.Name ,count(c.Name) from dbo.City c join dbo.Country co on c.CountryId=co.CountryId
where co.Name='Canada' or co.Name='Costa Rica' or co.Name='USA' or co.Name='Bahamas'
group by co.Name,c.Name

select c.Name, p.FirstName, count(p.FirstName) from dbo.City c join dbo.Person p on c.CityId=p.CityId 
group by c.Name, p.FirstName
having count(p.Firstname)>2
order by p.FirstName desc




--1
--select s.Lastname, s.Firstname, s.PrivateId from dbo.Persons s where s.Lastname like 'h%'
--2
--select s.City from dbo.Persons s where s.Country in ('Germany' , 'Canada') 
--3
--select * from dbo.Persons s where s.Country in ('Spain' , 'Switzerland')
--4
--select * from dbo.Persons s where s.Email like  '' >2
--5
--select * from dbo.Persons s where s.Country='Spain' and s.Salary between 2000 and 4000
--6
--select * from dbo.Persons s where s.Email is null
--7
--select * from dbo.Persons s where ((s.PINcode like '4%' or  s.Pincode like '5%') or s.Pincode like '6%' )and s.Pincode like '%0'
--8
--select s.Lastname, s.Firstname , s.Country, s.City, s.Salary+ (s.Salary/100)*20 from dbo.Persons s where s.Country in ('Bulgaria' , 'Denmark') and   s.Salary order by



select o.ContactTitle from dbo.Orders o where o.ShipCountry='USA' and LEFT(o.Lastname,1)='s'; 

select o.ShipAddress from dbo.Orders o where RIGHT(o.ShipAddress,1)='.';





select p.product_name,p.list_price from [production].[products] p where p.category_id=
(select c.category_id from [production].[categories] c 
 where c.category_name='Mountain Bikes') and p.list_price=(select min(pe.list_price) from [production].[products] pe)
 
 
 select count(c.order_id) from [sales].[orders] c where c.staff_id=(select s.staff_id from [sales].[staffs] s where s.first_name='layla'
 and s.last_name='Terrell') and (Year(c.order_date)='2017' and (MONTH(c.order_date)>02 and MONTH(c.order_date) <7))
  
 select p.product_name, list_price  from [production].[products] p 
 where p.list_price>(select avg(pe.list_price) from [production].[products] pe where pe.product_name like in  %Electra%)
 
 select p.product_name,p.list_price from [production].[products] p 
 where p.list_price in (select max(pe.list_price) from [production].[products] pe)
 
 select Count(o.order_id) from [sales].[orders] o where 
 o.customer_id=(select s.customer_id from [sales].[customers] s  where
 s.first_name='Aleta' and s.last_name='Shepard' )
 
 




delete from [dbo].[StudentGrade]
 where EnrollmentID=(select EnrollmentID from [dbo].[StudentGrade] 
  where CourseID=1061 and StudentID=25)

insert into [dbo].[City] (Name,CountryId)
 values ('Edison',(select CountryId from [dbo].[Country] where Name='USA'))

insert into [dbo].[Department] (Name,Budget,StartDate)
 values ('IT',(select Avg(Budget) from [dbo].[Department]),getDate())

delete from [dbo].[Country] where CountryId=(select CountryId from [dbo].[Country]
 where CountryId is Null)

insert into [dbo].[Person] (FirstName,LastName,EnrollmentDate) 
values ('John', 'Barfield',Sysdatetime(yyyy,mm-2,dd))

update [dbo].[Department] set Budget=(select (Budget*1.07) from [dbo].[Department]
 where Name='Engineering' and Name='Mathematics')

update [dbo].[Department] set PersonId=(select PersonId from [dbo].[Person]
 where FirstName='Roger' and LastName='Harui')
