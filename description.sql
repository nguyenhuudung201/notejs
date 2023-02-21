-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2023 at 02:55 PM
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
-- Table structure for table `description`
--

CREATE TABLE `description` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `animal_id` int(11) DEFAULT NULL,
  `content` text NOT NULL,
  `size` varchar(20) NOT NULL,
  `diet` varchar(50) NOT NULL,
  `location` varchar(20) NOT NULL,
  `habitat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `description`
--

INSERT INTO `description` (`id`, `image`, `animal_id`, `content`, `size`, `diet`, `location`, `habitat`) VALUES
(1, 'https://www.georgiaaquarium.org/wp-content/uploads/2018/08/african-penguin-3-1440x454.jpg', 1, 'This small, distinctive penguin is found on the rocky coasts of Southwestern Africa, in the countries of Namibia and South Africa. They feed exclusively on marine species, mainly fish and squid. Hunting involves venturing from shore, sometimes as far as nine miles off the coast, and swallowing food whole.', '18-25 inches (46-64 ', 'Fish, crustaceans, squid', 'Southernmost coast o', 'Temperate climates near water'),
(2, 'https://www.georgiaaquarium.org/wp-content/uploads/2018/08/beluga-whale-3-1440x454.jpg', 2, 'Beluga whales are small, white whales that live in the cold waters throughout the Arctic and some subarctic locations. Belugas are social, and form groups called pods.', '11-15 feet (3.4-4.6 ', 'Fish, mollusks, crustaceans and even zooplankton', 'Found throughout the', 'Varies from deep offshore waters to shallow bays a'),
(3, 'https://www.georgiaaquarium.org/wp-content/uploads/2018/08/truist-pier-225-2-1440x454.jpg', 3, 'California sea lions are social animals that communicate with various barks, growls, honks and clicks. Their sleek bodies, powerful flippers and excellent vision allow this species to hunt a variety of prey.', '6-8 feet (2-2.4 m)', 'Squid, anchovy, rockfish, whiting and mackerel', 'Eastern Pacific Ocea', 'Near-shore waters'),
(4, 'https://www.georgiaaquarium.org/wp-content/uploads/2018/08/common-bottlenose-dolphin-2-1440x454.jpg', 4, 'Common bottlenose dolphins are well-known for their acrobatic stunts and social behavior. Dolphins have varied social structures, pods of 2 to 15 individuals are common for this species, but solitary coastal individuals have been seen all over the world. Dolphins have a wide range of vocalizations, including whistles, grunts, trills, squeaks and moans that they use to communicate in order to hunt efficiently, raise young and guard against predators.', '7-9 feet (2-2.7 m)', 'Fish, cephalopods, crustaceans, small rays or shar', 'Tropical and tempera', 'Bays, tidal creeks, inlets, marshes, rivers and al'),
(5, 'https://www.georgiaaquarium.org/wp-content/uploads/2020/09/tiger-shark-2-1440x454.jpg', 5, 'The tiger shark is named for its distinctive \"tiger-striped\" pattern.', '16 feet (4.9 m) and ', 'Bony fishes, sharks, rays, marine mammals and rept', 'Tropical and tempera', 'Continental shelves or islands and coral reefs'),
(6, 'https://www.georgiaaquarium.org/wp-content/uploads/2018/08/Dolphin_1400x525_3-1-1400x454.jpg', 6, 'Adventure behind-the-scenes of the dolphin theater where you’ll to get to meet our dolphins face to face. You’ll be able to touch and feed these friendly creatures while you participate first-hand in a training session that shows how we care for our dolphins, and keep them healthy and happy.', '16 feet (4.9 m) and ', 'Bony fishes, sharks, rays, marine mammals and rept', 'Tropical and tempera', 'Continental shelves or islands and coral reefs'),
(7, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Esox_lucius_ZOO_1.jpg/220px-Esox_lucius_ZOO_1.jpg', 7, 'The northern pike (Esox lucius) is a species of carnivorous fish of the genus Esox (the pikes). They are typical of brackish and fresh waters of the Northern Hemisphere (i.e. holarctic in distribution). They are known simply as a pike in Great Britain, Ireland, and most of Eastern Europe, Canada and the United States.', 'length is about 40–5', 'Bony fishes, sharks, rays, marine mammals and rept', 'Animalia', 'Continental shelves or islands and coral reefs'),
(8, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Esox_lucius_ZOO_1.jpg/220px-Esox_lucius_ZOO_1.jpg', 8, 'Banded archerfish are known for their ability to “shoot down” insect prey by expelling beads of water from their mouth with considerable force.', '8 to 12 inches (20-3', 'Insects and plant material', 'Indonesia and Austra', 'Brackish mangrove estuaries');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `description`
--
ALTER TABLE `description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `animal_id` (`animal_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `description`
--
ALTER TABLE `description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `description`
--
ALTER TABLE `description`
  ADD CONSTRAINT `description_ibfk_1` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
