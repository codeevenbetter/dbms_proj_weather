-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2024 at 06:19 AM
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
-- Database: `dbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'ADMIN1', 'admin@gmail.com', '123', '2024-04-21 01:50:51'),
(2, 'ADMIN2', 'admin2@gmail.com', '123', '2024-04-21 01:50:51');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `email`, `subject`, `message`, `created_at`) VALUES
(1, 'amprasad.2003@gmail.com', 'hello i want a map of upcoming torandos in sahara', 'do it asap', '2024-04-25 21:24:33'),
(3, 'amprasad.2003@gmail.com', 'hello i want a globe', 'do it asap', '2024-04-25 21:24:33'),
(4, 'amprasad.2003@gmail.com', 'hello i want a map of upcoming torandos in sahara', 'do it asap', '2024-04-25 21:24:33');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `location_id` int(11) NOT NULL,
  `location_name` varchar(255) DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `pincode` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`location_id`, `location_name`, `latitude`, `longitude`, `pincode`) VALUES
(20, 'Sitapur, Barelipar, Chaurai Tahsil, Chhindwara District, Madhya Pradesh, 480115, India', 22.02454560, 79.25330433, '480115'),
(22, 'SH11, Krishnajiwada, Tadwai mandal, Kamareddy District, Telangana, 503110, India', 18.31281085, 78.26130039, '503110'),
(25, 'Kanpur, Kanpur Nagar District, Uttar Pradesh, 208014, India', 26.43614692, 80.32466468, '208014'),
(26, 'MDR206, Behror Jat, Behror Tehsil, Kotputli-Behror District, Rajasthan, 301020, India', 27.89128057, 76.37056405, '301020'),
(27, 'Tulsi Nagar, Bhopal, Huzur Tahsil, Bhopal District, Madhya Pradesh, 462001, India', 23.23125092, 77.40260144, '462001'),
(28, 'Khilwat road, Ghansi Bazaar, Ward 49 Ghansi Bazar, Greater Hyderabad Municipal Corporation South Zone, Hyderabad, Bahadurpura mandal, Hyderabad District, Telangana, 500002, India', 17.36046913, 78.47151392, '500002'),
(29, 'Kali Prasad College, Hamilton Road, George Town, Prayagraj, Prayagraj District, Uttar Pradesh, 211001, India', 25.44327461, 81.85329233, '211001'),
(30, 'Mehrauli Badarpur Road, Pushp Vihar, Sector 2, Hauz Khas Tehsil, South Delhi District, Delhi, 110062, India', 28.51696944, 77.21992992, '110062'),
(31, 'Newa - Punpun Road, Sampatchak, Patna District, Bihar, India', 25.48295118, 85.17662851, '800008'),
(32, 'Clive Row, Tiretta Bazaar, Bara Bazar, Kolkata, Kolkata District, West Bengal, 700007, India', 22.57851049, 88.35010191, '700007'),
(33, '2nd Main Road, Ramachandra Pura, Sriramapura, Bengaluru, Bangalore North, Bengaluru Urban, Karnataka, 560001, India', 12.98850040, 77.56053967, '560001'),
(34, 'Laxmi Vilas Rao Palace, Dandia Bazaar Road, Nava Bazaar, Vadodara, Vadodara Rural Taluka, Vadodara District, Gujarat, 390001, India', 22.29417905, 73.19359469, '390001');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `notification_timestamp` datetime DEFAULT current_timestamp(),
  `is_read` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `user_id`, `event_id`, `notification_timestamp`, `is_read`) VALUES
(1, 3, 18, '2024-04-22 15:20:15', 0),
(3, 3, 21, '2024-04-22 18:52:19', 0),
(4, 3, 22, '2024-04-22 19:08:58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `last_login` datetime DEFAULT current_timestamp(),
  `pincode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`, `created_at`, `last_login`, `pincode`) VALUES
(3, 'ram', 'ram@gmail.com', '123', '2024-04-21 01:42:11', NULL, '480115'),
(7, 'Manoj', 'a@gmail.com', '123', '2024-04-26 05:11:38', '2024-04-26 05:11:38', '390001');

-- --------------------------------------------------------

--
-- Table structure for table `weatherevents`
--

CREATE TABLE `weatherevents` (
  `event_id` int(11) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `event_type` varchar(255) DEFAULT NULL,
  `event_timestamp` datetime DEFAULT NULL,
  `severity_level` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `weatherevents`
--

INSERT INTO `weatherevents` (`event_id`, `location_id`, `event_type`, `event_timestamp`, `severity_level`, `description`) VALUES
(8, 20, 'earthquake', '2024-04-22 14:31:28', 5, 'bhaago'),
(9, 22, 'earthquake', '2024-04-22 14:31:37', 5, 'bacho'),
(12, 22, 'storm', '2024-04-25 21:12:00', 10, 'bhaggo'),
(13, 22, 'storm', '2024-04-25 21:12:00', 10, 'bhaggo'),
(14, 22, 'storm', '2024-04-25 21:12:00', 10, 'bhaggo'),
(15, 22, 'storm', '2024-04-25 21:12:00', 10, 'bhaggo'),
(17, 22, 'storm', '2024-04-22 22:49:00', 5, 'bhaago'),
(18, 20, 'storm', '2024-04-22 18:50:00', 5, 'bhag le beta'),
(19, 20, 'earthquake', '2024-04-24 18:51:00', 5, 'fgfg'),
(20, 20, 'earthquake', '2024-04-24 18:51:00', 5, 'fgfg'),
(21, 20, 'storm', '2024-04-27 18:52:00', 5, 'fdfd'),
(22, 20, 'earthquake', '2024-04-24 23:08:00', 10, 'bhag jayo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `weatherevents`
--
ALTER TABLE `weatherevents`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `location_id` (`location_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `weatherevents`
--
ALTER TABLE `weatherevents`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `weatherevents` (`event_id`);

--
-- Constraints for table `weatherevents`
--
ALTER TABLE `weatherevents`
  ADD CONSTRAINT `weatherevents_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `locations` (`location_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
