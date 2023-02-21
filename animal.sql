-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2023 at 02:50 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aquarium`
--

-- --------------------------------------------------------

--
-- Table structure for table `animal`
--

CREATE TABLE `animal` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `name_code` varchar(100) NOT NULL,
  `Gallery_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `animal`
--

INSERT INTO `animal` (`id`, `name`, `name_code`, `Gallery_id`) VALUES
(1, 'african penguin', 'african-penguin', 1),
(2, 'Beluga Whale', 'beluga-whale', 2),
(3, 'California Sea Lion', 'california-sea-lion', 3),
(4, 'Common Bottlenose Dolphin', 'bottlenose-dolphin', 4),
(5, 'Tiger Shark', 'tiger-shark', 5),
(6, 'Dolphin Encounter', 'dolphin-encounter', 6),
(7, 'Pike Fish', 'Pike-Fish', 7),
(8, 'Marline Fish', 'Marline-Fish', 8),
(9, 'Boar Fish', 'Boar-Fish', 9),
(10, 'Seahorse', 'Sea-horse', 10),
(11, 'Hog Fish', 'Hog-Fish', 11),
(12, 'Threadfin', 'Thread-fin', 12),
(13, 'Clown Fish', 'Clown-Fish', 13),
(14, 'Sword Fish', 'Sword-Fish', 14),
(15, 'Molidae', 'Moli-dae', 15),
(16, 'Blow Fish', 'Blow-Fish', 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Gallery_id` (`Gallery_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animal`
--
ALTER TABLE `animal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`Gallery_id`) REFERENCES `gallery` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
