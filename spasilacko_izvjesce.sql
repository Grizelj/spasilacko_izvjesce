drop database if exists spasilacko_izvjesce;
create database spasilacko_izvjesce;

use spasilacko_izvjesce;

create table spasilac(
sifra int not null primary key auto_increment,
osoba char(11) not null,
obnovljena_licenca int not null,
mjesto_rada varchar(50) not null
);

create table intervencija(
sifra int not null primary key auto_increment,
datum datetime,
opis varchar(200) ,
smjena int not null
);

create table smjena(
sifra int not null primary key auto_increment,
datumod datetime,
datumdo datetime,
spasilac int not null,
);

create table provjera(
sifra int not null primary key auto_increment,
naziv varchar(50) not null
);

create table smjena_provjera(
smjena int not null,
provjera int not null,
naziv varchar(50)
);

alter table smjena add foreign key (spasilac) references spasilac(sifra);
alter table smjena_provjera add foreign key (smjena) references smjena(sifra);
alter table smjena_provjera add foreign key (provjera) references provjera(sifra);
alter table intervencija add foreign key (smjena) references smjena(sifra);




