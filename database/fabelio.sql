-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2020 at 01:54 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fabelio`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail`
--

CREATE TABLE `detail` (
  `id` int(11) NOT NULL,
  `product_id` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `images` varchar(2000) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail`
--

INSERT INTO `detail` (`id`, `product_id`, `title`, `description`, `price`, `images`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '25198', 'Meja Makan Cessi-White', 'Hangatkan Momen Bersantap BersamaBersantap dengan keluarga membutuhkan meja yang sanggup memenuhi seluruh rangkaian menu favorit setiap anggota. Meja Makan Cessi menyediakan solusi tempat yang lapang ', 854050, '[{\"img\":\"https://m2fabelio.imgix.net/catalog/product/cache/image/700x350/e9c3970ab036de70892d86c6d221abfe/c/e/cessi-white.jpg\"},{\"img\":\"https://m2fabelio.imgix.net/catalog/product/cache/image/700x350/', '2020-04-04 17:19:39', '2020-04-04 17:19:39', NULL),
(2, '25198', 'Meja Makan Cessi-White', 'Hangatkan Momen Bersantap BersamaBersantap dengan keluarga membutuhkan meja yang sanggup memenuhi seluruh rangkaian menu favorit setiap anggota. Meja Makan Cessi menyediakan solusi tempat yang lapang ', 854050, '[{\"img\":\"https://m2fabelio.imgix.net/catalog/product/cache/image/700x350/e9c3970ab036de70892d86c6d221abfe/c/e/cessi-white.jpg\"},{\"img\":\"https://m2fabelio.imgix.net/catalog/product/cache/image/700x350/', '2020-04-04 17:19:43', '2020-04-04 17:19:43', NULL),
(3, '28593', 'Kursi Kantor Alpha', 'NB: Untuk produk yang memerlukan perakitan, akan dilakukan beberapa hari setelah produk dikirim. Apabila telah melebih dari 7 (tujuh) hari setelah produk dikirim belum ada tim kami yang menghubungi ja', 629100, '[{\"img\":\"https://m2fabelio.imgix.net/catalog/product/cache/image/700x350/e9c3970ab036de70892d86c6d221abfe/1/_/1_170_2.jpg\"},{\"img\":\"https://m2fabelio.imgix.net/catalog/product/cache/image/700x350/e9c3', '2020-04-04 17:21:30', '2020-04-04 17:21:30', NULL),
(4, '25198', 'Meja Makan Cessi-White', 'Hangatkan Momen Bersantap BersamaBersantap dengan keluarga membutuhkan meja yang sanggup memenuhi seluruh rangkaian menu favorit setiap anggota. Meja Makan Cessi menyediakan solusi tempat yang lapang ', 854050, '[{\"img\":\"https://m2fabelio.imgix.net/catalog/product/cache/image/700x350/e9c3970ab036de70892d86c6d221abfe/c/e/cessi-white.jpg\"},{\"img\":\"https://m2fabelio.imgix.net/catalog/product/cache/image/700x350/', '2020-04-05 12:04:13', '2020-04-05 12:04:13', NULL),
(5, '25198', 'Meja Makan Cessi-White', 'Hangatkan Momen Bersantap BersamaBersantap dengan keluarga membutuhkan meja yang sanggup memenuhi seluruh rangkaian menu favorit setiap anggota. Meja Makan Cessi menyediakan solusi tempat yang lapang ', 854050, '[{\"img\":\"https://m2fabelio.imgix.net/catalog/product/cache/image/700x350/e9c3970ab036de70892d86c6d221abfe/c/e/cessi-white.jpg\"},{\"img\":\"https://m2fabelio.imgix.net/catalog/product/cache/image/700x350/', '2020-04-05 12:04:27', '2020-04-05 12:04:27', NULL),
(6, '25198', 'Meja Makan Cessi-White', 'Hangatkan Momen Bersantap BersamaBersantap dengan keluarga membutuhkan meja yang sanggup memenuhi seluruh rangkaian menu favorit setiap anggota. Meja Makan Cessi menyediakan solusi tempat yang lapang ', 854050, '[{\"img\":\"https://m2fabelio.imgix.net/catalog/product/cache/image/700x350/e9c3970ab036de70892d86c6d221abfe/c/e/cessi-white.jpg\"},{\"img\":\"https://m2fabelio.imgix.net/catalog/product/cache/image/700x350/', '2020-04-05 12:04:46', '2020-04-05 12:04:46', NULL),
(7, '25198', 'Meja Makan Cessi-White', 'Hangatkan Momen Bersantap BersamaBersantap dengan keluarga membutuhkan meja yang sanggup memenuhi seluruh rangkaian menu favorit setiap anggota. Meja Makan Cessi menyediakan solusi tempat yang lapang ', 999999, '[{\"img\":\"https://m2fabelio.imgix.net/catalog/product/cache/image/700x350/e9c3970ab036de70892d86c6d221abfe/c/e/cessi-white.jpg\"},{\"img\":\"https://m2fabelio.imgix.net/catalog/product/cache/image/700x350/', '2020-04-05 12:41:46', '2020-04-05 12:41:46', NULL),
(8, '25198', 'Meja Makan Cessi-White', 'Hangatkan Momen Bersantap BersamaBersantap dengan keluarga membutuhkan meja yang sanggup memenuhi seluruh rangkaian menu favorit setiap anggota. Meja Makan Cessi menyediakan solusi tempat yang lapang ', 854050, '[{\"img\":\"https://m2fabelio.imgix.net/catalog/product/cache/image/700x350/e9c3970ab036de70892d86c6d221abfe/c/e/cessi-white.jpg\"},{\"img\":\"https://m2fabelio.imgix.net/catalog/product/cache/image/700x350/e9c3970ab036de70892d86c6d221abfe/i/m/img_1479.jpg\"},{\"img\":\"https://m2fabelio.imgix.net/catalog/product/cache/image/700x350/e9c3970ab036de70892d86c6d221abfe/i/m/img_1485.jpg\"},{\"img\":\"https://m2fabelio.imgix.net/catalog/product/cache/image/700x350/e9c3970ab036de70892d86c6d221abfe/i/m/img_1489.jpg\"}]', '2020-04-05 17:28:04', '2020-04-05 17:28:04', NULL),
(9, '25198', 'Meja Makan Cessi-White', 'Hangatkan Momen Bersantap BersamaBersantap dengan keluarga membutuhkan meja yang sanggup memenuhi seluruh rangkaian menu favorit setiap anggota. Meja Makan Cessi menyediakan solusi tempat yang lapang ', 854050, '[{\"img\":\"https://m2fabelio.imgix.net/catalog/product/cache/image/700x350/e9c3970ab036de70892d86c6d221abfe/c/e/cessi-white.jpg\"},{\"img\":\"https://m2fabelio.imgix.net/catalog/product/cache/image/700x350/e9c3970ab036de70892d86c6d221abfe/i/m/img_1479.jpg\"},{\"img\":\"https://m2fabelio.imgix.net/catalog/product/cache/image/700x350/e9c3970ab036de70892d86c6d221abfe/i/m/img_1485.jpg\"},{\"img\":\"https://m2fabelio.imgix.net/catalog/product/cache/image/700x350/e9c3970ab036de70892d86c6d221abfe/i/m/img_1489.jpg\"}]', '2020-04-05 18:43:19', '2020-04-05 18:43:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_id` varchar(200) NOT NULL,
  `link` varchar(200) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_id`, `link`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '25198', 'https://fabelio.com/ip/meja-makan-cessi-white-new.html', '2020-04-04 17:19:39', '2020-04-04 17:19:39', NULL),
(2, '28593', 'https://fabelio.com/ip/kursi-kantor-alpha.html', '2020-04-04 17:21:30', '2020-04-04 17:21:30', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail`
--
ALTER TABLE `detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
