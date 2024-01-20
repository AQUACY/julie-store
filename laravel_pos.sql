-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 02, 2024 at 10:47 PM
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

<<<<<<< HEAD
=======
INSERT INTO `categories` (`id`, `name`, `image_name`, `description`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Snacks', '6446d4c4-852e-42ec-b814-bcaaa1d0c5b0.jpeg', 'Range of snacks', 'snacks', '2019-11-22 20:54:05', '2023-12-28 01:37:55', NULL),
(3, 'Soaps', 'IMG-20220222-WA0023.jpg', 'Brands and list of soaps', 'soaps', '2024-01-01 16:09:05', '2024-01-01 16:09:05', NULL),
(4, 'Groceries', 'IMG-20220222-WA0023.jpg', 'Groceries - oil, sardines, indomie, spaghetti, tin-tomatoes', 'groceries', '2024-01-01 16:31:28', '2024-01-01 16:31:28', NULL),
-- (5, 'Beverages', 'IMG-20220222-WA0023.jpg', 'List of Beverages', 'beverages', '2024-01-01 16:32:01', '2024-01-01 16:32:01', NULL),
(6, 'Biscuit', 'IMG-20220222-WA0023.jpg', 'List of Biscuits', 'biscuit', '2024-01-01 16:32:14', '2024-01-01 16:32:14', NULL),
(7, 'Toiletries & Handkerchief', 'IMG-20220222-WA0023.jpg', 'List of T & H', 'toiletries-handkerchief', '2024-01-01 16:32:51', '2024-01-01 16:32:51', NULL),
(8, 'Pads', 'IMG-20220222-WA0023.jpg', 'List of Pads', 'pads', '2024-01-01 16:33:04', '2024-01-01 16:33:04', NULL),
(9, 'Pampers & Wipes', 'IMG-20220222-WA0023.jpg', 'List of Pampers & Wipes', 'pampers-b-wipes', '2024-01-01 16:33:27', '2024-01-01 16:33:27', NULL),
(10, 'Toothpast & Brush', 'IMG-20220222-WA0023.jpg', 'List of Toothpaste & Brush', 'toothpast-b-brush', '2024-01-01 16:34:03', '2024-01-01 16:34:03', NULL),
(11, 'Cosmetics', 'IMG-20220222-WA0023.jpg', 'List of Cosmetics', 'cosmetics', '2024-01-01 16:34:18', '2024-01-01 16:34:18', NULL),
(12, 'Insecticides', 'IMG-20220222-WA0023.jpg', 'List of Insecticides', 'insecticides', '2024-01-01 16:34:37', '2024-01-01 16:34:37', NULL),
(13, 'Polish', 'IMG-20220222-WA0023.jpg', 'List of Polish', 'polish', '2024-01-01 16:34:49', '2024-01-01 16:34:49', NULL),
(14, 'Rice', 'IMG-20220222-WA0023.jpg', 'List of Rice', 'rice', '2024-01-01 16:36:58', '2024-01-01 16:36:58', NULL),
(15, 'Groceries', 'IMG-20220222-WA0023.jpg', 'List of Groceries', 'groceries', '2024-01-01 16:54:48', '2024-01-01 16:54:48', NULL),
(16, 'Beverages', 'IMG-20220222-WA0023.jpg', 'Beverages', 'beverages', '2024-01-01 17:52:37', '2024-01-01 17:52:37', NULL);

>>>>>>> 939585d0b638130f00f341b68f8de8ddbf63054a
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
<<<<<<< HEAD
(1, 'Walk-in Customer', 'cust@gmail.com', '0813213215', 'LOGO TECHNOBRAIN FIX.png', 'Walk-in', 'Jl. SMEA 6', 'Jakarta Timur', 'Jakarta', '2019-11-22 23:56:02', '2019-11-22 23:56:02');
=======
(1, 'Walk-in Customer', 'cust@gmail.com', '0813213215', 'LOGO TECHNOBRAIN FIX.png', 'Walk-in', 'Walk_in Customer ', 'Walk_In', 'Walk_In', '2019-11-22 23:56:02', '2019-11-22 23:56:02'),
(2, 'Juliet Nakom', 'admins@gmail.com', '0249400987', 'fin.png', 'Walk-in', 'Jl. SMEA 6', 'Jakarta Timur', 'Jambi', '2019-11-22 23:57:12', '2023-12-29 12:00:31'),
(3, 'Godwin Boadi', 'godwinboadi@gmail.com', '08124123', 'Passport picture - Carrie2.jpg', 'Retail', 'Jl Provinsi', 'Asesewa, Upper Manya', 'undefined', '2019-11-23 18:23:41', '2023-12-29 11:29:44');

>>>>>>> 939585d0b638130f00f341b68f8de8ddbf63054a
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

<<<<<<< HEAD
-- --
-- -- Dumping data untuk tabel `orders`
-- --
=======
--
-- Dumping data for table `orders`
--
>>>>>>> 939585d0b638130f00f341b68f8de8ddbf63054a

-- INSERT INTO `orders` (`id`, `invoice`, `user_id`, `total`, `total_ppn`, `bayar`, `kembalian`, `payment_method_id`, `customer_id`, `created_at`, `updated_at`) VALUES
-- (1, 'f6fd4f20-1da4-4ae1-8ef6-60ec13fa2532', 1, 100000.00, 0, 150000.00, 45000.00, 1, 2, '2019-11-23 00:07:59', '2019-11-23 00:07:59'),
-- (2, 'a2bec555-b0a6-4a16-8619-7915c563bedb', 2, 100000.00, 0, 200000.00, 95000.00, 1, 1, '2019-11-23 00:42:10', '2019-11-23 00:42:10'),
-- (6, '6a383b64-e4ca-4459-b268-196a3a356634', 1, 105000.00, 0, 105000.00, 0.00, 1, 1, '2019-11-23 01:05:49', '2019-11-23 01:05:49'),
-- (7, 'b0291727-9239-4b19-b26b-1382c612e25d', 1, 210000.00, 0, 210000.00, 0.00, 1, 2, '2019-10-23 17:22:28', '2019-11-23 17:22:28'),
-- (8, '91dbcec9-24ff-4854-a3a7-bb505da87ac2', 1, 15000.00, 0, 6000.00, 0.00, 1, 2, '2019-11-23 17:27:17', '2019-11-23 17:27:17'),
-- (9, '1c079ebb-0185-4b80-ba72-30a8337d8382', 1, 106400.00, 5200, 200000.00, 93800.00, 1, 1, '2019-11-23 18:35:38', '2019-11-23 18:35:38'),
-- (10, 'e21fc837-809f-4590-9c6f-e53c646a4c93', 1, 15000.00, 1000, 6000.00, 0.00, 1, 3, '2019-11-23 19:15:34', '2019-11-23 19:15:34'),
-- (11, '837bffd0-54aa-4d9f-ae16-0deab199f2fa', 1, 105600.00, 5100, 150000.00, 44400.00, 1, 1, '2019-11-23 20:03:20', '2019-11-23 20:03:20'),
-- (12, '0253baaa-9779-4750-9f01-96d17bb0f8cf', 1, 8400.00, 700, 5000.00, 800.00, 1, 1, '2019-11-23 20:36:17', '2019-11-23 20:36:17'),
-- (13, '84aa5c04-c23d-49dd-98ac-3a7f29720fc5', 1, 8400.00, 700, 5000.00, 800.00, 1, 1, '2019-11-23 20:36:29', '2019-11-23 20:36:29'),
-- (14, '06b22488-a3ec-4d81-b41f-b697ceb92b06', 1, 1400.00, 200, 1200.00, 0.00, 1, 1, '2019-11-23 20:38:25', '2019-11-23 20:38:25'),
-- (15, 'd121b81e-c9ec-472b-9733-6b17346bf6a2', 2, 2400.00, 300, 2000.00, 200.00, 1, 1, '2019-11-23 20:43:59', '2019-11-23 20:43:59'),
-- (16, '103aa8a5-b5be-4df9-afbc-db040b4313e6', 1, 600.00, 100, 2000.00, 1400.00, 1, 2, '2019-11-23 21:31:47', '2019-11-23 21:31:47'),
-- (17, 'cfc69d37-2723-4a68-beaf-952c809102ba', 1, 50000.00, 2000, 12000.00, 0.00, 1, 1, '2019-11-24 02:43:13', '2019-11-24 02:43:13'),
<<<<<<< HEAD
-- (18, 'b3053d23-e96e-4ecc-9568-c72fb7f7c517', 3, 20400.00, 1200, 10000.00, 2800.00, 1, 3, '2020-02-08 01:01:21', '2020-02-08 01:01:21');
=======
-- (18, 'b3053d23-e96e-4ecc-9568-c72fb7f7c517', 3, 20400.00, 1200, 10000.00, 2800.00, 1, 3, '2020-02-08 01:01:21', '2020-02-08 01:01:21'),
-- (19, '75f5bd40-8aab-4865-bc50-1f0829be7fc5', 4, 43.26, 0.21, 42.00, 0.00, 1, 1, '2023-12-28 17:42:38', '2023-12-28 17:42:38'),
-- (20, '820829e0-d593-49d0-83b2-5b66db0b948f', 5, 25.75, 0.15, 25.00, 0.00, 1, 1, '2023-12-29 14:14:43', '2023-12-29 14:14:43'),
-- (21, '28d1f1ea-0629-4456-a3a9-58660e62af73', 5, 43.26, 0.96, 44.00, 0.74, 1, 1, '2023-12-29 15:52:03', '2023-12-29 15:52:03'),
-- (22, '41ae4b2f-dd85-46fd-96ff-a745e28f8f37', 5, 72.10, 0.21, 72.10, 0.00, 1, 3, '2023-12-30 14:42:10', '2023-12-30 14:42:10'),
-- (23, 'c9d201b1-49c7-4090-886c-e11cfef0ed71', 5, 72.10, 0.21, 72.10, 0.00, 1, 1, '2023-12-30 14:52:23', '2023-12-30 14:52:23'),
-- (24, '63894b91-2500-4b30-aec5-bfa73766c541', 5, 7.21, 0.21, 7.21, 0.00, 1, 1, '2023-12-30 16:45:20', '2023-12-30 16:45:21'),
-- (25, '0872d3d7-21bb-453e-a2c4-43c80c4cad38', 4, 12.00, 0, 12.00, 0.00, 1, 1, '2024-01-01 16:13:24', '2024-01-01 16:13:24'),
-- (26, '57d912e4-ccef-4384-b151-a92a0f0bcf25', 4, 108.00, 0, 108.00, 0.00, 1, 1, '2024-01-01 16:15:52', '2024-01-01 16:15:52'),
-- (27, '7260e4da-6137-43ad-9c6f-585421f9139d', 4, 36.05, 0.21, 37.00, 0.95, 1, 1, '2024-01-02 12:35:42', '2024-01-02 12:35:42');
>>>>>>> 939585d0b638130f00f341b68f8de8ddbf63054a

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
<<<<<<< HEAD
-- Dumping data untuk tabel `order_details`
=======
-- Dumping data for table `order_details`
>>>>>>> 939585d0b638130f00f341b68f8de8ddbf63054a
--

-- INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `price`, `subtotal`, `ppn`, `created_at`, `updated_at`) VALUES
-- (1, 1, 1, 1, 100000.00, 100000.00, 0.00, '2019-11-23 00:07:59', '2019-11-23 00:07:59'),
-- (2, 2, 1, 1, 100000.00, 100000.00, 0.00, '2019-11-23 00:42:10', '2019-11-23 00:42:10'),
-- (3, 6, 1, 1, 105000.00, 105000.00, 5000.00, '2019-11-23 01:05:49', '2019-11-23 01:05:49'),
-- (4, 7, 1, 2, 105000.00, 210000.00, 5000.00, '2019-10-23 17:22:28', '2019-11-23 17:22:28'),
-- (5, 8, 2, 10, 1500.00, 15000.00, 1000.00, '2019-11-23 17:27:17', '2019-11-23 17:27:17'),
-- (6, 9, 1, 1, 105000.00, 105000.00, 5000.00, '2019-11-23 18:35:38', '2019-11-23 18:35:38'),
-- (7, 9, 2, 2, 700.00, 1400.00, 200.00, '2019-11-23 18:35:38', '2019-11-23 18:35:38'),
-- (8, 10, 2, 10, 1500.00, 15000.00, 1000.00, '2019-11-23 19:15:34', '2019-11-23 19:15:34'),
-- (9, 11, 1, 1, 105000.00, 105000.00, 5000.00, '2019-11-23 20:03:20', '2019-11-23 20:03:20'),
-- (10, 11, 2, 1, 600.00, 600.00, 100.00, '2019-11-23 20:03:20', '2019-11-23 20:03:20'),
-- (11, 12, 2, 7, 1200.00, 8400.00, 700.00, '2019-11-23 20:36:17', '2019-11-23 20:36:17'),
-- (12, 13, 2, 7, 1200.00, 8400.00, 700.00, '2019-11-23 20:36:29', '2019-11-23 20:36:29'),
-- (13, 14, 2, 2, 700.00, 1400.00, 200.00, '2019-11-23 20:38:25', '2019-11-23 20:38:25'),
-- (14, 15, 2, 3, 800.00, 2400.00, 300.00, '2019-11-23 20:43:59', '2019-11-23 20:43:59'),
-- (15, 16, 2, 1, 600.00, 600.00, 100.00, '2019-11-23 21:31:47', '2019-11-23 21:31:47'),
-- (16, 17, 2, 20, 2500.00, 50000.00, 2000.00, '2019-11-24 02:43:13', '2019-11-24 02:43:13'),
<<<<<<< HEAD
-- (17, 18, 2, 12, 1700.00, 20400.00, 1200.00, '2020-02-08 01:01:21', '2020-02-08 01:01:21');
=======
-- (17, 18, 2, 12, 1700.00, 20400.00, 1200.00, '2020-02-08 01:01:21', '2020-02-08 01:01:21'),
-- (18, 19, 3, 6, 7.21, 43.26, 0.21, '2023-12-28 17:42:38', '2023-12-28 17:42:38'),
-- (19, 20, 4, 5, 5.15, 25.75, 0.15, '2023-12-29 14:14:43', '2023-12-29 14:14:43'),
-- (20, 21, 4, 2, 10.30, 20.60, 0.30, '2023-12-29 15:52:03', '2023-12-29 15:52:03'),
-- (21, 21, 5, 1, 22.66, 22.66, 0.66, '2023-12-29 15:52:03', '2023-12-29 15:52:03'),
-- (22, 22, 7, 10, 7.21, 72.10, 0.21, '2023-12-30 14:42:10', '2023-12-30 14:42:10'),
-- (23, 23, 7, 10, 7.21, 72.10, 0.21, '2023-12-30 14:52:23', '2023-12-30 14:52:23'),
-- (24, 24, 7, 1, 7.21, 7.21, 0.21, '2023-12-30 16:45:20', '2023-12-30 16:45:20'),
-- (25, 25, 9, 1, 12.00, 12.00, 0.00, '2024-01-01 16:13:24', '2024-01-01 16:13:24'),
-- (26, 26, 9, 9, 12.00, 108.00, 0.00, '2024-01-01 16:15:52', '2024-01-01 16:15:52'),
-- (27, 27, 7, 5, 7.21, 36.05, 0.21, '2024-01-02 12:35:42', '2024-01-02 12:35:42');
>>>>>>> 939585d0b638130f00f341b68f8de8ddbf63054a

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
<<<<<<< HEAD
-- Dumping data untuk tabel `products`
--

-- INSERT INTO `products` (`id`, `uuid`, `slug`, `name`, `description`, `code`, `price`, `ppn`, `category_id`, `stock`, `image_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
-- (1, '84fc52fe-28f4-4a8b-becb-d5590d3be82a', 'testppn', 'TestPPN', 'TestPPN', 'TestPPN', 100000.00, 5.00, 1, 2, 'Tabel Priodik HD.jpg', '2019-11-22 21:45:25', '2019-11-22 21:45:25', NULL),
-- (2, '285c1ba8-6bda-4dd8-aed1-e27f5acccd72', 'chocolatos', 'Chocolatos', 'Chocolatos adalah lorem ipsum', 'CHO1', 500.00, 20.00, 1, 155, '23a5ae9957741bb83da2e4201c8b44ce.jpeg', '2019-11-23 17:26:53', '2020-02-08 01:01:21', NULL);
=======
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `uuid`, `slug`, `name`, `description`, `code`, `price`, `ppn`, `category_id`, `stock`, `image_name`, `created_at`, `updated_at`, `deleted_at`, `buy_price`, `restock_bal`) VALUES
(1, '84fc52fe-28f4-4a8b-becb-d5590d3be82a', 'testppn', 'TestPPN', 'TestPPN', 'TestPPN', 10.00, 5.00, 1, 2, 'Tabel Priodik HD.jpg', '2019-11-22 21:45:25', '2023-12-30 14:10:04', NULL, 9.00, 5),
(2, '285c1ba8-6bda-4dd8-aed1-e27f5acccd72', 'chocolatos', 'ChocolateSS', 'This is Kingsbit chocolate', 'CHO1', 500.00, 20.00, 1, 155, 'Divine_Sunderer_item_HD.png', '2019-11-23 17:26:53', '2023-12-30 14:10:15', NULL, 0.00, 0),
(3, '253668b9-3909-465c-8912-33503fe59968', 'd-lINK', 'd-LINK', 'D-LINK', '839675000660', 7.00, 3.00, 1, 44, 'Passport picture - Carrie2.jpg', '2023-12-28 17:40:28', '2023-12-30 13:53:31', NULL, 6.00, 5),
(4, 'f50dd4cb-1911-47ee-b871-36da17ee84d9', 'chocolate', 'Chocolate', 'dsadasdfsadf', '2859', 10.00, 3.00, 1, 50, 'Ignite.png', '2023-12-29 14:02:41', '2023-12-30 11:08:06', NULL, 9.00, 5),
(5, '7f114c59-78b5-486c-8040-14582bed8625', 'aqua-praise-soft', 'Aqua Praise Soft', 'Aqua Praise Soft for testing', '12345', 22.00, 1.00, 1, 5, 'Divine_Sunderer_item_HD.png', '2023-12-29 15:38:28', '2023-12-30 12:57:20', NULL, 20.00, 5),
(7, 'f78f6287-b0aa-4d1b-89c4-046f4e1c8d49', 'kiki-toilet-roll', 'Kiki Toilet Roll', 'Kiki Toilet Roll', '6036000024207', 7.00, 3.00, 1, 74, '191.png', '2023-12-30 14:40:37', '2024-01-02 12:35:42', NULL, 6.00, 5),
(8, '98a229d5-f642-4b70-920b-c7fd92469def', 'kaspersky', 'kaspersky', 'dshdhdn', '5056244902483', 220.00, 3.00, 1, 100, 'IMG-20220222-WA0023.jpg', '2024-01-01 14:01:47', '2024-01-01 14:01:47', NULL, 200.00, 9),
(9, '2b20e535-4637-4723-82c6-bdfe1488629b', 'geisha', 'Geisha', 'Geisha  250g', '6033000292025', 12.00, 0.00, 3, 15, 'IMG-20220222-WA0023.jpg', '2024-01-01 16:11:30', '2024-01-01 16:23:22', NULL, 10.00, 5),
(10, 'eed39970-2182-46ae-b8e8-aaf1a66c6dd6', 'royal-aroma-5kg', 'Royal Aroma - 5kg', 'Royal Aroma rice 5kg', '6034000145953', 87.00, 0.00, 14, 4, 'IMG-20220222-WA0023.jpg', '2024-01-01 16:46:42', '2024-01-01 16:46:42', NULL, 80.00, 3),
(11, 'fb8790d3-c8a8-4268-95a5-0e8576b0e40a', 'dubai-rice-5-kg', 'Dubai rice - 5 kg', 'Dubai rice - 5 kg', '8936089964631', 78.00, 0.00, 14, 2, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-01 16:48:45', '2024-01-01 16:48:45', NULL, 70.00, 3),
(12, '4f2d189f-9db5-4b94-aca4-91ea549df03e', 'lele-5-kg', 'Lele - 5 kg', 'Lele Rice 5kg', '8858669700203', 112.00, 0.00, 14, 3, 'IMG-20220222-WA0023.jpg', '2024-01-01 16:49:55', '2024-01-01 16:49:55', NULL, 102.00, 3),
(13, 'abe1d539-9278-4c7e-ae90-7b1ee6f2fffc', 'peacock', 'Peacock', 'Peacock - 5 kg', '8410184039536', 122.00, 0.00, 14, 4, 'mockup.png', '2024-01-01 16:51:49', '2024-01-01 16:51:49', NULL, 112.00, 3),
(14, '7cee1537-c81e-46a6-a087-017d02d51e8b', 'my-deer-gold-5kg', 'My Deer Gold - 5kg', 'My Deer Gold - 5kg', '8855180006609', 94.00, 0.00, 14, 1, 'IMG-20220222-WA0023.jpg', '2024-01-01 16:52:55', '2024-01-01 16:52:55', NULL, 84.00, 3),
(15, 'ee8ebe9d-e684-4903-9abf-0d3bed75f730', 'frytol-085l-btl', 'Frytol - 0.85L btl', 'Frytol - 0.85L btl', '6033000570109', 32.00, 0.00, 15, 13, 'IMG-20220222-WA0023.jpg', '2024-01-01 16:55:52', '2024-01-01 16:55:52', NULL, 30.00, 5),
(16, '717ba8cd-90fc-45e2-b127-353bccbd76a2', 'frytol-45l-gallon', 'Frytol - 4.5L gallon', 'Frytol - 4.5L gallon', '6034000190199', 110.00, 0.00, 15, 2, 'mockup.png', '2024-01-01 16:57:59', '2024-01-01 16:57:59', NULL, 100.00, 2),
(17, 'e2f74262-52f3-4039-99e7-1ca8d050bc91', 'frytol-900ml-sachet', 'Frytol 900mL sachet', 'Frytol 900mL sachet', '6034000190694', 21.00, 0.00, 15, 14, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-01 17:00:01', '2024-01-01 17:00:01', NULL, 18.00, 4),
(18, 'cf66be12-73ba-448a-9d95-2c1b1fbc4bb0', 'frytol-450ml-sachet', 'Frytol 450mL sachet', 'Frytol 450mL sachet', '6034000190687', 14.00, 0.00, 15, 13, 'mockup.png', '2024-01-01 17:02:22', '2024-01-01 17:02:22', NULL, 10.00, 5),
(19, 'aec9d0ae-f2fc-429f-bd1c-93ab55dfeb88', 'tasty-tom-22kg-tin', 'Tasty Tom 2.2kg Tin', 'Tasty Tom 2.2kg Tin', '6033000300034', 50.00, 0.00, 15, 1, 'IMG-20220222-WA0023.jpg', '2024-01-01 17:03:40', '2024-01-01 17:03:40', NULL, 45.00, 1),
(20, '4062110b-8f4e-422e-a871-4e884c76c695', 'tasty-tom-200g-tin', 'Tasty Tom - 200g Tin', 'Tasty Tom - 200g Tin', '6925157900529', 12.00, 0.00, 15, 10, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-01 17:05:34', '2024-01-01 17:05:34', NULL, 10.00, 5),
(21, '3d9477e8-2fdc-4552-8a7b-e718241a69c0', 'tasty-tom-210g-tin', 'Tasty Tom 210g - tin', 'Tasty Tom 210g - tin', '6033000300010', 8.00, 0.00, 15, 40, 'IMG-20220222-WA0023.jpg', '2024-01-01 17:08:16', '2024-01-01 17:08:16', NULL, 6.00, 10),
(22, 'e9015dab-1973-4104-b0ab-eac34e1389b7', 'tasty-tom-pouch-small', 'Tasty Tom - pouch small', 'Tasty Tom - pouch small', '6033000303974', 7.00, 0.00, 15, 44, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-01 17:10:09', '2024-01-01 17:10:09', NULL, 5.00, 10),
(23, '5751e4d3-45c8-4ecb-a100-aa490ca46d75', 'tasty-tom-medium-small', 'Tasty Tom - medium small', 'Tasty Tom - medium small', '6033000303981', 10.00, 0.00, 15, 27, 'mockup.png', '2024-01-01 17:11:35', '2024-01-01 17:11:35', NULL, 8.00, 10),
(24, '57cc4341-5610-49b8-b57e-19d6589ed96e', 'tasty-tom-medium-pouch', 'Tasty Tom - medium pouch', 'Tasty Tom - medium pouch', '6033000303998', 24.00, 0.00, 15, 9, 'Screenshot 2023-11-14 7.04.04 PM.png', '2024-01-01 17:13:05', '2024-01-01 17:13:05', NULL, 21.00, 3),
(25, '0a1ff34b-46e3-4caf-b0e4-ed6b85f7cafe', 'gino-pouch-big', 'Gino pouch big', 'Gino pouch big', '8410300361466', 24.00, 0.00, 15, 7, 'IMG-20220222-WA0023.jpg', '2024-01-01 17:17:39', '2024-01-01 17:17:39', NULL, 21.00, 5),
(26, '996b6b31-ed70-4ab3-a86d-315dc77eeab8', 'gino-small-pouch', 'Gino small pouch', 'Gino small pouch', '8410300574903', 7.00, 0.00, 15, 27, 'mockup.png', '2024-01-01 17:19:15', '2024-01-01 17:19:15', NULL, 6.00, 10),
(27, '8fc0c1d6-3d2e-464e-ba93-5194fbd41d11', 'tasty-tom-sachet-small', 'Tasty tom sachet small', 'Tasty tom sachet small', '6033000300140', 3.00, 0.00, 15, 80, 'IMG-20220222-WA0023.jpg', '2024-01-01 17:21:56', '2024-01-01 17:21:56', NULL, 2.00, 20),
(28, '0039288a-a678-46c1-b578-0519b5270b70', 'gino-tomato-mix-sachet-small', 'Gino Tomato mix - sachet small', 'Gino Tomato mix - sachet small', '8410300361428', 3.00, 0.00, 15, 27, 'Screenshot 2023-11-14 7.04.04 PM.jpg', '2024-01-01 17:23:32', '2024-01-01 17:23:32', NULL, 2.00, 10),
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
(43, '907b034a-e714-4bcc-abf7-8589886c6702', 'ideal-milk-30ml', 'Ideal Milk - 30mL', 'Ideal Milk - 30mL', '6033000088635', 8.00, 0.00, 16, 25, 'mockup.png', '2024-01-01 18:14:29', '2024-01-01 18:14:29', NULL, 7.00, 10),
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
(54, 'f029cd78-0d9a-4faa-8f36-61623d07305d', 'softcare-medium-11pcs', 'Softcare Medium 11pcs', 'Softcare Medium 11pcs', '6033000410023', 23.00, 0.00, 9, 21, 'IMG-20220222-WA0023.jpg', '2024-01-01 18:51:51', '2024-01-01 18:51:51', NULL, 22.00, 5);
>>>>>>> 939585d0b638130f00f341b68f8de8ddbf63054a

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

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
