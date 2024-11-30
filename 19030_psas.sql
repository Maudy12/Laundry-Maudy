-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2024 at 01:11 PM
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
-- Database: `19030_psas`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis`
--

CREATE TABLE `tb_jenis` (
  `kd_jenis` int(11) NOT NULL,
  `jenis_laundry` varchar(100) NOT NULL,
  `lama_proses` int(11) NOT NULL,
  `tarif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_jenis`
--

INSERT INTO `tb_jenis` (`kd_jenis`, `jenis_laundry`, `lama_proses`, `tarif`) VALUES
(1, 'Laundry + Seterika', 3, 70000),
(2, 'Fast Laundry', 1, 10000),
(12, 'Regular', 2, 6000),
(13, 'Cuci Karpet', 3, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_laundry`
--

CREATE TABLE `tb_laundry` (
  `id_laundry` char(10) NOT NULL,
  `pelangganid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `kd_jenis` char(6) NOT NULL,
  `tgl_terima` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `jml_kilo` int(11) NOT NULL,
  `catatan` text NOT NULL,
  `totalbayar` int(11) NOT NULL,
  `status_pembayaran` int(1) NOT NULL,
  `status_pengambilan` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_laundry`
--

INSERT INTO `tb_laundry` (`id_laundry`, `pelangganid`, `userid`, `kd_jenis`, `tgl_terima`, `tgl_selesai`, `jml_kilo`, `catatan`, `totalbayar`, `status_pembayaran`, `status_pengambilan`) VALUES
('LD-0001', 5, 27, '1', '2022-01-09', '2022-01-12', 10, '5 baju, 5 celana levis', 70000, 1, 1),
('LD-0002', 3, 27, '2', '2022-01-09', '2022-01-10', 10, '10 kemeja, 2 celana training', 100000, 1, 0),
('LD-0003', 5, 27, '13', '2022-01-09', '2022-01-12', 20, 'Karpet 20kg', 200000, 1, 1),
('LD-0005', 9, 27, '1', '2022-01-09', '2022-01-12', 5, '2 celana, 3 baju, 2 kaus', 35000, 1, 1),
('LD-0006', 11, 28, '2', '2024-11-20', '2024-11-21', 15, 'Selesai', 150000, 1, 0),
('LD-0007', 12, 27, '12', '2024-11-20', '2024-11-22', 12, 'HAIAIAI', 72000, 0, 0),
('LD-0008', 13, 27, '12', '2024-11-21', '2024-11-23', 12, 'Karpet10kg', 72000, 1, 0),
('LD-0009', 10, 27, '12', '2024-11-30', '2024-12-02', 12, 'Biasa', 72000, 1, 1),
('LD-0010', 14, 27, '2', '2024-11-30', '2024-12-01', 11, 'Semoga amanah', 110000, 1, 0),
('LD-0011', 15, 27, '12', '2024-11-30', '2024-12-02', 12, '', 72000, 1, 0),
('LD-0012', 16, 27, '13', '2024-11-30', '2024-12-03', 9, '', 90000, 1, 0),
('LD-0013', 17, 27, '1', '2024-11-30', '2024-12-03', 10, '', 70000, 1, 0),
('LD-0014', 18, 27, '12', '2024-11-30', '2024-12-02', 10, '', 60000, 1, 0),
('LD-0015', 19, 27, '14', '2024-11-30', '2024-12-06', 12, '', 60000, 1, 0),
('LD-0016', 19, 27, '13', '2024-11-30', '2024-12-03', 11, '', 110000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `pelangganid` int(11) NOT NULL,
  `pelanggannama` varchar(150) NOT NULL,
  `pelangganjk` varchar(15) NOT NULL,
  `pelangganalamat` text NOT NULL,
  `pelanggantelp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`pelangganid`, `pelanggannama`, `pelangganjk`, `pelangganalamat`, `pelanggantelp`) VALUES
(10, 'Asfi Zainatul', 'Laki - laki', 'Jogja', '0987654332'),
(14, 'Angel', 'Perempuan', 'Krandegan', '08976564'),
(15, 'Ismey', 'Perempuan', 'Joho', '0894666573'),
(16, 'Syafii', 'Laki - laki', 'Pagedongan', '08867546'),
(19, 'Zulin', 'Perempuan', 'Pagedongan', '08907654');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengeluaran`
--

CREATE TABLE `tb_pengeluaran` (
  `id_pengeluaran` char(10) NOT NULL,
  `tgl_pengeluaran` date NOT NULL,
  `catatan` text NOT NULL,
  `pengeluaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_pengeluaran`
--

INSERT INTO `tb_pengeluaran` (`id_pengeluaran`, `tgl_pengeluaran`, `catatan`, `pengeluaran`) VALUES
('PG-0003', '2024-11-28', 'service mesin cuci', 100000),
('PG-0004', '2024-11-28', 'Membeli pemutih pakaian', 50000),
('PG-0005', '2024-11-28', 'beli deterjen', 80000),
('PG-0006', '2024-11-30', 'Pewangi pakaian', 60000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `userid` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `userpass` varchar(100) NOT NULL,
  `jk` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `usertelp` varchar(20) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`userid`, `username`, `userpass`, `jk`, `alamat`, `usertelp`, `level`) VALUES
(27, 'Mowi', '827ccb0eea8a706c4c34a16891f84e7b', 'Perempuan', 'Madukara', '08953925199', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_jenis`
--
ALTER TABLE `tb_jenis`
  ADD PRIMARY KEY (`kd_jenis`);

--
-- Indexes for table `tb_laundry`
--
ALTER TABLE `tb_laundry`
  ADD PRIMARY KEY (`id_laundry`);

--
-- Indexes for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`pelangganid`);

--
-- Indexes for table `tb_pengeluaran`
--
ALTER TABLE `tb_pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_jenis`
--
ALTER TABLE `tb_jenis`
  MODIFY `kd_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  MODIFY `pelangganid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
