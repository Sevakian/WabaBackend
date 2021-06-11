CREATE TABLE testcalendar (
    datum_id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    datum datetime NOT NULL,
    title Varchar(30) DEFAULT NULL,
    text Varchar(300) DEFAULT NULL,
    verwendung_id int(10), FOREIGN KEY(verwendung_id) REFERENCES verwendung(verwendung_id)
)

CREATE TABLE `verwendung` (
  `verwendung_id` int(10) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `text` varchar(20) NOT NULL,
  `farbe` varchar(10) DEFAULT NULL
)



