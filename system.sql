-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2020 at 05:25 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `system`
--

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `qid` int(10) NOT NULL,
  `tid` int(10) NOT NULL,
  `question` varchar(100) NOT NULL,
  `option1` varchar(100) NOT NULL,
  `option2` varchar(100) NOT NULL,
  `option3` varchar(100) NOT NULL,
  `option4` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`qid`, `tid`, `question`, `option1`, `option2`, `option3`, `option4`) VALUES
(1, 111, 'Which mobile you prefer?', 'Apple', 'Samsung', 'OnePLus', 'Nokia'),
(3, 112, 'Which city has highest pollution?', 'Surat', 'Ahemdabad', 'Vadodara', 'Rajkot'),
(4, 113, 'Which is an indian car?', 'Tata', 'Audi', 'Volvo', 'BMW'),
(5, 114, 'At what age you should vote?', '18', '17', '20', '19'),
(6, 115, 'Election occurs every ____ years?', '5', '4', '6', '3'),
(7, 111, 'How much ROM you required?', '256', '512', '128', '64'),
(8, 111, 'How much RAM you required?', '12', '8', '6', '4'),
(9, 111, 'Which os you prefer?', 'IOS', 'Android', 'Windows', 'None'),
(10, 111, 'Which phone do you have?', 'Apple', 'Samsung', 'Oneplus', 'Nokia');

-- --------------------------------------------------------

--
-- Table structure for table `respond`
--

CREATE TABLE `respond` (
  `rid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `tid` int(10) NOT NULL,
  `r1` varchar(100) NOT NULL,
  `r2` varchar(100) NOT NULL,
  `r3` varchar(100) NOT NULL,
  `r4` varchar(100) NOT NULL,
  `r5` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `tid` int(10) NOT NULL,
  `topic` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`tid`, `topic`) VALUES
(111, 'Mobile Survey'),
(112, 'Pollution Survey'),
(113, 'Cars Survey'),
(114, 'Voting Survey'),
(115, 'Airlines Survey');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `contactnumber` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `name`, `email`, `password`, `contactnumber`, `city`, `state`) VALUES
(7, 'Harsh Kheni', 'hhk@gmail.com', 'harsh123', '9099497061', 'Surat', 'Gujarat'),
(8, 'HVK', 'hvk@gmail.com', 'hvk123', '9632587410', 'Surat', 'Gujarat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`qid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `respond`
--
ALTER TABLE `respond`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `qid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `topic` (`tid`);

--
-- Constraints for table `respond`
--
ALTER TABLE `respond`
  ADD CONSTRAINT `respond_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`),
  ADD CONSTRAINT `respond_ibfk_2` FOREIGN KEY (`tid`) REFERENCES `topic` (`tid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
