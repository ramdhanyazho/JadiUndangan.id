-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 04, 2024 at 04:33 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_weddingv3`
--

-- --------------------------------------------------------

--
-- Table structure for table `acara`
--

CREATE TABLE `acara` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal_akad` varchar(50) NOT NULL,
  `jam_akad` varchar(50) NOT NULL,
  `tempat_akad` varchar(100) NOT NULL,
  `alamat_akad` text NOT NULL,
  `tanggal_resepsi` varchar(50) NOT NULL,
  `jam_resepsi` varchar(50) NOT NULL,
  `tempat_resepsi` varchar(100) NOT NULL,
  `alamat_resepsi` text NOT NULL,
  `tanggal_syukuran` varchar(100) DEFAULT NULL,
  `jam_syukuran` varchar(100) DEFAULT NULL,
  `tempat_syukuran` varchar(200) DEFAULT NULL,
  `alamat_syukuran` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `acara`
--

INSERT INTO `acara` (`id`, `id_user`, `tanggal_akad`, `jam_akad`, `tempat_akad`, `alamat_akad`, `tanggal_resepsi`, `jam_resepsi`, `tempat_resepsi`, `alamat_resepsi`, `tanggal_syukuran`, `jam_syukuran`, `tempat_syukuran`, `alamat_syukuran`, `created_at`, `updated_at`) VALUES
(1, 1, '2022/12/15', '09:00', 'Kediaman Mempelai Wanita', 'Jl. Medan Merdeka Utara No.3 RT.02/RW.03. Gambir, Jakarta Pusat.', '2022/12/15', '09:00', 'Kediaman Mempelai Pria', 'Jl. Medan Merdeka Utara No.3 RT.02/RW.03. Gambir, Jakarta Pusat.', '0000-00-00', '', '', '', '2020-07-26 14:16:43', '2022-01-16 14:03:46');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`, `nama_lengkap`, `created_at`) VALUES
(1, 'admin', 'fe01ce2a7fbac8fafaed7c982a04e229', '401xdssh@gmail.com', 'MC Project', '2020-08-27 04:38:43'),
(2, 'admin 2', 'fe01ce2a7fbac8fafaed7c982a04e229', 'ramdhanielevent@gmail.com', 'Yuk Nikah Project', '2020-08-27 04:38:43');

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `album` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `id_user`, `album`) VALUES
(383, 1, 'album1'),
(384, 1, 'album2'),
(385, 1, 'album3'),
(386, 1, 'album4'),
(387, 1, 'album5'),
(388, 1, 'album6'),
(389, 1, 'album7'),
(390, 1, 'album8'),
(391, 1, 'album9'),
(392, 1, 'album10');

-- --------------------------------------------------------

--
-- Table structure for table `cerita`
--

CREATE TABLE `cerita` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal_cerita` varchar(50) NOT NULL,
  `judul_cerita` text NOT NULL,
  `isi_cerita` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cerita`
--

INSERT INTO `cerita` (`id`, `id_user`, `tanggal_cerita`, `judul_cerita`, `isi_cerita`, `created_at`, `updated_at`) VALUES
(156, 1, '14 Januari 2020', 'Pertama bertemu', 'Waktu Pertama Kali\r\nKulihat Dirimu Hadir\r\nRasa hati ini inginkan dirimu ', '2021-09-30 14:53:28', '2021-09-30 21:53:28'),
(157, 1, '15 Maret 2020', 'Jatuh Cinta', 'Hati tenang mendengar \r\nsuara indah menyapa\r\nGeloranya hati ini\r\nTak ku sangka..', '2021-09-30 14:53:28', '2021-09-30 21:53:28'),
(158, 1, '1 Mei 2020', 'Ta\'aruf', 'Rasa ini.. tak tertahan..\r\nHati ini..slalu untukmu..', '2021-09-30 14:53:28', '2021-09-30 21:53:28'),
(159, 1, '16 Mei 2020', 'Khitbah', 'Terimalah lagu ini dari orang biasa\r\nTapi cintaku padamu luar biasa\r\nAku tak punya bunga\r\nAku tak punya harta\r\nYang ku punya hanyalah\r\nHati yang setia.. Tulus.. Padamu.. :)', '2021-09-30 14:53:28', '2021-09-30 21:53:28');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `foto_pria` varchar(50) NOT NULL DEFAULT '0',
  `foto_wanita` varchar(50) NOT NULL DEFAULT '0',
  `maps` longtext DEFAULT NULL,
  `video` varchar(100) NOT NULL,
  `kunci` varchar(100) NOT NULL,
  `salam_pembuka` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_wa` varchar(255) DEFAULT NULL,
  `salam_wa_atas` text NOT NULL,
  `salam_wa_bawah` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `id_user`, `foto_pria`, `foto_wanita`, `maps`, `video`, `kunci`, `salam_pembuka`, `token_wa`, `salam_wa_atas`, `salam_wa_bawah`, `created_at`, `updated_at`) VALUES
(1, 1, '1', '1', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7016.972606413561!2d106.82383828363736!3d-6.173800179843814!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f5d6aa94d477%3A0xebf3b9d252c86a26!2sIstana%20Merdeka!5e0!3m2!1sid!2sid!4v1644693929696!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'https://youtu.be/qtvIQ9D99LI', 'mIjh78y8ge13b89d99c1a29132e57d2ca', ' السَّلاَمُ عَلَيْكُمْ وَرَحْمَةُ اللهِ وَبَرَكَاتُهُ\n\nDengan memohon Rahmat dan Ridho Allah SWT, Kami akan menyelenggarakan resepsi pernikahan Putra-Putri kami :	', '', 'Assalamualaikum Wr Wb\nDengan segala kerendahan hati dan syukur atas Karunia Allah SWT\nKami bermaksud mengundang Bapak/Ibu/Saudara(i) pada acara pernikahan kami.', 'Merupakan suatu kebahagiaan bagi Kami apabila Bapak/Ibu/Saudara(i) berkenan hadir untuk memberikan doa restu kepada kami.\nAtas kehadiran dan doa restunya kami ucapkan terimakasih \n\nWassalamualaikum Wr Wb', '2020-07-26 14:16:43', '2022-02-13 02:26:13');

-- --------------------------------------------------------

--
-- Table structure for table `komen`
--

CREATE TABLE `komen` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_komentar` varchar(50) NOT NULL,
  `isi_komentar` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `komen`
--

INSERT INTO `komen` (`id`, `id_user`, `nama_komentar`, `isi_komentar`, `created_at`, `updated_at`) VALUES
(1, 1, 'Aninda Safira', 'Alhamdulilah, selamat atas pernikahan kalian. Semoga pernikahan kalian dilimpahi oleh cinta, kebaikan dan kebahagiaan. Jazakallahu khairan khatira.. ', '2020-08-23 15:10:31', '2021-10-06 22:03:39'),
(2, 1, 'Raisa Andriana', 'Selamat menikah sahabatku, ‘Barakallahu lakum wa baraka alaikum’ ', '2020-08-22 15:12:45', '2020-08-22 01:17:42'),
(3, 1, 'Anisa Rahma', 'Alhamdulillah.. Selamat ya. Semoga Allah Swt selalu melimpahkan rahmatNya untuk pernikahan kalian.', '2020-08-20 15:14:44', '2020-08-22 01:18:37'),
(4, 1, 'Maudy Ayunda', 'MasyaAllah.. Selamat buat kalian berdua. Barakallah', '2020-08-22 15:32:50', '2021-10-06 22:03:39'),
(5, 1, 'Citra Kirana', 'Baarakallahu laka wa baaraka ‘alaika wa jama’a bainakumaa fii khaiir.\r\n\r\nSemoga Allah memberikan keberkahan untukmu dan atasmu, serta semoga Dia mengumpulkan di antara kalian berdua dalam kebaikan. ', '2020-07-26 16:00:41', '2021-10-06 22:03:39'),
(6, 1, 'Nissya Sabyan', 'Semoga pernikahan kalian langgeng dan selalu dinaungi petunjuk Allah dalam setiap langkah.. Aamiin', '2020-07-26 16:03:18', '2021-10-06 22:03:39'),
(177, 1, 'Indra', 'Alhamdulilah, selamat atas pernikahan kalian. Semoga pernikahan kalian dilimpahi oleh cinta, keb', '2021-10-03 05:58:23', '2021-10-03 12:58:23'),
(219, 1, 'Iisjambi', 'Selamat menikah sahabatku, ‘Barakallahu lakum wa baraka alaikum’', '2021-10-07 12:01:01', '2021-10-07 19:01:01'),
(288, 1, 'Bagus Jumawan', 'Selamat menikah sahabatku, ‘Barakallahu lakum wa baraka alaikum’', '2021-11-01 02:43:30', '2021-11-01 09:43:30');

-- --------------------------------------------------------

--
-- Table structure for table `mempelai`
--

CREATE TABLE `mempelai` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_pria` varchar(50) NOT NULL,
  `nama_panggilan_pria` varchar(50) NOT NULL,
  `nama_ibu_pria` varchar(50) NOT NULL,
  `nama_ayah_pria` varchar(50) NOT NULL,
  `nama_wanita` varchar(50) NOT NULL,
  `nama_panggilan_wanita` varchar(50) NOT NULL,
  `nama_ibu_wanita` varchar(50) NOT NULL,
  `nama_ayah_wanita` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mempelai`
--

INSERT INTO `mempelai` (`id`, `id_user`, `nama_pria`, `nama_panggilan_pria`, `nama_ibu_pria`, `nama_ayah_pria`, `nama_wanita`, `nama_panggilan_wanita`, `nama_ibu_wanita`, `nama_ayah_wanita`, `created_at`, `updated_at`) VALUES
(1, 1, 'REYNALDI ADITYA WISNU', 'Rey', 'Raisa Andriana', 'Hamish Daud', 'KHODIJAH DINDA HAUWU', 'Dinda', 'Kartika Putri', 'Usman Bin Yahya', '2020-07-26 14:16:43', '2022-02-13 02:18:56');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `domain` varchar(50) NOT NULL,
  `theme` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `id_user`, `domain`, `theme`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'demo', '2', 1, '2021-10-05 14:16:43', '2022-02-11 15:40:13');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `invoice` varchar(50) NOT NULL,
  `nama_lengkap` varchar(200) DEFAULT NULL,
  `bukti` varchar(200) DEFAULT NULL,
  `nama_bank` varchar(100) NOT NULL,
  `va_number` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `harga` int(11) NOT NULL DEFAULT 0,
  `payment_type` varchar(200) NOT NULL,
  `transaction_status` varchar(100) NOT NULL,
  `transaction_time` datetime DEFAULT NULL,
  `biller_code` varchar(100) DEFAULT NULL,
  `pdf_url` text NOT NULL,
  `status_order` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `id_user`, `invoice`, `nama_lengkap`, `bukti`, `nama_bank`, `va_number`, `status`, `created_at`, `harga`, `payment_type`, `transaction_status`, `transaction_time`, `biller_code`, `pdf_url`, `status_order`) VALUES
(1, 1, '2201132', 'Rey dan Dinda', '2201132.png', 'BNI', '1234567890', 2, '2024-05-04 08:34:31', 100000, 'bank_transfer', 'expire', '2022-01-25 08:39:51', '', 'https://app.midtrans.com/snap/v1/transactions/f706be07-8df8-427a-a89c-1bd600be8414/pdf', '1');

-- --------------------------------------------------------

--
-- Table structure for table `pengunjung`
--

CREATE TABLE `pengunjung` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_pengunjung` varchar(100) NOT NULL,
  `addr` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengunjung`
--

INSERT INTO `pengunjung` (`id`, `id_user`, `nama_pengunjung`, `addr`, `created_at`, `updated_at`) VALUES
(2217, 1, 'Tamu Undangan', '36.69.7.133', '2021-10-16 08:34:09', '2021-10-16 15:34:09'),
(2218, 1, 'Tamu Undangan', '36.69.7.133', '2021-10-16 09:00:18', '2021-10-16 16:00:18'),
(2219, 1, 'Tamu Undangan', '36.69.7.133', '2021-10-16 09:04:12', '2021-10-16 16:04:12'),
(2220, 1, 'Tamu Undangan', '36.69.7.133', '2021-10-16 09:19:45', '2021-10-16 16:19:45'),
(2222, 1, 'Bagus Jumawan', '223.255.227.24', '2021-10-16 20:22:01', '2021-10-17 03:22:01'),
(2223, 1, 'Bagus Jumawan', '36.83.103.253', '2021-10-17 02:08:23', '2021-10-17 09:08:23'),
(2225, 1, 'Tamu Undangan', '36.69.7.90', '2021-10-17 11:11:11', '2021-10-17 18:11:11'),
(2226, 1, 'Bagus Jumawan', '36.69.7.90', '2021-10-17 11:11:34', '2021-10-17 18:11:34'),
(2227, 1, 'Tamu Undangan', '36.69.7.90', '2021-10-17 11:11:49', '2021-10-17 18:11:49'),
(2228, 1, 'Bagus Jumawan', '36.69.7.90', '2021-10-17 11:11:54', '2021-10-17 18:11:54'),
(2229, 1, 'Tamu Undangan', '36.69.7.90', '2021-10-17 11:12:46', '2021-10-17 18:12:46'),
(2231, 1, 'Tamu Undangan', '36.69.7.90', '2021-10-17 11:13:09', '2021-10-17 18:13:09'),
(2232, 1, 'Tamu Undangan', '114.5.146.231', '2021-10-17 15:22:01', '2021-10-17 22:22:01'),
(2233, 1, 'Tamu Undangan', '125.164.4.171', '2021-10-17 17:51:33', '2021-10-18 00:51:33'),
(2234, 1, 'Bagus Jumawan', '36.68.216.64', '2021-10-18 00:25:53', '2021-10-18 07:25:53'),
(2235, 1, 'Bagus Jumawan', '36.68.219.149', '2021-10-18 10:29:26', '2021-10-18 17:29:26'),
(2236, 1, 'Bagus Jumawan', '36.68.219.149', '2021-10-18 10:29:49', '2021-10-18 17:29:49'),
(2237, 1, 'Bagus Jumawan', '36.68.219.149', '2021-10-18 10:32:05', '2021-10-18 17:32:05'),
(2238, 1, 'Bagus Jumawan', '36.68.219.149', '2021-10-18 10:32:13', '2021-10-18 17:32:13'),
(2239, 1, 'Tamu Undangan', '36.68.219.149', '2021-10-18 10:32:35', '2021-10-18 17:32:35'),
(2240, 1, 'Bagus Jumawan', '36.68.219.149', '2021-10-18 11:31:29', '2021-10-18 18:31:29'),
(2241, 1, 'Bagus Jumawan', '140.213.183.50', '2021-10-18 11:33:04', '2021-10-18 18:33:04'),
(2242, 1, 'Bagus Jumawan', '140.213.183.50', '2021-10-18 11:33:20', '2021-10-18 18:33:20'),
(2243, 1, 'Bagus Jumawan', '125.164.145.170', '2021-10-18 11:59:23', '2021-10-18 18:59:23'),
(2244, 1, 'Bagus Jumawan', '101.128.119.214', '2021-10-18 16:37:53', '2021-10-18 23:37:53'),
(2250, 1, 'Bagus Jumawan', '112.78.156.172', '2021-10-19 01:17:41', '2021-10-19 08:17:41'),
(2251, 1, 'Bagus Jumawan', '112.78.156.172', '2021-10-19 01:17:45', '2021-10-19 08:17:45'),
(2252, 1, 'Bagus Jumawan', '112.78.156.172', '2021-10-19 01:25:11', '2021-10-19 08:25:11'),
(2254, 1, 'Bagus Jumawan', '112.78.156.172', '2021-10-19 02:26:28', '2021-10-19 09:26:28'),
(2255, 1, 'Bagus Jumawan', '180.244.234.65', '2021-10-19 12:33:56', '2021-10-19 19:33:56'),
(2256, 1, 'Bagus Jumawan', '182.1.194.156', '2021-10-19 14:18:26', '2021-10-19 21:18:26'),
(2258, 1, 'Bagus Jumawan', '112.215.219.93', '2021-10-19 15:45:10', '2021-10-19 22:45:10'),
(2259, 1, 'Bagus Jumawan', '116.206.13.85', '2021-10-19 16:35:59', '2021-10-19 23:35:59'),
(2260, 1, 'Bagus Jumawan', '185.153.176.36', '2021-10-19 17:17:19', '2021-10-20 00:17:19'),
(2261, 1, 'Bagus Jumawan', '116.206.15.37', '2021-10-19 17:28:23', '2021-10-20 00:28:23'),
(2262, 1, 'Krisna Bayu', '116.206.15.37', '2021-10-19 17:29:39', '2021-10-20 00:29:39'),
(2266, 1, 'Bagus Jumawan', '116.206.14.2', '2021-10-20 01:28:09', '2021-10-20 08:28:09'),
(2267, 1, 'Bagus Jumawan', '114.4.221.133', '2021-10-20 02:57:23', '2021-10-20 09:57:23'),
(2270, 1, 'Bagus Jumawan', '112.215.208.215', '2021-10-20 08:38:50', '2021-10-20 15:38:50'),
(2271, 1, 'Tamu Undangan', '69.63.184.113', '2021-10-20 08:41:01', '2021-10-20 15:41:01'),
(2272, 1, 'Bagus Jumawan', '173.252.87.116', '2021-10-20 11:42:51', '2021-10-20 18:42:51'),
(2273, 1, 'Bagus Jumawan', '114.125.236.24', '2021-10-20 11:42:52', '2021-10-20 18:42:52'),
(2274, 1, 'Bagus Jumawan', '173.252.87.120', '2021-10-20 11:42:53', '2021-10-20 18:42:53'),
(2275, 1, 'Tamu Undangan', '36.85.219.56', '2021-10-20 11:49:05', '2021-10-20 18:49:05'),
(2276, 1, 'Bagus Jumawan', '36.85.219.56', '2021-10-20 12:25:28', '2021-10-20 19:25:28'),
(2280, 1, 'Bagus Jumawan', '36.85.219.56', '2021-10-20 12:44:53', '2021-10-20 19:44:53'),
(2281, 1, 'Bagus Jumawan', '36.85.219.56', '2021-10-20 12:45:21', '2021-10-20 19:45:21'),
(2282, 1, 'Bagus Jumawan', '125.165.108.198', '2021-10-20 12:47:57', '2021-10-20 19:47:57'),
(2283, 1, 'Bagus Jumawan', '125.165.108.198', '2021-10-20 12:49:16', '2021-10-20 19:49:16'),
(2284, 1, 'Krisna Bayu', '125.165.108.198', '2021-10-20 12:49:25', '2021-10-20 19:49:25'),
(2285, 1, 'Tamu Undangan', '125.165.108.198', '2021-10-20 12:49:40', '2021-10-20 19:49:40'),
(2286, 1, 'Krisna Bayu', '125.165.108.198', '2021-10-20 12:49:44', '2021-10-20 19:49:44'),
(2287, 1, 'Bagus Jumawan', '125.165.108.198', '2021-10-20 12:49:46', '2021-10-20 19:49:46'),
(2305, 1, 'Bagus Jumawan', '114.125.244.41', '2021-10-20 19:37:17', '2021-10-21 02:37:17'),
(2306, 1, 'Bagus Jumawan', '36.88.155.81', '2021-10-20 22:28:02', '2021-10-21 05:28:02'),
(2315, 1, 'Tamu Undangan', '66.220.149.118', '2021-10-21 01:32:00', '2021-10-21 08:32:00'),
(2316, 1, 'Bagus Jumawan', '110.137.100.196', '2021-10-21 01:59:52', '2021-10-21 08:59:52'),
(2317, 1, 'Bagus Jumawan', '182.2.4.121', '2021-10-22 01:06:21', '2021-10-22 08:06:21'),
(2318, 1, 'Tamu Undangan', '66.220.149.10', '2021-10-22 02:38:42', '2021-10-22 09:38:42'),
(2319, 1, 'Tamu Undangan', '66.220.149.7', '2021-10-22 02:38:42', '2021-10-22 09:38:42'),
(2320, 1, 'Tamu Undangan', '66.220.149.39', '2021-10-22 02:38:44', '2021-10-22 09:38:44'),
(2321, 1, 'Tamu Undangan', '173.252.95.17', '2021-10-22 05:30:13', '2021-10-22 12:30:13'),
(2322, 1, 'Tamu Undangan', '173.252.95.5', '2021-10-22 05:30:13', '2021-10-22 12:30:13'),
(2323, 1, 'Tamu Undangan', '173.252.95.3', '2021-10-22 05:30:13', '2021-10-22 12:30:13'),
(2324, 1, 'Bagus Jumawan', '125.166.0.252', '2021-10-22 07:58:58', '2021-10-22 14:58:58'),
(2325, 1, 'Bagus Jumawan', '182.2.138.69', '2021-10-22 12:57:36', '2021-10-22 19:57:36'),
(2326, 1, 'Bagus Jumawan', '182.253.151.159', '2021-10-22 13:32:12', '2021-10-22 20:32:12'),
(2327, 1, 'Bagus Jumawan', '182.253.151.159', '2021-10-22 13:33:01', '2021-10-22 20:33:01'),
(2329, 1, 'Tamu Undangan', '36.69.0.226', '2021-10-22 15:21:27', '2021-10-22 22:21:27'),
(2330, 1, 'Tamu Undangan', '40.77.167.67', '2021-10-23 04:03:02', '2021-10-23 11:03:02'),
(2331, 1, 'Bagus Jumawan', '120.188.3.95', '2021-10-23 06:59:39', '2021-10-23 13:59:39'),
(2332, 1, 'Bagus Jumawan', '114.124.204.135', '2021-10-23 08:42:08', '2021-10-23 15:42:08'),
(2333, 1, 'Bagus Jumawan', '182.2.71.28', '2021-10-23 09:57:18', '2021-10-23 16:57:18'),
(2335, 1, 'Bagus Jumawan', '120.188.36.117', '2021-10-24 01:50:23', '2021-10-24 08:50:23'),
(2336, 1, 'Bagus Jumawan', '120.188.36.117', '2021-10-24 01:52:50', '2021-10-24 08:52:50'),
(2337, 1, 'Bagus Jumawan', '120.188.36.117', '2021-10-24 01:56:13', '2021-10-24 08:56:13'),
(2338, 1, 'Tamu Undangan', '120.188.36.117', '2021-10-24 01:56:24', '2021-10-24 08:56:24'),
(2339, 1, 'Tamu Undangan', '120.188.36.117', '2021-10-24 02:01:44', '2021-10-24 09:01:44'),
(2340, 1, 'Bagus Jumawan', '182.1.85.245', '2021-10-24 05:34:18', '2021-10-24 12:34:18'),
(2343, 1, 'Tamu Undangan', '40.77.167.67', '2021-10-24 09:17:40', '2021-10-24 16:17:40'),
(2346, 1, 'Bagus Jumawan', '140.213.190.102', '2021-10-24 13:51:14', '2021-10-24 20:51:14'),
(2348, 1, 'Bagus Jumawan', '182.2.165.205', '2021-10-24 14:54:37', '2021-10-24 21:54:37'),
(2349, 1, 'Bagus Jumawan', '110.138.82.218', '2021-10-24 17:50:20', '2021-10-25 00:50:20'),
(2351, 1, 'Bagus Jumawan', '103.105.35.84', '2021-10-25 09:33:58', '2021-10-25 16:33:58'),
(2352, 1, 'Bagus Jumawan', '172.107.159.195', '2021-10-25 09:48:26', '2021-10-25 16:48:26'),
(2355, 1, 'Bagus Jumawan', '114.125.95.180', '2021-10-25 10:55:23', '2021-10-25 17:55:23'),
(2357, 1, 'Bagus Jumawan', '114.125.95.180', '2021-10-25 10:56:47', '2021-10-25 17:56:47'),
(2360, 1, 'Bagus Jumawan', '114.125.95.180', '2021-10-25 11:11:04', '2021-10-25 18:11:04'),
(2362, 1, 'Bagus Jumawan', '180.253.38.172', '2021-10-25 12:01:32', '2021-10-25 19:01:32'),
(2367, 1, 'Bagus Jumawan', '103.111.141.26', '2021-10-25 13:36:08', '2021-10-25 20:36:08'),
(2368, 1, 'Bagus Jumawan', '173.252.79.4', '2021-10-25 14:45:44', '2021-10-25 21:45:44'),
(2369, 1, 'Bagus Jumawan', '173.252.79.5', '2021-10-25 14:45:46', '2021-10-25 21:45:46'),
(2370, 1, 'Bagus Jumawan', '173.252.79.4', '2021-10-25 14:45:49', '2021-10-25 21:45:49'),
(2371, 1, 'Bagus Jumawan', '173.252.79.111', '2021-10-25 14:45:50', '2021-10-25 21:45:50'),
(2372, 1, 'Bagus Jumawan', '173.252.79.1', '2021-10-25 14:51:55', '2021-10-25 21:51:55'),
(2373, 1, 'Bagus Jumawan', '180.251.87.193', '2021-10-25 16:02:56', '2021-10-25 23:02:56'),
(2374, 1, 'Bagus Jumawan', '101.255.118.138', '2021-10-25 22:39:50', '2021-10-26 05:39:50'),
(2375, 1, 'Bagus Jumawan', '31.13.103.12', '2021-10-25 22:41:21', '2021-10-26 05:41:21'),
(2376, 1, 'Bagus Jumawan', '31.13.103.8', '2021-10-25 22:41:21', '2021-10-26 05:41:21'),
(2377, 1, 'Bagus Jumawan', '31.13.103.120', '2021-10-25 22:41:23', '2021-10-26 05:41:23'),
(2378, 1, 'Bagus Jumawan', '140.213.43.55', '2021-10-25 22:44:14', '2021-10-26 05:44:14'),
(2379, 1, 'Bagus Jumawan', '180.243.10.88', '2021-10-25 22:59:59', '2021-10-26 05:59:59'),
(2380, 1, 'Bagus Jumawan', '36.83.113.156', '2021-10-25 23:02:50', '2021-10-26 06:02:50'),
(2381, 1, 'Bagus Jumawan', '116.206.8.60', '2021-10-25 23:46:15', '2021-10-26 06:46:15'),
(2382, 1, 'Bagus Jumawan', '36.81.22.41', '2021-10-25 23:55:22', '2021-10-26 06:55:22'),
(2383, 1, 'Bagus Jumawan', '36.65.171.160', '2021-10-26 00:01:14', '2021-10-26 07:01:14'),
(2384, 1, 'Bagus Jumawan', '66.96.225.112', '2021-10-26 00:01:40', '2021-10-26 07:01:40'),
(2385, 1, 'Bagus Jumawan', '112.215.154.57', '2021-10-26 00:02:55', '2021-10-26 07:02:55'),
(2386, 1, 'Bagus Jumawan', '66.96.225.112', '2021-10-26 00:03:22', '2021-10-26 07:03:22'),
(2387, 1, 'Bagus Jumawan', '125.165.106.165', '2021-10-26 00:06:59', '2021-10-26 07:06:59'),
(2388, 1, 'Bagus Jumawan', '110.138.149.83', '2021-10-26 00:07:12', '2021-10-26 07:07:12'),
(2389, 1, 'Bagus Jumawan', '125.165.106.165', '2021-10-26 00:07:56', '2021-10-26 07:07:56'),
(2390, 1, 'Bagus Jumawan', '112.215.245.155', '2021-10-26 00:08:41', '2021-10-26 07:08:41'),
(2391, 1, 'Bagus Jumawan', '112.215.245.155', '2021-10-26 00:09:44', '2021-10-26 07:09:44'),
(2392, 1, 'Bagus Jumawan', '182.2.170.185', '2021-10-26 00:21:21', '2021-10-26 07:21:21'),
(2393, 1, 'Bagus Jumawan', '101.128.118.134', '2021-10-26 00:25:17', '2021-10-26 07:25:17'),
(2394, 1, 'Bagus Jumawan', '202.152.36.34', '2021-10-26 00:26:18', '2021-10-26 07:26:18'),
(2395, 1, 'Bagus Jumawan', '202.152.36.34', '2021-10-26 00:26:32', '2021-10-26 07:26:32'),
(2396, 1, 'Bagus Jumawan', '114.4.79.70', '2021-10-26 00:26:59', '2021-10-26 07:26:59'),
(2397, 1, 'Bagus Jumawan', '180.252.169.234', '2021-10-26 00:27:52', '2021-10-26 07:27:52'),
(2398, 1, 'Bagus Jumawan', '103.78.115.81', '2021-10-26 00:28:20', '2021-10-26 07:28:20'),
(2399, 1, 'Bagus Jumawan', '182.2.228.88', '2021-10-26 00:34:28', '2021-10-26 07:34:28'),
(2400, 1, 'Bagus Jumawan', '110.139.62.7', '2021-10-26 00:38:10', '2021-10-26 07:38:10'),
(2401, 1, 'Bagus Jumawan', '103.85.123.178', '2021-10-26 00:39:00', '2021-10-26 07:39:00'),
(2402, 1, 'Bagus Jumawan', '110.139.62.7', '2021-10-26 00:41:00', '2021-10-26 07:41:00'),
(2403, 1, 'Bagus Jumawan', '110.139.62.7', '2021-10-26 00:41:01', '2021-10-26 07:41:01'),
(2404, 1, 'Bagus Jumawan', '114.124.131.42', '2021-10-26 00:42:02', '2021-10-26 07:42:02'),
(2405, 1, 'Bagus Jumawan', '114.125.14.30', '2021-10-26 00:44:15', '2021-10-26 07:44:15'),
(2406, 1, 'Bagus Jumawan', '182.1.27.122', '2021-10-26 00:46:41', '2021-10-26 07:46:41'),
(2407, 1, 'Bagus Jumawan', '180.249.164.105', '2021-10-26 00:50:37', '2021-10-26 07:50:37'),
(2408, 1, 'Bagus Jumawan', '180.249.164.105', '2021-10-26 00:50:56', '2021-10-26 07:50:56'),
(2409, 1, 'Bagus Jumawan', '180.249.164.105', '2021-10-26 00:51:12', '2021-10-26 07:51:12'),
(2410, 1, 'Bagus Jumawan', '180.249.164.105', '2021-10-26 00:51:13', '2021-10-26 07:51:13'),
(2411, 1, 'Bagus Jumawan', '125.164.232.15', '2021-10-26 00:56:08', '2021-10-26 07:56:08'),
(2412, 1, 'Bagus Jumawan', '180.253.186.124', '2021-10-26 00:56:51', '2021-10-26 07:56:51'),
(2413, 1, 'Bagus Jumawan', '36.75.67.99', '2021-10-26 01:00:04', '2021-10-26 08:00:04'),
(2414, 1, 'Bagus Jumawan', '112.215.65.80', '2021-10-26 01:02:12', '2021-10-26 08:02:12'),
(2415, 1, 'Bagus Jumawan', '36.81.8.156', '2021-10-26 01:07:40', '2021-10-26 08:07:40'),
(2416, 1, 'Bagus Jumawan', '182.253.197.50', '2021-10-26 01:07:48', '2021-10-26 08:07:48'),
(2417, 1, 'Bagus Jumawan', '180.253.184.169', '2021-10-26 01:07:53', '2021-10-26 08:07:53'),
(2418, 1, 'Bagus Jumawan', '182.1.110.183', '2021-10-26 01:19:52', '2021-10-26 08:19:52'),
(2419, 1, 'Bagus Jumawan', '103.82.15.171', '2021-10-26 01:21:12', '2021-10-26 08:21:12'),
(2420, 1, 'Bagus Jumawan', '103.82.15.171', '2021-10-26 01:22:00', '2021-10-26 08:22:00'),
(2421, 1, 'Bagus Jumawan', '66.96.225.92', '2021-10-26 01:22:14', '2021-10-26 08:22:14'),
(2422, 1, 'Bagus Jumawan', '182.1.95.227', '2021-10-26 01:24:23', '2021-10-26 08:24:23'),
(2423, 1, 'Bagus Jumawan', '140.213.64.158', '2021-10-26 01:26:01', '2021-10-26 08:26:01'),
(2424, 1, 'Bagus Jumawan', '140.213.33.210', '2021-10-26 01:26:33', '2021-10-26 08:26:33'),
(2425, 1, 'Bagus Jumawan', '125.164.16.151', '2021-10-26 01:27:45', '2021-10-26 08:27:45'),
(2426, 1, 'Bagus Jumawan', '140.213.64.158', '2021-10-26 01:27:48', '2021-10-26 08:27:48'),
(2427, 1, 'Bagus Jumawan', '140.213.64.158', '2021-10-26 01:34:02', '2021-10-26 08:34:02'),
(2428, 1, 'Bagus Jumawan', '140.213.35.186', '2021-10-26 01:35:46', '2021-10-26 08:35:46'),
(2429, 1, 'Bagus Jumawan', '140.213.35.186', '2021-10-26 01:36:47', '2021-10-26 08:36:47'),
(2430, 1, 'Bagus Jumawan', '182.0.211.63', '2021-10-26 01:38:24', '2021-10-26 08:38:24'),
(2431, 1, 'Bagus Jumawan', '140.213.218.197', '2021-10-26 01:40:03', '2021-10-26 08:40:03'),
(2432, 1, 'Bagus Jumawan', '182.1.83.222', '2021-10-26 01:42:42', '2021-10-26 08:42:42'),
(2433, 1, 'Bagus Jumawan', '182.1.83.222', '2021-10-26 01:44:11', '2021-10-26 08:44:11'),
(2434, 1, 'Bagus Jumawan', '125.165.111.24', '2021-10-26 01:44:48', '2021-10-26 08:44:48'),
(2435, 1, 'Bagus Jumawan', '182.0.236.14', '2021-10-26 01:45:25', '2021-10-26 08:45:25'),
(2436, 1, 'Bagus Jumawan', '114.125.249.209', '2021-10-26 01:46:00', '2021-10-26 08:46:00'),
(2437, 1, 'Bagus Jumawan', '202.169.36.172', '2021-10-26 01:46:48', '2021-10-26 08:46:48'),
(2438, 1, 'Bagus Jumawan', '182.253.80.106', '2021-10-26 01:46:56', '2021-10-26 08:46:56'),
(2439, 1, 'Bagus Jumawan', '202.169.36.172', '2021-10-26 01:47:00', '2021-10-26 08:47:00'),
(2440, 1, 'Bagus Jumawan', '36.67.234.41', '2021-10-26 01:50:19', '2021-10-26 08:50:19'),
(2441, 1, 'Bagus Jumawan', '114.5.104.255', '2021-10-26 01:55:59', '2021-10-26 08:55:59'),
(2442, 1, 'Bagus Jumawan', '125.164.7.228', '2021-10-26 01:56:08', '2021-10-26 08:56:08'),
(2443, 1, 'Bagus Jumawan', '125.164.7.228', '2021-10-26 01:57:53', '2021-10-26 08:57:53'),
(2444, 1, 'Bagus Jumawan', '125.164.7.228', '2021-10-26 02:03:22', '2021-10-26 09:03:22'),
(2445, 1, 'Bagus Jumawan', '66.96.238.44', '2021-10-26 02:03:35', '2021-10-26 09:03:35'),
(2446, 1, 'Bagus Jumawan', '180.253.84.189', '2021-10-26 02:06:19', '2021-10-26 09:06:19'),
(2447, 1, 'Bagus Jumawan', '203.57.25.106', '2021-10-26 02:06:27', '2021-10-26 09:06:27'),
(2448, 1, 'Bagus Jumawan', '159.223.82.28', '2021-10-26 02:11:13', '2021-10-26 09:11:13'),
(2449, 1, 'Bagus Jumawan', '110.137.192.21', '2021-10-26 02:16:09', '2021-10-26 09:16:09'),
(2450, 1, 'Bagus Jumawan', '114.79.22.85', '2021-10-26 02:19:09', '2021-10-26 09:19:09'),
(2451, 1, 'Bagus Jumawan', '69.171.231.117', '2021-10-26 02:20:45', '2021-10-26 09:20:45'),
(2452, 1, 'Bagus Jumawan', '140.213.7.47', '2021-10-26 02:24:50', '2021-10-26 09:24:50'),
(2453, 1, 'Bagus Jumawan', '116.206.42.101', '2021-10-26 02:31:21', '2021-10-26 09:31:21'),
(2454, 1, 'Bagus Jumawan', '116.206.42.101', '2021-10-26 02:33:36', '2021-10-26 09:33:36'),
(2455, 1, 'Bagus Jumawan', '116.206.42.101', '2021-10-26 02:35:54', '2021-10-26 09:35:54'),
(2456, 1, 'Bagus Jumawan', '116.206.42.101', '2021-10-26 02:39:49', '2021-10-26 09:39:49'),
(2457, 1, 'Bagus Jumawan', '114.125.30.172', '2021-10-26 02:45:13', '2021-10-26 09:45:13'),
(2458, 1, 'Bagus Jumawan', '114.125.30.172', '2021-10-26 02:46:10', '2021-10-26 09:46:10'),
(2459, 1, 'Bagus Jumawan', '182.1.22.237', '2021-10-26 02:46:38', '2021-10-26 09:46:38'),
(2460, 1, 'Bagus Jumawan', '115.178.249.243', '2021-10-26 02:49:31', '2021-10-26 09:49:31'),
(2461, 1, 'Bagus Jumawan', '103.105.28.129', '2021-10-26 02:50:15', '2021-10-26 09:50:15'),
(2462, 1, 'Bagus Jumawan', '114.125.30.172', '2021-10-26 02:50:56', '2021-10-26 09:50:56'),
(2463, 1, 'Bagus Jumawan', '114.125.30.172', '2021-10-26 02:51:40', '2021-10-26 09:51:40'),
(2464, 1, 'Bagus Jumawan', '114.125.30.172', '2021-10-26 02:52:03', '2021-10-26 09:52:03'),
(2465, 1, 'Bagus Jumawan', '182.1.33.189', '2021-10-26 02:52:18', '2021-10-26 09:52:18'),
(2466, 1, 'Bagus Jumawan', '182.1.69.105', '2021-10-26 02:54:02', '2021-10-26 09:54:02'),
(2467, 1, 'Bagus Jumawan', '182.1.33.189', '2021-10-26 02:54:05', '2021-10-26 09:54:05'),
(2468, 1, 'Bagus Jumawan', '125.164.6.29', '2021-10-26 02:57:01', '2021-10-26 09:57:01'),
(2469, 1, 'Bagus Jumawan', '180.247.112.236', '2021-10-26 02:57:41', '2021-10-26 09:57:41'),
(2470, 1, 'Bagus Jumawan', '114.125.215.51', '2021-10-26 02:59:03', '2021-10-26 09:59:03'),
(2471, 1, 'Bagus Jumawan', '182.0.210.22', '2021-10-26 03:00:11', '2021-10-26 10:00:11'),
(2472, 1, 'Bagus Jumawan', '103.167.114.254', '2021-10-26 03:03:27', '2021-10-26 10:03:27'),
(2473, 1, 'Bagus Jumawan', '114.5.240.195', '2021-10-26 03:05:46', '2021-10-26 10:05:46'),
(2474, 1, 'Bagus Jumawan', '125.164.21.45', '2021-10-26 03:06:17', '2021-10-26 10:06:17'),
(2475, 1, 'Bagus Jumawan', '182.0.175.195', '2021-10-26 03:10:27', '2021-10-26 10:10:27'),
(2476, 1, 'Bagus Jumawan', '116.197.131.218', '2021-10-26 03:10:41', '2021-10-26 10:10:41'),
(2477, 1, 'Bagus Jumawan', '116.197.131.218', '2021-10-26 03:12:22', '2021-10-26 10:12:22'),
(2478, 1, 'Bagus Jumawan', '114.122.74.15', '2021-10-26 03:17:50', '2021-10-26 10:17:50'),
(2479, 1, 'Bagus Jumawan', '114.125.218.159', '2021-10-26 03:22:04', '2021-10-26 10:22:04'),
(2480, 1, 'Bagus Jumawan', '116.197.131.218', '2021-10-26 03:22:39', '2021-10-26 10:22:39'),
(2481, 1, 'Bagus Jumawan', '116.197.131.218', '2021-10-26 03:22:40', '2021-10-26 10:22:40'),
(2482, 1, 'Bagus Jumawan', '114.125.218.159', '2021-10-26 03:22:52', '2021-10-26 10:22:52'),
(2483, 1, 'Bagus Jumawan', '43.247.37.82', '2021-10-26 03:23:57', '2021-10-26 10:23:57'),
(2484, 1, 'Bagus Jumawan', '180.252.162.27', '2021-10-26 03:25:05', '2021-10-26 10:25:05'),
(2485, 1, 'Bagus Jumawan', '43.247.37.82', '2021-10-26 03:31:22', '2021-10-26 10:31:22'),
(2486, 1, 'Bagus Jumawan', '140.213.150.138', '2021-10-26 03:34:37', '2021-10-26 10:34:37'),
(2487, 1, 'Bagus Jumawan', '140.213.150.138', '2021-10-26 03:34:52', '2021-10-26 10:34:52'),
(2488, 1, 'Krisna Bayu', '43.247.37.82', '2021-10-26 03:36:30', '2021-10-26 10:36:30'),
(2489, 1, 'Tamu Undangan', '43.247.37.82', '2021-10-26 03:36:37', '2021-10-26 10:36:37'),
(2490, 1, 'Bagus Jumawan', '103.106.158.224', '2021-10-26 03:37:20', '2021-10-26 10:37:20'),
(2491, 1, 'Bagus Jumawan', '103.144.170.39', '2021-10-26 03:41:26', '2021-10-26 10:41:26'),
(2492, 1, 'Bagus Jumawan', '114.125.57.241', '2021-10-26 03:41:34', '2021-10-26 10:41:34'),
(2493, 1, 'Bagus Jumawan', '114.125.57.241', '2021-10-26 03:42:07', '2021-10-26 10:42:07'),
(2494, 1, 'Bagus Jumawan', '103.247.196.143', '2021-10-26 03:42:20', '2021-10-26 10:42:20'),
(2495, 1, 'Bagus Jumawan', '114.125.57.241', '2021-10-26 03:42:21', '2021-10-26 10:42:21'),
(2496, 1, 'Bagus Jumawan', '36.74.43.67', '2021-10-26 03:47:16', '2021-10-26 10:47:16'),
(2497, 1, 'Bagus Jumawan', '36.74.43.67', '2021-10-26 03:47:17', '2021-10-26 10:47:17'),
(2498, 1, 'Bagus Jumawan', '223.255.230.7', '2021-10-26 03:51:22', '2021-10-26 10:51:22'),
(2499, 1, 'Bagus Jumawan', '116.197.131.218', '2021-10-26 03:58:43', '2021-10-26 10:58:43'),
(2500, 1, 'Bagus Jumawan', '114.125.30.172', '2021-10-26 04:03:09', '2021-10-26 11:03:09'),
(2501, 1, 'Bagus Jumawan', '140.213.150.231', '2021-10-26 04:06:14', '2021-10-26 11:06:14'),
(2502, 1, 'Bagus Jumawan', '103.125.39.31', '2021-10-26 04:10:42', '2021-10-26 11:10:42'),
(2503, 1, 'Bagus Jumawan', '182.1.79.177', '2021-10-26 04:12:16', '2021-10-26 11:12:16'),
(2504, 1, 'Bagus Jumawan', '180.253.165.54', '2021-10-26 04:20:07', '2021-10-26 11:20:07'),
(2505, 1, 'Bagus Jumawan', '114.122.15.19', '2021-10-26 04:22:53', '2021-10-26 11:22:53'),
(2506, 1, 'Bagus Jumawan', '182.253.46.203', '2021-10-26 04:24:37', '2021-10-26 11:24:37'),
(2507, 1, 'Bagus Jumawan', '182.253.46.203', '2021-10-26 04:25:29', '2021-10-26 11:25:29'),
(2508, 1, 'Bagus Jumawan', '112.215.171.169', '2021-10-26 04:26:08', '2021-10-26 11:26:08'),
(2509, 1, 'Bagus Jumawan', '182.253.46.203', '2021-10-26 04:26:43', '2021-10-26 11:26:43'),
(2510, 1, 'Bagus Jumawan', '182.253.46.203', '2021-10-26 04:27:28', '2021-10-26 11:27:28'),
(2511, 1, 'Bagus Jumawan', '182.253.46.203', '2021-10-26 04:28:12', '2021-10-26 11:28:12'),
(2512, 1, 'Bagus Jumawan', '36.67.234.41', '2021-10-26 04:35:22', '2021-10-26 11:35:22'),
(2513, 1, 'Bagus Jumawan', '180.214.240.254', '2021-10-26 04:38:59', '2021-10-26 11:38:59'),
(2514, 1, 'Bagus Jumawan', '180.241.47.123', '2021-10-26 04:39:02', '2021-10-26 11:39:02'),
(2515, 1, 'Bagus Jumawan', '125.160.64.40', '2021-10-26 04:39:08', '2021-10-26 11:39:08'),
(2516, 1, 'Bagus Jumawan', '103.100.128.89', '2021-10-26 04:39:14', '2021-10-26 11:39:14'),
(2517, 1, 'Bagus Jumawan', '182.1.186.236', '2021-10-26 04:52:34', '2021-10-26 11:52:34'),
(2518, 1, 'Bagus Jumawan', '180.252.120.39', '2021-10-26 04:57:34', '2021-10-26 11:57:34'),
(2519, 1, 'Bagus Jumawan', '180.246.148.5', '2021-10-26 05:05:03', '2021-10-26 12:05:03'),
(2520, 1, 'Bagus Jumawan', '203.190.246.124', '2021-10-26 05:07:55', '2021-10-26 12:07:55'),
(2521, 1, 'Bagus Jumawan', '36.82.18.233', '2021-10-26 05:17:34', '2021-10-26 12:17:34'),
(2522, 1, 'Bagus Jumawan', '114.124.205.162', '2021-10-26 05:22:14', '2021-10-26 12:22:14'),
(2523, 1, 'Bagus Jumawan', '180.241.242.93', '2021-10-26 05:26:45', '2021-10-26 12:26:45'),
(2524, 1, 'Bagus Jumawan', '36.82.99.133', '2021-10-26 05:28:32', '2021-10-26 12:28:32'),
(2525, 1, 'Bagus Jumawan', '110.138.95.95', '2021-10-26 05:30:30', '2021-10-26 12:30:30'),
(2526, 1, 'Bagus Jumawan', '114.122.37.194', '2021-10-26 05:30:45', '2021-10-26 12:30:45'),
(2527, 1, 'Bagus Jumawan', '110.138.95.95', '2021-10-26 05:32:08', '2021-10-26 12:32:08'),
(2528, 1, 'Bagus Jumawan', '36.68.222.170', '2021-10-26 05:48:47', '2021-10-26 12:48:47'),
(2529, 1, 'Bagus Jumawan', '114.122.231.232', '2021-10-26 05:52:45', '2021-10-26 12:52:45'),
(2530, 1, 'Bagus Jumawan', '180.254.171.157', '2021-10-26 05:58:57', '2021-10-26 12:58:57'),
(2531, 1, 'Bagus Jumawan', '182.3.69.6', '2021-10-26 06:01:17', '2021-10-26 13:01:17'),
(2532, 1, 'Bagus Jumawan', '182.3.69.6', '2021-10-26 06:02:15', '2021-10-26 13:02:15'),
(2533, 1, 'Bagus Jumawan', '103.111.102.30', '2021-10-26 06:02:44', '2021-10-26 13:02:44'),
(2534, 1, 'Bagus Jumawan', '103.111.102.30', '2021-10-26 06:04:27', '2021-10-26 13:04:27'),
(2535, 1, 'Bagus Jumawan', '114.79.3.191', '2021-10-26 06:05:23', '2021-10-26 13:05:23'),
(2536, 1, 'Bagus Jumawan', '116.206.42.75', '2021-10-26 06:07:07', '2021-10-26 13:07:07'),
(2537, 1, 'Bagus Jumawan', '36.68.222.170', '2021-10-26 06:08:09', '2021-10-26 13:08:09'),
(2538, 1, 'Bagus Jumawan', '36.90.152.78', '2021-10-26 06:12:30', '2021-10-26 13:12:30'),
(2539, 1, 'Bagus Jumawan', '45.127.204.222', '2021-10-26 06:16:28', '2021-10-26 13:16:28'),
(2540, 1, 'Bagus Jumawan', '45.127.204.222', '2021-10-26 06:20:48', '2021-10-26 13:20:48'),
(2541, 1, 'Bagus Jumawan', '36.71.140.76', '2021-10-26 06:26:34', '2021-10-26 13:26:34'),
(2542, 1, 'Bagus Jumawan', '180.244.133.141', '2021-10-26 06:29:20', '2021-10-26 13:29:20'),
(2543, 1, 'Bagus Jumawan', '103.156.88.4', '2021-10-26 06:34:37', '2021-10-26 13:34:37'),
(2544, 1, 'Bagus Jumawan', '103.10.67.149', '2021-10-26 06:36:34', '2021-10-26 13:36:34'),
(2545, 1, 'Bagus Jumawan', '114.124.245.245', '2021-10-26 06:38:09', '2021-10-26 13:38:09'),
(2546, 1, 'Bagus Jumawan', '182.1.89.70', '2021-10-26 06:39:21', '2021-10-26 13:39:21'),
(2547, 1, 'Bagus Jumawan', '182.2.42.227', '2021-10-26 06:40:51', '2021-10-26 13:40:51'),
(2548, 1, 'Bagus Jumawan', '114.122.13.240', '2021-10-26 06:40:53', '2021-10-26 13:40:53'),
(2549, 1, 'Bagus Jumawan', '182.2.42.227', '2021-10-26 06:41:14', '2021-10-26 13:41:14'),
(2550, 1, 'Bagus Jumawan', '112.215.210.179', '2021-10-26 06:55:58', '2021-10-26 13:55:58'),
(2551, 1, 'Bagus Jumawan', '112.215.210.179', '2021-10-26 06:57:48', '2021-10-26 13:57:48'),
(2552, 1, 'Bagus Jumawan', '120.188.85.35', '2021-10-26 07:05:26', '2021-10-26 14:05:26'),
(2553, 1, 'Bagus Jumawan', '36.69.14.119', '2021-10-26 07:06:24', '2021-10-26 14:06:24'),
(2554, 1, 'Bagus Jumawan', '34.101.143.248', '2021-10-26 07:08:14', '2021-10-26 14:08:14'),
(2555, 1, 'Bagus Jumawan', '180.252.84.195', '2021-10-26 07:08:21', '2021-10-26 14:08:21'),
(2556, 1, 'Bagus Jumawan', '110.137.92.124', '2021-10-26 07:16:22', '2021-10-26 14:16:22'),
(2557, 1, 'Bagus Jumawan', '180.249.164.105', '2021-10-26 07:20:47', '2021-10-26 14:20:47'),
(2558, 1, 'Bagus Jumawan', '66.96.225.119', '2021-10-26 07:26:30', '2021-10-26 14:26:30'),
(2559, 1, 'Bagus Jumawan', '180.249.118.168', '2021-10-26 07:29:17', '2021-10-26 14:29:17'),
(2560, 1, 'Bagus Jumawan', '180.249.118.168', '2021-10-26 07:30:30', '2021-10-26 14:30:30'),
(2561, 1, 'Bagus Jumawan', '180.241.240.202', '2021-10-26 07:30:36', '2021-10-26 14:30:36'),
(2562, 1, 'Bagus Jumawan', '180.249.118.168', '2021-10-26 07:30:38', '2021-10-26 14:30:38'),
(2563, 1, 'Bagus Jumawan', '180.241.240.202', '2021-10-26 07:30:54', '2021-10-26 14:30:54'),
(2564, 1, 'Bagus Jumawan', '36.72.216.118', '2021-10-26 07:36:09', '2021-10-26 14:36:09'),
(2565, 1, 'Bagus Jumawan', '182.2.74.12', '2021-10-26 07:36:10', '2021-10-26 14:36:10'),
(2566, 1, 'Bagus Jumawan', '182.2.75.224', '2021-10-26 07:36:45', '2021-10-26 14:36:45'),
(2567, 1, 'Bagus Jumawan', '182.2.75.236', '2021-10-26 07:39:07', '2021-10-26 14:39:07'),
(2568, 1, 'Bagus Jumawan', '223.255.228.102', '2021-10-26 07:42:56', '2021-10-26 14:42:56'),
(2569, 1, 'Bagus Jumawan', '114.79.1.219', '2021-10-26 07:43:16', '2021-10-26 14:43:16'),
(2570, 1, 'Bagus Jumawan', '103.47.135.188', '2021-10-26 07:44:23', '2021-10-26 14:44:23'),
(2573, 1, 'Bagus Jumawan', '182.2.73.199', '2021-10-26 07:47:10', '2021-10-26 14:47:10'),
(2574, 1, 'Bagus Jumawan', '180.252.162.177', '2021-10-26 07:47:14', '2021-10-26 14:47:14'),
(2575, 1, 'Bagus Jumawan', '111.94.183.203', '2021-10-26 07:48:02', '2021-10-26 14:48:02'),
(2576, 1, 'Bagus Jumawan', '103.47.135.188', '2021-10-26 07:50:11', '2021-10-26 14:50:11'),
(2577, 1, 'Bagus Jumawan', '219.83.96.19', '2021-10-26 08:00:56', '2021-10-26 15:00:56'),
(2578, 1, 'Bagus Jumawan', '182.253.72.90', '2021-10-26 08:05:39', '2021-10-26 15:05:39'),
(2579, 1, 'Bagus Jumawan', '182.0.243.228', '2021-10-26 08:10:46', '2021-10-26 15:10:46'),
(2580, 1, 'Bagus Jumawan', '182.0.243.228', '2021-10-26 08:10:47', '2021-10-26 15:10:47'),
(2581, 1, 'Bagus Jumawan', '182.0.243.228', '2021-10-26 08:11:55', '2021-10-26 15:11:55'),
(2582, 1, 'Bagus Jumawan', '114.122.15.164', '2021-10-26 08:14:59', '2021-10-26 15:14:59'),
(2583, 1, 'Bagus Jumawan', '222.124.101.126', '2021-10-26 08:15:18', '2021-10-26 15:15:18'),
(2584, 1, 'Bagus Jumawan', '114.122.15.82', '2021-10-26 08:17:57', '2021-10-26 15:17:57'),
(2585, 1, 'Bagus Jumawan', '125.162.215.26', '2021-10-26 08:20:14', '2021-10-26 15:20:14'),
(2586, 1, 'Bagus Jumawan', '114.125.101.135', '2021-10-26 08:20:28', '2021-10-26 15:20:28'),
(2587, 1, 'Bagus Jumawan', '118.97.208.180', '2021-10-26 08:24:34', '2021-10-26 15:24:34'),
(2588, 1, 'Bagus Jumawan', '103.105.33.101', '2021-10-26 08:26:09', '2021-10-26 15:26:09'),
(2589, 1, 'Bagus Jumawan', '36.73.209.7', '2021-10-26 08:26:55', '2021-10-26 15:26:55'),
(2590, 1, 'Bagus Jumawan', '36.73.209.7', '2021-10-26 08:27:12', '2021-10-26 15:27:12'),
(2591, 1, 'Bagus Jumawan', '116.206.15.17', '2021-10-26 08:27:19', '2021-10-26 15:27:19'),
(2592, 1, 'Bagus Jumawan', '110.138.83.45', '2021-10-26 08:29:10', '2021-10-26 15:29:10'),
(2593, 1, 'Bagus Jumawan', '103.105.33.101', '2021-10-26 08:29:16', '2021-10-26 15:29:16'),
(2594, 1, 'Bagus Jumawan', '182.1.123.236', '2021-10-26 08:32:30', '2021-10-26 15:32:30'),
(2595, 1, 'Bagus Jumawan', '140.213.56.181', '2021-10-26 08:44:46', '2021-10-26 15:44:46'),
(2596, 1, 'Bagus Jumawan', '114.122.41.154', '2021-10-26 08:46:39', '2021-10-26 15:46:39'),
(2597, 1, 'Bagus Jumawan', '125.167.74.131', '2021-10-26 08:57:12', '2021-10-26 15:57:12'),
(2598, 1, 'Bagus Jumawan', '182.253.151.66', '2021-10-26 09:04:51', '2021-10-26 16:04:51'),
(2599, 1, 'Bagus Jumawan', '114.122.106.198', '2021-10-26 09:12:56', '2021-10-26 16:12:56'),
(2600, 1, 'Bagus Jumawan', '36.79.182.124', '2021-10-26 09:15:22', '2021-10-26 16:15:22'),
(2601, 1, 'Bagus Jumawan', '140.213.41.175', '2021-10-26 09:16:05', '2021-10-26 16:16:05'),
(2602, 1, 'Bagus Jumawan', '182.253.178.22', '2021-10-26 09:19:42', '2021-10-26 16:19:42'),
(2603, 1, 'Bagus Jumawan', '120.188.92.202', '2021-10-26 09:20:22', '2021-10-26 16:20:22'),
(2604, 1, 'Bagus Jumawan', '120.188.92.202', '2021-10-26 09:20:34', '2021-10-26 16:20:34'),
(2605, 1, 'Bagus Jumawan', '120.188.92.202', '2021-10-26 09:20:49', '2021-10-26 16:20:49'),
(2606, 1, 'Bagus Jumawan', '120.188.92.202', '2021-10-26 09:20:58', '2021-10-26 16:20:58'),
(2607, 1, 'Bagus Jumawan', '182.1.64.108', '2021-10-26 09:24:23', '2021-10-26 16:24:23'),
(2608, 1, 'Bagus Jumawan', '114.124.179.171', '2021-10-26 09:25:32', '2021-10-26 16:25:32'),
(2609, 1, 'Bagus Jumawan', '114.5.208.10', '2021-10-26 09:26:37', '2021-10-26 16:26:37'),
(2610, 1, 'Bagus Jumawan', '117.20.48.46', '2021-10-26 09:27:52', '2021-10-26 16:27:52'),
(2611, 1, 'Bagus Jumawan', '182.1.103.71', '2021-10-26 09:30:42', '2021-10-26 16:30:42'),
(2612, 1, 'Bagus Jumawan', '139.195.40.140', '2021-10-26 09:30:53', '2021-10-26 16:30:53'),
(2613, 1, 'Bagus Jumawan', '114.122.235.137', '2021-10-26 09:32:47', '2021-10-26 16:32:47'),
(2614, 1, 'Bagus Jumawan', '114.122.235.137', '2021-10-26 09:33:58', '2021-10-26 16:33:58'),
(2615, 1, 'Bagus Jumawan', '182.1.175.2', '2021-10-26 09:35:02', '2021-10-26 16:35:02'),
(2616, 1, 'Bagus Jumawan', '116.206.31.60', '2021-10-26 09:40:05', '2021-10-26 16:40:05'),
(2617, 1, 'Bagus Jumawan', '116.206.31.60', '2021-10-26 09:40:24', '2021-10-26 16:40:24'),
(2618, 1, 'Bagus Jumawan', '114.5.251.171', '2021-10-26 09:42:03', '2021-10-26 16:42:03'),
(2619, 1, 'Bagus Jumawan', '114.5.251.171', '2021-10-26 09:42:09', '2021-10-26 16:42:09'),
(2620, 1, 'Bagus Jumawan', '36.78.188.162', '2021-10-26 09:46:14', '2021-10-26 16:46:14'),
(2621, 1, 'Bagus Jumawan', '36.78.188.162', '2021-10-26 09:47:15', '2021-10-26 16:47:15'),
(2622, 1, 'Bagus Jumawan', '36.81.12.80', '2021-10-26 09:47:32', '2021-10-26 16:47:32'),
(2623, 1, 'Bagus Jumawan', '120.188.5.149', '2021-10-26 10:10:06', '2021-10-26 17:10:06'),
(2624, 1, 'Tamu Undangan', '120.188.5.149', '2021-10-26 10:11:33', '2021-10-26 17:11:33'),
(2625, 1, 'Bagus Jumawan', '182.2.165.232', '2021-10-26 10:15:35', '2021-10-26 17:15:35'),
(2626, 1, 'Bagus Jumawan', '114.122.68.77', '2021-10-26 10:17:33', '2021-10-26 17:17:33'),
(2627, 1, 'Bagus Jumawan', '120.188.5.149', '2021-10-26 10:19:52', '2021-10-26 17:19:52'),
(2628, 1, 'Bagus Jumawan', '36.81.14.250', '2021-10-26 10:19:54', '2021-10-26 17:19:54'),
(2629, 1, 'Bagus Jumawan', '110.137.50.198', '2021-10-26 10:30:00', '2021-10-26 17:30:00'),
(2630, 1, 'Tamu Undangan', '180.253.224.248', '2021-10-26 10:30:13', '2021-10-26 17:30:13'),
(2631, 1, 'Bagus Jumawan', '116.206.40.33', '2021-10-26 10:32:37', '2021-10-26 17:32:37'),
(2632, 1, 'Bagus Jumawan', '110.137.195.102', '2021-10-26 10:36:59', '2021-10-26 17:36:59'),
(2633, 1, 'Bagus Jumawan', '140.213.201.19', '2021-10-26 10:44:13', '2021-10-26 17:44:13'),
(2634, 1, 'Bagus Jumawan', '114.4.78.119', '2021-10-26 10:47:02', '2021-10-26 17:47:02'),
(2635, 1, 'Bagus Jumawan', '202.67.40.226', '2021-10-26 10:50:48', '2021-10-26 17:50:48'),
(2636, 1, 'Bagus Jumawan', '182.1.113.180', '2021-10-26 10:51:50', '2021-10-26 17:51:50'),
(2637, 1, 'Bagus Jumawan', '110.137.59.108', '2021-10-26 10:54:38', '2021-10-26 17:54:38'),
(2644, 1, 'Bagus Jumawan', '36.81.14.250', '2021-10-26 11:05:22', '2021-10-26 18:05:22'),
(2645, 1, 'Bagus Jumawan', '36.81.14.250', '2021-10-26 11:05:34', '2021-10-26 18:05:34'),
(2646, 1, 'Bagus Jumawan', '114.10.5.179', '2021-10-26 11:10:08', '2021-10-26 18:10:08'),
(2647, 1, 'Bagus Jumawan', '182.2.170.96', '2021-10-26 11:12:13', '2021-10-26 18:12:13'),
(2649, 1, 'Bagus Jumawan', '120.188.5.149', '2021-10-26 11:13:43', '2021-10-26 18:13:43'),
(2650, 1, 'Bagus Jumawan', '69.171.249.2', '2021-10-26 11:13:48', '2021-10-26 18:13:48'),
(2651, 1, 'Bagus Jumawan', '180.243.0.85', '2021-10-26 11:15:22', '2021-10-26 18:15:22'),
(2652, 1, 'Bagus Jumawan', '36.81.8.246', '2021-10-26 11:19:21', '2021-10-26 18:19:21'),
(2653, 1, 'Bagus Jumawan', '182.0.242.232', '2021-10-26 11:25:01', '2021-10-26 18:25:01'),
(2654, 1, 'Bagus Jumawan', '111.94.247.199', '2021-10-26 11:28:59', '2021-10-26 18:28:59'),
(2655, 1, 'Bagus Jumawan', '61.247.43.152', '2021-10-26 11:35:02', '2021-10-26 18:35:02'),
(2656, 1, 'Bagus Jumawan', '202.67.32.36', '2021-10-26 11:36:46', '2021-10-26 18:36:46'),
(2657, 1, 'Bagus Jumawan', '180.252.89.222', '2021-10-26 11:38:24', '2021-10-26 18:38:24'),
(2658, 1, 'Bagus Jumawan', '182.0.170.23', '2021-10-26 11:59:09', '2021-10-26 18:59:09'),
(2659, 1, 'Bagus Jumawan', '182.0.170.23', '2021-10-26 12:00:32', '2021-10-26 19:00:32'),
(2660, 1, 'Bagus Jumawan', '36.68.55.144', '2021-10-26 12:01:57', '2021-10-26 19:01:57'),
(2661, 1, 'Bagus Jumawan', '182.2.229.169', '2021-10-26 12:08:49', '2021-10-26 19:08:49'),
(2662, 1, 'Bagus Jumawan', '116.206.15.56', '2021-10-26 12:42:44', '2021-10-26 19:42:44'),
(2663, 1, 'Bagus Jumawan', '103.227.255.82', '2021-10-26 12:45:29', '2021-10-26 19:45:29'),
(2664, 1, 'Bagus Jumawan', '36.78.140.64', '2021-10-26 13:00:43', '2021-10-26 20:00:43'),
(2665, 1, 'Bagus Jumawan', '182.1.29.145', '2021-10-26 13:14:10', '2021-10-26 20:14:10'),
(2666, 1, 'Bagus Jumawan', '114.5.111.101', '2021-10-26 13:14:24', '2021-10-26 20:14:24'),
(2667, 1, 'Bagus Jumawan', '116.206.13.85', '2021-10-26 13:15:10', '2021-10-26 20:15:10'),
(2668, 1, 'Bagus Jumawan', '36.75.65.17', '2021-10-26 13:17:25', '2021-10-26 20:17:25'),
(2669, 1, 'Bagus Jumawan', '36.75.65.17', '2021-10-26 13:17:43', '2021-10-26 20:17:43'),
(2670, 1, 'Bagus Jumawan', '116.206.13.85', '2021-10-26 13:17:58', '2021-10-26 20:17:58'),
(2671, 1, 'Bagus Jumawan', '182.1.116.45', '2021-10-26 13:19:20', '2021-10-26 20:19:20'),
(2672, 1, 'Bagus Jumawan', '114.125.251.122', '2021-10-26 13:19:52', '2021-10-26 20:19:52'),
(2673, 1, 'Bagus Jumawan', '182.1.116.45', '2021-10-26 13:21:16', '2021-10-26 20:21:16'),
(2675, 1, 'Bagus Jumawan', '113.20.141.50', '2021-10-26 13:28:25', '2021-10-26 20:28:25'),
(2676, 1, 'Bagus Jumawan', '118.96.138.128', '2021-10-26 13:36:32', '2021-10-26 20:36:32'),
(2677, 1, 'Bagus Jumawan', '125.166.117.131', '2021-10-26 13:46:19', '2021-10-26 20:46:19'),
(2679, 1, 'Bagus Jumawan', '180.251.158.145', '2021-10-26 13:59:46', '2021-10-26 20:59:46'),
(2680, 1, 'Bagus Jumawan', '120.188.67.211', '2021-10-26 14:12:40', '2021-10-26 21:12:40'),
(2681, 1, 'Bagus Jumawan', '36.68.217.6', '2021-10-26 14:16:07', '2021-10-26 21:16:07'),
(2682, 1, 'Bagus Jumawan', '182.253.228.28', '2021-10-26 14:20:28', '2021-10-26 21:20:28'),
(2683, 1, 'Bagus Jumawan', '36.68.221.145', '2021-10-26 14:24:55', '2021-10-26 21:24:55'),
(2684, 1, 'Bagus Jumawan', '51.79.241.202', '2021-10-26 14:29:36', '2021-10-26 21:29:36'),
(2685, 1, 'Bagus Jumawan', '114.124.144.113', '2021-10-26 14:30:20', '2021-10-26 21:30:20'),
(2686, 1, 'Bagus Jumawan', '114.124.144.113', '2021-10-26 14:31:21', '2021-10-26 21:31:21'),
(2687, 1, 'Bagus Jumawan', '101.128.125.114', '2021-10-26 14:34:38', '2021-10-26 21:34:38'),
(2688, 1, 'Bagus Jumawan', '101.128.125.114', '2021-10-26 14:40:01', '2021-10-26 21:40:01'),
(2689, 1, 'Bagus Jumawan', '112.215.65.71', '2021-10-26 14:44:48', '2021-10-26 21:44:48'),
(2690, 1, 'Bagus Jumawan', '175.158.49.206', '2021-10-26 14:47:29', '2021-10-26 21:47:29'),
(2691, 1, 'Bagus Jumawan', '103.140.189.213', '2021-10-26 14:56:26', '2021-10-26 21:56:26'),
(2692, 1, 'Bagus Jumawan', '103.78.114.53', '2021-10-26 14:56:27', '2021-10-26 21:56:27'),
(2693, 1, 'Bagus Jumawan', '103.78.114.53', '2021-10-26 14:57:29', '2021-10-26 21:57:29'),
(2694, 1, 'Bagus Jumawan', '182.1.206.232', '2021-10-26 15:19:51', '2021-10-26 22:19:51'),
(2695, 1, 'Bagus Jumawan', '202.80.213.182', '2021-10-26 15:26:24', '2021-10-26 22:26:24'),
(2696, 1, 'Bagus Jumawan', '187.184.164.206', '2021-10-26 15:33:57', '2021-10-26 22:33:57'),
(2697, 1, 'Bagus Jumawan', '180.241.242.105', '2021-10-26 15:38:56', '2021-10-26 22:38:56'),
(2698, 1, 'Bagus Jumawan', '180.243.115.169', '2021-10-26 15:50:22', '2021-10-26 22:50:22'),
(2699, 1, 'Bagus Jumawan', '114.79.1.229', '2021-10-26 16:05:20', '2021-10-26 23:05:20'),
(2700, 1, 'Bagus Jumawan', '125.164.18.180', '2021-10-26 16:06:17', '2021-10-26 23:06:17'),
(2701, 1, 'Bagus Jumawan', '114.79.1.229', '2021-10-26 16:07:37', '2021-10-26 23:07:37'),
(2702, 1, 'Bagus Jumawan', '114.79.1.229', '2021-10-26 16:08:25', '2021-10-26 23:08:25'),
(2703, 1, 'Bagus Jumawan', '114.79.1.229', '2021-10-26 16:08:25', '2021-10-26 23:08:25'),
(2704, 1, 'Bagus Jumawan', '114.124.131.101', '2021-10-26 16:09:08', '2021-10-26 23:09:08'),
(2705, 1, 'Bagus Jumawan', '182.1.27.28', '2021-10-26 16:11:32', '2021-10-26 23:11:32'),
(2706, 1, 'Bagus Jumawan', '125.165.59.212', '2021-10-26 16:47:58', '2021-10-26 23:47:58'),
(2707, 1, 'Bagus Jumawan', '125.165.59.212', '2021-10-26 16:48:28', '2021-10-26 23:48:28'),
(2708, 1, 'Bagus Jumawan', '139.195.236.213', '2021-10-26 16:48:38', '2021-10-26 23:48:38'),
(2709, 1, 'Bagus Jumawan', '139.195.236.213', '2021-10-26 16:48:51', '2021-10-26 23:48:51'),
(2710, 1, 'Bagus Jumawan', '114.10.21.156', '2021-10-26 17:35:42', '2021-10-27 00:35:42'),
(2711, 1, 'Bagus Jumawan', '125.161.220.15', '2021-10-26 18:12:43', '2021-10-27 01:12:43'),
(2712, 1, 'Bagus Jumawan', '114.124.195.18', '2021-10-26 21:32:42', '2021-10-27 04:32:42'),
(2713, 1, 'Bagus Jumawan', '182.1.93.141', '2021-10-26 21:56:24', '2021-10-27 04:56:24'),
(2714, 1, 'Bagus Jumawan', '114.4.217.28', '2021-10-26 21:59:18', '2021-10-27 04:59:18'),
(2715, 1, 'Bagus Jumawan', '120.188.64.72', '2021-10-26 22:08:34', '2021-10-27 05:08:34'),
(3726, 1, 'Bagus Jumawan', '182.1.66.218', '2022-01-16 23:15:05', '2022-01-17 06:15:05'),
(3731, 1, 'Tamu Undangan', '180.243.8.231', '2022-01-17 05:19:20', '2022-01-17 12:19:20'),
(3734, 1, 'Tamu Undangan', '36.81.112.87', '2022-01-17 16:57:29', '2022-01-17 23:57:29'),
(3735, 1, 'Bagus Jumawan', '66.249.71.173', '2022-01-17 19:52:46', '2022-01-18 02:52:46'),
(3736, 1, 'Bagus Jumawan', '66.249.71.173', '2022-01-17 19:54:21', '2022-01-18 02:54:21'),
(3737, 1, 'Bagus Jumawan', '185.191.171.44', '2022-01-18 02:11:23', '2022-01-18 09:11:23'),
(3738, 1, 'Bagus Jumawan', '36.84.216.133', '2022-01-18 06:15:36', '2022-01-18 13:15:36'),
(3739, 1, 'Bagus Jumawan', '140.213.74.229', '2022-01-18 06:18:58', '2022-01-18 13:18:58'),
(3740, 1, 'Bagus Jumawan', '140.213.74.229', '2022-01-18 06:41:12', '2022-01-18 13:41:12'),
(3754, 1, 'Bagus Jumawan', '180.244.160.56', '2022-01-19 05:57:27', '2022-01-19 12:57:27'),
(3765, 1, 'Bagus Jumawan', '180.244.163.72', '2022-01-20 09:46:57', '2022-01-20 16:46:57'),
(3766, 1, 'Boy Anugrah', '182.1.82.219', '2022-01-21 07:04:38', '2022-01-21 14:04:38'),
(3767, 1, 'Boy Anugrah', '110.232.67.234', '2022-01-21 07:05:24', '2022-01-21 14:05:24'),
(3769, 1, 'Boy Anugrah', '114.5.146.6', '2022-01-21 13:20:38', '2022-01-21 20:20:38'),
(3773, 1, 'Tamu Undangan', '182.1.64.199', '2022-01-21 14:37:52', '2022-01-21 21:37:52'),
(3774, 1, 'Tamu Undangan', '173.252.79.2', '2022-01-22 04:04:46', '2022-01-22 11:04:46'),
(3775, 1, 'Tamu Undangan', '173.252.79.2', '2022-01-22 04:04:48', '2022-01-22 11:04:48'),
(3776, 1, 'Tamu Undangan', '125.164.12.84', '2022-01-22 04:23:45', '2022-01-22 11:23:45'),
(3777, 1, 'Bagus Jumawan', '36.71.67.94', '2022-01-22 05:37:26', '2022-01-22 12:37:26'),
(3778, 1, 'Bagus Jumawan', '114.5.218.134', '2022-01-22 05:40:05', '2022-01-22 12:40:05'),
(3779, 1, 'Bagus Jumawan', '114.5.218.134', '2022-01-22 05:40:21', '2022-01-22 12:40:21'),
(3780, 1, 'Bagus Jumawan', '180.244.135.219', '2022-01-22 05:45:27', '2022-01-22 12:45:27'),
(3781, 1, 'Bagus Jumawan', '77.88.5.42', '2022-01-22 07:50:31', '2022-01-22 14:50:31'),
(3782, 1, 'Tamu Undangan', '114.124.209.219', '2022-01-22 08:29:30', '2022-01-22 15:29:30'),
(3783, 1, 'Tamu Undangan', '114.124.209.219', '2022-01-22 08:29:39', '2022-01-22 15:29:39'),
(3784, 1, 'Tamu Undangan', '36.70.66.196', '2022-01-22 10:03:53', '2022-01-22 17:03:53'),
(3785, 1, 'Bagus Jumawan', '180.241.12.18', '2022-01-22 10:49:14', '2022-01-22 17:49:14'),
(3786, 1, 'Bagus Jumawan', '182.1.88.70', '2022-01-22 12:31:15', '2022-01-22 19:31:15'),
(3787, 1, 'Bagus Jumawan', '115.178.200.84', '2022-01-22 14:25:00', '2022-01-22 21:25:00'),
(3788, 1, 'Bagus Jumawan', '36.68.55.24', '2022-01-22 15:05:12', '2022-01-22 22:05:12'),
(3789, 1, 'Krisna Bayu', '182.1.78.130', '2022-01-23 14:29:22', '2022-01-23 21:29:22'),
(3790, 1, 'Bagus Jumawan', '114.125.217.210', '2022-01-23 14:29:44', '2022-01-23 21:29:44'),
(3791, 1, 'Bagus Jumawan', '182.1.78.130', '2022-01-23 14:38:04', '2022-01-23 21:38:04'),
(3792, 1, 'Bagus Jumawan', '182.1.78.130', '2022-01-23 14:49:17', '2022-01-23 21:49:17'),
(3793, 1, 'Tamu Undangan', '182.1.78.130', '2022-01-23 14:56:30', '2022-01-23 21:56:30'),
(3794, 1, 'Tamu Undangan', '182.1.78.130', '2022-01-23 14:57:33', '2022-01-23 21:57:33'),
(3795, 1, 'Bagus Jumawan', '182.1.78.130', '2022-01-23 14:59:16', '2022-01-23 21:59:16'),
(3796, 1, 'Tamu Undangan', '182.1.78.130', '2022-01-23 15:18:52', '2022-01-23 22:18:52'),
(3797, 1, 'Tamu Undangan', '182.1.78.130', '2022-01-23 15:19:45', '2022-01-23 22:19:45'),
(3798, 1, 'Tamu Undangan', '182.1.78.130', '2022-01-23 15:20:17', '2022-01-23 22:20:17'),
(3799, 1, 'Tamu Undangan', '182.1.78.130', '2022-01-23 15:39:21', '2022-01-23 22:39:21'),
(3800, 1, 'Tamu Undangan', '182.1.78.130', '2022-01-23 15:40:05', '2022-01-23 22:40:05'),
(3801, 1, 'Tamu Undangan', '182.1.78.130', '2022-01-23 15:40:50', '2022-01-23 22:40:50'),
(3802, 1, 'Tamu Undangan', '182.1.78.130', '2022-01-23 15:41:29', '2022-01-23 22:41:29'),
(3803, 1, 'Tamu Undangan', '182.1.78.130', '2022-01-23 15:41:57', '2022-01-23 22:41:57'),
(3804, 1, 'Tamu Undangan', '182.1.78.130', '2022-01-23 15:42:18', '2022-01-23 22:42:18'),
(3805, 1, 'Tamu Undangan', '182.1.78.130', '2022-01-23 15:42:27', '2022-01-23 22:42:27'),
(3806, 1, 'Tamu Undangan', '182.1.78.130', '2022-01-23 15:43:51', '2022-01-23 22:43:51'),
(3807, 1, 'Tamu Undangan', '182.1.78.130', '2022-01-23 15:44:15', '2022-01-23 22:44:15'),
(3808, 1, 'Tamu Undangan', '182.1.78.130', '2022-01-23 15:46:23', '2022-01-23 22:46:23'),
(3809, 1, 'Tamu Undangan', '182.1.78.130', '2022-01-23 15:46:48', '2022-01-23 22:46:48'),
(3810, 1, 'Tamu Undangan', '182.1.78.130', '2022-01-23 15:48:04', '2022-01-23 22:48:04'),
(3811, 1, 'Tamu Undangan', '182.1.78.130', '2022-01-23 15:48:12', '2022-01-23 22:48:12'),
(3812, 1, 'Tamu Undangan', '182.1.78.130', '2022-01-23 15:48:44', '2022-01-23 22:48:44'),
(3813, 1, 'Tamu Undangan', '182.1.78.130', '2022-01-23 15:49:53', '2022-01-23 22:49:53'),
(3814, 1, 'Tamu Undangan', '182.1.78.130', '2022-01-23 16:13:59', '2022-01-23 23:13:59'),
(3815, 1, 'Bagus Jumawan', '182.1.78.130', '2022-01-23 16:53:09', '2022-01-23 23:53:09'),
(3816, 1, 'Bagus Jumawan', '182.1.78.130', '2022-01-23 16:53:48', '2022-01-23 23:53:48'),
(3817, 1, 'Bagus Jumawan', '182.1.78.130', '2022-01-23 16:53:58', '2022-01-23 23:53:58'),
(3818, 1, 'Tamu Undangan', '182.1.93.9', '2022-01-24 01:08:25', '2022-01-24 08:08:25'),
(3819, 1, 'Tamu Undangan', '182.1.93.9', '2022-01-24 01:08:50', '2022-01-24 08:08:50'),
(3820, 1, 'Tamu Undangan', '182.1.93.9', '2022-01-24 01:09:26', '2022-01-24 08:09:26'),
(3821, 1, 'Tamu Undangan', '182.1.93.9', '2022-01-24 01:09:49', '2022-01-24 08:09:49'),
(3822, 1, 'Tamu Undangan', '182.1.93.9', '2022-01-24 01:15:44', '2022-01-24 08:15:44'),
(3823, 1, 'Tamu Undangan', '182.1.93.9', '2022-01-24 01:24:28', '2022-01-24 08:24:28'),
(3824, 1, 'Tamu Undangan', '182.1.93.9', '2022-01-24 01:24:58', '2022-01-24 08:24:58'),
(3825, 1, 'Tamu Undangan', '182.1.93.9', '2022-01-24 01:26:57', '2022-01-24 08:26:57'),
(3826, 1, 'Tamu Undangan', '69.171.249.116', '2022-01-24 03:10:51', '2022-01-24 10:10:51'),
(3827, 1, 'Tamu Undangan', '69.171.249.9', '2022-01-24 03:10:52', '2022-01-24 10:10:52'),
(3828, 1, 'Tamu Undangan', '69.171.249.22', '2022-01-24 03:10:53', '2022-01-24 10:10:53'),
(3829, 1, 'Tamu Undangan', '182.1.84.248', '2022-01-24 03:52:09', '2022-01-24 10:52:09'),
(3830, 1, 'Tamu Undangan', '182.1.84.248', '2022-01-24 03:53:00', '2022-01-24 10:53:00'),
(3831, 1, 'Tamu Undangan', '182.1.84.248', '2022-01-24 03:55:01', '2022-01-24 10:55:01'),
(3832, 1, 'Tamu Undangan', '182.1.84.248', '2022-01-24 04:07:11', '2022-01-24 11:07:11'),
(3836, 1, 'Bagus Jumawan', '182.1.94.28', '2022-01-24 10:09:42', '2022-01-24 17:09:42'),
(3837, 1, 'Bagus Jumawan', '182.1.94.28', '2022-01-24 10:24:17', '2022-01-24 17:24:17'),
(3838, 1, 'Bagus Jumawan', '114.125.28.93', '2022-01-24 12:18:59', '2022-01-24 19:18:59'),
(3842, 1, 'Bagus Jumawan', '180.247.54.175', '2022-01-24 15:14:14', '2022-01-24 22:14:14'),
(3843, 1, 'Bagus Jumawan', '103.80.81.91', '2022-01-24 15:30:03', '2022-01-24 22:30:03'),
(3851, 1, 'Tamu Undangan', '103.105.27.97', '2022-01-25 01:37:41', '2022-01-25 08:37:41'),
(3852, 1, 'Tamu Undangan', '103.105.27.97', '2022-01-25 01:59:42', '2022-01-25 08:59:42'),
(3853, 1, 'Tamu Undangan', '103.105.27.97', '2022-01-25 02:00:14', '2022-01-25 09:00:14'),
(3854, 1, 'Tamu Undangan', '103.105.27.97', '2022-01-25 02:00:58', '2022-01-25 09:00:58'),
(3855, 1, 'Tamu Undangan', '103.105.27.97', '2022-01-25 02:06:30', '2022-01-25 09:06:30'),
(3861, 1, 'Tamu Undangan', '112.215.171.55', '2022-01-25 06:50:45', '2022-01-25 13:50:45'),
(3862, 1, 'Bagus Jumawan', '36.74.97.233', '2022-01-25 08:06:47', '2022-01-25 15:06:47'),
(3863, 1, 'Bagus Jumawan', '182.1.2.245', '2022-01-25 09:25:52', '2022-01-25 16:25:52'),
(3864, 1, 'Bagus Jumawan', '182.1.2.245', '2022-01-25 09:28:30', '2022-01-25 16:28:30'),
(3865, 1, 'Bagus Jumawan', '182.1.2.245', '2022-01-25 10:48:11', '2022-01-25 17:48:11'),
(3866, 1, 'Bagus Jumawan', '182.1.2.245', '2022-01-25 10:52:50', '2022-01-25 17:52:50'),
(3867, 1, 'Bagus Jumawan', '182.1.2.245', '2022-01-25 10:53:02', '2022-01-25 17:53:02'),
(3868, 1, 'Bagus Jumawan', '103.121.196.7', '2022-01-25 12:14:40', '2022-01-25 19:14:40'),
(3869, 1, 'Bagus Jumawan', '180.247.170.41', '2022-01-25 22:27:36', '2022-01-26 05:27:36'),
(3870, 1, 'Bagus Jumawan', '139.255.116.18', '2022-01-26 08:26:35', '2022-01-26 15:26:35'),
(3871, 1, 'Bagus Jumawan', '114.4.216.223', '2022-01-26 15:18:07', '2022-01-26 22:18:07'),
(3872, 1, 'Tamu Undangan', '114.125.245.121', '2022-01-26 16:26:07', '2022-01-26 23:26:07'),
(3873, 1, 'Bagus Jumawan', '182.1.73.230', '2022-01-27 03:21:08', '2022-01-27 10:21:08'),
(3874, 1, 'Bagus Jumawan', '182.1.73.230', '2022-01-27 03:21:29', '2022-01-27 10:21:29'),
(3876, 1, 'Bagus Jumawan', '103.105.35.90', '2022-01-27 05:35:16', '2022-01-27 12:35:16'),
(3877, 1, 'Bagus Jumawan', '140.213.151.2', '2022-01-27 07:17:06', '2022-01-27 14:17:06'),
(3878, 1, 'Bagus Jumawan', '125.161.216.159', '2022-01-28 04:45:58', '2022-01-28 11:45:58'),
(3879, 1, 'Tamu Undangan', '154.53.53.172', '2022-01-29 01:05:03', '2022-01-29 08:05:03'),
(3880, 1, 'Tamu Undangan', '207.46.13.77', '2022-01-30 14:19:20', '2022-01-30 21:19:20'),
(3881, 1, 'Tamu Undangan', '103.102.248.72', '2022-01-30 16:15:08', '2022-01-30 23:15:08'),
(3882, 1, 'Bagus Jumawan', '117.103.68.38', '2022-01-31 12:59:53', '2022-01-31 19:59:53'),
(3887, 1, 'Tamu Undangan', '103.105.27.88', '2022-01-31 15:28:37', '2022-01-31 22:28:37'),
(3888, 1, 'Tamu Undangan', '103.105.27.88', '2022-01-31 15:29:46', '2022-01-31 22:29:46'),
(3890, 1, 'Tamu Undangan', '103.105.27.88', '2022-01-31 15:30:47', '2022-01-31 22:30:47'),
(3891, 1, 'Tamu Undangan', '103.105.27.88', '2022-01-31 15:32:23', '2022-01-31 22:32:23'),
(3892, 1, 'Tamu Undangan', '103.105.27.88', '2022-01-31 15:34:25', '2022-01-31 22:34:25'),
(3893, 1, 'Bagus Jumawan', '125.165.46.44', '2022-01-31 16:30:54', '2022-01-31 23:30:54'),
(3900, 1, 'Tamu Undangan', '31.13.127.20', '2022-02-01 22:17:55', '2022-02-02 05:17:55'),
(3901, 1, 'Tamu Undangan', '31.13.127.37', '2022-02-01 22:17:55', '2022-02-02 05:17:55'),
(3902, 1, 'Tamu Undangan', '31.13.127.35', '2022-02-01 22:17:55', '2022-02-02 05:17:55'),
(3903, 1, 'Tamu Undangan', '31.13.127.35', '2022-02-01 22:17:57', '2022-02-02 05:17:57'),
(3904, 1, 'Tamu Undangan', '31.13.127.31', '2022-02-01 22:17:57', '2022-02-02 05:17:57'),
(3905, 1, 'Bagus Jumawan', '182.0.145.143', '2022-02-01 22:19:16', '2022-02-02 05:19:16'),
(3906, 1, 'Bagus Jumawan', '180.249.199.68', '2022-02-02 08:10:29', '2022-02-02 15:10:29'),
(3907, 1, 'Tamu Undangan', '202.179.184.54', '2022-02-03 05:40:55', '2022-02-03 12:40:55'),
(3908, 1, 'Bagus Jumawan', '14.1.227.111', '2022-02-04 11:00:06', '2022-02-04 18:00:06'),
(3909, 1, 'Bagus Jumawan', '103.105.35.79', '2022-02-04 12:06:50', '2022-02-04 19:06:50'),
(3910, 1, 'Bagus Jumawan', '103.105.35.79', '2022-02-04 12:12:14', '2022-02-04 19:12:14'),
(3911, 1, 'Bagus Jumawan', '110.137.82.164', '2022-02-05 08:57:36', '2022-02-05 15:57:36'),
(3912, 1, 'Krisna Bayu', '110.137.82.164', '2022-02-05 08:58:19', '2022-02-05 15:58:19'),
(3913, 1, 'Tamu Undangan', '110.137.82.164', '2022-02-05 08:58:21', '2022-02-05 15:58:21'),
(3914, 1, 'Bagus Jumawan', '180.252.86.150', '2022-02-05 11:56:09', '2022-02-05 18:56:09'),
(3915, 1, 'Bagus Jumawan', '180.252.86.150', '2022-02-05 11:58:32', '2022-02-05 18:58:32'),
(3916, 1, 'Bagus Jumawan', '180.252.86.150', '2022-02-05 11:59:34', '2022-02-05 18:59:34'),
(3917, 1, 'Tamu Undangan', '207.46.13.77', '2022-02-05 13:54:21', '2022-02-05 20:54:21'),
(3918, 1, 'Bagus Jumawan', '103.105.35.88', '2022-02-06 01:46:11', '2022-02-06 08:46:11'),
(3919, 1, 'Tamu Undangan', '173.252.83.10', '2022-02-06 14:53:42', '2022-02-06 21:53:42'),
(3920, 1, 'Tamu Undangan', '173.252.83.23', '2022-02-06 14:53:42', '2022-02-06 21:53:42'),
(3921, 1, 'Tamu Undangan', '103.105.35.95', '2022-02-07 07:17:10', '2022-02-07 14:17:10');
INSERT INTO `pengunjung` (`id`, `id_user`, `nama_pengunjung`, `addr`, `created_at`, `updated_at`) VALUES
(3922, 1, 'Bagus Jumawan', '103.105.35.95', '2022-02-07 07:17:13', '2022-02-07 14:17:13'),
(3923, 1, 'Bagus Jumawan', '103.105.35.95', '2022-02-07 07:17:37', '2022-02-07 14:17:37'),
(3924, 1, 'Tamu Undangan', '103.105.35.89', '2022-02-07 09:44:20', '2022-02-07 16:44:20'),
(3925, 1, 'Tamu Undangan', '103.105.35.89', '2022-02-07 09:45:01', '2022-02-07 16:45:01'),
(3926, 1, 'Tamu Undangan', '103.105.35.89', '2022-02-07 09:45:17', '2022-02-07 16:45:17'),
(3927, 1, 'Bagus Jumawan', '173.252.79.3', '2022-02-07 10:25:25', '2022-02-07 17:25:25'),
(3928, 1, 'Bagus Jumawan', '173.252.79.17', '2022-02-07 10:25:28', '2022-02-07 17:25:28'),
(3929, 1, 'Bagus Jumawan', '46.4.60.249', '2022-02-07 10:31:29', '2022-02-07 17:31:29'),
(3930, 1, 'Bagus Jumawan', '173.252.95.7', '2022-02-07 10:31:54', '2022-02-07 17:31:54'),
(3931, 1, 'Bagus Jumawan', '66.220.149.7', '2022-02-07 10:31:57', '2022-02-07 17:31:57'),
(3932, 1, 'Bagus Jumawan', '103.3.58.59', '2022-02-07 10:34:12', '2022-02-07 17:34:12'),
(3933, 1, 'Bagus Jumawan', '140.213.178.133', '2022-02-07 10:48:38', '2022-02-07 17:48:38'),
(3934, 1, 'Bagus Jumawan', '180.241.242.203', '2022-02-07 10:57:24', '2022-02-07 17:57:24'),
(3935, 1, 'Bagus Jumawan', '180.241.243.118', '2022-02-07 11:47:30', '2022-02-07 18:47:30'),
(3936, 1, 'Bagus Jumawan', '180.254.172.185', '2022-02-07 11:59:53', '2022-02-07 18:59:53'),
(3937, 1, 'Bagus Jumawan', '103.73.79.26', '2022-02-07 12:56:15', '2022-02-07 19:56:15'),
(3938, 1, 'Bagus Jumawan', '36.88.142.72', '2022-02-07 13:07:43', '2022-02-07 20:07:43'),
(3939, 1, 'Bagus Jumawan', '103.38.100.250', '2022-02-07 13:44:04', '2022-02-07 20:44:04'),
(3940, 1, 'Bagus Jumawan', '103.144.179.175', '2022-02-07 14:06:12', '2022-02-07 21:06:12'),
(3942, 1, 'Bagus Jumawan', '103.144.179.175', '2022-02-07 14:07:32', '2022-02-07 21:07:32'),
(3944, 1, 'Tamu Undangan', '103.144.179.175', '2022-02-07 14:09:52', '2022-02-07 21:09:52'),
(3946, 1, 'Tamu Undangan', '114.124.246.120', '2022-02-07 14:19:26', '2022-02-07 21:19:26'),
(3948, 1, 'Bagus Jumawan', '114.125.135.118', '2022-02-07 14:25:50', '2022-02-07 21:25:50'),
(3955, 1, 'Tamu Undangan', '182.3.73.171', '2022-02-11 08:34:28', '2022-02-11 15:34:28'),
(3956, 1, 'Tamu Undangan', '182.3.73.171', '2022-02-11 08:37:09', '2022-02-11 15:37:09'),
(3957, 1, 'Tamu Undangan', '182.3.73.171', '2022-02-11 08:37:40', '2022-02-11 15:37:40'),
(3958, 1, 'Tamu Undangan', '182.3.73.171', '2022-02-11 08:37:49', '2022-02-11 15:37:49'),
(3959, 1, 'Tamu Undangan', '182.3.73.171', '2022-02-11 08:38:29', '2022-02-11 15:38:29'),
(3960, 1, 'Tamu Undangan', '182.3.73.171', '2022-02-11 08:40:33', '2022-02-11 15:40:33'),
(3961, 1, 'Ni Putu Ziti Sri Asieh', '182.3.73.171', '2022-02-11 08:45:28', '2022-02-11 15:45:28'),
(3962, 1, 'Tamu Undangan', '182.3.73.171', '2022-02-11 08:49:15', '2022-02-11 15:49:15'),
(3964, 1, 'Tamu Undangan', '182.3.73.171', '2022-02-11 08:53:22', '2022-02-11 15:53:22'),
(3965, 1, 'Tamu Undangan', '182.3.73.171', '2022-02-11 08:54:19', '2022-02-11 15:54:19'),
(3967, 1, 'Tamu Undangan', '182.3.73.171', '2022-02-11 08:56:39', '2022-02-11 15:56:39'),
(3968, 1, 'Tamu Undangan', '182.3.73.171', '2022-02-11 09:00:35', '2022-02-11 16:00:35'),
(3969, 1, 'Tamu Undangan', '182.3.73.171', '2022-02-11 09:02:01', '2022-02-11 16:02:01'),
(3970, 1, 'Tamu Undangan', '182.3.73.171', '2022-02-11 09:02:19', '2022-02-11 16:02:19'),
(3972, 1, 'Tamu Undangan', '182.3.73.171', '2022-02-11 09:05:08', '2022-02-11 16:05:08'),
(3973, 1, 'Maulana Arifin', '182.3.73.171', '2022-02-11 09:06:27', '2022-02-11 16:06:27'),
(3974, 1, 'Maulana Arifin', '182.3.73.171', '2022-02-11 09:09:59', '2022-02-11 16:09:59'),
(3976, 1, 'Tamu Undangan', '182.3.68.150', '2022-02-11 11:18:31', '2022-02-11 18:18:31'),
(3978, 1, 'Tamu Undangan', '182.3.73.157', '2022-02-12 19:10:46', '2022-02-13 02:10:46'),
(3979, 1, 'Tamu Undangan', '182.3.73.157', '2022-02-12 19:28:55', '2022-02-13 02:28:55'),
(3980, 1, 'Member MC Project', '182.3.73.157', '2022-02-12 19:56:04', '2022-02-13 02:56:04'),
(3981, 1, 'Maulana Arifin', '182.3.73.157', '2022-02-12 19:57:05', '2022-02-13 02:57:05'),
(3982, 1, 'Ni Putu Ziti Sri Asieh', '182.3.73.157', '2022-02-12 19:57:10', '2022-02-13 02:57:10'),
(3983, 1, 'Subscriber MC Project', '182.3.73.157', '2022-02-12 19:57:16', '2022-02-13 02:57:16'),
(3984, 1, 'Member MC Project', '182.3.73.157', '2022-02-12 19:57:21', '2022-02-13 02:57:21'),
(3985, 1, 'Subscriber MC Project', '182.3.73.157', '2022-02-12 20:02:06', '2022-02-13 03:02:06'),
(3986, 1, 'Maulana Arifin', '182.3.73.157', '2022-02-12 20:05:08', '2022-02-13 03:05:08'),
(3987, 1, 'Subscriber MC Project', '182.3.73.157', '2022-02-12 21:27:46', '2022-02-13 04:27:46'),
(3988, 1, 'Tamu Undangan', '192.168.1.13', '2024-05-04 08:35:10', '2024-05-04 15:35:10'),
(3989, 1, 'Subscriber MC Project', '192.168.1.13', '2024-05-04 08:44:49', '2024-05-04 15:44:49'),
(3990, 1, 'Maulana Arifin', '192.168.1.13', '2024-05-04 08:45:43', '2024-05-04 15:45:43'),
(3991, 1, 'Tamu Undangan', '192.168.1.13', '2024-05-04 10:28:42', '2024-05-04 17:28:42'),
(3992, 1, 'Tamu Undangan', '192.168.1.13', '2024-05-04 10:35:45', '2024-05-04 17:35:45'),
(3993, 1, 'Tamu Undangan', '192.168.1.13', '2024-05-04 10:45:27', '2024-05-04 17:45:27');

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_bank` varchar(200) DEFAULT NULL,
  `no_rekening` varchar(200) DEFAULT NULL,
  `nama_pemilik` varchar(200) DEFAULT NULL,
  `qrcode_bank` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`id`, `id_user`, `nama_bank`, `no_rekening`, `nama_pemilik`, `qrcode_bank`) VALUES
(180, 1, 'BNI', '0449753964', 'MC Project', 'qrcode2.png'),
(181, 1, 'Gopay/Ovo/Dana/LinkAja', '085381259307', 'MC Project', 'qrcode3.png');

-- --------------------------------------------------------

--
-- Table structure for table `rules`
--

CREATE TABLE `rules` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `sampul` int(11) NOT NULL,
  `mempelai` int(11) NOT NULL,
  `acara` int(11) NOT NULL,
  `komen` int(11) NOT NULL,
  `gallery` int(11) NOT NULL,
  `cerita` int(11) NOT NULL,
  `lokasi` int(11) NOT NULL,
  `prokes` int(11) NOT NULL,
  `qrcode` int(11) NOT NULL,
  `hadiah` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rules`
--

INSERT INTO `rules` (`id`, `id_user`, `sampul`, `mempelai`, `acara`, `komen`, `gallery`, `cerita`, `lokasi`, `prokes`, `qrcode`, `hadiah`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-26 14:16:43', '2022-01-12 05:07:55');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `harga` double NOT NULL,
  `midtrans` enum('0','1') NOT NULL DEFAULT '0',
  `nama_bank` varchar(100) NOT NULL,
  `norek` varchar(100) NOT NULL,
  `nama_pemilik` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `trial` int(11) NOT NULL,
  `aktif` int(11) NOT NULL,
  `host_email` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `pass_email` varchar(255) DEFAULT NULL,
  `no_wa` varchar(15) DEFAULT NULL,
  `pesan_wa` text DEFAULT NULL,
  `salam_pembuka` longtext DEFAULT NULL,
  `token_wa` varchar(255) DEFAULT NULL,
  `salam_wa_atas` text NOT NULL,
  `salam_wa_bawah` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `harga`, `midtrans`, `nama_bank`, `norek`, `nama_pemilik`, `img`, `created_at`, `trial`, `aktif`, `host_email`, `email`, `pass_email`, `no_wa`, `pesan_wa`, `salam_pembuka`, `token_wa`, `salam_wa_atas`, `salam_wa_bawah`) VALUES
(1, 50000, '1', 'BCA', '3120760989', 'MC Project', 'bank.png', '2024-05-04 08:48:11', 7, 90, 'ramdhanielevent@gmail.com', 'ramdhanielevent@gmail.com', 'demo', '6285714432441', 'Halo admin YukNikah, Saya mau bertanya..', 'Assalamu\'alaikum Warahmatullahi Wabarakatuh\n\nDengan memohon Rahmat dan Ridho Allah SWT, Kami akan menyelenggarakan resepsi pernikahan Putra-Putri kami :', '', 'Assalamualaikum Wr Wb\nDengan segala kerendahan hati dan syukur atas Karunia Allah SWT\nKami bermaksud mengundang Bapak/Ibu/Saudara(i) pada acara pernikahan kami.', 'Merupakan suatu kebahagiaan bagi Kami apabila Bapak/Ibu/Saudara(i) berkenan hadir untuk memberikan doa restu kepada kami.\nAtas kehadiran dan doa restunya kami ucapkan terimakasih \n\nWassalamualaikum Wr Wb');

-- --------------------------------------------------------

--
-- Table structure for table `slider_bukutamu`
--

CREATE TABLE `slider_bukutamu` (
  `id_slider` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_slider` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `slider_bukutamu`
--

INSERT INTO `slider_bukutamu` (`id_slider`, `id_user`, `nama_slider`) VALUES
(39, 1, 'slider1'),
(40, 1, 'slider2'),
(41, 1, 'slider3');

-- --------------------------------------------------------

--
-- Table structure for table `tamu`
--

CREATE TABLE `tamu` (
  `id_tamu` int(11) NOT NULL,
  `nama_tamu` varchar(100) NOT NULL,
  `nama_slug` varchar(255) NOT NULL,
  `alamat_tamu` varchar(255) NOT NULL,
  `alamat_slug` varchar(255) NOT NULL,
  `no_wa` varchar(100) NOT NULL,
  `qrcode` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tgl_kirim` date NOT NULL,
  `status_kirim` varchar(100) NOT NULL DEFAULT 'belum dikirim',
  `status` varchar(100) DEFAULT NULL,
  `waktu_hadir` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tamu`
--

INSERT INTO `tamu` (`id_tamu`, `nama_tamu`, `nama_slug`, `alamat_tamu`, `alamat_slug`, `no_wa`, `qrcode`, `id_user`, `tgl_kirim`, `status_kirim`, `status`, `waktu_hadir`) VALUES
(1, 'Subscriber MC Project', 'subscriber+mc+project', 'Demak, Jawa Tengah', 'demak+jawa+tengah', '123459687659', '60dfab06cc0bd7569c91e150d46d88eb', 1, '2022-01-23', 'terkirim', '', '2022-02-07 14:18:04'),
(2, 'Member MC Project', 'member+mc+project', 'Padang, Sumatera Barat', 'padang+sumatera+barat', '234559687659', 'd856e4afbab856a267a7509adea025ed', 1, '2021-08-17', 'terkirim', '', '2022-01-27 21:29:21'),
(9, 'Bayu Sutrisno', 'bayu+sutrisno', 'Demak, Jawa Tengah', 'demak+jawa+tengah', '089659687659', 'd0d47b4f15aba1d2f895ea0114d91cce', 1, '2021-08-02', 'terkirim', NULL, '2022-01-27 21:29:21'),
(10, 'Maulana Arifin', 'maulana+arifin', 'Demak, Jawa Tengah', 'demak+jawa+tengah', '089659687659', '649d6a20cf7ef33e53ec124f7714d042', 1, '2021-08-02', 'terkirim', 'hadir', '2022-02-11 16:16:08'),
(11, 'Sofiatun', 'sofiatun', 'Demak, Jawa Tengah', 'demak+jawa+tengah', '089659687659', '13955f73407fa0d614d5f4187ac4ae9b', 1, '2021-08-02', 'terkirim', NULL, NULL),
(12, 'Ni Putu Ziti Sri Asieh', 'ni+putu+ziti+sri+asieh', 'Alamat', 'alamat', '089659687659', '8eff6c616d56dda96a9c7a1b4cfb9c7a', 1, '2021-08-02', 'terkirim', '', '2021-12-03 22:11:58'),
(13, 'Heru Dwi Sugiyono', 'heru+dwi+sugiyono', 'Klaten', 'klaten', '089659687659', 'de1c41ffcc69950eeea0666aaf856720', 1, '2021-08-02', 'terkirim', '', '2021-12-01 20:15:46'),
(57, 'Boy Anugrah', 'boy+anugrah', 'Jl. Jaring', 'jl+jaring', '085270832223', 'a619cb233548c3c94772355a6232a23a', 1, '2022-01-21', 'terkirim', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimoni`
--

CREATE TABLE `testimoni` (
  `id_testi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `kota` varchar(100) DEFAULT NULL,
  `provinsi` varchar(100) DEFAULT NULL,
  `ulasan` text DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `testimoni`
--

INSERT INTO `testimoni` (`id_testi`, `id_user`, `nama_lengkap`, `kota`, `provinsi`, `ulasan`, `status`) VALUES
(3, 1, 'Rey dan Dinda', 'Jakarta, Indonesia', 'Jawa Barat', 'Sangat keren dan menarik, proses pembuatannya juga cepat dan bisa custom sendiri', 2);

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(11) NOT NULL,
  `nama_theme` varchar(50) NOT NULL,
  `kode_theme` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `nama_theme`, `kode_theme`, `status`, `created_at`, `updated_at`) VALUES
(1, 'hwflower', 'A001', 1, '2020-07-26 13:23:40', '2021-07-03 07:16:10'),
(2, 'tealflower', 'A002', 1, '2020-07-26 13:23:40', '2021-05-29 14:36:40'),
(3, 'greenflower', 'A003', 1, '2020-08-17 01:03:22', '2021-05-29 14:36:40'),
(4, 'prettyflower', 'A004', 1, '2020-08-28 18:22:30', '2021-05-29 14:36:40'),
(5, 'blueroses', 'A005', 1, '2020-08-28 17:03:54', '2021-10-31 14:57:53'),
(6, 'redroses', 'A006', 1, '2020-08-28 17:04:08', '2021-05-29 14:36:40'),
(8, 'radiantyellow', 'A007', 1, '2020-08-28 19:56:29', '2021-05-29 14:36:40'),
(9, 'radiantdark', 'A009', 1, '2020-08-28 19:56:29', '2021-05-29 14:44:44'),
(44, 'purpleflower', 'A010', 1, '2021-07-04 02:03:44', '2021-07-05 20:35:26'),
(45, 'sketchflower', 'A011', 1, '2021-07-04 12:59:28', '2021-07-04 19:59:28'),
(49, 'beautiful-floral', 'A012', 1, '2021-09-17 23:52:39', '2021-11-02 20:00:18'),
(50, 'tapis', 'A013', 1, '2021-09-19 07:39:35', '2021-10-01 03:35:01'),
(51, 'rustic', 'A014', 1, '2021-09-20 04:46:10', '2021-09-30 07:10:36'),
(52, 'arabian', 'A015', 1, '2021-09-20 04:46:10', '2021-11-02 20:00:24'),
(53, 'jellyblack', 'A016', 1, '2021-09-20 04:46:28', '2021-09-30 07:10:27'),
(54, 'floral', 'A017', 1, '2021-09-20 04:46:55', '2021-09-30 07:10:31'),
(55, 'vintage-islamic', 'A018', 1, '2021-09-20 04:46:55', '2021-10-31 15:27:15'),
(59, 'islamic1', 'A019', 1, '2022-01-15 02:12:52', '2022-01-16 14:21:28'),
(60, 'watercolor1', 'A020', 1, '2022-01-15 02:12:52', '2022-01-16 14:21:28'),
(61, 'twelve', 'A021', 1, '2022-01-28 09:37:46', '2022-01-28 16:38:22');

-- --------------------------------------------------------

--
-- Table structure for table `themes_video`
--

CREATE TABLE `themes_video` (
  `id_theme` int(11) NOT NULL,
  `nama_tema` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `preview` varchar(200) NOT NULL,
  `url_video` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `themes_video`
--

INSERT INTO `themes_video` (`id_theme`, `nama_tema`, `harga`, `preview`, `url_video`) VALUES
(1, 'Kode 01', 40000, 'kode_01.png', '<iframe src=\"https://drive.google.com/file/d/1OyLGmbmBooRg_dFHtNX_ZOg0VZUWkwxV/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(2, 'Kode 02', 40000, 'kode_02.png', '<iframe src=\"https://drive.google.com/file/d/1BvinpaAotK-xHXgE_OziR9D2HufFZ12p/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(3, 'Kode 03', 40000, 'kode_03.png', '<iframe src=\"https://drive.google.com/file/d/1gOP05_koMTKzsjy1PIfyWV-NlLCwRN6Q/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(4, 'Kode 04', 40000, 'kode_04.png', '<iframe src=\"https://drive.google.com/file/d/1psKTtjNJqiaCyuGqLQfAsUj6Ojtb4_qy/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(5, 'Kode 05', 40000, 'kode_05.png', '<iframe src=\"https://drive.google.com/file/d/1z65eVHOYKdMIp7X2zEmeWnEBg3AtpJ5y/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(6, 'Kode 06', 40000, 'kode_06.png', '<iframe src=\"https://drive.google.com/file/d/1G-N68I75X8aQ3PqQS-A13jJ1KYvATh64/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(7, 'Kode 07', 40000, 'kode_07.png', '<iframe src=\"https://drive.google.com/file/d/1niwHJOkM3M-NJDad7eTzz_M9bS3XXjX_/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(8, 'Kode 08', 40000, 'kode_08.png', '<iframe src=\"https://drive.google.com/file/d/1dlurlHQcI-qEdAfzqALIqeiifor4A1kz/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(9, 'Kode 09', 40000, 'kode_09.png', '<iframe src=\"https://drive.google.com/file/d/16_vSP99YkEPK0U4bdWn1-0mrqHMJhgEK/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(10, 'Kode 10', 40000, 'kode_10.png', '<iframe src=\"https://drive.google.com/file/d/1ek9-CEUrn4rjhoHvLXxUfW7mm0OD8YxN/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(11, 'Kode 11', 40000, 'kode_11.png', '<iframe src=\"https://drive.google.com/file/d/17dcyya0OeY848DjaT-Jn2keUGeqWBF2T/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(12, 'Kode 12', 40000, 'kode_12.png', '<iframe src=\"https://drive.google.com/file/d/1FOccAQ88gZIEh5QlzWvENXnTqzn2-igb/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(13, 'Kode 13', 40000, 'kode_13.png', '<iframe src=\"https://drive.google.com/file/d/1wAoLV_lZEFEWdqkpKiMSfE2CriiUY-Wo/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(14, 'Kode 14', 40000, 'kode_14.png', '<iframe src=\"https://drive.google.com/file/d/1hkU9Zo3LZ5itviqX8hHpUbSAE2NE0HQJ/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(15, 'Kode 15', 40000, 'kode_15.png', '<iframe src=\"https://drive.google.com/file/d/122Ua8UIewzb6cQS6fcbtTz3ax9pWHDz4/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(20, 'Kode 16', 40000, 'kode_16.png', '<iframe src=\"https://drive.google.com/file/d/1TyS6-wuCwkC_NI3PicZXsyrCGokYRYAy/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(25, 'Kode 17', 40000, 'kode_17.png', '<iframe src=\"https://drive.google.com/file/d/16-6NrD_BvVQFEXq5iRxaLyS7jLndqKjc/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(26, 'Kode 18', 40000, 'kode_18.png', '<iframe src=\"https://drive.google.com/file/d/13GVMcTO6qEEx_1aZAaE6xJdw62dY1Lcu/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(27, 'Kode 19', 40000, 'kode_19.png', '<iframe src=\"https://drive.google.com/file/d/1hf8dcyrb4nvOuqwslJuidz8aW0Xqss_a/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(28, 'Kode 20', 40000, 'kode_20.png', '<iframe src=\"https://drive.google.com/file/d/1v_aqcSpj_M5-mWrYdxLse5VVALxZQXvQ/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(29, 'Kode 21', 40000, 'kode_21.png', '<iframe src=\"https://drive.google.com/file/d/1ckXCj5aAS1Ki7G7lIQ4o3DordGAWteV-/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(30, 'Kode 22', 40000, 'kode_22.png', '<iframe src=\"https://drive.google.com/file/d/1koayXRVm_Ibh68odpXgIBoJ8uZ_DHrI1/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(31, 'Kode 23', 40000, 'kode_23.png', '<iframe src=\"https://drive.google.com/file/d/1IxdMkfl_OCO4yfRoeHec42lcZEw-vPTG/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(32, 'Kode 24', 40000, 'kode_24.png', '<iframe src=\"https://drive.google.com/file/d/1sXAGGM1WprmmmuIEa8Q2afZcpjE3dRDZ/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(33, 'Kode 25', 40000, 'kode_25.png', '<iframe src=\"https://drive.google.com/file/d/1PHga9AwwEFxAD7eNwLz55jCkw-HZ_cO5/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(34, 'Kode 26', 40000, 'kode_26.png', '<iframe src=\"https://drive.google.com/file/d/1BO1f_b-ycz30GPiE56emaUAu2m2RJ1zC/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(35, 'Kode 27', 40000, 'kode_27.png', '<iframe src=\"https://drive.google.com/file/d/1GX1vAXqzwvbkTH7AAQPficafmIJ1uG9N/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(36, 'Kode 28', 40000, 'kode_28.png', '<iframe src=\"https://drive.google.com/file/d/1vh3oq92-PQfg1LTltI3J5BjdLASzChAL/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(37, 'Kode 29', 40000, 'kode_29.png', '<iframe src=\"https://drive.google.com/file/d/1ziEnVA9LdabmO6nWT0boAjLFr3F6viYY/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(38, 'Kode 30', 40000, 'kode_30.png', '<iframe src=\"https://drive.google.com/file/d/1OrO1_g2vSiElDQPNfhkq4THqOxC-TjYW/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(39, 'Kode 31', 40000, 'kode_31.png', '<iframe src=\"https://drive.google.com/file/d/1p5NIEnRqP-dPao-CTho0KY0n3CoDUzJM/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(40, 'Kode 32', 40000, 'kode_32.png', '<iframe src=\"https://drive.google.com/file/d/14qHnyViXGjDAcDxDzdKjYEHj1vmTRoUw/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(41, 'Kode 33', 40000, 'kode_33.png', '<iframe src=\"https://drive.google.com/file/d/1xcKpK_9r18-3f4_QAM-QDa2ev0G_7ZIH/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(42, 'Kode 34', 40000, 'kode_34.png', '<iframe src=\"https://drive.google.com/file/d/1qswmddDVgzc3hXEsOpFo_QVW8SoVpyhl/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(43, 'Kode 35', 40000, 'kode_35.png', '<iframe src=\"https://drive.google.com/file/d/1GOUNAlptuhZ83O6ZHebdwf8KKbnlXeeU/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(44, 'Kode 36', 40000, 'kode_36.png', '<iframe src=\"https://drive.google.com/file/d/1LX3VEGhKdXSAjF4D6TAGV5ebyGoZMmFT/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(45, 'Kode 37', 40000, 'kode_37.png', '<iframe src=\"https://drive.google.com/file/d/11spFRdgPZPq1hZpzPW_NsSzTYKrk22iK/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(46, 'Kode 38', 40000, 'kode_38.png', '<iframe src=\"https://drive.google.com/file/d/1Rz2HLPo2BoCRPFIWXZYt38aBv0I4VWrt/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(47, 'Kode 39', 40000, 'kode_39.png', '<iframe src=\"https://drive.google.com/file/d/1L1DCdp09i56_R6fwCdEdPDHH7xz_pqeA/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(48, 'Kode 40', 40000, 'kode_40.png', '<iframe src=\"https://drive.google.com/file/d/1XfOfdlI83d_7RIQLeFob9HoOBGb55FOd/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(49, 'Kode 41', 40000, 'kode_41.png', '<iframe src=\"https://drive.google.com/file/d/1KGx7Ns4DcFibDpQiK3ravUBuUYFKYKTC/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(50, 'Kode 42', 40000, 'kode_42.png', '<iframe src=\"https://drive.google.com/file/d/1Mpw6VXNOvsdsPrxUCQ-MMJeySMos7cEh/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(51, 'Kode 43', 40000, 'kode_43.png', '<iframe src=\"https://drive.google.com/file/d/1EvXINx9hysFIlwa6HpWcdcTtlrjEC2F0/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(52, 'Kode 44', 40000, 'kode_44.png', '<iframe src=\"https://drive.google.com/file/d/1vv3A7KlOMLO3bi6npSUh8n7XjxNOMGVw/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(53, 'Kode 45', 40000, 'kode_45.png', '<iframe src=\"https://drive.google.com/file/d/14_Ka45Z1MWwlzXfJsmKFOw9Bxnv-O1y6/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(54, 'Kode 46', 40000, 'kode_46.png', '<iframe src=\"https://drive.google.com/file/d/13qYybj3gICbZ9ow_tpqmGKbiUE5WvcN4/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(55, 'Kode 47', 40000, 'kode_47.png', '<iframe src=\"https://drive.google.com/file/d/1wglyjVQNl8gZsnz_Z0PEKfiskNoDC9nG/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(56, 'Kode 48', 40000, 'kode_48.png', '<iframe src=\"https://drive.google.com/file/d/1B1GlR9dG8kbBmyauTlTctuFh2EPn8ULp/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(57, 'Kode 49', 40000, 'kode_49.png', '<iframe src=\"https://drive.google.com/file/d/1FC8Lp5b99Eo0upR71sTev1qD-5XU6N-4/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(58, 'Kode 50', 40000, 'kode_50.png', '<iframe src=\"https://drive.google.com/file/d/1McUMlXvCoB0grlrsHQjNxoqK_1ntGg33/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(59, 'Kode 51', 40000, 'kode_51.png', '<iframe src=\"https://drive.google.com/file/d/1W4DdLgcPWe3hIdN3UReTBtUVUagPi-lh/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(60, 'Kode 52', 40000, 'kode_52.png', '<iframe src=\"https://drive.google.com/file/d/1sVobKAEynfB_tm-1voTJJ8xXQNt_LKJs/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(61, 'Kode 53', 40000, 'kode_53.png', '<iframe src=\"https://drive.google.com/file/d/1vzdwgRTcYpDwmJDSZE9d4K9l7ck_2Ps9/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(62, 'Kode 54', 40000, 'kode_54.png', '<iframe src=\"https://drive.google.com/file/d/1Q03xoPiM8OeRny-KiWDAn7WAc-m918_5/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(63, 'Kode 55', 40000, 'kode_55.png', '<iframe src=\"https://drive.google.com/file/d/1rWzIoqfUWeIeFDBOT_6tZahkGombq3yH/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(64, 'Kode 56', 40000, 'kode_56.png', '<iframe src=\"https://drive.google.com/file/d/1-1GC8H51_-zsFEAmV7--9onZB9I4jvgT/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(65, 'Kode 57', 40000, 'kode_57.png', '<iframe src=\"https://drive.google.com/file/d/1Y8sHoNrBgWZBiml4PLiC6xstpW5jem6c/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>'),
(66, 'Kode 58', 40000, 'kode_58.png', '<iframe src=\"https://drive.google.com/file/d/1E96VJFFxt6Q3PQxPFDYYTDBLzYOow3Hy/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_unik` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `token` text DEFAULT NULL,
  `created_token` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `hp`, `email`, `username`, `password`, `id_unik`, `created_at`, `token`, `created_token`) VALUES
(1, '6282377823390', 'demo@gmail.com', 'demo', 'fe01ce2a7fbac8fafaed7c982a04e229', '2007155', '2020-07-26 14:16:42', '', '2022-01-09 03:35:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acara`
--
ALTER TABLE `acara`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cerita`
--
ALTER TABLE `cerita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komen`
--
ALTER TABLE `komen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mempelai`
--
ALTER TABLE `mempelai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rules`
--
ALTER TABLE `rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_bukutamu`
--
ALTER TABLE `slider_bukutamu`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`id_tamu`);

--
-- Indexes for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`id_testi`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `themes_video`
--
ALTER TABLE `themes_video`
  ADD PRIMARY KEY (`id_theme`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acara`
--
ALTER TABLE `acara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=405;

--
-- AUTO_INCREMENT for table `cerita`
--
ALTER TABLE `cerita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `komen`
--
ALTER TABLE `komen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=348;

--
-- AUTO_INCREMENT for table `mempelai`
--
ALTER TABLE `mempelai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `pengunjung`
--
ALTER TABLE `pengunjung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3994;

--
-- AUTO_INCREMENT for table `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT for table `rules`
--
ALTER TABLE `rules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider_bukutamu`
--
ALTER TABLE `slider_bukutamu`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tamu`
--
ALTER TABLE `tamu`
  MODIFY `id_tamu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id_testi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `themes_video`
--
ALTER TABLE `themes_video`
  MODIFY `id_theme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
