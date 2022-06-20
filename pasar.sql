-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2022 at 05:04 PM
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
-- Database: `pasar`
--
CREATE DATABASE IF NOT EXISTS `pasar` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pasar`;

-- --------------------------------------------------------

--
-- Table structure for table `dtrans`
--

DROP TABLE IF EXISTS `dtrans`;
CREATE TABLE `dtrans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `htrans_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `bruto` double NOT NULL,
  `round` int(11) NOT NULL,
  `netto` int(11) NOT NULL,
  `parkir` int(11) NOT NULL,
  `subtotal` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
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
-- Table structure for table `htrans`
--

DROP TABLE IF EXISTS `htrans`;
CREATE TABLE `htrans` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pasar_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stand_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transportasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jumlah` bigint(20) NOT NULL,
  `total_harga` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
CREATE TABLE `invoices` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pasar_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stand_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `netto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `listrik` bigint(20) NOT NULL DEFAULT 0,
  `parkir` bigint(20) NOT NULL DEFAULT 0,
  `kuli` bigint(20) NOT NULL DEFAULT 0,
  `total` bigint(20) NOT NULL DEFAULT 0,
  `dibayarkan` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2022_05_13_065710_create_pasars_table', 1),
(5, '2022_05_13_074318_create_roles_table', 1),
(6, '2022_05_13_074513_create_stands_table', 1),
(7, '2022_05_17_085903_create_htrans_table', 1),
(8, '2022_05_17_093927_create_dtrans_table', 1),
(9, '2022_05_20_154501_create_shifs_table', 1),
(10, '2022_06_03_152250_create_nettos_table', 1),
(11, '2022_06_06_161330_create_invoices_table', 1),
(12, '2022_06_12_005945_create_logs_table', 1),
(13, '2022_10_12_000000_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nettos`
--

DROP TABLE IF EXISTS `nettos`;
CREATE TABLE `nettos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nettos`
--

INSERT INTO `nettos` (`id`, `value`, `created_at`, `updated_at`) VALUES
(1, 3000, '2022-06-15 15:03:37', '2022-06-15 15:03:37');

-- --------------------------------------------------------

--
-- Table structure for table `pasars`
--

DROP TABLE IF EXISTS `pasars`;
CREATE TABLE `pasars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pasars`
--

INSERT INTO `pasars` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'pasar 47', 'JL. tanjungsari 47', '2022-06-15 15:03:37', '2022-06-15 15:03:37');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
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
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'SuperAdmin', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(2, 'Admin', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(3, 'Kapten', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(4, 'Checker', '2022-06-15 15:03:37', '2022-06-15 15:03:37');

-- --------------------------------------------------------

--
-- Table structure for table `shifs`
--

DROP TABLE IF EXISTS `shifs`;
CREATE TABLE `shifs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pasar_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shifs`
--

INSERT INTO `shifs` (`id`, `pasar_id`, `number`, `start`, `end`, `created_at`, `updated_at`) VALUES
(1, '1', 1, '2022-05-30 08:00:00', '2022-05-30 15:00:00', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(2, '1', 2, '2022-05-30 15:00:00', '2022-05-30 22:00:00', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(3, '1', 3, '2022-05-30 22:00:00', '2022-05-31 08:00:00', '2022-06-15 15:03:37', '2022-06-15 15:03:37');

-- --------------------------------------------------------

--
-- Table structure for table `stands`
--

DROP TABLE IF EXISTS `stands`;
CREATE TABLE `stands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_stand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pasar_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `badan_usaha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_jualan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stands`
--

INSERT INTO `stands` (`id`, `no_stand`, `pasar_id`, `badan_usaha`, `seller_name`, `Phone`, `jenis_jualan`, `created_at`, `updated_at`) VALUES
(1, 'A01', '1', 'UD.makasar Buah', 'Rustam', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(2, 'A02', '1', 'CV. Alfian Buah', 'H Noer', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(3, 'A03', '1', 'UD. Barokah', 'Hasan', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(4, 'A04', '1', 'UD. Barokah', 'Hasan', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(5, 'A05', '1', 'UD. SPR Buah', 'Supri', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(6, 'A06', '1', 'UD. Lakone Buah', 'Natali', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(7, 'A07', '1', 'UD. Lakone Buah', 'Natali', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(8, 'A08', '1', '', 'Tohir', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(9, 'A09', '1', 'UD. Gangsar Buah', 'Rofiq', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(10, 'A10', '1', 'UD. Anugrah Buah', 'Dul', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(11, 'A11', '1', 'UD. Langgeng Buah', 'EKO', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(12, 'A12', '1', 'UD. Fans Buah', 'Suko', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(13, 'A13', '1', 'UD. Fans Buah', 'Suko', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(14, 'A14', '1', '', 'Jekki', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(15, 'A15', '1', 'UD. Shafira Buah', 'Soleh', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(16, 'A16', '1', 'UD. Shafira Buah', 'Soleh', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(17, 'A17', '1', 'UD. Shafira Buah', 'Soleh', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(18, 'A18', '1', '', 'Sipul', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(19, 'A19', '1', 'UD. Barokah', 'Jubaidah', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(20, 'A20', '1', 'UD. Barokah', 'Jubaidah', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(21, 'A21', '1', 'UD. Fresh 88', 'Balim', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(22, 'A22', '1', 'UD. Fresh 88', 'Balim', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(23, 'A23', '1', 'UD. Fresh 88', 'Sapek', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(24, 'A24', '1', 'UD. Toyo Buah', 'Toyo', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(25, 'A25', '1', 'UD. Timbul Karya', 'Yaya', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(26, 'A26', '1', 'UD. Muncul Abadi', 'Honi', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(27, 'A27', '1', '', 'Maksum', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(28, 'A28', '1', '', 'Dofir', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(29, 'A29', '1', '', 'Arul', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(30, 'A30', '1', '', 'Arul', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(31, 'B01', '1', 'UD.Sari Amertha Wangi', 'Evan', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(32, 'B02', '1', 'UD.Sari Amertha Wangi', 'Wayan', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(33, 'B03', '1', 'UD.Sari Amertha Wangi', 'Wayan', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(34, 'B04A', '1', 'UD. Sari Agung', 'bu Agung', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(35, 'B04', '1', 'UD. Sari Agung', 'bu Agung', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(36, 'B05', '1', 'UD. Sari Agung', 'bu Agung', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(37, 'B06', '1', 'UD. KTA Buah', 'KTA', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(38, 'B07', '1', 'UD. KTA Buah', 'KTA', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(39, 'B08', '1', 'UD. MDS Jaya Buah', 'Tatok', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(40, 'B09', '1', 'UD. MDS Jaya Buah', 'Tatok', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(41, 'B10', '1', 'UD. MDS Jaya Buah', 'Tatok', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(42, 'B11', '1', 'UD. Suartama Buah', 'Suwar', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(43, 'B12', '1', 'UD. Suartama Buah', 'Suwar', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(44, 'B13', '1', 'UD. KTA Buah', 'Dek Agung', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(45, 'B14', '1', 'UD. Rat Sinar', 'Sinar', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(46, 'B15', '1', 'UD. Dasmen Buah', 'DRS', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(47, 'B16', '1', 'UD. Dasmen Buah', 'DRS', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(48, 'B17', '1', 'UD. Ketut Buah', 'KTS', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(49, 'B18', '1', 'Putu Widana', 'Tatang', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(50, 'B19', '1', 'UD. Agus Donis', 'AD', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(51, 'B20', '1', 'UD. Agus Donis', 'AD', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(52, 'B21', '1', 'UD. Kadek Gempa', 'Gempa', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(53, 'B22', '1', '', 'Kadek', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(54, 'B23', '1', 'UD. Udin Buah', 'Udin', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(55, 'B24', '1', 'Green Fruit', 'Nurdin', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(56, 'B25', '1', 'Green Fruit', 'Nurdin', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(57, 'B26', '1', '', '', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(58, 'B27', '1', 'UD. Gembel Berdasi', 'Abas', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(59, 'B28', '1', 'UD. Esa Buah', 'Edi', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(60, 'B29', '1', '', '', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(61, 'B30', '1', '', '', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(62, 'C01', '1', '', '', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(63, 'C02', '1', '', '', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(64, 'C03', '1', 'CV 29 Fresh', '29 Fresh', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(65, 'C04', '1', 'CV 29 Fresh', '29 Fresh', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37'),
(66, 'C05', '1', 'CV 29 Fresh', '29 Fresh', '', '', '2022-06-15 15:03:37', '2022-06-15 15:03:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pasar_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shif` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role_id`, `email`, `pasar_id`, `password`, `shif`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'checker1', '4', 'checker1@gmail.com', '1', '$2y$10$20dNKaah/p.N3GelNUmm6e3t37AcbFpBbZ4V.hmlIL/016W3oL4FS', 1, NULL, '2022-06-15 15:03:37', '2022-06-15 15:03:37', NULL),
(2, 'checker2', '4', 'checker2@gmail.com', '1', '$2y$10$20dNKaah/p.N3GelNUmm6e3t37AcbFpBbZ4V.hmlIL/016W3oL4FS', 2, NULL, '2022-06-15 15:03:37', '2022-06-15 15:03:37', NULL),
(3, 'checker3', '4', 'checker3@gmail.com', '1', '$2y$10$20dNKaah/p.N3GelNUmm6e3t37AcbFpBbZ4V.hmlIL/016W3oL4FS', 3, NULL, '2022-06-15 15:03:37', '2022-06-15 15:03:37', NULL),
(4, 'kapten1', '3', 'kapten1@gmail.com', '1', '$2y$10$20dNKaah/p.N3GelNUmm6e3t37AcbFpBbZ4V.hmlIL/016W3oL4FS', 1, NULL, '2022-06-15 15:03:37', '2022-06-15 15:03:37', NULL),
(5, 'kapten2', '3', 'kapten2@gmail.com', '1', '$2y$10$20dNKaah/p.N3GelNUmm6e3t37AcbFpBbZ4V.hmlIL/016W3oL4FS', 2, NULL, '2022-06-15 15:03:37', '2022-06-15 15:03:37', NULL),
(6, 'kapten3', '3', 'kapten3@gmail.com', '1', '$2y$10$20dNKaah/p.N3GelNUmm6e3t37AcbFpBbZ4V.hmlIL/016W3oL4FS', 3, NULL, '2022-06-15 15:03:37', '2022-06-15 15:03:37', NULL),
(7, 'admin', '2', 'admin@gmail.com', '1', '$2y$10$20dNKaah/p.N3GelNUmm6e3t37AcbFpBbZ4V.hmlIL/016W3oL4FS', NULL, NULL, '2022-06-15 15:03:37', '2022-06-15 15:03:37', NULL),
(8, 'superadmin', '1', 'superadmin@gmail.com', '1', '$2y$10$20dNKaah/p.N3GelNUmm6e3t37AcbFpBbZ4V.hmlIL/016W3oL4FS', NULL, NULL, '2022-06-15 15:03:37', '2022-06-15 15:03:37', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dtrans`
--
ALTER TABLE `dtrans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `htrans`
--
ALTER TABLE `htrans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nettos`
--
ALTER TABLE `nettos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasars`
--
ALTER TABLE `pasars`
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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifs`
--
ALTER TABLE `shifs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stands`
--
ALTER TABLE `stands`
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
-- AUTO_INCREMENT for table `dtrans`
--
ALTER TABLE `dtrans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `nettos`
--
ALTER TABLE `nettos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pasars`
--
ALTER TABLE `pasars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shifs`
--
ALTER TABLE `shifs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stands`
--
ALTER TABLE `stands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
