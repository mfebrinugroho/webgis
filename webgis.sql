-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Okt 2021 pada 07.43
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webgis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_produksi`
--

CREATE TABLE `data_produksi` (
  `id` int(11) NOT NULL,
  `id_petani` int(11) NOT NULL,
  `komoditas` varchar(255) NOT NULL,
  `luas` varchar(255) NOT NULL,
  `panen_kg` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_produksi`
--

INSERT INTO `data_produksi` (`id`, `id_petani`, `komoditas`, `luas`, `panen_kg`, `harga`) VALUES
(1, 1, 'Padi', '4.1', '200', '4.233'),
(2, 1, 'Jeruk', '1.1', '62', '2.500'),
(3, 6, 'Mangga', '4', '210', '213000'),
(4, 8, 'Mangga', '45', '21', '45000'),
(5, 8, 'Durian', '4', '210', '213000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gapoktan`
--

CREATE TABLE `gapoktan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gapoktan_dibuat` varchar(255) NOT NULL,
  `gapoktan_diubah` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `gapoktan`
--

INSERT INTO `gapoktan` (`id`, `nama`, `gapoktan_dibuat`, `gapoktan_diubah`) VALUES
(1, 'Pangkalan Kongsi', '', ''),
(2, 'Mekar Bersatu', '', ''),
(5, 'CW Cafe 2', '', ''),
(6, 'Putri Nurmala Kost', 'Iqbal Fernanda', 'Admin WEBGIS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `infrastruktur`
--

CREATE TABLE `infrastruktur` (
  `id` int(11) NOT NULL,
  `id_poktan` int(11) NOT NULL,
  `infra_pertanian` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `satuan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `infrastruktur`
--

INSERT INTO `infrastruktur` (`id`, `id_poktan`, `infra_pertanian`, `jumlah`, `satuan`) VALUES
(1, 1, 'Pintu air', 2, 'Meter'),
(2, 3, 'Jalan Usaha Tani', 1, 'Meter'),
(3, 3, 'Parit (Non Kontruksi Beton)', 12, 'Meter'),
(4, 3, 'Jaringan Irigasi (Kontruksi Beton)', 1, 'Meter'),
(5, 3, 'Irigasi Perpipaan (Pipanisasi Bawah Tanah)', 1, 'Meter'),
(6, 3, 'Irigasi Perpompaan (Pipanisasi dan Mesin Pompa Air)', 1, 'Unit'),
(7, 3, 'Pintu Air', 0, 'Unit'),
(8, 3, 'Embung', 0, 'Unit'),
(9, 3, 'Traktor', 0, 'Unit'),
(10, 3, 'Pompa Air', 4, 'Unit'),
(11, 3, 'Perontok Padi', 4, 'Unit'),
(12, 3, 'Penggiling Padi', 1, 'Unit'),
(13, 3, 'Mesin Penanam Padi', 0, 'Unit'),
(14, 3, 'Kendaraan Roda Tiga', 0, 'Unit'),
(15, 4, 'Jalan Usaha Tani', 10, 'Meter'),
(16, 4, 'Parit (Non Kontruksi Beton)', 3, 'Meter'),
(17, 4, 'Jaringan Irigasi (Kontruksi Beton)', 4, 'Meter'),
(18, 4, 'Irigasi Perpipaan (Pipanisasi Bawah Tanah)', 111, 'Meter'),
(19, 4, 'Irigasi Perpompaan (Pipanisasi dan Mesin Pompa Air)', 1, 'Unit'),
(20, 4, 'Pintu Air', 1, 'Unit'),
(21, 4, 'Embung', 1, 'Unit'),
(22, 4, 'Traktor', 1, 'Unit'),
(23, 4, 'Pompa Air', 4, 'Unit'),
(24, 4, 'Perontok Padi', 5, 'Unit'),
(25, 4, 'Penggiling Padi', 6, 'Unit'),
(26, 4, 'Mesin Penanam Padi', 9, 'Unit'),
(27, 4, 'Kendaraan Roda Tiga', 0, 'Unit'),
(41, 8, 'Jalan Usaha Tani', 4, 'Meter'),
(42, 8, 'Parit (Non Kontruksi Beton)', 4, 'Meter'),
(43, 8, 'Jaringan Irigasi (Kontruksi Beton)', 0, 'Meter'),
(44, 8, 'Irigasi Perpipaan (Pipanisasi Bawah Tanah)', 0, 'Meter'),
(45, 8, 'Irigasi Perpompaan (Pipanisasi dan Mesin Pompa Air)', 0, 'Unit'),
(46, 8, 'Pintu Air', 0, 'Unit'),
(47, 8, 'Embung', 0, 'Unit'),
(48, 8, 'Traktor', 0, 'Unit'),
(49, 8, 'Pompa Air', 0, 'Unit'),
(50, 8, 'Perontok Padi', 0, 'Unit'),
(51, 8, 'Penggiling Padi', 0, 'Unit'),
(52, 8, 'Mesin Penanam Padi', 0, 'Unit'),
(53, 8, 'Kendaraan Roda Tiga', 0, 'Unit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keleng_adminis`
--

CREATE TABLE `keleng_adminis` (
  `id` int(11) NOT NULL,
  `id_poktan` int(11) NOT NULL,
  `adminis_kelompok` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `satuan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `keleng_adminis`
--

INSERT INTO `keleng_adminis` (`id`, `id_poktan`, `adminis_kelompok`, `jumlah`, `satuan`) VALUES
(1, 1, 'Kelengkapan Ketua', 1, 'Buah'),
(2, 1, 'Kelengkapan Sekretaris', 2, 'Buah'),
(3, 3, 'Pendaftaran', 1, 'Buah'),
(32, 2, 'Buku Agenda Surat Masuk', 1, 'Buah'),
(33, 2, 'Buku Agenda Surat Keluar', 3, 'Buah'),
(34, 2, 'Buku Agenda Surat Masuk', 1, 'Buah'),
(35, 2, 'Buku Agenda Surat Keluar', 2, 'Buah'),
(36, 2, 'Buku Tamu', 2, 'Buah'),
(37, 2, 'Buku Kas', 4, 'Buah'),
(38, 2, 'Stempel', 5, 'Buah'),
(39, 2, 'Pelaksanaan Rapat Rutin (dalam 1 tahun)', 1, 'Kali'),
(40, 2, 'Laporan Rutin ke Intstansi Teknis/Distan KP (dalam 1 tahun)', 2, 'Kali'),
(69, 4, 'Buku Agenda Surat Masuk', 2, 'Buah'),
(70, 4, 'Buku Agenda Surat Keluar', 1, 'Buah'),
(71, 4, 'Buku Tamu', 1, 'Buah'),
(72, 4, 'Buku Kas', 7, 'Buah'),
(73, 4, 'Stempel', 2, 'Buah'),
(74, 4, 'Pelaksanaan Rapat Rutin (dalam 1 tahun)', 86, 'Kali'),
(75, 4, 'Laporan Rutin ke Intstansi Teknis/Distan KP (dalam 1 tahun)', 12, 'Kali'),
(83, 8, 'Buku Agenda Surat Masuk', 1, 'Buah'),
(84, 8, 'Buku Agenda Surat Keluar', 3, 'Buah'),
(85, 8, 'Buku Tamu', 0, 'Buah'),
(86, 8, 'Buku Kas', 3, 'Buah'),
(87, 8, 'Stempel', 0, 'Buah'),
(88, 8, 'Pelaksanaan Rapat Rutin (dalam 1 tahun)', 0, 'Kali'),
(89, 8, 'Laporan Rutin ke Intstansi Teknis/Distan KP (dalam 1 tahun)', 3, 'Kali');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasi_pertanian`
--

CREATE TABLE `lokasi_pertanian` (
  `id` int(11) NOT NULL,
  `id_petani` int(11) NOT NULL,
  `luas_lahan_sendiri` varchar(255) NOT NULL,
  `luas_lahan_sewa` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `lokasi_pertanian`
--

INSERT INTO `lokasi_pertanian` (`id`, `id_petani`, `luas_lahan_sendiri`, `luas_lahan_sewa`, `keterangan`, `latitude`, `longitude`) VALUES
(1, 1, '', '22', 'Coba 1', '-0.055697142356134', '109.23996082957473'),
(14, 1, '', '44', 'Coba Kedua', '-0.055656205431974', '109.23950185953856'),
(15, 2, '223', '', 'Coba 3', '-0.055630972921604', '109.2392189617291'),
(16, 8, '2', '', '3', '-0.0491435', '109.3187231');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petani`
--

CREATE TABLE `petani` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `status_anggota` varchar(255) NOT NULL,
  `pekerjaan_utama` varchar(255) NOT NULL,
  `pengolah_lahan` int(11) NOT NULL,
  `tanam` int(11) NOT NULL,
  `pemeliharaan` int(11) NOT NULL,
  `panen` int(11) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `status_keluarga` varchar(255) NOT NULL,
  `jml_anggota_keluarga` int(11) NOT NULL,
  `jml_tanggungan` int(11) NOT NULL,
  `pendidikan` varchar(255) NOT NULL,
  `riwayat_pelatihan` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `id_poktan` int(11) NOT NULL,
  `status_post` varchar(255) NOT NULL,
  `periode` varchar(255) NOT NULL,
  `petani_dibuat` varchar(255) NOT NULL,
  `petani_diubah` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `petani`
--

INSERT INTO `petani` (`id`, `nama`, `jabatan`, `status_anggota`, `pekerjaan_utama`, `pengolah_lahan`, `tanam`, `pemeliharaan`, `panen`, `jenis_kelamin`, `status_keluarga`, `jml_anggota_keluarga`, `jml_tanggungan`, `pendidikan`, `riwayat_pelatihan`, `no_hp`, `foto`, `id_poktan`, `status_post`, `periode`, `petani_dibuat`, `petani_diubah`) VALUES
(1, 'Alex Nada', 'Ketua', 'Anggota Kelompok Tani', 'Petani', 3, 2, 1, 0, 'Laki-Laki', 'Kepala Keluarga', 1, 1, 'Sarjana', '1', '01233444444', 'jane_doe.png', 1, 'Sudah Di Post', '2020', '', ''),
(2, 'Mikael', 'Ketua', 'Anggota Kelompok Tani', 'Penggarap', 1, 2, 3, 4, 'Laki-Laki', 'Bapak', 3, 1, 'Sarjana', '4', '111111111111111111111', 'tes.jpg', 5, 'Sudah Di Post', '2020', '', ''),
(3, 'Muanjir', 'Anggota', 'Non Anggota', 'Penanam', 11, 2, 33, 4, 'Perempuan', '', 5, 6, 'SMU/SMK', '1', '', 'dadsadsa.PNG', 3, 'Belum Di Post', '2020', '', ''),
(4, 'Misbahul', 'Bendahara', 'Anggota Kelompok Tani', 'BKD', 9, 8, 7, 6, 'Perempuan', 'Ibu', 1, 1, 'Sarjana', '0', '', 'listfarm (1) (1)_render.png', 5, 'Belum Di Post', '2020', '', ''),
(5, 'Yogo', 'Anggota', 'Anggota Kelompok Tani', 'Petani', 1, 0, 0, 1, 'Laki-Laki', 'Anak', 3, 0, 'Sarjana', '3', '08989914445', 'itemku.PNG', 1, 'Belum Di Post', '2020', '', ''),
(6, 'Hendri Irawan', 'Bendahara', 'Anggota Kelompok Tani', 'Penanam', 1, 1, 1, 1, 'Laki-Laki', 'Bapak', 2, 8, 'Sarjana', '0', '0000000002', 'Use_Case_Umum.png', 3, 'Belum Di Post', '2020', '', ''),
(8, 'Sakura', 'Bendahara', 'Anggota Kelompok Tani', 'BKD', 3, 3, 3, 3, 'Perempuan', '', 0, 0, 'SMU/SMK', '2', '08989914445', 'WhatsApp_Image_2021-10-01_at_14_36_461.jpeg', 8, 'Belum Di Post', '2021', 'Admin WEBGIS', 'Admin WEBGIS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `poktan`
--

CREATE TABLE `poktan` (
  `id` int(11) NOT NULL,
  `id_gapoktan` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nama_ketua` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `pengukuhan` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `desa` varchar(255) NOT NULL,
  `dusun` varchar(255) NOT NULL,
  `rt` varchar(255) NOT NULL,
  `rw` varchar(255) NOT NULL,
  `luas_lahan` int(11) NOT NULL,
  `komoditas_unggul` varchar(255) NOT NULL,
  `geojson` varchar(255) NOT NULL,
  `warna` varchar(255) NOT NULL,
  `status_post` varchar(255) NOT NULL,
  `poktan_dibuat` varchar(255) NOT NULL,
  `poktan_diubah` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `poktan`
--

INSERT INTO `poktan` (`id`, `id_gapoktan`, `nama`, `nama_ketua`, `status`, `pengukuhan`, `kecamatan`, `desa`, `dusun`, `rt`, `rw`, `luas_lahan`, `komoditas_unggul`, `geojson`, `warna`, `status_post`, `poktan_dibuat`, `poktan_diubah`) VALUES
(1, 2, 'Tunas Baru', 'Anna', 'Belum Terdaftar', 'Ada', 'Sambas', 'Tebas', 'Tekarang', '001', '002', 432, 'Padi, Jeruk', 'poktan_pal_9_tunasbaru3.geojson', '#0000FF', 'Sudah Di Post', '', ''),
(2, 2, 'Tunas Mekar', 'Naruto', 'Terdaftar', 'Ada', 'Sambas', 'Polosa', 'Sui Jawi', '002', '002', 552, 'Cabe Hijau', 'poktan_pal_9_tunasmekar2.geojson', '#FF0000', 'Belum Di Post', '', ''),
(3, 1, 'Barsatu Karyatani', 'Alex', 'Terdaftar', 'Ada', 'Karang Anyar', 'Sui Awan', 'Kalton', '004', '001', 331, 'Jagung', 'poktan_pal_9_barsatu_karyatani1.geojson', '#00ff00', 'Sudah Di Post', '', ''),
(4, 2, 'Tunas Muda', 'Arif', 'Belum Terdaftar', 'Tidak Ada', 'Kubu', 'Sukamaju', 'Kebelakang', '002', '003', 523, 'Jagung, Padi, Jeruk Nipis', 'poktan_pal_9_tunasmuda1.geojson', '#ffff00', 'Sudah Di Post', '', ''),
(5, 1, 'Baru Muncul', 'Naruto', 'Belum Terdaftar', 'Tidak Ada', 'Karang Anyar', 'Sui Awan', 'Kalton', '004', '001', 21, 'Jagung, Apel', 'poktan_pal_9_barumuncul.geojson', '#ff00ff', 'Belum Di Post', '', ''),
(8, 5, 'Sungai Raya', 'Arif', 'Terdaftar', 'Tidak Ada', 'Kotabaru', '', '', '', '', 45, 'Kopi', 'poktan_parit_keladi_karyabersama.geojson', '#000000', 'Belum Di Post', 'Admin WEBGIS', 'Admin WEBGIS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prasarana_petani`
--

CREATE TABLE `prasarana_petani` (
  `id` int(11) NOT NULL,
  `id_petani` int(11) NOT NULL,
  `status_pemilik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `prasarana_petani`
--

INSERT INTO `prasarana_petani` (`id`, `id_petani`, `status_pemilik`) VALUES
(1, 1, 'Penggarap'),
(2, 5, 'Penggarap'),
(3, 6, 'Pemilik'),
(4, 4, 'Pemilik'),
(6, 8, 'Penggarap');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produksi_pertanian`
--

CREATE TABLE `produksi_pertanian` (
  `id` int(11) NOT NULL,
  `id_petani` int(11) NOT NULL,
  `jenis_usaha` varchar(255) NOT NULL,
  `jenis_lahan` varchar(255) NOT NULL,
  `sistem_pertanian` varchar(255) NOT NULL,
  `jenis_komoditas` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `jadwal_tanam` varchar(255) NOT NULL,
  `jadwal_panen` varchar(255) NOT NULL,
  `sistem_pengairan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produksi_pertanian`
--

INSERT INTO `produksi_pertanian` (`id`, `id_petani`, `jenis_usaha`, `jenis_lahan`, `sistem_pertanian`, `jenis_komoditas`, `ip`, `jadwal_tanam`, `jadwal_panen`, `sistem_pengairan`) VALUES
(1, 1, 'Tanaman Pangan', 'Sawah', 'Monokultur', 'Palawijaya, Pekebunan', '1 Kali (IP 100%)', 'Januari, Februari', 'Maret', 'Tadah Hujan'),
(2, 5, 'Tanaman Perkebunan', 'Non Sawah', 'Multikultur', 'Padi', '3 Kali (IP 300%)', 'Januari, Februari', 'Maret, Desember', 'Air Hujan'),
(3, 6, 'Tanaman Perkebunan', 'Non Sawah', 'Multikultur', 'Padi, Sawah', '3 Kali (IP 300%)', 'Maret', 'April', 'Hujan'),
(5, 8, 'Tanaman Perkebunan', 'Non Sawah', 'Monokultur', 'Padi, Kopi', '1 Kali (IP 100%)', '', '', 'Air Hujan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sarana_pertanian`
--

CREATE TABLE `sarana_pertanian` (
  `id` int(11) NOT NULL,
  `id_petani` int(11) NOT NULL,
  `sarana` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `satuan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sarana_pertanian`
--

INSERT INTO `sarana_pertanian` (`id`, `id_petani`, `sarana`, `jumlah`, `satuan`) VALUES
(1, 1, 'Cangkul', 4, 'Buah'),
(2, 1, 'Handspayer', 3, 'Buah'),
(3, 5, 'Cangkul', 4, 'Unit'),
(4, 5, 'Handspayer', 6, 'Unit'),
(5, 5, 'Kendaraan Roda Dua/Empat', 2, 'Unit'),
(6, 5, 'Pengunaan Pupuk (dalam 1 Musim Tanam)', 7, 'Unit'),
(7, 8, 'Cangkul', 3, 'Unit'),
(8, 8, 'Handspayer', 0, 'Unit'),
(9, 8, 'Kendaraan Roda Dua/Empat', 2, 'Unit'),
(10, 8, 'Pengunaan Pupuk (dalam 1 Musim Tanam)', 0, 'Unit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `susun_kelompok`
--

CREATE TABLE `susun_kelompok` (
  `id` int(11) NOT NULL,
  `id_poktan` int(11) NOT NULL,
  `id_petani` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tgl_dibuat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `role`, `status`, `gambar`, `tgl_dibuat`) VALUES
(1, 'admin', '$2y$10$5K7CjCPX12R3vcX2q/LO5OYySO3W4ZUHlusTkM8DzTMnwsV75XhIW', 'Admin WEBGIS', 'Admin', 'Aktif', '100_1.jpg', 1633927543),
(2, 'superadmin', '$2y$10$5K7CjCPX12R3vcX2q/LO5OYySO3W4ZUHlusTkM8DzTMnwsV75XhIW', 'Fernanda', 'Super Admin', 'Aktif', '3171051495.jpg', 1633927543),
(4, 'iqbal', '$2y$10$odrd6fSQ4V2k1udruKdY9uGnyCH567UgWAilDxgNCN8zEac0.8ugm', 'Iqbal Fernanda', 'Admin', 'Aktif', 'unnamed.jpg', 1633927543);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_produksi`
--
ALTER TABLE `data_produksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_petani` (`id_petani`);

--
-- Indeks untuk tabel `gapoktan`
--
ALTER TABLE `gapoktan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `infrastruktur`
--
ALTER TABLE `infrastruktur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_poktan` (`id_poktan`);

--
-- Indeks untuk tabel `keleng_adminis`
--
ALTER TABLE `keleng_adminis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_poktan` (`id_poktan`);

--
-- Indeks untuk tabel `lokasi_pertanian`
--
ALTER TABLE `lokasi_pertanian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lokasi_pertanian_ibfk_1` (`id_petani`);

--
-- Indeks untuk tabel `petani`
--
ALTER TABLE `petani`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `poktan`
--
ALTER TABLE `poktan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_gapoktan` (`id_gapoktan`);

--
-- Indeks untuk tabel `prasarana_petani`
--
ALTER TABLE `prasarana_petani`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_petani` (`id_petani`);

--
-- Indeks untuk tabel `produksi_pertanian`
--
ALTER TABLE `produksi_pertanian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_petani` (`id_petani`);

--
-- Indeks untuk tabel `sarana_pertanian`
--
ALTER TABLE `sarana_pertanian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sarana_pertanian_ibfk_1` (`id_petani`);

--
-- Indeks untuk tabel `susun_kelompok`
--
ALTER TABLE `susun_kelompok`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_petani` (`id_petani`),
  ADD KEY `id_poktan` (`id_poktan`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_produksi`
--
ALTER TABLE `data_produksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `gapoktan`
--
ALTER TABLE `gapoktan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `infrastruktur`
--
ALTER TABLE `infrastruktur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `keleng_adminis`
--
ALTER TABLE `keleng_adminis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT untuk tabel `lokasi_pertanian`
--
ALTER TABLE `lokasi_pertanian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `petani`
--
ALTER TABLE `petani`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `poktan`
--
ALTER TABLE `poktan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `prasarana_petani`
--
ALTER TABLE `prasarana_petani`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `produksi_pertanian`
--
ALTER TABLE `produksi_pertanian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `sarana_pertanian`
--
ALTER TABLE `sarana_pertanian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `susun_kelompok`
--
ALTER TABLE `susun_kelompok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_produksi`
--
ALTER TABLE `data_produksi`
  ADD CONSTRAINT `data_produksi_ibfk_1` FOREIGN KEY (`id_petani`) REFERENCES `petani` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `infrastruktur`
--
ALTER TABLE `infrastruktur`
  ADD CONSTRAINT `infrastruktur_ibfk_1` FOREIGN KEY (`id_poktan`) REFERENCES `poktan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `keleng_adminis`
--
ALTER TABLE `keleng_adminis`
  ADD CONSTRAINT `keleng_adminis_ibfk_1` FOREIGN KEY (`id_poktan`) REFERENCES `poktan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `lokasi_pertanian`
--
ALTER TABLE `lokasi_pertanian`
  ADD CONSTRAINT `lokasi_pertanian_ibfk_1` FOREIGN KEY (`id_petani`) REFERENCES `petani` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `poktan`
--
ALTER TABLE `poktan`
  ADD CONSTRAINT `poktan_ibfk_1` FOREIGN KEY (`id_gapoktan`) REFERENCES `gapoktan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `prasarana_petani`
--
ALTER TABLE `prasarana_petani`
  ADD CONSTRAINT `prasarana_petani_ibfk_1` FOREIGN KEY (`id_petani`) REFERENCES `petani` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `produksi_pertanian`
--
ALTER TABLE `produksi_pertanian`
  ADD CONSTRAINT `produksi_pertanian_ibfk_1` FOREIGN KEY (`id_petani`) REFERENCES `petani` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `sarana_pertanian`
--
ALTER TABLE `sarana_pertanian`
  ADD CONSTRAINT `sarana_pertanian_ibfk_1` FOREIGN KEY (`id_petani`) REFERENCES `petani` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `susun_kelompok`
--
ALTER TABLE `susun_kelompok`
  ADD CONSTRAINT `susun_kelompok_ibfk_1` FOREIGN KEY (`id_petani`) REFERENCES `petani` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `susun_kelompok_ibfk_2` FOREIGN KEY (`id_poktan`) REFERENCES `poktan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
