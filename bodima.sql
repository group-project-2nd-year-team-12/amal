-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2020 at 05:08 PM
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
  `level` varchar(20) NOT NULL DEFAULT 'administrator',
  `user_id` int(25) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `address` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `boarder`
--

CREATE TABLE `boarder` (
  `B_id` int(50) NOT NULL,
  `level` varchar(50) NOT NULL DEFAULT 'boarder',
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `address` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `boarder`
--

INSERT INTO `boarder` (`B_id`, `level`, `email`, `password`, `token`, `first_name`, `last_name`, `address`) VALUES
(1, 'boarder', 'lakshanamal100@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '9a8bb46e0aac76114827acd508909787ec251ec0c2aa2fb861412cf1689a4ddba70f506c9afa0643d93b24e44c472661643c', 'Ishan', 'Resmika', '310/1, Delgasduwa,Dodanduwa');

-- --------------------------------------------------------

--
-- Table structure for table `boardings_owner`
--

CREATE TABLE `boardings_owner` (
  `BO_id` int(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `level` varchar(50) NOT NULL DEFAULT 'boardings_owner',
  `password` varchar(250) NOT NULL,
  `token` varchar(250) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `address` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `boardings_owner`
--

INSERT INTO `boardings_owner` (`BO_id`, `email`, `level`, `password`, `token`, `first_name`, `last_name`, `address`) VALUES
(1, '2018cs092@stu.ucsc.cmb.ac.lk', 'boardings_owner', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'b6c351c2372493439a8aa6b377555ac4ab2a50d2c6a03fb88a8871c4e36ade089bcb431256df5c6c36ec92eadd77b4cb6c72', 'Amal', 'Lakshan', '310/1 ,Delgasduwa, Dodanduwa');

-- --------------------------------------------------------

--
-- Table structure for table `food_request`
--

CREATE TABLE `food_request` (
  `request_id` int(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(250) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `is_accepted` int(1) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `quantity` int(25) NOT NULL,
  `order_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food_request`
--

INSERT INTO `food_request` (`request_id`, `email`, `address`, `first_name`, `last_name`, `is_accepted`, `product_name`, `quantity`, `order_id`) VALUES
(259, 'lakshanamal100@gmail.com', '310/1, Delgasduwa,Dodanduwa', 'Ishan', 'Resmika', 0, 'phone1 ', 1, 2147483647),
(260, 'lakshanamal100@gmail.com', '310/1, Delgasduwa,Dodanduwa', 'Ishan', 'Resmika', 0, 'phone2 ', 1, 2147483647),
(261, 'lakshanamal100@gmail.com', '310/1, Delgasduwa,Dodanduwa', 'Ishan', 'Resmika', 0, 'phone2 ', 1, 2147483647),
(262, 'lakshanamal100@gmail.com', '310/1, Delgasduwa,Dodanduwa', 'Ishan', 'Resmika', 0, 'phone2 ', 1, 1602250386),
(263, 'lakshanamal100@gmail.com', '310/1, Delgasduwa,Dodanduwa', 'Ishan', 'Resmika', 0, 'phone3 ', 1, 1602250386),
(264, '2018cs092@stu.ucsc.cmb.ac.lk', '310/1 ,Delgasduwa, Dodanduwa', 'Amal', 'Lakshan', 0, 'phone2 ', 1, 1602250483),
(265, 'lakshanamal100@gmail.com', '310/1, Delgasduwa,Dodanduwa', 'Ishan', 'Resmika', 0, 'phone2 ', 1, 1602250579),
(266, 'lakshanamal100@gmail.com', '310/1, Delgasduwa,Dodanduwa', 'Ishan', 'Resmika', 0, 'phone3 ', 1, 1602250579);

-- --------------------------------------------------------

--
-- Table structure for table `food_supplier`
--

CREATE TABLE `food_supplier` (
  `f_id` int(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `token` varchar(250) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `level` varchar(25) NOT NULL DEFAULT 'food_supplier',
  `address` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food_supplier`
--

INSERT INTO `food_supplier` (`f_id`, `email`, `password`, `token`, `first_name`, `last_name`, `level`, `address`) VALUES
(1, 'projectbodima4group12@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'e5d8bae050c5853900781845961896bdf61b4d0be5706ed79cb0e0011b4bc33a8b208918cdb57410f218123695b19841606b', 'nimasha', 'supunpraba', 'food_supplier', '');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `marchent_id` int(100) NOT NULL,
  `order_id` int(100) NOT NULL,
  `pay_amount` int(100) NOT NULL,
  `pay_currency` varchar(100) NOT NULL,
  `status_code` int(11) NOT NULL,
  `md5sig` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`marchent_id`, `order_id`, `pay_amount`, `pay_currency`, `status_code`, `md5sig`) VALUES
(456, 0, 0, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `image`, `price`) VALUES
(1, 'Mixed Rice', '../resource/img/product/product1.png', 399.99),
(2, 'Chicken Rice', '../resource/img/product/product2.jpg', 299.99),
(3, 'Rice and Curry', '../resource/img/product/product3.jpg', 149.99);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`a_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `boarder`
--
ALTER TABLE `boarder`
  ADD PRIMARY KEY (`B_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `boardings_owner`
--
ALTER TABLE `boardings_owner`
  ADD PRIMARY KEY (`BO_id`);

--
-- Indexes for table `food_request`
--
ALTER TABLE `food_request`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `food_supplier`
--
ALTER TABLE `food_supplier`
  ADD PRIMARY KEY (`f_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

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
  MODIFY `B_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `boardings_owner`
--
ALTER TABLE `boardings_owner`
  MODIFY `BO_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `food_request`
--
ALTER TABLE `food_request`
  MODIFY `request_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `food_supplier`
--
ALTER TABLE `food_supplier`
  MODIFY `f_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
