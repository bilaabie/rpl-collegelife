-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2021 at 02:34 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college_life`
--

-- --------------------------------------------------------

--
-- Table structure for table `archive`
--

CREATE TABLE `archive` (
  `arch_id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `archive`
--

INSERT INTO `archive` (`arch_id`, `category`) VALUES
(1, 'Portofolio'),
(2, 'Certificate'),
(3, 'etc.');

-- --------------------------------------------------------

--
-- Table structure for table `archpost`
--

CREATE TABLE `archpost` (
  `img_id` int(11) NOT NULL,
  `arch_id` int(11) NOT NULL,
  `upload_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `archpost`
--

INSERT INTO `archpost` (`img_id`, `arch_id`, `upload_image`) VALUES
(10, 2, 'course_certificate-1.jpg.3'),
(11, 2, 'Zahra Nabila Falenanda [UIUXB].jpg.31'),
(12, 1, 'Konsultasi.jpg.2'),
(13, 2, 'Saly-10.png.45'),
(14, 1, 'Konsultasi.jpg.5'),
(15, 1, 'Konsultasi.jpg.46'),
(16, 1, 'Saly-10.png.19'),
(17, 1, 'Group 88.png.79'),
(18, 1, 'Konsultasi.jpg.21'),
(19, 1, 'Konsultasi.jpg.68'),
(20, 1, 'Konsultasi.jpg.64'),
(21, 1, 'Konsultasi.jpg.100'),
(22, 1, 'Konsultasi.jpg.85'),
(23, 1, 'Konsultasi.jpg.42'),
(24, 2, 'Konsultasi.jpg.77'),
(25, 1, 'Konsultasi.jpg.41'),
(26, 1, 'Konsultasi.jpg.77'),
(27, 1, 'Konsultasi.jpg.31'),
(28, 2, 'Konsultasi.jpg.51'),
(29, 1, 'Saly-10.png.42'),
(30, 1, 'Saly-10.png.61'),
(31, 1, 'Saly-10.png.13'),
(32, 1, 'Saly-10.png.13'),
(33, 1, 'Konsultasi.jpg.93'),
(34, 1, 'Saly-10.png.59'),
(35, 1, 'Saly-10.png.39'),
(36, 2, 'Konsultasi.jpg.49'),
(37, 1, 'Konsultasi.jpg.57'),
(38, 2, 'FCT-xn9VEAIh4zi.jpg.83'),
(39, 1, '9.png.24'),
(40, 1, 'Konsultasi.jpg.18'),
(41, 2, 'Saly-10.png.100'),
(42, 2, 'Konsultasi.jpg.99'),
(43, 1, 'FCT-xn9VEAIh4zi.jpg.63'),
(44, 1, 'Konsultasi.jpg.75'),
(45, 1, 'FCT-xn9VEAIh4zi.jpg.46'),
(46, 1, 'WhatsApp Image 2021-12-04 at 08.14.51.jpeg.51'),
(47, 1, 'Konsultasi.jpg.82'),
(48, 1, 'FCT-xn9VEAIh4zi.jpg.63'),
(49, 1, 'Group 88.png.60'),
(50, 2, 'Konsultasi.jpg.84'),
(51, 2, 'FCT-xn9VEAIh4zi.jpg.19'),
(52, 1, 'Konsultasi.jpg.97'),
(53, 1, 'Group 88.png.65');

-- --------------------------------------------------------

--
-- Stand-in structure for view `categorypost`
-- (See below for the actual view)
--
CREATE TABLE `categorypost` (
`img_id` int(11)
,`upload_image` text
,`categoryID` int(11)
,`archiveID` int(11)
,`category` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `com_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `comment_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`com_id`, `post_id`, `user_id`, `comment`, `comment_author`, `date`, `comment_status`) VALUES
(7, 53, 23, 'hi', 'nabilafalen', '2021-12-25 18:27:06', 1),
(8, 53, 23, 'hello', 'nabilafalen', '2021-12-25 18:50:31', 1),
(9, 53, 23, 'hello', 'nabilafalen', '2021-12-25 18:50:31', 1),
(10, 53, 23, 'ok', 'nabilafalen', '2021-12-25 18:55:11', 1),
(11, 53, 23, 'hii', 'nabilafalen', '2021-12-25 19:00:04', 1),
(12, 53, 23, 'your design so cool', 'nabilafalen', '2021-12-25 19:09:01', 1),
(13, 53, 23, 'helo', 'nabilafalen', '2021-12-25 19:15:14', 1),
(14, 53, 23, 'hellllloo', 'nabilafalen', '2021-12-25 19:17:40', 1),
(15, 53, 23, 'oa', 'nabilafalen', '2021-12-25 23:44:40', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `post_content` text NOT NULL,
  `upload_image` text NOT NULL,
  `category` varchar(25) NOT NULL,
  `post_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`user_id`, `post_id`, `post_content`, `upload_image`, `category`, `post_date`) VALUES
(23, 52, 'hi', 'Group 88.png.72', 'Portofolio', '2021-12-25 06:26:34'),
(23, 53, 'No', 'Konsultasi.jpg.31', 'Certificate', '2021-12-25 06:28:15');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `title`, `start`, `end`) VALUES
(16, 'he', '2021-12-18 00:00:00', '2021-12-19 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `major` varchar(50) NOT NULL,
  `university` varchar(50) NOT NULL,
  `dateofbirth` varchar(30) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `profpic` text NOT NULL,
  `status` text NOT NULL,
  `posts` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `nama`, `major`, `university`, `dateofbirth`, `pass`, `profpic`, `status`, `posts`) VALUES
(21, 'catniphile', '', 'Nabila', 'IPA', 'UIN', '28 Agustus 2001', 'kimyohan99', 'profile.png', 'verified', 'yes'),
(22, 'bilaabie', 'hai@gmail.com', 'kimia', 'IPA', 'UIN manasaja', '11 Mei 2009', 'ohsehun94', 'profile.png', 'verified', 'yes'),
(23, 'nabilafalen', 'nabilaafalen@gmail.com', 'Nabila', 'Informatics Engineering', 'UIN Jakarta', '10 Agustus 2002', 'weareonesehun', 'profile.png', 'verified', 'yes');

-- --------------------------------------------------------

--
-- Structure for view `categorypost`
--
DROP TABLE IF EXISTS `categorypost`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `categorypost`  AS SELECT `a`.`img_id` AS `img_id`, `a`.`upload_image` AS `upload_image`, `a`.`arch_id` AS `categoryID`, `ar`.`arch_id` AS `archiveID`, `ar`.`category` AS `category` FROM (`archpost` `a` left join `archive` `ar` on(`a`.`arch_id` = `ar`.`arch_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archive`
--
ALTER TABLE `archive`
  ADD PRIMARY KEY (`arch_id`);

--
-- Indexes for table `archpost`
--
ALTER TABLE `archpost`
  ADD PRIMARY KEY (`img_id`),
  ADD KEY `arch_id` (`arch_id`) USING BTREE;

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `userid` (`user_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `archive`
--
ALTER TABLE `archive`
  MODIFY `arch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `archpost`
--
ALTER TABLE `archpost`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `userid` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
