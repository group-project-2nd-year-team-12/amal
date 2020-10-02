-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2020 at 01:02 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bodima`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `a_id` int(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(20) NOT NULL DEFAULT 'administrator'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`a_id`, `email`, `password`, `level`) VALUES
(1, 'projectbodima4group12@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `boarder`
--

CREATE TABLE `boarder` (
  `B_id` int(50) NOT NULL,
  `level` varchar(50) NOT NULL DEFAULT 'boarder',
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `boarder`
--

INSERT INTO `boarder` (`B_id`, `level`, `email`, `password`, `token`) VALUES
(1, 'boarder', '2018cs092@stu.ucsc.cmb.ac.lk', '7c4a8d09ca3762af61e59520943dc26494f8941b', '31410abd4068512f7ce232098361232a2a4f34651a9fb5714d74286d52fb5dd92099ff227eef75ebc64fc026f8e84d693fc5');

-- --------------------------------------------------------

--
-- Table structure for table `boarding_owner`
--

CREATE TABLE `boarding_owner` (
  `BO_id` int(50) NOT NULL,
  `level` varchar(50) NOT NULL DEFAULT 'boarding_owner',
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `boarding_owner`
--

INSERT INTO `boarding_owner` (`BO_id`, `level`, `email`, `password`, `token`) VALUES
(1, 'boarding_owner', 'lakshanamal100@gmail.com', 'a4d92c18228030fab859c3681fe59e6e98ebd542', '5074d9f56f4411bf186c219d7fe8c2c905859153ccbfcf67e0656a6952afee9643fd39fee1fc72a321fcaee5c10aaac7df1e');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`a_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `boarder`
--
ALTER TABLE `boarder`
  ADD PRIMARY KEY (`B_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `boarding_owner`
--
ALTER TABLE `boarding_owner`
  ADD PRIMARY KEY (`BO_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `a_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `boarder`
--
ALTER TABLE `boarder`
  MODIFY `B_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `boarding_owner`
--
ALTER TABLE `boarding_owner`
  MODIFY `BO_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`user_email`) REFERENCES `boarding_owner` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
