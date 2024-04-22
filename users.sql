-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2024 at 08:25 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mywebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(1, 'prashant', '$2y$10$eURp6ccTmh38xEPgS7jzc.8E4Q4HQCTIWlMYCvkkIoKl8hisLGxbG', 'plade789@gmail.com'),
(2, 'manoj', '$2y$10$NMgqfxlLg8Bi1Ae7dmVn2uYxONbou/41qdsTKu/ttLDFpFvZSrAH6', 'manoj@gmail.com'),
(3, 'karan', '$2y$10$M9MdvBMp60dwXR3H8hH05eXSu5wUHCpd8aJWUTXCErj6KYHhPT2aC', 'karan@gmail.com'),
(4, 'ramesh', '$2y$10$u7QqpW1tkgRHdkSkQYv2KOVwdb1lCynSExD8YqOvvhRR6PEAeF.l.', 'ramesh@gmail.com'),
(5, 'ramnam', '$2y$10$PL80OX0R5PLBTQz5fWeg/.qszW.Lg/OuaES9pMjEpcdwUxF.FgExy', 'ram@gamil.com'),
(7, 'pravin', '$2y$10$uhmakL6CzPKu.WjodqurLOXm1aUWPNBwctQHhCvEsagiu/69NvdKy', 'pravin@gamil.com'),
(8, 'sakeeb', '$2y$10$nau64p5D.QlfcrS/WljNfuZIqTAce5.lbOCw10fmSPF1MuoPt0uu.', 'sakeeb@gmail.com'),
(9, 'kalpana', '$2y$10$IXu0topurjqWYwOZAWF4QOysV/4z2uP/iDbZgDQ2W/igY0r.rTOK.', 'kalpana@gmail.com'),
(10, 'pramod', '$2y$10$7H2tYhZ6WzeZu5uXhN860uaZZztD1LFjVrcj1jDXTsXwRXKEcXSxq', 'pramod@gmail.com'),
(11, 'mrunali', '$2y$10$JcE9XsEaa8BhOrLJmOAc0uQNKdmvrIXZBcPshJ/utUy9YZf582Wr6', 'mrunali@gmail.com'),
(12, 'shubham', '$2y$10$cK12guKtZWDLQJFsoVkoSufu2PnsvRs9hBM.AiPjkQDXsGl9rx.4i', 'shubham@yahoo.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
