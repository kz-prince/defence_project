-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 24, 2023 at 11:07 PM
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
-- Database: `online_rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `adm_id` int(222) NOT NULL AUTO_INCREMENT,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`adm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin', '123456', 'admin@gmail.com', '', '2023-07-12 12:30:53'),
(2, 'lary', 'lary123', 'kzprince1234@gmail.com', 'help12', '2023-07-12 22:02:44');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(222) NOT NULL AUTO_INCREMENT,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(2, 'PAR', 'Parth', 'Desai', 'parth@gmail.com', '4325345332', 'bc28715006af20d0e961afd053a984d9', 'Vasai', 1, '2021-04-07 08:44:35'),
(3, 'HIT', 'Hitesh', 'Gosavi', 'hitesh@gmail.com', '4325345332', '58b2318af54435138065ee13dd8bea16', 'Malad', 1, '2021-04-07 08:44:53'),
(5, 'Djieuga', 'Ryle', 'Djieuga', 'ryle@gmail.com', '1324325445', 'e10adc3949ba59abbe56e057f20f883e', 'home', 1, '2023-07-12 13:59:29'),
(7, 'che', 'Che', 'Oneal', 'kzprince1234@gmail.com', '2376547982', 'e4ae2208b0d4a6bfd528d8ce3c606d7c', 'Ndokoti', 1, '2023-07-13 01:58:40');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

DROP TABLE IF EXISTS `customer_orders`;
CREATE TABLE IF NOT EXISTS `customer_orders` (
  `o_id` int(100) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `title` varchar(222) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`o_id`, `customer_id`, `product_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(1, 4, 1, 'Paneer Saag', 1, 390, 'closed', '2021-07-16 00:45:56'),
(3, 4, 3, 'Murgh Tikka Biryani', 1, 470, 'closed', '2021-07-16 21:37:16'),
(4, 4, 2, 'Chicken Achari', 1, 250, NULL, '2021-07-16 20:14:01'),
(5, 4, 5, 'Pink Spaghetti Gamberoni', 1, 380, NULL, '2021-07-16 20:36:15'),
(26, 7, NULL, 'Eru', 2, 500, NULL, '2023-07-19 22:00:01'),
(27, 7, NULL, 'Ndole', 12, 1000, NULL, '2023-07-23 16:04:41'),
(28, 7, NULL, 'Ndole', 1, 1000, NULL, '2023-07-23 18:07:20'),
(29, 7, NULL, 'Eru', 5, 500, NULL, '2023-07-23 18:18:08'),
(30, 7, NULL, 'Ekwang', 3, 1000, 'closed', '2023-07-23 18:31:39');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(100) NOT NULL AUTO_INCREMENT,
  `rs_id` int(11) DEFAULT NULL,
  `title` varchar(222) DEFAULT NULL,
  `slogan` varchar(222) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `img` varchar(222) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(17, 5, 'Eru', 'accompanied with fufu or garri', 500, '64b84c374cd94.jpg'),
(18, 5, 'Ekwang', 'delicious ekwang with plenty of fish and meat', 1000, '64b84fac3d49c.jpg'),
(19, 5, 'nkati nkati and fufu corn', 'fufu and vegitible accompanied by a piece of chicken', 1000, '64b85209c8ae5.jpg'),
(20, 2, 'Ndole', 'ndole accompanied with fried plantain or bobolor', 1000, '64bc97e4b107c.jpg'),
(21, 3, 'Ndole', 'ndole accompanied with fried plantain or bobolor', 1000, '64bc97f3b2dc4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

DROP TABLE IF EXISTS `remark`;
CREATE TABLE IF NOT EXISTS `remark` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `frm_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `remarkDate` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(1, 1, 'closed', 'happy', '2021-07-16 00:45:56'),
(2, 3, 'closed', 'Done', '2021-07-16 21:37:16'),
(3, 1, 'closed', 'Done', '2021-07-16 22:15:25'),
(4, 8, 'closed', 'Received successfully', NULL),
(5, 7, 'in process', 'be patient the food is coming', '2023-07-18 23:14:55'),
(6, 9, 'closed', 'Arrived successfully', '2023-07-18 23:16:21'),
(7, 9, 'closed', 'success', '2023-07-18 23:16:47'),
(8, 9, 'closed', 'wow', '2023-07-18 23:16:57'),
(9, 9, 'rejected', 'food order was cancelled', '2023-07-18 23:17:25'),
(10, 9, 'rejected', 'Customer was no longer interested', '2023-07-18 23:17:50'),
(11, 30, 'closed', 'customer paid and was happy', '2023-07-23 18:35:21');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `reservation_id` int(100) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `tablenumber` int(11) DEFAULT NULL,
  `bookingdate` datetime DEFAULT NULL,
  `expecteddate` datetime DEFAULT NULL,
  `status` varchar(222) DEFAULT NULL,
  PRIMARY KEY (`reservation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reservation_id`, `customer_id`, `tablenumber`, `bookingdate`, `expecteddate`, `status`) VALUES
(1, 4, 1, '2021-07-16 00:00:00', '2021-07-17 00:00:00', 'closed'),
(4, 5, 2, '2021-07-16 00:00:00', '2021-07-17 00:00:00', NULL),
(5, 1, 2, '2023-07-14 00:00:00', '2023-07-15 00:00:00', NULL),
(6, 1, 2, '2023-07-14 00:00:00', '2023-07-15 00:00:00', NULL),
(9, 2, 2, '2023-07-15 00:00:00', '2023-07-18 00:00:00', NULL),
(10, 2, 2, '2023-07-15 00:00:00', '2023-07-18 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE IF NOT EXISTS `restaurant` (
  `rs_id` int(222) NOT NULL AUTO_INCREMENT,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(2, 13, 'CHAKAP RESTAURANT', 'chakap121@gmail.com', '0557426406', 'www.chakap.com', '10am', '6pm', '--Select your Days--', ' LOCATION:opposite the entrance to campus D, same building as auto ecole beside the bar to you you left', '64bc92795f243.jpg', '2023-07-23 02:37:45'),
(3, 4, 'TCHERUS RESTAURANT', 'tcherus@china.com', '4326538776', 'www.tcherus.com', '10am', '8pm', 'mon-sat', ' Location: Opposite IUG campus A ', '64bc959a7030b.jpg', '2023-07-23 02:51:06'),
(4, 4, 'TGI Fridays', 'tgi@gmail.com', '2342353325', 'www.tgif.com', '9am', '9pm', 'Mon-Sat', 'Lower Parel', '606d72a49503a.jpg', '2021-04-07 08:51:48'),
(5, 11, 'Mami Eru', 'kzprince1234@gmail.com', '654798871', 'https://www.google.com/search?q=food+ekwang&tbm=isch&hl=en&sa=X&ved=2ahUKEwiGoKnezZuAAxXMnCcCHSivBGQQrNwCKAB6BQgBEJEC&biw=1349&bih=625', '8am', '7pm', 'mon-sat', ' IUG: precisely beside Campus B ', '64bc796494510.jpg', '2023-07-23 00:50:44');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

DROP TABLE IF EXISTS `res_category`;
CREATE TABLE IF NOT EXISTS `res_category` (
  `c_id` int(100) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(222) DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(4, 'Varieties of meal', '2021-04-07 14:15:28'),
(11, 'ERU', '2023-07-14 23:10:28'),
(12, 'Ekwang', '2023-07-19 21:40:48'),
(13, 'NDOLE', '2023-07-23 03:33:15');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
