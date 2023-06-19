-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.31 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for thuctap
CREATE DATABASE IF NOT EXISTS `thuctap` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `thuctap`;

-- Dumping structure for table thuctap.detai
CREATE TABLE IF NOT EXISTS `detai` (
  `madt` char(10) DEFAULT NULL,
  `tendt` char(30) DEFAULT NULL,
  `kinhphi` int DEFAULT NULL,
  `NoiThucTap` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table thuctap.detai: ~8 rows (approximately)
INSERT INTO `detai` (`madt`, `tendt`, `kinhphi`, `NoiThucTap`) VALUES
	('1', 'De tai 1', 10000, 'Da Nang'),
	('2', 'De tai 2', 100000, 'Da Nang'),
	('3', 'De tai 3', 10000, 'Da Nang'),
	('DT01', 'Đề tài 1', 1000, 'Hà Nội'),
	('DT02', 'Đề tài 2', 2000, 'Hồ Chí Minh'),
	('DT03', 'Đề tài 3', 1500, 'Đà Nẵng'),
	('DT04', 'Đề tài 4', 1800, 'Cần Thơ'),
	('DT05', 'Đề tài 5', 1200, 'Hải Phòng'),
	('Dt01', 'GIS', 100, 'Nghe An'),
	('Dt02', 'ARC GIS', 500, 'Nam Dinh'),
	('Dt03', 'Spatial DB', 100, 'Ha Tinh'),
	('Dt04', 'MAP', 300, 'Quang Binh'),
	('Dt01', 'GIS', 100, 'Nghe An'),
	('Dt02', 'ARC GIS', 500, 'Nam Dinh'),
	('Dt03', 'Spatial DB', 100, 'Ha Tinh'),
	('Dt04', 'MAP', 300, 'Quang Binh'),
	('Dt01', 'GIS', 100, 'Nghe An'),
	('Dt02', 'ARC GIS', 500, 'Nam Dinh'),
	('Dt03', 'Spatial DB', 100, 'Ha Tinh'),
	('Dt04', 'MAP', 300, 'Quang Binh');

-- Dumping structure for table thuctap.giangvien
CREATE TABLE IF NOT EXISTS `giangvien` (
  `magv` int DEFAULT NULL,
  `hotengv` char(30) DEFAULT NULL,
  `luong` decimal(5,2) DEFAULT NULL,
  `makhoa` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table thuctap.giangvien: ~23 rows (approximately)
INSERT INTO `giangvien` (`magv`, `hotengv`, `luong`, `makhoa`) VALUES
	(1, 'gv 1', 10.00, '1'),
	(2, 'gv 2', 10.00, '1'),
	(3, 'gv3', 1.00, '2'),
	(1, 'Nguyễn Văn A', 500.00, 'KH01'),
	(2, 'Trần Thị B', 600.00, 'KH02'),
	(3, 'Lê Văn C', 550.00, 'KH03'),
	(4, 'Phạm Thị D', 700.00, 'KH04'),
	(5, 'Hoàng Văn E', 650.00, 'KH05'),
	(11, 'Thanh Xuan', 700.00, 'Geo'),
	(12, 'Thu Minh', 500.00, 'Math'),
	(13, 'Chu Tuan', 650.00, 'Geo'),
	(14, 'Le Thi Lan', 500.00, 'Bio'),
	(15, 'Tran Xoay', 900.00, 'Math'),
	(11, 'Thanh Xuan', 700.00, 'Geo'),
	(12, 'Thu Minh', 500.00, 'Math'),
	(13, 'Chu Tuan', 650.00, 'Geo'),
	(14, 'Le Thi Lan', 500.00, 'Bio'),
	(15, 'Tran Xoay', 900.00, 'Math'),
	(11, 'Thanh Xuan', 700.00, 'Geo'),
	(12, 'Thu Minh', 500.00, 'Math'),
	(13, 'Chu Tuan', 650.00, 'Geo'),
	(14, 'Le Thi Lan', 500.00, 'Bio'),
	(15, 'Tran Xoay', 900.00, 'Math');

-- Dumping structure for table thuctap.huongdan
CREATE TABLE IF NOT EXISTS `huongdan` (
  `masv` int DEFAULT NULL,
  `madt` char(10) DEFAULT NULL,
  `magv` int DEFAULT NULL,
  `ketqua` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table thuctap.huongdan: ~19 rows (approximately)
INSERT INTO `huongdan` (`masv`, `madt`, `magv`, `ketqua`) VALUES
	(1, '1', 1, 9.00),
	(2, '1', 1, 9.00),
	(3, '1', 1, 9.00),
	(1, '2', 1, 9.00),
	(1, '3', 1, 9.00),
	(2, '3', 1, 9.00),
	(3, '3', 1, 9.00),
	(1001, 'DT01', 1, 4.50),
	(1002, 'DT02', 2, 3.80),
	(1003, 'DT03', 3, 4.00),
	(1004, 'DT04', 4, 3.20),
	(1005, 'DT05', 5, 4.70),
	(1, 'Dt01', 13, 8.00),
	(2, 'Dt03', 14, 0.00),
	(3, 'Dt03', 12, 10.00),
	(5, 'Dt04', 14, 7.00),
	(6, 'Dt01', 13, NULL),
	(7, 'Dt04', 11, 10.00),
	(8, 'Dt03', 15, 6.00);

-- Dumping structure for table thuctap.khoa
CREATE TABLE IF NOT EXISTS `khoa` (
  `makhoa` char(10) DEFAULT NULL,
  `tenkhoa` char(30) DEFAULT NULL,
  `dienthoai` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table thuctap.khoa: ~16 rows (approximately)
INSERT INTO `khoa` (`makhoa`, `tenkhoa`, `dienthoai`) VALUES
	('1', 'Khoa 1', '090909090'),
	('2', 'Khoa 2', '0909090'),
	('KH01', 'Khoa Kỹ thuật', '1234567890'),
	('KH02', 'Khoa Công nghệ thông tin', '9876543210'),
	('KH03', 'Khoa Kinh tế', '5678901234'),
	('KH04', 'Khoa Ngoại ngữ', '0987654321'),
	('KH05', 'Khoa Y học', '4321098765'),
	('Geo', 'Dia ly va QLTN', '3855413'),
	('Math', 'Toan', '3855411'),
	('Bio', 'Cong nghe Sinh hoc', '3855412'),
	('Geo', 'Dia ly va QLTN', '3855413'),
	('Math', 'Toan', '3855411'),
	('Bio', 'Cong nghe Sinh hoc', '3855412'),
	('Geo', 'Dia ly va QLTN', '3855413'),
	('Math', 'Toan', '3855411'),
	('Bio', 'Cong nghe Sinh hoc', '3855412');

-- Dumping structure for table thuctap.sinhvien
CREATE TABLE IF NOT EXISTS `sinhvien` (
  `masv` int DEFAULT NULL,
  `hotensv` char(30) DEFAULT NULL,
  `makhoa` char(10) DEFAULT NULL,
  `namsinh` int DEFAULT NULL,
  `quequan` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table thuctap.sinhvien: ~33 rows (approximately)
INSERT INTO `sinhvien` (`masv`, `hotensv`, `makhoa`, `namsinh`, `quequan`) VALUES
	(1, 'sv1', '1', 2002, 'Hue'),
	(2, 'sv2', '1', 2002, 'Da Nang'),
	(3, 'sv3', '1', 2002, 'HJue'),
	(4, 'sv4', '1', 2002, 'Hue'),
	(1001, 'Nguyễn Văn An', 'KH01', 2000, 'Hà Nội'),
	(1002, 'Trần Thị Lan', 'KH02', 2001, 'Hồ Chí Minh'),
	(1003, 'Lê Văn Bình', 'KH03', 1999, 'Đà Nẵng'),
	(1004, 'Phạm Thị Ngọc', 'KH04', 2002, 'Cần Thơ'),
	(1005, 'Hoàng Văn Minh', 'KH05', 2000, 'Hải Phòng'),
	(1, 'Le Van Sao', 'Bio', 1990, 'Nghe An'),
	(2, 'Nguyen Thi My', 'Geo', 1990, 'Thanh Hoa'),
	(3, 'Bui Xuan Duc', 'Math', 1992, 'Ha Noi'),
	(4, 'Nguyen Van Tung', 'Bio', NULL, 'Ha Tinh'),
	(5, 'Le Khanh Linh', 'Bio', 1989, 'Ha Nam'),
	(6, 'Tran Khac Trong', 'Geo', 1991, 'Thanh Hoa'),
	(7, 'Le Thi Van', 'Math', NULL, 'null'),
	(8, 'Hoang Van Duc', 'Bio', 1992, 'Nghe An'),
	(1, 'Le Van Sao', 'Bio', 1990, 'Nghe An'),
	(2, 'Nguyen Thi My', 'Geo', 1990, 'Thanh Hoa'),
	(3, 'Bui Xuan Duc', 'Math', 1992, 'Ha Noi'),
	(4, 'Nguyen Van Tung', 'Bio', NULL, 'Ha Tinh'),
	(5, 'Le Khanh Linh', 'Bio', 1989, 'Ha Nam'),
	(6, 'Tran Khac Trong', 'Geo', 1991, 'Thanh Hoa'),
	(7, 'Le Thi Van', 'Math', NULL, 'null'),
	(8, 'Hoang Van Duc', 'Bio', 1992, 'Nghe An'),
	(1, 'Le Van Sao', 'Bio', 1990, 'Nghe An'),
	(2, 'Nguyen Thi My', 'Geo', 1990, 'Thanh Hoa'),
	(3, 'Bui Xuan Duc', 'Math', 1992, 'Ha Noi'),
	(4, 'Nguyen Van Tung', 'Bio', NULL, 'Ha Tinh'),
	(5, 'Le Khanh Linh', 'Bio', 1989, 'Ha Nam'),
	(6, 'Tran Khac Trong', 'Geo', 1991, 'Thanh Hoa'),
	(7, 'Le Thi Van', 'Math', NULL, 'null'),
	(8, 'Hoang Van Duc', 'Bio', 1992, 'Nghe An');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
