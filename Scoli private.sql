-- ex1 Redacteaza instructiunile SQL care sa realizeze:
--a. Creare baza de date ScoalaPrimaraPrivata
--b. Crearea tabelelor din descriere. Utilizeaza Primary Key, Foreign Key, NULL, NOT NULL si alte
--constrangeri.
--c. Inserarea a cel putin 5 linii tabelele PROGRAM, INVATATOR, SALA si 40 de linii in ELEV si
--CLASA. Ai nevoie de informatii cat mai variate a.i. exercitiile urmatoare sa aiba rezultate.

create database Scoli_private;
use Scoli_private; 

create table Scoala(
ID int primary key not null,
Denumire nvarchar(50),
NrClase int
)

create table Program(
ID int primary key not null,
Denumire nvarchar(50),
H_zi int,
Pret int
)

create table Clasa(
ID int primary key not null,
AnScolar nvarchar(10),
Denumire nvarchar(10)
)

create table Elev(
ID int primary key not null,
IdScoala int not null,
foreign key(IdScoala) references Scoala(ID),
IdProgram int,
foreign key (IdProgram) references Program(ID),
IdClasa int,
foreign key (IdClasa) references Clasa(ID),
Nume nvarchar(50),
DataNasterii date,
Varsta int,
DataInmatriculare date,
NumeParinte nvarchar(50),
NrTelefon int,
Activ bit
)


create table Sala(
ID int primary key not null,
IdScoala int,
foreign key (IdScoala) references Scoala(ID),
Nivel tinyint,
NrSala tinyint, 
NrBanci tinyint,
IdGrupa int
)


create table Invatator(
ID int primary key not null,
IdScoala int not null,
foreign key(IdScoala) references Scoala(ID),
Nume nvarchar(50),
IdClasa int not null,
foreign key (IdClasa) references Clasa(ID) 
)


insert into Scoala values 
(1,'Independenta',2)

insert into Program values
(1,'Lung',5,60), 
(2,'Normal',4,50),
(3,'Scurt',3,30),
(4,'Optional',2,20),
(5,'Extra',1,10)

insert into Clasa(ID,AnScolar,Denumire) values
(1,'I','I-1'),
(2,'I','I-2'),
(3,'I','I-3'),
(4,'I','I-4'),
(5,'I','I-5'),
(6,'I','I-6'),
(7,'I','I-7'),
(8,'I','I-8'),
(9,'I','I-9'),
(10,'I','I-10'),
(11,'II','II-1'),
(12,'II','II-2'),
(13,'II','II-3'),
(14,'II','II-4'),
(15,'II','II-5'),
(16,'II','II-6'),
(17,'II','II-7'),
(18,'II','II-8'),
(19,'II','II-9'),
(20,'II','II-10'),
(21,'III','III-1'),
(22,'III','III-2'),
(23,'III','III-3'),
(24,'III','III-4'),
(25,'III','III-5'),
(26,'III','III-6'),
(27,'III','III-7'),
(28,'III','III-8'),
(29,'III','III-9'),
(30,'III','III-10'),
(31,'IV','IV-1'),
(32,'IV','IV-2'),
(33,'IV','IV-3'),
(34,'IV','IV-4'),
(35,'IV','IV-5'),
(36,'IV','IV-6'),
(37,'IV','IV-7'),
(38,'IV','IV-8'),
(39,'IV','IV-9'),
(40,'IV','IV-10')

insert into Invatator values
(1,1,'Popescu',1),
(2,1,'Dana',2),
(3,1,'Gogu',3),
(4,1,'Diana',4),
(5,1,'Maria',5)

insert into Sala values
(1,1,1,101,20,1),
(2,1,1,102,20,1),
(3,1,2,201,20,1),
(4,1,2,202,20,1),
(5,1,2,203,20,2),
(6,1,1,101,10,2)



insert into Elev values
(1,1,1,1,'Huidu','2009-1-1',9,'2018-10-1','Anca','0766666666',1),
(2,1,2,1,'Victor','2009-1-2',9,'2018-10-1','Andrei','0766666666',1),
(3,1,3,2,'Vlad','2009-1-3',9,'2018-10-3','Alice','0766666666',1),
(4,1,4,2,'Zamfir','2009-1-4',9,'2018-10-2','Camelia','0766666666',1),
(5,1,5,3,'Paul','2009-1-5',9,'2018-10-2','Raluca','0766666666',1),
(6,1,1,3,'Piciu','2009-1-6',9,'2018-10-2','Sandu','0766666666',1),
(7,1,2,4,'Dan','2009-1-7',9,'2018-10-2','Cosmin','0766666666',1),
(8,1,3,4,'Fraitor','2009-1-8',9,'2018-10-2','Dan','0766666666',1),
(9,1,4,5,'Andreea','2009-1-9',9,'2018-10-2','Rares','0766666666',1),
(10,1,5,5,'Vivian','2009-1-10',9,'2018-10-2','Vlad','0766666666',1),
(11,1,1,6,'Ramona','2009-1-11',9,'2018-10-2','Flavius','0766666666',1),
(12,1,2,6,'Rares','2009-1-12',9,'2018-10-2','Ana','0766666666',1),
(13,1,3,7,'Tudor','2009-1-13',9,'2018-10-2','Anastasia','0766666666',1),
(14,1,4,7,'Titel','2009-1-14',9,'2018-10-2','Amelia','0766666666',1),
(15,1,5,8,'Tibi','2009-1-15',9,'2018-10-2','Alexandra','0766666666',1),
(16,1,1,8,'Tiberius','2009-1-16',9,'2018-10-2','Alexia','0766666666',1),
(17,1,2,9,'Carol','2009-1-17',9,'2018-10-2','Bianca','0766666666',1),
(18,1,3,9,'Carlos','2009-1-18',9,'2018-10-2','Bogdan','0766666666',1),
(19,1,4,10,'Camelia','2009-1-19',9,'2018-10-2','Beica','0766666666',1),
(20,1,5,10,'Nicu','2009-1-20',9,'2018-10-2','Bora','0766666666',1),
(21,1,1,11,'Narcis','2008-1-21',10,'2018-10-2','Bob','0766666666',1),
(22,1,2,11,'Oana','2008-1-22',10,'2018-10-2','Cornel','0766666666',1),
(23,1,3,12,'Ovi','2008-1-23',10,'2018-10-2','Carlos','0766666666',1),
(24,1,4,12,'Luca','2008-1-24',10,'2018-10-2','Claudiu','0766666666',1),
(25,1,5,13,'Marcu','2008-1-25',10,'2018-10-2','Constantin','0766666666',1),
(26,1,1,13,'Ioan','2008-1-26',10,'2018-10-2','Elena','0766666666',1),
(27,1,2,14,'Amelia','2008-1-27',10,'2018-10-2','Constantina','0766666666',1),
(28,1,3,14,'Ana','2008-1-28',10,'2018-10-2','Calin','0766666666',1),
(29,1,4,15,'Stefania','2008-1-29',10,'2018-10-2','Codin','0766666666',1),
(30,1,5,15,'Stefan','2008-1-30',10,'2018-10-2','Critu','0766666666',1),
(31,1,1,16,'Traian','2008-1-31',10,'2018-10-2','Cristian','0766666666',1),
(32,1,2,16,'Carmen','2008-2-1',10,'2018-10-2','Dan','0766666666',1),
(33,1,3,17,'Emilia','2008-2-2',10,'2018-10-2','Denisa','0766666666',1),
(34,1,4,17,'Florentina','2008-2-3',10,'2018-10-2','Dana','0766666666',1),
(35,1,5,18,'Florenta','2008-2-4',10,'2018-10-2','Doru','0766666666',1),
(36,1,1,18,'Felicia','2008-2-5',10,'2018-10-2','Dubre','0766666666',1),
(37,1,2,19,'Geta','2008-2-6',10,'2018-10-2','Dorin','0766666666',1),
(38,1,3,19,'Georgiana','2008-2-7',10,'2018-10-2','Dinca','0766666666',1),
(39,1,4,20,'Ina','2008-2-8',10,'2018-10-2','Delia','0766666666',1),
(40,1,5,20,'Iulia','2008-2-9',10,'2018-10-2','Daniel','0766666666',1),
(41,1,1,21,'Ion','2007-2-10',11,'2018-10-2','Didi','0766666666',1),
(42,1,2,21,'Ilona','2007-2-11',11,'2018-10-2','Elena','0766666666',1),
(43,1,3,22,'Ieana','2007-2-12',11,'2018-10-2','Eduard','0766666666',1),
(44,1,4,22,'Livia','2007-2-13',11,'2018-10-2','Eric','0766666666',1),
(45,1,5,23,'Laura','2007-2-14',11,'2018-10-2','Emil','0766666666',1),
(46,1,1,23,'Loredana','2007-2-15',11,'2018-10-2','Augustin','0766666666',1),
(47,1,2,24,'Luiza','2007-2-16',11,'2018-10-2','Ene','0766666666',1),
(48,1,3,24,'Olga','2007-2-17',11,'2018-10-2','Gogu','0766666666',1),
(49,1,4,25,'Oana','2007-2-18',11,'2018-10-2','Gabi','0766666666',1),
(50,1,5,25,'Carol','2007-2-19',11,'2018-10-2','Ghita','0766666666',1),
(51,1,1,26,'Cornel','2007-2-20',11,'2018-10-2','Gherghe','0766666666',1),
(52,1,2,26,'Casian','2007-2-21',11,'2018-10-2','Ion','0766666666',1),
(53,1,3,27,'Crin','2007-2-22',11,'2018-10-2','Ioana','0766666666',1),
(54,1,4,27,'Filip','2007-2-23',11,'2018-10-2','Iordache','0766666666',1),
(55,1,5,28,'Felix','2007-2-24',11,'2018-10-2','Irinel','0766666666',1),
(56,1,1,28,'Ghita','2007-2-25',11,'2018-10-2','Ionica','0766666666',1),
(57,1,2,29,'Gruia','2007-2-26',11,'2018-10-2','Iulia','0766666666',1),
(58,1,3,29,'Lazar','2007-2-27',11,'2018-10-2','Irina','0766666666',1),
(59,1,4,30,'Liviu','2007-2-28',11,'2018-10-2','Horatiu','0766666666',1),
(60,1,5,30,'Luca','2007-2-28',11,'2018-10-2','Darius','0766666666',1),
(61,1,1,31,'Mihai','2006-3-1',12,'2018-10-2','Natalia','0766666666',1),
(62,1,2,31,'Marian','2006-3-2',12,'2018-10-2','Nicu','0766666666',1),
(63,1,3,32,'Marin','2006-3-3',12,'2018-10-2','Narcis','0766666666',1),
(64,1,4,32,'Mircea','2006-3-4',12,'2018-10-2','Nora','0766666666',1),
(65,1,5,33,'Miron','2006-3-5',12,'2018-10-2','Paul','0766666666',1),
(66,1,1,33,'Mugur','2006-3-6',12,'2018-10-2','Pavel','0766666666',1),
(67,1,2,34,'Mugurel','2006-3-7',12,'2018-10-2','Pascu','0766666666',1),
(68,1,3,34,'Radu','2006-3-8',12,'2018-10-2','Paladi','0766666666',1),
(69,1,4,35,'Rares','2006-3-9',12,'2018-10-2','Tudor','0766666666',1),
(70,1,5,35,'Rafael','2006-3-10',12,'2018-10-2','Traian','0766666666',1),
(71,1,1,36,'Sorin','2006-3-11',12,'2018-10-2','Titi','0766666666',1),
(72,1,2,36,'Silviu','2006-3-12',12,'2018-10-2','Eugen','0766666666',1),
(73,1,3,37,'Stan','2006-3-13',12,'2018-10-2','Olar','0766666666',1),
(74,1,4,37,'Stancu','2006-3-14',12,'2018-10-2','Oncea','0766666666',1),
(75,1,5,38,'Simion','2006-3-15',12,'2018-10-2','Pascu','0766666666',1),
(76,1,1,38,'Sandra','2006-3-16',12,'2018-10-2','Zidaru','0766666666',1),
(77,1,2,39,'Sabina','2006-3-17',12,'2018-10-2','Zamfir','0766666666',1),
(78,1,3,39,'Smaranda','2006-3-18',12,'2018-10-2','Zaharescu','0766666666',1),
(79,1,4,40,'Sofia','2006-3-19',12,'2018-10-2','Ulmea','0766666666',1),
(80,1,5,40,'Roza','2006-3-20',12,'2018-10-2','Puiu','0766666666',1)

--ex 2 Unul din parinti doreste sa stie cati copii din scoala urmeaza acelasi program ca si copilul sau.
--Pentru a indeplinii cerinta utilizeaza subintereogari pentru a afla raspunsul. (Se prespunune ca ai
--acordul GDPR al parintilor sa faci share la aceste informatii).

select count(*) as nr_copii
from Elev 
where IdProgram = ANY (select IdProgram from Elev where Nume = 'Carol' and NumeParinte='Bianca');

--Directoarea scolii iti cere sa realizezi un raport in care sa se vada urmatoarele informatii:
--a. Nume Invatator
--b. Nume Elev
--c. Data Nastere
--d. Varsta Elevului
--e. An Scolar (I – IV)
--f. Denumire Clasa
--g. Numar Sala
--h. Nivel
--Realizeaza raportul de mai sus intr-o vedere utilizand join intre tabelele necesare si denumeste
--coloanele exact ca mai sus.

create view Raport
as 
select Elev.Nume as Nume_elev,
Elev.DataNasterii as Data_nastere,
Elev.Varsta as Varsta,
Invatator.Nume as Nume_Invatator,
Clasa.AnScolar as An_Scolar,
Clasa.Denumire as Denumire_clasa,
Sala.ID as Numar_Sala,
Sala.Nivel as Nivel
from Elev
join Clasa on Clasa.ID = Elev.IdClasa
join Invatator on Invatator.IdClasa = Clasa.ID
join Sala on Sala.ID = Elev.IdScoala
join Scoala on Scoala.ID = sala.IdScoala


--ex 4 Directoarea scolii tocmai ce a primit o cerere de transfer pentru un copil de clasa a II-a si vrea sa stie
--daca poate sa il primeasca. In acest sens are nevoie de un raport pe clasa a II-a cu urmatoarele
--informatii:
--a. Denumire Clasa
--b. Nume Invatator
--c. Numar elevi
--d. Numar Sala
--e. Numar Banci
--f. Numar Banci Disponibile
--Realizeaza o procedura stocata care sa genereze raportul de mai sus utilizand join intre tabelele
--necesare. Denumeste coloanele exact ca mai sus.

