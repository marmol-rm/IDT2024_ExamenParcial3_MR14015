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
descripcion varchar (100) not null default 'N/A')
GO

CREATE TABLE FactViajes(
factViajesID bigint identity(1,1) primary key,
llaveFecha bigint not null,
llaveAerolinea bigint not null,
origin	    varchar(50) not null default 'N/A',
dest	    varchar(50) not null default 'N/A',
cancelled   nvarchar(50) not null default 'N/A',
diverted    nvarchar(50) not null default 'N/A',
crsDepTime	int not null default(0),
depTime	int not null default(0),
depDelayMinutes	int not null default(0),
depDelay	int not null default(0),
arrTime	int not null default(0),
arrDelayMinutes	int not null default(0),
airTime	int not null default(0),
crsElapsedTime	int not null default(0),
actualElapsedTime	int not null default(0),
marketingAirlineNetwork varchar(50) not null default 'N/A',
operatedorBrandedCodeSharePartners	varchar(50) not null default 'N/A',
dotIDMarketingAirline int not null default(0),
iataCodeMarketingAirline	varchar(50) not null default 'N/A',
flightNumberMarketingAirline	int not null default(0),
operatingAirline	varchar(50) not null default 'N/A',
dotIDOperatingAirline	varchar(50) not null default 'N/A',
iataCodeOperatingAirline	varchar(50) not null default 'N/A',
tailNumber	varchar(50) not null default 'N/A',
flightNumberOperatingAirline	int not null default(0),
originAirportID	int not null default(0),
originAirportSeqID	int not null default(0),
originCityMarketID	int not null default(0),
originCityName	varchar(50) not null default 'N/A',
originState	varchar(50) not null default 'N/A',
originStateFips	int not null default(0),
originStateName	varchar(50) not null default 'N/A',
originWac int not null default(0),
destAirportID	int not null default(0),
destAirportSeqID	int not null default(0),
destCityMarketID	int not null default(0),
destCityName	varchar(50) not null default 'N/A',
destState	varchar(50) not null default 'N/A',
destStateFips	int not null default(0),
destStateName	varchar(50) not null default 'N/A',
destWac	int not null default(0),
depDel15	int not null default(0),
depTimeBlk	varchar(50) not null default 'N/A',
wheelsOff	int not null default(0),
wheelsOn	int not null default(0),
taxiOut	int not null default(0),
taxiIn	int not null default(0),
crsArrTime	int not null default(0),
arrDelay	int not null default(0),
arrDel15	int not null default(0),
arrTimeBlk	varchar(50) not null default 'N/A',
divAirportLandings int not null default(0),
FOREIGN KEY(llaveFecha) REFERENCES DimFecha(llaveFecha),
FOREIGN KEY(llaveAerolinea) REFERENCES DimAerolinea(llaveAerolinea))
GO
