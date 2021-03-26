-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 26, 2021 at 04:42 PM
-- Server version: 5.7.33-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs230`
--

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `pid` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `descript` text NOT NULL,
  `picpath` varchar(80) NOT NULL,
  `upload_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`pid`, `title`, `descript`, `picpath`, `upload_date`, `rating`) VALUES
(3, 'Scream', 'Scream movie review', '../gallery/604ac4387e4670.15488093.jpeg', '2021-03-11 20:30:32', NULL),
(4, 'The Blair Witch Project', 'The Blair Witch Project movie review', '../gallery/604ac450519790.07097329.jpeg', '2021-03-11 20:30:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `pid` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `profpic` varchar(50) NOT NULL DEFAULT '../images/default.jpeg'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`pid`, `fname`, `uname`, `profpic`) VALUES
(2, 'asdf', '111111', '../images/default.jpeg'),
(3, 'abcde', '123', '../images/default.jpeg'),
(4, 'abcdef', '123456', '../images/default.jpeg'),
(5, '12345', '12345', '../images/default.jpeg'),
(6, '1234', '1234', '../images/default.jpeg'),
(7, 'geek', 'geekmisfit', '../images/default.jpeg'),
(8, 'abcdefg', 'abcdefg', '../images/default.jpeg'),
(9, '9876', '9876', '../images/default.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `revid` int(11) NOT NULL COMMENT 'id for each review',
  `itemid` int(11) NOT NULL COMMENT 'id for item being reviewed',
  `uname` varchar(80) NOT NULL COMMENT 'user reviewing item',
  `title` varchar(60) NOT NULL,
  `reviewtext` text NOT NULL,
  `revdate` datetime NOT NULL,
  `ratingnum` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT 'is there at least one review'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`revid`, `itemid`, `uname`, `title`, `reviewtext`, `revdate`, `ratingnum`, `status`) VALUES
(1, 7, '', 'test', 'test', '2021-03-19 16:01:35', 4, 1),
(2, 4, 'geekmisfit', 'test review', 'this is a test', '2021-03-19 16:02:26', 3, 1),
(3, 4, '', 'test', 'test', '2021-03-19 17:20:59', 3, 1),
(4, 3, 'geekmisfit', 'test review', 'this is a test review', '2021-03-19 17:44:53', 3, 1),
(5, 3, 'geekmisfit', 'test review', 'this is a test review', '2021-03-19 17:45:06', 4, 1),
(6, 4, 'geekmisfit', 'test review', 'test review 3', '2021-03-24 00:48:53', 2, 1),
(7, 3, 'geekmisfit', 'test review again', 'nhtrjyjtsyjt', '2021-03-24 01:10:00', 5, 1),
(8, 7, 'geekmisfit', 'rtjjrjjdtykdty', 'rsyjstykdyu,yddt', '2021-03-24 01:10:22', 3, 1),
(9, 7, 'geekmisfit', 'rtjjrjjdtykdty', 'rsyjstykdyu,yddt', '2021-03-24 01:13:07', 3, 1),
(10, 7, 'geekmisfit', 'rtjjrjjdtykdty', 'rsyjstykdyu,yddt', '2021-03-24 01:13:17', 3, 1),
(11, 3, 'geekmisfit', 'fhmdj,fh,ukygfntdym', 'fhgkfyumcm', '2021-03-24 01:16:11', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COMMENT='user database for sign up and sign in';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `fname`, `lname`, `uname`, `password`, `email`) VALUES
(2, 'asdf', 'asdf', '111111', '$2y$10$DnODZByV2laY6Mpx.GSd.OkQb9JqZlGYIWS.n0DIrqv63KX8wVgIa', '1@1.com'),
(3, 'abcde', 'fghi', '123', '$2y$10$0izZKQK4/fkk1atHV7p2jeqdTHGhKJu7HqZybc3Sfetwk6b59vYDy', '123@1.com'),
(4, 'abcdef', 'ghijklm', '123456', '$2y$10$H0KEFiYuAFUmFdwRoCHzduvK5JirU6DThDLTtFIPtDePWna/9vpAq', '123456@1.com'),
(5, '12345', '12345', '12345', '$2y$10$b0awEbJjOKIWamzR8v36z.64lsOAGpwURfcoijdfL/KJnXIev1OsC', '12345@12345.com'),
(6, '1234', '1234', '1234', '$2y$10$4sM95fCycpjYjRFAmI2Eceap0L/E4ybcFz/aYXF.O8mPbdzcgFX5q', '1234@1.com'),
(7, 'geek', 'misfit', 'geekmisfit', '$2y$10$9jn/t5DtOQYgWhuvVoeLxOEBDQMMZx7jYjyudqgROcrfNc8gCtbey', 'geekmisfit@geekmisfit.com'),
(8, 'abcdefg', 'abcdefg', 'abcdefg', '$2y$10$B3tpWKBYx9YAyYuSG/PZM.znjvpJ9VVJZDQTlAYl1qSmQPodP2IE.', 'abcdefg@abcdefg.com'),
(9, '9876', '9876', '9876', '$2y$10$8d..ehzEwX33pOta0EOSJeJ5FTptNWx7EaYVlTTleNGHZ5YRu4r02', '9876@9876.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`revid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `revid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id for each review', AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
