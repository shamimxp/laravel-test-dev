-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2025 at 07:13 AM
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
-- Database: `test_db`
--

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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Sed', NULL, NULL),
(2, 'Distinctio', NULL, NULL),
(3, 'Eos', NULL, NULL),
(4, 'Laborum', NULL, NULL),
(5, 'Voluptatem', NULL, NULL),
(6, 'Non quod nam', NULL, NULL),
(7, 'Quis quaerat', NULL, NULL),
(8, 'Dolor', NULL, NULL),
(9, 'Quisquam', NULL, NULL),
(10, 'Ducimus optio', NULL, NULL),
(11, 'Dolor dignissimos libero', NULL, NULL),
(12, 'Vero dolorum', NULL, NULL),
(13, 'Dolores', NULL, NULL),
(14, 'Illum', NULL, NULL),
(15, 'Non natus', NULL, NULL),
(16, 'Harum omnis tempora', NULL, NULL),
(17, 'Adipisci', NULL, NULL),
(18, 'Quasi modi quos', NULL, NULL),
(19, 'Aut', NULL, NULL),
(20, 'Perspiciatis cumque', NULL, NULL),
(21, 'Corporis suscipit earum', NULL, NULL),
(22, 'Est at et', NULL, NULL),
(23, 'Est', NULL, NULL),
(24, 'Nam voluptas', NULL, NULL),
(25, 'Sit dolor', NULL, NULL),
(26, 'Provident', NULL, NULL),
(27, 'Perferendis', NULL, NULL),
(28, 'Excepturi', NULL, NULL),
(29, 'Minus', NULL, NULL),
(30, 'Repellendus', NULL, NULL),
(31, 'Accusamus qui', NULL, NULL),
(32, 'Nihil at', NULL, NULL),
(33, 'Quis quidem', NULL, NULL),
(34, 'Et ut', NULL, NULL),
(35, 'Dolore sint', NULL, NULL),
(36, 'Qui quas numquam', NULL, NULL),
(37, 'Consequatur', NULL, NULL),
(38, 'Minus nesciunt optio', NULL, NULL),
(39, 'Ipsum eligendi est', NULL, NULL),
(40, 'Vitae', NULL, NULL),
(41, 'Velit consequatur', NULL, NULL),
(42, 'Deleniti', NULL, NULL),
(43, 'Ut', NULL, NULL),
(44, 'Sint', NULL, NULL),
(45, 'Impedit repudiandae sint', NULL, NULL),
(46, 'Et', NULL, NULL),
(47, 'Error ex', NULL, NULL),
(48, 'Accusamus atque', NULL, NULL),
(49, 'Facere aut assumenda', NULL, NULL),
(50, 'Inventore laborum provident', NULL, NULL),
(51, 'Quibusdam', NULL, NULL),
(52, 'Velit', NULL, NULL),
(53, 'Et debitis et', NULL, NULL),
(54, 'Modi', NULL, NULL),
(55, 'Ut fugiat', NULL, NULL),
(56, 'Non in excepturi', NULL, NULL),
(57, 'Voluptatem rerum aut', NULL, NULL),
(58, 'Repudiandae inventore excepturi', NULL, NULL),
(59, 'Mollitia animi', NULL, NULL),
(60, 'Iusto et id', NULL, NULL),
(61, 'Laboriosam quia', NULL, NULL),
(62, 'Esse aut', NULL, NULL),
(63, 'Excepturi maiores sint', NULL, NULL),
(64, 'Sit dolore', NULL, NULL),
(65, 'Sapiente porro', NULL, NULL),
(66, 'Asperiores molestiae dignissimos', NULL, NULL),
(67, 'Nihil deserunt optio', NULL, NULL),
(68, 'Itaque magnam dolor', NULL, NULL),
(69, 'Sunt veritatis', NULL, NULL),
(70, 'Iusto', NULL, NULL),
(71, 'Occaecati rerum', NULL, NULL),
(72, 'Magni omnis', NULL, NULL),
(73, 'Culpa dolor quidem', NULL, NULL),
(74, 'Praesentium quo', NULL, NULL),
(75, 'Voluptates', NULL, NULL),
(76, 'Enim velit', NULL, NULL),
(77, 'Qui', NULL, NULL),
(78, 'Aspernatur', NULL, NULL),
(79, 'Cumque accusantium voluptatibus', NULL, NULL),
(80, 'Voluptatem aliquam', NULL, NULL),
(81, 'Dolorem voluptas', NULL, NULL),
(82, 'Quo alias omnis', NULL, NULL),
(83, 'Ab', NULL, NULL),
(84, 'Inventore', NULL, NULL),
(85, 'Fugit enim', NULL, NULL),
(86, 'Nemo', NULL, NULL),
(87, 'Ipsam dolor architecto', NULL, NULL),
(88, 'Modi quo', NULL, NULL),
(89, 'Voluptatem et', NULL, NULL),
(90, 'Iusto tempore', NULL, NULL),
(91, 'Qui voluptas', NULL, NULL),
(92, 'Voluptatem repudiandae', NULL, NULL),
(93, 'Necessitatibus', NULL, NULL),
(94, 'Voluptate', NULL, NULL),
(95, 'Corrupti', NULL, NULL),
(96, 'Dolorem', NULL, NULL),
(97, 'Asperiores', NULL, NULL),
(98, 'Velit qui', NULL, NULL),
(99, 'Vel vel', NULL, NULL),
(100, 'Est quaerat', NULL, NULL);

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
(4, '2025_05_19_060357_create_products_table', 1),
(5, '2025_05_19_060435_create_categories_table', 1),
(6, '2025_05_19_061800_create_personal_access_tokens_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `stock`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Dolorem earum autem molestiae', 'Dolorem earum autem molestiae', 720.91, 304, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(2, 'Rem', 'Rem', 623.21, 153, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(3, 'Eos itaque', 'Eos itaque', 211.12, 674, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(4, 'Explicabo in quidem', 'Explicabo in quidem', 970.55, 16, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(5, 'Alias mollitia explicabo ullam', 'Alias mollitia explicabo ullam', 550.36, 770, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(6, 'Nam ratione necessitatibus dolores voluptatem', 'Nam ratione necessitatibus dolores voluptatem', 342.83, 869, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(7, 'Quas dolor vel', 'Quas dolor vel', 671.55, 842, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(8, 'Aut eius minus', 'Aut eius minus', 263.98, 53, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(9, 'Omnis ipsum', 'Omnis ipsum', 821.67, 395, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(10, 'Commodi ab rem vel delectus', 'Commodi ab rem vel delectus', 879.74, 783, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(11, 'Nobis non in', 'Nobis non in', 914.94, 750, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(12, 'Sunt eum pariatur doloremque est', 'Sunt eum pariatur doloremque est', 717.89, 447, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(13, 'Aut', 'Aut', 134.26, 670, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(14, 'Illum quo', 'Illum quo', 284.97, 4, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(15, 'Et ipsam placeat error dolorem', 'Et ipsam placeat error dolorem', 612.24, 425, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(16, 'Deleniti deleniti tempora odit facere', 'Deleniti deleniti tempora odit facere', 251.24, 937, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(17, 'Praesentium sed voluptatem ut', 'Praesentium sed voluptatem ut', 818.76, 733, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(18, 'Nihil ex', 'Nihil ex', 855.55, 422, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(19, 'Quos sed quia', 'Quos sed quia', 655.22, 635, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(20, 'Nemo est est distinctio', 'Nemo est est distinctio', 151.94, 552, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(21, 'Eos minima voluptatem illo quia', 'Eos minima voluptatem illo quia', 591.15, 712, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(22, 'Similique quo minus', 'Similique quo minus', 39.65, 817, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(23, 'Et', 'Et', 956.64, 634, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(24, 'Aut voluptatem voluptatem', 'Aut voluptatem voluptatem', 151.71, 958, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(25, 'Aut dignissimos expedita doloremque ullam', 'Aut dignissimos expedita doloremque ullam', 116.78, 83, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(26, 'Sed unde aspernatur itaque', 'Sed unde aspernatur itaque', 713.92, 119, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(27, 'Tempora ut', 'Tempora ut', 971.35, 571, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(28, 'Temporibus sint quo corrupti suscipit', 'Temporibus sint quo corrupti suscipit', 592.38, 685, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(29, 'Blanditiis aut quia aut quo', 'Blanditiis aut quia aut quo', 948.01, 974, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(30, 'Qui ipsam repellat sint', 'Qui ipsam repellat sint', 305.76, 411, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(31, 'Pariatur harum voluptatem quod maxime', 'Pariatur harum voluptatem quod maxime', 134.37, 699, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(32, 'Hic sed', 'Hic sed', 174.93, 830, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(33, 'Eum', 'Eum', 12.88, 668, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(34, 'Quam', 'Quam', 331.53, 567, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(35, 'Doloribus accusamus pariatur', 'Doloribus accusamus pariatur', 275.22, 404, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(36, 'Deleniti', 'Deleniti', 831.07, 721, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(37, 'Distinctio ipsam aut', 'Distinctio ipsam aut', 964.76, 71, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(38, 'Nam qui quis voluptatem', 'Nam qui quis voluptatem', 84.63, 913, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(39, 'Quas recusandae quia doloremque', 'Quas recusandae quia doloremque', 689.03, 904, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(40, 'Veniam cupiditate voluptatem sit nemo', 'Veniam cupiditate voluptatem sit nemo', 196.89, 18, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(41, 'Quibusdam vero libero', 'Quibusdam vero libero', 740.59, 412, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(42, 'Occaecati ut', 'Occaecati ut', 497.26, 865, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(43, 'Mollitia aut quasi temporibus', 'Mollitia aut quasi temporibus', 888.68, 596, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(44, 'Voluptatem reiciendis', 'Voluptatem reiciendis', 783.35, 742, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(45, 'Itaque', 'Itaque', 7.22, 295, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(46, 'Autem molestiae consequuntur quo', 'Autem molestiae consequuntur quo', 671.28, 528, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(47, 'Sint ipsam', 'Sint ipsam', 416.87, 176, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(48, 'Cupiditate corrupti vero sit voluptatem', 'Cupiditate corrupti vero sit voluptatem', 164.50, 159, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(49, 'Non sit doloremque', 'Non sit doloremque', 848.91, 807, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(50, 'Nostrum facilis dignissimos laudantium nesciunt', 'Nostrum facilis dignissimos laudantium nesciunt', 968.16, 264, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(51, 'Dolor vitae recusandae et laudantium', 'Dolor vitae recusandae et laudantium', 693.63, 82, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(52, 'Neque', 'Neque', 593.97, 685, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(53, 'Voluptas sit architecto', 'Voluptas sit architecto', 512.80, 708, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(54, 'Quia praesentium', 'Quia praesentium', 407.83, 772, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(55, 'Qui', 'Qui', 287.82, 832, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(56, 'Voluptatem assumenda sed', 'Voluptatem assumenda sed', 87.17, 160, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(57, 'Modi voluptas perspiciatis totam', 'Modi voluptas perspiciatis totam', 890.96, 593, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(58, 'Rerum', 'Rerum', 347.98, 246, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(59, 'Velit sed dolores', 'Velit sed dolores', 4.12, 653, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(60, 'Ut sequi explicabo', 'Ut sequi explicabo', 2.43, 504, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(61, 'Et ad illum velit qui', 'Et ad illum velit qui', 855.70, 887, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(62, 'Quis inventore sunt unde', 'Quis inventore sunt unde', 205.47, 905, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(63, 'Rerum modi', 'Rerum modi', 246.62, 323, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(64, 'Nostrum', 'Nostrum', 315.32, 211, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(65, 'Cumque', 'Cumque', 440.91, 559, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(66, 'Est qui accusamus excepturi quisquam', 'Est qui accusamus excepturi quisquam', 77.30, 675, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(67, 'Sunt illum aliquid eveniet commodi', 'Sunt illum aliquid eveniet commodi', 448.78, 765, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(68, 'Culpa dolorem eaque voluptatem omnis', 'Culpa dolorem eaque voluptatem omnis', 427.52, 756, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(69, 'Cumque eos doloribus porro rerum', 'Cumque eos doloribus porro rerum', 789.06, 15, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(70, 'Aliquid qui assumenda', 'Aliquid qui assumenda', 456.13, 343, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(71, 'Architecto aut officia', 'Architecto aut officia', 755.64, 927, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(72, 'Tempora', 'Tempora', 503.34, 475, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(73, 'Itaque quaerat', 'Itaque quaerat', 878.06, 718, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(74, 'Voluptas non velit', 'Voluptas non velit', 168.19, 440, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(75, 'Qui qui aspernatur ex eius', 'Qui qui aspernatur ex eius', 260.72, 671, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(76, 'Eveniet qui molestiae cum ex', 'Eveniet qui molestiae cum ex', 489.62, 401, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(77, 'Tenetur non odit natus voluptatem', 'Tenetur non odit natus voluptatem', 273.89, 198, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(78, 'Quo et illum dolorem omnis', 'Quo et illum dolorem omnis', 317.52, 197, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(79, 'Aut repellat', 'Aut repellat', 617.05, 823, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(80, 'Nobis', 'Nobis', 526.26, 917, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(81, 'Qui velit sit fugit', 'Qui velit sit fugit', 588.96, 666, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(82, 'A ea quas minima', 'A ea quas minima', 392.49, 102, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(83, 'Temporibus vel et ipsa', 'Temporibus vel et ipsa', 277.84, 419, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(84, 'Est et omnis', 'Est et omnis', 513.48, 265, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(85, 'Necessitatibus blanditiis possimus et fugit', 'Necessitatibus blanditiis possimus et fugit', 22.53, 652, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(86, 'Et nisi et', 'Et nisi et', 767.10, 174, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(87, 'Nihil dolores', 'Nihil dolores', 806.59, 552, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(88, 'Qui quia voluptas', 'Qui quia voluptas', 207.87, 361, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(89, 'Repellat et', 'Repellat et', 959.21, 272, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(90, 'Rerum ullam', 'Rerum ullam', 629.56, 313, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(91, 'Quaerat ad', 'Quaerat ad', 397.38, 522, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(92, 'Pariatur perspiciatis assumenda', 'Pariatur perspiciatis assumenda', 108.33, 269, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(93, 'Quis non', 'Quis non', 871.94, 939, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(94, 'Maiores', 'Maiores', 982.80, 14, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(95, 'Ut et in', 'Ut et in', 188.99, 416, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(96, 'Minus ut', 'Minus ut', 141.93, 340, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(97, 'Velit blanditiis', 'Velit blanditiis', 459.91, 423, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(98, 'Sit vero aliquid cupiditate', 'Sit vero aliquid cupiditate', 335.42, 695, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(99, 'Placeat nam porro', 'Placeat nam porro', 739.78, 839, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46'),
(100, 'Nulla sint sunt id', 'Nulla sint sunt id', 117.88, 637, NULL, '2025-05-20 23:07:46', '2025-05-20 23:07:46');

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

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

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
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
