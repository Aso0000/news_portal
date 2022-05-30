-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 30, 2022 at 08:35 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `aname` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `aname`) VALUES
(1, 'akar', '1234', 'akar1'),
(2, 'aso', '1234', 'Aso Akram');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `datetime` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `author`, `datetime`) VALUES
(1, 'Technology', 'Jazeb', 'December-01-2018 21:05:43'),
(3, 'Fitness', 'Jazeb', 'December-01-2018 21:09:29'),
(5, 'Science', 'Tom', 'January-14-2019 11:24:52'),
(6, 'Politics', 'jazeb', 'January-14-2019 11:25:42'),
(7, 'Sports', 'Xerox121', 'January-15-2019 12:25:37'),
(8, 'World', 'Xerox121', 'January-15-2019 12:25:45'),
(9, 'News', 'Xerox121', 'January-15-2019 12:25:48'),
(11, 'Movies ', 'aso', 'May-30-2022 05:57:07');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `datetime` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `approvedby` varchar(50) NOT NULL,
  `status` varchar(3) NOT NULL,
  `post_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `datetime`, `name`, `email`, `comment`, `approvedby`, `status`, `post_id`) VALUES
(31, 'May-17-2022 01:48:15', 'cccc11', 'aakks@gmail.com', 'aaaaaaaaaaaaaa', 'Pending', 'OFF', 58),
(32, 'May-17-2022 01:48:47', 'wsa', 'sanknsa@ahbs.anj', 'ahsiahx sajbxhjabs xsabxba sbahbxhjbashjxba xsabhbxhab axskas', 'Aso Akram', 'ON', 58),
(33, 'May-22-2022 14:15:54', 'hama', 'h1@aaa.com', 'hello', 'akar1', 'ON', 60),
(34, 'May-22-2022 14:16:39', 'cccc1', 'c1@aaa.com', 'laslaksnjax ksmak sjxnajsnxja', 'Aso Akram', 'ON', 60),
(35, 'May-22-2022 14:17:06', 'cccc2', 'c2@lll.com', 'maksmkax kaaaaaaaaaaaasaaskamska kasmkamkms', 'Aso Akram', 'ON', 60),
(36, 'May-22-2022 14:19:39', 'ccc2', 'c3@aaa.com', '&lt;h1&gt;hello world &lt;/h1&gt;', 'Aso Akram', 'ON', 60);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `datetime` varchar(50) NOT NULL,
  `title` varchar(300) NOT NULL,
  `category` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `post` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `datetime`, `title`, `category`, `author`, `image`, `post`) VALUES
(57, 'May-17-2022 01:36:53', 'kids post1', 'News', 'aso', 'alone-black-and-white-boy-child-551590 (1).jpg', 'sadddddddddddddd'),
(58, 'May-17-2022 01:47:28', 'lllllll   post2', 'Technology', 'aso', 'laptop1.jpg', 'knklanscna s asndjnasjncs c asjnansknaxn'),
(59, 'May-17-2022 01:50:20', 'mov pst3', 'Movies', 'akar', 'cacha.jpg', 'ajshuaohsn asuhbaihsua asjbxabsaxa hsjba xajwhbs a'),
(60, 'May-22-2022 19:03:15', 'Messi', 'Sports', 'aso', 'WallpaperDog-20511143.jpg', 'Lionel Messi aaaaaaadsdasdxas'),
(63, 'May-22-2022 19:09:04', 'Joe Biden ', 'Politics', 'aso', 'Biden.jpg', 'Joe Biden is the 46th and current president of the United States'),
(64, 'May-22-2022 19:10:27', 'chemistry', 'Science', 'aso', 'chemistry_logo.jpg', 'chemistry la,slsm askmak skmx adahsjaxx,as'),
(65, 'May-22-2022 19:12:00', 'fitness', 'Fitness', 'aso', 'fitness-center.jpg', 'fitness center  jandjnaj s kaskas '),
(66, 'May-22-2022 19:14:58', 'Natural Disasters', 'World', 'akar', 'natural_disasters.jpg', 'Natural Disasters aaaaaaaa'),
(67, 'May-30-2022 01:37:46', 'allsmdlamlkd', 'Sports', 'aso', 'a1.jpg', 'asjkna siahsihaihsau ua uisaiu hsiuagsi uga'),
(68, 'May-30-2022 23:16:41', 't11111111', 'Technology', 'aso', 'technology111.jpg', 'jashaushkabsas aaaaaaaaaaaaaaa');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `Foreign_Relation` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
