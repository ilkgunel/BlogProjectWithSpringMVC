-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 10, 2016 at 06:15 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `SpringMVCBlogProject`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `ARTICLEID` int(11) NOT NULL,
  `ARTICLECONTENT` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ARTICLETITLE` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `AUTHORNAME` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `EMAILADDRESS` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ADDRESS` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `BIRTHDATE` date DEFAULT NULL,
  `ENABLED` tinyint(1) DEFAULT '0',
  `NAME` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `PASSWORD` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `ROLE` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `SURNAME` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `TELEPHONENUMBER` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `persistent_logins`
--

CREATE TABLE `persistent_logins` (
  `username` varchar(64) COLLATE utf8_turkish_ci NOT NULL,
  `series` varchar(64) COLLATE utf8_turkish_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_turkish_ci NOT NULL,
  `last_used` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userroles`
--

CREATE TABLE `userroles` (
  `id` int(11) NOT NULL,
  `role` varchar(15) COLLATE utf8_turkish_ci NOT NULL,
  `emailAddress` varchar(20) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`ARTICLEID`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`EMAILADDRESS`);

--
-- Indexes for table `userroles`
--
ALTER TABLE `userroles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `userroles`
--
ALTER TABLE `userroles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
