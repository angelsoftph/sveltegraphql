-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2024 at 12:43 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `legalmatch`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `street` varchar(50) NOT NULL,
  `city` varchar(30) NOT NULL,
  `is_primary` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `employee_id`, `street`, `city`, `is_primary`) VALUES
(1, 1, 'Clark', 'Angeles, Pampanga', 0),
(2, 1, 'Atrium', 'Concepcion, Tarlac', 1),
(3, 2, 'Sindalan', 'San Fernando, Pampanga', 1),
(4, 3, 'Walking Street', 'Angeles, Pampanga', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `contact` varchar(30) NOT NULL,
  `is_primary` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `employee_id`, `contact`, `is_primary`) VALUES
(1, 1, '0965-198-6520', 1),
(2, 2, '0912-345-6789', 1),
(3, 3, '0999-123-6969', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `mname` varchar(30) NOT NULL,
  `bdate` char(10) NOT NULL,
  `gender` char(1) NOT NULL,
  `cstatus` char(1) NOT NULL,
  `position` varchar(30) NOT NULL,
  `datehired` char(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `fname`, `lname`, `mname`, `bdate`, `gender`, `cstatus`, `position`, `datehired`, `created_at`, `updated_at`) VALUES
(1, 'Fred', 'Pogi', 'Gwapo', '1987-02-06', 'M', 'D', 'Sr Full Stack Developer', '2024-08-12', '2024-08-15 05:22:12', '2024-08-16 08:53:20'),
(2, 'Orjan', 'Bognot', '', '', '', '', '', '', '2024-08-14 02:04:02', '2024-08-14 07:01:40'),
(3, 'Jack', 'Collins', 'Cole', '1985-12-08', '', '', 'Full Stackoverflow Dev', '2024-06-02', '2024-08-14 02:28:48', '2024-08-16 02:02:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pword` varchar(255) NOT NULL,
  `role` char(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `pword`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@legalmatch.com', '$2a$10$H2G0Q0LDczkZHpWnTa8liOSP3BcRzNF16C7NsIiKztkeyNIaf2b2O', 'A', '2024-08-16 04:06:46', NULL),
(2, 'Standard', 'user@legalmatch.com', '$2a$10$H2G0Q0LDczkZHpWnTa8liOSP3BcRzNF16C7NsIiKztkeyNIaf2b2O', 'S', '2024-08-16 06:52:02', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
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
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
