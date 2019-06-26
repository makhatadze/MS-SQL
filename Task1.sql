 გამოიტანეთ ვერცხლისფერი ავტომობილების მონაცემები;
2. გამოიტანეთ 2014 წლის შემდეგ გამოშვებული ავტომობილების მონაცემები;
3. გამოიტანეთ ავტომობილები, რომელთა მწარმოებლის სახელწოდება იწყება C სიმბოლოზე;
Select * from [dbo].[Cars] where Color='Silver'
Select * from [dbo].[Cars] where DateAquired Between '2014' and '2019'
Select * from [dbo].[Cars] where Model like 'C%'
Select * from [dbo].[Cars] where Milage Between '70000' and '80000'
select * from [dbo].[Cars] where Transmission='Automatic' and BodyStyle='Sedan'
Select * from [dbo].[Cars] where Make in ('Hyundai','Kia') and DateAquired between '2010' and '2015'
Select * From [dbo].[Cars] where Milage='0' and Transmission='Manual'
select Make, Model, Milage from [dbo].[Cars] where DealerPrice<15000 and Milage<100000
select Make,Model,Color from [dbo].[Cars] where Make like 'c%' and (Model like 'a%' or Model like 'e%')
select * from [dbo].[Cars] where Make in('Ford') and (Color in('Black') or Color in('Silver')) 
