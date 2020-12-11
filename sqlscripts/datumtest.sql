-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2020 at 10:54 AM
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
-- Database: `datum`
--

-- --------------------------------------------------------

--
-- Table structure for table `datumtest`
--

CREATE TABLE `datumtest` (
  `datum_id` int(11) NOT NULL,
  `datum` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datumtest`
--

INSERT INTO `datumtest` (`datum_id`, `datum`) VALUES
(1, '2020-07-20 12:23:00'),
(2, '2020-07-23 12:23:00'),
(3, '2020-07-23 18:23:00'),
(4, '2020-07-23 20:23:00'),
(5, '2020-07-25 20:23:00'),
(6, '2020-07-29 20:23:00'),
(7, '2020-08-02 12:23:00'),
(8, '2020-08-04 12:23:00'),
(9, '2020-10-26 12:00:00'),
(10, '2020-10-28 18:00:00'),
(11, '2020-11-02 12:00:00'),
(12, '2020-11-02 18:00:00'),
(13, '2020-11-05 02:00:00'),
(14, '2020-11-05 05:00:00'),
(15, '2020-11-05 05:00:00'),
(16, '2020-11-05 08:20:00'),
(17, '2020-11-05 15:20:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datumtest`
--
ALTER TABLE `datumtest`
  ADD PRIMARY KEY (`datum_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datumtest`
--
ALTER TABLE `datumtest`
  MODIFY `datum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
