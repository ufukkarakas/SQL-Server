use Northwind

--Categories tablosundan CategoryId, CategoryName alanlar�n� getirelim.
select CategoryID,
       CategoryName
from Categories

--Employees tablosundan FirstName, LastName bilgilerini getirelim.
select FirstName,
       LastName
from Employees

--Employees tablosundan FirstName, LastName bilgilerini getirelim ve s�tunlar� T�rk�e isimlendirelim.
select FirstName as ad�,   --S�tun isimlendirirken "as" kullan�yoruz. 
       LastName as soyad�
from Employees

--Shippers tablosundan CompanyName ve Phone bilgileirni getirelim ve s�tunlar� T�rk�e isimlendirelim.
select CompanyName as [�irket Ad�], -- �simlendirmemiz iki kelime ve �st�ndeyse "[]" kullan�yoruz.
       Phone as [Telefon Numaras�]
from Shippers

--Products tablosundan, UnitPrice'� 20'den b�y�k olan �r�nleri getirelim.
select ProductID,
       ProductName,
	   UnitPrice,
	   UnitsInStock
from Products
where UnitPrice>20

--Products tablosundan ProductId, ProductName, UnitPrice, UnitInStock bilgilerini UnitInStok bilgisi 30'dan k���k olanlara g�re getirelim.
select ProductID, 
	   ProductName, 
	   UnitPrice, 
	   UnitsInStock 
from Products
where UnitsInStock < 30

--Products tablosundan stok miktar� 5 olan �r�nleri getirelim.
select ProductID,
       ProductName,
	   UnitPrice,
	   UnitsInStock
from Products
where UnitsInStock =5

--�r�nler tablosundan UnitsInStock 20 ve 40 aras�nda olan �r�nleri listeleyelim.
select ProductID,
       ProductName,
	   UnitPrice,
	   UnitsInStock
from Products
where UnitsInStock between 20 and 40

--Products tablosundan UnitPrice 20 yada 40 olan �r�nleri getirelim.
select ProductID,
       ProductName,
	   UnitPrice,
	   UnitsInStock
from Products
where UnitPrice=20 or UnitPrice=40