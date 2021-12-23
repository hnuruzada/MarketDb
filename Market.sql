CREATE DATABASE Market--Market adinda database yaradiriq
--Foods adinda table creat edirik ve nece column olacaq onu yaziriq
CREATE TABLE Foods(
	Id int,
	[Name] nvarchar(30),
	Price int
);
--Food table`a Brand column elave edirik
ALTER TABLE Foods
ADD Brand nvarchar(50);


--Table value doldurmaq
INSERT INTO Foods(Id,[Name],Price,Brand)
VALUES (11,'Sugar',8,'Torku'),
	   (12,'Vodka',50,'Absolute'),
	   (13,'Chocolate',11,'Nutella'),
	   (14,'LiquidOil',7.50,'Mocuze'),
	   (15,'Oil',12,'Sana'),
	   (16,'Chocolate',9.50,'Chococream'),
	   (17,'Viski',75,'Chivas'),
	   (18,'Juice',4.5,'Sandora'),
	   (19,'Juice',5,'Cappy'),
	   (20,'Shampuan',21,'HeadinShoulders'),
	   (21,'Bear',6.50,'Efes'),
	   (22,'Bear',4,'Xirdalan'),
	   (23,'Meat',13,'Sheep');

--Ortalama Hesablama
select avg(price) from Foods
--Ortalamadan kicik olan Productlari Listeleyir
SELECT * from Foods where Price<(Select AVG(Price) from Foods )

--Qiymeti 10dan boyuk olan Productlari getirir
Select * from Foods where price>10

--Brand uzunlugu 5den boyuk olan Productlari listeler
Select * from Foods where len(Brand)>5
--mehsulun adi brand adi birlestirme amma brand uzulungu 5den az olanlar
select ([Name] +'=>'+Brand) as ProductInfo from Foods where len(Brand)>5

--Brand icindekileri asagidakilara gore hansi yerinde s varsa yazdirir
Select * from Foods where Brand like'%s'
Select * from Foods where Brand like'%s%'
Select * from Foods where Brand like's%'

--Name a,b,c bunlarla baslayan adlari listeler
SELECT * FROM Foods WHERE Name like'[abc]%'
--In Kullanimi
SELECT * FROM Foods WHERE Name IN('Bear','Juice')
