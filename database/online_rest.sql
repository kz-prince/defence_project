-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2023 at 02:22 PM
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
-- Database: `online_rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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

CREATE TABLE `customer` (
  `customer_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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

CREATE TABLE `customer_orders` (
  `o_id` int(100) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `title` varchar(222) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`o_id`, `customer_id`, `product_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(1, 4, 1, 'Paneer Saag', 1, 390, 'closed', '2021-07-16 00:45:56'),
(3, 4, 3, 'Murgh Tikka Biryani', 1, 470, 'closed', '2021-07-16 21:37:16'),
(4, 4, 2, 'Chicken Achari', 1, 250, NULL, '2021-07-16 20:14:01'),
(5, 4, 5, 'Pink Spaghetti Gamberoni', 1, 380, NULL, '2021-07-16 20:36:15'),
(7, 5, 1, 'Paneer Saag', 1, 390, NULL, '2021-07-16 20:37:39'),
(9, 5, NULL, 'Paneer Saag', 12, 390, NULL, NULL),
(20, 7, NULL, 'Pink Spaghetti Gamberoni', 4, 380, NULL, '2023-07-14 23:47:35');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `rs_id` int(11) DEFAULT NULL,
  `title` varchar(222) DEFAULT NULL,
  `slogan` varchar(222) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `img` varchar(222) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(1, 1, 'Paneer Saag', 'Cottage cheese cooked with fresh ground spinach, onion, garlic and indian herbs.', 390, '606d72f3cb12f.jpg'),
(2, 1, 'Chicken Achari', 'Dahi, achar, tomatoes, mustard oil, fennel seeds', 250, '606d73302ece2.jpg'),
(3, 1, 'Murgh Tikka Biryani', 'Chicken Tikka Biryani Recipe is the famous Indian delicacy of Punjabi Cuisine. Boneless Chicken is marinated in spicy mix of Yogurt and Spices.', 470, '606d73771366a.jpg'),
(4, 1, 'Murgh Zafrani Kabab', 'Murgh Zafrani Kabab. A plateful of succulent pieces of meat, straight out of tandoor, is tough to resist.', 380, '606d73d2d37f4.jpg'),
(5, 2, 'Pink Spaghetti Gamberoni', 'Spaghetti pasta, grilled shrimps, parmesan cheese, with our homemade pink sauce,', 380, '606d7491a9d13.jpg'),
(6, 2, 'Cheesy Mashed Potato', 'Covered with mozzarella cheese.', 250, '606d74c416da5.jpg'),
(7, 2, 'Crispy Chicken Strips', 'Fried chicken strips, served with special honey mustard sauce.', 460, '606d74f6ecbbb.jpg'),
(8, 2, 'Lemon Grilled Chicken And Pasta', 'Marinated rosemary grilled chicken breast served with mashed potatoes and your choice of pasta.', 380, '606d752a209c3.jpg'),
(9, 3, 'Vegetable Fried Rice', 'Chinese rice wok with cabbage, beans, carrots, and spring onions.', 350, '606d7575798fb.jpg'),
(10, 3, 'Prawn Crackers', '12 pieces deep-fried prawn crackers', 120, '606d75a7e21ec.jpg'),
(11, 3, 'Spring Rolls', 'Lightly seasoned shredded cabbage, onion and carrots, wrapped in house made spring roll wrappers, deep fried to golden brown.', 470, '606d75ce105d0.jpg'),
(12, 3, 'Manchurian Chicken', 'Chicken pieces slow cooked with spring onions in our house made manchurian style sauce.', 500, '606d7600dc54c.jpg'),
(13, 4, ' Buffalo Wings', 'Fried chicken wings tossed in spicy Buffalo sauce served with crisp celery sticks and Blue cheese dip.', 450, '606d765f69a19.jpg'),
(14, 4, 'Mac N Cheese Bites', 'Served with our traditional spicy queso and marinara sauce.', 350, '606d768a1b2a1.jpg'),
(15, 4, 'Signature Potato Twisters', 'Spiral sliced potatoes, topped with our traditional spicy queso, Monterey Jack cheese, pico de gallo, sour cream and fresh cilantro.', 320, '606d76ad0c0cb.jpg'),
(16, 4, 'Meatballs Penne Pasta', 'Garlic-herb beef meatballs tossed in our house-made marinara sauce and penne pasta topped with fresh parsley.', 470, '606d76eedbb99.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(100) NOT NULL,
  `frm_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `remarkDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(1, 1, 'closed', 'happy', '2021-07-16 00:45:56'),
(2, 3, 'closed', 'Done', '2021-07-16 21:37:16'),
(3, 1, 'closed', 'Done', '2021-07-16 22:15:25'),
(4, 8, 'closed', 'Received successfully', NULL),
(8, 4, 'closed', 'Reservation confirmed!.', '2023-07-16 13:19:51');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `reservation_id` int(100) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `tablenumber` int(11) DEFAULT NULL,
  `bookingdate` datetime DEFAULT NULL,
  `expecteddate` datetime DEFAULT NULL,
  `status` varchar(222) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reservation_id`, `customer_id`, `tablenumber`, `bookingdate`, `expecteddate`, `status`) VALUES
(1, 4, 1, '2021-07-16 00:00:00', '2021-07-17 00:00:00', 'closed'),
(4, 5, 2, '2021-07-16 00:00:00', '2021-07-17 00:00:00', 'closed'),
(5, 1, 2, '2023-07-14 00:00:00', '2023-07-15 00:00:00', NULL),
(6, 1, 2, '2023-07-14 00:00:00', '2023-07-15 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
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
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(2, 2, 'Eataly', 'eataly@gmail.com', '0557426406', 'www.eataly.com', '11am', '9pm', 'Mon-Sat', 'Goregaon', '606d720b5fc71.jpg', '2021-04-07 08:49:15'),
(3, 3, 'Mainland China', 'mainland@china.com', '4326538776', 'www.mainlandchina.com', '8am', '9pm', 'Mon-Fri', 'Malad', '606d72653306f.jpg', '2021-04-07 08:50:45'),
(4, 4, 'TGI Fridays', 'tgi@gmail.com', '2342353325', 'www.tgif.com', '9am', '9pm', 'Mon-Sat', 'Lower Parel', '606d72a49503a.jpg', '2021-04-07 08:51:48');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(100) NOT NULL,
  `c_name` varchar(222) DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Indian', '2021-04-07 14:15:20'),
(2, 'Italian', '2021-04-07 14:15:23'),
(3, 'Chinese', '2021-04-07 14:15:25'),
(4, 'American', '2021-04-07 14:15:28'),
(11, 'fufu and eru and canda', '2023-07-14 23:10:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reservation_id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `o_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `reservation_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
