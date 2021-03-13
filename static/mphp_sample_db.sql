-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13 Mar 2021 pada 05.37
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mphp_sample_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `nip` varchar(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `prodi` varchar(100) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `no_telp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`nip`, `nama`, `alamat`, `prodi`, `jurusan`, `no_telp`) VALUES
('19631022 199203 1002', 'Lenny Simanjuntak', 'Jl. Tata Surya No.99, Blimbing, Kota Malang 65342', 'Teknik Informatika', 'Teknologi Informasi', '082137370777'),
('19980506 202101 1002', 'Kholifatul Mahmudah', 'Jl. Saturnus No. 77 Kota Batu ', 'Teknik Informatika', 'Teknologi Informasi', '082139380830');

-- --------------------------------------------------------

--
-- Struktur dari tabel `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text,
  `phone_number` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `student`
--

INSERT INTO `student` (`id`, `name`, `address`, `phone_number`) VALUES
(1, 'Ayu', 'Jl. Pisang Kipas No. 11 - Lowokwaru, Malang', '0812345666777'),
(2, 'Bella', 'Jl. Bunga Coklat No. 22 - Lowokwaru, Malang', '0812345666888'),
(3, 'Chyntia', 'Jl. Sudimoro No. 33 - Lowokwaru, Malang', '0812345666999');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subject`
--

CREATE TABLE `subject` (
  `code` varchar(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `credit` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `subject`
--

INSERT INTO `subject` (`code`, `name`, `credit`) VALUES
('DWH', 'Data Warehouse', 3),
('KCB', 'Kecerdasan Buatan', 2),
('PRY2', 'Proyek 2', 6),
('PWLJ', 'Pemrograman Web Lanjut', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
