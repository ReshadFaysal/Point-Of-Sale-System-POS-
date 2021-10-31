-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2021 at 11:08 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(11, 'Sunglass'),
(12, 'Ladies watch'),
(13, 'wall clock'),
(14, 'Table clock'),
(16, 'Alarm clock'),
(17, 'Wrist watch'),
(18, 'kids watch'),
(19, 'Mens Watch');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `cashier_name` varchar(100) NOT NULL,
  `order_date` date NOT NULL,
  `time_order` text NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `cashier_name`, `order_date`, `time_order`, `total`) VALUES
(9, 'Reshad', '2021-05-27', '10:38:22pm', 90000),
(11, 'Reshad', '2021-05-28', '06:54:16pm', 40500),
(12, 'Reshad', '2021-05-30', '08:13:30pm', 50000),
(13, 'Reshad', '2021-06-01', '03:07:15pm', 150000);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_detail`
--

CREATE TABLE `invoice_detail` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `pCode` text NOT NULL,
  `pName` text NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pId` int(11) NOT NULL,
  `pCode` varchar(100) NOT NULL,
  `pName` varchar(100) NOT NULL,
  `pCategory` varchar(100) NOT NULL,
  `purchasePrice` float(10,0) NOT NULL,
  `sellPrice` float(10,0) NOT NULL,
  `pStock` int(100) NOT NULL,
  `minStock` int(100) NOT NULL,
  `pUnit` varchar(100) NOT NULL,
  `pDescription` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pId`, `pCode`, `pName`, `pCategory`, `purchasePrice`, `sellPrice`, `pStock`, `minStock`, `pUnit`, `pDescription`) VALUES
(5, 'aaa10', 'titan watch', 'Ladies watch', 10000, 12000, 80, 5, '', 'sdfghjk'),
(8, '1', 'Armani Watch', 'Mens Watch', 8000, 10000, 38, 5, '', 'Dami ghori'),
(10, '2', 'Ray Ban', 'Sunglass', 10000, 15000, 50, 10, '', 'very good quality product'),
(11, '3', 'Rolex', 'Mens Watch', 20000, 30000, 40, 10, '', 'expensive watch'),
(12, '4', 'Sonata', 'wall clock', 2000, 2700, 35, 5, '', 'Very nice product'),
(13, '5', 'rado', 'Mens Watch', 7000, 10000, 50, 5, '', 'valo ghori'),
(14, '7', 'Huawei', 'Ladies watch', 7000, 10000, 45, 5, '', 'nice'),
(15, '8', 'xiaomi watch', 'Mens Watch', 5000, 6500, 50, 5, '', 'very good'),
(16, '9', 'Seiko', 'Mens Watch', 12000, 15000, 10, 5, '', 'good'),
(17, '15', 'Hublot', 'Mens Watch', 12000, 15000, 50, 5, '', 'nice'),
(18, '16', 'Gucci', 'Ladies watch', 15000, 20000, 50, 10, '', 'nice'),
(19, '17', 'Louis Vuitton', 'Sunglass', 20000, 22000, 50, 10, '', 'nice'),
(20, '18', 'Casio', 'kids watch', 10000, 15000, 40, 10, '', 'nice');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `fullname`, `password`, `role`) VALUES
(4, 'Reshad', 'Syed Reshad Faysal', '55555', 'admin'),
(8, 'Shimanto', 'Shimanto Rehman', '55555', 'admin'),
(9, 'Safin', 'Rezoan Faysal', '55555', 'Sales Representative'),
(10, 'Faysal', 'Faysal Ahmed', '55555', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
