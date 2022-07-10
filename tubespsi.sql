-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2022 at 05:59 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubespsi`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangs`
--

CREATE TABLE `barangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_penjual` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barangs`
--

INSERT INTO `barangs` (`id`, `nama`, `harga`, `stok`, `deskripsi`, `foto`, `id_penjual`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Leif Hand', 1535, 5, 'Aut inventore velit eos alias qui voluptatem deserunt. Dolore quis dolor illum aut.', 'kim-jong-un-kim-jong-un-no-background-1276369.png', 8, '2022-07-10 08:45:41', '2022-07-10 08:45:41'),
(2, 'Dr. Palma Goyette', 1766, 5, 'Aliquam porro voluptate ullam fugit quos quam nam. Reiciendis dicta facilis voluptatibus cum ut.', 'dress-shirt-t-shirt-clothing-formal-wear-png-favpng-XeqX5MTwrHn10c0bWqdffXyU6_t.jpg', 5, '2022-07-10 08:45:41', '2022-07-10 08:45:41'),
(3, 'Miss Cortney Turner V', 1460, 9, 'Et nostrum aspernatur deserunt. Esse nisi incidunt sint sint et.', 'download.jpg', 3, '2022-07-10 08:45:41', '2022-07-10 08:45:41'),
(4, 'Kamryn Heaney', 1791, 8, 'Voluptatum rem est ea exercitationem illo. Rem expedita eaque unde deleniti repellat.', '92dad096c40fece8c08ec28571cb459b.jpg', 8, '2022-07-10 08:45:41', '2022-07-10 08:45:41'),
(5, 'Murl Wisoky', 1895, 5, 'Id at accusamus velit. Ipsam incidunt ea dignissimos sequi. Enim dolore blanditiis hic est.', 'dress-shirt-t-shirt-clothing-formal-wear-png-favpng-XeqX5MTwrHn10c0bWqdffXyU6_t.jpg', 3, '2022-07-10 08:45:41', '2022-07-10 08:45:41'),
(6, 'Mr. Elliott Balistreri', 1461, 5, 'Amet tempore qui omnis qui voluptatum. Beatae accusamus repellendus dignissimos unde.', 'png-clipart-ascot-tie-clothing-formal-wear-tuxedo-hat-hat-hat-top-hat.png', 8, '2022-07-10 08:45:41', '2022-07-10 08:45:41'),
(7, 'Miss Madisyn Renner', 1726, 10, 'Nobis placeat perferendis inventore et sequi. Quis a pariatur debitis exercitationem ut.', '320fce72-b900-443d-8e87-fb71d39dd588.jpg', 5, '2022-07-10 08:45:41', '2022-07-10 08:45:41'),
(8, 'Savanna Jacobson V', 1503, 8, 'Reiciendis nulla sunt labore temporibus. Qui facilis unde non deserunt. Atque quis consequatur at.', 'e152d6f6e7c0391c8ab708c050455a12.jpg', 3, '2022-07-10 08:45:41', '2022-07-10 08:45:41'),
(9, 'Moses Stanton', 1434, 8, 'Aut quae quo voluptatem omnis et eaque error. Autem et qui omnis ex et nihil.', 'png-clipart-ascot-tie-clothing-formal-wear-tuxedo-hat-hat-hat-top-hat.png', 8, '2022-07-10 08:45:41', '2022-07-10 08:45:41'),
(10, 'Gunner Kerluke', 1626, 2, 'Non impedit ut omnis et atque dolor minus ut. Et tenetur natus dignissimos nobis ut.', 'e152d6f6e7c0391c8ab708c050455a12.jpg', 8, '2022-07-10 08:45:41', '2022-07-10 08:45:41'),
(11, 'Prof. Gerson Smitham DDS', 1271, 10, 'Praesentium laudantium et doloremque iure deleniti. Labore totam sunt consequatur debitis.', '92dad096c40fece8c08ec28571cb459b.jpg', 19, '2022-07-10 08:46:00', '2022-07-10 08:46:00'),
(12, 'Dr. Tad Cartwright I', 1581, 3, 'Recusandae et perspiciatis earum ut. Inventore eligendi id rerum odit commodi.', 'grey_tartan_pants_hm_hnm_1557149215_7cafdfb2_progressive.jpg', 3, '2022-07-10 08:46:00', '2022-07-10 08:46:00'),
(13, 'Leatha Schumm', 1030, 3, 'Similique qui quia sapiente doloremque. Ut eum a id vero impedit error.', 'download.jpg', 17, '2022-07-10 08:46:00', '2022-07-10 08:46:00'),
(14, 'Miss Margaretta Koch DVM', 1220, 8, 'Placeat et veniam tempore molestiae. Eos maiores voluptas possimus totam. Eius sed aut ea id.', '92dad096c40fece8c08ec28571cb459b.jpg', 17, '2022-07-10 08:46:00', '2022-07-10 08:46:00'),
(15, 'Glenda Borer', 1959, 6, 'Praesentium necessitatibus ipsam natus molestiae. Labore iste ut voluptatem molestiae.', 'woman-standing-white-hoodie-hands-pockets-front-camera-posing-clothing-mockup-her-empty-space-design-204679726.jpg', 5, '2022-07-10 08:46:00', '2022-07-10 08:46:00'),
(16, 'Deron Effertz', 1761, 4, 'Expedita ratione voluptate sint sint. Eos nostrum sunt quos qui. Velit aut itaque rerum.', '320fce72-b900-443d-8e87-fb71d39dd588.jpg', 19, '2022-07-10 08:46:00', '2022-07-10 08:46:00'),
(17, 'Vivianne Howell', 1050, 9, 'Deleniti maxime aperiam aut voluptates eius eum aut expedita. Commodi libero ab aliquam.', '92dad096c40fece8c08ec28571cb459b.jpg', 17, '2022-07-10 08:46:00', '2022-07-10 08:46:00'),
(18, 'Austyn Gaylord', 1230, 4, 'Modi deleniti vel eligendi mollitia nemo. Vero dolorum vel nobis possimus non sit nisi.', 'woman-standing-white-hoodie-hands-pockets-front-camera-posing-clothing-mockup-her-empty-space-design-204679726.jpg', 8, '2022-07-10 08:46:00', '2022-07-10 08:46:00'),
(19, 'Missouri Haley', 1208, 4, 'Tempora iure alias similique sit placeat ut mollitia qui. Nulla non cum repudiandae porro.', 'download.jpg', 3, '2022-07-10 08:46:00', '2022-07-10 08:46:00'),
(20, 'Deron Pacocha', 1209, 5, 'Nihil hic ut nisi eligendi provident sed. Ipsum fugit illo odio ut. Totam illo ut et quidem.', '320fce72-b900-443d-8e87-fb71d39dd588.jpg', 19, '2022-07-10 08:46:00', '2022-07-10 08:46:00'),
(21, 'Dr. Neha Stamm', 1713, 8, 'Non sint quod laborum voluptatem animi aliquam. Quo cum ut dolorem.', 'e152d6f6e7c0391c8ab708c050455a12.jpg', 19, '2022-07-10 08:46:04', '2022-07-10 08:46:04'),
(22, 'Fidel Halvorson', 1364, 3, 'Aut quis eos sint natus. Quo amet a quos est quos sed voluptatem.', 'download.jpg', 5, '2022-07-10 08:46:04', '2022-07-10 08:46:04'),
(23, 'Maryse Mueller Jr.', 1861, 2, 'Adipisci cupiditate rerum magnam voluptates. Recusandae id eos accusantium in qui voluptas iure.', 'woman-standing-white-hoodie-hands-pockets-front-camera-posing-clothing-mockup-her-empty-space-design-204679726.jpg', 8, '2022-07-10 08:46:04', '2022-07-10 08:46:04'),
(24, 'Miss Rossie Will V', 1297, 6, 'Ad blanditiis quia possimus occaecati ut non. Dolorem dolor sed ab dolorem cumque aut magni.', 'kim-jong-un-kim-jong-un-no-background-1276369.png', 3, '2022-07-10 08:46:04', '2022-07-10 08:46:04'),
(25, 'Mr. Devyn Treutel MD', 1833, 9, 'Quae magni ut consequatur iste quam. Ullam recusandae odit aspernatur nam quo excepturi vero.', 'e152d6f6e7c0391c8ab708c050455a12.jpg', 3, '2022-07-10 08:46:04', '2022-07-10 08:46:04'),
(26, 'Marcelina Abernathy', 1825, 10, 'Error exercitationem ut deserunt eos. Nihil ullam eaque molestias sunt qui voluptatibus.', '92dad096c40fece8c08ec28571cb459b.jpg', 13, '2022-07-10 08:46:04', '2022-07-10 08:46:04'),
(27, 'Kadin Dach', 1809, 9, 'Fugit quis soluta est perferendis ea nihil. Eos nihil quis sunt vel voluptates.', 'dress-shirt-t-shirt-clothing-formal-wear-png-favpng-XeqX5MTwrHn10c0bWqdffXyU6_t.jpg', 13, '2022-07-10 08:46:04', '2022-07-10 08:46:04'),
(28, 'Dr. Zack Hamill MD', 1670, 3, 'Omnis mollitia sunt et aut et rem. Veritatis eveniet rerum culpa. Non qui sed esse eveniet et.', 'transparent-suit-standing-clothing-formal-wear-gentleman-5d71477731f705.5672627015677049512047.jpg', 19, '2022-07-10 08:46:04', '2022-07-10 08:46:04'),
(29, 'Arely Gutmann', 1913, 8, 'Nostrum blanditiis accusantium optio corrupti. Amet a quia occaecati. Qui ut et dolorum et quidem.', 'homeboy-cargohosen-x-tra-cargo-pants-olive-vorderansicht-0270000_600x600.jpg', 19, '2022-07-10 08:46:04', '2022-07-10 08:46:04'),
(30, 'Mr. Sigmund Casper', 1598, 10, 'Quis rerum et voluptatem vitae quis. Qui dolor aliquam tempora illum.', '320fce72-b900-443d-8e87-fb71d39dd588.jpg', 19, '2022-07-10 08:46:04', '2022-07-10 08:46:04'),
(31, 'Dejuan Wisoky', 1246, 7, 'A labore omnis et corporis aut dolorem aliquam excepturi. Molestiae nisi sed enim et.', 'png-clipart-ascot-tie-clothing-formal-wear-tuxedo-hat-hat-hat-top-hat.png', 19, '2022-07-10 08:46:09', '2022-07-10 08:46:09'),
(32, 'Isaac Emmerich', 1361, 8, 'Quia ullam quod molestias eveniet a repudiandae. Velit aut nam voluptatem nesciunt eligendi omnis.', 'e152d6f6e7c0391c8ab708c050455a12.jpg', 17, '2022-07-10 08:46:09', '2022-07-10 08:46:09'),
(33, 'Jean Senger', 1868, 10, 'Voluptatum libero et incidunt ut qui ullam quaerat. Voluptatem nostrum eum occaecati ut sed.', 'download.jpg', 5, '2022-07-10 08:46:09', '2022-07-10 08:46:09'),
(34, 'Dr. Gunnar Mraz', 1748, 4, 'Perspiciatis minus optio in porro aut saepe. Quia facere commodi sint.', 'homeboy-cargohosen-x-tra-cargo-pants-olive-vorderansicht-0270000_600x600.jpg', 3, '2022-07-10 08:46:09', '2022-07-10 08:46:09'),
(35, 'Natalie Reilly Sr.', 1934, 5, 'Doloribus enim eos est. Velit praesentium corrupti porro qui. Est molestiae laudantium maiores.', 'woman-standing-white-hoodie-hands-pockets-front-camera-posing-clothing-mockup-her-empty-space-design-204679726.jpg', 17, '2022-07-10 08:46:09', '2022-07-10 08:46:09'),
(36, 'Irwin Kuhic III', 1844, 4, 'Qui voluptatum illum sit. Et aut dolores sint autem et totam.', 'e152d6f6e7c0391c8ab708c050455a12.jpg', 26, '2022-07-10 08:46:09', '2022-07-10 08:46:09'),
(37, 'Alden Stamm', 1277, 8, 'Consequatur enim et voluptatem voluptatem hic tempora. Delectus cumque non dolorem.', 'homeboy-cargohosen-x-tra-cargo-pants-olive-vorderansicht-0270000_600x600.jpg', 8, '2022-07-10 08:46:09', '2022-07-10 08:46:09'),
(38, 'Ms. Nyah Schinner', 1882, 7, 'Minima iusto qui ducimus. Nobis facere et voluptas sapiente. Vel earum sunt in ullam eligendi qui.', 'dress-shirt-t-shirt-clothing-formal-wear-png-favpng-XeqX5MTwrHn10c0bWqdffXyU6_t.jpg', 19, '2022-07-10 08:46:09', '2022-07-10 08:46:09'),
(39, 'Armani Aufderhar', 1923, 6, 'Sit fugit nobis cum unde doloribus. Quidem ex repudiandae quae consectetur amet esse.', 'Pengertian-Cardigan-001.jpg', 17, '2022-07-10 08:46:09', '2022-07-10 08:46:09'),
(40, 'Jamey Ward', 1515, 10, 'Suscipit dicta quia doloribus veniam vel aut quo. Aut aspernatur et commodi.', 'png-clipart-ascot-tie-clothing-formal-wear-tuxedo-hat-hat-hat-top-hat.png', 3, '2022-07-10 08:46:09', '2022-07-10 08:46:09');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_transaksi` bigint(20) UNSIGNED NOT NULL,
  `id_barang` bigint(20) UNSIGNED NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_satuan` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `id_transaksi`, `id_barang`, `jumlah`, `harga_satuan`, `created_at`, `updated_at`) VALUES
(1, 2, 37, 7, 1277, '2022-07-10 08:49:18', '2022-07-10 08:49:18'),
(2, 4, 4, 9, 1791, '2022-07-10 08:49:18', '2022-07-10 08:49:18'),
(3, 7, 33, 9, 1868, '2022-07-10 08:49:18', '2022-07-10 08:49:18'),
(4, 4, 10, 8, 1626, '2022-07-10 08:49:18', '2022-07-10 08:49:18'),
(5, 8, 15, 8, 1959, '2022-07-10 08:49:18', '2022-07-10 08:49:18'),
(6, 7, 9, 2, 1434, '2022-07-10 08:49:18', '2022-07-10 08:49:18'),
(7, 1, 34, 1, 1748, '2022-07-10 08:49:18', '2022-07-10 08:49:18'),
(8, 9, 10, 8, 1626, '2022-07-10 08:49:18', '2022-07-10 08:49:18'),
(9, 10, 13, 6, 1030, '2022-07-10 08:49:18', '2022-07-10 08:49:18'),
(10, 8, 6, 8, 1461, '2022-07-10 08:49:18', '2022-07-10 08:49:18'),
(11, 5, 9, 2, 1434, '2022-07-10 08:49:18', '2022-07-10 08:49:18'),
(12, 4, 16, 9, 1761, '2022-07-10 08:49:18', '2022-07-10 08:49:18'),
(13, 7, 6, 8, 1461, '2022-07-10 08:49:18', '2022-07-10 08:49:18'),
(14, 7, 7, 9, 1726, '2022-07-10 08:49:18', '2022-07-10 08:49:18'),
(15, 6, 7, 9, 1726, '2022-07-10 08:49:18', '2022-07-10 08:49:18'),
(16, 6, 9, 2, 1434, '2022-07-10 08:49:18', '2022-07-10 08:49:18'),
(17, 2, 5, 6, 1895, '2022-07-10 08:49:18', '2022-07-10 08:49:18'),
(18, 1, 7, 7, 1726, '2022-07-10 08:49:18', '2022-07-10 08:49:18'),
(19, 4, 38, 2, 1882, '2022-07-10 08:49:18', '2022-07-10 08:49:18'),
(20, 1, 25, 3, 1833, '2022-07-10 08:49:18', '2022-07-10 08:49:18');

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
-- Table structure for table `keranjangs`
--

CREATE TABLE `keranjangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_pembeli` bigint(20) UNSIGNED NOT NULL,
  `id_barang` bigint(20) UNSIGNED NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keranjangs`
--

INSERT INTO `keranjangs` (`id`, `id_pembeli`, `id_barang`, `jumlah`, `created_at`, `updated_at`) VALUES
(1, 35, 7, 7, '2022-07-10 08:48:42', '2022-07-10 08:48:42'),
(2, 22, 4, 9, '2022-07-10 08:48:42', '2022-07-10 08:48:42'),
(3, 7, 16, 9, '2022-07-10 08:48:42', '2022-07-10 08:48:42'),
(4, 39, 7, 9, '2022-07-10 08:48:42', '2022-07-10 08:48:42'),
(5, 24, 20, 6, '2022-07-10 08:48:42', '2022-07-10 08:48:42'),
(6, 23, 9, 2, '2022-07-10 08:48:42', '2022-07-10 08:48:42'),
(7, 28, 1, 5, '2022-07-10 08:48:42', '2022-07-10 08:48:42'),
(8, 33, 21, 9, '2022-07-10 08:48:42', '2022-07-10 08:48:42'),
(9, 23, 10, 8, '2022-07-10 08:48:42', '2022-07-10 08:48:42'),
(10, 23, 12, 4, '2022-07-10 08:48:42', '2022-07-10 08:48:42'),
(11, 24, 15, 8, '2022-07-10 08:48:42', '2022-07-10 08:48:42'),
(12, 33, 13, 6, '2022-07-10 08:48:42', '2022-07-10 08:48:42'),
(13, 15, 25, 3, '2022-07-10 08:48:42', '2022-07-10 08:48:42'),
(14, 23, 36, 9, '2022-07-10 08:48:42', '2022-07-10 08:48:42'),
(15, 7, 37, 7, '2022-07-10 08:48:42', '2022-07-10 08:48:42'),
(16, 28, 6, 8, '2022-07-10 08:48:42', '2022-07-10 08:48:42'),
(17, 33, 38, 2, '2022-07-10 08:48:42', '2022-07-10 08:48:42'),
(18, 24, 34, 1, '2022-07-10 08:48:42', '2022-07-10 08:48:42'),
(19, 35, 5, 6, '2022-07-10 08:48:42', '2022-07-10 08:48:42'),
(20, 33, 33, 9, '2022-07-10 08:48:42', '2022-07-10 08:48:42');

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
(5, '2022_06_14_052115_create_barangs_table', 1),
(6, '2022_07_05_194714_create_keranjangs_table', 1),
(7, '2022_07_07_125213_create_transaksis_table', 1),
(8, '2022_07_07_205750_create_details_table', 1);

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
-- Table structure for table `transaksis`
--

CREATE TABLE `transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_pembeli` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksis`
--

INSERT INTO `transaksis` (`id`, `id_pembeli`, `created_at`, `updated_at`) VALUES
(1, 7, '2022-07-10 08:48:58', '2022-07-10 08:48:58'),
(2, 23, '2022-07-10 08:48:58', '2022-07-10 08:48:58'),
(3, 33, '2022-07-10 08:48:58', '2022-07-10 08:48:58'),
(4, 7, '2022-07-10 08:48:58', '2022-07-10 08:48:58'),
(5, 35, '2022-07-10 08:48:58', '2022-07-10 08:48:58'),
(6, 24, '2022-07-10 08:48:58', '2022-07-10 08:48:58'),
(7, 24, '2022-07-10 08:48:58', '2022-07-10 08:48:58'),
(8, 39, '2022-07-10 08:48:58', '2022-07-10 08:48:58'),
(9, 28, '2022-07-10 08:48:58', '2022-07-10 08:48:58'),
(10, 23, '2022-07-10 08:48:58', '2022-07-10 08:48:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `alamat`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Garett Monahan', 'velda.weimann@example.com', '989 Arvel Stream\nKutchmouth, ID 21521-4696', 1, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PsO7I97KDP', '2022-07-10 08:45:41', '2022-07-10 08:45:41'),
(2, 'Magdalen Crist', 'gorczany.mya@example.org', '155 Bins Tunnel Apt. 225\nNew Eric, WI 26515', 1, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Wx1RIi4aR1', '2022-07-10 08:45:41', '2022-07-10 08:45:41'),
(3, 'Mireya Rice Sr.', 'valerie.kuhn@example.org', '50029 Reilly Plains Suite 632\nWest Aubreymouth, HI 30815-6336', 2, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uy2wwas9vw', '2022-07-10 08:45:41', '2022-07-10 08:45:41'),
(4, 'Prof. Korbin Rath', 'abernathy.tia@example.net', '7606 Devonte Landing Apt. 189\nEast Demarcusshire, OR 34121', 1, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5Qka9mF0Fs', '2022-07-10 08:45:41', '2022-07-10 08:45:41'),
(5, 'Sammie Wiegand', 'philip.willms@example.net', '432 Towne Gardens Apt. 693\nNorth Dasiaport, MO 70770-6959', 2, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nAH3iycOcB', '2022-07-10 08:45:41', '2022-07-10 08:45:41'),
(6, 'Theodora Kris', 'shanahan.name@example.org', '523 Burnice Vista\nNew Kayafort, AR 92774-7855', 1, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XujblUmike', '2022-07-10 08:45:41', '2022-07-10 08:45:41'),
(7, 'Irma Kuvalis', 'coby.collier@example.org', '80842 Domenick Lock Apt. 113\nIdellatown, NC 71841-7340', 3, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ETp68FgWes', '2022-07-10 08:45:41', '2022-07-10 08:45:41'),
(8, 'Vicenta Medhurst', 'owintheiser@example.com', '925 Skiles Vista Apt. 203\nQuigleyburgh, NC 71020-4872', 2, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fQHyaQepF2', '2022-07-10 08:45:41', '2022-07-10 08:45:41'),
(9, 'Erik Von', 'juston14@example.net', '952 McClure Manor Apt. 371\nMaciemouth, SD 95577-8728', 1, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sXN7nQ8DxI', '2022-07-10 08:45:41', '2022-07-10 08:45:41'),
(10, 'Dr. Jordon Oberbrunner DDS', 'xohara@example.com', '8659 Bode Grove\nLake Garlandburgh, WA 45769', 1, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hxARlw1zRH', '2022-07-10 08:45:41', '2022-07-10 08:45:41'),
(11, 'Mr. Seth Shields I', 'felton.howell@example.org', '618 Bernhard Fords\nAricfort, NJ 33361-3678', 1, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PEcb0fvRzX', '2022-07-10 08:46:00', '2022-07-10 08:46:00'),
(12, 'Dillon Gerlach IV', 'clair02@example.net', '5359 Gerhold Mill Apt. 101\nJordibury, AK 62878-7332', 1, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'K5RMwcfHxd', '2022-07-10 08:46:00', '2022-07-10 08:46:00'),
(13, 'Ella Kuhlman', 'sipes.general@example.org', '681 Larkin Garden\nHammesfurt, WY 50230-9710', 2, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DQfADZGCbf', '2022-07-10 08:46:00', '2022-07-10 08:46:00'),
(14, 'Dexter Harris DVM', 'florida.denesik@example.org', '1583 Gleason Spur Suite 495\nLucyhaven, MI 59188-5663', 3, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ui8BydQrEM', '2022-07-10 08:46:00', '2022-07-10 08:46:00'),
(15, 'Mr. Isai Shields', 'lpredovic@example.net', '609 Vincent Village Apt. 848\nRossport, PA 31250', 3, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fhC9UL8B0J', '2022-07-10 08:46:00', '2022-07-10 08:46:00'),
(16, 'Rossie Hettinger', 'cassandra.littel@example.net', '841 Ritchie Freeway Apt. 324\nLake Queenie, TX 88595', 1, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NyVEf3NnqA', '2022-07-10 08:46:00', '2022-07-10 08:46:00'),
(17, 'Dr. Crystal Hills', 'collins.libby@example.com', '82282 Christa Roads\nJackyfurt, TX 00304-3733', 2, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '81OLzWr8qP', '2022-07-10 08:46:00', '2022-07-10 08:46:00'),
(18, 'Dolly Walter', 'upfannerstill@example.net', '229 Agustina Camp Suite 633\nTeaganstad, MI 20707', 1, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sLaVDBzSTI', '2022-07-10 08:46:00', '2022-07-10 08:46:00'),
(19, 'Yasmeen Wolff', 'xhyatt@example.net', '9890 Zane Spurs\nSanfordmouth, DC 40425-9974', 2, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jorGiZOPZo', '2022-07-10 08:46:00', '2022-07-10 08:46:00'),
(20, 'Melvina Gibson', 'koch.reva@example.com', '3426 Ashton Harbors Apt. 126\nGraycefurt, IL 61137', 1, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6baDvAQo9i', '2022-07-10 08:46:00', '2022-07-10 08:46:00'),
(21, 'Earlene Mueller', 'bessie12@example.com', '40099 Mabelle Motorway\nEast Treva, AZ 38198-1675', 2, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cffhTbHbOr', '2022-07-10 08:46:04', '2022-07-10 08:46:04'),
(22, 'Hellen Abshire', 'rebeca.mccullough@example.net', '884 Huel Lights Suite 852\nEast Rhiannahaven, IA 34261-3515', 3, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PIeWt2ceRa', '2022-07-10 08:46:04', '2022-07-10 08:46:04'),
(23, 'Jerel Armstrong V', 'bill36@example.com', '867 Iliana Mountain Suite 677\nGrimesburgh, FL 66197', 3, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EDWgUfy6se', '2022-07-10 08:46:04', '2022-07-10 08:46:04'),
(24, 'Loma Bartell', 'craig42@example.org', '2484 Thompson Square\nWest Wilfridton, UT 49052', 3, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LMbRMntpa9', '2022-07-10 08:46:04', '2022-07-10 08:46:04'),
(25, 'Dr. Xander Raynor', 'nikolaus.kristy@example.net', '4898 Thiel Club Suite 273\nNorth Marta, TX 13508-5191', 1, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Luaqnxh928', '2022-07-10 08:46:04', '2022-07-10 08:46:04'),
(26, 'Declan Windler', 'webster.vonrueden@example.org', '66540 Adrianna Run Apt. 931\nLake Nevaport, WI 96751', 2, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5M4rq3GJCb', '2022-07-10 08:46:04', '2022-07-10 08:46:04'),
(27, 'Dr. Willa Lakin', 'sporer.griffin@example.com', '4644 Destini Field\nEdmundtown, SD 74898', 1, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ppdq68qjsc', '2022-07-10 08:46:04', '2022-07-10 08:46:04'),
(28, 'Robin Gaylord', 'padberg.ima@example.net', '5783 Shyann Wall Apt. 243\nBruenshire, SD 15638-2710', 3, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EIDp2eMH1B', '2022-07-10 08:46:04', '2022-07-10 08:46:04'),
(29, 'Ms. Beatrice Wyman PhD', 'ebergstrom@example.net', '3857 Jana Prairie\nPort Judahshire, UT 96472', 1, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'c90XEMmgeA', '2022-07-10 08:46:04', '2022-07-10 08:46:04'),
(30, 'Mrs. Vicenta Jacobi MD', 'cupton@example.net', '80097 Garrison Dam\nAliaberg, IL 38655-7750', 1, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 's8pTBUi3TD', '2022-07-10 08:46:04', '2022-07-10 08:46:04'),
(31, 'Ms. Samara Brakus Jr.', 'austyn.schmitt@example.net', '6088 Keebler Crescent\nCristhaven, KS 77639-0195', 1, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KjlPViSSbD', '2022-07-10 08:46:09', '2022-07-10 08:46:09'),
(32, 'Kurtis O\'Keefe', 'agreen@example.net', '57025 Lee Drive Suite 384\nEast Marcelmouth, MA 59185-6644', 1, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'D8mmsKH0zV', '2022-07-10 08:46:09', '2022-07-10 08:46:09'),
(33, 'Herta Ruecker', 'demarco97@example.net', '7468 Velma Knoll Suite 482\nLake Kiannabury, CA 78755', 3, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'C4tojeLYg1', '2022-07-10 08:46:09', '2022-07-10 08:46:09'),
(34, 'Ms. Rosetta Kunde', 'izabella68@example.net', '280 Tatum Islands Apt. 865\nKovacekton, TN 44693-6666', 1, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pgO0iziuwH', '2022-07-10 08:46:09', '2022-07-10 08:46:09'),
(35, 'John Paucek', 'molly32@example.com', '15916 Penelope Corners Apt. 700\nSouth Brettshire, IL 39311-0353', 3, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oJwKd7PEUj', '2022-07-10 08:46:09', '2022-07-10 08:46:09'),
(36, 'Broderick Wuckert', 'laurel.mills@example.com', '17705 Jerrell Unions\nNorth Treyville, OH 85815-1555', 1, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4DNBbhXrS1', '2022-07-10 08:46:09', '2022-07-10 08:46:09'),
(37, 'Prof. Silas Hermiston DDS', 'borer.rubie@example.net', '542 Cyril Trace\nJenkinsberg, MS 48064-0007', 1, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pJx2xS6bWA', '2022-07-10 08:46:09', '2022-07-10 08:46:09'),
(38, 'Marcellus Welch', 'beau.murphy@example.org', '40310 Mueller Route\nChazmouth, MN 95886-1686', 1, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'unawzOGXOU', '2022-07-10 08:46:09', '2022-07-10 08:46:09'),
(39, 'Anabel Walker DVM', 'cummings.jerel@example.net', '395 Weber Corners\nMurraytown, OH 00308', 3, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dxeTIhZjzx', '2022-07-10 08:46:09', '2022-07-10 08:46:09'),
(40, 'Rosa Botsford', 'hagenes.lysanne@example.org', '64333 Turner Corner\nEmersonfurt, NE 33062-5166', 1, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'e2Ark00vqZ', '2022-07-10 08:46:09', '2022-07-10 08:46:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `barangs_id_penjual_foreign` (`id_penjual`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `details_id_transaksi_foreign` (`id_transaksi`),
  ADD KEY `details_id_barang_foreign` (`id_barang`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `keranjangs`
--
ALTER TABLE `keranjangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `keranjangs_id_pembeli_foreign` (`id_pembeli`),
  ADD KEY `keranjangs_id_barang_foreign` (`id_barang`);

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
-- Indexes for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksis_id_pembeli_foreign` (`id_pembeli`);

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
-- AUTO_INCREMENT for table `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keranjangs`
--
ALTER TABLE `keranjangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barangs`
--
ALTER TABLE `barangs`
  ADD CONSTRAINT `barangs_id_penjual_foreign` FOREIGN KEY (`id_penjual`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `details`
--
ALTER TABLE `details`
  ADD CONSTRAINT `details_id_barang_foreign` FOREIGN KEY (`id_barang`) REFERENCES `barangs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `details_id_transaksi_foreign` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksis` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `keranjangs`
--
ALTER TABLE `keranjangs`
  ADD CONSTRAINT `keranjangs_id_barang_foreign` FOREIGN KEY (`id_barang`) REFERENCES `barangs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `keranjangs_id_pembeli_foreign` FOREIGN KEY (`id_pembeli`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD CONSTRAINT `transaksis_id_pembeli_foreign` FOREIGN KEY (`id_pembeli`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
