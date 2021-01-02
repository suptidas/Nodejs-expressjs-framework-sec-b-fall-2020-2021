-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2020 at 05:33 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `node1`
--

-- --------------------------------------------------------

--
-- Table structure for table `euser`
--

CREATE TABLE `euser` (
  `ID` int(10) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `ContactNO` int(11) NOT NULL,
  `NID` int(15) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `UserType` varchar(20) NOT NULL,
  `Address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `euser`
--

INSERT INTO `euser` (`ID`, `UserName`, `Name`, `Password`, `Email`, `ContactNO`, `NID`, `Gender`, `UserType`, `Address`) VALUES
(2, 'Nafiz', 'Nafiz Ahamed Nahid', '1234', 'Na@gmail.com', 123456, 2123435324, 'Male', 'admin', 'Jurai,Dhaka1204'),
(3, 'Nahid', 'nafizahmednahid', '12345', 'A@gmail.com', 23423, 123, 'male', 'admin', 'Dhaka'),
(4, 'sdgsfgfdg', 'asdsdfsrsdg', '12345', 'admin@yahoo.com', 23423, 123, 'male', 'admin', 'Dhaka'),
(5, 'Sadat Ebne', 'Sadat', '1234', 's@gmail.com', 24253, 5345635, 'Male', 'manager', 'Pabna'),
(7, 'Miraz Hossain', 'Miraz', '1234', 's@gmail.com', 24253, 5345635, 'Male', 'user', 'Dhaka'),
(8, 'admin1', 'N a', '1234', 'A@gmail.com', 456456, 123, 'male', 'admin', 'Dhaka'),
(9, 'admin', 'n', '1234', 'A@gmail.com', 88, 123, 'male', 'manager', 'Dhaka'),
(10, 'a', 'w', '1234', 'A@gmail.com', 234235, 27, 'male', 'user', 'Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(20) NOT NULL,
  `country` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `cost` int(50) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `country`, `place`, `cost`, `status`) VALUES
(13, 'Arab Amirat', 'Dubai', 33000, 1),
(14, 'Canada', 'Torontto', 100000, 1),
(15, 'Usa', 'Newyork', 200000, 1),
(17, 'Singapore', 'Singapore', 400000, 1),
(18, 'UK', 'London', 500000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `res` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `type`) VALUES
(28, 'supti', 'supti', 'Principal_Officer'),
(29, 'senior1', 'senior1', 'Senior_Officer'),
(30, 'general', 'general', 'General_Employee'),
(31, 'pink', 'pink', 'General_User'),
(33, 'ejs', 'ejs', 'General_Employee'),
(34, 'express', 'express', 'Principal_Officer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
