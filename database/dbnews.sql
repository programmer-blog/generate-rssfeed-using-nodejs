-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2017 at 09:49 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbnews`
--
CREATE DATABASE IF NOT EXISTS `dbnews` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbnews`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `id` int(11) NOT NULL,
  `title` varchar(600) NOT NULL,
  `description` text NOT NULL,
  `publish_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`id`, `title`, `description`, `publish_date`) VALUES
(1, '''Guardians of the Galaxy Vol. 2'' Rockets to No.1 with $145 million', 'LOS ANGELES, (Variety.com) - And just like that, Star-Lord and his band of super buddies are back on top of the box office.', '2017-05-08'),
(2, 'Mars Science Lab launch delayed two years', 'NASA''s launch of the Mars Science Laboratory -- hampered by technical difficulties and cost overruns -- has been delayed until the fall of 2011, NASA officials said at a news conference Thursday in Washington.', '2008-05-09'),
(3, 'Nasa runs competition to help make old Fortran code faster', 'Two coders will share a $55,000 prize for what a Nasa official calls the "ultimate ''geek'' dream assignment.', '2017-05-04'),
(4, 'Retro tech: Flying car prototypes', 'How flying cars have gone from being a science fiction fantasy to almost becoming a reality, as seen through the BBC archive.', '2017-05-03'),
(5, 'Antarctic iceberg crack develops fork', 'The fissure that will lead to the breakaway of one of the largest bergs ever seen has a new branch.', '2017-05-02'),
(6, 'Secrets of tea plant revealed by science', 'Botanists unlock the genetic workings of the tea plant, in a move that could improve flavour.', '2017-05-01'),
(7, 'Machine learning', 'Many people are unsure about what machine learning is, but the chances are they are using it every day.', '2017-04-25'),
(8, 'In the Future, Virtual Assistants Will Also Have Ideas of Their Own', 'Assistants could proactively recommend ways in which humans could be living better lives, from getting more exercise to watching informational videos.', '2017-05-06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
