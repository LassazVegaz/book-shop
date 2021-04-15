-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2021 at 10:12 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `created_at`, `updated_at`, `title`, `description`, `genre`, `price`, `user_id`) VALUES
(1, '2021-04-15 05:13:27', '2021-04-15 05:13:27', 'Magali Kunde PhD', 'Corrupti eos neque voluptate qui.', 'story', 903.15, NULL),
(2, '2021-04-15 05:13:27', '2021-04-15 12:44:21', 'Macy Zieme', 'Est asperiores beatae alias explicabo.', 'horror', 426.38, 1),
(3, '2021-04-15 05:13:28', '2021-04-15 05:13:28', 'Dennis Cormier', 'Quos architecto et dolore enim.', 'horror', 924.61, NULL),
(4, '2021-04-15 05:13:28', '2021-04-15 12:44:51', 'Ms. Laisha Graham', 'Odio saepe enim adipisci dolorem.', 'romance', 617.27, NULL),
(5, '2021-04-15 05:13:28', '2021-04-15 05:53:33', 'Prof. Melyssa Christiansen III', 'Praesentium aperiam corrupti et sed maxime.', 'romance', 668.64, 1),
(6, '2021-04-15 05:13:28', '2021-04-15 05:13:28', 'Hailey Russel IV', 'Voluptatem voluptatibus et et veniam eos est.', 'romance', 48.76, NULL),
(7, '2021-04-15 05:13:28', '2021-04-15 13:31:56', 'Gerda Wisoky', 'Sit fuga rerum praesentium.', 'story', 845.65, 1),
(8, '2021-04-15 05:13:28', '2021-04-15 05:13:28', 'Ismael O\'Connell', 'Eaque enim quis non aut odit quasi totam aliquid.', 'horror', 366.35, NULL),
(9, '2021-04-15 05:13:28', '2021-04-15 05:13:28', 'Ike Price', 'Consequuntur placeat dolor quis dolorum iste vero illum quia.', 'romance', 356.36, NULL),
(10, '2021-04-15 05:13:28', '2021-04-15 05:13:28', 'Dr. Liam Herman Sr.', 'Aut et necessitatibus reiciendis adipisci maiores.', 'horror', 83.49, NULL),
(11, '2021-04-15 05:13:29', '2021-04-15 05:13:29', 'Myriam Carter', 'Unde qui nesciunt labore amet labore et debitis.', 'horror', 152.35, NULL),
(12, '2021-04-15 05:13:29', '2021-04-15 05:13:29', 'Joyce McDermott II', 'Dolorum nulla qui dolor sed labore labore vel nobis.', 'romance', 587.05, NULL),
(13, '2021-04-15 05:13:29', '2021-04-15 05:13:29', 'Sunny Klocko', 'Quas voluptatem ut ex tempora sit.', 'adventure', 45.05, NULL),
(14, '2021-04-15 05:13:29', '2021-04-15 05:13:29', 'Prof. Zella Upton V', 'Omnis praesentium maxime molestias harum quasi et et autem.', 'romance', 527.54, NULL),
(15, '2021-04-15 05:13:29', '2021-04-15 05:13:29', 'Dr. Dean Koch', 'Ut odio similique voluptatibus consequatur qui tempore rerum fugit.', 'adventure', 892.99, NULL),
(16, '2021-04-15 05:13:29', '2021-04-15 12:44:30', 'Alia Brakus', 'Ipsam quis molestias aut voluptatum rem adipisci.', 'romance', 348.59, 1),
(17, '2021-04-15 05:13:29', '2021-04-15 05:13:29', 'Avery Bechtelar', 'Nihil optio dolores ipsa magnam.', 'story', 569.59, NULL),
(18, '2021-04-15 05:13:29', '2021-04-15 05:13:29', 'Mrs. Shania Sporer MD', 'Nobis alias qui aut quaerat vitae libero.', 'romance', 569.13, NULL),
(19, '2021-04-15 05:13:29', '2021-04-15 05:13:29', 'Jordan Sporer', 'Laborum qui laboriosam aut earum laborum quae magnam.', 'romance', 114.44, NULL),
(20, '2021-04-15 05:13:29', '2021-04-15 05:13:29', 'Carmel Fisher', 'Voluptates et sit dolore enim.', 'horror', 284.23, NULL),
(21, '2021-04-15 05:13:30', '2021-04-15 05:13:30', 'Mr. Chase Ebert', 'Quibusdam quia deserunt dignissimos quod.', 'story', 865.21, NULL),
(22, '2021-04-15 05:13:30', '2021-04-15 05:13:30', 'Mr. Kellen Kiehn', 'Aut animi corrupti molestiae enim unde.', 'adventure', 548.09, NULL),
(23, '2021-04-15 05:13:30', '2021-04-15 05:13:30', 'Prof. Chet Rath', 'Esse dolore est magnam dolores labore.', 'romance', 521.31, NULL),
(24, '2021-04-15 05:13:30', '2021-04-15 05:13:30', 'Hyman Weber V', 'Voluptas deleniti commodi quidem qui veritatis quam est.', 'horror', 433, NULL),
(25, '2021-04-15 05:13:30', '2021-04-15 05:13:30', 'Herminio McClure', 'Quia consequatur quasi et ea velit sit.', 'adventure', 448.66, NULL),
(26, '2021-04-15 05:13:30', '2021-04-15 05:13:30', 'Murray Keebler I', 'Temporibus commodi autem voluptatem sunt sed.', 'adventure', 80.67, NULL),
(27, '2021-04-15 05:13:31', '2021-04-15 05:13:31', 'Heath Boehm', 'Asperiores voluptas ex neque neque omnis impedit voluptates odit.', 'romance', 158.5, NULL),
(28, '2021-04-15 05:13:31', '2021-04-15 05:13:31', 'Tatum Shields', 'Molestiae qui molestiae soluta officiis modi nobis.', 'story', 444.01, NULL),
(29, '2021-04-15 05:13:31', '2021-04-15 05:13:31', 'Abigail Williamson', 'Eius dolor voluptas architecto.', 'romance', 656.68, NULL),
(30, '2021-04-15 05:13:31', '2021-04-15 05:13:31', 'Karley Stokes', 'Et consectetur tempora ex quod molestiae blanditiis.', 'adventure', 853.07, NULL),
(31, '2021-04-15 05:13:31', '2021-04-15 05:13:31', 'Jessie White', 'Voluptatum et qui tempora possimus nihil et enim.', 'horror', 418.67, NULL),
(32, '2021-04-15 05:13:31', '2021-04-15 05:13:31', 'Ted Schuster', 'Hic enim quas consectetur animi.', 'horror', 990.92, NULL),
(33, '2021-04-15 05:13:31', '2021-04-15 05:13:31', 'Gerard Davis', 'Magni alias vel rerum alias tenetur eos tenetur.', 'adventure', 50.38, NULL),
(34, '2021-04-15 05:13:31', '2021-04-15 05:13:31', 'Veronica Dach', 'Voluptatibus repudiandae nam veniam cumque.', 'horror', 64.14, NULL),
(35, '2021-04-15 05:13:31', '2021-04-15 05:13:31', 'Rocky Hand', 'Quo molestias eum omnis qui.', 'horror', 240.64, NULL),
(36, '2021-04-15 05:13:31', '2021-04-15 05:13:31', 'Dr. Lelia Morar IV', 'Laboriosam quisquam repudiandae eos quod modi laboriosam.', 'story', 856.34, NULL),
(37, '2021-04-15 05:13:32', '2021-04-15 05:13:32', 'Ellis Jenkins', 'Ducimus asperiores impedit aut perspiciatis.', 'story', 61.8, NULL),
(38, '2021-04-15 05:13:32', '2021-04-15 05:13:32', 'Ada O\'Conner I', 'Libero laborum suscipit aliquam enim qui.', 'romance', 217.63, NULL),
(39, '2021-04-15 05:13:32', '2021-04-15 05:13:32', 'Alex Gleason DDS', 'Debitis dolor soluta et culpa ea natus deserunt.', 'adventure', 769.89, NULL),
(40, '2021-04-15 05:13:32', '2021-04-15 05:13:32', 'Mr. Larue O\'Keefe', 'Magni eum eos quam accusantium.', 'romance', 124.49, NULL),
(41, '2021-04-15 05:13:32', '2021-04-15 05:13:32', 'Felipe Wisoky', 'Corporis at quisquam aperiam omnis et.', 'horror', 459.61, NULL),
(42, '2021-04-15 05:13:32', '2021-04-15 05:13:32', 'Mallory Waters', 'Voluptatum dolorem similique aut nulla modi omnis ex.', 'adventure', 337.06, NULL),
(43, '2021-04-15 05:13:32', '2021-04-15 05:13:32', 'Mr. Hilario Dach', 'Similique et deserunt beatae culpa adipisci.', 'story', 310.73, NULL),
(44, '2021-04-15 05:13:32', '2021-04-15 05:13:32', 'Kristin White', 'Sequi quisquam dolores necessitatibus aut.', 'adventure', 562, NULL),
(45, '2021-04-15 05:13:32', '2021-04-15 05:13:32', 'Asia Johnston', 'Cum sed impedit qui voluptatum non tempore maiores.', 'horror', 205.79, NULL),
(46, '2021-04-15 05:13:32', '2021-04-15 05:13:32', 'Lilyan Schowalter', 'Quia odio est voluptatum voluptate corrupti.', 'adventure', 849.36, NULL),
(47, '2021-04-15 05:13:32', '2021-04-15 05:13:32', 'Dr. Stanley Beier', 'Pariatur iusto quae vel natus.', 'adventure', 86.66, NULL),
(48, '2021-04-15 05:13:32', '2021-04-15 05:13:32', 'Nora Ortiz', 'Odit est assumenda repellendus autem earum beatae.', 'horror', 20.74, NULL),
(49, '2021-04-15 05:13:32', '2021-04-15 05:13:32', 'Mckenna Cole Sr.', 'Aut et corrupti hic omnis quia.', 'horror', 852.12, NULL),
(50, '2021-04-15 05:13:32', '2021-04-15 05:13:32', 'Jannie Wolf', 'Quibusdam consectetur sed odit vel ipsa repellat rerum.', 'adventure', 868.35, NULL),
(51, '2021-04-15 05:13:32', '2021-04-15 05:13:32', 'Mr. Harmon Hirthe DVM', 'Corporis consequatur iusto ab similique consectetur doloremque dolorem.', 'romance', 715.89, NULL),
(52, '2021-04-15 05:13:32', '2021-04-15 05:13:32', 'Dr. Deon Deckow PhD', 'Est vel perspiciatis fugit quia.', 'romance', 566.01, NULL),
(53, '2021-04-15 05:13:32', '2021-04-15 05:13:32', 'Prof. Jamel Kuphal Sr.', 'Est aliquid aliquid eos adipisci laborum.', 'romance', 785.83, NULL),
(54, '2021-04-15 05:13:32', '2021-04-15 05:13:32', 'Cole Walter Jr.', 'Officia eum eum et recusandae.', 'horror', 83.25, NULL),
(55, '2021-04-15 05:13:32', '2021-04-15 05:13:32', 'Prof. Ansley Pollich IV', 'Debitis qui et ut molestias velit voluptatem minima.', 'adventure', 199.58, NULL),
(56, '2021-04-15 05:13:32', '2021-04-15 05:13:32', 'Aurelie Willms', 'Reiciendis exercitationem eligendi molestias voluptas.', 'horror', 304.36, NULL),
(57, '2021-04-15 05:13:33', '2021-04-15 05:13:33', 'Charlie Runte Sr.', 'Repudiandae voluptates veniam ut perspiciatis commodi perspiciatis perferendis.', 'adventure', 422.19, NULL),
(58, '2021-04-15 05:13:33', '2021-04-15 05:13:33', 'Noelia Dietrich', 'Provident unde et et aut.', 'story', 585.27, NULL),
(59, '2021-04-15 05:13:33', '2021-04-15 05:13:33', 'Bret Schumm', 'Consequuntur porro minima impedit.', 'story', 69.37, NULL),
(60, '2021-04-15 05:13:33', '2021-04-15 05:13:33', 'Dr. Libby Dooley', 'Consequatur voluptas sint quam nam veniam.', 'adventure', 728.55, NULL),
(61, '2021-04-15 05:13:33', '2021-04-15 05:13:33', 'Paris Lockman', 'Odit repudiandae dolor sed repudiandae.', 'romance', 190.99, NULL),
(62, '2021-04-15 05:13:33', '2021-04-15 05:13:33', 'Bianka Howell', 'Non consequatur rerum officiis.', 'story', 244.33, NULL),
(63, '2021-04-15 05:13:33', '2021-04-15 05:13:33', 'Mrs. Jackeline VonRueden', 'Commodi expedita dignissimos omnis blanditiis ullam eum.', 'adventure', 327.79, NULL),
(64, '2021-04-15 05:13:33', '2021-04-15 05:13:33', 'Estel Ledner', 'Qui placeat mollitia nam numquam dolorem.', 'adventure', 87.59, NULL),
(65, '2021-04-15 05:13:33', '2021-04-15 05:13:33', 'Jaylen Mann', 'Et amet placeat ea maxime ratione non qui.', 'adventure', 345.91, NULL),
(66, '2021-04-15 05:13:33', '2021-04-15 05:13:33', 'Sammy Klocko', 'Fugit et sit dolores sunt tempora libero voluptatum.', 'adventure', 568.9, NULL),
(67, '2021-04-15 05:13:33', '2021-04-15 05:13:33', 'Dr. Wendell Buckridge PhD', 'Alias vel asperiores incidunt quia.', 'romance', 255.15, NULL),
(68, '2021-04-15 05:13:33', '2021-04-15 05:13:33', 'Jaycee Roob', 'Deleniti quos et non quasi dignissimos iusto illo rem.', 'story', 942.66, NULL),
(69, '2021-04-15 05:13:34', '2021-04-15 05:13:34', 'Cordia Turcotte', 'Rem enim ut qui error repudiandae qui animi.', 'horror', 718.51, NULL),
(70, '2021-04-15 05:13:34', '2021-04-15 05:13:34', 'Zackery Ortiz', 'Quae sed maiores magnam amet aut et.', 'story', 289.45, NULL),
(71, '2021-04-15 05:13:34', '2021-04-15 05:13:34', 'Amelia Kuhn', 'Rerum ullam nobis molestiae quo doloremque mollitia.', 'romance', 53.12, NULL),
(72, '2021-04-15 05:13:34', '2021-04-15 05:13:34', 'Dr. Irma Cartwright Jr.', 'Necessitatibus saepe veritatis deserunt aut nesciunt atque.', 'romance', 858.64, NULL),
(73, '2021-04-15 05:13:34', '2021-04-15 05:13:34', 'Bella Welch', 'Cumque est dolorem vero occaecati aut cum.', 'story', 870.79, NULL),
(74, '2021-04-15 05:13:34', '2021-04-15 05:13:34', 'Asia O\'Keefe', 'In ut est voluptate natus in aliquam.', 'horror', 932.59, NULL),
(75, '2021-04-15 05:13:34', '2021-04-15 05:13:34', 'Mrs. Candida O\'Hara', 'Dolore sit saepe voluptatibus.', 'adventure', 409.73, NULL),
(76, '2021-04-15 05:13:34', '2021-04-15 05:13:34', 'Mr. Weldon Runolfsdottir DVM', 'Fugiat eos ut quia accusamus.', 'romance', 904.03, NULL),
(77, '2021-04-15 05:13:34', '2021-04-15 05:13:34', 'Rosalyn Hamill', 'Officiis sunt odio eius iusto vel.', 'story', 293.06, NULL),
(78, '2021-04-15 05:13:34', '2021-04-15 05:13:34', 'Doug Hill Jr.', 'Maxime atque et non voluptatum doloremque.', 'horror', 791.11, NULL),
(79, '2021-04-15 05:13:34', '2021-04-15 05:13:34', 'Magali Larkin V', 'Quia mollitia molestiae molestias ex corrupti exercitationem itaque.', 'story', 757.12, NULL),
(80, '2021-04-15 05:13:34', '2021-04-15 05:13:34', 'Valentin Jacobs', 'Dolorem dolorum quia perferendis totam magni cumque et.', 'adventure', 404.42, NULL),
(81, '2021-04-15 05:13:34', '2021-04-15 05:13:34', 'Joey Turcotte', 'Et sit exercitationem quae reprehenderit nulla iusto ex dolor.', 'romance', 372.58, NULL),
(82, '2021-04-15 05:13:34', '2021-04-15 05:13:34', 'Karelle Strosin', 'Aliquam ut saepe ipsa aspernatur quisquam sint minus.', 'adventure', 989.1, NULL),
(83, '2021-04-15 05:13:34', '2021-04-15 05:13:34', 'Judah Kohler', 'Et laudantium voluptatem aut.', 'adventure', 471.14, NULL),
(84, '2021-04-15 05:13:34', '2021-04-15 05:13:34', 'Ms. Prudence Jakubowski', 'Excepturi ut aut doloremque placeat et.', 'romance', 32.55, NULL),
(85, '2021-04-15 05:13:34', '2021-04-15 05:13:34', 'Dr. Norene Nitzsche', 'Explicabo ducimus libero cupiditate tempore.', 'romance', 988.41, NULL),
(86, '2021-04-15 05:13:34', '2021-04-15 05:13:34', 'Daren Predovic', 'Illum dolores eligendi ullam modi neque ullam.', 'adventure', 45.82, NULL),
(87, '2021-04-15 05:13:35', '2021-04-15 05:13:35', 'Tyree Kutch DVM', 'Et natus aliquid dolorum aut qui.', 'horror', 679.14, NULL),
(88, '2021-04-15 05:13:35', '2021-04-15 05:13:35', 'Aiden Botsford', 'Architecto quibusdam et inventore voluptas maxime ea.', 'romance', 671.9, NULL),
(89, '2021-04-15 05:13:35', '2021-04-15 05:13:35', 'Jett Sporer', 'Molestias reprehenderit nemo et illo voluptas ut aut.', 'adventure', 881.73, NULL),
(90, '2021-04-15 05:13:35', '2021-04-15 05:13:35', 'Marta Stracke', 'Magnam est nihil consequuntur voluptatem velit.', 'horror', 749.64, NULL),
(91, '2021-04-15 05:13:35', '2021-04-15 05:13:35', 'Agnes Maggio', 'Minus corrupti est minus ipsam velit dolor perspiciatis incidunt.', 'romance', 512.76, NULL),
(92, '2021-04-15 05:13:35', '2021-04-15 05:13:35', 'Blair Ryan', 'Cupiditate earum error voluptatem libero.', 'horror', 204.62, NULL),
(93, '2021-04-15 05:13:35', '2021-04-15 05:13:35', 'Gabriella Zieme', 'Qui ut qui aliquid illum amet blanditiis eius quis.', 'adventure', 800, NULL),
(94, '2021-04-15 05:13:35', '2021-04-15 05:13:35', 'Hettie Lockman', 'Qui ut animi qui in qui vel et.', 'adventure', 788.86, NULL),
(95, '2021-04-15 05:13:35', '2021-04-15 05:13:35', 'Zackery Fadel DVM', 'Tempora veniam itaque nihil et sequi.', 'adventure', 722.84, NULL),
(96, '2021-04-15 05:13:35', '2021-04-15 05:13:35', 'Harley Leffler', 'Omnis consequatur eaque voluptatem odio.', 'horror', 266.76, NULL),
(97, '2021-04-15 05:13:35', '2021-04-15 05:13:35', 'Jaydon Bednar', 'Quisquam velit quos provident quia facilis voluptate.', 'romance', 269.3, NULL),
(98, '2021-04-15 05:13:35', '2021-04-15 05:13:35', 'Mrs. Daniela Brekke V', 'Aut beatae reiciendis quam consequatur voluptatem harum fuga.', 'story', 944.88, NULL),
(99, '2021-04-15 05:13:35', '2021-04-15 05:13:35', 'Lamont Zboncak', 'Quisquam ut nobis ad velit similique ratione tenetur.', 'romance', 810.92, NULL),
(100, '2021-04-15 05:13:35', '2021-04-15 05:13:35', 'Ms. Sabrina Jerde', 'Eos in nobis non tempora ducimus porro inventore facilis.', 'adventure', 129.49, NULL);

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
(8, '2021_04_14_170041_adds_api_token_to_users_table', 2);

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
(21, 'App\\Models\\User', 1, 'my-app-token', 'f6975e193db2a802cbd9dfd49425ce01447c9b56c57a4636b4da8783e23aa474', '[\"*\"]', NULL, '2021-04-15 12:11:04', '2021-04-15 12:11:04'),
(22, 'App\\Models\\User', 1, 'my-app-token', '20bd705555f053e6b5baf677abc3bc0d08da1572da5efd4119c1f447429ef46f', '[\"*\"]', NULL, '2021-04-15 12:43:44', '2021-04-15 12:43:44'),
(23, 'App\\Models\\User', 1, 'my-app-token', '908eb34e157626fd631586cc2b816868ff78e061b2e85b5d1773ea3977a663ee', '[\"*\"]', NULL, '2021-04-15 13:31:25', '2021-04-15 13:31:25'),
(24, 'App\\Models\\User', 1, 'my-app-token', 'bd8b121592260bc5c1bb35136408f9c2940044ad1916f2bb226b95c597a9b42b', '[\"*\"]', NULL, '2021-04-15 13:42:55', '2021-04-15 13:42:55'),
(25, 'App\\Models\\User', 1, 'my-app-token', '8c2860f07cde6883a457ed39b1cb2669fa3257466c4363e164e6704c8a4d63e7', '[\"*\"]', NULL, '2021-04-15 14:09:55', '2021-04-15 14:09:55'),
(26, 'App\\Models\\User', 1, 'my-app-token', 'ab84a4d9c5595cb40b565a25b9259117d7154a3583a9a4bea2c93247759ef61f', '[\"*\"]', NULL, '2021-04-15 14:11:31', '2021-04-15 14:11:31');

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
  `api_token` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `api_token`) VALUES
(1, 'John Doe', 'johndoe@gmail.com', NULL, '$2y$10$zm6dm0ZY9ac1QHkAE51JWeSAra/nrwTicVHYRwxDmzjM8f14lWAaK', NULL, NULL, '2021-04-14 12:15:54', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_FK` (`user_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
