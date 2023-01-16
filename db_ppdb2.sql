-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Des 2022 pada 10.56
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ppdb2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `orangtua`
--

CREATE TABLE `orangtua` (
  `no` varchar(15) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `namaayah` varchar(100) NOT NULL,
  `pekerjaanayah` varchar(100) NOT NULL,
  `gajiayah` varchar(100) NOT NULL,
  `namaibu` varchar(100) NOT NULL,
  `pekerjaanibu` varchar(100) NOT NULL,
  `gajiibu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `orangtua`
--

INSERT INTO `orangtua` (`no`, `nama`, `namaayah`, `pekerjaanayah`, `gajiayah`, `namaibu`, `pekerjaanibu`, `gajiibu`) VALUES
('0192', 'Siti', 'Sani', 'Buruh', 'Rp 2000000 -  Rp 4000000', 'Yani', 'Guru', 'Rp 2000000 -  Rp 4000000'),
('0243', 'Titi', 'Toni', 'Atlet', 'Rp 7000000 -  Rp 10000000', 'Ira', 'Guru', 'Rp 7000000 -  Rp 10000000'),
('0279', 'Stefanus', 'Ronaldo', 'Atlet', 'Rp 7000000 -  Rp 10000000', 'Una', 'Ibu Rumah Tangga', '> Rp 10000000'),
('0345', 'Aluh', 'Toni', 'Freelance', 'Rp 4000000 -  Rp 7000000', 'Ina', 'PNS', 'Rp 7000000 -  Rp 10000000'),
('0876', 'Imah', 'Tono', 'Guru', 'Rp 4000000 -  Rp 7000000', 'Yuli', 'Guru', 'Rp 4000000 -  Rp 7000000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `no` varchar(15) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jk` varchar(10) NOT NULL,
  `tempat` varchar(30) NOT NULL,
  `tgl_lahir` varchar(100) NOT NULL,
  `agama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `asalsekolah` varchar(50) NOT NULL,
  `nohp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`no`, `nama`, `jk`, `tempat`, `tgl_lahir`, `agama`, `alamat`, `asalsekolah`, `nohp`) VALUES
('0001', 'Ricky', 'Laki-laki', 'Pangkalanbun', '01-12-2002', 'Islam', 'Lamandau Kalteng', 'Smpn 2 Lamandau', '081277558212'),
('0192', 'Siti', 'Perempuan', 'Banjarbaru', '07-07-2002', 'Islam', 'A. Yani Km 5', 'Mtsn Mulawarman', '085200773487'),
('0279', 'Stefanus', 'Laki-laki', 'Woromboa', '24-09-2002', 'Katolik', 'Jl Sultan Adam', 'Smpn 1 Banjarmasin', '081278320087'),
('0345', 'Aluh', 'Perempuan', 'Jakarta', '12-01-2002', 'Islam', 'Jl. Sungai Andai', 'Smpn 8 Banjarmasin', '081278323217'),
('0612', 'Helmi', 'Laki-laki', 'Banjarmasin', '09-08-2002', 'Islam', 'Jl. Kuin Selatan', 'Smpn 9 Banjarmasin', '081251275536'),
('0876', 'Imah', 'Perempuan', 'Banjarbaru', '09-03-2001', 'Islam', 'Jl. Sultan Adam', 'Smpn 4 Banjarmasin', '081256398834');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `no_transaksi` int(10) NOT NULL,
  `no` varchar(15) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `pembayaran` varchar(100) NOT NULL,
  `harga` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`no_transaksi`, `no`, `nama`, `pembayaran`, `harga`) VALUES
(1, '0001', 'Ricky', 'Koperasi', 4000000),
(2, '0876', 'Imah', 'Bank BRI', 3000000),
(3, '0279', 'Stefanus', 'Bank BRI', 4000000),
(4, '0192', 'Siti', 'Bank BNI', 4000000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `orangtua`
--
ALTER TABLE `orangtua`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`no_transaksi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `no_transaksi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
