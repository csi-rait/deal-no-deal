-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 01, 2019 at 09:17 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deal`
--

-- --------------------------------------------------------

--
-- Table structure for table `ground1`
--

CREATE TABLE `ground1` (
  `remain` int(11) NOT NULL,
  `round` int(11) NOT NULL,
  `case1` int(11) NOT NULL,
  `case2` int(11) NOT NULL,
  `case3` int(11) NOT NULL,
  `case4` int(11) NOT NULL,
  `case5` int(11) NOT NULL,
  `case6` int(11) NOT NULL,
  `case7` int(11) NOT NULL,
  `case8` int(11) NOT NULL,
  `case9` int(11) NOT NULL,
  `case10` int(11) NOT NULL,
  `case11` int(11) NOT NULL,
  `case12` int(11) NOT NULL,
  `case13` int(11) NOT NULL,
  `case14` int(11) NOT NULL,
  `case15` int(11) NOT NULL,
  `case16` int(11) NOT NULL,
  `case17` int(11) NOT NULL,
  `case18` int(11) NOT NULL,
  `case19` int(11) NOT NULL,
  `case20` int(11) NOT NULL,
  `case21` int(11) NOT NULL,
  `case22` int(11) NOT NULL,
  `case23` int(11) NOT NULL,
  `case24` int(11) NOT NULL,
  `case25` int(11) NOT NULL,
  `case26` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `kept` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `final_amount` int(11) NOT NULL,
  `player` varchar(255) NOT NULL DEFAULT 'None'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ground1`
--

INSERT INTO `ground1` (`remain`, `round`, `case1`, `case2`, `case3`, `case4`, `case5`, `case6`, `case7`, `case8`, `case9`, `case10`, `case11`, `case12`, `case13`, `case14`, `case15`, `case16`, `case17`, `case18`, `case19`, `case20`, `case21`, `case22`, `case23`, `case24`, `case25`, `case26`, `uid`, `kept`, `active`, `final_amount`, `player`) VALUES
(0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 0, 0, 0, 0, 0, 7500, 0, 0, 1, 18, 0, 50, 'JATIN');

-- --------------------------------------------------------

--
-- Table structure for table `ground2`
--

CREATE TABLE `ground2` (
  `remain` int(11) NOT NULL,
  `round` int(11) NOT NULL,
  `case1` int(11) NOT NULL,
  `case2` int(11) NOT NULL,
  `case3` int(11) NOT NULL,
  `case4` int(11) NOT NULL,
  `case5` int(11) NOT NULL,
  `case6` int(11) NOT NULL,
  `case7` int(11) NOT NULL,
  `case8` int(11) NOT NULL,
  `case9` int(11) NOT NULL,
  `case10` int(11) NOT NULL,
  `case11` int(11) NOT NULL,
  `case12` int(11) NOT NULL,
  `case13` int(11) NOT NULL,
  `case14` int(11) NOT NULL,
  `case15` int(11) NOT NULL,
  `case16` int(11) NOT NULL,
  `case17` int(11) NOT NULL,
  `case18` int(11) NOT NULL,
  `case19` int(11) NOT NULL,
  `case20` int(11) NOT NULL,
  `case21` int(11) NOT NULL,
  `case22` int(11) NOT NULL,
  `case23` int(11) NOT NULL,
  `case24` int(11) NOT NULL,
  `case25` int(11) NOT NULL,
  `case26` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `kept` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `final_amount` int(11) NOT NULL,
  `player` varchar(255) NOT NULL DEFAULT 'None'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ground2`
--

INSERT INTO `ground2` (`remain`, `round`, `case1`, `case2`, `case3`, `case4`, `case5`, `case6`, `case7`, `case8`, `case9`, `case10`, `case11`, `case12`, `case13`, `case14`, `case15`, `case16`, `case17`, `case18`, `case19`, `case20`, `case21`, `case22`, `case23`, `case24`, `case25`, `case26`, `uid`, `kept`, `active`, `final_amount`, `player`) VALUES
(6, 1, 100, 75, 1000, 2000, 10000, 700000, 50, 750000, 200, 2500, 1000000, 60000, 75000, 250000, 300000, 300, 20000, 5000, 100000, 600000, 500, 7500, 50000, 500000, 25000, 200000, 1, 0, 1, 0, 'PLAYER2');

-- --------------------------------------------------------

--
-- Table structure for table `ground3`
--

CREATE TABLE `ground3` (
  `remain` int(11) NOT NULL,
  `round` int(11) NOT NULL,
  `case1` int(11) NOT NULL,
  `case2` int(11) NOT NULL,
  `case3` int(11) NOT NULL,
  `case4` int(11) NOT NULL,
  `case5` int(11) NOT NULL,
  `case6` int(11) NOT NULL,
  `case7` int(11) NOT NULL,
  `case8` int(11) NOT NULL,
  `case9` int(11) NOT NULL,
  `case10` int(11) NOT NULL,
  `case11` int(11) NOT NULL,
  `case12` int(11) NOT NULL,
  `case13` int(11) NOT NULL,
  `case14` int(11) NOT NULL,
  `case15` int(11) NOT NULL,
  `case16` int(11) NOT NULL,
  `case17` int(11) NOT NULL,
  `case18` int(11) NOT NULL,
  `case19` int(11) NOT NULL,
  `case20` int(11) NOT NULL,
  `case21` int(11) NOT NULL,
  `case22` int(11) NOT NULL,
  `case23` int(11) NOT NULL,
  `case24` int(11) NOT NULL,
  `case25` int(11) NOT NULL,
  `case26` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `kept` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `final_amount` int(11) NOT NULL,
  `player` varchar(255) NOT NULL DEFAULT 'None'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ground3`
--

INSERT INTO `ground3` (`remain`, `round`, `case1`, `case2`, `case3`, `case4`, `case5`, `case6`, `case7`, `case8`, `case9`, `case10`, `case11`, `case12`, `case13`, `case14`, `case15`, `case16`, `case17`, `case18`, `case19`, `case20`, `case21`, `case22`, `case23`, `case24`, `case25`, `case26`, `uid`, `kept`, `active`, `final_amount`, `player`) VALUES
(6, 1, 7500, 60000, 100, 100000, 75000, 50000, 750000, 200000, 5000, 25000, 50, 1000, 600000, 10000, 500, 75, 1000000, 500000, 20000, 700000, 2000, 200, 250000, 300000, 2500, 300, 1, 0, 0, 0, 'Not Assigned');

-- --------------------------------------------------------

--
-- Table structure for table `ground4`
--

CREATE TABLE `ground4` (
  `remain` int(11) NOT NULL,
  `round` int(11) NOT NULL,
  `case1` int(11) NOT NULL,
  `case2` int(11) NOT NULL,
  `case3` int(11) NOT NULL,
  `case4` int(11) NOT NULL,
  `case5` int(11) NOT NULL,
  `case6` int(11) NOT NULL,
  `case7` int(11) NOT NULL,
  `case8` int(11) NOT NULL,
  `case9` int(11) NOT NULL,
  `case10` int(11) NOT NULL,
  `case11` int(11) NOT NULL,
  `case12` int(11) NOT NULL,
  `case13` int(11) NOT NULL,
  `case14` int(11) NOT NULL,
  `case15` int(11) NOT NULL,
  `case16` int(11) NOT NULL,
  `case17` int(11) NOT NULL,
  `case18` int(11) NOT NULL,
  `case19` int(11) NOT NULL,
  `case20` int(11) NOT NULL,
  `case21` int(11) NOT NULL,
  `case22` int(11) NOT NULL,
  `case23` int(11) NOT NULL,
  `case24` int(11) NOT NULL,
  `case25` int(11) NOT NULL,
  `case26` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `kept` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `final_amount` int(11) NOT NULL,
  `player` varchar(255) NOT NULL DEFAULT 'None'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ground4`
--

INSERT INTO `ground4` (`remain`, `round`, `case1`, `case2`, `case3`, `case4`, `case5`, `case6`, `case7`, `case8`, `case9`, `case10`, `case11`, `case12`, `case13`, `case14`, `case15`, `case16`, `case17`, `case18`, `case19`, `case20`, `case21`, `case22`, `case23`, `case24`, `case25`, `case26`, `uid`, `kept`, `active`, `final_amount`, `player`) VALUES
(6, 1, 60000, 100, 300, 700000, 200000, 75000, 5000, 50000, 500, 300000, 600000, 7500, 1000, 10000, 200, 2000, 500000, 750000, 100000, 50, 2500, 25000, 250000, 75, 1000000, 20000, 1, 0, 0, 0, 'Not Assigned');

-- --------------------------------------------------------

--
-- Table structure for table `ground5`
--

CREATE TABLE `ground5` (
  `remain` int(11) NOT NULL,
  `round` int(11) NOT NULL,
  `case1` int(11) NOT NULL,
  `case2` int(11) NOT NULL,
  `case3` int(11) NOT NULL,
  `case4` int(11) NOT NULL,
  `case5` int(11) NOT NULL,
  `case6` int(11) NOT NULL,
  `case7` int(11) NOT NULL,
  `case8` int(11) NOT NULL,
  `case9` int(11) NOT NULL,
  `case10` int(11) NOT NULL,
  `case11` int(11) NOT NULL,
  `case12` int(11) NOT NULL,
  `case13` int(11) NOT NULL,
  `case14` int(11) NOT NULL,
  `case15` int(11) NOT NULL,
  `case16` int(11) NOT NULL,
  `case17` int(11) NOT NULL,
  `case18` int(11) NOT NULL,
  `case19` int(11) NOT NULL,
  `case20` int(11) NOT NULL,
  `case21` int(11) NOT NULL,
  `case22` int(11) NOT NULL,
  `case23` int(11) NOT NULL,
  `case24` int(11) NOT NULL,
  `case25` int(11) NOT NULL,
  `case26` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `kept` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `final_amount` int(11) NOT NULL,
  `player` varchar(255) NOT NULL DEFAULT 'None'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ground5`
--

INSERT INTO `ground5` (`remain`, `round`, `case1`, `case2`, `case3`, `case4`, `case5`, `case6`, `case7`, `case8`, `case9`, `case10`, `case11`, `case12`, `case13`, `case14`, `case15`, `case16`, `case17`, `case18`, `case19`, `case20`, `case21`, `case22`, `case23`, `case24`, `case25`, `case26`, `uid`, `kept`, `active`, `final_amount`, `player`) VALUES
(6, 1, 7500, 100, 200000, 300, 1000, 60000, 50, 700000, 25000, 250000, 2500, 10000, 200, 500, 20000, 75000, 50000, 750000, 75, 600000, 500000, 1000000, 100000, 300000, 5000, 2000, 1, 0, 0, 0, 'Not Assigned');

-- --------------------------------------------------------

--
-- Table structure for table `ground6`
--

CREATE TABLE `ground6` (
  `remain` int(11) NOT NULL,
  `round` int(11) NOT NULL,
  `case1` int(11) NOT NULL,
  `case2` int(11) NOT NULL,
  `case3` int(11) NOT NULL,
  `case4` int(11) NOT NULL,
  `case5` int(11) NOT NULL,
  `case6` int(11) NOT NULL,
  `case7` int(11) NOT NULL,
  `case8` int(11) NOT NULL,
  `case9` int(11) NOT NULL,
  `case10` int(11) NOT NULL,
  `case11` int(11) NOT NULL,
  `case12` int(11) NOT NULL,
  `case13` int(11) NOT NULL,
  `case14` int(11) NOT NULL,
  `case15` int(11) NOT NULL,
  `case16` int(11) NOT NULL,
  `case17` int(11) NOT NULL,
  `case18` int(11) NOT NULL,
  `case19` int(11) NOT NULL,
  `case20` int(11) NOT NULL,
  `case21` int(11) NOT NULL,
  `case22` int(11) NOT NULL,
  `case23` int(11) NOT NULL,
  `case24` int(11) NOT NULL,
  `case25` int(11) NOT NULL,
  `case26` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `kept` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `final_amount` int(11) NOT NULL,
  `player` varchar(255) NOT NULL DEFAULT 'None'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ground6`
--

INSERT INTO `ground6` (`remain`, `round`, `case1`, `case2`, `case3`, `case4`, `case5`, `case6`, `case7`, `case8`, `case9`, `case10`, `case11`, `case12`, `case13`, `case14`, `case15`, `case16`, `case17`, `case18`, `case19`, `case20`, `case21`, `case22`, `case23`, `case24`, `case25`, `case26`, `uid`, `kept`, `active`, `final_amount`, `player`) VALUES
(6, 1, 50, 1000, 250000, 600000, 10000, 200, 1000000, 750000, 50000, 100000, 75000, 75, 60000, 500, 7500, 2500, 100, 500000, 300000, 5000, 25000, 300, 200000, 20000, 700000, 2000, 1, 0, 0, 0, 'Not Assigned');

-- --------------------------------------------------------

--
-- Table structure for table `ground7`
--

CREATE TABLE `ground7` (
  `remain` int(11) NOT NULL,
  `round` int(11) NOT NULL,
  `case1` int(11) NOT NULL,
  `case2` int(11) NOT NULL,
  `case3` int(11) NOT NULL,
  `case4` int(11) NOT NULL,
  `case5` int(11) NOT NULL,
  `case6` int(11) NOT NULL,
  `case7` int(11) NOT NULL,
  `case8` int(11) NOT NULL,
  `case9` int(11) NOT NULL,
  `case10` int(11) NOT NULL,
  `case11` int(11) NOT NULL,
  `case12` int(11) NOT NULL,
  `case13` int(11) NOT NULL,
  `case14` int(11) NOT NULL,
  `case15` int(11) NOT NULL,
  `case16` int(11) NOT NULL,
  `case17` int(11) NOT NULL,
  `case18` int(11) NOT NULL,
  `case19` int(11) NOT NULL,
  `case20` int(11) NOT NULL,
  `case21` int(11) NOT NULL,
  `case22` int(11) NOT NULL,
  `case23` int(11) NOT NULL,
  `case24` int(11) NOT NULL,
  `case25` int(11) NOT NULL,
  `case26` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `kept` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `final_amount` int(11) NOT NULL,
  `player` varchar(255) NOT NULL DEFAULT 'None'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ground7`
--

INSERT INTO `ground7` (`remain`, `round`, `case1`, `case2`, `case3`, `case4`, `case5`, `case6`, `case7`, `case8`, `case9`, `case10`, `case11`, `case12`, `case13`, `case14`, `case15`, `case16`, `case17`, `case18`, `case19`, `case20`, `case21`, `case22`, `case23`, `case24`, `case25`, `case26`, `uid`, `kept`, `active`, `final_amount`, `player`) VALUES
(6, 1, 1000000, 300, 600000, 2000, 500, 500000, 5000, 7500, 700000, 75000, 20000, 250000, 100000, 50, 50000, 300000, 75, 25000, 1000, 2500, 750000, 100, 10000, 200, 200000, 60000, 1, 0, 0, 0, 'Not Assigned');

-- --------------------------------------------------------

--
-- Table structure for table `ground8`
--

CREATE TABLE `ground8` (
  `remain` int(11) NOT NULL,
  `round` int(11) NOT NULL,
  `case1` int(11) NOT NULL,
  `case2` int(11) NOT NULL,
  `case3` int(11) NOT NULL,
  `case4` int(11) NOT NULL,
  `case5` int(11) NOT NULL,
  `case6` int(11) NOT NULL,
  `case7` int(11) NOT NULL,
  `case8` int(11) NOT NULL,
  `case9` int(11) NOT NULL,
  `case10` int(11) NOT NULL,
  `case11` int(11) NOT NULL,
  `case12` int(11) NOT NULL,
  `case13` int(11) NOT NULL,
  `case14` int(11) NOT NULL,
  `case15` int(11) NOT NULL,
  `case16` int(11) NOT NULL,
  `case17` int(11) NOT NULL,
  `case18` int(11) NOT NULL,
  `case19` int(11) NOT NULL,
  `case20` int(11) NOT NULL,
  `case21` int(11) NOT NULL,
  `case22` int(11) NOT NULL,
  `case23` int(11) NOT NULL,
  `case24` int(11) NOT NULL,
  `case25` int(11) NOT NULL,
  `case26` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `kept` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `final_amount` int(11) NOT NULL,
  `player` varchar(255) NOT NULL DEFAULT 'None'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ground8`
--

INSERT INTO `ground8` (`remain`, `round`, `case1`, `case2`, `case3`, `case4`, `case5`, `case6`, `case7`, `case8`, `case9`, `case10`, `case11`, `case12`, `case13`, `case14`, `case15`, `case16`, `case17`, `case18`, `case19`, `case20`, `case21`, `case22`, `case23`, `case24`, `case25`, `case26`, `uid`, `kept`, `active`, `final_amount`, `player`) VALUES
(6, 1, 50, 1000, 500, 50000, 700000, 1000000, 600000, 20000, 500000, 25000, 2500, 750000, 100000, 100, 250000, 7500, 60000, 2000, 300000, 10000, 300, 200, 75000, 5000, 200000, 75, 1, 0, 0, 0, 'Not Assigned');

-- --------------------------------------------------------

--
-- Table structure for table `ground9`
--

CREATE TABLE `ground9` (
  `remain` int(11) NOT NULL,
  `round` int(11) NOT NULL,
  `case1` int(11) NOT NULL,
  `case2` int(11) NOT NULL,
  `case3` int(11) NOT NULL,
  `case4` int(11) NOT NULL,
  `case5` int(11) NOT NULL,
  `case6` int(11) NOT NULL,
  `case7` int(11) NOT NULL,
  `case8` int(11) NOT NULL,
  `case9` int(11) NOT NULL,
  `case10` int(11) NOT NULL,
  `case11` int(11) NOT NULL,
  `case12` int(11) NOT NULL,
  `case13` int(11) NOT NULL,
  `case14` int(11) NOT NULL,
  `case15` int(11) NOT NULL,
  `case16` int(11) NOT NULL,
  `case17` int(11) NOT NULL,
  `case18` int(11) NOT NULL,
  `case19` int(11) NOT NULL,
  `case20` int(11) NOT NULL,
  `case21` int(11) NOT NULL,
  `case22` int(11) NOT NULL,
  `case23` int(11) NOT NULL,
  `case24` int(11) NOT NULL,
  `case25` int(11) NOT NULL,
  `case26` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `kept` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `final_amount` int(11) NOT NULL,
  `player` varchar(255) NOT NULL DEFAULT 'None'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ground9`
--

INSERT INTO `ground9` (`remain`, `round`, `case1`, `case2`, `case3`, `case4`, `case5`, `case6`, `case7`, `case8`, `case9`, `case10`, `case11`, `case12`, `case13`, `case14`, `case15`, `case16`, `case17`, `case18`, `case19`, `case20`, `case21`, `case22`, `case23`, `case24`, `case25`, `case26`, `uid`, `kept`, `active`, `final_amount`, `player`) VALUES
(6, 1, 500, 200, 50000, 1000, 25000, 300000, 100000, 10000, 2000, 20000, 7500, 60000, 700000, 200000, 600000, 500000, 100, 75, 50, 750000, 250000, 5000, 75000, 2500, 300, 1000000, 1, 0, 0, 0, 'Not Assigned');

-- --------------------------------------------------------

--
-- Table structure for table `ground10`
--

CREATE TABLE `ground10` (
  `remain` int(11) NOT NULL,
  `round` int(11) NOT NULL,
  `case1` int(11) NOT NULL,
  `case2` int(11) NOT NULL,
  `case3` int(11) NOT NULL,
  `case4` int(11) NOT NULL,
  `case5` int(11) NOT NULL,
  `case6` int(11) NOT NULL,
  `case7` int(11) NOT NULL,
  `case8` int(11) NOT NULL,
  `case9` int(11) NOT NULL,
  `case10` int(11) NOT NULL,
  `case11` int(11) NOT NULL,
  `case12` int(11) NOT NULL,
  `case13` int(11) NOT NULL,
  `case14` int(11) NOT NULL,
  `case15` int(11) NOT NULL,
  `case16` int(11) NOT NULL,
  `case17` int(11) NOT NULL,
  `case18` int(11) NOT NULL,
  `case19` int(11) NOT NULL,
  `case20` int(11) NOT NULL,
  `case21` int(11) NOT NULL,
  `case22` int(11) NOT NULL,
  `case23` int(11) NOT NULL,
  `case24` int(11) NOT NULL,
  `case25` int(11) NOT NULL,
  `case26` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `kept` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `final_amount` int(11) NOT NULL,
  `player` varchar(255) NOT NULL DEFAULT 'None',
  `current_offer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ground10`
--

INSERT INTO `ground10` (`remain`, `round`, `case1`, `case2`, `case3`, `case4`, `case5`, `case6`, `case7`, `case8`, `case9`, `case10`, `case11`, `case12`, `case13`, `case14`, `case15`, `case16`, `case17`, `case18`, `case19`, `case20`, `case21`, `case22`, `case23`, `case24`, `case25`, `case26`, `uid`, `kept`, `active`, `final_amount`, `player`, `current_offer`) VALUES
(6, 1, 200, 50, 100, 75000, 25000, 700000, 500, 750000, 75, 600000, 200000, 1000, 250000, 5000, 500000, 20000, 300, 60000, 7500, 2500, 1000000, 50000, 300000, 2000, 10000, 100000, 1, 0, 0, 0, 'Not Assigned', 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(2555) NOT NULL,
  `admin` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `admin`) VALUES
(1, 'jatin', 'market1011', 1),
(2, 'admin', 'csirait2', 1),
(3, 'vol1', 'csirait', 0),
(4, 'admin2', 'admin2', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ground1`
--
ALTER TABLE `ground1`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `ground2`
--
ALTER TABLE `ground2`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `ground3`
--
ALTER TABLE `ground3`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `ground4`
--
ALTER TABLE `ground4`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `ground5`
--
ALTER TABLE `ground5`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `ground6`
--
ALTER TABLE `ground6`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `ground7`
--
ALTER TABLE `ground7`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `ground8`
--
ALTER TABLE `ground8`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `ground9`
--
ALTER TABLE `ground9`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `ground10`
--
ALTER TABLE `ground10`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
