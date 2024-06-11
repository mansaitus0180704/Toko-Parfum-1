-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jun 2024 pada 09.31
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokoparfum`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_pesanan`
--

CREATE TABLE `tabel_pesanan` (
  `Tabel_pesanan` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Tanggal_Order` datetime NOT NULL,
  `Order_Status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_pesanan`
--

INSERT INTO `tabel_pesanan` (`Tabel_pesanan`, `User_ID`, `Tanggal_Order`, `Order_Status`) VALUES
(1, 9155, '2024-06-11 07:41:01', 'Terkirim'),
(2, 9321, '2024-06-11 07:41:01', 'Terkirim');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_produk`
--

CREATE TABLE `tabel_produk` (
  `ID_Produk` int(11) NOT NULL,
  `Nama_Produk` varchar(100) DEFAULT NULL,
  `Harga_Produk` int(11) NOT NULL,
  `Deskripsi_Produk` text NOT NULL,
  `Stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_produk`
--

INSERT INTO `tabel_produk` (`ID_Produk`, `Nama_Produk`, `Harga_Produk`, `Deskripsi_Produk`, `Stock`) VALUES
(1, 'Vanilla Susu', 50, 'Parfum vanilla susu menghadirkan aroma yang manis, lembut, dan menggoda yang memikat indera penciuman dengan kehangatan dan kelembutan. \r\n\r\n', 20),
(2, 'Black Coffe', 40, 'Parfum black coffee adalah perpaduan yang memikat antara aroma kopi yang kaya dan menggoda dengan sentuhan kehangatan dan kekuatan yang mempesona. Ketika disemprotkan, aroma kopi yang pekat segera menyapu indera penciuman dengan keharuman yang mendalam dan menggugah selera. ', 20),
(3, 'Black Opium', 50, 'Parfum Black Opium adalah perwujudan dari kekuatan dan misteri yang memikat. Ketika pertama kali disemprotkan, aroma yang memukau segera memenuhi udara dengan kehangatan dan keberanian yang memikat. Aroma kopi hitam yang khas memberikan dimensi yang dalam dan menggoda, memberikan kesan yang kuat namun memikat.', 25),
(4, 'Roman Wish', 45, 'Parfum \"Roman Wish\" membawa Anda dalam perjalanan yang memikat dan romantis ke jantung Kota Eterna, Roma. Saat disemprotkan, aroma segar dan bunga yang mempesona segera memenuhi udara, mengingatkan pada langit biru Roma yang tak terlupakan dan bunga-bunga yang bermekaran di sepanjang jalan.', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pembayaran`
--

CREATE TABLE `tb_pembayaran` (
  `Order_id` int(11) NOT NULL,
  `payment_Id` int(11) NOT NULL,
  `Payment` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_pembayaran`
--

INSERT INTO `tb_pembayaran` (`Order_id`, `payment_Id`, `Payment`, `amount`) VALUES
(202, 20220003, 80, 2),
(215, 20220001, 50, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_ulasan`
--

CREATE TABLE `tb_ulasan` (
  `User_Id` int(30) NOT NULL,
  `Nama_Barang` varchar(40) NOT NULL,
  `Rating` int(11) NOT NULL,
  `Comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_ulasan`
--

INSERT INTO `tb_ulasan` (`User_Id`, `Nama_Barang`, `Rating`, `Comment`) VALUES
(9155, 'Vanila Susu', 5, 'parfum Vanila susu ini sangat cocok bagi orang-orang yang menginginkan badand tetap wangi '),
(9321, 'Black Opium', 9, 'Dari awal, aroma kopi yang khas memimpin panggung dengan kekuatan yang kuat dan keberanian yang menggoda. Ini memberikan kesan yang kuat dan mempesona, menciptakan aura yang memikat sejak pertama kali disemprotkan.');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tabel_pesanan`
--
ALTER TABLE `tabel_pesanan`
  ADD PRIMARY KEY (`Tabel_pesanan`);

--
-- Indeks untuk tabel `tabel_produk`
--
ALTER TABLE `tabel_produk`
  ADD PRIMARY KEY (`ID_Produk`);

--
-- Indeks untuk tabel `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  ADD PRIMARY KEY (`Order_id`);

--
-- Indeks untuk tabel `tb_ulasan`
--
ALTER TABLE `tb_ulasan`
  ADD PRIMARY KEY (`User_Id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tabel_pesanan`
--
ALTER TABLE `tabel_pesanan`
  MODIFY `Tabel_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tabel_produk`
--
ALTER TABLE `tabel_produk`
  MODIFY `ID_Produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  MODIFY `Order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT untuk tabel `tb_ulasan`
--
ALTER TABLE `tb_ulasan`
  MODIFY `User_Id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9322;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
