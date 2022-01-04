use Northwind

--Categories tablosundan CategoryId, CategoryName alanlarýný getirelim.
select CategoryID,
       CategoryName
from Categories

--Employees tablosundan FirstName, LastName bilgilerini getirelim.
select FirstName,
       LastName
from Employees

--Employees tablosundan FirstName, LastName bilgilerini getirelim ve sütunlarý Türkçe isimlendirelim.
select FirstName as adý,   --Sütun isimlendirirken "as" kullanýyoruz. 
       LastName as soyadý
from Employees

--Shippers tablosundan CompanyName ve Phone bilgileirni getirelim ve sütunlarý Türkçe isimlendirelim.
select CompanyName as [Þirket Adý], -- Ýsimlendirmemiz iki kelime ve üstündeyse "[]" kullanýyoruz.
       Phone as [Telefon Numarasý]
from Shippers

--Products tablosundan, UnitPrice'ý 20'den büyük olan ürünleri getirelim.
select ProductID,
       ProductName,
	   UnitPrice,
	   UnitsInStock
from Products
where UnitPrice>20

--Products tablosundan ProductId, ProductName, UnitPrice, UnitInStock bilgilerini UnitInStok bilgisi 30'dan küçük olanlara göre getirelim.
select ProductID, 
	   ProductName, 
	   UnitPrice, 
	   UnitsInStock 
from Products
where UnitsInStock < 30

--Products tablosundan stok miktarý 5 olan ürünleri getirelim.
select ProductID,
       ProductName,
	   UnitPrice,
	   UnitsInStock
from Products
where UnitsInStock =5

--Ürünler tablosundan UnitsInStock 20 ve 40 arasýnda olan ürünleri listeleyelim.
select ProductID,
       ProductName,
	   UnitPrice,
	   UnitsInStock
from Products
where UnitsInStock between 20 and 40

--Products tablosundan UnitPrice 20 yada 40 olan ürünleri getirelim.
select ProductID,
       ProductName,
	   UnitPrice,
	   UnitsInStock
from Products
where UnitPrice=20 or UnitPrice=40