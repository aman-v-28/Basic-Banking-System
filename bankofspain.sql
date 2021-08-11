-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2021 at 06:53 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bankofspain`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `remitter` varchar(50) NOT NULL,
  `beneficiary` varchar(50) NOT NULL,
  `amount` int(50) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`remitter`, `beneficiary`, `amount`, `date`, `time`) VALUES
('Troy J. Jamieson', 'Frank I. Sayre', 100, '2021-08-09', '09:52:27'),
('Troy J. Jamieson', 'Gladis D. Myers', 34, '2021-08-09', '10:09:05'),
('Gladis D. Myers', 'Robert Wallace', 243, '2021-08-09', '10:20:38'),
('Robert Wallace', 'Troy J. Jamieson', 7853, '2021-08-09', '10:21:10'),
('Laura R. Maxwell', 'Norah Lindgren', 8765, '2021-08-09', '10:35:31'),
('Barbara Katarina Topčić', 'Luke Abdulov', 879, '2021-08-09', '10:36:05'),
('Djura Koops', 'Hector Kerr', 6543, '2021-08-09', '10:46:14'),
('Barbara Katarina Topčić', 'Luke Abdulov', 458, '2021-08-09', '10:55:18'),
('Barbara Katarina Topčić', 'Laura R. Maxwell', 4568, '2021-08-09', '11:26:23'),
('Djura Koops', 'Barbara Katarina Topčić', 1324, '2021-08-11', '08:58:28'),
('Djura Koops', 'Gladis D. Myers', 235, '2021-08-11', '09:52:18'),
('Laura R. Maxwell', 'Hector Kerr', 345, '2021-08-11', '10:06:30');

--
-- Triggers `transaction`
--
DELIMITER $$
CREATE TRIGGER `device` BEFORE INSERT ON `transaction` FOR EACH ROW IF new.date IS NULL THEN
	SET NEW.date = CURDATE();
    SET NEW.time = CURTIME();
END IF
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `amount` int(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `amount`, `address`, `phone`) VALUES
(10, 'Djura Koops', ' DjuraKoops@rhyta.com', 37681, 'Eusebio Dávila, 40 41460 Las Navas de la Concepció', '600 523 737'),
(5, 'Laura R. Maxwell', ' LauraRMaxwell@jourrapide.com', 18920, 'Pl. Virgen Blanca, 8 08470 Sant Celoni', '759 900 841'),
(6, 'Barbara Katarina Topčić', 'BarbaraKatarina@rhyta.com', 4176, 'Eusebio Dávila, 86 41530 Morón de la Frontera', '720 330 854'),
(1, 'Frank I. Sayre', 'FrankISayre@jourrapide.com', 378, '2323 Cherry Ridge Drive Roseville, MI 48066', '2147483647'),
(3, 'Gladis D. Myers', 'GladisDMyers@rhyta.com', 5215, 'Urzáiz, 8 44600 Alcañiz', '747 035 392'),
(9, 'Hector Kerr', 'HectorKerr@dayrep.com', 10344, 'Fuente del Gallo, 89 15117 Laxe', '619 498 764'),
(7, 'Luke Abdulov', 'LukeAbdulov@armyspy.com', 65082, 'C/ Cuevas de Ambrosio, 29 23740 Andújar', '698 824 254'),
(8, 'Norah Lindgren', 'NorahLindgren@jourrapide.com', 476586, 'Avda. Explanada Barnuevo, 86 35430 Firgas', '683 673 778'),
(4, 'Robert Wallace', 'RobertPWallace@gmail.com', 34377, 'Cádiz, 67 18490 Murtas', '771 491 815'),
(2, 'Troy J. Jamieson', 'TroyJJamieson@rhyta.com', 11491, '2063 Karen Lane Louisville, KY 40202', '2028359827');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `phone` (`phone`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
