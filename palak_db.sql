-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2021 at 06:38 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `palak_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `depatement`
--

CREATE TABLE `depatement` (
  `deptid` varchar(100) NOT NULL,
  `deptname` varchar(256) NOT NULL,
  `deptloc` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `depatement`
--

INSERT INTO `depatement` (`deptid`, `deptname`, `deptloc`) VALUES
('D001', 'Information and Tech', 'Mumbai'),
('D002', 'Sales', 'Delhi'),
('D003', 'Production', 'Jamshedpur'),
('D004', 'Headquater', 'Mumbai'),
('D005', 'Accounts', 'Delhi');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `eid` int(11) NOT NULL,
  `empname` varchar(256) NOT NULL,
  `empemail` varchar(265) NOT NULL DEFAULT 'tisco@tata.com',
  `phone` int(11) NOT NULL,
  `joindate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deptid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`eid`, `empname`, `empemail`, `phone`, `joindate`, `deptid`) VALUES
(1001, 'Palak', 'palak0810@gmail.com', 2147483647, '2021-11-28 09:02:44', 'D001'),
(1002, 'subhankar', 'tisco@tata.com', 2147483647, '2021-11-28 09:04:04', 'D002'),
(1003, 'aditya', 'adi@yahoo.com', 2147483647, '2021-11-28 09:07:48', 'D004'),
(1004, 'prakash', 'prakusinha0921@gmail.com', 234455534, '1992-12-20 00:00:00', 'D002'),
(1005, 'senjuti', 'senjuti0810@gmail.com', 2147483647, '2000-01-23 00:00:00', 'D003'),
(1006, 'ankita', 'ankitasinha05@gmail.com', 2147483647, '1992-02-10 00:00:00', 'D001'),
(1007, 'riya', 'riya0921@gmail.com', 532455432, '1993-10-12 00:00:00', 'D001');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `depatement`
--
ALTER TABLE `depatement`
  ADD PRIMARY KEY (`deptid`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`eid`),
  ADD KEY `deptid` (`deptid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`deptid`) REFERENCES `depatement` (`deptid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
