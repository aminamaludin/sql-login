-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2019 at 06:05 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pembayaran`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_level`
--

CREATE TABLE `tb_level` (
  `level_id` varchar(2) NOT NULL,
  `level_nama` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_level`
--

INSERT INTO `tb_level` (`level_id`, `level_nama`) VALUES
('1', 'admin'),
('2', 'peserta_didik');

-- --------------------------------------------------------

--
-- Table structure for table `tb_level_menu`
--

CREATE TABLE `tb_level_menu` (
  `level_id` varchar(2) NOT NULL,
  `menu_id` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_level_menu`
--

INSERT INTO `tb_level_menu` (`level_id`, `menu_id`) VALUES
('1', '1'),
('1', '3'),
('2', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tb_menu`
--

CREATE TABLE `tb_menu` (
  `menu_id` varchar(2) NOT NULL,
  `menu_nama` varchar(30) NOT NULL,
  `menu_kategori_id` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_menu`
--

INSERT INTO `tb_menu` (`menu_id`, `menu_nama`, `menu_kategori_id`) VALUES
('1', 'peserta_didik.php', '1'),
('2', 'tagihan_pembayaran.php', '3'),
('3', 'pembayaran.php', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tb_menu_kategori`
--

CREATE TABLE `tb_menu_kategori` (
  `menu_kategori_id` varchar(2) NOT NULL,
  `menu_kategori_nama` varchar(20) NOT NULL,
  `level_id` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_menu_kategori`
--

INSERT INTO `tb_menu_kategori` (`menu_kategori_id`, `menu_kategori_nama`, `level_id`) VALUES
('1', 'Master Data', '1'),
('2', 'Pembayaran', '1'),
('3', 'Tagihan Pembayaran', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `level_id` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `username`, `user_password`, `level_id`) VALUES
(1, 'loli', 'popo', ''),
(2, 'rianto', '$2y$10$ACduK5v4qBHTT4EqwrYbJOlAu5Wqyc3pD.OokEVqBzaN.KBtwhLW6', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_level`
--
ALTER TABLE `tb_level`
  ADD PRIMARY KEY (`level_id`);

--
-- Indexes for table `tb_menu`
--
ALTER TABLE `tb_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `tb_menu_kategori`
--
ALTER TABLE `tb_menu_kategori`
  ADD PRIMARY KEY (`menu_kategori_id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
