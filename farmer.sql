-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2023 at 02:11 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farmer`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `name` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `companyID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`name`, `location`, `email`, `companyID`) VALUES
('Mumias', 'Bungoma', 'sony57@gmail.com', 7);

-- --------------------------------------------------------

--
-- Table structure for table `farmers`
--

CREATE TABLE `farmers` (
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phonenumber` varchar(50) NOT NULL,
  `nationalID` int(50) NOT NULL,
  `companyID` int(11) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `farmers`
--

INSERT INTO `farmers` (`username`, `email`, `phonenumber`, `nationalID`, `companyID`, `password`) VALUES
('famer', 'owuorpaul136@gmail.com', '0742444032', 38261037, 7, '97f974881b3726d9a77014b5f3b4d795'),
('paul', 'owuorpaul136@gmail.com', '0707999731', 12345678, 7, '6c63212ab48e8401eaf6b59b95d816a9'),
('Peter Njoroge', 'Njoroge12@gmail.com', '0786582588', 352388932, 7, '12bda8caa70587b7e7f5d078ca72b17f'),
('Clinton Otieno', 'clinton456@gmail.com', '0786582588', 80925567, 7, '12bda8caa70587b7e7f5d078ca72b17f'),
('Wafula', 'wafula123@gmail.com', '078578463', 894657575, 7, 'cbe83dcaeabd4e0e7de99e46cfbfa34e'),
('Ouma', 'ouma23@gmail.com', '0792654232', 437832655, 7, 'e3f89de5f5841dbd4a00ad5fde606403'),
('calvince', 'cokoth172', '09876543223456789', 2147483647, 7, 'eccbc87e4b5ce2fe28308fd9f2a7baf3'),
('Sarah', 'sara3455@gamial', '07432434545', 995888874, 7, '9e9d7a08e048e9d604b79460b54969c3');

-- --------------------------------------------------------

--
-- Table structure for table `field officer`
--

CREATE TABLE `field officer` (
  `nationalID` int(50) NOT NULL,
  `employNo` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `companyID` int(11) NOT NULL,
  `officerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `input`
--

CREATE TABLE `input` (
  `inputID` int(11) NOT NULL,
  `inputname` varchar(50) NOT NULL,
  `inputprice tag` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `nationalID` int(50) NOT NULL,
  `employNo` varchar(50) NOT NULL,
  `fName` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `managerID` int(11) NOT NULL,
  `companyID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`nationalID`, `employNo`, `fName`, `middlename`, `lname`, `managerID`, `companyID`) VALUES
(38261037, 'Emp/0001/2022', 'owuor ', 'Achieng', 'otieno', 3, 7),
(38261037, 'Emp/0001/2022', 'owuor ', 'Achieng', 'otieno', 5, 7),
(38261037, 'Emp/0001/2022', 'owuor ', 'Paul', 'odongo', 6, 7),
(2147483647, 'Emp/0023/2022', 'Vincent', 'Ouma', 'Otieno', 34, 7),
(2147483647, 'Emp/0001/2022', 'ouma', 'Paul', 'odongo', 45, 7),
(38261037, 'Emp/0001/2022', 'owuor ', 'Paul', 'odongo', 78, 7),
(40963872, 'Emp/002/2022', 'owuor ', 'Paul', 'otieno', 90, 7),
(40963872, 'Emp/002/2022', 'owuor ', 'Paul', 'otieno', 99, 7),
(38261037, 'Emp/009/2022', 'Rose', 'kibet', 'sarah', 4577, 7),
(2147483647, 'Emp/0001/2022', 'ouma', 'Paul', 'odongo', 8998, 7);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `code` varchar(100) NOT NULL,
  `price` double(9,2) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `price`, `image`) VALUES
(1, 'Fertilizer', '001', 3000.00, 'no image'),
(2, 'Maize seed', '002', 600.00, 'no image'),
(3, 'Bean seed', '003', 340.00, 'no image'),
(4, 'Millet Seed', '004', 500.00, 'no image'),
(5, 'Panga', '005', 450.00, 'no image'),
(6, 'Jembe', '006', 350.00, 'no image'),
(7, 'SeedCane', 'code', 1200.00, 'paul at qatar.png');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `nationalID` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `empNo` varchar(50) NOT NULL,
  `phone number` varchar(50) NOT NULL,
  `supplierID` int(11) NOT NULL,
  `companyID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `create_datetime`) VALUES
(7, 'paul', 'owuorpaul136@gmail.com', '6c63212ab48e8401eaf6b59b95d816a9', '2022-10-25 23:28:30'),
(8, 'elton', '', 'd5fe7c33b7bcd2823685dfb69a4a2a64', '2022-10-26 00:36:13'),
(9, 'Mercy', 'mercy234@gmail.com', 'bf2ff2ed3c83c3c5ce510c4666f6fb0d', '2022-10-28 16:26:38'),
(10, 'kevin', 'kevinbarasa266@', 'c9e6c0bfb5e5b6ef445cc0564a4fc5b0', '2022-10-28 20:43:03'),
(11, 'farmer', 'farmer134@gmail.com', '97f974881b3726d9a77014b5f3b4d795', '2022-11-14 13:04:50'),
(12, 'paul', '', '6c63212ab48e8401eaf6b59b95d816a9', '2022-11-23 10:07:25'),
(13, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:20'),
(14, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:21'),
(15, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:22'),
(16, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:22'),
(17, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:23'),
(18, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:24'),
(19, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:24'),
(20, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:24'),
(21, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:24'),
(22, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:24'),
(23, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:25'),
(24, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:25'),
(25, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:25'),
(26, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:25'),
(27, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:25'),
(28, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:25'),
(29, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:25'),
(30, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:25'),
(31, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:26'),
(32, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:26'),
(33, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:27'),
(34, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:27'),
(35, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:27'),
(36, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:27'),
(37, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:28'),
(38, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:28'),
(39, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:28'),
(40, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:28'),
(41, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:28'),
(42, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:28'),
(43, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:28'),
(44, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:28'),
(45, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:28'),
(46, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:28'),
(47, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:28'),
(48, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:28'),
(49, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:28'),
(50, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:28'),
(51, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:28'),
(52, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:28'),
(53, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:28'),
(54, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:28'),
(55, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:28'),
(56, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:28'),
(57, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:28'),
(58, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:28'),
(59, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(60, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(61, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(62, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(63, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(64, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(65, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(66, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(67, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(68, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(69, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(70, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(71, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(72, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(73, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(74, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(75, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(76, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(77, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(78, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(79, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(80, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(81, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(82, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(83, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(84, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(85, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(86, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(87, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(88, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(89, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(90, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(91, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(92, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(93, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:29'),
(94, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:30'),
(95, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:30'),
(96, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:30'),
(97, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:30'),
(98, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:30'),
(99, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:30'),
(100, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:30'),
(101, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:30'),
(102, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:30'),
(103, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:30'),
(104, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:30'),
(105, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:30'),
(106, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:30'),
(107, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:30'),
(108, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:30'),
(109, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:30'),
(110, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:30'),
(111, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:30'),
(112, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:30'),
(113, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:30'),
(114, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:30'),
(115, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:30'),
(116, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:30'),
(117, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:30'),
(118, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:30'),
(119, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:30'),
(120, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:30'),
(121, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:30'),
(122, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:30'),
(123, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:30'),
(124, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:30'),
(125, 'Sarah', '', '9e9d7a08e048e9d604b79460b54969c3', '2023-02-06 14:26:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`companyID`);

--
-- Indexes for table `farmers`
--
ALTER TABLE `farmers`
  ADD KEY `companyID` (`companyID`);

--
-- Indexes for table `field officer`
--
ALTER TABLE `field officer`
  ADD PRIMARY KEY (`officerID`),
  ADD KEY `companyID` (`companyID`);

--
-- Indexes for table `input`
--
ALTER TABLE `input`
  ADD PRIMARY KEY (`inputID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`managerID`),
  ADD KEY `companyID` (`companyID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplierID`),
  ADD KEY `companyID` (`companyID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `field officer`
--
ALTER TABLE `field officer`
  MODIFY `officerID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `input`
--
ALTER TABLE `input`
  MODIFY `inputID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `managerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87989;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplierID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `farmers`
--
ALTER TABLE `farmers`
  ADD CONSTRAINT `farmers_ibfk_1` FOREIGN KEY (`companyID`) REFERENCES `company` (`companyID`) ON UPDATE CASCADE;

--
-- Constraints for table `field officer`
--
ALTER TABLE `field officer`
  ADD CONSTRAINT `field officer_ibfk_1` FOREIGN KEY (`companyID`) REFERENCES `company` (`companyID`) ON UPDATE CASCADE;

--
-- Constraints for table `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`companyID`) REFERENCES `company` (`companyID`) ON UPDATE CASCADE;

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`companyID`) REFERENCES `company` (`companyID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
