-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 24 Mar 2020 pada 16.01
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id12973352_pdfdatabase`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pdftable`
--

CREATE TABLE `pdftable` (
  `id` int(11) NOT NULL,
  `PdfURL` text NOT NULL,
  `PdfName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pdftable`
--

INSERT INTO `pdftable` (`id`, `PdfURL`, `PdfName`) VALUES
(28, 'https://examplerestapi.000webhostapp.com/PdfUploadFolder/raharja.me_sisplus_web_index.php_r=form%2Findex&id=uieUZqCD51TKzdEiGTb3VmGw7XgeJ6jJNOApvVthhbU&form=raharjacareer&p=1.pdf', 'testing raharja PDF 1'),
(29, 'https://examplerestapi.000webhostapp.com/PdfUploadFolder/03db372bb52939c3a1206797194c373d4e3c.pdf', 'testing PDF 2');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pdftable`
--
ALTER TABLE `pdftable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pdftable`
--
ALTER TABLE `pdftable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
