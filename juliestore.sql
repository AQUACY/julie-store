-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 20, 2024 at 11:19 PM
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
(1, 'Snacks', '6446d4c4-852e-42ec-b814-bcaaa1d0c5b0.jpeg', 'Range of snacks', 'snacks', '2019-11-22 20:54:05', '2023-12-28 01:37:55', NULL),
(3, 'Soaps', 'IMG-20220222-WA0023.jpg', 'Brands and list of soaps', 'soaps', '2024-01-01 16:09:05', '2024-01-01 16:09:05', NULL),
(4, 'Groceries', 'IMG-20220222-WA0023.jpg', 'Groceries - oil, sardines, indomie, spaghetti, tin-tomatoes', 'groceries', '2024-01-01 16:31:28', '2024-01-01 16:31:28', NULL),
(5, 'Beverages', 'IMG-20220222-WA0023.jpg', 'List of Beverages', 'beverages', '2024-01-01 16:32:01', '2024-01-01 16:32:01', NULL),
(6, 'Biscuit', 'IMG-20220222-WA0023.jpg', 'List of Biscuits', 'biscuit', '2024-01-01 16:32:14', '2024-01-01 16:32:14', NULL),
(7, 'Toiletries & Handkerchief', 'IMG-20220222-WA0023.jpg', 'List of T & H', 'toiletries-handkerchief', '2024-01-01 16:32:51', '2024-01-01 16:32:51', NULL),
(8, 'Pads', 'IMG-20220222-WA0023.jpg', 'List of Pads', 'pads', '2024-01-01 16:33:04', '2024-01-01 16:33:04', NULL),
(9, 'Pampers &b Wipes', 'IMG-20220222-WA0023.jpg', 'List of Pampers & Wipes', 'pampers-b-wipes', '2024-01-01 16:33:27', '2024-01-01 16:33:27', NULL),
(10, 'Toothpast &b Brush', 'IMG-20220222-WA0023.jpg', 'List of Toothpaste & Brush', 'toothpast-b-brush', '2024-01-01 16:34:03', '2024-01-01 16:34:03', NULL),
(11, 'Cosmetics', 'IMG-20220222-WA0023.jpg', 'List of Cosmetics', 'cosmetics', '2024-01-01 16:34:18', '2024-01-01 16:34:18', NULL),
(12, 'Insecticides', 'IMG-20220222-WA0023.jpg', 'List of Insecticides', 'insecticides', '2024-01-01 16:34:37', '2024-01-01 16:34:37', NULL),
(13, 'Polish', 'IMG-20220222-WA0023.jpg', 'List of Polish', 'polish', '2024-01-01 16:34:49', '2024-01-01 16:34:49', NULL),
(14, 'Rice', 'IMG-20220222-WA0023.jpg', 'List of Rice', 'rice', '2024-01-01 16:36:58', '2024-01-01 16:36:58', NULL),
(15, 'Groceries', 'IMG-20220222-WA0023.jpg', 'List of Groceries', 'groceries', '2024-01-01 16:54:48', '2024-01-01 16:54:48', NULL),
(16, 'Beverages', 'IMG-20220222-WA0023.jpg', 'Beverages', 'beverages', '2024-01-01 17:52:37', '2024-01-01 17:52:37', NULL),
(17, 'Antiseptics', 'mockup.png', 'Antiseptics', 'antiseptics', '2024-01-03 17:34:48', '2024-01-03 17:34:48', NULL),
(18, 'General', 'mockup.png', 'General', 'general', '2024-01-10 10:57:27', '2024-01-10 10:57:27', NULL);

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
(23, 'c9d201b1-49c7-4090-886c-e11cfef0ed71', 5, 72.10, 0.21, 72.10, 0.00, 1, 1, '2023-12-30 14:52:23', '2023-12-30 14:52:23'),
(24, '63894b91-2500-4b30-aec5-bfa73766c541', 5, 7.21, 0.21, 7.21, 0.00, 1, 1, '2023-12-30 16:45:20', '2023-12-30 16:45:21'),
(25, '0872d3d7-21bb-453e-a2c4-43c80c4cad38', 4, 12.00, 0, 12.00, 0.00, 1, 1, '2024-01-01 16:13:24', '2024-01-01 16:13:24'),
(26, '57d912e4-ccef-4384-b151-a92a0f0bcf25', 4, 108.00, 0, 108.00, 0.00, 1, 1, '2024-01-01 16:15:52', '2024-01-01 16:15:52'),
(27, '7260e4da-6137-43ad-9c6f-585421f9139d', 4, 36.05, 0.21, 37.00, 0.95, 1, 1, '2024-01-02 12:35:42', '2024-01-02 12:35:42'),
(28, '2a6f65e2-c73c-4530-9565-5f786a033ed3', 4, 6.00, 0, 6.00, 0.00, 1, 1, '2024-01-03 15:24:50', '2024-01-03 15:24:50'),
(29, 'd39d202d-8bb3-494d-b264-d7398e0b0e23', 4, 5.00, 0, 5.00, 0.00, 1, 1, '2024-01-09 18:14:35', '2024-01-09 18:14:35');

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
(23, 23, 7, 10, 7.21, 72.10, 0.21, '2023-12-30 14:52:23', '2023-12-30 14:52:23'),
(24, 24, 7, 1, 7.21, 7.21, 0.21, '2023-12-30 16:45:20', '2023-12-30 16:45:20'),
(25, 25, 9, 1, 12.00, 12.00, 0.00, '2024-01-01 16:13:24', '2024-01-01 16:13:24'),
(26, 26, 9, 9, 12.00, 108.00, 0.00, '2024-01-01 16:15:52', '2024-01-01 16:15:52'),
(27, 27, 7, 5, 7.21, 36.05, 0.21, '2024-01-02 12:35:42', '2024-01-02 12:35:42'),
(28, 28, 84, 3, 2.00, 6.00, 0.00, '2024-01-03 15:24:50', '2024-01-03 15:24:50'),
(29, 29, 163, 1, 3.00, 3.00, 0.00, '2024-01-09 18:14:35', '2024-01-09 18:14:35'),
(30, 29, 166, 1, 2.00, 2.00, 0.00, '2024-01-09 18:14:35', '2024-01-09 18:14:35');

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
(1, '84fc52fe-28f4-4a8b-becb-d5590d3be82a', 'testppn', 'TestPPN', 'TestPPN', 'TestPPN', 10.00, 5.00, 1, 2, 'Tabel Priodik HD.jpg', '2019-11-22 21:45:25', '2023-12-30 14:10:04', NULL, 9.00, 5),
(2, '285c1ba8-6bda-4dd8-aed1-e27f5acccd72', 'chocolatos', 'ChocolateSS', 'This is Kingsbit chocolate', 'CHO1', 500.00, 20.00, 1, 155, 'Divine_Sunderer_item_HD.png', '2019-11-23 17:26:53', '2023-12-30 14:10:15', NULL, 0.00, 0),
(3, '253668b9-3909-465c-8912-33503fe59968', 'd-lINK', 'd-LINK', 'D-LINK', '839675000660', 7.00, 3.00, 1, 44, 'Passport picture - Carrie2.jpg', '2023-12-28 17:40:28', '2023-12-30 13:53:31', NULL, 6.00, 5),
(4, 'f50dd4cb-1911-47ee-b871-36da17ee84d9', 'chocolate', 'Chocolate', 'dsadasdfsadf', '2859', 10.00, 3.00, 1, 50, 'Ignite.png', '2023-12-29 14:02:41', '2023-12-30 11:08:06', NULL, 9.00, 5),
(5, '7f114c59-78b5-486c-8040-14582bed8625', 'aqua-praise-soft', 'Aqua Praise Soft', 'Aqua Praise Soft for testing', '12345', 22.00, 1.00, 1, 5, 'Divine_Sunderer_item_HD.png', '2023-12-29 15:38:28', '2023-12-30 12:57:20', NULL, 20.00, 5),
(7, 'f78f6287-b0aa-4d1b-89c4-046f4e1c8d49', 'kiki-toilet-roll', 'Aqua Soft - troll', 'Kiki Toilet Roll', '6036000024207', 7.00, 3.00, 1, 136, '191.png', '2023-12-30 14:40:37', '2024-01-08 14:55:14', NULL, 6.00, 5),
(8, '98a229d5-f642-4b70-920b-c7fd92469def', 'kaspersky', 'kaspersky', 'dshdhdn', '5056244902483', 220.00, 3.00, 1, 100, 'IMG-20220222-WA0023.jpg', '2024-01-01 14:01:47', '2024-01-01 14:01:47', NULL, 200.00, 9),
(9, '2b20e535-4637-4723-82c6-bdfe1488629b', 'geisha', 'Geisha 250g pink', 'Geisha  250g', '6033000292025', 12.00, 0.00, 3, 8, 'IMG-20220222-WA0023.jpg', '2024-01-01 16:11:30', '2024-01-03 12:14:17', NULL, 10.00, 5),
(10, 'eed39970-2182-46ae-b8e8-aaf1a66c6dd6', 'royal-aroma-5kg', 'Royal Aroma - 5kg', 'Royal Aroma rice 5kg', '6034000145953', 87.00, 0.00, 14, 4, 'IMG-20220222-WA0023.jpg', '2024-01-01 16:46:42', '2024-01-01 16:46:42', NULL, 80.00, 3),
(11, 'fb8790d3-c8a8-4268-95a5-0e8576b0e40a', 'dubai-rice-5-kg', 'Dubai rice - 5 kg', 'Dubai rice - 5 kg', '8936089964631', 78.00, 0.00, 14, 12, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-01 16:48:45', '2024-01-10 11:12:32', NULL, 70.00, 3),
(12, '4f2d189f-9db5-4b94-aca4-91ea549df03e', 'lele-5-kg', 'Lele - 5 kg', 'Lele Rice 5kg', '8858669700203', 112.00, 0.00, 14, 3, 'IMG-20220222-WA0023.jpg', '2024-01-01 16:49:55', '2024-01-01 16:49:55', NULL, 102.00, 3),
(13, 'abe1d539-9278-4c7e-ae90-7b1ee6f2fffc', 'peacock', 'Peacock', 'Peacock - 5 kg', '8410184039536', 122.00, 0.00, 14, 4, 'mockup.png', '2024-01-01 16:51:49', '2024-01-01 16:51:49', NULL, 112.00, 3),
(14, '7cee1537-c81e-46a6-a087-017d02d51e8b', 'my-deer-gold-5kg', 'My Deer Gold - 5kg', 'My Deer Gold - 5kg', '8855180006609', 94.00, 0.00, 14, 1, 'IMG-20220222-WA0023.jpg', '2024-01-01 16:52:55', '2024-01-01 16:52:55', NULL, 84.00, 3),
(15, 'ee8ebe9d-e684-4903-9abf-0d3bed75f730', 'frytol-085l-btl', 'Frytol - 0.85L btl', 'Frytol - 0.85L btl', '6033000570109', 32.00, 0.00, 15, 13, 'IMG-20220222-WA0023.jpg', '2024-01-01 16:55:52', '2024-01-01 16:55:52', NULL, 30.00, 5),
(16, '717ba8cd-90fc-45e2-b127-353bccbd76a2', 'frytol-45l-gallon', 'Frytol - 4.5L gallon', 'Frytol - 4.5L gallon', '6034000190199', 110.00, 0.00, 15, 6, 'mockup.png', '2024-01-01 16:57:59', '2024-01-03 17:40:15', NULL, 100.00, 2),
(17, 'e2f74262-52f3-4039-99e7-1ca8d050bc91', 'frytol-900ml-sachet', 'Frytol 900mL sachet', 'Frytol 900mL sachet', '6034000190694', 21.00, 0.00, 15, 14, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-01 17:00:01', '2024-01-01 17:00:01', NULL, 18.00, 4),
(18, 'cf66be12-73ba-448a-9d95-2c1b1fbc4bb0', 'frytol-450ml-sachet', 'Frytol 450mL sachet', 'Frytol 450mL sachet', '6034000190687', 14.00, 0.00, 15, 13, 'mockup.png', '2024-01-01 17:02:22', '2024-01-01 17:02:22', NULL, 10.00, 5),
(19, 'aec9d0ae-f2fc-429f-bd1c-93ab55dfeb88', 'tasty-tom-22kg-tin', 'Tasty Tom 2.2kg Tin', 'Tasty Tom 2.2kg Tin', '6033000300034', 50.00, 0.00, 15, 7, 'IMG-20220222-WA0023.jpg', '2024-01-01 17:03:40', '2024-01-10 11:12:06', NULL, 45.00, 1),
(20, '4062110b-8f4e-422e-a871-4e884c76c695', 'tasty-tom-200g-tin', 'Tasty Tom - 200g Tin', 'Tasty Tom - 200g Tin', '6925157900529', 12.00, 0.00, 15, 10, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-01 17:05:34', '2024-01-01 17:05:34', NULL, 10.00, 5),
(21, '3d9477e8-2fdc-4552-8a7b-e718241a69c0', 'tasty-tom-210g-tin', 'Tasty Tom 210g - tin', 'Tasty Tom 210g - tin', '6033000300010', 8.00, 0.00, 15, 40, 'IMG-20220222-WA0023.jpg', '2024-01-01 17:08:16', '2024-01-01 17:08:16', NULL, 6.00, 10),
(22, 'e9015dab-1973-4104-b0ab-eac34e1389b7', 'tasty-tom-pouch-small', 'Tasty Tom - pouch small', 'Tasty Tom - pouch small', '6033000303974', 7.00, 0.00, 15, 44, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-01 17:10:09', '2024-01-01 17:10:09', NULL, 5.00, 10),
(23, '5751e4d3-45c8-4ecb-a100-aa490ca46d75', 'tasty-tom-medium-small', 'Tasty Tom - medium small', 'Tasty Tom - medium small', '6033000303981', 10.00, 0.00, 15, 27, 'mockup.png', '2024-01-01 17:11:35', '2024-01-01 17:11:35', NULL, 8.00, 10),
(24, '57cc4341-5610-49b8-b57e-19d6589ed96e', 'tasty-tom-medium-pouch', 'Tasty Tom - medium pouch', 'Tasty Tom - medium pouch', '6033000303998', 24.00, 0.00, 15, 21, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-01 17:13:05', '2024-01-10 11:10:54', NULL, 21.00, 3),
(25, '0a1ff34b-46e3-4caf-b0e4-ed6b85f7cafe', 'gino-pouch-big', 'Gino pouch big', 'Gino pouch big', '8410300361466', 24.00, 0.00, 15, 19, 'IMG-20220222-WA0023.jpg', '2024-01-01 17:17:39', '2024-01-10 11:11:29', NULL, 21.00, 5),
(26, '996b6b31-ed70-4ab3-a86d-315dc77eeab8', 'gino-small-pouch', 'Gino small pouch', 'Gino small pouch', '8410300574903', 7.00, 0.00, 15, 27, 'mockup.png', '2024-01-01 17:19:15', '2024-01-01 17:19:15', NULL, 6.00, 10),
(27, '8fc0c1d6-3d2e-464e-ba93-5194fbd41d11', 'tasty-tom-sachet-small', 'Tasty tom sachet small', 'Tasty tom sachet small', '6033000300140', 3.00, 0.00, 15, 80, 'IMG-20220222-WA0023.jpg', '2024-01-01 17:21:56', '2024-01-01 17:21:56', NULL, 2.00, 20),
(28, '0039288a-a678-46c1-b578-0519b5270b70', 'gino-tomato-mix-sachet-small', 'Gino Tomato mix - sachet small', 'Gino Tomato mix - sachet small', '8410300361428', 2.00, 0.00, 15, 77, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-01 17:23:32', '2024-01-10 11:13:23', NULL, 2.00, 10),
(29, 'd3f95623-ac96-4fcf-889c-02442ded7973', 'indomie-onion-chicken-flavor-120g', 'Indomie onion chicken flavor - 120g', 'Indomie onion chicken flavor - 120g', '6034000390124', 7.00, 0.00, 15, 40, 'IMG-20220222-WA0023.jpg', '2024-01-01 17:38:21', '2024-01-01 17:38:21', NULL, 6.00, 5),
(30, '5ea677be-f563-460a-b91a-a12177686d47', 'indomie-onion-chicken-flavor-180g', 'Indomie onion chicken flavor - 180g', 'Indomie onion chicken flavor - 180g', '6034000390216', 9.00, 0.00, 15, 24, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-01 17:43:41', '2024-01-01 17:43:41', NULL, 9.00, 5),
(31, 'e3eb0dad-cd0d-41a9-9b23-1142e49f34d1', 'oba-spaghetti-400g', 'OBA Spaghetti - 400g', 'OBA Spaghetti - 400g', '8690828645617', 9.00, 0.00, 15, 23, 'mockup.png', '2024-01-01 17:46:14', '2024-01-01 17:46:14', NULL, 8.00, 10),
(32, '6ddeff9e-a5a5-4b94-812b-5371930c5811', 'titus-sardine-125g', 'Titus Sardine 125g', 'Titus Sardine 125g', '6111239500026', 12.00, 0.00, 15, 10, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-01 17:48:23', '2024-01-01 17:48:23', NULL, 10.00, 5),
(33, '50f2783c-1118-4aff-9d80-01c420d74b38', 'abena-sardine-125g', 'Abena Sardine - 125g', 'Abena Sardine - 125g', '6033000431103', 7.00, 0.00, 15, 9, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-01 17:49:26', '2024-01-01 17:49:26', NULL, 6.00, 5),
(34, '9e69e65c-3e92-409e-856c-d279b4a2a71f', 'annapurna-refined-iodated-salt-450g', 'Annapurna Refined Iodated Salt - 450g', 'Annapurna Refined Iodated Salt - 450g', '6033000298829', 5.00, 0.00, 15, 34, 'mockup.png', '2024-01-01 17:51:26', '2024-01-01 17:51:26', NULL, 4.00, 10),
(35, '5f011a21-0066-4fe6-8ffe-8db5eba5ae58', 'nestle-milo-440g-tin', 'Nestle Milo - 440g Tin', 'Nestle Milo - 440g Tin', '6033000088031', 37.00, 0.00, 16, 7, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-01 17:55:11', '2024-01-01 17:57:05', NULL, 30.00, 4),
(36, '85ffd780-ae50-4b75-8018-9ce5f028d6ff', 'nestle-milo-400g-sachet', 'Nestle Milo - 400g Sachet', 'Nestle Milo - 400g Sachet', '6033000088079', 33.00, 0.00, 16, 4, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-01 17:56:52', '2024-01-01 17:56:52', NULL, 30.00, 2),
(37, '95de441c-154c-4e74-b047-37cdae82d401', 'nestle-milo-800g-sachet', 'Nestle Milo - 800g Sachet', 'Nestle Milo - 800g Sachet', '6033000087959', 57.00, 0.00, 16, 4, 'mockup.png', '2024-01-01 18:03:07', '2024-01-01 18:03:07', NULL, 53.00, 2),
(38, '1ea9c432-f900-437d-8904-e39cdb7fdfce', 'cindy-rice-1kg', 'Cindy Rice 1kg', 'Cindy Rice 1kg', '6034000179354', 19.00, 0.00, 14, 2, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-01 18:05:03', '2024-01-01 18:05:03', NULL, 18.00, 5),
(39, '070707e3-31dd-4090-b1cb-bcabdbde5b0b', 'blue-band-margarine-450g', 'Blue Band Margarine - 450g', 'Blue Band Margarine - 450g', '6034000482034', 23.00, 0.00, 16, 1, 'IMG-20220222-WA0023.jpg', '2024-01-01 18:06:29', '2024-01-01 18:06:29', NULL, 20.00, 2),
(40, '56feaf7d-12ff-4dde-892c-35d7f1f81fd6', 'nestle-nido-350g-sachet', 'Nestle Nido - 350g Sachet', 'Nestle Nido - 350g Sachet', '6033000088819', 46.00, 0.00, 16, 5, 'mockup.png', '2024-01-01 18:07:48', '2024-01-01 18:07:48', NULL, 44.00, 3),
(41, '3f3d1b81-0cfe-4fed-bc0a-d6342f489cae', 'top-choco-chocolate-spread-370g', 'Top Choco Chocolate Spread- 370g', 'Top Choco Chocolate Spread- 370g', '6033000230874', 26.00, 0.00, 16, 1, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-01 18:10:42', '2024-01-01 18:10:42', NULL, 24.00, 2),
(42, '6ef5ee5f-db39-4ae3-889f-943bcefcec6b', 'good-morning-white-oats-500g', 'Good Morning White Oats 500g', 'Good Morning White Oats 500g', '4008844400006', 23.00, 0.00, 16, 3, 'IMG-20220222-WA0023.jpg', '2024-01-01 18:12:24', '2024-01-01 18:12:24', NULL, 22.00, 3),
(43, '907b034a-e714-4bcc-abf7-8589886c6702', 'ideal-milk-30ml', 'Ideal Milk - 30mL', 'Ideal Milk - 30mL', '6033000088635', 8.00, 0.00, 16, 49, 'mockup.png', '2024-01-01 18:14:29', '2024-01-10 10:52:14', NULL, 7.00, 10),
(44, '01970c0a-c2af-4175-a09d-460ad2321804', 'gari-olonka-1', 'Gari - Olonka 1', 'Gari - Olonka 1', '0987', 30.00, 0.00, 16, 4, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-01 18:16:17', '2024-01-01 18:16:17', NULL, 26.00, 4),
(45, 'ab379578-277e-44e5-a40f-b7055fd3dd02', 'gari-margarine-1', 'Gari - Margarine 1', 'Gari - Margarine 1', '0986', 5.00, 0.00, 16, 2, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-01 18:19:07', '2024-01-01 18:19:07', NULL, 3.00, 4),
(46, '513fdf43-7873-4d4f-accd-803cd61f9af7', 'gari-margarine-2-cups', 'Gari - Margarine 2 cups', 'Gari - Margarine 2 cups', '0985', 10.00, 0.00, 16, 4, 'mockup.png', '2024-01-01 18:21:05', '2024-01-01 18:21:05', NULL, 8.00, 4),
(47, '257dac30-6ac2-4f4a-9753-70bcf007f6ca', 'sugar-1-cup', 'Sugar 1 cup', 'Sugar 1 cup', '0984', 7.00, 0.00, 16, 24, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-01 18:23:07', '2024-01-01 18:23:07', NULL, 6.00, 5),
(48, '11c6a8c4-50e4-4e60-bb41-1a0549dc137f', 'parrot-brown-sugar-500g', 'Parrot Brown sugar 500g', 'Parrot Brown sugar 500g', '0983', 15.00, 0.00, 16, 1, 'IMG-20220222-WA0023.jpg', '2024-01-01 18:24:59', '2024-01-01 18:24:59', NULL, 13.00, 2),
(49, '58f2d2dc-26c9-49de-acfd-f349f843334c', 'brown-sugar-big', 'Brown Sugar Big', 'Brown Sugar Big', '0982', 45.00, 0.00, 16, 2, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-01 18:26:19', '2024-01-01 18:26:19', NULL, 42.00, 4),
(50, '7ce0e52d-c3ba-4a37-918c-b56d07868c2e', 'softcare-l-40-pcs', 'Softcare L 40 pcs', 'Softcare L 40 pcs', '6033000410047', 78.00, 0.00, 9, 30, 'IMG-20220222-WA0023.jpg', '2024-01-01 18:43:05', '2024-01-01 18:43:55', NULL, 76.00, 10),
(51, '7c0f0cf1-2d43-4d06-bf40-00f1a2400115', 'softcare-medium-42-pcs', 'Softcare Medium 42 pcs', 'Softcare 42 pcs', '6033000411204', 76.00, 0.00, 9, 7, 'IMG-20220222-WA0023.jpg', '2024-01-01 18:46:55', '2024-01-01 18:46:55', NULL, 74.00, 4),
(52, '5f062b73-e891-4762-8d0f-5d93eddcd686', 'softcare-small-42-pcs', 'Softcare Small 42 pcs', 'Softcare Small 42 pcs', '6033000410061', 75.00, 0.00, 9, 5, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-01 18:47:49', '2024-01-01 18:47:49', NULL, 74.00, 5),
(53, 'c658ddc8-5d6b-4036-8c55-d01e0e4c1112', 'softcare-large-11pcs', 'Softcare Large 11pcs', 'Softcare Large 11pcs', '6033000410108', 25.00, 0.00, 9, 20, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-01 18:50:25', '2024-01-01 18:50:25', NULL, 22.00, 5),
(54, 'f029cd78-0d9a-4faa-8f36-61623d07305d', 'softcare-medium-11pcs', 'Softcare Medium 11pcs', 'Softcare Medium 11pcs', '6033000410023', 23.00, 0.00, 9, 21, 'IMG-20220222-WA0023.jpg', '2024-01-01 18:51:51', '2024-01-01 18:51:51', NULL, 22.00, 5),
(55, 'e12e95f2-101f-46fb-8259-55c181d00a3c', 'pepsodent-charcoal-white-130g', 'Pepsodent Charcoal white 130g', 'Pepsodent Charcoal white 130g', '8934839125349', 19.00, 0.00, 10, 12, 'IMG-20220222-WA0023.jpg', '2024-01-03 12:04:55', '2024-01-03 12:04:55', NULL, 18.00, 5),
(56, 'd568c480-a9f5-428e-9472-4de1d8c97529', 'pepsodent-big-175g', 'Pepsodent big 175g', 'Pepsodent big 175g', '8934839128302', 17.00, 0.00, 10, 12, 'mockup.png', '2024-01-03 12:06:14', '2024-01-03 12:06:14', NULL, 16.00, 5),
(57, '57d0cfa4-7623-44c1-b12e-25e4a31c753c', 'pepsodent-medium-120g', 'Pepsodent medium 120g', 'Pepsodent medium 120g', '8999999593728', 12.00, 0.00, 10, 12, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-03 12:07:26', '2024-01-03 12:07:26', NULL, 10.00, 5),
(58, '98e91c9d-cc84-48de-ba3f-d2f7aea4a380', 'geisha-250g-pink', 'Geisha 250g green', 'Geisha 250g green', '6033000291998', 14.00, 0.00, 1, 7, 'mockup.png', '2024-01-03 12:15:16', '2024-01-03 12:16:10', NULL, 12.00, 5),
(59, '56037530-ceb3-4048-83d7-a1647b2c87b7', 'bf-soap-260g', 'BF Soap - 260g', 'BF Soap - 260g', '6181001995770', 12.00, 0.00, 3, 20, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-03 12:17:17', '2024-01-03 12:17:17', NULL, 11.00, 5),
(60, 'fe47440a-c8b2-4f16-9d11-bd286cdba7b3', 'kleesoft-big', 'Kleesoft big', 'Kleesoft big', '6034000307894', 7.00, 0.00, 3, 12, 'IMG-20220222-WA0023.jpg', '2024-01-03 12:19:24', '2024-01-03 12:19:24', NULL, 6.00, 5),
(61, '552d20c9-59d3-41c4-994f-7c7a8366a41d', 'madar-big', 'Madar Big', 'Madar Big', '745760151097', 7.00, 0.00, 3, 23, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-03 12:21:06', '2024-01-03 12:21:06', NULL, 6.00, 5),
(62, 'ad81e2d8-7d1f-43ca-8a3a-35070315b0da', 'madar-small', 'Madar Small', 'Madar Small', '6210290021003', 4.00, 0.00, 3, 28, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-03 12:22:20', '2024-01-03 12:22:20', NULL, 3.00, 5),
(63, '0f33f9c4-3604-4058-8167-0ffc3351d9f3', 'keysoap-small-250g', 'Keysoap small -250g', 'Keysoap small -250g', '6033000292469', 8.00, 0.00, 3, 11, 'mockup.png', '2024-01-03 12:23:34', '2024-01-03 12:23:34', NULL, 7.00, 5),
(64, '0bbbf372-6f1d-494e-a0de-da7587be719d', 'lifebuoy-deo-fresh', 'Lifebuoy Deo Fresh', 'Lifebuoy Deo Fresh', '6033000298270', 12.00, 0.00, 3, 19, 'IMG-20220222-WA0023.jpg', '2024-01-03 12:24:36', '2024-01-03 12:24:36', NULL, 11.00, 5),
(65, '8fe3474c-16aa-4be6-b219-6597e21e11f4', 'geisha-small', 'Geisha small', 'Geisha small', '6033000291721', 10.00, 0.00, 3, 36, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-03 12:27:41', '2024-01-03 12:27:41', NULL, 9.00, 5),
(66, 'f570431f-401e-42ec-a1f1-261ba4632f3c', 'avril-vibrant-soap-200g', 'Avril Vibrant Soap - 200g', 'Avril Vibrant Soap - 200g', '6033000414397', 7.00, 0.00, 3, 21, 'mockup.png', '2024-01-03 12:29:01', '2024-01-03 12:29:01', NULL, 6.00, 5),
(67, '22a64e1d-4daa-4806-ba44-50db91c5a9af', 'lux', 'Lux', 'Lux', '6181001997576', 12.00, 0.00, 3, 14, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-03 12:30:52', '2024-01-03 12:30:52', NULL, 11.00, 5),
(68, 'b761dc25-c2a0-4691-86bf-407edbaa5b62', 'sunlight-multipurpose-soap', 'Sunlight Multipurpose soap', 'Sunlight Multipurpose soap', '6033000294807', 6.00, 0.00, 3, 21, 'mockup.png', '2024-01-03 12:32:05', '2024-01-03 12:32:05', NULL, 5.00, 5),
(69, '06858a0a-4220-493c-a5fd-5b97c870e6b8', 'alife-delicate-rose-luxury-bath-soap', 'Alife Delicate Rose luxury bath soap big', 'Alife Delicate Rose luxury bath soap', '6034000374629', 8.00, 0.00, 3, 35, 'IMG-20220222-WA0023.jpg', '2024-01-03 12:33:47', '2024-01-03 12:35:13', NULL, 7.00, 5),
(70, '768a6dc4-ffb4-4f9f-a3c8-1b1980ffc249', 'alife-delicate-rose-luxury-bath-soap-small', 'Alife Delicate Rose luxury bath soap - small', 'Alife Delicate Rose luxury bath soap - small', '6034000374650', 4.00, 0.00, 3, 30, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-03 12:34:49', '2024-01-03 12:34:49', NULL, 3.00, 5),
(71, '329e6492-ad9b-423d-9022-4a31155dcb48', 'juliet-soap', 'Juliet Soap', 'Juliet Soap', '9555246323426', 8.00, 0.00, 3, 15, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-03 12:36:12', '2024-01-03 12:36:12', NULL, 7.00, 5),
(72, 'c488f4ed-9816-4ede-969d-a60934f5dba6', 'jumbo-soap', 'Jumbo soap', 'Jumbo soap', '6181100537543', 12.00, 0.00, 3, 8, 'mockup.png', '2024-01-03 12:37:04', '2024-01-03 12:37:04', NULL, 10.00, 5),
(73, 'e26b8481-0173-47ae-ba7c-402a265af4cb', 'keysoap-bar', 'Keysoap bar big', 'Keysoap bar', '6033000292551', 23.00, 0.00, 3, 23, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-03 12:38:18', '2024-01-03 12:39:08', NULL, 20.00, 5),
(74, 'f178ddab-b9d0-4971-82b6-230bccffe24e', 'keysoap-medium', 'Keysoap medium', 'Keysoap medium', '6033000299246', 19.00, 0.00, 3, 21, 'mockup.png', '2024-01-03 12:39:59', '2024-01-03 12:39:59', NULL, 18.00, 5),
(75, '2c33d6ce-541e-4e8e-a2b1-8a8e8172ccae', 'carbolic-soap', 'Carbolic soap', 'Carbolic soap - without code', '0981', 5.00, 0.00, 3, 19, 'IMG-20220222-WA0023.jpg', '2024-01-03 12:41:07', '2024-01-03 12:41:07', NULL, 4.00, 5),
(76, '17e086e5-a177-4e3f-a8d9-92b6c2528dec', 'obolo-soap', 'Obolo soap', 'Obolo soap', '0980', 5.00, 0.00, 3, 71, 'mockup.png', '2024-01-03 12:42:13', '2024-01-10 10:56:00', NULL, 4.00, 5),
(77, '6116be93-de32-49b5-8baa-3c236c62f619', 'mok-detergent', 'MOK Detergent', 'MOK Detergent', '6030057220414', 2.00, 0.00, 3, 50, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-03 12:44:09', '2024-01-03 12:45:35', NULL, 1.00, 5),
(78, 'b27c99a8-0d48-4346-af7a-9c6b9ca827c8', 'gfj', 'GFJ', 'GFJ', '6030057221015', 50.00, 0.00, 3, 2, 'IMG-20220222-WA0023.jpg', '2024-01-03 12:45:25', '2024-01-03 12:45:25', NULL, 48.00, 5),
(79, 'cfd27478-3afb-4cf5-b9d1-473a0c870624', 'nutrisnax', 'Nutrisnax', 'Nutrisnax', '6033000301345', 6.00, 0.00, 6, 18, 'IMG-20220222-WA0023.jpg', '2024-01-03 12:55:12', '2024-01-03 12:55:12', NULL, 5.00, 5),
(80, '216a57a9-70ce-461a-8e71-913f0ac75c87', 'london', 'London', 'London', '6033000522146', 6.00, 0.00, 6, 35, 'mockup.png', '2024-01-03 12:56:22', '2024-01-03 12:56:22', NULL, 5.00, 5),
(81, '75a5b449-76fa-42a5-bf07-48bc10cceca6', 'alfa-cracker', 'alfa Cracker', 'alfa Cracker', '6033000523839', 2.00, 0.00, 3, 60, 'mockup.png', '2024-01-03 13:00:30', '2024-01-03 13:00:30', NULL, 1.00, 5),
(82, 'd4946f2a-2c45-48e2-8696-6019faefc60e', 'king-cracker', 'King cracker', 'king cracker', '6033000302557', 2.00, 0.00, 6, 60, 'IMG-20220222-WA0023.jpg', '2024-01-03 13:02:26', '2024-01-03 13:02:26', NULL, 1.00, 5),
(83, '7888b7a7-9edb-4388-a218-4dc00bffc700', 'lovan-chocolate-covered', 'Lovan chocolate covered', 'Lovan chocolate covered', '6034000493160', 1.00, 0.00, 6, 18, 'mockup.png', '2024-01-03 13:04:39', '2024-01-03 13:04:39', NULL, 1.00, 5),
(84, 'e244b6ae-f869-48e8-bf55-2fb37db42e0f', 'tasty-treats-60-g', 'Tasty treats 60 g', 'Tasty treats 60 g', '6971183840674', 2.00, 0.00, 6, 40, 'IMG-20220222-WA0023.jpg', '2024-01-03 13:06:00', '2024-01-03 15:24:50', NULL, 1.00, 5),
(85, 'e37075ee-d196-49fb-94e8-b8a8329564d5', 'breakfast-cereal', 'Breakfast Cereal', 'Breakfast Cereal', '6034000552492', 1.00, 0.00, 6, 108, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-03 13:07:51', '2024-01-03 13:07:51', NULL, 1.00, 10),
(86, '94208e03-7218-4b2c-959d-84b354bc0959', 'king-cracker-small', 'King cracker small', 'King cracker small', '6033000302571', 1.00, 0.00, 6, 84, 'mockup.png', '2024-01-03 13:09:24', '2024-01-03 13:09:24', NULL, 1.00, 5),
(87, '50873b2f-3d4c-41c7-9c15-26790eadc07d', 'alfa-cracker-small', 'Alfa Cracker small', 'Alfa Cracker small', '6033000524386', 1.00, 0.00, 6, 72, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-03 13:11:28', '2024-01-03 13:11:28', NULL, 1.00, 10),
(88, 'c5124e5e-e5e6-4fc8-841c-e7ad9366c5e9', 'marie-original-biscuit', 'Marie original biscuit', 'Marie original biscuit', '6034000639223', 1.00, 0.00, 6, 24, 'IMG-20220222-WA0023.jpg', '2024-01-03 13:13:13', '2024-01-03 13:13:13', NULL, 1.00, 5),
(89, 'baaa9d5c-0848-4d34-8b46-e028f57c13df', 'picadilly-coreen-hy3-me-ma', 'Picadilly Coreen - Hy3 me ma', 'Picadilly Coreen - Hy3 me ma', '6033000180056', 22.00, 0.00, 6, 3, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-03 13:14:25', '2024-01-03 13:14:25', NULL, 20.00, 5),
(90, '202d7096-1403-4e96-88aa-92eae1c68139', 'wild-wolf-liquid-polish', 'Wild Wolf liquid polish', 'Wild Wolf liquid polish', '8690628411030', 14.00, 0.00, 13, 1, 'mockup.png', '2024-01-03 15:46:16', '2024-01-03 15:46:16', NULL, 12.00, 3),
(91, '9a7b1877-f748-4ea2-ba05-97b2a6b22f2d', 'palc-shoe-polish', 'Palc Shoe Polish', 'Palc Shoe Polish', '8411250013078', 14.00, 0.00, 13, 1, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-03 15:47:31', '2024-01-03 15:47:31', NULL, 12.00, 2),
(92, '3cb424e4-dcef-454e-aa32-630bd476e7b7', 'miki-liquid-shoe-black', 'Miki liquid shoe black', 'Miki liquid shoe black', '0979', 9.00, 0.00, 13, 4, 'mockup.png', '2024-01-03 15:48:54', '2024-01-03 15:48:54', NULL, 8.00, 3),
(93, '0e801948-6c52-41e2-831e-4faf73014fca', 'lude-shoe-polish', 'Lude shoe polish', 'Lude shoe polish', '6901997605367', 9.00, 0.00, 13, 10, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-03 15:52:10', '2024-01-03 15:52:10', NULL, 7.00, 3),
(94, 'eca8c8fc-98a8-4e24-a80a-e44e4639bc32', 'sasso-insecticide-spray', 'Sasso insecticide spray', 'Sasso insecticide spray', '6034000026016', 30.00, 0.00, 12, 1, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-03 15:54:34', '2024-01-03 15:54:34', NULL, 28.00, 2),
(95, 'b0894fcd-911e-4345-98b2-d82ba5ec74ae', 'out-insecticide', 'Out insecticide', 'Out insecticide', '6925419099992', 32.00, 0.00, 12, 1, 'mockup.png', '2024-01-03 15:55:50', '2024-01-03 15:55:50', NULL, 30.00, 2),
(96, 'edf11bed-be7c-4956-a88c-8e793f1e8d4a', 'fatala-aerosol-insecticide', 'Fatala Aerosol Insecticide', 'Fatala Aerosol Insecticide', '6970439911014', 29.00, 0.00, 12, 2, 'IMG-20220222-WA0023.jpg', '2024-01-03 15:58:53', '2024-01-03 15:58:53', NULL, 27.00, 2),
(97, '1244de59-1405-4310-9db7-47b911e59b90', 'pepsodent-123-140g', 'Pepsodent 123 - 140g', 'Pepsodent 123 - 140g', '8934839125400', 17.00, 0.00, 10, 12, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-03 16:02:06', '2024-01-03 16:02:06', NULL, 15.00, 5),
(98, '502c4ad0-da28-4f9f-beee-d9b9dbcf2429', 'pepsodent-herbal-140g', 'Pepsodent Herbal - 140g', 'Pepsodent Herbal - 140g', '8934839126452', 15.00, 0.00, 10, 5, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-03 16:03:10', '2024-01-03 16:03:10', NULL, 13.00, 5),
(99, '4a60f3f8-e872-4df2-8c65-b1fe099c2778', 'kel-charcoal-tooth-paste-150g', 'Kel charcoal tooth paste 150g', 'Kel charcoal tooth paste 150g', '6034000026245', 20.00, 0.00, 10, 4, 'mockup.png', '2024-01-03 16:04:50', '2024-01-03 16:04:50', NULL, 18.00, 4),
(100, 'be765ec1-68b3-4a40-aede-f19ef2edaa59', 'closeop-eucalyptus-mint-140g', 'CloseUp Eucalyptus Mint 140g', 'CloseOp Eucalyptus Mint 140g', '8934839126247', 18.00, 0.00, 10, 4, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-03 16:08:21', '2024-01-03 16:29:08', NULL, 16.00, 4),
(101, '5c7d480d-97a7-4a30-add6-0792284de640', 'closeop-everfresh-140g', 'CloseUp Everfresh 140g', 'CloseOp Everfresh 140g', '8934839126278', 18.00, 0.00, 10, 6, 'mockup.png', '2024-01-03 16:09:42', '2024-01-03 16:28:54', NULL, 16.00, 4),
(102, '5f85c463-3ba9-43f7-aed5-5cf87ea45c67', 'charlie-toothpaste', 'Charlie Toothpaste', 'Charlie Toothpaste', '4891338000048', 5.00, 0.00, 10, 15, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-03 16:12:03', '2024-01-03 16:12:03', NULL, 4.00, 4),
(103, '93e6b1f7-e666-4269-830e-96bed6175295', 'colgate-charcoal-120g', 'Colgate Charcoal 120g', 'Colgate Charcoal 120g', '8718951350885', 18.00, 0.00, 10, 4, 'IMG-20220222-WA0023.jpg', '2024-01-03 16:13:38', '2024-01-03 16:13:38', NULL, 16.00, 4),
(104, '1d152aa2-046f-4dd1-acf4-44a454882af1', 'angola-toothpaste-150g', 'Angola toothpaste 150g', 'Angola toothpaste 150g', '890100911208', 9.00, 0.00, 10, 9, 'mockup.png', '2024-01-03 16:15:17', '2024-01-03 16:15:17', NULL, 7.00, 4),
(105, '1d158460-035b-4b4e-8fd4-c9c3149371eb', 't-guard-toothpaste-140g', 'T-Guard toothpaste 140g', 'T-Guard toothpaste 140g', '6954574930109', 9.00, 0.00, 10, 5, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-03 16:21:38', '2024-01-03 16:21:38', NULL, 7.00, 4),
(106, 'b3b7ee63-43de-404d-b045-141c8dfbbe29', 'closeup-everfresh-60g', 'CloseUp Everfresh 60g', 'CloseUp Everfresh 60g', '8934839126285', 8.00, 0.00, 10, 10, 'mockup.png', '2024-01-03 16:23:08', '2024-01-03 16:23:08', NULL, 7.00, 4),
(107, '7d436d15-6dc9-48d1-9f1b-a318e7b28532', 'colgate-herbal-140g', 'Colgate Herbal 140g', 'Colgate Herbal 140g', '6920354817823', 15.00, 0.00, 10, 8, 'IMG-20220222-WA0023.jpg', '2024-01-03 16:30:03', '2024-01-03 16:30:03', NULL, 13.00, 4),
(108, 'b3c61178-b025-4cbe-8f4a-20524ac956b4', 'kel-360-150g', 'Kel 360 150g', 'Kel 360 150g', '6034000026221', 19.00, 0.00, 10, 7, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-03 16:31:09', '2024-01-03 16:31:09', NULL, 17.00, 4),
(109, '5cc70d49-0456-45f8-bfed-9d5c38441dc1', 'quick-shine', 'Quick Shine', 'Quick Shine', '6952060266046', 9.00, 0.00, 13, 6, 'mockup.png', '2024-01-03 16:32:23', '2024-01-09 17:53:10', NULL, 7.00, 2),
(110, 'c631db38-4ddb-4e40-a4a0-fbca65579265', 'kel-kids-75g', 'Kel Kids 75g', 'Kel Kids 75g', '6034000026269', 12.00, 0.00, 10, 5, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-03 16:34:16', '2024-01-03 16:34:16', NULL, 11.00, 4),
(111, '7fd31975-bf3e-4b3f-9729-2f45af3bd52c', 'nivea-deodorant-spray-150ml', 'Nivea deodorant spray 150mL', 'Nivea deodorant spray 150mL', '4005900087843', 40.00, 0.00, 11, 3, 'mockup.png', '2024-01-03 16:39:39', '2024-01-03 16:39:39', NULL, 38.00, 4),
(112, '22736949-c8bb-4d09-97a2-41ed92586c0e', 'nivea-deodorant-spray-150ml-quick-dry', 'Nivea deodorant spray 150mL - quick dry', 'Nivea deodorant spray 150mL - quick dry', '4005900098238', 40.00, 0.00, 11, 1, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-03 16:40:40', '2024-01-03 16:40:40', NULL, 38.00, 2),
(113, '4cf7cd1e-6114-47ac-b18a-8decf0679e5c', 'sweet-heart-roll-on-45ml', 'Sweet Heart Roll On 45mL', 'Sweet Heart Roll On 45mL', '8853204300139', 12.00, 0.00, 11, 5, 'IMG-20220222-WA0023.jpg', '2024-01-03 16:42:49', '2024-01-03 16:42:49', NULL, 11.00, 4),
(114, '6890483d-4272-43f2-af33-5a4d50ee6861', 'nivea-men-deep-dry-clean-50ml', 'Nivea Men Deep Dry & Clean 50mL', 'Nivea Men Deep Dry & Clean 50mL', '4005900663863', 26.00, 0.00, 11, 1, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-03 16:43:59', '2024-01-03 16:43:59', NULL, 24.00, 4),
(115, 'a8c95d42-11b3-4a74-94ef-fc742fcb8f8d', 'power-house-platinum-extreme-50ml', 'Power House Platinum Extreme 50mL', 'Power House Platinum Extreme 50mL', '616762001072', 18.00, 0.00, 11, 1, 'IMG-20220222-WA0023.jpg', '2024-01-03 16:45:57', '2024-01-03 16:45:57', NULL, 17.00, 4),
(116, '69026af4-30fa-4805-9558-bad111238190', 'safari-roll-on-45-ml', 'Safari Roll On 45 mL', 'Safari Roll On 45 mL', '8853204300030', 12.00, 0.00, 11, 1, 'mockup.png', '2024-01-03 16:47:02', '2024-01-03 16:47:02', NULL, 11.00, 4),
(117, 'ad6dd15c-abaf-4e17-a7b6-82c2b1fc11c3', 'dove-go-fresh', 'Dove go fresh', 'Dove go fresh', '8717644308998', 34.00, 0.00, 11, 2, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-03 16:48:34', '2024-01-03 16:48:34', NULL, 32.00, 4),
(118, '62b0118e-c393-41ad-93d9-0b7209d52737', 'queen-elzabeth-cocoa-butter-hand-and-body-lotion-small-250ml', 'Queen Elzabeth Cocoa Butter hand and body lotion small 250ml', 'Queen Elzabeth Cocoa Butter hand and body lotion small 250ml', '6186000077052', 12.00, 0.00, 11, 2, 'IMG-20220222-WA0023.jpg', '2024-01-03 16:50:25', '2024-01-03 16:50:25', NULL, 11.00, 4),
(119, '14e126c0-cb1f-4742-ad4b-08a373245d59', 'queen-elzabeth-cocoa-butter-hand-and-body-lotion-big-400ml', 'Queen Elzabeth Cocoa Butter hand and body lotion big 400ml', 'Queen Elzabeth Cocoa Butter hand and body lotion big 400ml', '6186000077045', 18.00, 0.00, 11, 6, 'mockup.png', '2024-01-03 16:51:36', '2024-01-03 16:51:36', NULL, 17.00, 4),
(120, '5531955e-7b03-4808-9afc-d36c1aca62ae', 'queen-elzabeth-cocoa-butter-body-and-hair-125ml', 'Queen Elzabeth Cocoa Butter body and hair  125ml', 'Queen Elzabeth Cocoa Butter body and hair  125ml', '6186000077601', 14.00, 0.00, 11, 3, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-03 16:53:07', '2024-01-03 16:53:07', NULL, 12.00, 4),
(121, '6b82977a-1dde-4570-b803-ef727bdefefc', 'queen-elzabeth-cocoa-butter-body-and-hand-cream-500ml', 'Queen Elzabeth Cocoa Butter body and hand cream  500ml', 'Queen Elzabeth Cocoa Butter body and hand cream  500ml', '6186000077014', 28.00, 0.00, 11, 5, 'mockup.png', '2024-01-03 16:54:10', '2024-01-03 16:54:10', NULL, 26.00, 4),
(122, 'f597a68a-128d-4ccc-813f-e92dd1498efc', 'eversheen-hand-and-body-lotion-250ml', 'Eversheen hand and body lotion 250ml', 'Eversheen hand and body lotion 250ml', '6186000077427', 15.00, 0.00, 11, 2, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-03 16:55:28', '2024-01-03 16:55:28', NULL, 12.00, 4),
(123, 'e2fb4d5d-4a18-4017-93bc-11c165686aa4', 'eversheen-cream-big-250ml', 'Eversheen cream big 250ml', 'Eversheen cream big 250ml', '0978', 26.00, 0.00, 11, 3, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-03 16:57:32', '2024-01-03 16:57:32', NULL, 24.00, 4),
(124, '302dcffb-c5ba-4fe3-b3fa-57bb489f23f4', 'eversheen-cream-small-120ml', 'Eversheen cream small 120ml', 'Eversheen cream small 120ml', '0977', 7.00, 0.00, 11, 7, 'IMG-20220222-WA0023.jpg', '2024-01-03 16:58:28', '2024-01-03 16:58:28', NULL, 6.00, 4),
(125, '7fc18f2e-e0fd-417d-bcd6-5f56faa77fdb', 'rasta-cool-120ml', 'Rasta Cool 120ml', 'Rasta Cool 120ml', '0976', 12.00, 0.00, 11, 1, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-03 16:59:40', '2024-01-03 16:59:40', NULL, 11.00, 4),
(126, 'd7300606-6135-45ff-aae3-58af99e78faf', 'propa-lady-panty-liner-24-minty-liners', 'Propa Lady Panty Liner 24 minty liners', 'Propa Lady Panty Liner 24 minty liners', '6921270345186', 12.00, 0.00, 8, 1, 'mockup.png', '2024-01-03 17:02:42', '2024-01-03 17:02:42', NULL, 10.00, 5),
(127, 'ba6d8a44-15ea-42bb-8044-81b329c2752f', 'jolie-dame-pretty-lady-panty-liner-30pcs', 'Jolie Dame Pretty Lady Panty Liner 30pcs', 'Jolie Dame Pretty Lady Panty Liner', '6036000033391', 12.00, 0.00, 8, 3, 'IMG-20220222-WA0023.jpg', '2024-01-03 17:04:27', '2024-01-03 17:04:27', NULL, 10.00, 4),
(128, '7b233763-8fc0-4989-bcc2-19bf6d8d7507', 'propa-lady-max-sanitary-pads', 'Propa Lady Max Sanitary pads', 'Propa Lady Max Sanitary pads', '6921270345360', 18.00, 0.00, 8, 1, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-03 17:06:17', '2024-01-03 17:06:17', NULL, 17.00, 4),
(129, 'aa3a9ea5-9102-4909-93e8-5065181ac536', 'propa-lady-sanitary-pads', 'Propa Lady  Sanitary pads', 'Propa Lady  Sanitary pads', '6921270345186-1', 17.00, 0.00, 8, 7, 'mockup.png', '2024-01-03 17:10:47', '2024-01-03 17:10:47', NULL, 16.00, 4),
(130, 'cb8ddfba-7af5-424d-a2bd-c2fabacb8143', 'yazz-sanitary-pads', 'Yazz sanitary pads', 'Yazz sanitary pads', '6971044950306', 16.00, 0.00, 8, 22, 'IMG-20220222-WA0023.jpg', '2024-01-03 17:13:34', '2024-01-03 17:18:52', NULL, 15.00, 4),
(131, 'f8a8ba48-89d9-4cb8-b71f-4c06cb914c80', 'yazz-sanitary-pads-extra-long-minty', 'Yazz sanitary pads extra long minty', 'Yazz sanitary pads extra long minty', '6972981405461', 17.00, 0.00, 8, 5, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-03 17:14:51', '2024-01-03 17:19:05', NULL, 15.00, 4),
(132, '7fd5bf7c-d410-41a1-bd03-94570fe246fd', 'next-scret-sanitary-pad', 'Next Scret Sanitary pad', 'Next Scret Sanitary pad', '6955838216502', 8.00, 0.00, 8, 12, 'mockup.png', '2024-01-03 17:16:12', '2024-01-03 17:16:12', NULL, 7.00, 4),
(133, '50cb8847-5c55-40cd-9fa8-2083e56370b7', 'softcare-sanitary-pad', 'Softcare sanitary pad', 'Softcare sanitary pad', '6033000410726', 14.00, 0.00, 8, 14, 'IMG-20220222-WA0023.jpg', '2024-01-03 17:18:25', '2024-01-03 17:18:25', NULL, 13.00, 4),
(134, '1c14c52f-9780-44f2-9f0e-aa4f15645e92', 'softcare-a-extra-long', 'Softcare a+ extra long', 'Softcare a+ extra long', '6033000411280', 16.00, 0.00, 8, 6, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-03 17:25:31', '2024-01-03 17:25:31', NULL, 15.00, 4),
(135, '99690f5c-3221-450a-8e8a-3072538a3212', 'medisoft-90g', 'MediSoft 90g', 'MediSoft 90g', '8992929130215', 7.00, 0.00, 3, 28, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-03 17:33:34', '2024-01-03 17:33:34', NULL, 5.00, 5),
(136, '95caa805-08c4-4aad-b1ab-ebaf0343f6f3', 'dettol-250ml', 'Dettol 250ml', 'Dettol 250ml', '6161100950153', 28.00, 0.00, 17, 2, 'mockup.png', '2024-01-03 17:36:11', '2024-01-03 17:36:11', NULL, 27.00, 4),
(137, '000f58e3-59c0-4fc0-a4e8-e6267d9cc4b3', 'savlon-250ml', 'Savlon 250ml', 'Savlon 250ml', '6003001000547', 33.00, 0.00, 17, 1, 'IMG-20220222-WA0023.jpg', '2024-01-03 17:37:33', '2024-01-03 17:37:33', NULL, 32.00, 4),
(138, 'd9648653-a60d-4f03-b1f5-55c75dce2511', 'camel', 'Camel', 'Camel', '6033000100184', 18.00, 0.00, 17, 1, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-03 17:39:33', '2024-01-03 17:39:33', NULL, 17.00, 3),
(139, 'daaf9b3b-13c6-4c76-a0e0-82ebf7835e66', 'supa-santi-80pcs-wipes', 'Supa Santi 80pcs Wipes', 'Supa Santi 80pcs Wipes', '6921993406843', 22.00, 0.00, 9, 1, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-03 17:45:34', '2024-01-03 17:45:34', NULL, 21.00, 4),
(140, '20db8a49-bc5b-4100-bc00-16b5fae49da1', 'baby-wipes-comfortable', 'Baby wipes comfortable', 'Baby wipes comfortable', '6970098690336', 18.00, 0.00, 9, 4, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-03 17:47:09', '2024-01-03 17:47:09', NULL, 17.00, 4),
(141, '2bcde833-2883-44c0-a02f-2b4f6fefdfab', 'cussons-baby-wipes', 'Cussons baby wipes', 'Cussons baby wipes', '6151100310941', 22.00, 0.00, 9, 2, 'IMG-20220222-WA0023.jpg', '2024-01-03 17:48:16', '2024-01-03 17:48:16', NULL, 21.00, 4),
(142, '87d7349b-a81d-40d1-a9ec-4d06ab7b2095', 'softcare-wet-wipes', 'Softcare wet wipes', 'Softcare wet wipes', '6033000410689', 12.00, 0.00, 9, 22, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-03 17:50:31', '2024-01-03 17:50:31', NULL, 11.00, 4),
(143, 'b61fda21-5b4b-477a-86c6-80603f45c15e', 'softcare-baby-wipes-big', 'Softcare baby wipes big', 'Softcare baby wipes big', '6033000410498', 22.00, 0.00, 9, 10, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-03 17:52:34', '2024-01-03 17:52:34', NULL, 21.00, 4),
(144, '686f9c3a-3e9f-41f8-9c41-3cd803a69b77', 'mok-400g', 'MOK 400g', 'MOK 400g', '6030057220797', 8.00, 0.00, 3, 5, 'mockup.png', '2024-01-03 17:55:00', '2024-01-03 17:55:00', NULL, 7.00, 4),
(145, '54a87701-33b6-416f-a8e3-691df2d4f8c3', 'oro-detergent-powder-35kg', 'Oro Detergent powder 3.5kg', 'Oro Detergent powder 3.5kg', '6034000491166', 48.00, 0.00, 3, 6, 'IMG-20220222-WA0023.jpg', '2024-01-03 17:59:08', '2024-01-03 17:59:08', NULL, 47.00, 4),
(146, '4276aff9-cfa0-4c4d-ae7b-368ee859d192', 'praise-t-roll-bag', 'Praise T-Roll Bag', 'Praise T-Roll', '6036000024207-1', 22.00, 0.00, 7, 4, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-03 18:02:50', '2024-01-03 18:04:05', NULL, 21.00, 5),
(147, 'a55995b8-d53c-4cca-b752-72ad8ed3f6e4', 'praise-t-roll-single', 'Praise T-Roll - single', 'Praise T-Roll - single', '6036000024207-2', 3.00, 0.00, 7, 40, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-03 18:03:51', '2024-01-03 18:03:51', NULL, 2.00, 5),
(148, 'a441e10d-2f89-4b06-a712-5c0a4357d0f0', 'kol-tissue', 'KOL Tissue', 'KOL Tissue', '0975', 5.00, 0.00, 7, 20, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-03 18:06:48', '2024-01-03 18:06:48', NULL, 4.00, 4),
(149, '4b65bdb8-d458-445e-b6e6-38232e0495f6', 'shinefeel-t-roll-pack', 'ShineFeel T- Roll pack', 'ShineFeel T- Roll pack', '6036000024207 - 3', 23.00, 0.00, 7, 2, 'mockup.png', '2024-01-03 18:09:30', '2024-01-03 18:09:30', NULL, 22.00, 3),
(150, '9de4418e-2060-4f39-a5ab-b5dbfe0b7419', 'shinefeel-t-roll-single', 'ShineFeel T- Roll single', 'ShineFeel T- Roll single', '6036000024207 - 4', 3.00, 0.00, 7, 9, 'IMG-20220222-WA0023.jpg', '2024-01-03 18:10:52', '2024-01-03 18:10:52', NULL, 2.00, 5),
(151, '66230215-ce7d-418b-8e7e-695ea82ae5bf', 'kol-t-roll', 'KOL T-roll', 'KOL T-roll', '0974', 40.00, 0.00, 7, 5, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-03 18:12:22', '2024-01-03 18:12:22', NULL, 38.00, 4),
(152, '9346ab65-a854-4344-8985-c438a3dea180', 'may-t-roll', 'May T-roll', 'May T-roll', '0973', 2.00, 0.00, 7, 26, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-03 18:17:44', '2024-01-03 18:17:44', NULL, 3.00, 5),
(153, '69e0a74d-c00f-4598-9483-8eb9de5a18b6', 'wippy-jumbo-towel', 'Wippy Jumbo towel', 'Wippy Jumbo towel', '6036000024269', 14.00, 0.00, 7, 4, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-03 18:21:21', '2024-01-03 18:21:21', NULL, 13.00, 4),
(154, '47f3ce03-a8a2-4955-ba35-1572858e19f2', 'flora-joy-tissue', 'Flora Joy Tissue', 'Flora Joy Tissue', '6033000230225', 14.00, 0.00, 7, 6, 'mockup.png', '2024-01-03 18:23:16', '2024-01-03 18:23:16', NULL, 13.00, 4),
(155, 'ac58bf78-a3a8-4b6c-819b-87aa0476d1b4', 'nestle-milo-sachet-20g', 'Nestle Milo sachet 20g', 'Nestle Milo sachet 20g', '6033000087973', 2.00, 0.00, 5, 60, 'IMG-20220222-WA0023.jpg', '2024-01-08 14:06:46', '2024-01-08 14:06:46', NULL, 2.00, 20),
(156, '23c29d00-54d6-450c-a623-c8ef5172e487', 'cowbell-coffee-cafe-35g', 'Cowbell Coffee Cafe 35g', 'Cowbell Coffee Cafe 35g', '6008155002027', 4.00, 0.00, 16, 14, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-08 14:08:52', '2024-01-08 14:08:52', NULL, 3.00, 5),
(157, 'eb951819-ae86-4497-8b6e-883b41e3dde8', 'nescafe-original-3-in-1-35g-sachet', 'Nescafe original 3 in 1 35g sachet', 'Nescafe original 3 in 1 35g sachet', '6033000087256', 4.00, 0.00, 5, 7, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-08 14:10:40', '2024-01-08 14:10:40', NULL, 3.00, 5),
(158, '734bdbf5-d49d-40a9-bce3-abba4d4a7214', 'nestle-cerelac-50g-sachet', 'Nestle Cerelac 50g sachet', 'Nestle Cerelac 50g sachet', '6033000086815', 5.00, 0.00, 16, 95, 'mockup.png', '2024-01-08 14:13:37', '2024-01-08 14:13:37', NULL, 4.00, 20),
(159, '9d3eba11-4de2-4349-9c3e-37ba89845777', 'yumvita-rice-50g-sachet', 'Yumvita Rice 50g sachet', 'Yumvita Rice 50g sachet', '6008155009354', 5.00, 0.00, 16, 5, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-08 14:17:24', '2024-01-08 14:17:24', NULL, 4.00, 5),
(160, '271fa1b9-021f-4f3c-9081-72916d9ed977', 'yumvita-maize-wheat-50g-sachet', 'Yumvita Maize & Wheat 50g sachet', 'Yumvita Maize & Wheat 50g sachet', '6008155009521', 5.00, 0.00, 16, 7, 'mockup.png', '2024-01-08 14:18:49', '2024-01-08 14:18:49', NULL, 4.00, 5),
(161, 'fcee16a4-997a-448d-b4ec-345ec8b98965', 'yumvita-wheat-50g-sachet', 'Yumvita Wheat 50g sachet', 'Yumvita Wheat 50g sachet', '6008155009545', 5.00, 0.00, 16, 7, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-08 14:20:43', '2024-01-08 14:20:43', NULL, 4.00, 5),
(162, '3d955bf1-001e-444f-9aac-724bfc353bd9', 'top-choco-chocolate-spread-18g', 'Top choco chocolate spread 18g', 'Top choco chocolate spread 18g', '6033000230232', 1.00, 0.00, 16, 79, 'IMG-20220222-WA0023.jpg', '2024-01-08 14:27:09', '2024-01-08 14:27:09', NULL, 1.00, 30),
(163, '8caa3f0b-59af-4396-8b56-875c54975db9', 'carnation-tea-creamer-29g', 'Carnation Tea Creamer - 29g', 'Carnation Tea Creamer - 29g', '6033000086662', 3.00, 0.00, 16, 46, 'mockup.png', '2024-01-08 14:34:51', '2024-01-08 14:34:51', NULL, 2.00, 5),
(164, '8091d938-fa6f-4a92-9600-68b3988dd022', 'miksi-chocolate-sachet-40g', 'Miksi Chocolate sachet 40g', 'Miksi Chocolate sachet 40g', '6008155007534', 4.00, 0.00, 16, 40, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-08 14:37:48', '2024-01-08 14:37:48', NULL, 3.00, 5),
(165, 'f27ead65-04f7-4eb8-a63e-360491f3a070', 'nestle-ideal-original-29g', 'Nestle Ideal Original 29g', 'Nestle Ideal Original 29g', '6033000088116', 3.00, 0.00, 16, 60, 'mockup.png', '2024-01-08 14:41:10', '2024-01-08 14:41:10', NULL, 2.00, 20),
(166, '48c6058d-a4d7-432e-bc47-84e99fafe12a', 'nestle-nido-essentia-14g', 'Nestle Nido Essentia 14g', 'Nestle Nido Essentia 14g', '6033000086419', 2.00, 0.00, 16, 8, 'mockup.png', '2024-01-08 14:43:35', '2024-01-09 18:14:35', NULL, 2.00, 5),
(167, 'e3ed1329-1430-440c-adfc-e29b38e95d85', 'nestle-nido-essentia-23g', 'Nestle Nido Essentia 23g', 'Nestle Nido Essentia 23g', '6033000088321', 4.00, 0.00, 16, 48, 'IMG-20220222-WA0023.jpg', '2024-01-08 14:46:33', '2024-01-08 14:46:33', NULL, 3.00, 10),
(168, '9d8a27f2-4fd0-4407-b24f-3cff758b119c', 'pepsodent-12g-sachet', 'Pepsodent - 12g sachet', 'Pepsodent - 12g sachet', '6033000293961', 2.00, 0.00, 10, 59, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-08 14:48:04', '2024-01-08 14:50:26', NULL, 2.00, 6),
(169, '561bff0a-9785-47b0-b2d7-a5317716a436', 'milo-all-in-one-37g', 'Milo All in one - 37g', 'Milo All in one - 37g', '6033000088246', 4.00, 0.00, 16, 64, 'mockup.png', '2024-01-08 14:50:14', '2024-01-08 14:50:14', NULL, 3.00, 5),
(170, '47152799-10a1-4661-bada-29445779a003', 'kiki-t-roll', 'Kiki T-roll', 'Kiki T-roll', '6036000024214', 3.00, 0.00, 7, 60, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-08 14:57:34', '2024-01-08 14:57:34', NULL, 2.00, 5),
(171, '62219fae-164e-43da-8a97-d54f356588f6', 'wippy-tissue-napkins', 'Wippy Tissue Napkins', 'Wippy Tissue Napkins', '6036000024252', 21.00, 0.00, 7, 15, 'mockup.png', '2024-01-09 17:31:40', '2024-01-09 17:31:40', NULL, 20.00, 5),
(172, 'b6e8408b-9bfa-48a9-ba7d-3de89c6d5b9f', 'flora-tissue', 'Flora Tissue', 'Flora Tissue', '0972', 2.00, 0.00, 7, 40, 'IMG-20220222-WA0023.jpg', '2024-01-09 17:33:29', '2024-01-09 17:33:29', NULL, 2.00, 5),
(173, 'a8c90b06-9a3c-4a0a-97d5-cb62a51fef68', 'lipton', 'Lipton', 'Lipton', '8720608603145', 15.00, 0.00, 16, 4, 'mockup.png', '2024-01-09 17:35:34', '2024-01-09 17:35:34', NULL, 14.00, 5),
(174, '916715e5-b72f-445d-a942-9a3601ec3024', 'pepsodent-strawberry-45g', 'Pepsodent Strawberry - 45g', 'Pepsodent Strawberry - 45g', '8934839125226', 10.00, 0.00, 10, 6, 'IMG-20220222-WA0023.jpg', '2024-01-09 17:36:52', '2024-01-09 17:36:52', NULL, 10.00, 5),
(175, '4f408b2c-eddd-40c3-9779-c71690058213', 'pepsodent-orange-45g', 'Pepsodent Orange - 45g', 'Pepsodent Orange - 45g', '8934839125219', 10.00, 0.00, 10, 6, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-09 17:37:50', '2024-01-09 17:37:50', NULL, 10.00, 5),
(176, 'c804d612-9e2d-49fa-b4a5-2079e51dc19f', 'envelope-white', 'Envelope -white', 'Envelope -white', '8991389891025', 15.00, 0.00, 9, 6, 'mockup.png', '2024-01-09 17:38:59', '2024-01-09 17:38:59', NULL, 15.00, 5),
(177, '13402522-1cd4-4fa1-9493-9da58b156b97', 'carbolic-soap', 'Carbolic Soap', 'Carbolic Soap', '0971', 5.00, 0.00, 3, 72, 'IMG-20220222-WA0023.jpg', '2024-01-09 17:40:01', '2024-01-09 17:40:01', NULL, 5.00, 6),
(178, '37a0203e-e5cf-494b-aa77-7b843361ce23', 'lord-shaving-stick', 'Lord Shaving stick', 'Lord Shaving stick', '6222001551495', 7.00, 0.00, 11, 5, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-09 17:40:51', '2024-01-09 17:40:51', NULL, 7.00, 5),
(179, '2db82ba2-7c34-42cf-83d6-b9224dcef14f', 'yazz-toothbrush', 'Yazz Toothbrush', 'Yazz Toothbrush', '670875891371', 4.00, 0.00, 10, 13, 'mockup.png', '2024-01-09 17:42:54', '2024-01-09 17:42:54', NULL, 4.00, 5),
(180, '6f74c47f-94ef-45cb-aa0e-7cca2e1d6e4c', 'lilyrose-toothbrush', 'Lilyrose Toothbrush', 'Lilyrose Toothbrush', '6926160704036', 6.00, 0.00, 10, 12, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-09 17:43:39', '2024-01-09 17:43:39', NULL, 6.00, 5),
(181, '3c5a6160-0b8f-43b2-ae8f-b2e6d5b5e0a6', 'colgrathe-toothbrush', 'Colgrathe Toothbrush', 'Colgrathe Toothbrush', '6001067007289', 6.00, 0.00, 10, 10, 'mockup.png', '2024-01-09 17:44:56', '2024-01-09 17:44:56', NULL, 6.00, 6),
(182, '90485109-be88-42a5-9286-c85dd4db9ed9', 'vip-toothbrush', 'VIP Toothbrush', 'VIP Toothbrush', '6930983903019', 3.00, 0.00, 10, 12, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-09 17:45:43', '2024-01-09 17:45:43', NULL, 3.00, 6),
(183, '4f53a68d-6f04-44e3-b451-2127d0bca691', 'executive-toothbrush', 'Executive Toothbrush', 'Executive Toothbrush', '6939727603673', 5.00, 0.00, 10, 12, 'mockup.png', '2024-01-09 17:46:42', '2024-01-09 17:46:42', NULL, 5.00, 5),
(184, 'c04423bc-ee63-4308-8052-ed6aac71fd2a', 'pepsodent-brush', 'Pepsodent Brush', 'Pepsodent Brush', '6229060356009', 4.00, 0.00, 10, 12, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-09 17:48:30', '2024-01-09 17:48:30', NULL, 4.00, 5),
(185, 'be964bd2-c61a-4e2e-9ff3-0b06e226d8f1', 'air-freshner', 'Air Freshner', 'Air Freshner', '0970', 6.00, 0.00, 12, 6, 'mockup.png', '2024-01-09 17:50:16', '2024-01-09 17:50:16', NULL, 6.00, 5),
(186, '9c03b3d7-837c-4fde-b409-449cb09bfbfa', 'quick-shine', 'BIC shaving stick', 'BIC shaving stick', '3086125705010', 14.00, 0.00, 13, 2, 'mockup.png', '2024-01-09 17:53:31', '2024-01-09 17:55:06', NULL, 14.00, 15),
(187, '31ca73c1-38e9-4105-8543-b0b75a592c4f', 'matches', 'Matches', 'Matches', '0969', 5.00, 0.00, 15, 100, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-09 17:58:05', '2024-01-09 17:58:05', NULL, 5.00, 10),
(188, 'df05d664-3728-4e8b-8c1d-bf105fdaef67', 'camel-big', 'Camel Big', 'Camel Big', '6033000100221', 17.00, 0.00, 17, 3, 'IMG-20220222-WA0023.jpg', '2024-01-09 18:00:19', '2024-01-09 18:00:19', NULL, 17.00, 3),
(189, '6a19d5ff-a3c4-4f0d-9697-609b97421fcf', 'heaven-insecticide', 'Heaven Insecticide', 'Heaven Insecticide', '6034000053623', 30.00, 0.00, 12, 2, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-09 18:01:56', '2024-01-09 18:01:56', NULL, 25.00, 4),
(190, '3d0fa055-1dd2-46cd-a9fe-18bba6f8a1f0', 'kill-it', 'Kill It', 'Kill It', '5015163001752', 30.00, 0.00, 12, 2, 'mockup.png', '2024-01-09 18:04:42', '2024-01-09 18:04:42', NULL, 30.00, 2),
(191, '1e9c783f-d0db-409c-9bcc-f8761675394e', 'kill-it', 'Kill It', 'Kill It', '5015163001752', 30.00, 0.00, 12, 2, 'mockup.png', '2024-01-09 18:04:42', '2024-01-09 18:05:32', NULL, 30.00, 2),
(192, 'ba4b9af9-cf44-414b-8c47-19b395fda264', 'powerzone', 'Powerzone', 'Powerzone', '6036000001918', 18.00, 0.00, 3, 4, 'IMG-20220222-WA0023.jpg', '2024-01-09 18:07:59', '2024-01-09 18:07:59', NULL, 18.00, 2),
(193, '2a522396-378a-4a09-9d04-71948f6f63ca', 'madar-zone', 'Madar Zone', 'Madar Zone', '6210290119762', 18.00, 0.00, 3, 4, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-09 18:10:14', '2024-01-09 18:10:14', NULL, 18.00, 4),
(194, '56155006-80d7-4c68-981d-566d97b545b2', 'non-diary-creamer', 'Non-Diary Creamer', 'Non-Diary Creamer', '6036000094309', 14.00, 0.00, 16, 7, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-09 18:11:55', '2024-01-09 18:11:55', NULL, 14.00, 7),
(195, '74d1edc8-ab5c-403e-92d7-623d644dcdc3', 'ocean-sardine', 'Ocean Sardine', 'Ocean Sardine', '6926095809257', 9.00, 0.00, 15, 10, 'mockup.png', '2024-01-09 18:16:39', '2024-01-09 18:16:39', NULL, 9.00, 5),
(196, 'bd8365ac-d224-4eb3-b7ce-b4ce546c9543', 'blue-band-small', 'Blue band small', 'Blue band small', '6034000482010', 7.00, 0.00, 16, 4, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-09 18:19:22', '2024-01-09 18:19:22', NULL, 7.00, 4),
(197, 'a8b294e5-ff93-4a71-a88f-5a184a9d1f15', 'blue-band-medium', 'Blue band medium', 'Blue band medium', '6034000482027', 12.00, 0.00, 15, 3, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-09 18:22:38', '2024-01-09 18:22:38', NULL, 12.00, 3),
(198, '472490ea-7811-4982-9ac6-bd47aab85dad', 'milo-sardine', 'Milo Sardine', 'Milo Sardine', '6111068000018', 12.00, 0.00, 15, 4, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-09 18:26:21', '2024-01-09 18:26:21', NULL, 12.00, 4),
(199, 'b73fc697-837a-4ac2-988a-984744310a24', 'ena-pa-mackerel', 'Ena Pa Mackerel', 'Ena Pa Mackerel', '8853112351919', 10.00, 0.00, 15, 4, 'mockup.png', '2024-01-09 18:29:00', '2024-01-09 18:29:00', NULL, 10.00, 4),
(200, '21c4112f-234d-485e-92c7-a4b9fa7f466e', 'hafer-oats-500g', 'Hafer Oats 500g', 'Hafer Oats 500g', '4001507111011', 15.00, 0.00, 15, 8, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-09 18:31:21', '2024-01-09 18:31:21', NULL, 15.00, 5),
(201, 'b5c898fd-3d2d-4d9c-a4ab-777591ae0166', 'jasper-medium', 'Jasper medium', 'Jasper medium', '6928830822088', 68.00, 0.00, 9, 2, 'IMG-20220222-WA0023.jpg', '2024-01-09 18:35:53', '2024-01-09 18:35:53', NULL, 68.00, 2),
(202, '3a396fc4-f0b3-4fae-89ad-d626fae447f8', 'faytex', 'FayTex', 'FayTex', '6036000087004', 15.00, 0.00, 8, 5, 'mockup.png', '2024-01-09 18:38:35', '2024-01-09 18:38:35', NULL, 15.00, 5),
(203, '378e750f-0ac6-408a-bdf9-14d170b7034c', 'carthy-sanitary-pad', 'Carthy sanitary pad', 'Carthy sanitary pad', '6928830823016', 25.00, 0.00, 8, 2, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-09 18:39:46', '2024-01-09 18:39:46', NULL, 25.00, 4),
(204, '5f2631cb-6c22-4505-a904-07c839e65d8a', 'onga-cube', 'Onga Cube', 'Onga Cube', '6008155019612', 1.00, 0.00, 15, 64, 'IMG-20220222-WA0023.jpg', '2024-01-09 18:42:11', '2024-01-09 18:42:11', NULL, 3.00, 6),
(205, '0945f4d3-8340-4ea0-adcc-65ac811ad083', 'colour-me', 'Colour Me', 'Colour Me', '025929124514', 24.00, 0.00, 11, 2, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-09 18:44:11', '2024-01-09 18:44:11', NULL, 24.00, 2),
(206, '356a636d-41c0-44bd-ae8e-37d8de8242c0', 'sugar-cubes', 'sugar cubes', 'sugar cubes', '0967', 16.00, 0.00, 15, 2, 'IMG-20220222-WA0023.jpg', '2024-01-09 18:44:59', '2024-01-09 18:44:59', NULL, 16.00, 4),
(207, '18c0c0d8-db83-417c-85ae-5986b482731c', 'power-house', 'Power House', 'Power house', '6001374063367', 18.00, 0.00, 11, 6, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-09 18:49:30', '2024-01-09 18:49:30', NULL, 12.00, 5);
INSERT INTO `products` (`id`, `uuid`, `slug`, `name`, `description`, `code`, `price`, `ppn`, `category_id`, `stock`, `image_name`, `created_at`, `updated_at`, `deleted_at`, `buy_price`, `restock_bal`) VALUES
(208, 'b435568c-02b5-4a58-874d-9154f7b1e395', 'my-dollar', 'My dollar', 'My dollar', '8853204304014', 12.00, 0.00, 11, 6, 'mockup.png', '2024-01-09 18:51:00', '2024-01-09 18:51:00', NULL, 12.00, 5),
(209, 'c35ad61a-5af3-496d-9ec6-29cf95fc9942', 'spring-flower', 'Spring Flower', 'Spring Flower', '8853204300092', 12.00, 0.00, 11, 4, 'IMG-20220222-WA0023.jpg', '2024-01-09 18:52:43', '2024-01-09 18:52:43', NULL, 12.00, 3),
(210, '383e6d40-c652-4b08-b201-e22b4d9cbbce', 'powerb-house-platinum-extreme', 'Powerb House Platinum Extreme', 'Powerb House Platinum Extreme', '616762001072-1', 18.00, 0.00, 11, 6, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-09 18:54:50', '2024-01-09 18:54:50', NULL, 18.00, 4),
(211, '02de0f69-fb5e-4b50-9f87-885cd5fb5cd6', 'tendrina-hand-and-body-complexion-lotion', 'Tendrina Hand and Body complexion lotion', 'Tendrina Hand and Body complexion lotion', '6186000077724', 14.00, 0.00, 11, 1, 'mockup.png', '2024-01-09 18:59:14', '2024-01-09 18:59:14', NULL, 14.00, 5),
(212, 'e1119363-a31f-487f-8228-97163fc97a8c', 'tendrina-complexion-cream-big', 'Tendrina Complexion Cream - big', 'Tendrina Complexion Cream', '6186000077076', 18.00, 0.00, 11, 1, 'IMG-20220222-WA0023.jpg', '2024-01-09 19:02:14', '2024-01-09 19:02:14', NULL, 18.00, 5),
(213, 'cbbd78a3-dfbe-454f-ba1e-66ba0c192eda', 'tendrina-complexion-cream-small', 'Tendrina Complexion Cream - small', 'Tendrina Complexion Cream - small', '6186000077083', 12.00, 0.00, 11, 2, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-09 19:03:22', '2024-01-09 19:03:22', NULL, 12.00, 5),
(214, '01978635-c1e8-4352-974f-7041ae0b29ce', 'verna-water-bottle-05l', 'Verna water bottle 0.5l', 'Verna water bottle 0.5l', '6034000252125', 2.00, 0.00, 16, 12, 'mockup.png', '2024-01-10 10:54:03', '2024-01-10 10:54:03', NULL, 2.00, 6),
(215, '468c7c47-54d3-482c-9786-fa97c4ffe824', 'slemfit-500ml-bottle-water', 'Slemfit 500ml Bottle water', 'Slemfit 500ml Bottle water', '6034000510003', 2.00, 0.00, 16, 12, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-10 10:54:57', '2024-01-10 10:54:57', NULL, 2.00, 5),
(216, '27f9373c-511e-4571-b283-55e88f7ca148', 'sunwatt-battery-aa', 'Sunwatt battery AA', 'Sunwatt battery AA', '0933', 2.00, 0.00, 18, 12, 'IMG-20220222-WA0023.jpg', '2024-01-10 10:58:35', '2024-01-10 10:58:35', NULL, 2.00, 5),
(217, 'ebc0c195-d834-48d1-ad98-8710aa9490fb', 'channel-rice-5kgs', 'Channel Rice 5kgs', 'Channel Rice 5kgs', '8936089964570', 78.00, 0.00, 14, 5, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-10 11:08:00', '2024-01-10 11:08:00', NULL, 78.00, 5),
(218, '0940b220-94d6-43aa-9982-f7c8b2ed783f', 'handkerchief', 'Handkerchief', 'Handkerchief', '0922', 5.00, 0.00, 7, 45, 'mockup.png', '2024-01-10 11:15:18', '2024-01-10 11:15:18', NULL, 5.00, 5);

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
(2, 'Godwin Boadi', 'aquacy@gmail.com', NULL, '$2y$12$MGeNO.hLqK2YGC4LMy2X8OuxUL44B0LCwySbPf9j89ewZk5F7I31e', NULL, '2019-11-22 20:29:12', '2023-12-30 16:47:51', 'aquacy', '07123123', 'Kasir12323', 'Kasir', 'IMG-20220222-WA0023.jpg'),
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

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
