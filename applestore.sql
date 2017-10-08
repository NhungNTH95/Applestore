-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 27, 2017 at 03:13 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `applestore`
--

-- --------------------------------------------------------

--
-- Table structure for table `ChiTietDonHang`
--

CREATE TABLE `detail_order` (
  `ID_DetailOrder` int(11) NOT NULL,
  `ID_Order` int(11) NOT NULL,
  `ID_Product` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `DonHang`
--

CREATE TABLE `order` (
  `ID_Order` int(11) NOT NULL,
  `ID_Account` int(11) NOT NULL,
  `OrderDate` date NOT NULL,
  `Status` text COLLATE utf8_unicode_ci NOT NULL,
  `Add` text COLLATE utf8_unicode_ci NOT NULL,
  `Total` float NOT NULL,
  `Accepter` text COLLATE utf8_unicode_ci NOT NULL,
  `PhoneNumber` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `KhoSanPham`
--

CREATE TABLE `product_rep` (
  `ID_ProductRep` int(11) NOT NULL,
  `ID_Product` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `LoaiSanPham`
--

CREATE TABLE `type_product` (
  `ID_TypeProduct` int(11) NOT NULL,
  `ProductName` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Quyen`
--

CREATE TABLE `rule` (
  `ID_Rule` int(11) NOT NULL,
  `RuleName` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SanPham`
--

CREATE TABLE `product` (
  `ID_Product` int(11) NOT NULL,
  `ProductName` text COLLATE utf8_unicode_ci NOT NULL,
  `NewPrice` float NOT NULL,
  `OldPrice` float NOT NULL,
  `ID_TypeProduct` int(11) NOT NULL,
  `ColorProduct` text COLLATE utf8_unicode_ci NOT NULL,
  `Config` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `TaiKhoan`
--

CREATE TABLE `account` (
  `ID_Account` int(11) NOT NULL,
  `UserName` text COLLATE utf8_unicode_ci NOT NULL,
  `PassWord` text COLLATE utf8_unicode_ci NOT NULL,
  `ID_Rule` int(11) NOT NULL,
  `Email` text COLLATE utf8_unicode_ci NOT NULL,
  `Add` text COLLATE utf8_unicode_ci NOT NULL,
  `PhoneNumber` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ChiTietDonHang`
--
ALTER TABLE `detail_order`
  ADD PRIMARY KEY (`ID_DetailOrder`);

--
-- Indexes for table `DonHang`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`ID_Order`);

--
-- Indexes for table `KhoSanPham`
--
ALTER TABLE `product_rep`
  ADD PRIMARY KEY (`ID_ProductRep`);

--
-- Indexes for table `LoaiSanPham`
--
ALTER TABLE `type_product`
  ADD PRIMARY KEY (`ID_TypeProduct`);

--
-- Indexes for table `Quyen`
--
ALTER TABLE `rule`
  ADD PRIMARY KEY (`ID_Rule`);

--
-- Indexes for table `SanPham`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID_Product`);

--
-- Indexes for table `TaiKhoan`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ID_Account`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ChiTietDonHang`
--
ALTER TABLE `detail_order`
  MODIFY `ID_DetailOrder` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `DonHang`
--
ALTER TABLE `order`
  MODIFY `ID_Order` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `KhoSanPham`
--
ALTER TABLE `product_rep`
  MODIFY `ID_ProductRep` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `LoaiSanPham`
--
ALTER TABLE `type_product`
  MODIFY `ID_TypeProduct` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Quyen`
--
ALTER TABLE `rule`
  MODIFY `ID_Rule` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SanPham`
--
ALTER TABLE `product`
  MODIFY `ID_Product` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `TaiKhoan`
--
ALTER TABLE `account`
  MODIFY `ID_Account` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
