-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.15 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for interview
CREATE DATABASE IF NOT EXISTS `interview` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `interview`;

-- Dumping structure for table interview.employee
CREATE TABLE IF NOT EXISTS `employee` (
  `id` int(11) DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table interview.employee: ~6 rows (approximately)
INSERT INTO `employee` (`id`, `phone_no`, `salary`, `department`) VALUES
	(1, '5555555', 2300.5, 'Engineer'),
	(1, '566666666', 3300.5, 'Engineer'),
	(2, '566666660', 4300.5, 'Engineer'),
	(2, '566666661', 5300.5, 'Account'),
	(2, '566666662', 6300.5, 'Account'),
	(2, '566666663', 7300.5, 'Account'),
	(3, '566666669', 7300.5, 'Account');

-- Dumping structure for table interview.people
CREATE TABLE IF NOT EXISTS `people` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(6) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table interview.people: ~9 rows (approximately)
INSERT INTO `people` (`id`, `name`, `gender`) VALUES
	(101, 'Riya', 'F'),
	(566, 'Aman', 'M'),
	(202, 'Rakesh', 'M'),
	(875, 'lucky', 'M'),
	(202, 'Reena', 'F'),
	(322, 'Raina', 'F'),
	(345, 'Rohit', 'M'),
	(322, 'Mohit', 'M'),
	(345, 'Meena', 'F');

-- Dumping structure for table interview.relation
CREATE TABLE IF NOT EXISTS `relation` (
  `cid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table interview.relation: ~3 rows (approximately)
INSERT INTO `relation` (`cid`, `pid`) VALUES
	(101, 202),
	(566, 322),
	(875, 345);

-- Dumping structure for table interview.tmp1
CREATE TABLE IF NOT EXISTS `tmp1` (
  `id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table interview.tmp1: ~4 rows (approximately)
INSERT INTO `tmp1` (`id`) VALUES
	('A'),
	('B'),
	('C'),
	('D'),
	('E');

-- Dumping structure for table interview.tmp2
CREATE TABLE IF NOT EXISTS `tmp2` (
  `id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table interview.tmp2: ~2 rows (approximately)
INSERT INTO `tmp2` (`id`) VALUES
	('B'),
	('C'),
	('D');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
