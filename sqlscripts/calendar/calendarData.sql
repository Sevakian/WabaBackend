-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2021 at 10:15 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `calendar`
--

-- --------------------------------------------------------

--
-- Table structure for table `meinkalendar`
--

CREATE TABLE `meinkalendar` (
  `datum_id` int(11) NOT NULL,
  `datum` datetime NOT NULL,
  `title` varchar(30) DEFAULT NULL,
  `text` varchar(300) DEFAULT NULL,
  `verwendung_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meinkalendar`
--

INSERT INTO `meinkalendar` (`datum_id`, `datum`, `title`, `text`, `verwendung_id`) VALUES
(1, '2021-01-20 00:00:00', 'Joe Biden Amtsantritt', NULL, 6),
(2, '2020-09-18 00:00:00', 'Mario Allstars release', NULL, 4),
(3, '2020-09-15 00:00:00', 'BFW', NULL, 2),
(4, '2020-09-28 00:00:00', 'Projektantrag', NULL, 2),
(5, '2020-10-30 00:00:00', 'Pikmin 3', NULL, 4),
(6, '2020-11-10 00:00:00', 'Xbox release', NULL, 4),
(7, '2020-11-19 00:00:00', 'PS5 Release', NULL, 4),
(8, '2020-11-20 00:00:00', 'Hyrule Warriors', NULL, 4),
(9, '2020-11-25 00:00:00', 'Klausuren', NULL, 2),
(10, '2020-12-24 00:00:00', 'Weihnachten', NULL, 5),
(11, '2020-12-10 00:00:00', 'Projekt Abgabe', NULL, 2),
(12, '2021-02-12 00:00:00', 'Mario 3D World ', NULL, 4),
(13, '2021-03-28 00:00:00', 'Sommerzeit', NULL, 6),
(14, '2021-03-31 00:00:00', 'Ende Marios Geburtstag', NULL, 6),
(15, '2021-03-25 00:00:00', 'EU Gipfel', NULL, 6),
(16, '2021-01-10 00:00:00', 'Lockdown Ende Alt', NULL, 6),
(17, '2020-12-16 00:00:00', 'Lockdown Anfang', NULL, 6),
(18, '2020-12-22 00:00:00', 'Prüfungserebnise', NULL, 2),
(22, '2021-02-21 00:00:00', 'Zeldas 35 Geburtstag ', NULL, 4),
(23, '2021-06-15 00:00:00', 'E3', NULL, 4),
(24, '2021-01-19 14:00:00', 'Präsentation', NULL, 2),
(26, '2021-01-14 00:00:00', 'BFW Präsentation', NULL, 2),
(27, '2021-01-11 00:00:00', 'Pashinyan Aliyev meeting', NULL, 6),
(29, '2021-09-26 00:00:00', 'Bundestagswahlen', NULL, 6),
(30, '2021-01-26 00:00:00', 'Abschlussfeier (Freiwillig)', NULL, 5),
(31, '2021-03-03 00:00:00', 'Tabletten Quetiapin Zuende', NULL, 3),
(33, '2021-02-27 00:00:00', 'Pokemon Geburtstag', NULL, 4),
(34, '2021-04-24 00:00:00', 'Armenischer Genozid', NULL, 6),
(37, '2021-04-23 00:00:00', 'Szabo 9 - 10 Uhr', NULL, 3),
(38, '2021-04-29 00:00:00', 'Szabo 15.10 uhr', 'SERTRALIN ABHOLEN!', 3),
(40, '2021-03-26 00:00:00', 'Monster Hunter Rise', NULL, 4),
(43, '2021-07-16 00:00:00', 'Zelda Skyward Sword HD ', NULL, 4),
(48, '2021-03-11 00:00:00', 'Termin Frau Löw 13 Uhr', NULL, 2),
(50, '2021-03-18 00:00:00', 'Termin Frau Löw 14', NULL, 3),
(51, '2021-03-26 00:00:00', 'Frau Löw Termin 12:30', NULL, 3),
(52, '2021-04-18 00:00:00', 'Lockdown Ende neu', NULL, 6),
(53, '2021-04-02 00:00:00', 'karfreitag', NULL, 5),
(54, '2021-04-04 00:00:00', 'ostern', NULL, 5),
(55, '2021-04-29 00:00:00', 'Rome total war remastered', NULL, 4),
(56, '2021-04-09 00:00:00', 'Frau Löw Termin 12:30', NULL, 3),
(57, '2021-12-21 00:00:00', 'Wintersonnenwende', NULL, 6),
(58, '2021-06-21 00:00:00', 'Sommersonnenwende', NULL, 6),
(59, '2021-04-12 00:00:00', 'Vorstellungsgespräch', 'Vorstellungsgespräch Megorei 14 Uhr', 3),
(61, '2021-08-20 00:00:00', 'Mein Geburtstag', NULL, 5),
(62, '2021-05-13 00:00:00', 'Christi Himmelfahrt', NULL, 5),
(63, '2021-05-01 00:00:00', 'Tag der Arbeit', NULL, 5),
(64, '2021-05-24 00:00:00', 'Pfingstmontag', NULL, 5),
(66, '2021-12-24 00:00:00', 'Weihnachten', NULL, 5),
(67, '2021-12-25 00:00:00', 'Weihnachten', NULL, 5),
(68, '2021-12-26 00:00:00', 'Weihnachten', NULL, 5),
(69, '2021-04-05 00:00:00', 'Ostermontag', NULL, 5),
(70, '2021-10-03 00:00:00', 'Tag der Deutschen Einheit', NULL, 5),
(72, '2021-04-14 00:00:00', 'Nintendo Indie Showcase', NULL, 4),
(73, '2021-04-16 00:00:00', 'Frau Löw Termin 12:30', NULL, 3),
(74, '2021-06-20 00:00:00', 'Armenien Wahlen', NULL, 6),
(76, '2021-05-06 00:00:00', 'Samus Hunter Twitter', NULL, 4),
(77, '2021-04-30 00:00:00', 'Frau Löw 11.30', NULL, 3),
(79, '2021-08-13 00:00:00', 'Dr Szabo 11:30', NULL, 3),
(80, '2021-05-12 00:00:00', 'Frau Löw 12 uhr', NULL, 3),
(81, '2021-04-26 00:00:00', 'quetiapin zuende', 'ungefährer tag', 1),
(82, '2021-06-07 00:00:00', 'Hautarzt 16uhr', NULL, 3),
(83, '2021-05-11 00:00:00', 'Spielestudio release', NULL, 4),
(84, '2021-06-12 00:00:00', 'Instagram Znews wird gelöscht', NULL, 6),
(85, '2022-01-28 00:00:00', 'Pokemon Legends Arceus', NULL, 4),
(86, '2021-11-19 00:00:00', 'Pokemon Diamant', NULL, 4),
(87, '2021-06-28 00:00:00', 'Urlaub Dro Kach', NULL, 6),
(88, '2021-07-18 00:00:00', 'Urlaub zurück Dro Kach', NULL, 6),
(89, '2021-06-14 00:00:00', 'Auticon 16 Uhr ', NULL, 3),
(90, '2021-07-05 00:00:00', 'Hautarzt 16:40', NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `testkalendar`
--

CREATE TABLE `testkalendar` (
  `datum_id` int(11) NOT NULL,
  `datum` datetime NOT NULL,
  `title` varchar(30) DEFAULT NULL,
  `text` varchar(300) DEFAULT NULL,
  `verwendung_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testkalendar`
--

INSERT INTO `testkalendar` (`datum_id`, `datum`, `title`, `text`, `verwendung_id`) VALUES
(1, '2020-12-10 22:00:00', NULL, NULL, NULL),
(2, '2021-01-10 22:00:00', NULL, NULL, NULL),
(3, '2021-01-10 00:00:00', NULL, NULL, NULL),
(4, '2021-04-01 15:22:29', 'Hallo', NULL, NULL),
(12, '2021-04-12 00:00:00', 'Hi', NULL, NULL),
(13, '2021-04-11 00:00:00', 'uuuu', NULL, NULL),
(14, '2021-04-09 00:00:00', 'uuu', NULL, 1),
(15, '2021-03-27 00:00:00', 'hi', NULL, 3),
(16, '2021-03-24 00:00:00', 'hihihi', NULL, 2),
(17, '2021-08-04 00:00:00', 'Arzt', NULL, 1),
(18, '2021-04-20 00:00:00', 'Arzt Termin 16 Uhr', NULL, 3),
(19, '2021-08-20 00:00:00', 'Arzt Termin', NULL, 3),
(20, '2021-12-20 00:00:00', 'Arzt Termin', NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `verwendung`
--

CREATE TABLE `verwendung` (
  `verwendung_id` int(10) NOT NULL,
  `text` varchar(20) NOT NULL,
  `farbe` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verwendung`
--

INSERT INTO `verwendung` (`verwendung_id`, `text`, `farbe`) VALUES
(1, 'Standard', '#00ff00'),
(2, 'Arbeit', '#F90'),
(3, 'Termin', '#F00'),
(4, 'Gaming', '#630'),
(5, 'Feiertage', '#9FF'),
(6, 'Ereignisse', '#FF0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `meinkalendar`
--
ALTER TABLE `meinkalendar`
  ADD PRIMARY KEY (`datum_id`),
  ADD KEY `verwendung_id` (`verwendung_id`);

--
-- Indexes for table `testkalendar`
--
ALTER TABLE `testkalendar`
  ADD PRIMARY KEY (`datum_id`),
  ADD KEY `verwendung_id` (`verwendung_id`);

--
-- Indexes for table `verwendung`
--
ALTER TABLE `verwendung`
  ADD PRIMARY KEY (`verwendung_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `meinkalendar`
--
ALTER TABLE `meinkalendar`
  MODIFY `datum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `testkalendar`
--
ALTER TABLE `testkalendar`
  MODIFY `datum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `verwendung`
--
ALTER TABLE `verwendung`
  MODIFY `verwendung_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `meinkalendar`
--
ALTER TABLE `meinkalendar`
  ADD CONSTRAINT `meinkalendar_ibfk_1` FOREIGN KEY (`verwendung_id`) REFERENCES `verwendung` (`verwendung_id`);

--
-- Constraints for table `testkalendar`
--
ALTER TABLE `testkalendar`
  ADD CONSTRAINT `testkalendar_ibfk_1` FOREIGN KEY (`verwendung_id`) REFERENCES `verwendung` (`verwendung_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
