-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 26, 2019 at 02:02 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expressfood`
--

-- --------------------------------------------------------

--
-- Table structure for table `bikers`
--

DROP TABLE IF EXISTS `bikers`;
CREATE TABLE IF NOT EXISTS `bikers` (
  `bikers_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `l_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bikers_phone` int(11) NOT NULL,
  PRIMARY KEY (`bikers_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bikers`
--

INSERT INTO `bikers` (`bikers_id`, `f_name`, `l_name`, `bikers_phone`) VALUES
(1, 'Jane', 'Lentini', 5846354),
(2, 'George', ' Carranza', 54546645),
(3, 'Adam', 'Heine', 65454645),
(4, 'Stephanie', 'Walmsley', 64646469),
(5, 'Ricky', 'Rodburg', 25598475);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `l_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_phone` int(20) NOT NULL,
  `cust_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `f_name`, `l_name`, `cust_phone`, `cust_email`) VALUES
(1, 'Sam', 'Smith', 684598654, 'sam_smith@email.com'),
(2, 'Michael', 'Stevenson', 545342524, 'michael54@email.com'),
(3, 'Lilian', 'Jones', 541358421, 'Lilij4@email.com'),
(4, 'Theresa', 'Boschetto', 542153874, 'theresa_boschetto@email.com'),
(5, 'Jörg ', 'Röder', 521357241, 'joergeroeder@email.com'),
(6, 'Grace', 'Lancaster', 52346385, 'grace_lancaster@email.com'),
(7, 'Andrea', 'Windham', 528657421, 'anja_windham@email.com'),
(8, 'Norah', 'Toddisco', 654321541, 'norah15@email.com'),
(9, 'Jennie', 'Stengel', 413685421, 'jenn_sten@email.com'),
(10, 'Carlos', 'Hightower', 421685432, 'carlos65@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `cust_addresses`
--

DROP TABLE IF EXISTS `cust_addresses`;
CREATE TABLE IF NOT EXISTS `cust_addresses` (
  `cust_a_id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_id` int(11) NOT NULL,
  `addresses` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`cust_a_id`),
  KEY `cust_id` (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cust_addresses`
--

INSERT INTO `cust_addresses` (`cust_a_id`, `cust_id`, `addresses`) VALUES
(1, 1, '81 Modoc Alley'),
(2, 2, '1497 Jerry Toth Drive'),
(3, 3, '699 Dye Street'),
(4, 4, '3971 Lake Floyd Circle'),
(5, 5, '3729 Coolidge Street'),
(6, 6, '4255 Emily Drive'),
(7, 7, '2250 Patterson Street'),
(8, 8, '838 Harper Street'),
(9, 9, '4135 Farnum Road'),
(10, 10, '1462 Saint Clair Street');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

DROP TABLE IF EXISTS `dishes`;
CREATE TABLE IF NOT EXISTS `dishes` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_price` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_stock` int(11) NOT NULL,
  `item_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`item_id`, `item_name`, `item_price`, `item_stock`, `item_type`, `date`) VALUES
(28, 'Spaghetti with red sauce', '8.50', 50, 'Main dish', '25.02.2019'),
(29, 'Turkey Pesto wrap', '6.20', 50, 'Main dish', '25.02.2019'),
(30, 'Apple pie ', '5.00', 50, 'Dessert', '25.02.2019'),
(31, 'Jelly with fruits', '3.20', 50, 'Dessert', '25.02.2019'),
(32, 'Angus beef burger', '10.00', 60, 'Main dish', '26.02.2019'),
(33, 'Pulled chicken', '10.00', 60, 'Main dish', '26.02.2019'),
(34, 'Tiramisu', '6.00', 50, 'Dessert', '26.02.2019'),
(35, 'Carrot cupcakes', '5.00', 60, 'Dessert', '26.02.2019'),
(36, 'Sliced pork', '12.00', 50, 'Man dish', '27.02.2019'),
(37, 'Trip tip pork loin', '10.00', 50, 'Main dish', '27.02.2019'),
(38, 'Bannanas puddin', '6.00', 50, 'Dessert', '27.02.2019'),
(39, 'Brownies', '6.40', 50, 'Dessert', '27.02.2019'),
(40, 'Veggie Kabs ', '11.00', 50, 'Main dish', '28.02.2019'),
(41, 'Pork spare ribs', '12.00', 50, 'Main dish', '28.02.2019'),
(42, 'chocolate cookies', '4.00', 60, 'Dessert', '28.02.2019'),
(43, 'Peach pie', '5.00', 50, 'Dessert', '28.02.2019'),
(44, 'Tacos', '9.60', 60, 'Main dish', '01.03.2019'),
(45, 'Grilled salmon', '10.00', 50, 'Main dish', '01.03.2019'),
(46, 'Cholate cake', '6.30', 50, 'Desert', '01.03.2019'),
(47, 'Fruit cake', '5.00', 50, 'Dessert', '01.03.2019'),
(48, 'Southern Burger', '10.00', 50, 'Main dish', '02.03.2019'),
(49, 'Chicken potpie', '8.50', 60, 'Main dish', '02.03.2019'),
(50, 'Blueberry cheesecake', '6.20', 50, 'Dessert', '02.03.2019'),
(51, 'Biscuits', '5.00', 50, 'Dessert', '02.03.2019'),
(52, 'Green chili', '8.60', 50, 'Main dish', '03.03.2019'),
(53, 'Cuban sandwich', '9.70', 50, 'Main dish', '03.03.2019'),
(54, 'Vanilla cake ', '5.20', 50, 'Dessert', '03.03.2019'),
(55, 'Strawberry cake', '6.20', 50, 'Dessert', '03.03.2019');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_id` int(11) NOT NULL,
  `biker_id` int(11) NOT NULL,
  `date` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `cust_id` (`cust_id`),
  KEY `biker_id` (`biker_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `cust_id`, `biker_id`, `date`, `time`, `total_price`) VALUES
(1, 1, 2, '25.02.2019', '11:30', '13.50'),
(2, 6, 1, '25.02.2019', '11:50', '15.60'),
(3, 9, 5, '25.02.2019', '11:55', '11.20'),
(4, 10, 4, '25.02.2019', '12:35', '11.70'),
(5, 2, 3, '25.02.2019', '12:40', '18.50'),
(6, 4, 2, '25.02.2019', '12:50', '14.70'),
(7, 7, 1, '25.02.2019', '13:00', '16.20'),
(8, 3, 4, '25.02.2019', '13:05', '11.70'),
(9, 5, 5, '25.02.2019', '13:30', '6.20'),
(10, 8, 3, '25.02.2019', '14:20', '8.50'),
(11, 9, 3, '26.02.2019', '11:50', '15.00'),
(12, 6, 2, '26.02.2019', '12:10', '30.00'),
(13, 8, 4, '26.02.2019', '12:15', '16.00'),
(14, 1, 5, '26.02.2019', '12:43', '10.00'),
(15, 4, 1, '26.02.2019', '13:02', '16.00'),
(16, 5, 4, '26.02.2019', '13:24', '15.00'),
(17, 7, 2, '26.02.2019', '13:39', '10.00'),
(18, 3, 3, '26.02.2019', '14:02', '20.00'),
(19, 10, 1, '26.02.2019', '14:13', '15.00'),
(20, 2, 5, '27.02.2019', '11:20', '12.00'),
(21, 5, 3, '27.02.2019', '11:38', '18.00'),
(22, 10, 2, '27.02.2019', '12:26', '16.40'),
(23, 7, 1, '27.02.2019', '12:30', '10'),
(24, 4, 3, '27.02.2019', '12:41', '30.00'),
(25, 1, 2, '27.02.2019', '12:58', '16.00'),
(26, 3, 5, '27.02.2019', '13:07', '12.00'),
(27, 6, 1, '27.02.2019', '13:16', '18.40'),
(28, 8, 2, '27.02.2019', '13:24', '32.00'),
(29, 9, 3, '27.02.2019', '13:24', '10.00'),
(30, 8, 5, '28.02.2019', '12:02', '15.00'),
(31, 3, 2, '28.02.2019', '12:43', '11.00'),
(32, 6, 1, '28.02.2019', '12:49', '32.00'),
(33, 5, 2, '28.02.2019', '13:00', '17.00'),
(34, 10, 5, '28.02.2019', '13:26', '12.00'),
(35, 1, 3, '28.02.2019', '13:51', '22.00'),
(36, 7, 4, '28.02.2019', '14:10', '16.00'),
(37, 6, 1, '01.03.2019', '11:30', '14.60'),
(38, 4, 5, '01.03.2019', '11:50', '20.00'),
(39, 3, 4, '01.03.2019', '12:01', '9.60'),
(40, 2, 3, '01.03.2019', '12:09', '15.90'),
(41, 9, 2, '01.03.2019', '12:20', '10.00'),
(42, 10, 5, '01.03.2019', '12:38', '16.30'),
(43, 7, 1, '01.03.2019', '12:42', '19.20'),
(44, 6, 3, '01.03.2019', '12:49', '15.00'),
(45, 8, 4, '01.03.2019', '13:04', '14.60'),
(46, 10, 2, '02.03.2019', '11:30', '8.50'),
(47, 6, 3, '02.03.2019', '11:40', '29.40'),
(48, 1, 5, '02.03.2019', '12:00', '15.00'),
(49, 4, 1, '02.03.2019', '12:08', '10.00'),
(50, 2, 2, '02.03.2019', '12:16', '13.50'),
(51, 3, 4, '02.03.2019', '12:34', '16.20'),
(52, 7, 3, '02.03.2019', '12:51', '8.50'),
(53, 9, 5, '02.03.2019', '13:26', '16.20'),
(54, 5, 1, '02.03.2019', '13:28', '17.00'),
(55, 8, 4, '02.03.2019', '13:33', '10.00'),
(56, 3, 2, '03.03.2019', '12:01', '14.80'),
(57, 2, 3, '03.03.2019', '12:26', '9.70'),
(58, 6, 5, '03.03.2019', '12:29', '14.90'),
(59, 4, 4, '03.03.2019', '12:34', '14.90'),
(60, 10, 3, '03.03.2019', '12:45', '17.20'),
(61, 9, 2, '03.03.2019', '12:54', '15.90'),
(62, 7, 1, '03.03.2019', '13:15', '13.80'),
(63, 5, 4, '03.03.2019', '13:26', '25.60'),
(64, 8, 3, '03.03.2019', '13:40', '8.60'),
(65, 10, 3, '25.02.2019', '11:30', '15.00');

-- --------------------------------------------------------

--
-- Table structure for table `order_quantities`
--

DROP TABLE IF EXISTS `order_quantities`;
CREATE TABLE IF NOT EXISTS `order_quantities` (
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `order_id` (`order_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_quantities`
--

INSERT INTO `order_quantities` (`order_id`, `item_id`, `quantity`) VALUES
(1, 28, '01'),
(1, 30, '01'),
(2, 29, '02'),
(2, 31, '01'),
(3, 29, '01'),
(3, 30, '01'),
(4, 28, '01'),
(4, 31, '01'),
(5, 28, '01'),
(5, 31, '02'),
(6, 28, '01'),
(6, 29, '01'),
(7, 29, '02'),
(7, 30, '02'),
(8, 28, '01'),
(8, 31, '01'),
(9, 29, '01'),
(10, 28, '01'),
(11, 32, '01'),
(11, 35, '01'),
(11, 33, '02'),
(12, 35, '02'),
(12, 33, '01'),
(13, 34, '01'),
(13, 33, '01'),
(14, 32, '01'),
(15, 32, '01'),
(15, 34, '01'),
(16, 33, '01'),
(16, 34, '01'),
(17, 32, '01'),
(18, 33, '02'),
(19, 33, '01'),
(19, 35, '01'),
(20, 36, '01'),
(21, 36, '01'),
(21, 38, '01'),
(22, 37, '01'),
(22, 39, '01'),
(23, 37, '01'),
(24, 36, '02'),
(24, 38, '01'),
(25, 37, '01'),
(25, 38, '01'),
(26, 36, '01'),
(27, 36, '01'),
(27, 39, '01'),
(28, 37, '01'),
(28, 38, '01'),
(29, 37, '01'),
(30, 40, '01'),
(30, 42, '01'),
(31, 40, '01'),
(32, 40, '02'),
(32, 43, '02'),
(33, 41, '01'),
(33, 43, '01'),
(34, 41, '01'),
(35, 40, '02'),
(36, 41, '01'),
(36, 42, '01'),
(37, 44, '01'),
(37, 47, '01'),
(38, 45, '02'),
(39, 44, '01'),
(40, 44, '01'),
(40, 46, '01'),
(41, 45, '01'),
(42, 45, '01'),
(42, 46, '01'),
(43, 44, '02'),
(44, 45, '01'),
(44, 47, '01'),
(45, 44, '01'),
(45, 47, '01'),
(46, 49, '01'),
(47, 49, '02'),
(47, 50, '02'),
(48, 48, '01'),
(48, 51, '01'),
(49, 48, '01'),
(50, 49, '01'),
(50, 51, '01'),
(51, 49, '01'),
(51, 51, '01'),
(52, 50, '01'),
(53, 49, '01'),
(53, 48, '01'),
(54, 50, '01'),
(55, 49, '02'),
(56, 52, '01'),
(57, 55, '01'),
(58, 53, '01'),
(59, 53, '01'),
(59, 54, '01'),
(60, 53, '01'),
(60, 54, '01'),
(61, 52, '02'),
(62, 53, '01'),
(62, 55, '01'),
(63, 52, '01'),
(63, 54, '01'),
(64, 53, '02'),
(64, 55, '01'),
(65, 52, '01');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cust_addresses`
--
ALTER TABLE `cust_addresses`
  ADD CONSTRAINT `cust_addresses_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`biker_id`) REFERENCES `bikers` (`bikers_id`);

--
-- Constraints for table `order_quantities`
--
ALTER TABLE `order_quantities`
  ADD CONSTRAINT `order_quantities_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_quantities_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `dishes` (`item_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
