-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2023 at 02:02 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi-karyawan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_absensi`
--

CREATE TABLE `tb_absensi` (
  `id` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `fotoMasuk` varchar(256) NOT NULL,
  `fotoPulang` varchar(256) NOT NULL,
  `jamMasuk` time NOT NULL,
  `jamPulang` time NOT NULL,
  `lama` time NOT NULL,
  `urlMasuk` text NOT NULL,
  `urlPulang` text NOT NULL,
  `jenis` varchar(32) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_absensi`
--

INSERT INTO `tb_absensi` (`id`, `idUser`, `tanggal`, `fotoMasuk`, `fotoPulang`, `jamMasuk`, `jamPulang`, `lama`, `urlMasuk`, `urlPulang`, `jenis`, `keterangan`) VALUES
(2, 3, '2023-07-06', 'Foto-1688652663.png', 'Foto-1688652671.png', '21:11:03', '21:11:11', '00:00:08', 'https://maps.google.com/maps?&z=15&mrt=yp&t=k&q=1.1365563+104.0413272', 'https://maps.google.com/maps?&z=15&mrt=yp&t=k&q=1.1277742+104.0124045', '', ''),
(3, 5, '2023-07-06', 'Foto-1688652725.png', 'Foto-1688652730.png', '21:12:05', '21:12:10', '00:00:05', 'https://maps.google.com/maps?&z=15&mrt=yp&t=k&q=1.1277742+104.0124045', 'https://maps.google.com/maps?&z=15&mrt=yp&t=k&q=1.1277742+104.0124045', '', ''),
(4, 8, '2023-07-06', 'Foto-1688654461.jpg', 'Foto-1688654507.jpg', '21:41:01', '21:41:47', '00:00:46', 'https://maps.google.com/maps?&z=15&mrt=yp&t=k&q=1.1277868+104.0123677', 'https://maps.google.com/maps?&z=15&mrt=yp&t=k&q=1.1365563+104.0413272', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_aplikasi`
--

CREATE TABLE `tb_aplikasi` (
  `id` int(11) NOT NULL,
  `nama` varchar(256) NOT NULL,
  `telp` varchar(16) NOT NULL,
  `email` varchar(256) NOT NULL,
  `alamat` text NOT NULL,
  `logo` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_aplikasi`
--

INSERT INTO `tb_aplikasi` (`id`, `nama`, `telp`, `email`, `alamat`, `logo`) VALUES
(1, 'Absensi Karyawan By DEDDY', '081275912634', 'Deddyzhang00@gmail.com', 'BATAM, KEPULAUAN RIAU, INDONESIA', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(256) NOT NULL,
  `telp` varchar(16) NOT NULL,
  `email` varchar(256) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `foto` varchar(128) NOT NULL,
  `skin` varchar(8) NOT NULL,
  `level` varchar(16) NOT NULL,
  `terdaftar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `telp`, `email`, `username`, `password`, `foto`, `skin`, `level`, `terdaftar`) VALUES
(1, 'Deddy', '081275912634', 'Deddyzhang00@gmail.com', 'Deddy', '$2y$10$NlE8Ybb3BHHh.Sn1iNeOleP9yR7xhnjPGx2uJyCLTHrlkvSrF2opK', 'Profil-1683634330.jpg', 'red', 'Administrator', '2023-05-06 22:34:57'),
(3, 'Novrianto', '08136543201', 'Novrianto@gmail.com', 'Novrianto', '$2y$10$rZIkSID4ClZqWUAkr0gpcuekPG2NtaoBEsWucVaBhaSBokTH7.PJ2', 'no-image.png', 'purple', 'Karyawan', '2023-05-07 14:48:33'),
(4, 'Yanto', '085264544884', 'Yanto@gmail.com', 'Yanto', '$2y$10$9TRnJP8hvIHpSkCgqTXwAun1JfHK3NPhhzI0g60wWoGhnGVSwaGCe', 'no-image.png', 'blue', 'Karyawan', '2023-05-09 19:25:45'),
(5, 'Yandi Sasanaputra', '082169729227', 'Yandi@gmail.com', 'Yandisasanaputra', '$2y$10$m/uHwdoyEraQPUzEC0T2uOmpjtNzHNRgWDpaZnwTdiKePYP7Tea8C', 'no-image.png', 'blue', 'Karyawan', '2023-05-09 19:27:16'),
(6, 'Agustian', '085668529229', 'Agustian@gmail.com', 'Agustian', '$2y$10$OqCxBXB3dnCgt/5CGGnwve.s7ncQi/IPN0f5hEf9oxNX.jMK5G8Xu', 'no-image.png', 'blue', 'Karyawan', '2023-05-09 19:27:51'),
(7, 'Augustinus Tiodora', '085211922222', 'Augustinus@gmail.com', 'Augustinus', '$2y$10$Y7Z3fSXjcfO.eAo1IUK44.5yFblyFTmkEBvPZibc0iPd356xeYEG2', 'no-image.png', 'blue', 'Karyawan', '2023-05-09 19:28:24'),
(8, 'Deddy', '08123456789', 'Deddy@gmail.com', 'Deddy1', '$2y$10$F9Utfz5PWor8jj5waV.Qp.wR9jfyXYjNduaeDR1pHTJgHhEnY/T/O', 'Profil-1688654387.jpg', 'green', 'Karyawan', '2023-07-06 21:37:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_absensi`
--
ALTER TABLE `tb_absensi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK01` (`idUser`);

--
-- Indexes for table `tb_aplikasi`
--
ALTER TABLE `tb_aplikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_absensi`
--
ALTER TABLE `tb_absensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_aplikasi`
--
ALTER TABLE `tb_aplikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
