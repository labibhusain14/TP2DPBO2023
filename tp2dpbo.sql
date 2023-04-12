-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2023 at 04:18 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tp2dpbo`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `username` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `type` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`username`, `name`, `password`, `type`) VALUES
('admin1', 'Budi', 'abc', 'Customer'),
('admin2', 'Erigo Store', 'efg', 'Seller');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `nama` varchar(225) NOT NULL,
  `harga` varchar(225) NOT NULL,
  `toko` varchar(225) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `foto` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`nama`, `harga`, `toko`, `alamat`, `foto`) VALUES
('Celana Jeans Pria', '400.000', 'Uniqlo Official Store', 'Jawa Barat', 'src\\images\\uniqlo.jpeg'),
('Jaket Jeans Pria', '399.000', '3Second Official Store', 'Banten', 'src\\images\\3scnd.jpeg'),
('Kaos Pendek Pria', '359.000', 'H&M', 'Jakarta', 'src\\images\\h&m.jpeg'),
('Kemeja Panjang Pria', '299.000', 'Erigo Store', 'Jakarta', 'src\\images\\erigo.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `id` varchar(10) NOT NULL,
  `name` varchar(225) NOT NULL,
  `harga` varchar(225) NOT NULL,
  `rating` varchar(225) NOT NULL,
  `terjual` varchar(225) NOT NULL,
  `foto` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`id`, `name`, `harga`, `rating`, `terjual`, `foto`) VALUES
('CT002', 'Celana Tartan Hitam Pria', '456.000', '3.6999998', '31', 'src\\images\\tartan.jpeg'),
('J4005', 'Jaket Parka Hitam Pria ', '556.000', '4.2', '12', 'src\\images\\1.jpeg'),
('JD002', 'Jaket Denim Blue Pria', '499.000', '4.5', '11', 'src\\images\\denim.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`nama`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
