CREATE DATABASE raamatMerkulova;
use raamatMerkulova;
--tabeli zanr loomine
CREATE TABLE zanr(
zanrID int PRIMARY KEY identity(1,1),
zanrNimetus varchar(50) not null,
kirjeldus TEXT);
Select * from zanr;
--tabeli täitmine
INSERT INTO zanr(zanrNimetus, kirjeldus)
VALUES 
('komöödia', 'lõbus meelelahutus'),
('tragöödia', 'kurb zanr')

--tabel autor

CREATE TABLE autor(
autorID int PRIMARY KEY identity(1,1),
eesnimi varchar(50),
perenimi varchar(50) not null,
synniaasta int check(synniaasta >1900),
elukoht varchar(30)
);
select * from autor;

INSERT INTO autor(eesnimi, perenimi, synniaasta)
VALUES ('Leelo','Tungal', 1947);

--tabeli uuendamine
UPDATE autor SET elukoht='Tallinn';

--kustutamine tabelist
DELETE FROM autor Where autorID=1;

---tabel raamat

CREATE TABLE raamat(
raamatID int PRIMARY KEY identity(1,1),
raamatNimetus varchar(100) UNIQUE,
lk int,
autorID int,
FOREIGN KEY (autorID) REFERENCES autor(autorID),
zanrID int,
FOREIGN KEY (zanrID) REFERENCES zanr(zanrID)
);
--- drop table raamat;

Select * FROM autor;
Select * FROM zanr;

INSERT INTO raamat (raamatNimetus, lk, autorID, zanrID)
VALUES ('Oskar ja asjad', 200, 2, 3);

Select * FROM raamat;
