-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 30, 2023 at 04:29 PM
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
-- Database: `laravel_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `image_name` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image_name`, `description`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Snacks', '6446d4c4-852e-42ec-b814-bcaaa1d0c5b0.jpeg', 'Range of snacks', 'snacks', '2019-11-22 20:54:05', '2023-12-28 01:37:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `image_name` varchar(191) NOT NULL,
  `role` enum('Walk-in','Eceran','Retail','Dropshipper') NOT NULL,
  `alamat` text NOT NULL,
  `kota` varchar(191) NOT NULL,
  `provinsi` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `image_name`, `role`, `alamat`, `kota`, `provinsi`, `created_at`, `updated_at`) VALUES
(1, 'Walk-in Customer', 'cust@gmail.com', '0813213215', 'LOGO TECHNOBRAIN FIX.png', 'Walk-in', 'Walk_in Customer ', 'Walk_In', 'Walk_In', '2019-11-22 23:56:02', '2019-11-22 23:56:02'),
(2, 'Juliet Nakom', 'admins@gmail.com', '0249400987', 'fin.png', 'Walk-in', 'Jl. SMEA 6', 'Jakarta Timur', 'Jambi', '2019-11-22 23:57:12', '2023-12-29 12:00:31'),
(3, 'Godwin Boadi', 'godwinboadi@gmail.com', '08124123', 'Passport picture - Carrie2.jpg', 'Retail', 'Jl Provinsi', 'Asesewa, Upper Manya', 'undefined', '2019-11-23 18:23:41', '2023-12-29 11:29:44');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_16_031641_modify_users_table', 2),
(4, '2019_07_19_010107_create_table_siswa', 2),
(5, '2019_07_23_014713_create_table_customer', 2),
(6, '2019_07_23_014712_create_categories_table', 3),
(7, '2019_07_23_014715_create_products_table', 3),
(8, '2019_07_24_011943_create_table_payment_methods', 4),
(9, '2019_07_24_011944_create_orders_table', 5),
(10, '2019_07_24_011945_create_order_details_table', 6),
(11, '2019_07_24_020643_modify_categories_table2', 7),
(12, '2019_07_24_055328_add_kembalian_column', 7),
(13, '2019_11_23_031122_modify_users', 8),
(14, '2019_11_23_033207_modiy_deleted_at', 9),
(15, '2019_11_23_040025_modify_orders_table', 10),
(16, '2019_11_23_040235_modify_product_table', 11),
(17, '2019_11_23_040906_create_discount_table', 12),
(18, '2019_11_23_080333_add_ppn_column_to_order_detail', 13);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total` double(8,2) NOT NULL,
  `total_ppn` float NOT NULL,
  `bayar` double(8,2) NOT NULL,
  `kembalian` double(8,2) NOT NULL,
  `payment_method_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice`, `user_id`, `total`, `total_ppn`, `bayar`, `kembalian`, `payment_method_id`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, 'f6fd4f20-1da4-4ae1-8ef6-60ec13fa2532', 1, 100000.00, 0, 150000.00, 45000.00, 1, 2, '2019-11-23 00:07:59', '2019-11-23 00:07:59'),
(2, 'a2bec555-b0a6-4a16-8619-7915c563bedb', 2, 100000.00, 0, 200000.00, 95000.00, 1, 1, '2019-11-23 00:42:10', '2019-11-23 00:42:10'),
(6, '6a383b64-e4ca-4459-b268-196a3a356634', 1, 105000.00, 0, 105000.00, 0.00, 1, 1, '2019-11-23 01:05:49', '2019-11-23 01:05:49'),
(7, 'b0291727-9239-4b19-b26b-1382c612e25d', 1, 210000.00, 0, 210000.00, 0.00, 1, 2, '2019-10-23 17:22:28', '2019-11-23 17:22:28'),
(8, '91dbcec9-24ff-4854-a3a7-bb505da87ac2', 1, 15000.00, 0, 6000.00, 0.00, 1, 2, '2019-11-23 17:27:17', '2019-11-23 17:27:17'),
(9, '1c079ebb-0185-4b80-ba72-30a8337d8382', 1, 106400.00, 5200, 200000.00, 93800.00, 1, 1, '2019-11-23 18:35:38', '2019-11-23 18:35:38'),
(10, 'e21fc837-809f-4590-9c6f-e53c646a4c93', 1, 15000.00, 1000, 6000.00, 0.00, 1, 3, '2019-11-23 19:15:34', '2019-11-23 19:15:34'),
(11, '837bffd0-54aa-4d9f-ae16-0deab199f2fa', 1, 105600.00, 5100, 150000.00, 44400.00, 1, 1, '2019-11-23 20:03:20', '2019-11-23 20:03:20'),
(12, '0253baaa-9779-4750-9f01-96d17bb0f8cf', 1, 8400.00, 700, 5000.00, 800.00, 1, 1, '2019-11-23 20:36:17', '2019-11-23 20:36:17'),
(13, '84aa5c04-c23d-49dd-98ac-3a7f29720fc5', 1, 8400.00, 700, 5000.00, 800.00, 1, 1, '2019-11-23 20:36:29', '2019-11-23 20:36:29'),
(14, '06b22488-a3ec-4d81-b41f-b697ceb92b06', 1, 1400.00, 200, 1200.00, 0.00, 1, 1, '2019-11-23 20:38:25', '2019-11-23 20:38:25'),
(15, 'd121b81e-c9ec-472b-9733-6b17346bf6a2', 2, 2400.00, 300, 2000.00, 200.00, 1, 1, '2019-11-23 20:43:59', '2019-11-23 20:43:59'),
(16, '103aa8a5-b5be-4df9-afbc-db040b4313e6', 1, 600.00, 100, 2000.00, 1400.00, 1, 2, '2019-11-23 21:31:47', '2019-11-23 21:31:47'),
(17, 'cfc69d37-2723-4a68-beaf-952c809102ba', 1, 50000.00, 2000, 12000.00, 0.00, 1, 1, '2019-11-24 02:43:13', '2019-11-24 02:43:13'),
(18, 'b3053d23-e96e-4ecc-9568-c72fb7f7c517', 3, 20400.00, 1200, 10000.00, 2800.00, 1, 3, '2020-02-08 01:01:21', '2020-02-08 01:01:21'),
(19, '75f5bd40-8aab-4865-bc50-1f0829be7fc5', 4, 43.26, 0.21, 42.00, 0.00, 1, 1, '2023-12-28 17:42:38', '2023-12-28 17:42:38'),
(20, '820829e0-d593-49d0-83b2-5b66db0b948f', 5, 25.75, 0.15, 25.00, 0.00, 1, 1, '2023-12-29 14:14:43', '2023-12-29 14:14:43'),
(21, '28d1f1ea-0629-4456-a3a9-58660e62af73', 5, 43.26, 0.96, 44.00, 0.74, 1, 1, '2023-12-29 15:52:03', '2023-12-29 15:52:03'),
(22, '41ae4b2f-dd85-46fd-96ff-a745e28f8f37', 5, 72.10, 0.21, 72.10, 0.00, 1, 3, '2023-12-30 14:42:10', '2023-12-30 14:42:10'),
(23, 'c9d201b1-49c7-4090-886c-e11cfef0ed71', 5, 72.10, 0.21, 72.10, 0.00, 1, 1, '2023-12-30 14:52:23', '2023-12-30 14:52:23');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `subtotal` double(8,2) NOT NULL,
  `ppn` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `price`, `subtotal`, `ppn`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 100000.00, 100000.00, 0.00, '2019-11-23 00:07:59', '2019-11-23 00:07:59'),
(2, 2, 1, 1, 100000.00, 100000.00, 0.00, '2019-11-23 00:42:10', '2019-11-23 00:42:10'),
(3, 6, 1, 1, 105000.00, 105000.00, 5000.00, '2019-11-23 01:05:49', '2019-11-23 01:05:49'),
(4, 7, 1, 2, 105000.00, 210000.00, 5000.00, '2019-10-23 17:22:28', '2019-11-23 17:22:28'),
(5, 8, 2, 10, 1500.00, 15000.00, 1000.00, '2019-11-23 17:27:17', '2019-11-23 17:27:17'),
(6, 9, 1, 1, 105000.00, 105000.00, 5000.00, '2019-11-23 18:35:38', '2019-11-23 18:35:38'),
(7, 9, 2, 2, 700.00, 1400.00, 200.00, '2019-11-23 18:35:38', '2019-11-23 18:35:38'),
(8, 10, 2, 10, 1500.00, 15000.00, 1000.00, '2019-11-23 19:15:34', '2019-11-23 19:15:34'),
(9, 11, 1, 1, 105000.00, 105000.00, 5000.00, '2019-11-23 20:03:20', '2019-11-23 20:03:20'),
(10, 11, 2, 1, 600.00, 600.00, 100.00, '2019-11-23 20:03:20', '2019-11-23 20:03:20'),
(11, 12, 2, 7, 1200.00, 8400.00, 700.00, '2019-11-23 20:36:17', '2019-11-23 20:36:17'),
(12, 13, 2, 7, 1200.00, 8400.00, 700.00, '2019-11-23 20:36:29', '2019-11-23 20:36:29'),
(13, 14, 2, 2, 700.00, 1400.00, 200.00, '2019-11-23 20:38:25', '2019-11-23 20:38:25'),
(14, 15, 2, 3, 800.00, 2400.00, 300.00, '2019-11-23 20:43:59', '2019-11-23 20:43:59'),
(15, 16, 2, 1, 600.00, 600.00, 100.00, '2019-11-23 21:31:47', '2019-11-23 21:31:47'),
(16, 17, 2, 20, 2500.00, 50000.00, 2000.00, '2019-11-24 02:43:13', '2019-11-24 02:43:13'),
(17, 18, 2, 12, 1700.00, 20400.00, 1200.00, '2020-02-08 01:01:21', '2020-02-08 01:01:21'),
(18, 19, 3, 6, 7.21, 43.26, 0.21, '2023-12-28 17:42:38', '2023-12-28 17:42:38'),
(19, 20, 4, 5, 5.15, 25.75, 0.15, '2023-12-29 14:14:43', '2023-12-29 14:14:43'),
(20, 21, 4, 2, 10.30, 20.60, 0.30, '2023-12-29 15:52:03', '2023-12-29 15:52:03'),
(21, 21, 5, 1, 22.66, 22.66, 0.66, '2023-12-29 15:52:03', '2023-12-29 15:52:03'),
(22, 22, 7, 10, 7.21, 72.10, 0.21, '2023-12-30 14:42:10', '2023-12-30 14:42:10'),
(23, 23, 7, 10, 7.21, 72.10, 0.21, '2023-12-30 14:52:23', '2023-12-30 14:52:23');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(191) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `description`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Cash', 'Cash', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(191) NOT NULL,
  `price` double(8,2) NOT NULL,
  `ppn` double(8,2) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `stock` int(11) NOT NULL,
  `image_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `buy_price` double(8,2) NOT NULL,
  `restock_bal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `uuid`, `slug`, `name`, `description`, `code`, `price`, `ppn`, `category_id`, `stock`, `image_name`, `created_at`, `updated_at`, `deleted_at`, `buy_price`, `restock_bal`) VALUES
(1, '84fc52fe-28f4-4a8b-becb-d5590d3be82a', 'testppn', 'TestPPN', 'TestPPN', 'TestPPN', 10.00, 5.00, 1, 2, 'Tabel Priodik HD.jpg', '2019-11-22 21:45:25', '2023-12-30 14:10:04', '2023-12-30 14:10:04', 9.00, 5),
(2, '285c1ba8-6bda-4dd8-aed1-e27f5acccd72', 'chocolatos', 'ChocolateSS', 'This is Kingsbit chocolate', 'CHO1', 500.00, 20.00, 1, 155, 'Divine_Sunderer_item_HD.png', '2019-11-23 17:26:53', '2023-12-30 14:10:15', '2023-12-30 14:10:15', 0.00, 0),
(3, '253668b9-3909-465c-8912-33503fe59968', 'd-lINK', 'd-LINK', 'D-LINK', '839675000660', 7.00, 3.00, 1, 44, 'Passport picture - Carrie2.jpg', '2023-12-28 17:40:28', '2023-12-30 13:53:31', '2023-12-30 13:53:31', 6.00, 5),
(4, 'f50dd4cb-1911-47ee-b871-36da17ee84d9', 'chocolate', 'Chocolate', 'dsadasdfsadf', '2859', 10.00, 3.00, 1, 50, 'Ignite.png', '2023-12-29 14:02:41', '2023-12-30 11:08:06', NULL, 9.00, 5),
(5, '7f114c59-78b5-486c-8040-14582bed8625', 'aqua-praise-soft', 'Aqua Praise Soft', 'Aqua Praise Soft for testing', '12345', 22.00, 1.00, 1, 5, 'Divine_Sunderer_item_HD.png', '2023-12-29 15:38:28', '2023-12-30 12:57:20', NULL, 20.00, 5),
(7, 'f78f6287-b0aa-4d1b-89c4-046f4e1c8d49', 'kiki-toilet-roll', 'Kiki Toilet Roll', 'Kiki Toilet Roll', '6036000024207', 7.00, 3.00, 1, 80, '191.png', '2023-12-30 14:40:37', '2023-12-30 14:52:23', NULL, 6.00, 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` enum('Admin','Kasir') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `username`, `phone`, `address`, `level`, `image_name`) VALUES
(2, 'Kasir', 'kasir@gmail.com', NULL, '$2y$12$rXJ9fdHfWTSfJaB/2OhNleudU9HvQgxDC364IsA06wsfbR0FeNIRC', NULL, '2019-11-22 20:29:12', '2019-11-22 20:29:12', 'kasir', '07123123', 'Kasir12323', 'Kasir', '1__-vJQqeCmpw-kghDFX8yJw.png'),
(4, 'admin', 'admin@gmail.com', NULL, '$2y$12$MGeNO.hLqK2YGC4LMy2X8OuxUL44B0LCwySbPf9j89ewZk5F7I31e', NULL, '2020-02-03 17:00:00', NULL, 'admin', '512412', '1251254123412', 'Admin', '1__-vJQqeCmpw-kghDFX8yJw.png'),
(5, 'Godwin Boadi', 'godwin.boadi@ghs.gov.gh', NULL, '$2y$10$krzBeaW54Pq.5WLX48kEa.sLO30CmcH1S/A/KeDFhtQ/4kRPe4Bai', NULL, '2023-12-29 12:06:03', '2023-12-29 12:06:03', 'aquacy', '+233249400987', '15 Asafoatse Kwranteng Street', 'Admin', 'fin.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `orders_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
