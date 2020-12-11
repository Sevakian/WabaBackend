Create database gamingverwaltung;


Create table Spiele (
Sid int(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
Spielename tinytext NOT NULL,
Spieleserie varchar(50) DEFAULT NULL, 
kid int(10) DEFAULT NULL, FOREIGN KEY (kid) REFERENCES konsole (kid),
Status varchar(30) DEFAULT NULL, 
Priorität int(10) DEFAULT NULL,
Größe int(10) DEFAULT NULL,
VR char(2) DEFAULT NULL
);


Create table Konsole (
Kid int(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
Konsolen Name varchar(30) NOT NULL,
Generation varchar(30) DEFAULT NULL,
);

Create table konsolenversion (
kid int(10) NOT NULL, FOREIGN KEY (kid) REFERENCES konsole (kid)
spid int(10) NOT NULL PRIMARY KEY AUTO_INCREMENT, 
Version varchar(50) NOT NULL, 
Status varchar(30) DEFAULT NULL

);

Create table Spiele-Konsole (
Sid int(10) NOT NULL, FOREIGN KEY (sid) REFERENCES spiele (sid),
kid int(10) NOT NULL, FOREIGN KEY (kid) REFERENCES konsole (kid)

);

