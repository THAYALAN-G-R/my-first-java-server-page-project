-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2018 at 07:29 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `day1` int(11) NOT NULL,
  `p1` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `P2` varchar(20) NOT NULL DEFAULT 'NB',
  `P3` varchar(20) NOT NULL DEFAULT 'NB'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`day1`, `p1`, `P2`, `P3`) VALUES
(1, 'thaya', 'thaya', 'thaya');

-- --------------------------------------------------------

--
-- Table structure for table `feeds`
--

CREATE TABLE `feeds` (
  `sno` int(10) NOT NULL,
  `id` int(4) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `feed` blob NOT NULL,
  `img` blob NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feeds`
--

INSERT INTO `feeds` (`sno`, `id`, `uname`, `feed`, `img`, `date`) VALUES
(1, 5298, 'suriya', 0x68692077656c636f6d6520746f20736861726f756a61, '', '2017-07-11 07:03:42'),
(2, 8798, 'ayirus', 0x68692062616279, '', '2017-07-23 10:49:59'),
(3, 7435, 'ayirus', 0x77656c636f6d65, '', '2017-07-23 10:50:20'),
(4, 7490, 'suriya', 0x6920616d2068657265, '', '2017-07-23 10:55:13'),
(5, 8858, 'suriya', 0x77656c636f6d65, '', '2017-07-23 10:56:27');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `unames` varchar(50) NOT NULL,
  `id` int(4) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `file` mediumblob,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `email` varchar(50) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `uname` varchar(20) DEFAULT NULL,
  `pass` varchar(20) NOT NULL,
  `regdate` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`email`, `first_name`, `last_name`, `uname`, `pass`, `regdate`, `gender`, `dob`) VALUES
('grthayalan18@gmail.com', 'thayalan', 'troj', 'thaya123', 'thaya123', '2017-09-06', 'Male', '1999-11-05'),
('mgrajan@gmail.com', 'rajan', 'mg', 'mgrajan', 'mgrajan', '2017-09-07', 'Male', '2017-09-13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`day1`);

--
-- Indexes for table `feeds`
--
ALTER TABLE `feeds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sno` (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `day1` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `feeds`
--
ALTER TABLE `feeds`
  MODIFY `sno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
