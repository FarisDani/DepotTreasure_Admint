-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Bulan Mei 2024 pada 16.36
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `galon_admin`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `productid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` int(10) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`productid`, `name`, `price`, `foto`) VALUES
(1, 'Isi Ulang', 7000, 'isi ulang.jpg'),
(2, 'Aqua Galon', 21000, 'aqua.jpg'),
(11, 'Vit Galon', 18500, 'vit.jpg'),
(14, 'Le Mineral Galon', 21500, 'le mineral.jpg'),
(15, 'Tabung Gas 3 Kg', 22500, 'gas 3kg.jpeg'),
(16, 'Tabung Gas 12 Kg', 225000, 'gas 12kg.jpg'),
(17, 'Gas Kaleng', 7000, 'gas kaleng.jpg'),
(36, 'ViewSonic VA2432H', 1299000, ''),
(37, 'hebat', 6000, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `telp` int(20) NOT NULL,
  `alamat` text NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `password`, `telp`, `alamat`, `level`) VALUES
('123', '123', 123, '123', ''),
('a', 'abc', 2147483647, 'rhaisa', ''),
('admin', 'admin', 812345678, 'wates, kulon progo', 'admin'),
('Agil', 'agil', 2147483647, 'Kurang Paham', ''),
('andra', '123', 123, '123', ''),
('dani', 'pancongoreo', 2147483647, 'Hendrokilo, RT 05/RW 02 Nepen, Teras, Boyolali, Jawa Tengah', ''),
('prikitiuw', '123', 2147483647, 'd', 'admin'),
('user', 'user', 82131414, 'jepara, jawa tengah', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
