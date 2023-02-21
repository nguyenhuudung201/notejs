-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2023 at 02:46 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `animal_id` int(11) NOT NULL,
  `img_bg` text NOT NULL,
  `img_content` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `time_post` date NOT NULL,
  `author` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `message` text DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `message`, `phone`, `email`) VALUES
(1, 'Lola Bailey', 'We have been both to the National Aquarium in DC and this one in Baltimore. This one is bright, where it needs to be. It has subdued lighting where it needs to be as well. A few things: children s tour groups need to go either in the afternoon or earlier morning and they need to be better supervised while there; staff needs to stop telling people to move along. We had the same problem at the Vaticans Sistine Chapel.', '0223456', 'LolaBailey@gmail.com'),
(2, 'Dominic Pelletier', 'We have been both to the National Aquarium in DC and this one in Baltimore. This one is bright, where it needs to be. It has subdued lighting where it needs to be as well. A few things: children s tour groups need to go either in the afternoon or earlier morning and they need to be better supervised while there; staff needs to stop telling people to move along. We had the same problem at the Vaticans Sistine Chapel.', '02234565', 'Dominic Pelletiery@gmail.com'),
(3, 'Abbie Carterr', 'We have been both to the National Aquarium in DC and this one in Baltimore. This one is bright, where it needs to be. It has subdued lighting where it needs to be as well. A few things: children s tour groups need to go either in the afternoon or earlier morning and they need to be better supervised while there; staff needs to stop telling people to move along. We had the same problem at the Vaticans Sistine Chapel.', '02234565', 'AbbieCarter@gmail.com');

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

-- --------------------------------------------------------

--
-- Table structure for table `eventt`
--

CREATE TABLE `eventt` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `BEGIN_time` date NOT NULL,
  `END_time` date NOT NULL,
  `price_personal` int(11) NOT NULL CHECK (`price_personal` > 0),
  `price_family` int(11) NOT NULL,
  `description` text NOT NULL,
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `eventt`
--

INSERT INTO `eventt` (`id`, `name`, `BEGIN_time`, `END_time`, `price_personal`, `price_family`, `description`, `images`) VALUES
(1, 'CHEERSPORT 2023', '2023-02-07', '2023-02-27', 27, 60, 'THREE CHEERS FOR FUN! Georgia Aquarium is excited to welcome all Cheersport attendees from near and far with a special discounted admission rate valid ANYTIME between February 15 – February 22.', 'https://www.georgiaaquarium.org/wp-content/uploads/2019/07/GAQ-Feb2019-695-Jellyfish-0010-1440x454.jpg'),
(2, 'Career Day 2023', '2023-02-07', '2023-03-27', 27, 60, 'Georgia Aquarium’s Education department is otter-ly excited to announce the return of our Career Day, Thursday, March 2nd from 10am to 1pm.', 'https://www.georgiaaquarium.org/wp-content/uploads/2019/07/GAQ-Feb2019-695-Jellyfish-0010-1440x454.jpg'),
(3, 'Protected: IMATA/ABMA Conference', '2023-02-07', '2023-02-07', 27, 60, 'Georgia Aquarium site visit for IMATA/ABMA conference. We look forward to seeing everyone on-site!.', 'https://www.georgiaaquarium.org/wp-content/uploads/2018/11/zoological-operations-animal-training-dolphins-internship-2-1440x454.jpg'),
(4, 'Georgia Aquarium 2023 5K', '2023-02-07', '2023-02-07', 27, 60, 'Georgia Aquarium’s 5K walk/run returns for its sixth year. Starting and finishing at one of the most recognizable landmarks in downtown Atlanta, this Peachtree Qualifier 3.1-mile course is a quick “out and back” run/jog/walk sponsored by Dermaglove returns for all ages..', 'https://www.georgiaaquarium.org/wp-content/uploads/2019/07/GAQ-Feb2019-695-Jellyfish-0010-1440x454.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `name`) VALUES
(1, 'African Penguins'),
(2, 'Beluga Whale'),
(3, 'California Sea Lion'),
(4, 'Common Bottlenose Dolphin'),
(5, 'Tiger Shark'),
(6, 'Animal Encounters'),
(7, 'Pike Fish'),
(8, 'Marline Fish'),
(9, 'Boar Fish'),
(10, 'Seahorse'),
(11, 'Hog Fish'),
(12, 'Threadfin'),
(13, 'Clown Fish'),
(14, 'Sword Fish'),
(15, 'Molidae'),
(16, 'Blow Fish');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `conmment` text NOT NULL,
  `img_rating` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `event_id`, `name`, `conmment`, `img_rating`) VALUES
(1, 1, 'sara', 'Have try it, very satisfied DIY overflow system.....any comment...', 'https://templatekit.jegtheme.com/aquavist/wp-content/uploads/sites/129/2021/08/bearded-male-hunter-tries-on-hat-in-gun-store-e1628080948327-300x300.jpg'),
(2, 2, 'saxra', 'Have try it, very satisfied DIY overflow system.....any comment...', 'https://templatekit.jegtheme.com/aquavist/wp-content/uploads/sites/129/2021/08/bearded-male-hunter-tries-on-hat-in-gun-store-e1628080948327-300x300.jpg'),
(3, 4, 'sarfa', 'Have try it, very satisfied DIY overflow system.....any comment...', 'https://templatekit.jegtheme.com/aquavist/wp-content/uploads/sites/129/2021/08/bearded-male-hunter-tries-on-hat-in-gun-store-e1628080948327-300x300.jpg'),
(4, 2, 'sarfa', 'Have try it, very satisfied DIY overflow system.....any comment...', 'https://templatekit.jegtheme.com/aquavist/wp-content/uploads/sites/129/2021/08/bearded-male-hunter-tries-on-hat-in-gun-store-e1628080948327-300x300.jpg'),
(5, 2, 'sasra', 'Have try it, very satisfied DIY overflow system.....any comment...', 'https://templatekit.jegtheme.com/aquavist/wp-content/uploads/sites/129/2021/08/bearded-male-hunter-tries-on-hat-in-gun-store-e1628080948327-300x300.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `unit` int(11) NOT NULL,
  `price` int(11) NOT NULL CHECK (`price` > 0),
  `time_vist` date NOT NULL,
  `phone_guest` varchar(20) NOT NULL,
  `name_guest` varchar(100) NOT NULL,
  `email_guest` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `event_id`, `unit`, `price`, `time_vist`, `phone_guest`, `name_guest`, `email_guest`) VALUES
(1, 1, 2, 20, '0000-00-00', '03333666', 'alex', 'alex@gmail.com'),
(2, 1, 1, 50, '0000-00-00', '033313666', 'sara', 'sara@gmail.com'),
(3, 2, 4, 240, '0000-00-00', '033133666', 'willam', 'william@gmail.com'),
(4, 3, 15, 220, '0000-00-00', '0333366645', 'san', 'sanx@gmail.com'),
(5, 2, 20, 220, '0000-00-00', '033336667', 'son', 'son@gmail.com'),
(6, 3, 22, 205, '0000-00-00', '033336666', 'alexsanro', 'alexsanro@gmail.com'),
(7, 2, 21, 205, '0000-00-00', '033336566', 'gata', 'afax@gmail.com'),
(8, 2, 12, 204, '0000-00-00', '0333253666', 'asax', 'fa@gmail.com'),
(9, 3, 25, 204, '0000-00-00', '033233666', 'fami', 'alex@gmail.com');

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
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_blog_animal` (`animal_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `description`
--
ALTER TABLE `description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `animal_id` (`animal_id`);

--
-- Indexes for table `eventt`
--
ALTER TABLE `eventt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rating_eventt` (`event_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animal`
--
ALTER TABLE `animal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `description`
--
ALTER TABLE `description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `eventt`
--
ALTER TABLE `eventt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`Gallery_id`) REFERENCES `gallery` (`id`);

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `fk_blog_animal` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`id`);

--
-- Constraints for table `description`
--
ALTER TABLE `description`
  ADD CONSTRAINT `description_ibfk_1` FOREIGN KEY (`animal_id`) REFERENCES `animal` (`id`);

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `fk_rating_eventt` FOREIGN KEY (`event_id`) REFERENCES `eventt` (`id`);

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `fk_ticket_eventt` FOREIGN KEY (`event_id`) REFERENCES `eventt` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
