-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2025 at 04:04 AM
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
  `zoo_id` int(11) DEFAULT NULL,
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
(24, '111.11.1.1', 138, '1', '1', 'https://www.youtube.com/watch?v=60RuPoosyxE', '2025-11-07 08:38:14', '2025-11-07 08:38:14'),
(25, '222.2.2.2', 139, '2', '2', 'https://www.youtube.com/watch?v=60RuPoosyxE', '2025-11-07 08:38:23', '2025-11-07 08:38:23'),
(26, '192.3.3.3', 140, '3', '3', 'https://www.youtube.com/watch?v=60RuPoosyxE', '2025-11-07 08:38:49', '2025-11-07 08:38:49'),
(27, '192.4.4.4', 141, '4', '4', 'https://www.youtube.com/watch?v=60RuPoosyxE', '2025-11-07 08:38:59', '2025-11-07 08:38:59'),
(28, '192.13.23.1', 142, '1', 'หมูเด้ง', 'https://www.youtube.com/watch?v=60RuPoosyxE', '2025-11-07 09:29:18', '2025-11-07 09:29:18');

-- --------------------------------------------------------

--
-- Table structure for table `zoo_list`
--

CREATE TABLE `zoo_list` (
  `id` int(11) NOT NULL,
  `name_zoo` varchar(150) DEFAULT NULL,
  `zooprovince` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zoo_list`
--

INSERT INTO `zoo_list` (`id`, `name_zoo`, `zooprovince`) VALUES
(138, 'สวนสัตว์อุบลราชธานี', 'อุบลราชธานี'),
(139, 'สวนสัตว์ขอนแก่น', 'ขอนแก่น'),
(140, 'สวนสัตว์เชียงใหม่', 'เชียงใหม่'),
(141, 'สวนสัตว์เปิดเขาเขียว', 'ชลบุรี'),
(142, 'สวนสัตว์กรุงเทพ', 'กรุงเทพ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `camera_details`
--
ALTER TABLE `camera_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `camera_details_ip_address_unique` (`ip_address`),
  ADD KEY `test` (`zoo_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `zoo_list`
--
ALTER TABLE `zoo_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `camera_details`
--
ALTER TABLE `camera_details`
  ADD CONSTRAINT `test` FOREIGN KEY (`zoo_id`) REFERENCES `zoo_list` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
