-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2019 at 11:29 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `donor`
--

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `id` int(11) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `mname` varchar(30) DEFAULT NULL,
  `lname` varchar(45) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `b_type` varchar(2) NOT NULL,
  `bday` date NOT NULL,
  `h_address` varchar(50) NOT NULL,
  `city` varchar(30) NOT NULL,
  `don_date` date NOT NULL,
  `stats` text NOT NULL,
  `temp` varchar(10) NOT NULL,
  `pulse` varchar(10) NOT NULL,
  `bp` varchar(10) NOT NULL,
  `weight` int(11) NOT NULL,
  `hemoglobin` varchar(25) NOT NULL,
  `hbsag` varchar(10) NOT NULL,
  `aids` varchar(15) NOT NULL,
  `malaria_smear` varchar(20) NOT NULL,
  `hematocrit` varchar(15) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `mobile` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`id`, `fname`, `mname`, `lname`, `sex`, `b_type`, `bday`, `h_address`, `city`, `don_date`, `stats`, `temp`, `pulse`, `bp`, `weight`, `hemoglobin`, `hbsag`, `aids`, `malaria_smear`, `hematocrit`, `phone`, `mobile`) VALUES
(30, 'Dipta', '', 'Das', 'male', 'O+', '1994-07-16', 'Mirpur', 'Dhaka', '2015-04-18', 'Normal', '30', '60', '80 | 120', 64, '16 - 18 gm/dl', 'Negative', 'Negative', 'Negative', '45 - 62%', '2632181', '9827983762'),
(33, 'Tiger', '', 'Sharif', 'male', 'A+', '1994-07-16', 'Farmgate', 'Dhaka', '2015-04-18', 'Normal', '30', '60', '80 | 120', 64, '16 - 18 gm/dl', 'Negative', 'Negative', 'Negative', '45 - 62%', '2632181', '9827983762'),
(34, 'Mehedi', '', 'Sharif', 'male', 'B+', '1994-07-16', 'Gulistan', 'Dhaka', '2015-04-18', 'Normal', '30', '60', '80 | 120', 64, '16 - 18 gm/dl', 'Negative', 'Negative', 'Negative', '45 - 62%', '2632181', '9827983762');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `f_name` varchar(35) NOT NULL,
  `m_name` varchar(15) DEFAULT NULL,
  `l_name` varchar(35) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `b_day` date NOT NULL,
  `prc_nr` int(25) NOT NULL,
  `designation` varchar(35) NOT NULL,
  `landline` varchar(10) DEFAULT NULL,
  `mobile_nr` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `f_name`, `m_name`, `l_name`, `username`, `password`, `b_day`, `prc_nr`, `designation`, `landline`, `mobile_nr`) VALUES
(11, 'Varun', '', 'Shrivastava', 'vs_lala', '123', '1994-07-16', 2147483647, 'Student', '2632181', '9827983762'),
(30, 'Dipta', '', 'Das', 'dipta', '123', '1994-07-16', 214748484, 'Student', '2632184', '9827983748');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `b_type` varchar(10) NOT NULL,
  `address` varchar(500) NOT NULL,
  `city` varchar(100) NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `dob`, `gender`, `b_type`, `address`, `city`, `mobile`, `created_at`) VALUES
(1, 'Kazi', 'Nihal', 'nihal016@gmail.com', '1994-07-16', 'Male', 'B+', 'green road', 'dhaka', '1734035498', '2019-01-24 10:26:42'),
(4, 'Pallab', 'Khan', 'pk@gmail.com', '1994-07-16', 'Male', 'O+', 'green corner', 'dhaka', '1734035497', '2019-01-24 10:26:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `prc_nr` (`prc_nr`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
