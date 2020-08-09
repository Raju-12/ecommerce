-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2020 at 06:46 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_06_25_052957_create_tbl_admin_table', 1),
(2, '2020_07_05_151458_create_tbl_category_table', 2),
(3, '2020_07_12_160755_create_manufacture_table', 3),
(4, '2020_07_13_152103_create_tbl_products_table', 4),
(5, '2020_07_13_155621_create_tbl_product_table', 5),
(6, '2020_07_17_142855_create_tbl_slider_table', 6),
(7, '2020_07_31_163002_create_tbl_customer_table', 7),
(8, '2020_08_04_052059_create_tbl_shipping_table', 8),
(9, '2020_08_05_145442_create_tbl_payment', 9),
(10, '2020_08_05_145509_create_tbl_order', 9),
(11, '2020_08_05_145547_create_tbl_order_details', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'ra@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'raju', '7395735031', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(21, 'car', 'this is car', 1, NULL, NULL),
(32, 'hh', 'nn', 1, NULL, NULL),
(35, 'car', 'CarCategory', 1, NULL, NULL),
(36, 'mobile', 'Mobile', 1, NULL, NULL),
(37, 'Computer', 'Computer', 1, NULL, NULL),
(38, 'Car', 'car', 1, NULL, NULL),
(39, 'Cloths', 'cloth', 1, NULL, NULL),
(40, 'shoe', 'shoe', 1, NULL, NULL),
(41, 'others', 'others', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_name`, `customer_email`, `password`, `mobile_no`, `created_at`, `updated_at`) VALUES
(1, 'raju', 'abc@gmail.com', '25d55ad283aa400af464c76d713c07ad', '9', NULL, NULL),
(3, 'raju', 'ra@gmail.com', '25d55ad283aa400af464c76d713c07ad', '4', NULL, NULL),
(4, 'w', 'rajubiswas5878@gmail.com', '25d55ad283aa400af464c76d713c07ad', '5', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manufacture`
--

CREATE TABLE `tbl_manufacture` (
  `manufacture_id` bigint(20) UNSIGNED NOT NULL,
  `manufacture_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacture_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_manufacture`
--

INSERT INTO `tbl_manufacture` (`manufacture_id`, `manufacture_name`, `manufacture_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(2, 'Samsung', 'this is samsung', 1, NULL, NULL),
(4, 'apple', 'apple manufactu', 1, NULL, NULL),
(5, 'chilor', 'chilor category', 1, NULL, NULL),
(6, 'BMW', 'bmw', 1, NULL, NULL),
(7, 'Rose Royals', 'car', 1, NULL, NULL),
(8, 'Casio', 'casio', 1, NULL, NULL),
(9, 'Lotto', 'lotto', 1, NULL, NULL),
(10, 'Easy', 'easy', 1, NULL, NULL),
(11, 'honda', 'honda', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 3, 4, 1, '23', 'pending', NULL, NULL),
(2, 3, 4, 2, '23', 'pending', NULL, NULL),
(3, 3, 4, 3, '23', 'pending', NULL, NULL),
(4, 3, 4, 4, '23', 'pending', NULL, NULL),
(5, 3, 4, 5, '23', 'pending', NULL, NULL),
(6, 3, 4, 6, '23', 'pending', NULL, NULL),
(7, 4, 5, 7, '2000', 'pending', NULL, NULL),
(8, 4, 5, 8, '2000', 'pending', NULL, NULL),
(9, 3, 6, 9, '15000', 'pending', NULL, NULL),
(10, 3, 6, 10, '15000', 'pending', NULL, NULL),
(11, 3, 6, 11, '15000', 'pending', NULL, NULL),
(12, 3, 6, 12, '15000', 'pending', NULL, NULL),
(13, 3, 6, 13, '15000', 'pending', NULL, NULL),
(14, 3, 6, 14, '15000', 'pending', NULL, NULL),
(15, 3, 7, 15, '23', 'pending', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(1, 3, 5, 'ty', '23', '1', NULL, NULL),
(2, 4, 5, 'ty', '23', '1', NULL, NULL),
(3, 5, 5, 'ty', '23', '1', NULL, NULL),
(4, 6, 5, 'ty', '23', '1', NULL, NULL),
(5, 7, 10, 'Sunglass', '2000', '1', NULL, NULL),
(6, 8, 10, 'Sunglass', '2000', '1', NULL, NULL),
(7, 9, 8, 'mobile', '15000', '1', NULL, NULL),
(8, 10, 8, 'mobile', '15000', '1', NULL, NULL),
(9, 11, 8, 'mobile', '15000', '1', NULL, NULL),
(10, 12, 8, 'mobile', '15000', '1', NULL, NULL),
(11, 13, 8, 'mobile', '15000', '1', NULL, NULL),
(12, 14, 8, 'mobile', '15000', '1', NULL, NULL),
(13, 15, 5, 'ty', '23', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 'handcash', 'pending', NULL, NULL),
(2, 'cart', 'pending', NULL, NULL),
(3, 'bcash', 'pending', NULL, NULL),
(4, 'cart', 'pending', NULL, NULL),
(5, 'handcash', 'pending', NULL, NULL),
(6, 'cart', 'pending', NULL, NULL),
(7, 'handcash', 'pending', NULL, NULL),
(8, 'bcash', 'pending', NULL, NULL),
(9, 'handcash', 'pending', NULL, NULL),
(10, 'handcash', 'pending', NULL, NULL),
(11, 'handcash', 'pending', NULL, NULL),
(12, 'handcash', 'pending', NULL, NULL),
(13, 'handcash', 'pending', NULL, NULL),
(14, 'handcash', 'pending', NULL, NULL),
(15, 'cart', 'pending', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `manufacture_id` int(11) NOT NULL,
  `product_short_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_long_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `category_id`, `manufacture_id`, `product_short_description`, `product_long_description`, `product_price`, `product_image`, `product_size`, `product_color`, `publication_status`, `created_at`, `updated_at`, `product_name`) VALUES
(3, 35, 2, 'jj', 'uu', 23.00, 'image/Q5jcanGq3trUdLZr3mtp.jpg', '3', 'ggg', 1, NULL, NULL, 'ty'),
(5, 32, 5, 'jj', 'uu', 23.00, 'image/gTgku9tTbivzxyBPUysK.jpg', '3', 'ggg', 1, NULL, NULL, 'ty'),
(8, 36, 4, 'mobile', 'mobile', 15000.00, 'image/CpQN67CmCqRqQViXejwo.jpg', '4.5inc', 'black', 1, NULL, NULL, 'mobile'),
(9, 37, 4, 'laptop', 'laptop', 30000.00, 'image/VMjdlMbk47buu9vpXhS9.jpg', '12inc', 'gray', 1, NULL, NULL, 'laptop'),
(10, 41, 8, 'watch', 'watch', 2000.00, 'image/5VwzX58yCqmGs05U6qpd.jpg', '3inc', 'black', 1, NULL, NULL, 'Sunglass'),
(11, 38, 11, 'honda', 'honda', 120000.00, 'image/kZ0OLgNXyht6nOMUn8Ig.jpg', '3-4 feet', 'black', 1, NULL, NULL, 'motorcycle'),
(12, 21, 6, 'supercar', 'supercar', 400000.00, 'image/Me9n2neK1YKyhQ5jBjOe.jpg', '7feet', 'white', 1, NULL, NULL, 'sportsCar');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` bigint(20) UNSIGNED NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_mobile_number` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_email`, `shipping_fname`, `shipping_lname`, `shipping_address`, `shipping_mobile_number`, `shipping_city`, `created_at`, `updated_at`) VALUES
(1, 'a@gmail.com', 't', 'g', 'd', '9', 'd', NULL, NULL),
(2, 'a@gmail.com', 't', 'g', 'd', '9', 'd', NULL, NULL),
(3, 'w', 'e', 'g', 'm', 'n', '0', NULL, NULL),
(4, 'w@gmail.com', 'f', 'f', '4', '4', 'g', NULL, NULL),
(5, 'w@gmail.com', 'dd', 'dd', 'dd', 'dd', 'dd', NULL, NULL),
(6, 'aa@gmail.com', 'dd', 'dd', 'ww', '34', 'ww', NULL, NULL),
(7, 'd', 'd', 'd', 'b', '4', 'l', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` bigint(20) UNSIGNED NOT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'slider/v67PYiQzM9W2kefXMJgK.jpg', '0', NULL, NULL),
(2, 'slider/0AuD4B3LX6s0S19m0cy3.jpg', '0', NULL, NULL),
(3, 'slider/sTA4cYhqYv58mU8wLewg.jpg', '0', NULL, NULL),
(4, 'slider/P7A1si9wHPhjWSe3k97a.jpg', '0', NULL, NULL),
(5, 'slider/jfFOb1xy4VS5yTFzHv4v.jpg', '0', NULL, NULL),
(6, 'slider/4nhKnefxVEjlggVum715.jpg', '1', NULL, NULL),
(7, 'slider/fESaeHRY5T7HITalrMlI.jpg', '1', NULL, NULL),
(8, 'slider/wVM13IFOZ8gD7GcKOuKi.jpg', '1', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_manufacture`
--
ALTER TABLE `tbl_manufacture`
  ADD PRIMARY KEY (`manufacture_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_manufacture`
--
ALTER TABLE `tbl_manufacture`
  MODIFY `manufacture_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
