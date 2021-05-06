-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2020 at 11:12 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `as_php`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `a_login_id` int(11) NOT NULL,
  `a_name` varchar(60) COLLATE utf8_bin NOT NULL,
  `a_email` varchar(60) COLLATE utf8_bin NOT NULL,
  `a_password` varchar(60) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`a_login_id`, `a_name`, `a_email`, `a_password`) VALUES
(1, 'Admin', 'admin@as.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `pid` int(11) NOT NULL,
  `pname` varchar(60) COLLATE utf8_bin NOT NULL,
  `pdop` date NOT NULL,
  `pava` int(11) NOT NULL,
  `ptotal` int(11) NOT NULL,
  `poriginalcost` int(11) NOT NULL,
  `psellingcost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`pid`, `pname`, `pdop`, `pava`, `ptotal`, `poriginalcost`, `psellingcost`) VALUES
(2, 'Templates', '2020-05-03', 2, 5, 2000, 3400),
(4, 'Maintenance', '2020-05-02', 5, 5, 4000, 5500),
(5, 'HTML Card', '2020-05-01', 5, 5, 4000, 4500),
(6, 'Web Maintenance', '2020-05-02', 5, 5, 4000, 5500),
(11, 'Templates', '2020-05-04', 5, 5, 2000, 3400);

-- --------------------------------------------------------

--
-- Table structure for table `assingwork`
--

CREATE TABLE `assingwork` (
  `rno` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `request_info` text COLLATE utf8_bin NOT NULL,
  `request_desc` text COLLATE utf8_bin NOT NULL,
  `requester_name` varchar(60) COLLATE utf8_bin NOT NULL,
  `requester_add1` text COLLATE utf8_bin NOT NULL,
  `requester_add2` text COLLATE utf8_bin NOT NULL,
  `requester_city` varchar(60) COLLATE utf8_bin NOT NULL,
  `requester_state` varchar(60) COLLATE utf8_bin NOT NULL,
  `requester_zip` int(11) NOT NULL,
  `requester_email` varchar(60) COLLATE utf8_bin NOT NULL,
  `requester_mobile` bigint(20) NOT NULL,
  `assign_deve` varchar(60) COLLATE utf8_bin NOT NULL,
  `assign_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `assingwork`
--

INSERT INTO `assingwork` (`rno`, `request_id`, `request_info`, `request_desc`, `requester_name`, `requester_add1`, `requester_add2`, `requester_city`, `requester_state`, `requester_zip`, `requester_email`, `requester_mobile`, `assign_deve`, `assign_date`) VALUES
(4, 9, 'contact form', 'contact form disabled', 'john', '67/55', 'west colony', 'ranchi', 'jjharkhand', 899790, 'john@as.com', 88946456788, 'Prekshika', '2020-05-03'),
(5, 10, 'registration ', 'registration form not worked', 'john', '40/17', 'East Colony', 'chapra', 'Bihar', 778680, 'john@as.com', 6768798087, 'Kishan', '2020-05-02'),
(6, 11, 'dashboard not visible', 'dashboard not visible to admin', 'Sonam', '40/17', 'East Colony', 'Siwan', 'Bihar', 778680, 'sonam@as.com', 6768798087, 'Kishan', '2020-05-03');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `custid` int(11) NOT NULL,
  `custname` varchar(60) COLLATE utf8_bin NOT NULL,
  `custadd` varchar(60) COLLATE utf8_bin NOT NULL,
  `cpname` varchar(60) COLLATE utf8_bin NOT NULL,
  `cpquantity` int(11) NOT NULL,
  `cpeach` int(11) NOT NULL,
  `cptotal` int(11) NOT NULL,
  `cpdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`custid`, `custname`, `custadd`, `cpname`, `cpquantity`, `cpeach`, `cptotal`, `cpdate`) VALUES
(1, 'Pawan', 'Kolkata', 'Templates', 3, 3400, 10200, '2020-05-04');

-- --------------------------------------------------------

--
-- Table structure for table `developer`
--

CREATE TABLE `developer` (
  `empid` int(11) NOT NULL,
  `empName` varchar(60) COLLATE utf8_bin NOT NULL,
  `empCity` varchar(60) COLLATE utf8_bin NOT NULL,
  `empMobile` bigint(20) NOT NULL,
  `empEmail` varchar(60) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `developer`
--

INSERT INTO `developer` (`empid`, `empName`, `empCity`, `empMobile`, `empEmail`) VALUES
(1, 'Prekshika', 'Delhi', 9989765900, 'prekshika@as.com'),
(3, 'Kishan', 'Kolkata', 9989765900, 'kishan@as.com');

-- --------------------------------------------------------

--
-- Table structure for table `requesterlogin`
--

CREATE TABLE `requesterlogin` (
  `r_login_id` int(11) NOT NULL,
  `r_name` varchar(60) COLLATE utf8_bin NOT NULL,
  `r_email` varchar(60) COLLATE utf8_bin NOT NULL,
  `r_password` varchar(60) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `requesterlogin`
--

INSERT INTO `requesterlogin` (`r_login_id`, `r_name`, `r_email`, `r_password`) VALUES
(1, 'Kishan Singh', 'Singhk6699@as.com', '123456'),
(2, 'Sonam Singh', 'sonam@as.com', '123456'),
(3, 'john', 'john@as.com', '123456'),
(4, 'ruby', 'ruby@as.com', '123456'),
(12, 'Brijesh Singh', 'bs@as.com', '123456'),
(13, 'Aditya Jha', 'aditya@as.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `submitrequest`
--

CREATE TABLE `submitrequest` (
  `request_id` int(11) NOT NULL,
  `request_info` text COLLATE utf8_bin NOT NULL,
  `request_desc` text COLLATE utf8_bin NOT NULL,
  `requester_name` varchar(60) COLLATE utf8_bin NOT NULL,
  `requester_add1` text COLLATE utf8_bin NOT NULL,
  `requester_add2` text COLLATE utf8_bin NOT NULL,
  `requester_city` varchar(60) COLLATE utf8_bin NOT NULL,
  `requester_state` varchar(60) COLLATE utf8_bin NOT NULL,
  `requester_zip` int(11) NOT NULL,
  `requester_email` varchar(60) COLLATE utf8_bin NOT NULL,
  `requester_mobile` bigint(20) NOT NULL,
  `request_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `submitrequest`
--

INSERT INTO `submitrequest` (`request_id`, `request_info`, `request_desc`, `requester_name`, `requester_add1`, `requester_add2`, `requester_city`, `requester_state`, `requester_zip`, `requester_email`, `requester_mobile`, `request_date`) VALUES
(9, 'contact form', 'contact form disabled', 'john', '67/55', 'west colony', 'ranchi', 'jjharkhand', 899790, 'john@as.com', 88946456788, '2020-05-02'),
(10, 'registration ', 'registration form not worked', 'john', '40/17', 'East Colony', 'chapra', 'Bihar', 778680, 'john@as.com', 6768798087, '2020-05-02'),
(11, 'dashboard not visible', 'dashboard not visible to admin', 'Sonam', '40/17', 'East Colony', 'Siwan', 'Bihar', 778680, 'sonam@as.com', 6768798087, '2020-05-02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`a_login_id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `assingwork`
--
ALTER TABLE `assingwork`
  ADD PRIMARY KEY (`rno`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`custid`);

--
-- Indexes for table `developer`
--
ALTER TABLE `developer`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `requesterlogin`
--
ALTER TABLE `requesterlogin`
  ADD PRIMARY KEY (`r_login_id`);

--
-- Indexes for table `submitrequest`
--
ALTER TABLE `submitrequest`
  ADD PRIMARY KEY (`request_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `a_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `assingwork`
--
ALTER TABLE `assingwork`
  MODIFY `rno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `custid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `developer`
--
ALTER TABLE `developer`
  MODIFY `empid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `requesterlogin`
--
ALTER TABLE `requesterlogin`
  MODIFY `r_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `submitrequest`
--
ALTER TABLE `submitrequest`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
