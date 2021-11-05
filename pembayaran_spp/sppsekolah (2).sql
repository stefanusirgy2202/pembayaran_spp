-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2020 at 05:04 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sppsekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(5) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `namalengkap` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idadmin`, `username`, `password`, `namalengkap`) VALUES
(1, 'admin', 'admin', 'Stefanus irgy');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `idguru` int(5) NOT NULL,
  `namaguru` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`idguru`, `namaguru`) VALUES
(9, 'Farhan Mulya, ST.'),
(10, 'Hani Prasetya, SE.'),
(11, 'Budi Haryono, STh.');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `idsiswa` int(10) NOT NULL,
  `nis` varchar(10) DEFAULT NULL,
  `namasiswa` varchar(40) DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `tahunajaran` varchar(10) DEFAULT NULL,
  `biaya` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`idsiswa`, `nis`, `namasiswa`, `kelas`, `tahunajaran`, `biaya`) VALUES
(12, '12311', 'Fadli', '1 D3 A', '2020/2021', 250000),
(13, '12312', 'Erni Anas', '1 D3 A', '2020/2021', 250000),
(14, '12313', 'Ivana Febi', '1 D3 A', '2020/2021', 250000),
(15, '12314', 'Kris Giovanni', '1 D4 A', '2020/2021', 250000),
(16, '12315', 'Salwa Sausan', '1 D4 A', '2020/2021', 250000),
(17, '12316', 'Geri Mulya', '1 D4 A', '2020/2021', 250000),
(18, '12317', 'Timothy Alfa', '1 D4 B', '2020/2021', 250000),
(19, '12318', 'I Gede Bara', '1 D4 B', '2020/2021', 250000),
(20, '12319', 'Marissa Naomi', '1 D4 B', '2020/2021', 250000);

-- --------------------------------------------------------

--
-- Table structure for table `spp`
--

CREATE TABLE `spp` (
  `idspp` int(100) NOT NULL,
  `idsiswa` int(10) DEFAULT NULL,
  `jatuhtempo` date DEFAULT NULL,
  `bulan` varchar(20) DEFAULT NULL,
  `nobayar` varchar(10) DEFAULT NULL,
  `tglbayar` date DEFAULT NULL,
  `jumlah` int(20) DEFAULT NULL,
  `ket` varchar(20) DEFAULT NULL,
  `idadmin` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spp`
--

INSERT INTO `spp` (`idspp`, `idsiswa`, `jatuhtempo`, `bulan`, `nobayar`, `tglbayar`, `jumlah`, `ket`, `idadmin`) VALUES
(49, 12, '2020-01-01', 'Januari 2020', '2011170001', '2020-11-17', 250000, 'LUNAS', 1),
(50, 12, '2020-02-01', 'Februari 2020', '2011170002', '2020-11-17', 250000, 'LUNAS', 1),
(51, 12, '2020-03-01', 'Maret 2020', '2011170003', '2020-11-17', 250000, 'LUNAS', 1),
(52, 12, '2020-04-01', 'April 2020', NULL, NULL, 250000, NULL, NULL),
(53, 12, '2020-05-01', 'Mei 2020', NULL, NULL, 250000, NULL, NULL),
(54, 12, '2020-06-01', 'Juni 2020', NULL, NULL, 250000, NULL, NULL),
(55, 12, '2020-07-01', 'Juli 2020', NULL, NULL, 250000, NULL, NULL),
(56, 12, '2020-08-01', 'Agustus 2020', NULL, NULL, 250000, NULL, NULL),
(57, 12, '2020-09-01', 'September 2020', NULL, NULL, 250000, NULL, NULL),
(58, 12, '2020-10-01', 'Oktober 2020', NULL, NULL, 250000, NULL, NULL),
(59, 12, '2020-11-01', 'November 2020', NULL, NULL, 250000, NULL, NULL),
(60, 12, '2020-12-01', 'Desember 2020', NULL, NULL, 250000, NULL, NULL),
(61, 13, '2020-01-01', 'Januari 2020', NULL, NULL, 250000, NULL, NULL),
(62, 13, '2020-02-01', 'Februari 2020', NULL, NULL, 250000, NULL, NULL),
(63, 13, '2020-03-01', 'Maret 2020', NULL, NULL, 250000, NULL, NULL),
(64, 13, '2020-04-01', 'April 2020', NULL, NULL, 250000, NULL, NULL),
(65, 13, '2020-05-01', 'Mei 2020', NULL, NULL, 250000, NULL, NULL),
(66, 13, '2020-06-01', 'Juni 2020', NULL, NULL, 250000, NULL, NULL),
(67, 13, '2020-07-01', 'Juli 2020', NULL, NULL, 250000, NULL, NULL),
(68, 13, '2020-08-01', 'Agustus 2020', NULL, NULL, 250000, NULL, NULL),
(69, 13, '2020-09-01', 'September 2020', NULL, NULL, 250000, NULL, NULL),
(70, 13, '2020-10-01', 'Oktober 2020', NULL, NULL, 250000, NULL, NULL),
(71, 13, '2020-11-01', 'November 2020', NULL, NULL, 250000, NULL, NULL),
(72, 13, '2020-12-01', 'Desember 2020', NULL, NULL, 250000, NULL, NULL),
(73, 14, '2020-01-01', 'Januari 2020', NULL, NULL, 250000, NULL, NULL),
(74, 14, '2020-02-01', 'Februari 2020', NULL, NULL, 250000, NULL, NULL),
(75, 14, '2020-03-01', 'Maret 2020', NULL, NULL, 250000, NULL, NULL),
(76, 14, '2020-04-01', 'April 2020', NULL, NULL, 250000, NULL, NULL),
(77, 14, '2020-05-01', 'Mei 2020', NULL, NULL, 250000, NULL, NULL),
(78, 14, '2020-06-01', 'Juni 2020', NULL, NULL, 250000, NULL, NULL),
(79, 14, '2020-07-01', 'Juli 2020', NULL, NULL, 250000, NULL, NULL),
(80, 14, '2020-08-01', 'Agustus 2020', NULL, NULL, 250000, NULL, NULL),
(81, 14, '2020-09-01', 'September 2020', NULL, NULL, 250000, NULL, NULL),
(82, 14, '2020-10-01', 'Oktober 2020', NULL, NULL, 250000, NULL, NULL),
(83, 14, '2020-11-01', 'November 2020', NULL, NULL, 250000, NULL, NULL),
(84, 14, '2020-12-01', 'Desember 2020', NULL, NULL, 250000, NULL, NULL),
(85, 15, '2020-01-01', 'Januari 2020', NULL, NULL, 250000, NULL, NULL),
(86, 15, '2020-02-01', 'Februari 2020', NULL, NULL, 250000, NULL, NULL),
(87, 15, '2020-03-01', 'Maret 2020', NULL, NULL, 250000, NULL, NULL),
(88, 15, '2020-04-01', 'April 2020', NULL, NULL, 250000, NULL, NULL),
(89, 15, '2020-05-01', 'Mei 2020', NULL, NULL, 250000, NULL, NULL),
(90, 15, '2020-06-01', 'Juni 2020', NULL, NULL, 250000, NULL, NULL),
(91, 15, '2020-07-01', 'Juli 2020', NULL, NULL, 250000, NULL, NULL),
(92, 15, '2020-08-01', 'Agustus 2020', NULL, NULL, 250000, NULL, NULL),
(93, 15, '2020-09-01', 'September 2020', NULL, NULL, 250000, NULL, NULL),
(94, 15, '2020-10-01', 'Oktober 2020', NULL, NULL, 250000, NULL, NULL),
(95, 15, '2020-11-01', 'November 2020', NULL, NULL, 250000, NULL, NULL),
(96, 15, '2020-12-01', 'Desember 2020', NULL, NULL, 250000, NULL, NULL),
(97, 16, '2020-01-01', 'Januari 2020', NULL, NULL, 250000, NULL, NULL),
(98, 16, '2020-02-01', 'Februari 2020', NULL, NULL, 250000, NULL, NULL),
(99, 16, '2020-03-01', 'Maret 2020', NULL, NULL, 250000, NULL, NULL),
(100, 16, '2020-04-01', 'April 2020', NULL, NULL, 250000, NULL, NULL),
(101, 16, '2020-05-01', 'Mei 2020', NULL, NULL, 250000, NULL, NULL),
(102, 16, '2020-06-01', 'Juni 2020', NULL, NULL, 250000, NULL, NULL),
(103, 16, '2020-07-01', 'Juli 2020', NULL, NULL, 250000, NULL, NULL),
(104, 16, '2020-08-01', 'Agustus 2020', NULL, NULL, 250000, NULL, NULL),
(105, 16, '2020-09-01', 'September 2020', NULL, NULL, 250000, NULL, NULL),
(106, 16, '2020-10-01', 'Oktober 2020', NULL, NULL, 250000, NULL, NULL),
(107, 16, '2020-11-01', 'November 2020', NULL, NULL, 250000, NULL, NULL),
(108, 16, '2020-12-01', 'Desember 2020', NULL, NULL, 250000, NULL, NULL),
(109, 17, '2020-01-01', 'Januari 2020', NULL, NULL, 250000, NULL, NULL),
(110, 17, '2020-02-01', 'Februari 2020', NULL, NULL, 250000, NULL, NULL),
(111, 17, '2020-03-01', 'Maret 2020', NULL, NULL, 250000, NULL, NULL),
(112, 17, '2020-04-01', 'April 2020', NULL, NULL, 250000, NULL, NULL),
(113, 17, '2020-05-01', 'Mei 2020', NULL, NULL, 250000, NULL, NULL),
(114, 17, '2020-06-01', 'Juni 2020', NULL, NULL, 250000, NULL, NULL),
(115, 17, '2020-07-01', 'Juli 2020', NULL, NULL, 250000, NULL, NULL),
(116, 17, '2020-08-01', 'Agustus 2020', NULL, NULL, 250000, NULL, NULL),
(117, 17, '2020-09-01', 'September 2020', NULL, NULL, 250000, NULL, NULL),
(118, 17, '2020-10-01', 'Oktober 2020', NULL, NULL, 250000, NULL, NULL),
(119, 17, '2020-11-01', 'November 2020', NULL, NULL, 250000, NULL, NULL),
(120, 17, '2020-12-01', 'Desember 2020', NULL, NULL, 250000, NULL, NULL),
(121, 18, '2020-01-01', 'Januari 2020', NULL, NULL, 250000, NULL, NULL),
(122, 18, '2020-02-01', 'Februari 2020', NULL, NULL, 250000, NULL, NULL),
(123, 18, '2020-03-01', 'Maret 2020', NULL, NULL, 250000, NULL, NULL),
(124, 18, '2020-04-01', 'April 2020', NULL, NULL, 250000, NULL, NULL),
(125, 18, '2020-05-01', 'Mei 2020', NULL, NULL, 250000, NULL, NULL),
(126, 18, '2020-06-01', 'Juni 2020', NULL, NULL, 250000, NULL, NULL),
(127, 18, '2020-07-01', 'Juli 2020', NULL, NULL, 250000, NULL, NULL),
(128, 18, '2020-08-01', 'Agustus 2020', NULL, NULL, 250000, NULL, NULL),
(129, 18, '2020-09-01', 'September 2020', NULL, NULL, 250000, NULL, NULL),
(130, 18, '2020-10-01', 'Oktober 2020', NULL, NULL, 250000, NULL, NULL),
(131, 18, '2020-11-01', 'November 2020', NULL, NULL, 250000, NULL, NULL),
(132, 18, '2020-12-01', 'Desember 2020', NULL, NULL, 250000, NULL, NULL),
(133, 19, '2020-01-01', 'Januari 2020', NULL, NULL, 250000, NULL, NULL),
(134, 19, '2020-02-01', 'Februari 2020', NULL, NULL, 250000, NULL, NULL),
(135, 19, '2020-03-01', 'Maret 2020', NULL, NULL, 250000, NULL, NULL),
(136, 19, '2020-04-01', 'April 2020', NULL, NULL, 250000, NULL, NULL),
(137, 19, '2020-05-01', 'Mei 2020', NULL, NULL, 250000, NULL, NULL),
(138, 19, '2020-06-01', 'Juni 2020', NULL, NULL, 250000, NULL, NULL),
(139, 19, '2020-07-01', 'Juli 2020', NULL, NULL, 250000, NULL, NULL),
(140, 19, '2020-08-01', 'Agustus 2020', NULL, NULL, 250000, NULL, NULL),
(141, 19, '2020-09-01', 'September 2020', NULL, NULL, 250000, NULL, NULL),
(142, 19, '2020-10-01', 'Oktober 2020', NULL, NULL, 250000, NULL, NULL),
(143, 19, '2020-11-01', 'November 2020', NULL, NULL, 250000, NULL, NULL),
(144, 19, '2020-12-01', 'Desember 2020', NULL, NULL, 250000, NULL, NULL),
(145, 20, '2020-01-01', 'Januari 2020', NULL, NULL, 250000, NULL, NULL),
(146, 20, '2020-02-01', 'Februari 2020', NULL, NULL, 250000, NULL, NULL),
(147, 20, '2020-03-01', 'Maret 2020', NULL, NULL, 250000, NULL, NULL),
(148, 20, '2020-04-01', 'April 2020', NULL, NULL, 250000, NULL, NULL),
(149, 20, '2020-05-01', 'Mei 2020', NULL, NULL, 250000, NULL, NULL),
(150, 20, '2020-06-01', 'Juni 2020', NULL, NULL, 250000, NULL, NULL),
(151, 20, '2020-07-01', 'Juli 2020', NULL, NULL, 250000, NULL, NULL),
(152, 20, '2020-08-01', 'Agustus 2020', NULL, NULL, 250000, NULL, NULL),
(153, 20, '2020-09-01', 'September 2020', NULL, NULL, 250000, NULL, NULL),
(154, 20, '2020-10-01', 'Oktober 2020', NULL, NULL, 250000, NULL, NULL),
(155, 20, '2020-11-01', 'November 2020', NULL, NULL, 250000, NULL, NULL),
(156, 20, '2020-12-01', 'Desember 2020', NULL, NULL, 250000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `walikelas`
--

CREATE TABLE `walikelas` (
  `kelas` varchar(10) NOT NULL,
  `idguru` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `walikelas`
--

INSERT INTO `walikelas` (`kelas`, `idguru`) VALUES
('1 D4 A', 9),
('1 D4 B', 10),
('1 D3 A', 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`idguru`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`idsiswa`),
  ADD KEY `fk_kelas` (`kelas`);

--
-- Indexes for table `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`idspp`),
  ADD KEY `fk_admin` (`idadmin`),
  ADD KEY `fk_siswa` (`idsiswa`);

--
-- Indexes for table `walikelas`
--
ALTER TABLE `walikelas`
  ADD PRIMARY KEY (`kelas`),
  ADD KEY `fk_guru` (`idguru`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `idguru` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `idsiswa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `spp`
--
ALTER TABLE `spp`
  MODIFY `idspp` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `fk_kelas` FOREIGN KEY (`kelas`) REFERENCES `walikelas` (`kelas`) ON UPDATE CASCADE;

--
-- Constraints for table `spp`
--
ALTER TABLE `spp`
  ADD CONSTRAINT `fk_admin` FOREIGN KEY (`idadmin`) REFERENCES `admin` (`idadmin`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_siswa` FOREIGN KEY (`idsiswa`) REFERENCES `siswa` (`idsiswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `walikelas`
--
ALTER TABLE `walikelas`
  ADD CONSTRAINT `fk_guru` FOREIGN KEY (`idguru`) REFERENCES `guru` (`idguru`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
