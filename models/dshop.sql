-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2019 at 04:36 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Musa', '2019-12-11 20:50:25');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `image` varchar(250) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` int(11) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Last_Name` varchar(40) NOT NULL,
  `Email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `Name`, `Last_Name`, `Email`) VALUES
(1, 'Abubakar Musa', 'Bala', 'abubakar.musa1@aun.edu.ng');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(225) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(225) NOT NULL,
  `auth_key` varchar(225) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_role` varchar(2) NOT NULL DEFAULT 'S',
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `username`, `email`, `password`, `auth_key`, `create_date`, `user_role`, `last_login`) VALUES
(3, 'Abubakar Musa', 'amb1', 'abubakar.musa1@aun.edu.ng', '202cb962ac59075b964b07152d234b70', 'htb4mSjyTiwa9mAKTFdditF67OtnKDQl', '2018-08-18 18:27:10', 'S', NULL),
(4, 'Sani Garba', 'sani1', 'sani.garba@gmail.com', '202cb962ac59075b964b07152d234b70', 'K8G9bgBCGtko_NthR0x0dw4kfB14DubF', '2018-08-22 14:28:04', 'S', NULL),
(10, ' Goodluck Jonathan', 'jonah1', 'jonah@gmail.com', '202cb962ac59075b964b07152d234b70', 'xw0Hn8MBOh6RbyoptHEqoVtB6yta3Q8v', '2018-08-28 09:26:00', 'S', NULL),
(11, 'Admin Admin', 'admin', 'admin@gmail.com', 'c3284d0f94606de1fd2af172aba15bf3', 'z5fXLv48iY1PFC7ML_YOolY496vVXjWH', '2018-08-28 13:07:29', 'A', '0000-00-00 00:00:00'),
(12, 'Demo', 'demo', 'demo@gmail.com', '6c5ac7b4d3bd3311f033f971196cfa75', 'CPhoMrzO-b5kyu0kcHaCHKCkxHBfaGPr', '2018-08-28 13:08:15', 'S', '0000-00-00 00:00:00'),
(13, 'Pathric Nboma', 'nboma23', 'fathric.nuboma@gmail.com', '202cb962ac59075b964b07152d234b70', 'PeeHlvFuASndPXthWP0uqokatLOVqX6b', '2018-08-30 14:45:26', 'S', NULL),
(14, 'Adeshina', 'adeshina', 'adeshino@gmai.com', 'c3c2bd601f0ec6a02ed4a4e55cc15b0b', 'RLWWr1GxhmBq9JL-_hUDs-E97H2vzxbd', '2019-02-21 15:43:29', 'S', NULL),
(15, 'Muhammad sani', 'muha01', 'muhammas.sani@gmail.com', '202cb962ac59075b964b07152d234b70', 'ejFDYXcIl8xz8B_JfjPpFBX7OD9oONBq', '2019-10-12 18:03:29', 'S', NULL),
(16, 'Maryam Abubakar Musa', '08038253437', 'maryam.bincom@gmail.com', '16b61243757eaa1576fd75c67aaf6c8d', 'eLPrtTmyF6ytkeGBsfAop8wwLr2Z3FrP', '2019-12-13 00:41:21', 'M', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`);

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `services_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
