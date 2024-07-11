-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 11, 2024 at 12:41 PM
-- Server version: 5.7.40
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `email` varchar(65) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `address`, `telp`, `email`) VALUES
(1, 'Alegro Musti', 'Jl. Perdagangan no 1', '082253548800', 'alegro_musti123@gmail.com'),
(2, 'Mustika Ratu', 'Jl. HKSN no 2', '082323435690', 'ratu_queen2@gmail.com'),
(3, 'Grendelhorn', 'Jl. Adhiyaksa no 3', '082212345678', 'Kingmaerk@gmail.com'),
(4, 'Jableo Tuye', 'Jl. Lambung Mangkurat no 4', '082267854320', 'tuyetuye20@gmail.com'),
(5, 'Masashi Benkei', 'Jl. Mulawarman no 5', '082267452341', 'Mastersmith30@gmail.com'),
(6, 'Peregrine Yugi', 'Jl. Griya Permata no 6', '082290912324', 'Falcon23@gmail.com'),
(7, 'Grifter Man', 'Jl. Dahlia Kebun Sayur no 7', '082280876790', 'scamet69@gmail.com'),
(8, 'Jeanne Hurte', 'Jl. Surgi Mufti no 8', '082223154675', 'blazer23@gmail.com'),
(9, 'Kim An-So', 'Jl. HKSN no 9', '082290706543', 'supremeleader90@gmail.com'),
(10, 'Millie Cream', 'Jl. HKNS no 19', '082280765421', 'Millie80@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `detail_beli`
--

DROP TABLE IF EXISTS `detail_beli`;
CREATE TABLE IF NOT EXISTS `detail_beli` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `barang_id` int(8) DEFAULT NULL,
  `pembelian_id` int(8) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `subtotal` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_bar_id` (`barang_id`),
  KEY `fk_beli_id` (`pembelian_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_beli`
--

INSERT INTO `detail_beli` (`id`, `barang_id`, `pembelian_id`, `harga`, `qty`, `subtotal`) VALUES
(1, 15, 1, 500000, 10, 5000000),
(2, 15, 2, 500000, 10, 5000000),
(3, 15, 3, 500000, 10, 5000000),
(4, 15, 4, 500000, 10, 5000000),
(5, 15, 5, 500000, 10, 5000000),
(6, 15, 6, 500000, 10, 5000000),
(7, 15, 7, 500000, 10, 5000000),
(8, 15, 8, 500000, 10, 5000000),
(9, 15, 9, 500000, 10, 5000000),
(10, 15, 10, 500000, 10, 5000000);

-- --------------------------------------------------------

--
-- Table structure for table `detail_jual`
--

DROP TABLE IF EXISTS `detail_jual`;
CREATE TABLE IF NOT EXISTS `detail_jual` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `barang_id` int(8) DEFAULT NULL,
  `penjualan_id` int(8) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `subtotal` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fkey_barang` (`barang_id`),
  KEY `fkey_jual` (`penjualan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_jual`
--

INSERT INTO `detail_jual` (`id`, `barang_id`, `penjualan_id`, `harga`, `qty`, `subtotal`) VALUES
(1, 12, 1, 15000, 8, 120000),
(2, 20, 2, 50000, 12, 600000),
(3, 16, 3, 300000, 30, 9000000),
(4, 18, 4, 1500000, 20, 30000000),
(5, 18, 5, 1500000, 20, 30000000),
(6, 20, 6, 50000, 200, 10000000),
(7, 21, 7, 16500000, 5, 82500000),
(8, 19, 8, 11000000, 1, 11000000),
(9, 19, 9, 11000000, 4, 44000000),
(10, 14, 10, 8500000, 14, 119000000);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

DROP TABLE IF EXISTS `kategori`;
CREATE TABLE IF NOT EXISTS `kategori` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `name`) VALUES
(1, 'Makanan'),
(2, 'Minuman'),
(3, 'Stationery'),
(4, 'Pakaian'),
(5, 'Elektronik'),
(6, 'Mainan'),
(7, 'Home Appliance'),
(8, 'Accessory'),
(9, 'Kitchen Utensils'),
(10, 'Gardening Tools'),
(11, 'Robot'),
(12, 'L'),
(13, 'Home Accessory'),
(14, 'Mainan'),
(15, 'Mikro Thing');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

DROP TABLE IF EXISTS `pembelian`;
CREATE TABLE IF NOT EXISTS `pembelian` (
  `id` int(8) NOT NULL,
  `no_pembelian` int(10) NOT NULL,
  `bayar` bigint(20) DEFAULT NULL,
  `total` bigint(20) DEFAULT NULL,
  `kembali` bigint(20) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `id_Kustomer` int(8) DEFAULT NULL,
  `user_id` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cust_id` (`id_Kustomer`),
  KEY `fk_use_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id`, `no_pembelian`, `bayar`, `total`, `kembali`, `tanggal`, `id_Kustomer`, `user_id`) VALUES
(1, 523102, 8000000, 5000000, 3000000, '2024-01-20', 1, 3),
(2, 523103, 7000000, 5000000, 2000000, '2024-01-20', 2, 4),
(3, 523104, 12000000, 5000000, 7000000, '2024-01-22', 4, 6),
(4, 523105, 10000000, 5000000, 5000000, '2024-01-23', 3, 7),
(5, 523106, 8500000, 5000000, 3500000, '2024-01-24', 5, 9),
(6, 523107, 6000000, 5000000, 1000000, '2024-01-24', 6, 1),
(7, 523108, 5200000, 5000000, 200000, '2024-02-12', 8, 3),
(8, 523109, 7800000, 5000000, 2800000, '2024-02-22', 9, 4),
(9, 523110, 9900000, 5000000, 4900000, '2024-02-27', 10, 8),
(10, 523111, 8700000, 5000000, 3700000, '2024-03-07', 7, 9);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

DROP TABLE IF EXISTS `penjualan`;
CREATE TABLE IF NOT EXISTS `penjualan` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `no_penjualan` int(10) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `produk_id` int(8) DEFAULT NULL,
  `user_id` int(8) DEFAULT NULL,
  `bayar` bigint(20) DEFAULT NULL,
  `total` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_produk_penja` (`produk_id`),
  KEY `fk_user_penja` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id`, `no_penjualan`, `tanggal`, `qty`, `produk_id`, `user_id`, `bayar`, `total`) VALUES
(1, 423102, '2024-01-20', 8, 12, 5, 1000000, 120000),
(2, 423103, '2024-01-20', 12, 20, 3, 10000000, 600000),
(3, 423104, '2024-01-22', 30, 16, 1, 100000000, 9000000),
(4, 423105, '2024-01-23', 20, 18, 8, 100000000, 30000000),
(5, 423106, '2024-01-24', 20, 18, 9, 100000000, 30000000),
(6, 423107, '2024-01-24', 200, 20, 9, 100000000, 10000000),
(7, 423108, '2024-02-12', 5, 21, 7, 100000000, 82500000),
(8, 423109, '2024-02-22', 1, 19, 2, 100000000, 11000000),
(9, 423110, '2024-02-27', 4, 19, 3, 100000000, 44000000),
(10, 423111, '2024-03-07', 14, 14, 10, 100000000, 119000000);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

DROP TABLE IF EXISTS `produk`;
CREATE TABLE IF NOT EXISTS `produk` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `barcode` int(15) DEFAULT NULL,
  `name` char(25) NOT NULL,
  `price` bigint(20) DEFAULT NULL,
  `sellprice` bigint(20) DEFAULT NULL,
  `stok` int(10) DEFAULT NULL,
  `kategori_id` int(5) DEFAULT NULL,
  `satuan_id` int(5) DEFAULT NULL,
  `user_id` int(8) DEFAULT NULL,
  `supplier_id` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_produk_kategori` (`kategori_id`),
  KEY `fk_produk_suuplier` (`supplier_id`),
  KEY `fk_satuan_id` (`satuan_id`),
  KEY `fk_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `barcode`, `name`, `price`, `sellprice`, `stok`, `kategori_id`, `satuan_id`, `user_id`, `supplier_id`) VALUES
(12, 723132902, 'Chitato Rasa Wasabi', 15000, 25000, 150, 1, 1, 1, 1),
(13, 723324569, 'Age of Overlord 50+1 Pack', 125000, 150000, 250, 6, 1, 2, 5),
(14, 723321543, 'TV LG 120 Inch', 8500000, 9000000, 300, 5, 1, 3, 8),
(15, 723679400, 'Kithcen Knife Set 25 in 1', 500000, 600000, 300, 9, 1, 4, 7),
(16, 723656589, 'Millie Album \"Suna\"', 300000, 450000, 400, 6, 2, 4, 10),
(17, 723548766, 'Pocari Sweat 150L', 450000, 600000, 300, 2, 1, 1, 1),
(18, 723666123, 'Shovel 15 in 1 Function', 1500000, 2200000, 50, 10, 1, 5, 3),
(19, 723998213, 'Limited Edition T-Shirt \"', 11000000, 13000000, 10, 4, 1, 8, 3),
(20, 723123456, 'Office Set Pen', 50000, 65000, 800, 3, 1, 6, 6),
(21, 723990120, 'Samsung Flip Anaheim Edit', 16500000, 20000000, 100, 5, 1, 10, 9);

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

DROP TABLE IF EXISTS `satuan`;
CREATE TABLE IF NOT EXISTS `satuan` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `nama_satuan` char(50) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `satuan`
--

INSERT INTO `satuan` (`id`, `nama_satuan`, `deskripsi`) VALUES
(1, 'Buah', 'Sebuah Objek'),
(2, 'Botol', 'Sebuah Botol'),
(3, 'Mainan2', 'Sebuah Objek'),
(5, 'Pakaian', 'Sebuah Pakaian'),
(6, 'Butir', 'Satuan Untuk Butir');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
CREATE TABLE IF NOT EXISTS `supplier` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `fax` varchar(25) DEFAULT NULL,
  `email` varchar(65) DEFAULT NULL,
  `bank_name` varchar(20) DEFAULT NULL,
  `bank_account` varchar(50) DEFAULT NULL,
  `bank_account_number` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `address`, `telp`, `fax`, `email`, `bank_name`, `bank_account`, `bank_account_number`) VALUES
(1, 'Wings', 'Jl. Adhiyaksa no 1', '082212122323', '123856430', 'support@wings.com', 'Mandiri', 'PT. Wings', '1234457890'),
(2, 'Anaheim Electronics', 'Jl. Adhiyaksa no 2', '082212122321', '123856430', 'support@anaheim.com', 'Mandiri', 'Anaheim Electonics', '1234457891'),
(3, 'ODSport', 'Jl. Adhiyaksa no 3', '082332122323', '123990892', 'support@ods.com', 'BNI', 'odsport', '1234457892'),
(4, 'Poca Inc.', 'Jl. Adhiyaksa no 4', '082332122324', '123990892', 'support@poca.com', 'BNI', 'Poca', '3234457893'),
(5, 'Konami', 'Jl. Adhiyaksa no 5', '082231567831', '123872431', 'support@Konami.com', 'BRI', 'Konami', '4352353463'),
(6, 'Miso Corp', 'Jl. Adhiyaksa no 6', '082234256782', '123872431', 'support@Misocorp.com', 'BRI', 'Miso Corp', '2134678350'),
(7, 'Samblane', 'Jl. Adhiyaksa no 7', '082234256785', '123870192', 'support@Samblane.com', 'BCA', 'Samblane Inc', '4512678933'),
(8, 'LG Electonics', 'Jl. Adhiyaksa no 8', '082246789036', '123870192', 'support@LG.com', 'BCA', 'LG', '3214567385'),
(9, 'Samsung', 'Jl. Adhiyaksa no 9', '082223456789', '123780120', 'support@Samsung.com', 'Bank BJB', 'Samsung', '3426992345'),
(10, 'Milcorp', 'Jl. Adhiyaksa no 19', '082283456721', '123780120', 'support@Milcorp.com', 'Bank BJB', 'Milcorp', '3456783565');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `nik` int(20) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `tipe` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `is_member` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nik`, `username`, `full_name`, `password`, `tipe`, `address`, `email`, `is_member`) VALUES
(1, 2147483647, 'mike123', 'Mika Sonar', 'immika223', 'user', 'Jl. HKSN No 12', 'mika1234@gmail.com', 1),
(2, 2147483647, 'zambrote232', 'Inies Zambrota', 'ulitsoccre', 'user', 'Jl. HKSN No 41', 'zambrote@gmail.com', 1),
(3, 2147483647, 'loveless20', 'Angeal Morkev', 'whatlso312AQ@@', 'user', 'Jl. HKSN No 40', 'loveless23@gmail.com', 1),
(4, 2147483647, 'eatcooke231', 'Jumblane Korstov', 'ricecooker222', 'user', 'Jl. HKSN No 90', 'korshav221@gmail.com', 1),
(5, 2147483647, 'kiroko', 'Yukihiro Kiriko', 'invis2231', 'user', 'Jl. HKSN No 50', 'kirshia22@gmail.com', 1),
(6, 2147483647, 'kirihiko123', 'Yukihiro Kirihiko', 'invis2232', 'admin', 'Jl. HKSN No 50', 'ending545@gmail.com', 1),
(7, 2147483647, 'admin232', 'Salahuddin Muhsin', 'boss#1polt', 'admin', 'Jl. HKSN No 1', 'bossqu10@gmail.com', 1),
(8, 2147483647, 'minikoa2', 'Prita Jon', 'acahas908', 'user', 'Jl. HKSN No 65', 'Preete8456@gmail.com', 1),
(9, 2147483647, 'Krakatoa223', 'Mr. Stancherz', 'staner223112', 'user', 'Jl. HKSN No 77', 'LuckyGuy65@gmail.com', 1),
(10, 2147483647, 'busterzoom22', 'Zombloe Minter', 'zeroseven07', 'user', 'Jl. HKSN No 77', 'striker77@gmail.com', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_beli`
--
ALTER TABLE `detail_beli`
  ADD CONSTRAINT `fk_bar_id` FOREIGN KEY (`barang_id`) REFERENCES `produk` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_beli_id` FOREIGN KEY (`pembelian_id`) REFERENCES `pembelian` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `detail_jual`
--
ALTER TABLE `detail_jual`
  ADD CONSTRAINT `fkey_barang` FOREIGN KEY (`barang_id`) REFERENCES `produk` (`id`),
  ADD CONSTRAINT `fkey_jual` FOREIGN KEY (`penjualan_id`) REFERENCES `penjualan` (`id`);

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `fk_cust_id` FOREIGN KEY (`id_Kustomer`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_use_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `fk_produk_penja` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`),
  ADD CONSTRAINT `fk_user_penja` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `fk_produk_kategori` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`),
  ADD CONSTRAINT `fk_produk_suuplier` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`),
  ADD CONSTRAINT `fk_satuan_id` FOREIGN KEY (`satuan_id`) REFERENCES `satuan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
