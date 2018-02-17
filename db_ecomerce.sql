-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2018 at 09:14 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ecomerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(3) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `email_address` varchar(256) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_name`, `email_address`, `password`) VALUES
(1, 'Md Arriful Islam', 'admin@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(3, 'Rehan Rahman', 'rehan@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(4, 'Rehan Roy', 'rehan@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(5, 'Sharif khan', 'sharif@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(6, 'Sharif khan', 'sharif@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(7, 'Shafikul Islam', 'shafik@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(3) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_description` text NOT NULL,
  `publication_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_description`, `publication_status`) VALUES
(4, 'Smart Phone', '                                                                                                                                    well and comfortable.                                                                                    ', 1),
(5, 'Man Fasion', '                                                                  Well.                                                        ', 1),
(6, 'Woman Fasion', '                                                                                                   well                                                        ', 1),
(8, 'New categorys', '                                 good                            ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `contact_id` int(11) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`contact_id`, `full_name`, `email_address`, `message`) VALUES
(1, 'Md Ariful Islam', 'admin@gmail.com', 'dsfghj fghbjnk fvgbhn'),
(2, 'Md Ariful Islam', 'admin@gmail.com', 'sdfghj fghj'),
(3, 'Ahsan Habib', 'ahsan@gmail.com', 'Hi, This is Ahsan.'),
(4, 'Rehan Khan', 'rehan@gmail.com', 'ghbjnkm hjkl ghbjnkml '),
(5, 'Naim Siddiki', 'naim@gmail.com', 'Message');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email_address` varchar(256) NOT NULL,
  `password` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `district_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `first_name`, `last_name`, `email_address`, `password`, `address`, `phone_number`, `district_name`) VALUES
(33, 'ftgyh/uj', 'dfgyh ', 'keie@gmail.com', '854fda4da7e794d79b9770407c414d03', 'hbbjshj', '556787', 'jsdhdsjh'),
(34, 'fghj', 'rdftg ', 'yygy@gmail.com', 'e1d6fa15be2fbf3cbe920240ed704235', 'fggggggggggggggggggggg', '555567', 'hjhbhvg'),
(35, 'Arif', 'Islam', 'admin@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'dhaka', '2345', 'dhaka'),
(37, 'Shaik', 'Fakir', 'fakir@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'sdfgt/hjuk', '345678', 'zedxfcvb'),
(43, 'Ar', 'khan', 'ar@gmail.com', '8277e0910d750195b448797616e091ad', 'dfgvhbjn', '23456', 'dfgvbhn'),
(44, 'khan', 'rahman', 'khan@gmail.com', '8277e0910d750195b448797616e091ad', 'dfgvbhjn', '34567', 'xdcfgvbnm'),
(45, 'manna', 'hok', 'manna@gmail.com', '8277e0910d750195b448797616e091ad', 'drtgyhjk', '234567', 'xfcgvbhjn'),
(46, 'vojohori', 'manna', 'manna@gmail.com', 'd', 'sedrtfgyhj', '345678', 'dfghj'),
(47, 'rifat', 'khan', 'rifat@gmail.com', 'd', 'sdfghbjn', '345678', 'dfghjk'),
(48, 'Joy', 'khan', 'joy@gmail.com', 'arif', 'sdfgvhjnk', '34567', 'sdfgvbhnj'),
(49, 'Md Ariful', 'Islam', 'arif@gmail.com', '12345', '196/1,wireless,Mohakhali, Dhaka', '01770872812', 'Dhaka'),
(50, 'Ciku', 'Ambani', 'abarif@gmail.com', '12345', 'dhaka', '014455656', 'Dhaka'),
(51, 'Rehan', 'khan', 'rehan@gmail.com', '1234', 'dfghjnkl', '34567890', 'dfghjkl'),
(52, 'Naim', 'hok', 'naim@gmail.com', '12345', 'address', '098765434567', 'Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manufacturer`
--

CREATE TABLE `tbl_manufacturer` (
  `manufacturer_id` int(3) NOT NULL,
  `manufacturer_name` varchar(100) NOT NULL,
  `manufacturer_description` text NOT NULL,
  `publication_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_manufacturer`
--

INSERT INTO `tbl_manufacturer` (`manufacturer_id`, `manufacturer_name`, `manufacturer_description`, `publication_status`) VALUES
(5, 'Polo', '                                                                good                                                        ', 1),
(7, 'Stics', '                                                                                                good                                                                                    ', 1),
(8, 'Polo', '                                                                good                                                        ', 1),
(9, 'Brand', 'Better', 1),
(10, 'Samsung', 'Well.', 1),
(11, 'Samphony', 'Well', 1),
(12, 'Walton', 'Well', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `order_total` float(10,2) NOT NULL,
  `order_status` varchar(15) NOT NULL DEFAULT 'pending',
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `order_total`, `order_status`, `order_date`) VALUES
(30, 35, 37, 50245.80, 'pending', '2017-12-05 10:21:57'),
(31, 35, 38, 495.00, 'pending', '2017-12-11 03:18:01'),
(32, 35, 39, 15206.40, 'pending', '2018-01-19 13:29:26'),
(34, 51, 40, 66000.00, 'pending', '2018-01-19 13:33:36'),
(35, 52, 41, 50245.80, 'Delivered', '2018-01-24 18:37:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` float(10,2) NOT NULL,
  `product_quantity` int(7) NOT NULL,
  `product_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_quantity`, `product_image`) VALUES
(1, 1, 2, 'T-shirt', 5678.00, 1, '../assets/admin_assets/product_img/man_25114.jpg'),
(2, 2, 2, 'T-shirt', 5678.00, 1, '../assets/admin_assets/product_img/man_25114.jpg'),
(3, 3, 2, 'T-shirt', 5678.00, 1, '../assets/admin_assets/product_img/man_25114.jpg'),
(4, 4, 2, 'T-shirt', 5678.00, 1, '../assets/admin_assets/product_img/man_25114.jpg'),
(5, 4, 3, 'Z-sticks', 455.00, 3, '../assets/admin_assets/product_img/TAMIM340.jpg'),
(6, 5, 2, 'T-shirt', 5678.00, 1, '../assets/admin_assets/product_img/man_25114.jpg'),
(7, 5, 3, 'Z-sticks', 455.00, 3, '../assets/admin_assets/product_img/TAMIM340.jpg'),
(8, 5, 2, 'T-shirt', 5678.00, 3, '../assets/admin_assets/product_img/man_25114.jpg'),
(9, 6, 2, 'T-shirt', 5678.00, 3, '../assets/admin_assets/product_img/man_25114.jpg'),
(10, 7, 2, 'T-shirt', 5678.00, 3, '../assets/admin_assets/product_img/man_25114.jpg'),
(11, 7, 2, 'T-shirt', 5678.00, 3, '../assets/admin_assets/product_img/man_25114.jpg'),
(12, 8, 6, 'Phone One', 34567.00, 3, '../assets/admin_assets/product_img/images.jpg'),
(13, 8, 6, 'Phone One', 34567.00, 4, '../assets/admin_assets/product_img/images.jpg'),
(14, 8, 2, 'T-shirt', 5678.00, 3, '../assets/admin_assets/product_img/man_25114.jpg'),
(15, 9, 3, 'Z-sticks', 455.00, 1, '../assets/admin_assets/product_img/TAMIM340.jpg'),
(16, 9, 2, 'T-shirt', 5678.00, 3, '../assets/admin_assets/product_img/man_25114.jpg'),
(17, 10, 3, 'Z-sticks', 455.00, 1, '../assets/admin_assets/product_img/TAMIM340.jpg'),
(18, 10, 2, 'T-shirt', 5678.00, 3, '../assets/admin_assets/product_img/man_25114.jpg'),
(19, 10, 21, 'Butter-silk', 987.00, 3, '../assets/admin_assets/product_img/6.jpg'),
(20, 10, 1, 'Sansung04', 567456.00, 3, '../assets/admin_assets/product_img/1907500_1636165389955038_1232419269343088008_n.jpg'),
(21, 11, 2, 'T-shirt', 5678.00, 1, '../assets/admin_assets/product_img/man_25114.jpg'),
(22, 11, 5, 'kjhkjh', 765.00, 3, '../assets/admin_assets/product_img/10457553_704414979594188_3752423198932451068_n.jpg'),
(23, 12, 11, 'Shirt', 345.00, 1, '../assets/admin_assets/product_img/one.jpg'),
(24, 13, 8, 'Phone Y', 34555.00, 4, '../assets/admin_assets/product_img/download (1).jpg'),
(25, 14, 8, 'Phone Y', 34555.00, 3, '../assets/admin_assets/product_img/download (1).jpg'),
(26, 14, 8, 'Phone Y', 34555.00, 3, '../assets/admin_assets/product_img/download (1).jpg'),
(27, 15, 8, 'Phone Y', 34555.00, 3, '../assets/admin_assets/product_img/download (1).jpg'),
(28, 15, 11, 'Shirt', 345.00, 3, '../assets/admin_assets/product_img/one.jpg'),
(29, 16, 8, 'Phone Y', 34555.00, 3, '../assets/admin_assets/product_img/download (1).jpg'),
(30, 16, 11, 'Shirt', 345.00, 3, '../assets/admin_assets/product_img/one.jpg'),
(31, 16, 7, 'Phone X', 2345678.00, 3, '../assets/admin_assets/product_img/md05803029-350x350.jpg'),
(32, 17, 6, 'Phone One', 34567.00, 3, '../assets/admin_assets/product_img/images.jpg'),
(33, 18, 10, 'Phone abc', 3456.00, 3, '../assets/admin_assets/product_img/download.jpg'),
(34, 19, 7, 'Phone X', 2345678.00, 1, '../assets/admin_assets/product_img/md05803029-350x350.jpg'),
(35, 20, 11, 'Shirt', 345.00, 1, '../assets/admin_assets/product_img/one.jpg'),
(36, 21, 6, 'Phone One', 34567.00, 1, '../assets/admin_assets/product_img/images.jpg'),
(37, 22, 6, 'Phone One', 34567.00, 1, '../assets/admin_assets/product_img/images.jpg'),
(38, 23, 6, 'Phone One', 34567.00, 1, '../assets/admin_assets/product_img/images.jpg'),
(39, 24, 11, 'Shirt', 345.00, 1, '../assets/admin_assets/product_img/one.jpg'),
(40, 25, 47, 'Polo shirt', 3245.00, 1, '../assets/admin_assets/product_img/TM17744T4804_2.jpg'),
(41, 26, 43, 'I Phone 6', 67890.00, 1, '../assets/admin_assets/product_img/7020699-iphone-hd-wallpapers.jpg'),
(42, 27, 47, 'Polo shirt', 3245.00, 1, '../assets/admin_assets/product_img/TM17744T4804_2.jpg'),
(43, 28, 45, 'HTC Phone', 34567.00, 1, '../assets/admin_assets/product_img/HTC-Desire-828-Dual-SIM-Global-White-Pearl.png'),
(44, 29, 48, 'man T-shirt', 345.00, 1, '../assets/admin_assets/product_img/100-cotton-high-resolution-printing-One-piece-characters-pattern-printing-high-quality-t-shirts-anime-t.jpg_640x640.jpg'),
(45, 30, 42, 'Xperia Tablet', 45678.00, 1, '../assets/admin_assets/product_img/xperia-tablet-z-immersive-viewing-43b148e1c06b3ab30a5216cc29b2a494-940.jpg'),
(46, 31, 50, 'Today T-shirt', 450.00, 1, '../assets/admin_assets/product_img/dissident_dulwich_space_polo_shirt_blue_space_dye_1x8872.jpg'),
(47, 32, 46, 'Man Shirt', 3456.00, 4, '../assets/admin_assets/product_img/CSN0027NAV_a.jpg'),
(48, 33, 46, 'Man Shirt', 3456.00, 1, '../assets/admin_assets/product_img/CSN0027NAV_a.jpg'),
(49, 34, 38, 'i phone 6', 60000.00, 1, '../assets/admin_assets/product_img/iPhone 6 Wallpapers 6.jpg'),
(50, 35, 42, 'Xperia Tablet', 45678.00, 1, '../assets/admin_assets/product_img/xperia-tablet-z-immersive-viewing-43b148e1c06b3ab30a5216cc29b2a494-940.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_type` varchar(16) NOT NULL,
  `payment_status` varchar(30) NOT NULL DEFAULT 'pending',
  `payment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `order_id`, `payment_type`, `payment_status`, `payment_date`) VALUES
(1, 1, 'cash_on_delivery', 'pending', '2017-07-01 03:14:26'),
(2, 2, 'cash_on_delivery', 'pending', '2017-07-01 03:37:56'),
(3, 3, 'cash_on_delivery', 'pending', '2017-07-02 20:22:30'),
(4, 4, 'cash_on_delivery', 'pending', '2017-07-02 20:46:48'),
(5, 5, 'cash_on_delivery', 'pending', '2017-07-02 21:33:35'),
(6, 6, 'cash_on_delivery', 'pending', '2017-07-03 01:46:41'),
(7, 7, 'cash_on_delivery', 'pending', '2017-07-10 21:24:13'),
(8, 8, 'cash_on_delivery', 'pending', '2017-07-21 18:16:04'),
(9, 9, 'cash_on_delivery', 'pending', '2017-07-24 19:13:58'),
(10, 10, 'cash_on_delivery', 'pending', '2017-07-24 19:21:42'),
(11, 11, 'cash_on_delivery', 'pending', '2017-08-03 16:49:04'),
(12, 12, 'cash_on_delivery', 'pending', '2017-08-06 15:01:19'),
(13, 13, 'cash_on_delivery', 'pending', '2017-08-14 16:32:54'),
(14, 14, 'cash_on_delivery', 'pending', '2017-08-23 03:16:03'),
(15, 15, 'cash_on_delivery', 'pending', '2017-08-23 04:43:08'),
(16, 16, 'cash_on_delivery', 'pending', '2017-08-23 05:15:09'),
(17, 17, 'cash_on_delivery', 'pending', '2017-08-23 21:18:55'),
(18, 18, 'cash_on_delivery', 'pending', '2017-08-30 03:17:18'),
(19, 19, 'cash_on_delivery', 'pending', '2017-09-14 07:10:21'),
(20, 20, 'cash_on_delivery', 'pending', '2017-09-15 13:30:30'),
(21, 21, 'cash_on_delivery', 'pending', '2017-09-15 16:16:06'),
(22, 22, 'cash_on_delivery', 'pending', '2017-10-08 21:42:31'),
(23, 23, 'cash_on_delivery', 'pending', '2017-10-08 21:43:39'),
(24, 24, 'cash_on_delivery', 'pending', '2017-10-17 21:44:42'),
(25, 25, 'cash_on_delivery', 'pending', '2017-10-28 15:43:35'),
(26, 26, 'cash_on_delivery', 'pending', '2017-11-26 16:31:35'),
(27, 27, 'cash_on_delivery', 'pending', '2017-12-02 09:02:18'),
(28, 28, 'cash_on_delivery', 'pending', '2017-12-02 09:05:00'),
(29, 29, 'cash_on_delivery', 'pending', '2017-12-02 09:09:31'),
(30, 30, 'cash_on_delivery', 'pending', '2017-12-05 10:21:57'),
(31, 31, 'cash_on_delivery', 'pending', '2017-12-11 03:18:01'),
(32, 32, 'cash_on_delivery', 'pending', '2018-01-19 13:29:26'),
(33, 33, 'cash_on_delivery', 'pending', '2018-01-19 13:32:43'),
(34, 34, 'cash_on_delivery', 'pending', '2018-01-19 13:33:36'),
(35, 35, 'cash_on_delivery', 'pending', '2018-01-24 18:37:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(256) NOT NULL,
  `category_id` int(3) NOT NULL,
  `sub_category_id` int(3) NOT NULL,
  `manufacturer_id` int(3) NOT NULL,
  `product_price` float(10,2) NOT NULL,
  `stock_quantity` int(7) NOT NULL,
  `product_short_description` text NOT NULL,
  `product_long_description` text NOT NULL,
  `product_image` text NOT NULL,
  `publication_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `category_id`, `sub_category_id`, `manufacturer_id`, `product_price`, `stock_quantity`, `product_short_description`, `product_long_description`, `product_image`, `publication_status`) VALUES
(38, 'i phone 6', 4, 8, 9, 60000.00, 56, 'best', '<div class="title"><b>Key Features</b></div><ul><li><b>Buy S2 pro and laser your own phone by your own name for free.</b></li><li><b>OS: XOS based on Android 6.0 Marshmallow</b></li><li><b>Processor: Octa-Core Cortex 1.3GHz, 64bit</b></li><li><b>Display: 5.2 Inches IPS LCD Capacitive Touchscreen,16M Colors</b></li><li><b>Front Camera: Dual Front Camera 13M FF + 8M FF (135Â° Wide Angle)</b></li><li><b>Rear Camera: 13M AF with Dual-Flash light</b></li></ul>', '../assets/admin_assets/product_img/iPhone 6 Wallpapers 6.jpg', 1),
(41, 'Lenevo Tablet', 4, 9, 9, 67898.00, 345, 'well', '<span class="st">A <em>smartphone</em> is a handheld personal computer \r\nwith a mobile operating system and an integrated mobile broadband \r\ncellular network connection for voice and </span><br><span class="st"><span class="st">A <em>smartphone</em> is a handheld personal computer \r\nwith a mobile operating system and an integrated mobile broadband \r\ncellular network connection for voice and </span></span><br><span class="st"><span class="st"><span class="st">A <em>smartphone</em> is a handheld personal computer \r\nwith a mobile operating system and an integrated mobile broadband \r\ncellular network connection for voice and </span></span></span><br><span class="st"><span class="st"><span class="st"><span class="st">A <em>smartphone</em> is a handheld personal computer \r\nwith a mobile operating system and an integrated mobile broadband \r\ncellular network connection for voice and </span></span></span></span><br><span class="st"><span class="st"><span class="st"><span class="st"><span class="st">A <em>smartphone</em> is a handheld personal computer \r\nwith a mobile operating system and an integrated mobile broadband \r\ncellular network connection for voice.<br></span></span></span></span></span>', '../assets/admin_assets/product_img/Lenovo-Yoga-8-HD-Tab-B6000-Mobile-Phones-For-sale-at-All-Nigeria.jpg', 1),
(42, 'Xperia Tablet', 4, 9, 9, 45678.00, 345, 'well<br>', '<span class="st">A <em>smartphone</em> is a handheld personal computer \r\nwith a mobile operating system and an integrated mobile broadband \r\ncellular network connection for voice and </span><br><span class="st"><span class="st">A <em>smartphone</em> is a handheld personal computer \r\nwith a mobile operating system and an integrated mobile broadband \r\ncellular network connection for voice and </span></span><br><span class="st"><span class="st"><span class="st">A <em>smartphone</em> is a handheld personal computer \r\nwith a mobile operating system and an integrated mobile broadband \r\ncellular network connection for voice and </span></span></span><br><span class="st"><span class="st"><span class="st"><span class="st">A <em>smartphone</em> is a handheld personal computer \r\nwith a mobile operating system and an integrated mobile broadband \r\ncellular network connection for voice and </span></span></span></span><br><span class="st"><span class="st"><span class="st"><span class="st"><span class="st">A <em>smartphone</em> is a handheld personal computer \r\nwith a mobile operating system and an integrated mobile broadband \r\ncellular network connection for voice.<br></span></span></span></span></span>', '../assets/admin_assets/product_img/xperia-tablet-z-immersive-viewing-43b148e1c06b3ab30a5216cc29b2a494-940.jpg', 1),
(43, 'I Phone 6', 4, 10, 9, 67890.00, 45, 'best', '<span class="st">A <em>smartphone</em> is a handheld personal computer \r\nwith a mobile operating system and an integrated mobile broadband \r\ncellular network connection for voice and </span><br><span class="st"><span class="st">A <em>smartphone</em> is a handheld personal computer \r\nwith a mobile operating system and an integrated mobile broadband \r\ncellular network connection for voice and </span></span><br><span class="st"><span class="st"><span class="st">A <em>smartphone</em> is a handheld personal computer \r\nwith a mobile operating system and an integrated mobile broadband \r\ncellular network connection for voice and </span></span></span><br><span class="st"><span class="st"><span class="st"><span class="st">A <em>smartphone</em> is a handheld personal computer \r\nwith a mobile operating system and an integrated mobile broadband \r\ncellular network connection for voice and </span></span></span></span><br><span class="st"><span class="st"><span class="st"><span class="st"><span class="st">A <em>smartphone</em> is a handheld personal computer \r\nwith a mobile operating system and an integrated mobile broadband \r\ncellular network connection for voice .<br></span></span></span></span></span>', '../assets/admin_assets/product_img/7020699-iphone-hd-wallpapers.jpg', 1),
(44, 'I Phone', 4, 10, 9, 67890.00, 34, 'best', '<span class="st">A <em>smartphone</em> is a handheld personal computer \r\nwith a mobile operating system and an integrated mobile broadband \r\ncellular network connection for voice and </span><br><span class="st"><span class="st">A <em>smartphone</em> is a handheld personal computer \r\nwith a mobile operating system and an integrated mobile broadband \r\ncellular network connection for voice and </span></span><br><span class="st"><span class="st"><span class="st">A <em>smartphone</em> is a handheld personal computer \r\nwith a mobile operating system and an integrated mobile broadband \r\ncellular network connection for voice and </span></span></span><br><span class="st"><span class="st"><span class="st"><span class="st">A <em>smartphone</em> is a handheld personal computer \r\nwith a mobile operating system and an integrated mobile broadband \r\ncellular network connection for voice and </span></span></span></span><br><span class="st"><span class="st"><span class="st"><span class="st"><span class="st">A <em>smartphone</em> is a handheld personal computer \r\nwith a mobile operating system and an integrated mobile broadband \r\ncellular network connection for voice.<br></span></span></span></span></span>', '../assets/admin_assets/product_img/iPhone-Plus-Blanc-01.jpg', 1),
(45, 'HTC Phone', 4, 8, 10, 34567.00, 34, 'well', '<span class="st">A <em>smartphone</em> is a handheld personal computer \r\nwith a mobile operating system and an integrated mobile broadband \r\ncellular network connection for voice and </span><br><span class="st"><span class="st">A <em>smartphone</em> is a handheld personal computer \r\nwith a mobile operating system and an integrated mobile broadband \r\ncellular network connection for voice and </span></span><br><span class="st"><span class="st"><span class="st">A <em>smartphone</em> is a handheld personal computer \r\nwith a mobile operating system and an integrated mobile broadband \r\ncellular network connection for voice and </span></span></span><br><span class="st"><span class="st"><span class="st"><span class="st">A <em>smartphone</em> is a handheld personal computer \r\nwith a mobile operating system and an integrated mobile broadband \r\ncellular network connection for voice and </span></span></span></span><br><span class="st"><span class="st"><span class="st"><span class="st"><span class="st">A <em>smartphone</em> is a handheld personal computer \r\nwith a mobile operating system and an integrated mobile broadband \r\ncellular network connection for voice and </span></span></span></span></span><br><span class="st"><span class="st"><span class="st"><span class="st"><span class="st"><span class="st">A <em>smartphone</em> is a handheld personal computer \r\nwith a mobile operating system and an integrated mobile broadband \r\ncellular network connection for voice.<br></span></span></span></span></span></span>', '../assets/admin_assets/product_img/HTC-Desire-828-Dual-SIM-Global-White-Pearl.png', 1),
(46, 'Man Shirt', 5, 5, 5, 3456.00, 456, 'well and comfortable.<br>', '<span class="st">Our Jermyn Street <em>shirts</em> are beautifully tailored and crafted from the finest cotton. Find a <em>shirt</em> for every occasion from our traditional Formal range or our</span><span class="st">Our Jermyn Street <em>shirts</em> are beautifully tailored and crafted from the finest cotton. Find a <em>shirt</em> for every occasion from our traditional Formal range or our</span><span class="st">Our Jermyn Street <em>shirts</em> are beautifully tailored and crafted from the finest cotton. Find a <em>shirt</em> for every occasion from our traditional Formal range or our</span><span class="st">Our Jermyn Street <em>shirts</em> are beautifully tailored and crafted from the finest cotton. Find a <em>shirt</em> for every occasion from our traditional Formal range or our.</span>', '../assets/admin_assets/product_img/CSN0027NAV_a.jpg', 1),
(47, 'Polo shirt', 5, 5, 8, 3245.00, 345, 'well and comfortable.<br>', '<span class="st">Our Jermyn Street <em>shirts</em> are beautifully tailored and crafted from the finest cotton. Find a <em>shirt</em> for every occasion from our traditional Formal range or our</span><span class="st">Our Jermyn Street <em>shirts</em> are beautifully tailored and crafted from the finest cotton. Find a <em>shirt</em> for every occasion from our traditional Formal range or our</span><span class="st">Our Jermyn Street <em>shirts</em> are beautifully tailored and crafted from the finest cotton. Find a <em>shirt</em> for every occasion from our traditional Formal range or our</span><span class="st">Our Jermyn Street <em>shirts</em> are beautifully tailored and crafted from the finest cotton. Find a <em>shirt</em> for every occasion from our traditional Formal range or our.</span>', '../assets/admin_assets/product_img/TM17744T4804_2.jpg', 1),
(48, 'man T-shirt', 5, 4, 9, 345.00, 56, 'well and comfortable.<br>', '<span class="st">Our Jermyn Street <em>shirts</em> are beautifully tailored and crafted from the finest cotton. Find a <em>shirt</em> for every occasion from our traditional Formal range or our</span><span class="st">Our Jermyn Street <em>shirts</em> are beautifully tailored and crafted from the finest cotton. Find a <em>shirt</em> for every occasion from our traditional Formal range or our</span><span class="st">Our Jermyn Street <em>shirts</em> are beautifully tailored and crafted from the finest cotton. Find a <em>shirt</em> for every occasion from our traditional Formal range or our</span><span class="st">Our Jermyn Street <em>shirts</em> are beautifully tailored and crafted from the finest cotton. Find a <em>shirt</em> for every occasion from our traditional Formal range or our</span><span class="st">Our Jermyn Street <em>shirts</em> are beautifully tailored and crafted from the finest cotton. Find a <em>shirt</em> for every occasion from our traditional Formal range.<br></span>', '../assets/admin_assets/product_img/100-cotton-high-resolution-printing-One-piece-characters-pattern-printing-high-quality-t-shirts-anime-t.jpg_640x640.jpg', 1),
(49, 'T-shirt', 5, 4, 5, 3456.00, 45, 'well and comfortable.<br>', '<span class="st">Our Jermyn Street <em>shirts</em> are beautifully tailored and crafted from the finest cotton. Find a <em>shirt</em> for every occasion from our traditional Formal range or our</span><span class="st">Our Jermyn Street <em>shirts</em> are beautifully tailored and crafted from the finest cotton. Find a <em>shirt</em> for every occasion from our traditional Formal range or our</span><span class="st">Our Jermyn Street <em>shirts</em> are beautifully tailored and crafted from the finest cotton. Find a <em>shirt</em> for every occasion from our traditional Formal range or our</span><span class="st">Our Jermyn Street <em>shirts</em> are beautifully tailored and crafted from the finest cotton. Find a <em>shirt</em> for every occasion from our traditional Formal range or our</span><span class="st">Our Jermyn Street <em>shirts</em> are beautifully tailored and crafted from the finest cotton. Find a <em>shirt</em> for every occasion from our traditional Formal range .<br></span>', '../assets/admin_assets/product_img/71i5GegT6pL._UX385_.jpg', 1),
(50, 'Today T-shirt', 5, 4, 9, 450.00, 50, 'well and comfortable.<br>', '<span class="st">Our Jermyn Street <em>shirts</em> are beautifully tailored and crafted from the finest cotton. Find a <em>shirt</em> for every occasion from our traditional Formal range or our</span><span class="st">Our Jermyn Street <em>shirts</em> are beautifully tailored and crafted from the finest cotton. Find a <em>shirt</em> for every occasion from our traditional Formal range or our</span><span class="st">Our Jermyn Street <em>shirts</em> are beautifully tailored and crafted from the finest cotton. Find a <em>shirt</em> for every occasion from our traditional Formal range or our</span><span class="st">Our Jermyn Street <em>shirts</em> are beautifully tailored and crafted from the finest cotton. Find a <em>shirt</em> for every occasion from our traditional Formal range or our</span><span class="st">Our Jermyn Street <em>shirts</em> are beautifully tailored and crafted from the finest cotton. Find a <em>shirt</em> for every occasion from our traditional Formal range.<br></span>', '../assets/admin_assets/product_img/dissident_dulwich_space_polo_shirt_blue_space_dye_1x8872.jpg', 1),
(51, 'Amazing sunglass', 5, 7, 9, 456.00, 56, '                            well and comfortable.<br>                            ', '                                <span class="st">Shop designer <em>sunglasses</em> for men, women and kids from the most popular fashion brands at <em>Sunglass</em> Hut. Free Shipping on all orders!</span><span class="st">Shop designer <em>sunglasses</em> for men, women and kids from the most popular fashion brands at <em>Sunglass</em> Hut. Free Shipping on all orders!</span><span class="st">Shop designer <em>sunglasses</em> for men, women and kids from the most popular fashion brands at <em>Sunglass</em> Hut. Free Shipping on all orders!</span><span class="st">Shop designer <em>sunglasses</em> for men, women and kids from the most popular fashion brands at <em>Sunglass</em> Hut. Free Shipping on all orders!</span><span class="st">Shop designer <em>sunglasses</em> for men, women and kids from the most popular fashion brands at <em>Sunglass</em> Hut. Free Shipping on all orders!</span><span class="st">Shop designer <em>sunglasses</em> for men, women and kids from the most popular fashion brands at <em>Sunglass</em> Hut. Free Shipping on all orders!</span><span class="st"></span>                            ', '../assets/admin_assets/product_img/ray_ban_aviator_sunglasses-t2.jpg', 1),
(53, 'Jamdani Shari', 6, 6, 9, 3456.00, 45, 'well and comfortable<br>', '<span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to</span><span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to</span><span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to</span><span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to</span><span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to.</span>', '../assets/admin_assets/product_img/shreya-saran-wedding-wear-navy-blue-georgette-saree-with-blouse-a16084-b49.jpg', 1),
(54, 'Shari', 6, 6, 9, 4567.00, 45, 'well and comfortable.<br>', '<span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to</span><span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to</span><span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to</span><span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to</span><span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to</span><span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to</span><span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to.</span>', '../assets/admin_assets/product_img/1550.jpg', 1),
(56, 'Girl Three piece', 6, 6, 9, 5678.00, 56, 'well and comfortable.<br>', '<span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to</span><span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to</span><span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to</span><span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to</span><span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to</span><span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to</span><span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to.</span>', '../assets/admin_assets/product_img/1504ef1458cbf1dd286382cd3e383c29.jpg', 1),
(57, 'Three-pice', 6, 3, 9, 3456.00, 56, 'well and comfortable.<br>', '<span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to</span><span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to</span><span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to</span><span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to</span><span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to</span><span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to</span><span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to</span><span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to</span>', '../assets/admin_assets/product_img/23005.jpg', 1),
(58, 'Three-pice', 6, 3, 9, 4567.00, 56, 'well and comfortable.<br>', '<span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to</span><span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to</span><span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to</span><span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to</span><span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to</span><span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to</span><span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to</span><span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to</span><span class="st">The name for an amazing, smart, funny, beautiful, hardworking, and outgoing girl. Someone who is easy to talk to</span>', '../assets/admin_assets/product_img/embroid-gold-semi-stitched-embroidered-suit.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(11) NOT NULL,
  `full_name` varchar(256) NOT NULL,
  `email_address` varchar(256) NOT NULL,
  `address` text NOT NULL,
  `phone_number` varchar(30) NOT NULL,
  `district_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `full_name`, `email_address`, `address`, `phone_number`, `district_name`) VALUES
(34, 'Md Ariful Islam', 'arif@gmail.com', '196/1,wireless,Mohakhali ', '01770872812', 'Dhaka'),
(36, 'Md Arif', 'arif@gmail.com', '196/1,wireless,mohakhali,dhaka ', '01770872812', 'Dhaka'),
(37, 'Arif Islam', 'admin@gmail.com', 'dhaka', '2345', 'dhaka'),
(38, 'Arif Islam', 'admin@gmail.com', 'dhaka', '2345', 'dhaka'),
(39, 'Arif Islam', 'admin@gmail.com', 'dhaka', '2345', 'dhaka'),
(40, 'Rehan khan', 'rehan@gmail.com', 'dfghjnkl', '34567890', 'dfghjkl'),
(41, 'Naim hok', 'naim@gmail.com', 'new address', '098765434567', 'Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(5) NOT NULL,
  `slider_heading` varchar(100) NOT NULL,
  `slider_para` text NOT NULL,
  `slider_image_one` text NOT NULL,
  `slider_image_two` text NOT NULL,
  `slider_image_three` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_category`
--

CREATE TABLE `tbl_sub_category` (
  `sub_category_id` int(11) NOT NULL,
  `sub_category_name` varchar(100) NOT NULL,
  `sub_category_description` text NOT NULL,
  `publication_status` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_sub_category`
--

INSERT INTO `tbl_sub_category` (`sub_category_id`, `sub_category_name`, `sub_category_description`, `publication_status`) VALUES
(3, 'Three-piece', '                                                                                               well andÂ                                                               comfortable<br>                                                                                                                                            ', 1),
(4, 'T-shirt', '                                 good<br>                                                                                                                                                                                                    ', 1),
(5, 'Shirt', '                                                                                               well andÂ                                                               comfortable<br>                                                                                                                                            ', 1),
(6, 'Shari', '                                                                                                                                well andÂ                                                               comfortable<br>                                                                                                                                                                        ', 1),
(7, 'Sunglass', 'good', 1),
(8, 'Smart phone', 'well', 0),
(9, 'Tablet', 'smart', 1),
(10, 'i-phone ', 'best<br>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_temp_cart`
--

CREATE TABLE `tbl_temp_cart` (
  `temp_cart_id` int(11) NOT NULL,
  `session_id` varchar(256) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(256) NOT NULL,
  `product_price` float(10,2) NOT NULL,
  `product_quantity` int(7) NOT NULL,
  `product_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_temp_cart`
--

INSERT INTO `tbl_temp_cart` (`temp_cart_id`, `session_id`, `product_id`, `product_name`, `product_price`, `product_quantity`, `product_image`) VALUES
(11, '82ajn81jah0g1k5f89s9n1nac3', 1, 'Sansung04', 567456.00, 4, '../assets/admin_assets/product_img/1907500_1636165389955038_1232419269343088008_n.jpg'),
(13, 'hrjls73osqvrsslcvke0p3ab61', 3, 'Z-sticks', 455.00, 1, '../assets/admin_assets/product_img/TAMIM340.jpg'),
(14, 'hrjls73osqvrsslcvke0p3ab61', 3, 'Z-sticks', 455.00, 5, '../assets/admin_assets/product_img/TAMIM340.jpg'),
(15, 'nasjmh0c1sr86fpr5v94kglt30', 4, 'New T-shirt', 876.00, 3, '../assets/admin_assets/product_img/11067477_908599832538282_6941374057629028450_n.jpg'),
(16, 'nasjmh0c1sr86fpr5v94kglt30', 2, 'T-shirt', 5678.00, 3, '../assets/admin_assets/product_img/man_25114.jpg'),
(17, 'nasjmh0c1sr86fpr5v94kglt30', 4, 'New T-shirt', 876.00, 3, '../assets/admin_assets/product_img/11067477_908599832538282_6941374057629028450_n.jpg'),
(18, 'e72fcn3u0jc9ppkpa45kdd51l1', 1, 'Sansung04', 567456.00, 3, '../assets/admin_assets/product_img/1907500_1636165389955038_1232419269343088008_n.jpg'),
(19, 'e72fcn3u0jc9ppkpa45kdd51l1', 1, 'Sansung04', 567456.00, 3, '../assets/admin_assets/product_img/1907500_1636165389955038_1232419269343088008_n.jpg'),
(20, 'e72fcn3u0jc9ppkpa45kdd51l1', 1, 'Sansung04', 567456.00, 3, '../assets/admin_assets/product_img/1907500_1636165389955038_1232419269343088008_n.jpg'),
(21, 'b12j35evmhhmktdnaiqcrn1sr6', 2, 'T-shirt', 5678.00, 3, '../assets/admin_assets/product_img/man_25114.jpg'),
(22, '0d1f09fr2d3icl5vgok910lmj4', 2, 'T-shirt', 5678.00, 1, '../assets/admin_assets/product_img/man_25114.jpg'),
(28, 'd6rs658aji2pdgvr9busd2v256', 5, 'kjhkjh', 765.00, 3, '../assets/admin_assets/product_img/10457553_704414979594188_3752423198932451068_n.jpg'),
(29, 'd6rs658aji2pdgvr9busd2v256', 3, 'Z-sticks', 455.00, 1, '../assets/admin_assets/product_img/TAMIM340.jpg'),
(30, 'd6rs658aji2pdgvr9busd2v256', 1, 'Sansung04', 567456.00, 1, '../assets/admin_assets/product_img/1907500_1636165389955038_1232419269343088008_n.jpg'),
(31, '7k240dk1c7ccle8gb14bqtdp26', 2, 'T-shirt', 5678.00, 3, '../assets/admin_assets/product_img/man_25114.jpg'),
(32, 'e84kimr882mg9dma8qpkh6r9g2', 5, 'kjhkjh', 765.00, 3, '../assets/admin_assets/product_img/10457553_704414979594188_3752423198932451068_n.jpg'),
(33, '42ad1qgogr3tn5qi84ev6vb9h1', 2, 'T-shirt', 5678.00, 3, '../assets/admin_assets/product_img/man_25114.jpg'),
(34, '42ad1qgogr3tn5qi84ev6vb9h1', 2, 'T-shirt', 5678.00, 3, '../assets/admin_assets/product_img/man_25114.jpg'),
(35, '42ad1qgogr3tn5qi84ev6vb9h1', 5, 'kjhkjh', 765.00, 1, '../assets/admin_assets/product_img/10457553_704414979594188_3752423198932451068_n.jpg'),
(36, 'p5orq61uuqjqmu8qboru0sge47', 6, 'Phone One', 34567.00, 3, '../assets/admin_assets/product_img/images.jpg'),
(37, 'p5orq61uuqjqmu8qboru0sge47', 6, 'Phone One', 34567.00, 4, '../assets/admin_assets/product_img/images.jpg'),
(38, 'p5orq61uuqjqmu8qboru0sge47', 2, 'T-shirt', 5678.00, 3, '../assets/admin_assets/product_img/man_25114.jpg'),
(39, 'upnqkd0lpc8cc7hvo3vreginc2', 3, 'Z-sticks', 455.00, 1, '../assets/admin_assets/product_img/TAMIM340.jpg'),
(40, 'upnqkd0lpc8cc7hvo3vreginc2', 2, 'T-shirt', 5678.00, 3, '../assets/admin_assets/product_img/man_25114.jpg'),
(41, 'upnqkd0lpc8cc7hvo3vreginc2', 21, 'Butter-silk', 987.00, 3, '../assets/admin_assets/product_img/6.jpg'),
(42, 'upnqkd0lpc8cc7hvo3vreginc2', 1, 'Sansung04', 567456.00, 3, '../assets/admin_assets/product_img/1907500_1636165389955038_1232419269343088008_n.jpg'),
(43, 'oa0td8n9kjqv338kl6g9tijll2', 2, 'T-shirt', 5678.00, 1, '../assets/admin_assets/product_img/man_25114.jpg'),
(44, 'oa0td8n9kjqv338kl6g9tijll2', 5, 'kjhkjh', 765.00, 3, '../assets/admin_assets/product_img/10457553_704414979594188_3752423198932451068_n.jpg'),
(45, 'rjhca29ue0sto191gqla61gp66', 11, 'Shirt', 345.00, 1, '../assets/admin_assets/product_img/one.jpg'),
(46, 'lfc56k7h93custlbn1lkr53s06', 8, 'Phone Y', 34555.00, 4, '../assets/admin_assets/product_img/download (1).jpg'),
(47, 'lfc56k7h93custlbn1lkr53s06', 5, 'kjhkjh', 765.00, 3, '../assets/admin_assets/product_img/10457553_704414979594188_3752423198932451068_n.jpg'),
(53, 'aq4o51llkc5sc7rpri407k42k2', 8, 'Phone Y', 34555.00, 3, '../assets/admin_assets/product_img/download (1).jpg'),
(54, 'aq4o51llkc5sc7rpri407k42k2', 11, 'Shirt', 345.00, 3, '../assets/admin_assets/product_img/one.jpg'),
(55, 'aq4o51llkc5sc7rpri407k42k2', 7, 'Phone X', 2345678.00, 3, '../assets/admin_assets/product_img/md05803029-350x350.jpg'),
(56, 'e8l19gqdcgk5ntstk251h65kv4', 6, 'Phone One', 34567.00, 3, '../assets/admin_assets/product_img/images.jpg'),
(57, 'otpbsu95s7576g7pd1a7dqmm85', 10, 'Phone abc', 3456.00, 3, '../assets/admin_assets/product_img/download.jpg'),
(58, '8bjb0fhr9afntg4pfega374qv5', 7, 'Phone X', 2345678.00, 1, '../assets/admin_assets/product_img/md05803029-350x350.jpg'),
(59, 'rr6kg0fkmc4e2uog2d1c8j04i0', 11, 'Shirt', 345.00, 3, '../assets/admin_assets/product_img/one.jpg'),
(60, '9vetdhjfu1im8q05qjrhj9ack2', 6, 'Phone One', 34567.00, 1, '../assets/admin_assets/product_img/images.jpg'),
(61, '42vbrgk4a42cbkc3i7g113g6m2', 12, 'Polo Shirt', 987.00, 3, '../assets/admin_assets/product_img/two.jpg'),
(62, 'cvb0fvn81116aa5r1rtnrlgr75', 6, 'Phone One', 34567.00, 1, '../assets/admin_assets/product_img/images.jpg'),
(64, 'ldq6ntb593g3f31c46pkkh9f22', 11, 'Shirt', 345.00, 1, '../assets/admin_assets/product_img/one.jpg'),
(65, 'hcp9sj2d5o75ade6k4d1nd4b41', 6, 'Phone One', 34567.00, 1, '../assets/admin_assets/product_img/images.jpg'),
(66, 'ngkar6kkafjfol3lv9g4tm38p6', 24, 'Phone x345', 23412.00, 1, '../assets/admin_assets/product_img/7020699-iphone-hd-wallpapers.jpg'),
(67, 'sben4kngkke43nojl2d8c56vq1', 43, 'I Phone 6', 67890.00, 1, '../assets/admin_assets/product_img/7020699-iphone-hd-wallpapers.jpg'),
(68, 'tuv5f47h5vjlnd7qkean0cnne5', 38, 'i phone 6', 60000.00, 1, '../assets/admin_assets/product_img/iPhone 6 Wallpapers 6.jpg'),
(69, 'bi1cdu7kfje2mi5ikirs7j3ts1', 47, 'Polo shirt', 3245.00, 1, '../assets/admin_assets/product_img/TM17744T4804_2.jpg'),
(70, 'bi1cdu7kfje2mi5ikirs7j3ts1', 38, 'i phone 6', 60000.00, 1, '../assets/admin_assets/product_img/iPhone 6 Wallpapers 6.jpg'),
(71, 'lj8q2emib17qbudrdak3nu5n82', 0, '', 0.00, 1, ''),
(72, 'raeu475757k3nht3h9vctmuqo7', 38, 'i phone 6', 60000.00, 1, '../assets/admin_assets/product_img/iPhone 6 Wallpapers 6.jpg'),
(73, 'raeu475757k3nht3h9vctmuqo7', 46, 'Man Shirt', 3456.00, 1, '../assets/admin_assets/product_img/CSN0027NAV_a.jpg'),
(75, 'lkcbkpcu1rantj9f5ct0j8dkb5', 43, 'I Phone 6', 67890.00, 1, '../assets/admin_assets/product_img/7020699-iphone-hd-wallpapers.jpg'),
(76, 'm1d4d3qdqr5f80ne5ne2ikhdf6', 38, 'i phone 6', 60000.00, 1, '../assets/admin_assets/product_img/iPhone 6 Wallpapers 6.jpg'),
(77, '3nksudha2n9lcf2loi8uvvqc24', 42, 'Xperia Tablet', 45678.00, 1, '../assets/admin_assets/product_img/xperia-tablet-z-immersive-viewing-43b148e1c06b3ab30a5216cc29b2a494-940.jpg'),
(78, '7kkklscrqfrca33v3dbju944o1', 50, 'Today T-shirt', 450.00, 1, '../assets/admin_assets/product_img/dissident_dulwich_space_polo_shirt_blue_space_dye_1x8872.jpg'),
(81, 'q20m9obhtfo28f73ojgpjn3ik6', 38, 'i phone 6', 60000.00, 1, '../assets/admin_assets/product_img/iPhone 6 Wallpapers 6.jpg'),
(82, 'm885kg7p2frkt6ip0rqramo5e5', 42, 'Xperia Tablet', 45678.00, 1, '../assets/admin_assets/product_img/xperia-tablet-z-immersive-viewing-43b148e1c06b3ab30a5216cc29b2a494-940.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_manufacturer`
--
ALTER TABLE `tbl_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  ADD PRIMARY KEY (`sub_category_id`);

--
-- Indexes for table `tbl_temp_cart`
--
ALTER TABLE `tbl_temp_cart`
  ADD PRIMARY KEY (`temp_cart_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `tbl_manufacturer`
--
ALTER TABLE `tbl_manufacturer`
  MODIFY `manufacturer_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  MODIFY `sub_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_temp_cart`
--
ALTER TABLE `tbl_temp_cart`
  MODIFY `temp_cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
