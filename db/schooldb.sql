-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2019 at 06:09 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schooldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AID` int(11) NOT NULL,
  `ANAME` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `APASS` varchar(150) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AID`, `ANAME`, `APASS`) VALUES
(1, 'Admin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `CID` int(11) NOT NULL,
  `CNAME` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `CSEC` varchar(150) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`CID`, `CNAME`, `CSEC`) VALUES
(4, 'V', 'B'),
(5, 'I', 'A'),
(6, 'III', 'D'),
(7, 'I', 'B'),
(8, 'IV', 'C'),
(9, 'VII', 'B'),
(10, 'X', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `EID` int(11) NOT NULL,
  `ENAME` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `ETYPE` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `EDATE` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `SESSION` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `CLASS` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `SUB` varchar(150) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`EID`, `ENAME`, `ETYPE`, `EDATE`, `SESSION`, `CLASS`, `SUB`) VALUES
(2, 'Quiz', 'I-Term', '18-11-2019', '2018-19', 'I', 'Bangla');

-- --------------------------------------------------------

--
-- Table structure for table `hclass`
--

CREATE TABLE `hclass` (
  `HID` int(11) NOT NULL,
  `TID` int(11) NOT NULL,
  `CLA` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `SEC` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `SUB` varchar(150) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `hclass`
--

INSERT INTO `hclass` (`HID`, `TID`, `CLA`, `SEC`, `SUB`) VALUES
(1, 2, 'V', 'A', 'Physics');

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

CREATE TABLE `mark` (
  `MID` int(11) NOT NULL,
  `REGNO` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `SUB` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `MARK` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `TERM` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `CLASS` varchar(150) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `TID` int(11) NOT NULL,
  `TNAME` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `TPASS` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `QUAL` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `SAL` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `PNO` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `MAIL` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `PADDR` text COLLATE utf8mb4_bin NOT NULL,
  `IMG` varchar(150) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`TID`, `TNAME`, `TPASS`, `QUAL`, `SAL`, `PNO`, `MAIL`, `PADDR`, `IMG`) VALUES
(1, 'Mishkat', '1234', 'BSc in CSE', '60000', '', '', '', ''),
(2, 'teacher', '1234', '', '', '1624296786', 'mohammodmishkat@gmail.com', '51/A/8kha, Civil Shelter,west rajabazar, panthapath Dhaka', 'staff/1268.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` int(11) NOT NULL,
  `RNO` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `NAME` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `FNAME` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `DOB` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `GEN` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `PHO` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `MAIL` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `ADDR` text COLLATE utf8mb4_bin NOT NULL,
  `SCLASS` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `SSEC` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `SIMG` varchar(150) COLLATE utf8mb4_bin NOT NULL,
  `TID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `RNO`, `NAME`, `FNAME`, `DOB`, `GEN`, `PHO`, `MAIL`, `ADDR`, `SCLASS`, `SSEC`, `SIMG`, `TID`) VALUES
(1, 'S161', 'Efath', 'No', '19-02-2001', 'Female', '1624296786', 'efath@gmail.com', '51/A/8kha, Civil Shelter,west rajabazar, panthapath Dhaka', 'I', 'A', 'student/223861_156585167799319_854611645_n.jpg', 2),
(2, 'S162', 'Zinnia', 'No', '20-11-2004', 'Female', '1213241242', 'mohammodmishkat@gmail.com', '51/A/8kha, Civil Shelter,west rajabazar, panthapath Dhaka', 'IV', 'A', 'student/1268.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sub`
--

CREATE TABLE `sub` (
  `SID` int(11) NOT NULL,
  `SNAME` varchar(150) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `sub`
--

INSERT INTO `sub` (`SID`, `SNAME`) VALUES
(1, 'Bangla'),
(2, 'English'),
(3, 'Physics'),
(4, 'Chemistry'),
(5, 'ICT'),
(6, 'MATH'),
(7, 'Social Science'),
(8, 'Biology'),
(9, 'Accounting ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AID`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`CID`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`EID`);

--
-- Indexes for table `hclass`
--
ALTER TABLE `hclass`
  ADD PRIMARY KEY (`HID`);

--
-- Indexes for table `mark`
--
ALTER TABLE `mark`
  ADD PRIMARY KEY (`MID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`TID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sub`
--
ALTER TABLE `sub`
  ADD PRIMARY KEY (`SID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `AID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `CID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `EID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hclass`
--
ALTER TABLE `hclass`
  MODIFY `HID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mark`
--
ALTER TABLE `mark`
  MODIFY `MID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `TID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sub`
--
ALTER TABLE `sub`
  MODIFY `SID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
