-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2024 at 05:29 PM
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
-- Database: `edufun`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `article_category_id` bigint(20) UNSIGNED NOT NULL,
  `writer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `created_at`, `updated_at`, `title`, `body`, `image_path`, `article_category_id`, `writer_id`) VALUES
(1, '2024-11-06 08:26:01', '2024-11-06 08:26:01', 'Understanding Human and Computer Interaction', 'Omnis similique fugit aut. Est qui eveniet illum neque maxime. Delectus blanditiis ad temporibus excepturi debitis earum.\n\nEnim ut inventore sed autem. Provident amet repellendus repellendus error quia aut. Voluptas veniam voluptatem tempore aut. Dolorem omnis impedit sit voluptate suscipit nesciunt.\n\nAut labore voluptates occaecati iure fugit et. Ipsum distinctio eaque dolor provident vero fugiat qui. Alias aut consequuntur alias velit rerum ut odit. Consectetur autem saepe nostrum et.', '/assets/seed/articles/1.png', 1, 1),
(2, '2024-11-06 08:26:01', '2024-11-06 08:26:01', 'Design Patterns in Software Engineering', 'Voluptatibus quo asperiores ea. Aperiam itaque omnis alias iure illum.\n\nEx vero harum harum quam adipisci quaerat. Et voluptas quia esse qui molestias voluptatem. Qui recusandae libero sint quam officia. Amet accusantium incidunt quasi est iure odio.\n\nIusto ad delectus deserunt et natus maiores. Et voluptas vel vel ab illo consequatur. Modi consequatur officiis aliquam rem molestiae architecto. Ab deserunt rem inventore architecto distinctio fuga debitis odit. Sint voluptate dolores assumenda at quaerat.', '/assets/seed/articles/3.jpeg', 2, 2),
(3, '2024-11-06 08:26:01', '2024-11-06 08:26:01', 'Human and Computer Interaction', 'Est repudiandae consequuntur et quibusdam. Aut quae non molestiae qui in rerum error minima. Nihil cupiditate et sed nobis neque provident nemo. Distinctio ratione a aliquam ipsam recusandae sunt.\n\nVoluptas aut quasi ratione vero dolores. Magni quod consequuntur et quam. Iusto qui reprehenderit esse et natus aut. Id voluptates accusantium consequatur doloribus voluptatem.\n\nItaque dolores eos aut maiores fugiat aut. Quia ipsum minima reiciendis molestiae. Ipsa aut in sed voluptatibus numquam velit. Dicta distinctio voluptatem dolorem at deleniti accusantium magni.', '/assets/seed/articles/1.png', 1, 1),
(4, '2024-11-06 08:26:01', '2024-11-06 08:26:01', 'User Experience', 'Error et tempore recusandae harum nihil voluptatem fugiat. In adipisci eum corporis molestiae iure. Ut laboriosam doloremque modi aut aliquid.\n\nProvident ducimus est voluptatem recusandae vel. Hic nesciunt ducimus saepe dolorem voluptatem pariatur. Facilis rerum et nobis iure. Voluptatum labore quae similique veniam natus fuga est.\n\nUt ea perferendis est cupiditate eos. Repellat est voluptas ipsam. Exercitationem ipsa labore non incidunt et. Magni repellendus nobis qui molestias vitae nulla.', '/assets/seed/articles/2.jpeg', 1, 1),
(5, '2024-11-06 08:26:01', '2024-11-06 08:26:01', 'User Experience for Digital Immersive Technology', 'Totam in porro eos illum dolores veritatis eos. Aspernatur et et et autem iusto sed.\n\nPerferendis repellendus dolor amet provident aspernatur. Deleniti deleniti consequatur hic pariatur. Perferendis fuga minima molestias aut aspernatur sed quisquam deserunt.\n\nEt illo totam maxime omnis id dolores fugiat. Quasi saepe ipsam dolores enim. Ut porro magni est ipsam quis.', '/assets/seed/articles/2.jpeg', 1, 3),
(6, '2024-11-06 08:26:01', '2024-11-06 08:26:01', 'Pattern Software Design', 'Qui in sed ullam rerum fugiat molestias. Ut esse qui aut excepturi nostrum quis dignissimos. Dolore at aut dolor ratione. Quisquam nostrum eos perferendis quis ratione laboriosam quam autem.\n\nVoluptatem ut nemo placeat hic distinctio perspiciatis placeat. Ducimus officiis enim recusandae dolor dolor sint et.\n\nRecusandae quidem et rerum tempora incidunt. Autem sit rerum esse id. Iure quia quidem vel reprehenderit itaque dolore suscipit placeat.', '/assets/seed/articles/3.jpeg', 2, 2),
(7, '2024-11-06 08:26:01', '2024-11-06 08:26:01', 'Agile Software Development', 'Reprehenderit soluta placeat dolorum beatae. Ipsam dolores beatae aut facilis. Doloremque et omnis est suscipit laborum corrupti voluptas sit.\n\nPerspiciatis atque aut voluptatem. Aut illum tempora minus qui harum qui iusto. Quia consectetur nesciunt voluptatibus incidunt nulla blanditiis. Nisi adipisci autem atque deleniti.\n\nFacilis nihil repellat non ipsa. Et commodi quo error aspernatur excepturi eius possimus. Fuga delectus consequatur assumenda commodi nihil.', 'assets/seed/articles/4.jpeg', 2, 4),
(8, '2024-11-06 08:26:01', '2024-11-06 08:26:01', 'Code Reengineering', 'Quia dolores quo tempora error alias. Nostrum ut occaecati voluptas consectetur iure. Aut aperiam quisquam vel ab quia excepturi itaque. Earum hic ut rerum voluptatem voluptas voluptatum.\n\nRerum voluptates sapiente ipsum qui. Voluptatem esse atque quasi excepturi et laborum voluptatem quam. Ut possimus quibusdam minus omnis consequatur. Blanditiis modi nemo dignissimos minus ex omnis explicabo molestiae.\n\nAccusantium et sequi quibusdam distinctio. Ipsa delectus omnis nam sapiente ex. Deserunt sint est quas dolorem et aspernatur necessitatibus. In nesciunt possimus voluptate aut vitae est sed.', '/assets/seed/articles/4.jpeg', 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `article_categories`
--

CREATE TABLE `article_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_categories`
--

INSERT INTO `article_categories` (`id`, `created_at`, `updated_at`, `category_name`) VALUES
(1, '2024-11-06 08:26:01', '2024-11-06 08:26:01', 'Interactive Multimedia'),
(2, '2024-11-06 08:26:01', '2024-11-06 08:26:01', 'Software Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_05_165520_create_writers_table', 1),
(5, '2024_11_05_170000_create_article_categories_table', 1),
(6, '2024_11_05_170433_create_articles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('V4F7vZSiYYxUxcPyus8r3apSfEXaFinGRF5SZUuS', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid3UzSjFaQlAzOUpSSlZrNkVER2ZPU3ZnZll6YUh3VXBTOHVBbUJCaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzL3dyaXRlci1hcnRpY2xlcy8yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1730910458);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `writers`
--

CREATE TABLE `writers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `job` varchar(255) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `writers`
--

INSERT INTO `writers` (`id`, `created_at`, `updated_at`, `name`, `job`, `image_path`) VALUES
(1, '2024-11-06 08:26:01', '2024-11-06 08:26:01', 'Verdie Fritsch', 'Interactive Media Developer', '/assets/seed/writers/4.png'),
(2, '2024-11-06 08:26:01', '2024-11-06 08:26:01', 'Leilani Cummings', 'Senior Software Engineer', '/assets/seed/writers/3.png'),
(3, '2024-11-06 08:26:01', '2024-11-06 08:26:01', 'Christine Herzog', 'Interactive Media Developer', '/assets/seed/writers/3.png'),
(4, '2024-11-06 08:26:01', '2024-11-06 08:26:01', 'Prof. Bell Russel', 'Senior Software Engineer', '/assets/seed/writers/3.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_article_category_id_foreign` (`article_category_id`),
  ADD KEY `articles_writer_id_foreign` (`writer_id`);

--
-- Indexes for table `article_categories`
--
ALTER TABLE `article_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `article_categories`
--
ALTER TABLE `article_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `writers`
--
ALTER TABLE `writers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_article_category_id_foreign` FOREIGN KEY (`article_category_id`) REFERENCES `article_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articles_writer_id_foreign` FOREIGN KEY (`writer_id`) REFERENCES `writers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
