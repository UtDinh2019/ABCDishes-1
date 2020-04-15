-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2020 at 05:01 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abcd_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `ID` int(6) NOT NULL,
  `Name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `State` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Keywords` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Recipe_links` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Video_links` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Notes` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`ID`, `Name`, `Type`, `State`, `Country`, `Description`, `Keywords`, `Recipe_links`, `Video_links`, `Status`, `Notes`, `Image`) VALUES
(1, 'CHICKEN MAKHANI (BUTTER CHICKEN)', 'test2 ', 'indian', 'indian', 'Butter chicken is mouth-watering, tender chicken, cooked in a spiced tomato sauce.', 'new ', 'https://www.blueosa.com/the-top-10-indian-dishes/', 'none', 'approved', 'Always make the gravy by first cooking fresh tomato, garlic, and cardamom down into a bright red pul', ''),
(2, 'AMOSAS (DEEP-FRIED POTATO/VEGGIE DUMPLING)', 'test', 'Michigan', 'United States', 'Spiced potatoes, onions, peas, and lentils fill traditional samosas. But sometimes, they are made wi', 'dasf', 'https://www.blueosa.com/the-top-10-indian-dishes/', 'none', 'approved', 'Good news for all of you Michigan food lovers and solely plant-based eaters. Indian samosas are usua', 'dish2.jfif'),
(3, 'ALOO GOBI (POTATO AND CAULIFLOWER)', 'test', 'Bangalore', 'India', 'Aloo Gobi is a dry, vegan Indian dish, made with potatoes (aloo), cauliflower (gobi), and Indian spi', '', 'https://www.blueosa.com/the-top-10-indian-dishes/', 'None', 'In review ', 'Aloo Gobi occasionally contains kalonji and curry leaves as well. Other common ingredients include g', 'dish3.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `preferences`
--

CREATE TABLE `preferences` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `value` int(11) NOT NULL,
  `comments` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `preferences`
--

INSERT INTO `preferences` (`id`, `name`, `value`, `comments`) VALUES
(1, 'NO_OF_TOPICS_PER_ROW', 5, 'This is the number of topics, per row, on home page'),
(2, 'NO_OF_QUESTIONS_TO_SHOW', 5, 'The number of Question per quiz');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `hash` varchar(200) NOT NULL,
  `role` varchar(20) NOT NULL,
  `modified_time` date NOT NULL,
  `created_time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `hash`, `role`, `modified_time`, `created_time`) VALUES
(1, 'new', 'new', 'new', '', 'new', '0000-00-00', '0000-00-00'),
(3, 'SILC', 'Tester', 'test@silcmn.com', '$2y$10$zFAG5GBNtf.5BpowMqZSputSLeG8OzfKACpjAMsePjZhu.TnvU/Bu', 'admin', '0000-00-00', '0000-00-00'),
(4, 'SILC', 'CS320', 'cs320@silcmn.com', '$2y$10$zFAG5GBNtf.5BpowMqZSputSLeG8OzfKACpjAMsePjZhu.TnvU/Bu', 'admin', '0000-00-00', '0000-00-00'),
(8, 'Dylon', 'Lowinske', 'dylon.lowinske@gmail.com', '$2y$10$srP1fF3K.Pi/PWzGJBXuBOZikWVcYFKQ.eRo5WYWBimg2lvoXg5/a', 'admin', '0000-00-00', '0000-00-00'),
(9, 'test', 'test', 'test', '$2y$10$jGsIRWqjuWdfGmBz5kFaguzuCBUl0SZviaQILQ0aVQJHtQtQXC5kG', 'test', '0000-00-00', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `preferences`
--
ALTER TABLE `preferences`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
