-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: May 21, 2017 at 01:11 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `driverEpoch`
--

-- --------------------------------------------------------

--
-- Table structure for table `historyPlaces`
--

CREATE TABLE `historyPlaces` (
  `id` int(16) NOT NULL,
  `user_id` int(16) NOT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `latitude` varchar(16) NOT NULL,
  `longitude` varchar(16) NOT NULL,
  `place_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `place_address` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `historyPlaces`
--

INSERT INTO `historyPlaces` (`id`, `user_id`, `add_time`, `latitude`, `longitude`, `place_name`, `place_address`) VALUES
(1, 1, '2017-05-20 11:51:26', '34.31', '33.33', 'xinjiao', 'xinjiao'),
(2, 1, '2017-05-20 12:06:10', '3332', '323', 's222', '2333');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(16) NOT NULL,
  `uid` varchar(16) CHARACTER SET utf8 NOT NULL,
  `user_id` int(16) NOT NULL,
  `poi_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `poi_address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `state` int(16) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `uid`, `user_id`, `poi_name`, `poi_address`, `add_time`, `state`) VALUES
(1, 'tts', 1, '北京', '北京', '2017-05-20 10:51:58', 1),
(2, 'ss', 1, 'ss', 'ss', '2017-05-20 11:03:43', 0),
(3, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:07:05', 1),
(4, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:07:09', 1),
(5, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:07:11', 1),
(6, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:07:12', 1),
(7, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:07:13', 1),
(8, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:07:14', 1),
(9, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:07:15', 1),
(10, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:07:40', 1),
(11, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:07:41', 1),
(12, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:07:42', 0),
(13, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:07:43', 0),
(14, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:07:44', 1),
(15, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:07:45', 1),
(16, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:07:46', 1),
(17, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:07:46', 1),
(18, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:07:47', 1),
(19, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:07:48', 1),
(20, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:07:49', 1),
(21, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:07:49', 1),
(22, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:07:50', 1),
(23, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:08:11', 1),
(24, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:08:12', 0),
(25, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:08:13', 1),
(26, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:08:15', 1),
(27, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:08:20', 1),
(28, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:08:24', 1),
(29, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:08:25', 1),
(30, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:08:26', 1),
(31, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:08:27', 1),
(32, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:09:07', 1),
(33, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:09:08', 0),
(34, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:09:09', 0),
(35, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:09:10', 1),
(36, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:09:11', 1),
(37, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:09:11', 0),
(38, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:09:12', 1),
(39, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:09:13', 1),
(40, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:09:14', 0),
(41, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:09:14', 1),
(42, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:09:15', 1),
(43, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:09:16', 1),
(44, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:09:58', 1),
(45, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:09:59', 0),
(46, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:10:00', 0),
(47, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:10:01', 0),
(48, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:10:47', 0),
(49, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:10:48', 1),
(50, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:10:49', 1),
(51, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:10:52', 1),
(52, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:10:53', 1),
(53, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:11:14', 0),
(54, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:11:15', 1),
(55, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:11:16', 1),
(56, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:11:16', 0),
(57, 'llvlvv', 1, 'here', 'there', '2017-05-20 11:11:17', 1),
(58, 'llvlvv', 1, 'here', 'there', '2017-05-20 12:34:56', 0),
(59, 'llvlvv', 1, 'here', 'there', '2017-05-20 12:38:20', 1),
(60, 'llvlvv', 1, 'here', 'there', '2017-05-20 12:38:23', 0),
(61, 'llvlvv', 1, 'here', 'there', '2017-05-20 12:38:54', 1),
(62, 'llvlvv', 1, 'here', 'there', '2017-05-20 12:41:33', 1),
(63, 'llvlvv', 1, 'here', 'there', '2017-05-20 12:41:47', 1),
(64, 'llvlvv', 1, 'here', 'there', '2017-05-20 12:41:48', 1),
(65, 'llvlvv', 1, 'here', 'there', '2017-05-20 12:46:47', 1),
(66, 'llvlvv', 1, 'here', 'there', '2017-05-20 12:47:09', 0),
(67, 'llvlvv', 1, 'here', 'there', '2017-05-20 12:50:49', 1),
(68, 'llvlvv', 1, 'here', 'there', '2017-05-20 12:54:36', 1),
(69, 'llvlvv', 1, 'here', 'there', '2017-05-20 12:54:37', 0),
(70, 'llvlvv', 1, 'here', 'there', '2017-05-20 12:57:10', 1),
(71, 'llvlvv', 1, 'here', 'there', '2017-05-20 13:03:02', 1),
(72, 'llvlvv', 1, 'here', 'there', '2017-05-20 13:05:50', 0),
(73, 'llvlvv', 1, 'here', 'there', '2017-05-20 13:05:58', 1),
(74, 'llvlvv', 1, 'here', 'there', '2017-05-20 13:09:28', 0),
(75, 'llvlvv', 1, 'here', 'there', '2017-05-20 13:10:54', 0),
(76, 'llvlvv', 1, 'here', 'there', '2017-05-20 13:11:33', 0),
(77, 'llvlvv', 1, 'here', 'there', '2017-05-20 13:12:19', 0),
(78, 'llvlvv', 1, 'here', 'there', '2017-05-20 13:14:16', 1),
(79, '411sss', 1, 'sss', 'sss', '2017-05-20 14:54:21', 1),
(80, '411sss', 1, 'sss', 'sss', '2017-05-20 15:01:38', 1),
(81, '411sss', 1, 'sss', 'sss', '2017-05-20 15:03:18', 0),
(82, '22ss', 1, 'sss', 'sss', '2017-05-20 15:03:54', 0),
(83, '22ss', 1, 'sss', 'sss', '2017-05-20 15:04:22', 1),
(84, 'test', 1, 'sss', 'sss', '2017-05-20 15:06:04', 1),
(85, 'test', 1, 'sss', 'sss', '2017-05-20 15:11:19', 1),
(86, 'ss22', 1, 'sss', 'sss', '2017-05-20 15:12:14', 1),
(87, '22ss', 1, 'sss', 'sss', '2017-05-20 15:12:30', 0),
(88, 'ttt', 1, 'sss', 'sss', '2017-05-20 15:13:15', 1),
(89, 'ttt', 1, 'sss', 'sss', '2017-05-20 15:14:35', 1),
(90, 'ttt', 1, 'sss', 'sss', '2017-05-20 15:15:28', 1),
(91, 'ttt', 1, 'sss', 'sss', '2017-05-20 15:16:03', 0),
(92, 'ttt', 15, 'sss', 'sss', '2017-05-20 15:16:54', 0),
(93, 'ttt', 15, 'sss', 'sss', '2017-05-20 15:17:45', 1),
(94, 'ttt', 15, 'sss', 'sss', '2017-05-20 15:18:06', 1),
(95, 'ttt', 15, 'sss', 'sss', '2017-05-20 15:18:31', 1),
(96, 'ttt', 15, 'sss', 'sss', '2017-05-20 15:20:24', 1),
(97, 'fuck', 15, 'sss', 'sss', '2017-05-20 15:21:15', 1),
(98, '22ss', 1, 'sss', 'sss', '2017-05-20 15:34:00', 0),
(99, 'chccc', 1, 'sss', 'sss', '2017-05-20 16:52:01', 1),
(100, 'chccc', 1, 'sss', 'sss', '2017-05-20 16:52:26', 0),
(101, 'chccc', 1, 'sss', 'sss', '2017-05-20 16:53:30', 1),
(102, 'chccc', 1, 'sss', 'sss', '2017-05-20 16:54:08', 1),
(103, 'chccc', 1, 'sss', 'sss', '2017-05-20 16:55:05', 0),
(104, 'chccc', 1, 'sss', 'sss', '2017-05-20 16:55:16', 1),
(105, 'chccc', 1, 'sss', 'sss', '2017-05-20 16:56:30', 0),
(106, 'chccc', 1, 'sss', 'sss', '2017-05-20 16:57:50', 1),
(107, 'chccc', 1, 'sss', 'sss', '2017-05-20 16:58:38', 0),
(108, 'chccc', 1, 'sss', 'sss', '2017-05-20 16:59:02', 1),
(109, 'chccc', 1, 'sss', 'sss', '2017-05-20 16:59:05', 0),
(110, 'chccc', 1, 'sss', 'sss', '2017-05-20 17:00:39', 1),
(111, 'chccc', 1, 'sss', 'sss', '2017-05-20 17:00:49', 1),
(112, 'chccc', 1, 'sss', 'sss', '2017-05-20 17:01:00', 1),
(113, 'fuck', 1, 'sss', 'sss', '2017-05-20 17:01:21', 0);

-- --------------------------------------------------------

--
-- Table structure for table `userPoints`
--

CREATE TABLE `userPoints` (
  `id` int(16) NOT NULL,
  `uid` varchar(16) CHARACTER SET utf8 NOT NULL,
  `user_id` int(16) NOT NULL,
  `poi_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `poi_address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `points` int(16) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userPoints`
--

INSERT INTO `userPoints` (`id`, `uid`, `user_id`, `poi_name`, `poi_address`, `points`) VALUES
(17, 'chccc', 1, 'sss', 'sss', 50),
(18, 'fuck', 1, 'sss', 'sss', 30);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(16) NOT NULL,
  `nickname` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `car` varchar(16) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `nickname`, `car`) VALUES
(1, 'admin', '123456', 'hily', '晋JC7333'),
(3, 'admins', '123456', 'halo', '晋JC7335');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `historyPlaces`
--
ALTER TABLE `historyPlaces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userPoints`
--
ALTER TABLE `userPoints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `historyPlaces`
--
ALTER TABLE `historyPlaces`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=114;
--
-- AUTO_INCREMENT for table `userPoints`
--
ALTER TABLE `userPoints`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;