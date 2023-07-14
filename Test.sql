create view Raport 
as
select Nume, DataNastere, Varsta from elev
join Invatator on Invataror.Nume = Nume_Invataror
join Clasa on Clasa.AnScolar = An_Scolar_(I-IV) 
join Clasa on Clasa.Denumire = Denumire_Clasa
join Sala on Sala.Id = Numar_Sala
join Sala on Sala.Nivel = Nivel

--create view Raport 
--as
--select Nume, DataNastere, Varsta from Elev
--join Invatator on Invataror.Nume = Nume_Invataror
--join Clasa on Clasa.AnScolar = An_Scolar_(I-IV) 
--join Clasa on Clasa.Denumire = Denumire_Clasa
--join Sala on Sala.Id = Numar_Sala
--join Sala on Sala.Nivel = Nivel

--Create view Raport
--as
--select e.Nume, e.DataNastere, e.Varsta from Elev
--as e inner join  Elev as 