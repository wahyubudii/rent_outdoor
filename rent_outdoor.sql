-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2022 at 12:47 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rent_outdoor`
--

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
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_name`, `description`, `stock`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Erigo Carrier', '<p>Testing</p>', 36, NULL, NULL, 'storage/items/10e23da18ea19702f8657668975a9797.jpg'),
(2, 'Matras', '<p>Testing</p>', 52, NULL, NULL, 'storage/items/b4735c6fdc84f33031990ee25cb82e3e.jpg'),
(3, 'Sleeping Bag', '<p>Testing</p>', 23, NULL, NULL, 'storage/items/fb2b1bda3da06a9c8c7266da609f8f1b.jpg'),
(4, 'Senter', '<p>Testing</p>', 74, NULL, NULL, 'storage/items/abb7d1ab345a7a62e88db60015a486d4.jpg'),
(5, 'Tenda', '<p>Testing</p>', 63, NULL, '2022-01-25 00:56:41', 'storage/items/916a7c3ae75ce8650149943c2752ab12.jpg'),
(6, 'Hammock', '<p>Testing</p>', 36, NULL, NULL, 'storage/items/2cc7d2fcaac7e8f79ac6d7a80c08634c.jpg'),
(7, 'Trekking Pole', '<p>Testing</p>', 21, NULL, NULL, 'storage/items/eb675fd1b823784e829d9b52a6914e70.jpg'),
(8, 'Jas Hujan', '<p>Testing</p>', 54, NULL, NULL, 'storage/items/74f4f5893c899ae76b999e45d2a299f2.jpg'),
(9, 'Sepatu', '<p>Testing</p>', 32, NULL, '2022-01-25 01:37:46', 'storage/items/11a9984a212a36d822e6b777b98defa9.jpg'),
(10, 'Jaket', '<p>Testing</p>', 12, NULL, '2022-01-25 01:36:32', 'storage/items/6b6505d798efbe353bc42bc274202db6.jpg'),
(11, 'Daging Beef', '<p>Testing</p>', 25, NULL, '2022-01-25 01:49:26', 'storage/items/bd6f30bed9f33a2dfcfeaa547fe47809.jpg'),
(12, 'Snack', '<p>Testing</p>', 63, NULL, NULL, 'storage/items/1a58e4d7b91cd44ac8c0a421df212c2a.jpg'),
(13, 'Telur Ayam', '<p>Testing</p>', 63, NULL, '2022-01-25 01:51:10', 'storage/items/5f0cc34982b806675b18cbe4de9f44fe.jpg'),
(14, 'Korek Api', '<p>Testing</p>', 52, NULL, NULL, 'storage/items/e38f7dbc24d39e46652a8a4233977764.jpg'),
(16, 'Sendok', '<p>Testing</p>', 33, NULL, '2022-01-25 01:52:39', 'storage/items/535eb822e785d3360071be7dc7236699.jpg'),
(17, 'Kompor', '<p>Testing</p>', 51, NULL, NULL, 'storage/items/ffd2db17d686215aa05361b6edb3bd09.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `item_tags`
--

CREATE TABLE `item_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_tags`
--

INSERT INTO `item_tags` (`id`, `item_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(2, 1, 2, NULL, NULL),
(3, 2, 2, NULL, NULL),
(4, 3, 2, NULL, NULL),
(5, 4, 2, NULL, NULL),
(6, 5, 2, NULL, NULL),
(9, 6, 2, NULL, NULL),
(10, 7, 3, NULL, NULL),
(11, 8, 3, NULL, NULL),
(12, 9, 3, NULL, NULL),
(13, 10, 3, NULL, NULL),
(14, 11, 4, NULL, NULL),
(15, 12, 4, NULL, NULL),
(16, 13, 4, NULL, NULL),
(17, 14, 4, NULL, NULL),
(18, 15, 4, NULL, NULL),
(19, 16, 4, NULL, NULL),
(21, 17, 2, NULL, NULL);

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
(5, '2022_01_24_101746_create_tags_table', 1),
(6, '2022_01_24_103422_create_item_tags_table', 1),
(7, '2022_01_24_103803_create_items_table', 1),
(8, '2022_01_24_113436_add_image_to_items_table', 1),
(9, '2022_01_25_094223_create_testimonials_table', 2),
(10, '2022_01_25_095354_add_image_to_testimonials_table', 3),
(11, '2022_01_25_105646_create_teams_table', 4),
(12, '2022_01_25_111239_add_image_to_teams_table', 5);

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

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'tas', '/tas', NULL, '2022-01-25 00:46:07'),
(2, 'camping', '/camping', NULL, NULL),
(3, 'outfit', '/outfit', NULL, NULL),
(4, 'dinner', '/dinner', NULL, NULL),
(5, 'original', '/original', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `github_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `job`, `description`, `github_url`, `facebook_url`, `instagram_url`, `linkedin_url`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Wahyu Budi Utomo', 'CTO', 'Testing Gaes', 'https://github.com/wahyubudii', 'https://github.com/wahyubudii', 'https://github.com/wahyubudii', 'https://github.com/wahyubudii', NULL, '2022-01-25 04:36:16', 'storage/teams/a130f04c5a8131f8807732c06695dbd5.jpg'),
(2, 'Ilham Darmawan', 'CEO', 'Testing gaes', 'https://github.com/wahyubudii', 'https://github.com/wahyubudii', 'https://github.com/wahyubudii', 'https://github.com/wahyubudii', NULL, '2022-01-25 04:35:53', 'storage/teams/2463a8c2ac92e8d89ad748de597a541e.jpg'),
(3, 'Wahyu Budi Utomo', 'CMO', 'Testing Gaes', 'https://github.com/wahyubudii', 'https://github.com/wahyubudii', 'https://github.com/wahyubudii', 'https://github.com/wahyubudii', NULL, NULL, 'storage/teams/5edba31221b7181b54ba9b0151e5e0e5.jpg'),
(4, 'Wahyu Budi Utomo', 'CFO', 'Testing Gaes', 'https://github.com/wahyubudii', 'https://github.com/wahyubudii', 'https://github.com/wahyubudii', 'https://github.com/wahyubudii', NULL, NULL, 'storage/teams/4d9ef4e2a0041fededd8101578c700b0.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `job`, `comment`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Firdatul Nurul', 'Software Engineer at Tokopedia', 'Mantap gaes, recommended!', NULL, '2022-01-25 03:41:19', 'storage/testimonials/24735b7587d582cd0fc6178f32916339.jpg'),
(2, 'Muhammad Rafly Arifani', 'Front End Developer at Github', 'Murah Poll iki', NULL, NULL, 'storage/testimonials/fbd614e23ad5c9d2fba192ec5d7109a7.jpg'),
(3, 'Farid Agung', 'Backend Engineer at Youtube', 'Gasss gaes, no tipu tipu iki', NULL, NULL, 'storage/testimonials/c7cb23176edb825e34d9fb31c4dcdb74.jpg'),
(4, 'Bagus Hendrawan', 'Freelancer', 'Udah 2x sewa, ga pernah ngecewain', NULL, '2022-01-25 03:47:57', 'storage/testimonials/146da4bb8e612c524e540005bf060f72.jpg'),
(5, 'Cholid Wirawan', 'Youtuber', 'Adminnya ramah ramah jadi sayang', NULL, NULL, 'storage/testimonials/daa10f4054bc558c8b19f62aca2637c2.jpg');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$BZiy6U3U8aerDcGoxSwmsup5bYh6Ss6I9xhTn3HRPhnPruP5alP5m', NULL, '2022-01-25 00:44:02', '2022-01-25 00:44:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_tags`
--
ALTER TABLE `item_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `item_tags`
--
ALTER TABLE `item_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
