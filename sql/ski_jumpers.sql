-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 02 Sie 2016, 22:08
-- Wersja serwera: 10.1.9-MariaDB
-- Wersja PHP: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `google_chart`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ski_jumpers`
--

CREATE TABLE `ski_jumpers` (
  `id` int(11) NOT NULL,
  `country` varchar(50) NOT NULL,
  `players` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `ski_jumpers`
--

INSERT INTO `ski_jumpers` (`id`, `country`, `players`) VALUES
(1, 'Denmark', 8),
(2, 'Poland', 5),
(3, 'Germany', 6),
(4, 'Ukraina', 4),
(5, 'Georgia', 5),
(6, 'Russia', 3),
(7, 'America', 4),
(8, 'DD', 2),
(9, 'Austria', 5),
(10, 'Austria', 5),
(11, 'Kenia', 10);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `ski_jumpers`
--
ALTER TABLE `ski_jumpers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `ski_jumpers`
--
ALTER TABLE `ski_jumpers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
