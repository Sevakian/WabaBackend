Create database gaming;


Create table Spiele (
Spielid int(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
Spielename varchar(100) NOT NULL,
Spieleserie varchar(50) DEFAULT NULL, 
Genre varchar(20) DEFAULT NULL,
Erscheinungsjahr date DEFAULT NULL,
Entwickler varchar(30) DEFAULT NULL,
Dimension VARCHAR(10) DEFAULT NULL,
Bild varchar(100) DEFAULT NULL,
Status varchar(30) DEFAULT NULL, 
GrößeGB varchar(10) DEFAULT NULL

);
-- größe von float zu varchar(10)
-- vr weg
-- genre hinzugefügt

Create table Konsole (
Konsoleid int(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
KonsoleName varchar(30) NOT NULL,
Bild varchar(100) DEFAULT NULL,
Hersteller varchar(30) DEFAULT NULL,
Erscheinungsjahr date DEFAULT NULL,
Generation varchar(30) DEFAULT NULL,
Status varchar(30) DEFAULT NULL,
Typ varchar(10) DEFAULT NULL
);

-- Create table konsolenversion (
-- Konsoleid int(10) NOT NULL, FOREIGN KEY (KonsoleId) REFERENCES konsole (KonsoleId),
-- versionid int(10) NOT NULL PRIMARY KEY AUTO_INCREMENT, 
-- Bild varchar(100) DEFAULT NULL,
-- Erscheinungsjahr date DEFAULT NULL,
-- Version varchar(50) NOT NULL, 
-- Status varchar(30) DEFAULT NULL
-- );

Create table SpieleKonsole (
Spielid int(10) NOT NULL, FOREIGN KEY (Spielid) REFERENCES spiele (Spielid),
Konsoleid int(10) NOT NULL, FOREIGN KEY (KonsoleId) REFERENCES konsole (Konsoleid)

);

