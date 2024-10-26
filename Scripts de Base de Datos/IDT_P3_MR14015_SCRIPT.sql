-- Creado: 20/10/2024
/*
CREATE DATABASE IDT_P3_MR14015
GO

USE IDT_P3_MR14015
GO
*/

CREATE TABLE DimFecha(
llaveFecha bigint primary key,
fechaCalendario date not null,
anioCalendario smallint not null,
numeroCuarto tinyint not null,
fechaMes tinyint not null,
diaDeMes tinyint not null,
diaDelSemana tinyint not null)
GO

CREATE TABLE DimAerolinea(
llaveAerolinea bigint identity(1,1) primary key,
codigo varchar(10) not null, 
descripcion varchar (100) not null)
GO

CREATE TABLE FactViajes(
llaveFecha bigint not null,
llaveAerolinea bigint not null,
origin	varchar(3) not null,
dest	varchar(3) not null,
cancelled varchar(5) not null,
diverted varchar(5) not null,
crsDepTime	int not null default(0),
depTime	int not null default(0),
depDelayMinutes	int not null default(0),
depDelay	int not null default(0),
arrTime	int not null default(0),
arrDelayMinutes	int not null default(0),
airTime	int not null default(0),
rsElapsedTime	int not null default(0),
actualElapsedTime	int not null default(0),
marketingAirlineNetwork varchar(2) not null,
operatedorBrandedCodeSharePartners	varchar(25) not null,
dotIDMarketingAirline int not null default(0),
iataCodeMarketingAirline	varchar(2) not null,
flightNumberMarketingAirline	int not null default(0),
operatingAirline	varchar(2) not null,
dotIDOperatingAirline	varchar(25) not null,
iataCodeOperatingAirline	varchar(2) not null,
tailNumber	varchar(10) not null,
flightNumberOperatingAirline	int not null default(0),
originAirportID	int not null default(0),
originAirportSeqID	int not null default(0),
originCityMarketID	int not null default(0),
originCityName	varchar(25) not null,
originState	varchar(2) not null,
originStateFips	int not null default(0),
originStateName	varchar(25) not null,
originWac int not null default(0),
destAirportID	int not null default(0),
destAirportSeqID	int not null default(0),
destCityMarketID	int not null default(0),
destCityName	varchar(25) not null,
destState	varchar(2) not null,
destStateFips	int not null default(0),
destStateName	varchar(25) not null,
destWac	int not null default(0),
depDel15	int not null default(0),
depTimeBlk	varchar(10) not null,
wheelsOff	int not null default(0),
wheelsOn	int not null default(0),
taxiOut	int not null default(0),
taxiIn	int not null default(0),
crsArrTime	int not null default(0),
arrDelay	int not null default(0),
arrDel15	int not null default(0),
arrTimeBlk	varchar(10) not null,
divAirportLandings int not null default(0),
FOREIGN KEY(llaveFecha) REFERENCES DIMFECHA(llaveFecha),
FOREIGN KEY(llaveAerolinea) REFERENCES DIMAEROLINEA(llaveAerolinea))
GO
