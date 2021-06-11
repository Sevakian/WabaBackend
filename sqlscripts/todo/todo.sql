-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2021 at 10:17 PM
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
-- Database: `todo`
--

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE `todo` (
  `todo_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `text` varchar(300) DEFAULT NULL,
  `verwendung_id` int(10) DEFAULT NULL,
  `priorität` varchar(30) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `todo`
--

INSERT INTO `todo` (`todo_id`, `title`, `text`, `verwendung_id`, `priorität`, `status`) VALUES
(1, 'Datetime - Aktivitätsdiagram', 'Ausgabe verbessern sodass die Zeitspanne besser sichtbar ist', 5, 'Neutral', 'erledigt'),
(2, 'Calendar - Liste', 'eingetragene Daten als Liste ausgeben', 5, 'Neutral', 'erledigt'),
(3, 'Datetime - letzer Eintrag', '\'Letzer eintrag im Datetime oben ausgeben', 5, 'Neutral', 'erledigt'),
(4, 'Todo - Text hinweis', 'Wenn ein Todo eintrag Text besitzt, soll das in der Liste signalisiert werden', 5, 'Unwichtig', 'erledigen'),
(5, 'Todo - Neue Verwendungen', 'Möglichkeit neue Verwendungszwecke im Todo einzutragen', 5, 'Unwichtig', 'erledigen'),
(6, 'Gaming - Filterfunktion verbessern', 'die Gaming Liste nach weiteren möglichkeiten zu sortieren z.B verkaufte einheiten\'', 5, 'Neutral', 'erledigen'),
(7, 'Neues SQL Backup', NULL, 5, 'Neutral', 'erledigt'),
(8, 'Todo - erledigt anzeigen', NULL, 5, 'Unwichtig', 'erledigen'),
(9, 'SQL - vdatum anzahl Urzeiten', NULL, 5, 'Neutral', 'erledigen'),
(10, 'SQL - Gaming monate', 'Häufigkeit der monate an denen spiele veröffentlicht wurden', 5, 'Neutral', 'erledigen'),
(11, 'Meme suchen Rakete', NULL, 6, 'Unwichtig', 'erledigen'),
(12, 'Gaming Serien anschauen', 'Fire Emblen, Final Fantasie, Monster Hunter', 4, 'Neutral', 'erledigen'),
(13, 'Best of 3DS & DS games', 'bei youtube', 4, 'Neutral', 'erledigen'),
(14, 'Alle Gameboy Spiele anschauen', NULL, 4, 'Neutral', 'erledigen'),
(15, 'DS Spiele suchen für Speicherkarte', 'Alle DS und 3DS Spiele suchen die \"merken\" und \"nicht ausgewählt\" sind und eventuell als download für Speicherkarte herhalten müssen && Alle spiele die gedownloaded werden für pc (kombinierbar mit spiele die auf ds speicherkarte gedownloaded werden können)', 4, 'Neutral', 'erledigen'),
(16, 'Job bewerben', NULL, 3, 'Wichtig', 'erledigen'),
(17, 'Arzt besuchen wegen Rücken', NULL, 1, 'Neutral', 'erledigen'),
(18, 'Arzt wegen Hals Pilz', NULL, 1, 'Neutral', 'erledigt'),
(19, 'PSP suchen', NULL, 4, 'Neutral', 'erledigen'),
(20, 'Intelligent Fusion', NULL, 6, 'Neutral', 'erledigen'),
(21, 'Nikolai besuchen mit Gitarre', NULL, 2, 'Neutral', 'erledigen'),
(22, 'Consol Logs im Backend rauschmeißen', NULL, 5, 'Neutral', 'erledigt'),
(23, 'Todos Löschen ', NULL, 5, 'Neutral', 'erledigen'),
(24, 'Datetime - Diagram beschriften', NULL, 5, 'Wichtig', 'erledigen'),
(25, 'Calendar - Filter für Liste', NULL, 5, 'Wichtig', 'erledigen'),
(26, 'Google Sheets', NULL, 5, 'Neutral', 'erledigen'),
(27, 'Nasenwand korrektur', NULL, 1, 'Neutral', 'erledigen'),
(28, 'Zimmer aufräumen', NULL, 2, 'Wichtig', 'erledigen'),
(29, 'Mobile Version', NULL, 5, 'Unwichtig', 'erledigen'),
(30, 'DateTime - Titel speichern', NULL, 5, 'Wichtig', 'erledigen'),
(31, 'Sporttasche', NULL, 7, 'Neutral', 'erledigen'),
(32, 'Sportschuhe', NULL, 7, 'Neutral', 'erledigen'),
(33, 'Sporthose', NULL, 7, 'Neutral', 'erledigen'),
(34, 'Sportshirt', NULL, 7, 'Neutral', 'erledigen'),
(35, 'Clever Fit Armband', NULL, 7, 'Neutral', 'erledigen'),
(36, 'Schloss', NULL, 7, 'Neutral', 'erledigen'),
(37, 'Trinkflasche', NULL, 7, 'Neutral', 'erledigen'),
(38, 'Handtuch', NULL, 7, 'Neutral', 'erledigen'),
(39, 'Maske Covid', NULL, 7, 'Neutral', 'erledigen'),
(40, 'Hausschlüssel', NULL, 7, 'Neutral', 'erledigen'),
(41, 'Kniegelenk bandage (optional)', NULL, 7, 'Neutral', 'erledigen'),
(42, 'Kopfhörer (optional)', NULL, 7, 'Neutral', 'erledigen'),
(43, 'Ventilator (optional)', NULL, 7, 'Neutral', 'erledigen'),
(44, 'Brille (optional)', NULL, 7, 'Neutral', 'erledigen'),
(45, 'Großes Handtuch (Saune oder Dusche)', NULL, 7, 'Neutral', 'erledigen'),
(46, 'Badelatschen (Saune oder Dusche)', NULL, 7, 'Neutral', 'erledigen'),
(47, 'Shampoo (Saune oder Dusche)', NULL, 7, 'Neutral', 'erledigen'),
(48, 'Unterhose (Saune oder Dusche)', NULL, 7, 'Neutral', 'erledigen'),
(49, 'Socken (Saune oder Dusche)', NULL, 7, 'Neutral', 'erledigen');

-- --------------------------------------------------------

--
-- Table structure for table `verwendung`
--

CREATE TABLE `verwendung` (
  `verwendung_id` int(10) NOT NULL,
  `title` varchar(20) NOT NULL,
  `farbe` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verwendung`
--

INSERT INTO `verwendung` (`verwendung_id`, `title`, `farbe`) VALUES
(1, 'Gesundheit', NULL),
(2, 'Freizeit', NULL),
(3, 'Schule/Arbeit', NULL),
(4, 'Gaming', NULL),
(5, 'Programmieren', NULL),
(6, 'Sonstiges', NULL),
(7, 'Sport', NULL),
(8, 'UU', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `todo`
--
ALTER TABLE `todo`
  ADD PRIMARY KEY (`todo_id`),
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
-- AUTO_INCREMENT for table `todo`
--
ALTER TABLE `todo`
  MODIFY `todo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `verwendung`
--
ALTER TABLE `verwendung`
  MODIFY `verwendung_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
