-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2023 at 03:45 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikacija`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Cleanser', '2023-08-31 19:50:42', '2023-08-31 19:50:42'),
(2, 'Treatment', '2023-08-31 19:50:42', '2023-08-31 19:50:42'),
(3, 'Toner', '2023-08-31 19:50:42', '2023-08-31 19:50:42'),
(4, 'Moisturiser', '2023-08-31 19:50:42', '2023-08-31 19:50:42'),
(5, 'Sun protection', '2023-08-31 19:50:42', '2023-08-31 19:50:42');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_24_145722_create_products_table', 1),
(6, '2023_04_24_145755_create_categories_table', 1),
(7, '2023_04_24_145809_create_orders_table', 1),
(8, '2023_04_24_150338_create_order_items_table', 1),
(9, '2023_04_24_151739_add_image_to_products_table', 1),
(10, '2023_04_25_142649_add_admin_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total_price` decimal(8,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total_price`, `order_date`, `created_at`, `updated_at`) VALUES
(1, 1, '5750.00', '2023-08-31 21:50:42', '2023-08-31 19:50:42', '2023-08-31 19:50:42'),
(2, 2, '6850.00', '2023-08-29 21:50:42', '2023-08-31 19:50:42', '2023-08-31 19:50:42'),
(3, 3, '2500.00', '2023-08-26 21:50:42', '2023-08-31 19:50:42', '2023-08-31 19:50:42'),
(4, 11, '3950.00', '2023-08-31 21:53:04', '2023-08-31 19:53:05', '2023-08-31 19:53:05'),
(5, 11, '5585.00', '2023-09-01 08:49:47', '2023-09-01 06:49:48', '2023-09-01 06:49:48');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, '2023-08-31 19:50:42', '2023-08-31 19:50:42'),
(2, 1, 2, 1, '2023-08-31 19:50:42', '2023-08-31 19:50:42'),
(3, 2, 2, 1, '2023-08-31 19:50:42', '2023-08-31 19:50:42'),
(4, 2, 4, 2, '2023-08-31 19:50:42', '2023-08-31 19:50:42'),
(5, 3, 3, 1, '2023-08-31 19:50:42', '2023-08-31 19:50:42'),
(6, 3, 5, 1, '2023-08-31 19:50:42', '2023-08-31 19:50:42'),
(7, 4, 4, 1, '2023-08-31 19:53:05', '2023-08-31 19:53:05'),
(8, 4, 3, 1, '2023-08-31 19:53:05', '2023-08-31 19:53:05'),
(9, 5, 2, 1, '2023-09-01 06:49:48', '2023-09-01 06:49:48'),
(10, 5, 4, 1, '2023-09-01 06:49:48', '2023-09-01 06:49:48'),
(11, 5, 9, 1, '2023-09-01 06:49:48', '2023-09-01 06:49:48');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(16, 'App\\Models\\User', 12, 'vanja@gmail.com_AdminToken', 'af6ae267a9da4ebf8aef0f7cff75e40b38f57927a7aefdee94e7fca046136e52', '[\"server:admin\"]', NULL, '2023-09-01 06:50:39', '2023-09-01 06:50:39');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category_id`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Eucerin oil control spf 50+', 'Za zastitu masne koze od sunca SPF 30 je preparat za zastitu koze lica.', '2000.00', 5, NULL, NULL, 'https://www.apotekasrbotrade.rs/imgProducts/5561/1-eucerin-sun-oil-control-spf30-50ml-srbotrade.jpg'),
(2, 'Toleriane sensitive fluid moisturiser', 'Hidrira. Umiruje. Stiti. 0% parfema i alkohola.', '1750.00', 4, NULL, NULL, 'https://www.apotekasrbotrade.rs/imgProducts/5775/3337875588676_1-srbotrade.jpg'),
(3, 'The Ordinary Hyaluronic Acid 2% + B5', 'Kombinuje nisku, srednju i visoku molekularnu tezinu hijaluronske kiseline.', '1400.00', 4, NULL, NULL, 'https://www.metropoliten.rs/v2/wp-content/uploads/2018/11/The-Ordinary-Hyaluronic-Acid-2-B5-30ml.jpg'),
(4, 'Avene Cleanance Comedomed koncentrat', 'Za kozu sklonu aknama. Smanjuje bubuljice i mitesere.', '2550.00', 2, NULL, NULL, 'https://www.apotekasrbotrade.rs/imgProducts/5297/avene-cleanance-comedomed-srbotrade.jpg'),
(5, 'CeraVe Blemish Cleanser', 'Cerave gel za cisenje koze sklone nepravilnostima.', '1100.00', 1, NULL, NULL, 'https://www.apotekasrbotrade.rs/imgProducts/9749/cerave-blemish-control-cleanser-236ml-srbotrade.jpg'),
(6, 'CeraVe Hydrating Foaming Oil Cleanser', 'Cerave hidrantno ulje za čišćenje. Za normalnu do izrazito suvu kožu', '1480.00', 1, NULL, NULL, 'https://www.apotekasrbotrade.rs/imgProducts/9753/cerave-oil-cleanser-473ml-srbotrade.jpg'),
(7, 'La Roche Posay Effaclar Duo +', 'Korektivna gel krema koja smanjuje izraženije nepravilnosti na koži.', '1750.00', 2, NULL, NULL, 'https://www.apotekasrbotrade.rs/imgProducts/4842/3337872414084_1-srbotrade.jpg'),
(8, 'La Roche Posay Anthelios UVMUNE 400 SPF50+', 'Štiti od najpodmuklijih UV zraka.', '1400.00', 5, NULL, NULL, 'https://www.apotekasrbotrade.rs/imgProducts/9289/3337875797597_1-srbotrade.jpg'),
(9, 'Apivita 2u1 tonik za lice', 'Umirujući tonik losion sa lavandom i medom hidrira kožu.', '1285.00', 3, NULL, NULL, 'https://www.apotekasrbotrade.rs/imgProducts/9486/apivita-2-u-1-tonik-za-lice-srbotrade.jpg'),
(10, 'Eucerin DermatoCLEAN osvežavajući tonik', 'Pomaže koži da lakše diše.', '1130.00', 3, NULL, NULL, 'https://www.apotekasrbotrade.rs/imgProducts/5817/eucerin-dermatoclean-tonik-srbotrade.jpg'),
(11, 'Vichy cleanser', 'Mineralni, novi cistac lica', '1700.00', 1, '2023-08-31 19:56:04', '2023-08-31 19:56:04', 'https://shop.lilly.rs/media/catalog/product/cache/e9fe89bb0d3d5e05736d64f06cc6558c/3/3/3337871330125_2.jpg'),
(12, 'sssss', 'sss', '333.00', 4, '2023-09-01 06:51:09', '2023-09-01 06:51:09', 'https://www.vichy.co.uk/on/demandware.static/-/Sites-vic-master-catalog/en_GB/dw488bcd76/VICHY-940x940/FACE/NORMADERM/PHYTOSOLUTION-CLEANSING-GEL/JPEG-940x940/Vichy-Cleanser-Normaderm-Phytosolution-Purifying-Cleansing-Gel-000-3337875663076-Front.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `admin`) VALUES
(1, 'Emely Harber', 'zemlak.rosella@example.net', '2023-08-31 19:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fI0jPISChW', '2023-08-31 19:50:42', '2023-08-31 19:50:42', 0),
(2, 'Ada Durgan', 'weimann.gust@example.com', '2023-08-31 19:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'A05LqKgorj', '2023-08-31 19:50:42', '2023-08-31 19:50:42', 0),
(3, 'Prof. Isadore Sporer', 'michaela.davis@example.net', '2023-08-31 19:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eyFfdD8e65', '2023-08-31 19:50:42', '2023-08-31 19:50:42', 0),
(4, 'Prof. Dawson Monahan I', 'dcollier@example.com', '2023-08-31 19:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bePlK5nUal', '2023-08-31 19:50:42', '2023-08-31 19:50:42', 0),
(5, 'Gracie Hane', 'wtorp@example.org', '2023-08-31 19:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5FeWOkalNn', '2023-08-31 19:50:42', '2023-08-31 19:50:42', 0),
(6, 'Pansy Lockman', 'barrows.dixie@example.net', '2023-08-31 19:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kFbPYWjuwD', '2023-08-31 19:50:42', '2023-08-31 19:50:42', 0),
(7, 'Kirk Purdy', 'oconnell.alexandro@example.org', '2023-08-31 19:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kNtkn9G4Pj', '2023-08-31 19:50:42', '2023-08-31 19:50:42', 0),
(8, 'Mrs. Alverta Schimmel', 'crist.providenci@example.org', '2023-08-31 19:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZOovEN8AcA', '2023-08-31 19:50:42', '2023-08-31 19:50:42', 0),
(9, 'Prof. Alden Murphy I', 'koss.katlyn@example.net', '2023-08-31 19:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FmRT9lcK1s', '2023-08-31 19:50:42', '2023-08-31 19:50:42', 0),
(10, 'Soledad Sawayn', 'brakus.ruth@example.org', '2023-08-31 19:50:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'p8z2L2LB6I', '2023-08-31 19:50:42', '2023-08-31 19:50:42', 0),
(11, 'Tina', 'tina@gmail.com', NULL, '$2y$10$uJ2G1uch2t7SSsSQ12GzmeWTbxqDy2mZrRe61DhRV9wXVC/Lk7hVC', NULL, '2023-08-31 19:51:45', '2023-08-31 19:51:45', 0),
(12, 'Vanja', 'vanja@gmail.com', NULL, '$2y$10$udlmnk.FTxkH8mm9yyjWu.OvECr8yjhczpKCvy8kumFOsiPYLhlAW', NULL, '2023-08-31 19:51:57', '2023-08-31 19:51:57', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
