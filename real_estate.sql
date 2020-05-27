-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2020 at 04:05 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `real_estate`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `comment` varchar(256) DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `furnituretype`
--

CREATE TABLE `furnituretype` (
  `id` int(11) NOT NULL,
  `type_name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `name`) VALUES
(1, 'Dehradun'),
(2, 'Haridwar'),
(3, 'Pauri Garhwal'),
(4, 'Rishikesh');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `property_name` varchar(120) NOT NULL,
  `price` varchar(50) NOT NULL,
  `rating` int(11) NOT NULL,
  `floors` int(11) NOT NULL,
  `bedrooms` int(11) NOT NULL,
  `kitchen` int(11) NOT NULL,
  `bathroom` int(11) NOT NULL,
  `area` varchar(30) NOT NULL,
  `location` int(11) NOT NULL,
  `address` varchar(80) NOT NULL,
  `ready_to_move` int(11) NOT NULL,
  `resale` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `furniture` int(11) NOT NULL,
  `dealer_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `contact` varchar(15) NOT NULL,
  `images` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `property_name`, `price`, `rating`, `floors`, `bedrooms`, `kitchen`, `bathroom`, `area`, `location`, `address`, `ready_to_move`, `resale`, `type`, `furniture`, `dealer_id`, `date`, `contact`, `images`) VALUES
(1, '2BHK House in Main Dehradun', '5 Crore', 4, 3, 5, 2, 2, '1200sqft', 1, 'Tea Estate, Banjarawala', 1, 1, 2, 2, 1, '2020-05-27 09:33:15', '7986875256', ''),
(2, '2BHK House in Main Dehradun', '5 Crore', 2, 1, 2, 2, 2, '800sqft', 1, 'Prem Nagar', 1, 1, 1, 1, 1, '2020-05-27 09:33:15', '8958975648', '');

-- --------------------------------------------------------

--
-- Table structure for table `propertytype`
--

CREATE TABLE `propertytype` (
  `id` int(11) NOT NULL,
  `type_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `propertytype`
--

INSERT INTO `propertytype` (`id`, `type_name`) VALUES
(1, 'Residential Land'),
(2, 'Independent House/Villa'),
(3, 'Residential Apartment'),
(4, 'Independent/Builder Floor'),
(5, 'Farm House');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `dealer_id` int(11) NOT NULL,
  `review` varchar(256) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(120) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `type` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `id` int(11) NOT NULL,
  `type_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `furnituretype`
--
ALTER TABLE `furnituretype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `propertytype`
--
ALTER TABLE `propertytype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `furnituretype`
--
ALTER TABLE `furnituretype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `propertytype`
--
ALTER TABLE `propertytype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usertype`
--
ALTER TABLE `usertype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
