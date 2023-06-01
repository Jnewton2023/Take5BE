-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 01, 2023 at 07:10 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testDatabase`
--
CREATE DATABASE IF NOT EXISTS `testDatabase` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `testDatabase`;

-- --------------------------------------------------------

--
-- Table structure for table `Bookings`
--

CREATE TABLE `Bookings` (
  `booking_id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `booking_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Bookings`
--

INSERT INTO `Bookings` (`booking_id`, `service_id`, `package_id`, `vehicle_id`, `booking_date`) VALUES
(4001, 1001, 2001, 3001, '2023-05-10'),
(4002, 1002, 2002, 3002, '2023-05-11'),
(4003, 1003, 2003, 3003, '2023-05-12');

-- --------------------------------------------------------

--
-- Table structure for table `Packages`
--

CREATE TABLE `Packages` (
  `package_code` int(11) DEFAULT NULL,
  `package_type` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Packages`
--

INSERT INTO `Packages` (`package_code`, `package_type`, `id`) VALUES
(2001, 'Gold Detailing', 1),
(2002, 'Diamond Detailing', 2),
(2003, 'Platinum Detailing', 3);

-- --------------------------------------------------------

--
-- Table structure for table `Services`
--

CREATE TABLE `Services` (
  `service_code` int(11) DEFAULT NULL,
  `service_type` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Services`
--

INSERT INTO `Services` (`service_code`, `service_type`, `id`) VALUES
(1001, 'Exterior Detailing', 1),
(1002, 'Interior Detailing', 2),
(1003, 'Full Detailing', 3);

-- --------------------------------------------------------

--
-- Table structure for table `Vehicles`
--

CREATE TABLE `Vehicles` (
  `vehicle_id` int(11) DEFAULT NULL,
  `vehicle_type` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Vehicles`
--

INSERT INTO `Vehicles` (`vehicle_id`, `vehicle_type`, `id`) VALUES
(3001, 'Nissan Altima', 1),
(3002, 'Toyota Camry', 2),
(3003, 'Honda Accord', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Bookings`
--
ALTER TABLE `Bookings`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `Packages`
--
ALTER TABLE `Packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Services`
--
ALTER TABLE `Services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Vehicles`
--
ALTER TABLE `Vehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Packages`
--
ALTER TABLE `Packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Services`
--
ALTER TABLE `Services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Vehicles`
--
ALTER TABLE `Vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
