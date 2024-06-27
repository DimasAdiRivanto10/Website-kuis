-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3309
-- Generation Time: Jun 23, 2024 at 08:21 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kuis`
--

-- --------------------------------------------------------

--
-- Table structure for table `jawaban`
--

CREATE TABLE `jawaban` (
  `id` int(11) NOT NULL,
  `id_pertanyaan` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `benar` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jawaban`
--

INSERT INTO `jawaban` (`id`, `id_pertanyaan`, `deskripsi`, `benar`) VALUES
(1, 1, 'A. Senin\r\nB. Rabu\r\nC. Minggu\r\nD. Jumat', 0),
(2, 2, 'A. Go Juu San\r\nB. San Juu San\r\nC. San Juu Go\r\nD. Go Juu Ni', 0),
(3, 3, 'A. 18\r\nB. 17\r\nC. 14\r\nD. 11', 0),
(4, 4, 'A. Suiyoubi ( 水曜日 )\r\nB. Mokuyoubi ( 木曜日)\r\nC. Kinyoubi (金曜日)\r\nD. Kayoubi (火曜日)', 0),
(5, 5, 'A. O\r\nB. Me\r\nC. Nu\r\nD. A', 0),
(6, 6, 'A. ち\r\nB. さ\r\nC. ら\r\nD. き', 0),
(7, 7, 'A. Ku\r\nB. Ru\r\nC. U\r\nD. Ke', 0),
(8, 8, 'A. カ\r\nB. サ\r\nC. ケ\r\nD. タ', 0),
(9, 9, 'A. ナ\r\nB. は\r\nC. ハ\r\nD. ア', 0),
(10, 10, 'A. え\r\nB. か\r\nC. ツ\r\nD. し', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pertanyaan` (`id_pertanyaan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD CONSTRAINT `id_pertanyaan` FOREIGN KEY (`id_pertanyaan`) REFERENCES `pertanyaan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
