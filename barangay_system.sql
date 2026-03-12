-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2026 at 04:42 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barangay_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_Id` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Contact_Number` varchar(20) DEFAULT NULL,
  `Password` varchar(255) NOT NULL DEFAULT 'password',
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_Id`, `Username`, `Email`, `Contact_Number`, `Password`, `date_created`) VALUES
(1, 'admin', 'admin@example.com', '09170001111', '$2y$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcg7b3XeKeUxWdeS86E36P4/DSm', '2026-02-17 06:40:22'),
(2, 'Jadiz', 'jadiz@example.com', '09170002222', '$2y$10$slYQmyNdGzin0d0tIU5H2OPST9/PgBkqx8A/LewKpFQMJqxVO4l7m', '2026-02-17 06:40:22'),
(3, 'saidoi', 'jaidoi@gmail.com', '3321', '$2y$10$k.194cpWSmb77UgdyKVk0e3VTG3lrBlyzQm8mHkbQIUvH7AD43JR2', '2026-02-17 07:02:52'),
(4, 'justine', 'justine@gmail.com', '32133', '$2y$10$pD8Dxdg6qKfSpL5t3wA.e.0yln40AF1iH.0mNmYW9b0A9L5hjEZOm', '2026-02-17 07:11:58'),
(5, 'Louie Vou', 'dzuh@gmail.com', '92381293', '$2y$10$I2ItryzYdpKUI7vWVTzrdOED9fVSNvd7nKnHXoQqHNjXI0KOTw5yG', '2026-02-17 07:52:31'),
(6, 'justinee', 'cadiz@gmail.com', '321321', '$2y$10$uzsghwjje0w6rOjKTd6JHOQtGERg4ZBMm9ACwgRjr0tXeozpFvd.m', '2026-02-17 08:12:38'),
(7, 'sandoy', 'patrick@gmail.com', '09552910513', '$2y$10$wzq.1eJLVhnXPehJxW8G/ua6o2xW9SGAsNoJkLg5Oo1fV6snQqdD2', '2026-02-22 03:34:03'),
(8, 'patrick', 'sandoy@gmail.com', '31231', '$2y$10$T7T5x5pOKhnLbBoj3vDMBOl5rT1wCzabe8XJr1C7MIOdofY8MnQGG', '2026-02-22 04:12:02'),
(9, 'patty', 'patrij@gmail.com', '09414141', '$2y$10$rbkN73KzZmfmXadlgAV9u.RPBVxugNHiFHXElc2Ly9Z93zWKjYkpy', '2026-02-23 14:12:12'),
(10, 'jaja', 'adawd@gmail.com', '23123131231', '$2y$10$.6Ddi5.XjHmI4J05.g/S/.J50TkDuhIxG.sg68Mo2NHxx9f8p2skK', '2026-03-01 06:28:55'),
(11, 'dogie', 'koz@gmail.com', '123123', '$2y$10$zzWW6WVi9Cm0KhxeAIF7Ke2wnwdKhGZVAg5pPjX2y2SpDslejU.1K', '2026-03-07 13:38:18'),
(12, 'favela', 'jcos@gmail.com', '123123', '$2y$10$nLfTN3RJLfiVJem3vBl6cu0grfYruB2g6gB/JFdOrYijundy6pQxq', '2026-03-07 13:40:06');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `item_name` varchar(150) NOT NULL,
  `category` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `status` varchar(50) DEFAULT 'available',
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `item_name`, `category`, `quantity`, `unit`, `status`, `date_added`) VALUES
(1, 'Brooms', 'Equipment', 25, 'pcs', 'available', '2026-02-17 06:40:22'),
(2, 'Dustpans', 'Equipment', 20, 'pcs', 'available', '2026-02-17 06:40:22'),
(3, 'Garbage Bags', 'Supplies', 100, 'box', 'available', '2026-02-17 06:40:22'),
(4, 'Hand Gloves', 'Safety Gear', 50, 'dozen', 'available', '2026-02-17 06:40:22'),
(5, 'Safety Helmets', 'Safety Gear', 15, 'pcs', 'low_stock', '2026-02-17 06:40:22'),
(6, 'Shovels', 'Tools', 10, 'pcs', 'available', '2026-02-17 06:40:22');

-- --------------------------------------------------------

--
-- Table structure for table `letters`
--

CREATE TABLE `letters` (
  `id` int(11) NOT NULL,
  `resident_id` int(11) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` longtext NOT NULL,
  `resident_location` varchar(150) DEFAULT NULL,
  `resident_name` varchar(200) DEFAULT NULL,
  `resident_email` varchar(100) DEFAULT NULL,
  `resident_contact` varchar(20) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'unread',
  `date_sent` timestamp NOT NULL DEFAULT current_timestamp(),
  `read_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `letters`
--

INSERT INTO `letters` (`id`, `resident_id`, `subject`, `message`, `resident_location`, `resident_name`, `resident_email`, `resident_contact`, `status`, `date_sent`, `read_at`) VALUES
(1, 7, 'biodegrable', 'Trash Type: Biodegradable | Weight: 0 kg\n\n', 'zone1', 'sai doi', 'justine@gmail.com', '321321', 'read', '2026-02-17 07:11:32', '2026-02-17 15:12:14'),
(2, 7, 'baiodegrable', 'Trash Type: Biodegradable | Weight: 0 kg\n\n', 'zone1', 'sai doi', 'justine@gmail.com', '321321', 'read', '2026-02-17 08:27:15', '2026-02-17 16:27:32'),
(3, 7, 'baiodegrable', 'Trash Type: Biodegradable | Weight: 12 kg\n\n', 'zone1', 'sai doi', 'justine@gmail.com', '321321', 'read', '2026-02-17 08:30:08', '2026-02-17 16:30:35'),
(4, 20, 'basure', 'Trash Type: Hazardous - Chemicals | Weight: 15 kg\n\nmagpakuha mi dong', 'adwadawdaw', 'dada dada', 'djadjadja@gmail.com', '123123231', 'read', '2026-03-01 07:13:11', '2026-03-01 15:13:46'),
(5, 22, 'dadada', 'Trash Type: Non-biodegradable | Weight: 23 kg\n\nbasta', '131313gagaga', 'what da', 'kakak@gmail.com', '0313123131', 'read', '2026-03-06 14:51:17', '2026-03-07 22:59:56'),
(6, 22, 'basure', 'Trash Type: Mixed Waste | Weight: 123 kg\n\nsir tabang', '131313gagaga', 'what da', 'kakak@gmail.com', '0313123131', 'unread', '2026-03-07 13:41:51', NULL),
(7, 22, 'basure', 'Trash Type: Mixed Waste | Weight: 12312 kg\n\ndasfasf', '131313gagaga', 'what da', 'kakak@gmail.com', '0313123131', 'read', '2026-03-07 13:48:35', '2026-03-07 23:00:01'),
(8, 22, 'dadada', 'Trash Type: Mixed Waste | Weight: 1231 kg\n\nitlog', '131313gagaga', 'what da', 'kakak@gmail.com', '0313123131', 'unread', '2026-03-07 13:49:25', NULL),
(9, 22, 'basure', 'Trash Type: Mixed Waste | Weight: 123123 kg\n\n123123123da hel', '131313gagaga', 'what da', 'kakak@gmail.com', '0313123131', 'read', '2026-03-07 13:58:10', '2026-03-07 23:00:04'),
(10, 25, 'basure', 'Trash Type: Mixed Waste | Weight: -0.113123 kg\n\nimissue', 'dunngoy', 'kapuya tired', 'tayr@gmail.com', '123123', 'unread', '2026-03-07 15:00:47', NULL),
(11, 25, 'basure', 'Trash Type: Mixed Waste | Weight: -0.113123 kg\n\nimissue', 'dunngoy', 'kapuya tired', 'tayr@gmail.com', '123123', 'unread', '2026-03-07 15:02:23', NULL),
(12, 25, 'basure', 'Trash Type: Mixed Waste | Weight: -0.113123 kg\n\nimissue', 'dunngoy', 'kapuya tired', 'tayr@gmail.com', '123123', 'read', '2026-03-07 15:02:26', '2026-03-07 23:03:34'),
(13, 25, 'seryos', 'Trash Type: Mixed Waste | Weight: 123123 kg\n\nsasfas kapuya na', 'dunngoy', 'kapuya tired', 'tayr@gmail.com', '123123', 'read', '2026-03-07 15:35:26', '2026-03-07 23:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `residents`
--

CREATE TABLE `residents` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `location` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `residents`
--

INSERT INTO `residents` (`id`, `first_name`, `last_name`, `email`, `contact_number`, `location`, `password`, `date_added`) VALUES
(1, 'Juan', 'Dela Cruz', 'juan@example.com', '09171234567', '123 Mabini St', '$2y$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcg7b3XeKeUxWdeS86E36P4/DSm', '2026-02-17 06:40:22'),
(2, 'Maria', 'Santos', 'maria@example.com', '09987654321', '456 Rizal Ave', '$2y$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcg7b3XeKeUxWdeS86E36P4/DSm', '2026-02-17 06:40:22'),
(3, 'Pedro', 'Bautista', 'pedro@example.com', '09221234567', '789 Bonifacio St', '$2y$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcg7b3XeKeUxWdeS86E36P4/DSm', '2026-02-17 06:40:22'),
(4, 'Ana', 'Garcia', 'ana@example.com', '09335678901', '321 Palma St', '$2y$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcg7b3XeKeUxWdeS86E36P4/DSm', '2026-02-17 06:40:22'),
(5, 'Luis', 'Rodriguez', 'luis@example.com', '09445678912', '654 Quezon Ave', '$2y$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcg7b3XeKeUxWdeS86E36P4/DSm', '2026-02-17 06:40:22'),
(6, 'le', 'licks', 'sandoy@cadiz.jonson', '321321321', 'zone 2 dalipuga', '$2y$10$IaTDjSDohxEwu18qlT/o1ubRzQPmIIVzz0WOq5ohi9zq6aDGS4CeK', '2026-02-17 07:00:36'),
(7, 'sai', 'doi', 'justine@gmail.com', '321321', 'zone1', '$2y$10$jOyIWxF4SPxPL0sZIt42W.yZ9/JPE0iG4yH1HEKfIDgxk.QWJCq9u', '2026-02-17 07:10:31'),
(8, 'GLO', 'TETRA', 'HAPLAS@GMAIL.COM', '123123', 'ILANG PATRICK DAPIT', '$2y$10$3YxWYPkgtIv2gvSAdOuxZO0Ctr26d7bojBuc7Fdx9GLIte1jel372', '2026-02-17 07:50:31'),
(9, 'glo', 'tetra', 'maus@gmail.com', '12312312', 'sfasfasf patrick', '$2y$10$fIH5Da6aCh5LPFfissLm.evTxIwO8lwvHsgKcQcpPREGfmqhv.RW2', '2026-02-17 07:53:28'),
(10, 'glo', 'tetra', 'faye@gmail.com', '1293901724', 'ilang patrick hahah', '$2y$10$ki1SvjTZvZsTQN7KNM9/zeDdfEldk.4uKN9ciMksJRkkY9J45JKYe', '2026-02-17 07:57:29'),
(11, 'jsutine', 'cadia', 'jusine@gmail.com', '21321', 'zone1', '$2y$10$S0oRlewGHB7I28tfhcKNxeUeZuD6ODqgBs9z9O9z6yCXVkCRJD0IC', '2026-02-17 08:04:54'),
(12, 'sandoy', 'patrick', 'patricksandoy@gmail.com', '244234', 'rwarwa', '$2y$10$RVuOpQoilLUtSX874QneZelYQz5b372VnCyfQe6Nbtn15rjRLJk7q', '2026-02-22 03:52:04'),
(13, 'sandoy', 'patrick', 'patricksando@gmail.com', '244234', 'rwarwa', '$2y$10$E.En2td7byVZpL72yXdVbeLTHN0G4NVy67.DQvQI37DyZRG3iblNe', '2026-02-22 03:55:02'),
(14, 'sandoy', 'patrick', 'patricksandody@gmail.com', '244234', 'rwarwa', '$2y$10$upHGeW89f3yDQFXlh5Z/JOH5uHJaA4/wZO1LlaqUytCk9hexgfwmO', '2026-02-22 03:58:45'),
(15, 'sandoy', 'patrick', 'patricksanddody@gmail.com', '244234', 'rwarwa', '$2y$10$0bmf.xLcsaYtBAqSwblyTeQbyXVtlTLKHt3ccrO445JEPzjxgzVxG', '2026-02-22 04:01:20'),
(16, 'sandoy', 'patrick', 'dawdawd@gmail.com', '213312', 'dawd', '$2y$10$tUnibRtHPNawQ3PpDMuoFuCZxJlmv3ITMsYg.sbs90Pwa6yL4xHv.', '2026-02-22 04:06:34'),
(17, 'xiely', 'chan', 'xielchan@gmail.com', '31231231', 'dwadawda', '$2y$10$s4uJpqmT7gFmExR8uIQE5.cUjG2LQJviCntnKLTJtmnxrbB0s2YlK', '2026-02-23 13:53:16'),
(18, 'ddwad', 'dawda', 'dwadd@gmail.comq', '31313', 'e1313', '$2y$10$JGjk2RvNV0xmJTGfP/wr3OBbU8FxGYnmTWhCV2t1tEJl/eHNQN68a', '2026-02-23 14:45:42'),
(19, 'maynard', 'dawdada', NULL, '312345245', 'dadawdawda', '', '2026-03-01 06:47:14'),
(20, 'dada', 'dada', 'djadjadja@gmail.com', '123123231', 'adwadawdaw', '$2y$10$9o6/kVbRatkqLNHry6jjFusMK/222AG9kzm.4YnAd7BLZdhkCxYbe', '2026-03-01 06:52:42'),
(21, 'qeqwe', 'qqqqe', 'dawdawda@gmail.com', '12313131', 'jajhaaj', '$2y$10$kXzJiyfoHFhzO82jNid/zudvggC4HmZVhgMtQ6QzXgzGDklWdhqvO', '2026-03-01 06:59:58'),
(22, 'what', 'da', 'kakak@gmail.com', '0313123131', '131313gagaga', '$2y$10$YNIKZRt6MnUTSNHRa0Jf5uKNED6HKQPM1wMpKrF6HWuxNaxARXoR2', '2026-03-06 14:49:53'),
(23, 'lala', 'ka', 'kakakak@gmail.com', '0313213123', 'adahduawda1313', '$2y$10$n6UYYXkb.dc8jBh/EP8Xz.HMWGsIpR9017M82QwyfQ2GGmN7TrXd2', '2026-03-06 15:52:41'),
(24, 'bucks', 'peso', 'jugjugahah@gmail.com', '123123', 'yes asdja', '$2y$10$.5W5Pw8vHy4GVl2ZJ/BQt.ddSn7TzCkbWV8GmnvOKs7k2qx2GGThG', '2026-03-07 13:30:18'),
(25, 'kapuya', 'tired', 'tayr@gmail.com', '123123', 'dunngoy', '$2y$10$n3Ocro6safNicmEz3ccZt.kRnfnei8WUVOx9u9GV3EhhHC60/UOr2', '2026-03-07 14:56:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_Id`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `letters`
--
ALTER TABLE `letters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resident_id` (`resident_id`);

--
-- Indexes for table `residents`
--
ALTER TABLE `residents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Admin_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `letters`
--
ALTER TABLE `letters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `residents`
--
ALTER TABLE `residents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `block` varchar(100) NOT NULL,
  `collection_time` varchar(100) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `resident_id` int(11) NOT NULL,
  `resident_name` varchar(200) NOT NULL,
  `resident_email` varchar(100) DEFAULT NULL,
  `subject` varchar(200) NOT NULL,
  `message` longtext NOT NULL,
  `rating` int(1) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'unread',
  `date_submitted` timestamp NOT NULL DEFAULT current_timestamp(),
  `response` longtext DEFAULT NULL,
  `response_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `resident_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `sender_type` varchar(20) NOT NULL,
  `sender_name` varchar(200) NOT NULL,
  `message` longtext NOT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `date_sent` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resident_id` (`resident_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resident_id` (`resident_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `letters`
--
ALTER TABLE `letters`
  ADD CONSTRAINT `letters_ibfk_1` FOREIGN KEY (`resident_id`) REFERENCES `residents` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
