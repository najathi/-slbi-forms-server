-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2020 at 12:54 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slbi_admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `namee` text NOT NULL,
  `address_l_one` text NOT NULL,
  `address_l_two` text NOT NULL,
  `nic_no` varchar(255) NOT NULL,
  `pass_img` varchar(255) NOT NULL,
  `m_no` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `gn_div` varchar(255) NOT NULL,
  `ds_div` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `nic_f_img` varchar(255) NOT NULL,
  `nic_b_img` varchar(255) NOT NULL,
  `sim_no` varchar(255) NOT NULL,
  `sim_s_no` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `id` int(11) NOT NULL,
  `namee` varchar(255) NOT NULL,
  `comBName` varchar(255) NOT NULL,
  `address_l_one` varchar(255) NOT NULL,
  `address_l_two` varchar(255) NOT NULL,
  `y_email` varchar(255) NOT NULL,
  `m_no` varchar(255) NOT NULL,
  `prod_name` varchar(255) NOT NULL,
  `prod_in_id` varchar(255) NOT NULL,
  `prod_in_name` varchar(255) NOT NULL,
  `prod_in_nic` varchar(255) NOT NULL,
  `prod_in_dist` varchar(255) NOT NULL,
  `prod_in_gn` varchar(255) NOT NULL,
  `prod_in_ds` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sim_details`
--

CREATE TABLE `sim_details` (
  `id` int(11) NOT NULL,
  `namee` text NOT NULL,
  `address_l_one` text NOT NULL,
  `address_l_two` text NOT NULL,
  `nic_no` varchar(255) NOT NULL,
  `nic_f_img` varchar(255) NOT NULL,
  `nic_b_img` varchar(255) NOT NULL,
  `m_no` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `gn_div` varchar(255) NOT NULL,
  `ds_div` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `sim_no` varchar(255) NOT NULL,
  `sim_s_no` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users_acc`
--

CREATE TABLE `users_acc` (
  `U_ID` int(11) NOT NULL,
  `Firstname` varchar(255) NOT NULL,
  `Lastname` varchar(255) NOT NULL,
  `U_Email` varchar(255) NOT NULL,
  `U_Password` varchar(255) NOT NULL,
  `PhNo` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `DTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `U_updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `U_Address` varchar(255) DEFAULT NULL,
  `Designation` varchar(255) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `user_role_id` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_acc`
--

INSERT INTO `users_acc` (`U_ID`, `Firstname`, `Lastname`, `U_Email`, `U_Password`, `PhNo`, `Gender`, `DTime`, `U_updated_at`, `U_Address`, `Designation`, `Image`, `user_role_id`) VALUES
(1, 'Mohamed', 'Najathi', 'najathi.cf@slbi.lk', '$2y$10$eIf3Q9VWYbGePLcf31/rluEHR2sQofWZNgZCG9H/0KN.OasHZLmGq', '0754141331', 'Male', '2019-07-21 06:34:10', '2020-02-23 06:03:01', 'Kattankudy', 'Software Developer', '1582437781.png', 1),
(30, 'Mohamed ', 'Nahaarni', 'nahaar.cf@slbi.lk', '$2y$10$4NQh4pEx385CJdu1VTt1KuPFYIqX1XM0MUu1QnbZbpA7/NNncMwn2', '', 'Male', '2020-02-23 05:30:34', '2020-02-23 05:30:34', NULL, NULL, NULL, 1),
(31, 'Mr.', 'Muzammil', 'muzammil.cf@slbi.lk', '$2y$10$V9G8lbuZ4rFgCWy4snrsY.pgmWFatP1ZzDp.iuIC5zJfU1j44lWh2', '', 'Male', '2020-02-24 11:38:28', '2020-02-24 11:38:28', NULL, NULL, NULL, 1),
(35, 'Rifaideen', 'Naidu', 'founder@slbi.lk', '$2y$10$7jtaot/2jJAOMvB2yIvzkOkQBUYBQyADBpTVDcxCrg0ufUPyx2NYq', '', 'Male', '2020-03-08 18:07:52', '2020-03-08 18:07:52', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `role_id` int(1) NOT NULL,
  `role_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`role_id`, `role_name`) VALUES
(0, 'user'),
(1, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sim_details`
--
ALTER TABLE `sim_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_acc`
--
ALTER TABLE `users_acc`
  ADD PRIMARY KEY (`U_ID`),
  ADD KEY `user_role_id` (`user_role_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sim_details`
--
ALTER TABLE `sim_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_acc`
--
ALTER TABLE `users_acc`
  MODIFY `U_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_acc`
--
ALTER TABLE `users_acc`
  ADD CONSTRAINT `users_acc_ibfk_1` FOREIGN KEY (`user_role_id`) REFERENCES `user_role` (`role_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
