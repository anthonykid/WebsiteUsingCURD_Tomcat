-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jun 2021 pada 17.57
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tabel_dosen_jsp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_data`
--

CREATE TABLE `log_data` (
  `id_log` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `total_gaji_lama` varchar(20) DEFAULT NULL,
  `total_gaji_baru` varchar(20) DEFAULT NULL,
  `waktu` datetime DEFAULT NULL,
  `pengedit` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `log_data`
--

INSERT INTO `log_data` (`id_log`, `id_dosen`, `total_gaji_lama`, `total_gaji_baru`, `waktu`, `pengedit`) VALUES
(5, 3, '18500000', '24050000', '2021-06-07 23:55:28', 'liemMyBro'),
(6, 4, '8000000', '8950000', '2021-06-07 23:55:43', 'liemMyBro'),
(7, 4, '8950000', '10950000', '2021-06-07 23:55:55', 'liemMyBro');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_dosen`
--

CREATE TABLE `tabel_dosen` (
  `id_dosen` int(11) NOT NULL,
  `nidn` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `tmpLahir` varchar(50) DEFAULT NULL,
  `tglLahir` date DEFAULT NULL,
  `telepon` varchar(15) DEFAULT NULL,
  `pendidikan` enum('S2','S3') DEFAULT NULL,
  `gender` enum('L','P') DEFAULT NULL,
  `spesialisasi` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `golongan` enum('3A','3B','3C','4A','4B','4C') DEFAULT NULL,
  `pangkat` enum('AA','L','LK','GB') DEFAULT NULL,
  `pengalaman` text DEFAULT NULL,
  `gajiPokok` int(15) NOT NULL DEFAULT 0,
  `total_gaji` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_dosen`
--

INSERT INTO `tabel_dosen` (`id_dosen`, `nidn`, `nama`, `tmpLahir`, `tglLahir`, `telepon`, `pendidikan`, `gender`, `spesialisasi`, `username`, `pass`, `golongan`, `pangkat`, `pengalaman`, `gajiPokok`, `total_gaji`) VALUES
(3, 1872414599, 'Samuel Liem Tjong', 'Jayapura', '2021-06-17', '0845-4852-4812', 'S3', 'L', 'Programming, Networking, Database, Analyst, ', 'samuel@protonmail.com', '12345', '4A', 'GB', 'juara tingkat nasional ', 15550000, 24050000),
(4, 1872418888, 'Anthony Dicky Rustan', 'Makassar', '2021-06-24', '0813-1835-1851', 'S3', 'L', 'Programming, Networking, Database, ', 'anthony@gmail.com', '123456', '4C', 'LK', 'makan sushi', 7950000, 10950000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_login`
--

CREATE TABLE `tabel_login` (
  `id_login` int(11) NOT NULL,
  `user` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_login`
--

INSERT INTO `tabel_login` (`id_login`, `user`, `pass`) VALUES
(4, 'anthony', '123'),
(5, 'liemMyBro', '12345');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `log_data`
--
ALTER TABLE `log_data`
  ADD PRIMARY KEY (`id_log`);

--
-- Indeks untuk tabel `tabel_dosen`
--
ALTER TABLE `tabel_dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indeks untuk tabel `tabel_login`
--
ALTER TABLE `tabel_login`
  ADD PRIMARY KEY (`id_login`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `log_data`
--
ALTER TABLE `log_data`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tabel_dosen`
--
ALTER TABLE `tabel_dosen`
  MODIFY `id_dosen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tabel_login`
--
ALTER TABLE `tabel_login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
