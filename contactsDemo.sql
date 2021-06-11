-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2021 at 11:11 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contactlist_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `first_name`, `last_name`, `email`, `phone_no`, `image`, `created`, `updated`) VALUES
(3, 'afhajkhf', 'afhajkh', 'akjkfhjah', '23455243', '', '2021-06-11 18:07:01', '2021-06-11 18:07:01'),
(4, 'jkhf', 'afhajkh', 'akjkfhjah', '23455243', '', '2021-06-11 18:07:01', '2021-06-11 18:07:01'),
(5, 'afhajkhf', 'afhajkh', 'akjkfhjah', '23455243', 'image/1623443162profile.jpg', '2021-06-11 18:07:01', '2021-06-11 20:26:02'),
(6, 'fhajkhf', 'afhajkh', 'akjkfhjah', '23455243', '', '2021-06-11 18:07:01', '2021-06-11 18:07:01'),
(7, 'afhajkhf', 'afhajkh', 'akjkfhjah', '23455243', '', '2021-06-11 18:07:01', '2021-06-11 18:07:01'),
(9, 'afhajkhf', 'afhajkh', 'akjkfhjah', '23455243', '', '2021-06-11 18:07:01', '2021-06-11 18:07:01'),
(10, 'f1hajkhf', 'afhajkh', 'akjkfhjah', '23455243', '', '2021-06-11 18:07:01', '2021-06-11 18:07:01'),
(11, 'afhajkhf', 'afhajkh', 'akjkfhjah', '23455243', '', '2021-06-11 18:07:01', '2021-06-11 18:07:01'),
(12, 'Kushal', 'Patel', 'kushal@yahoo.com', '13647879', 'image/1623439980profile.jpg', '2021-06-11 19:33:00', '2021-06-11 19:57:49'),
(13, 'Test', 'Check', 'kushal@gmail.com', '123456', 'image/1623441449profile.jpg', '2021-06-11 19:57:29', '2021-06-11 19:57:29'),
(14, 'Hello', 'Test', 'sajhkfah@gmail.com', '5235245543', '', '2021-06-11 20:42:46', '2021-06-11 20:42:46'),
(15, 'hfjshf', 'apeiapow', 'test@test.com', '1234', '', '2021-06-11 20:45:17', '2021-06-11 20:45:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
