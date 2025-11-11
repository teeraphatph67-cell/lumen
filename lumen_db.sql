-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2025 at 07:36 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lumen_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `camera_details`
--

CREATE TABLE `camera_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `zoo_id` bigint(20) NOT NULL,
  `camera_position` varchar(150) NOT NULL,
  `animal_name` varchar(100) NOT NULL,
  `camera_url` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `camera_details`
--

INSERT INTO `camera_details` (`id`, `ip_address`, `zoo_id`, `camera_position`, `animal_name`, `camera_url`, `updated_at`, `created_at`) VALUES
(34, '185.132.26.32', 8, '8', 'เมียแคทกกก', 'https://www.youtube.com/watch?v=60RuPoosyxE', '2025-11-10 08:51:00', '2025-11-10 08:51:00'),
(35, '198.162.26.32', 1, '8', 'เฟรมมี่เท่ส์', 'https://www.youtube.com/watch?v=60RuPoosyxE', '2025-11-10 09:40:00', '2025-11-10 09:40:00'),
(36, '198.192.99.32', 2, '2', 'หมูเด้ง ฮิปโปแคระ', 'https://www.youtube.com/watch?v=60RuPoosyxE', '2025-11-11 04:40:31', '2025-11-11 04:40:31'),
(37, '192.192.13.23', 3, '6', 'asd', 'https://www.bing.com/th/id/OIP.LS6xIdbfhaOK3k_ekxYFJAHaHa?w=197&h=211&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2', '2025-11-11 06:22:11', '2025-11-11 06:22:11'),
(38, '192.116.23.23', 5, '78', 'a', 'https://www.youtube.com/watch?v=60RuPoosyxE', '2025-11-11 06:23:25', '2025-11-11 06:23:25');

-- --------------------------------------------------------

--
-- Table structure for table `selections`
--

CREATE TABLE `selections` (
  `id` int(11) NOT NULL,
  `zoo_id` bigint(20) NOT NULL,
  `zoo_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `selections`
--

INSERT INTO `selections` (`id`, `zoo_id`, `zoo_name`) VALUES
(14, 1, 'สวนสัตว์เปิดเขาเขียว'),
(15, 2, 'สวนสัตว์เชียงใหม่'),
(16, 3, 'สวนสัตว์นครราชสีมา'),
(17, 4, 'สวนสัตว์อุบลราชธานี'),
(18, 5, 'สวนสัตว์ขอนแก่น'),
(19, 6, 'สวนสัตว์สงขลา'),
(20, 7, 'องค์การสวนสัตว์แห่งประเทศไทย'),
(21, 8, 'บริษัท แอดเพย์ เซอร์วิสพอยท์ จำกัด');

-- --------------------------------------------------------

--
-- Table structure for table `staffdb`
--

CREATE TABLE `staffdb` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `zoo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zoo_list`
--

CREATE TABLE `zoo_list` (
  `id` int(11) NOT NULL,
  `name_zoo` varchar(150) DEFAULT NULL,
  `zooprovince` varchar(150) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zoo_list`
--

INSERT INTO `zoo_list` (`id`, `name_zoo`, `zooprovince`, `image_path`) VALUES
(138, 'สวนสัตว์อุบลราชธานี', 'อุบลราชธานี', NULL),
(139, 'สวนสัตว์ขอนแก่น', 'ขอนแก่น', NULL),
(140, 'สวนสัตว์เชียงใหม่', 'เชียงใหม่', NULL),
(141, 'สวนสัตว์เปิดเขาเขียว', 'ชลบุรี', NULL),
(142, 'สวนสัตว์กรุงเทพ', 'กรุงเทพ', NULL),
(144, 'สวนสัตว์อุบลราชธานี1', 'กรุงเทพ', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `camera_details`
--
ALTER TABLE `camera_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `camera_details_ip_address_unique` (`ip_address`),
  ADD UNIQUE KEY `uniq_zoo_id` (`zoo_id`);

--
-- Indexes for table `selections`
--
ALTER TABLE `selections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_zoo_id` (`zoo_id`);

--
-- Indexes for table `staffdb`
--
ALTER TABLE `staffdb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zoo_id` (`zoo_id`);

--
-- Indexes for table `zoo_list`
--
ALTER TABLE `zoo_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `camera_details`
--
ALTER TABLE `camera_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `selections`
--
ALTER TABLE `selections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `staffdb`
--
ALTER TABLE `staffdb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zoo_list`
--
ALTER TABLE `zoo_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `camera_details`
--
ALTER TABLE `camera_details`
  ADD CONSTRAINT `addfk` FOREIGN KEY (`zoo_id`) REFERENCES `selections` (`zoo_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
