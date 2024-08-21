-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 04, 2019 lúc 11:19 AM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sqli`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '0',
  `author` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `books`
--

INSERT INTO `books` (`id`, `title`, `author`) VALUES
(1, 'A Game of Thrones', 'George R. R. Martin'),
(2, 'A Clash of Kings', 'George R. R. Martin'),
(3, 'A Storm of Swords', 'George R. R. Martin'),
(4, 'A Feast for Crows', 'George R. R. Martin'),
(5, 'A Dance with Dragons', 'George R. R. Martin'),
(6, 'Think and Grow Rich', 'Napoleon Hill'),
(7, 'A Dream of Spring', 'George R. R. Martin'),
(8, 'The Alchemist', 'Paulo Coelho'),
(9, 'The Lord of the Rings', 'J. R. R. Tolkien'),
(10, 'Harry Potter and the Philosopher\'s Stone', 'J. K. Rowling'),
(11, 'The Hobbit', 'J. R. R. Tolkien'),
(12, 'And Then There Were None', 'Agatha Christie'),
(13, 'The Da Vinci Code', 'Dan Brown');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `pin` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `clients`
--

INSERT INTO `clients` (`id`, `pin`) VALUES
(110, 123456789),
(111, 432342198);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(0000000001, 'admin', 'pwd1'),
(0000000002, 'trantu', 'trantu'),
(0000000003, 'ductu', 'ductu'),
(0000000004, 'root', 'root'),
(0000000005, 'toor', 'toor'),
(0000000006, 'at13b', 'at13b'),
(0000000007, 'tund', 'A123456789');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
