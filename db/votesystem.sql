-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2023 at 11:56 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `votesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'morrice', '$2y$10$PNfjHJovcXBK96JX6P7kpu1Ksqx.KaUwVlmMkUn73hw/IpFhzHQGq', 'Morrice', 'Mwendwa', 'cropped-SAM_2338.JPG', '2018-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(21, 8, 'Emmanuel', 'Langat', '', 'Comrades Alliance Party(C.A.P)'),
(22, 9, 'Jane', 'Njambi', '', 'Comrades Alliance Party(C.A.P)'),
(23, 10, 'Justine', 'Bogonko', '', 'Comrades Alliance Party(C.A.P)'),
(24, 12, 'Mogaka', 'Samuel', '', 'Comrades Alliance Party(C.A.P)'),
(25, 14, 'Faith', 'Walubengo', '', 'Comrades Alliance Party(C.A.P)'),
(26, 13, 'Laurence', 'Ngagi', '', 'Comrades Aliance Party(C.A.P)'),
(27, 11, 'Brian', 'Wabwile', '', 'Comrades Alliance Party(C.A.P)'),
(28, 12, 'James', 'Kioko', '', 'Comrades Restoration Movement(C.R.M)'),
(29, 13, 'Jenavin', 'Omondi', '', 'Comrades Restoration Movement(C.R.M)'),
(30, 11, 'Prestone', 'Muhindi', '', 'Comrades Restoration Movement(C.R.M)'),
(31, 14, 'Valentine', 'Nyamoita', '', 'Comrades Restoration Movement(C.R.M)'),
(32, 10, 'Randy', 'Onyango', '', 'Comrades Restoration Movement(C.R.M)'),
(33, 9, 'Mary', 'Onyiego', '', 'Comrades Restoration Movement(C.R.M)'),
(34, 8, 'Null', 'Mbogo', '', 'Comrades Restoration Movement(C.R.M)');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(8, 'Chairperson', 1, 1),
(9, 'Vice Chairperson', 1, 2),
(10, 'Secretary General', 1, 3),
(11, 'Treasurer', 1, 4),
(12, 'Sports And Entertainment', 1, 5),
(13, 'Faculties And Departments', 1, 6),
(14, 'Special Needs And Gender', 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `password`, `firstname`, `lastname`, `photo`) VALUES
(2, 'AKRxCQUSe1pYOyr', '$2y$10$/8Djpm6lXhCv7Gq0xp5nNugVuqD6.Igc352VWTTFD.b7FZhhbv/Lq', 'Morrice', 'Mwendwa', ''),
(3, 'rAvnheGDtKMx5um', '$2y$10$f2F.9znElCgKhAXJQMNld.AjcJsxBMr9M6KJOShLn/fZQh3/kwF1e', 'James', 'kioko', '');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voters_id`, `candidate_id`, `position_id`) VALUES
(83, 2, 21, 8),
(84, 2, 22, 9),
(85, 2, 32, 10),
(86, 2, 30, 11),
(87, 2, 24, 12),
(88, 2, 26, 13),
(89, 2, 25, 14),
(90, 3, 21, 8),
(91, 3, 22, 9),
(92, 3, 23, 10),
(93, 3, 27, 11),
(94, 3, 28, 12),
(95, 3, 26, 13),
(96, 3, 31, 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
