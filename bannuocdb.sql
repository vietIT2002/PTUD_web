-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2023 at 02:56 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bannuocdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cthoadon`
--

CREATE TABLE `cthoadon` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_sanpham` int(10) UNSIGNED NOT NULL,
  `id_hoadon` int(10) UNSIGNED NOT NULL,
  `so_luong` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cthoadon`
--

INSERT INTO `cthoadon` (`id`, `id_sanpham`, `id_hoadon`, `so_luong`) VALUES
(235, 8, 129, 1),
(236, 9, 129, 1),
(241, 7, 132, 1),
(242, 6, 132, 3),
(243, 5, 133, 1),
(244, 6, 133, 1),
(245, 7, 133, 1),
(247, 8, 135, 1),
(252, 6, 138, 1),
(253, 6, 139, 1),
(254, 7, 139, 1),
(255, 6, 140, 2),
(256, 5, 141, 1),
(257, 7, 142, 1),
(258, 8, 142, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ctphieunhap`
--

CREATE TABLE `ctphieunhap` (
  `id_phieunhap` int(10) UNSIGNED NOT NULL,
  `id_sp` int(10) UNSIGNED NOT NULL,
  `so_luong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ctphieunhap`
--

INSERT INTO `ctphieunhap` (`id_phieunhap`, `id_sp`, `so_luong`) VALUES
(2, 52, 50),
(3, 53, 10),
(4, 54, 10);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(10) UNSIGNED NOT NULL,
  `icon_dm` varchar(255) NOT NULL,
  `ten_danhmuc` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `icon_dm`, `ten_danhmuc`) VALUES
(1, '<i class=\"fa fa-money\" aria-hidden=\"true\"></i>', 'Hóa đơn'),
(5, '<i class=\"fa fa-users\" aria-hidden=\"true\"></i>', 'Khách hàng'),
(7, '<i class=\"fa fa-cubes\" aria-hidden=\"true\"></i>', 'Sản phẩm'),
(8, '<i class=\"fa fa-sitemap\" aria-hidden=\"true\"></i>', 'Thể loại'),
(9, '<i class=\"fa fa-list-alt\" aria-hidden=\"true\"></i>', 'Phiếu nhập'),
(10, '<i class=\'fa fa-user fa-fw\'> </i>', 'Tài khoản'),
(12, '<i class=\"fa fa-truck\" aria-hidden=\"true\"></i>', 'Nhà cung cấp'),
(13, '<i class=\"fa fa-male\" aria-hidden=\"true\"></i>', 'Nhân viên'),
(14, '<i class=\"fa fa-cog\" aria-hidden=\"true\"></i>', 'Đổi mật khẩu');

-- --------------------------------------------------------

--
-- Table structure for table `hinhanhsp`
--

CREATE TABLE `hinhanhsp` (
  `id` int(10) UNSIGNED NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `id_sp` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hinhanhsp`
--

INSERT INTO `hinhanhsp` (`id`, `hinh_anh`, `id_sp`) VALUES
(1, 'sp1.jpg', 12),
(2, 'sp2.jpg', 13),
(4, 'sp4.jpg', 24),
(5, 'sp5.jpg', 9),
(6, 'srm1.jpg', 1),
(7, 'srm2.jpg', 2),
(8, 'srm3.jpg', 3),
(9, 'srm4.jpg', 5),
(10, 'srm5.jpg', 4),
(11, 'serum1.jpg', 6),
(12, 'Serum2.jpg', 8),
(13, 'serum3.jpg', 17),
(14, 'serum4.jpg', 7),
(15, 'serum5.jpg', 21),
(17, 'NH1.jpg', 19),
(18, 'NH2.jpg', 14),
(19, 'NH3.jpg', 18),
(20, 'NH4.jpg', 15),
(22, 'NTT1.jpg', 22),
(23, 'NTT2.jpg', 20),
(24, 'NTT5.jpg', 25),
(25, 'NTT4.jpg', 23),
(26, 'NTT3.jpg', 11),
(27, 'nuoc1n1.jpg', 11),
(28, 'nuoc1n2.jpg', 11),
(29, 'kchnn.jpg', 12),
(30, 'kcn123.jpg', 12),
(31, 'NTT109.jpg', 20),
(32, 'NTT110.jpg', 20),
(33, 'Srmxn.jpg', 6),
(34, 'srmm2.jpg', 6),
(35, 'srmN.jpg', 5),
(36, 'Serum20.jpg', 17),
(37, 'article.jpg', 17),
(38, '1enter.jpg', 31),
(39, 'tinh2.jpg', 8),
(40, 'shfd.jpg', 8),
(41, 'SerumDT.jpg', 7),
(42, 'SoothingSerum.jpg', 21),
(43, 'Enter.jpg', 21),
(44, 'ratio90.jpg', 31),
(45, 'HATOMUGI.jpg', 31),
(46, 'spnnc.jpg', 24),
(47, 'skin-Aqua.jpg', 24),
(48, 'kemduong.jpg', 41),
(49, 'KemDuongg.jpg', 41),
(50, 'Kem-duong.jpg', 41),
(51, 'knn.jpg', 33),
(52, 'KnMac.jpg', 33),
(53, 'KnKn.jpg', 33),
(54, 'dongian.jpg', 44),
(55, 'download2.jpg', 44),
(56, 'btt.jpg', 44),
(57, 'NHDior.jpg', 15),
(58, 'dior-joy.jpg', 15),
(59, 'Nuoc-Hoa.jpg', 18),
(60, 'NHmaster.jpg', 18),
(61, 'imagess1.jpg', 19),
(64, 'mng.jpg', 43),
(65, 'new-2023.jpg', 43),
(66, 'ChannelCoco.jpg', 19),
(67, 'download13.jpg', 43),
(68, 'son.jpg', 42),
(69, '244-laneige.jpg', 42),
(70, 'download14.jpg', 42),
(71, 'tayTBC.jpg', 28),
(72, 'tay-te-bao-chet-rosette-1.jpg', 28),
(73, 'tay-te-bao-chet-rosette-4.jpg', 28),
(74, 'ntttt.jpg', 46),
(75, 'download15.jpg', 46),
(76, 'Nuoc-tay.jpg', 46),
(77, 'nuoc-tay-trang-l-oreal-3-in-1-2.jpg', 22),
(78, 'download16.jpg', 22),
(79, 'nttsp.jpg', 23),
(80, 'simpToner.jpg', 23),
(81, 'srm11.jpg', 52),
(82, 'download19.jpg', 52),
(83, 'sua-rua-mat-cerave.jpg', 1),
(84, 'Anhkem.jpg', 1),
(85, 'kcnnn.jpg', 9),
(86, 'kem_chong_nang.jpg', 9),
(87, 'sua-rua-mat-cetaphil.jpg', 3),
(88, 'doublee.jpg', 3),
(89, 'gel-rua-mat.jpg', 2),
(90, 'P22986_1.jpg', 48),
(91, 'sua-rua-mat-acne.jpg', 48),
(92, 'acne-aid.jpg', 48),
(93, 'hadalabonnn.jpg', 49),
(94, 'Sua-rua-mat-tao.jpg', 49),
(95, 'Okni.jpg', 49),
(96, 'mochanstore.jpg', 52),
(97, 'simpple.jpg', 2),
(98, 'thbh.jpg', 47),
(99, 'Fithn.jpg', 47),
(100, 'somebymi1.jpg', 47),
(101, 'srm7.jpg\"', 50),
(102, 'review-sua-rua-mat.jpg', 50),
(103, 'reihaku-hatomugi-body.jpg', 50),
(104, 'thanh-phan-co.jpg', 4),
(105, 'sua-rua-mat-oribe-s7147.jpg', 4),
(106, 'toX.jpg', 5),
(109, 'kemCN.jpg', 26),
(110, 'kdhfgsd.jpg', 26),
(111, 'lakcn.jpg', 26),
(112, 'download108.jpg', 25),
(113, 'Monhoccc.jpg', 25),
(156, 'nhh(1).jpg', 34),
(157, '', 15);

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_khachhang` int(10) UNSIGNED NOT NULL,
  `tong_tien` int(11) NOT NULL,
  `ngay_tao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_nhanvien` int(10) DEFAULT NULL,
  `trang_thai` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`id`, `id_khachhang`, `tong_tien`, `ngay_tao`, `id_nhanvien`, `trang_thai`) VALUES
(129, 15, 1440000, '2023-12-12 14:20:33', 0, 1),
(132, 15, 1120000, '2023-12-12 14:58:17', NULL, 0),
(133, 15, 802000, '2023-12-12 15:20:39', NULL, 0),
(135, 15, 1167000, '2023-12-12 15:49:26', NULL, 0),
(138, 15, 259000, '2023-12-12 16:04:20', NULL, 0),
(139, 15, 602000, '2023-12-12 16:37:32', NULL, 0),
(140, 15, 518000, '2023-12-12 16:48:37', 0, 1),
(141, 15, 200000, '2023-12-12 16:48:57', NULL, 0),
(142, 18, 1510000, '2023-12-13 10:13:06', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_kh` varchar(191) NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `ten_dangnhap` varchar(191) NOT NULL,
  `mat_khau` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `dia_chi` varchar(191) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `ngay_tao` timestamp NOT NULL DEFAULT current_timestamp(),
  `ngay_sua` timestamp NOT NULL DEFAULT current_timestamp(),
  `tong_tien_muahang` int(11) NOT NULL,
  `trangthai` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`id`, `ten_kh`, `hinh_anh`, `ten_dangnhap`, `mat_khau`, `email`, `dia_chi`, `phone`, `ngay_tao`, `ngay_sua`, `tong_tien_muahang`, `trangthai`) VALUES
(1, 'Nguyen Van P', '', 'user123', '12345', 'BBBBbbb@gmail.com', '321 Đồng Văn Cống, Quận 2', '098999999', '2021-05-10 14:12:04', '2021-05-10 12:35:47', 1042850, 1),
(2, 'Nguyen Van A', '', 'user1234', '123456', 'wewewew@gmail.com', '99 An Dương Vương, phường 16, quận 8, Thành phố Hồ Chí Minh', '0985123131', '2021-05-10 14:17:13', '2021-05-10 12:58:31', 575700, 0),
(3, 'Phan Hữu Cường', '', 'abcdef', 'abcdef', 'abdc@gmail.com', 'Đồng Nai', '0969295720', '2021-05-11 03:38:01', '2021-05-14 07:10:19', 2266050, 0),
(4, 'Phạm Nguyên', '', 'nguyen123', '124532', 'nugyen_pham123@yahoo.com', 'Huyện Nhà Bè, TP. Hồ Chí Minh', '075472323', '2021-05-11 03:40:51', '2021-05-10 22:12:47', 372500, 0),
(5, 'Tấn Trọng Bùi', '', 'buitan', '12345', 'ngocbau2015tqk@gmail.com', '99 An Dương Vương, phường 16, quận 8, Thành phố Hồ Chí Minh', '0969295720', '2021-05-12 09:15:51', '2021-05-12 11:15:12', 306900, 0),
(6, 'Nguyễn Ngọc Báu', '', 'admin', 'admin', 'ngocbau2015tqk@gmail.com', 'Tx. Ninh Hòa, Tỉnh KHánh Hòa', '0969295720', '2021-05-12 10:23:23', '2021-05-14 08:39:09', 2322794, 0),
(7, 'Bùi Tấn Âu', '', 'aubui17', '1234567', 'aubui17@gmail.com', '99 An Dương Vương, P16, Q8, Tp.HCM', '0387070222', '2021-05-12 10:25:12', '2021-05-13 13:24:39', 433600, 0),
(8, 'Nguyeenx Thij P', '', '4tgsgs', 'ư36tgsd', 'wrwrewrw@bgt', 'wrwrwrwrwrw', '0014245683', '2021-05-13 10:41:49', '2021-05-13 14:11:25', 200000, 0),
(9, '', '', 'abcbdfe', '123456', '575@dfdfdf.c', '', '6786786333', '2021-05-13 13:46:31', '2021-05-13 13:46:31', 408950, 0),
(10, '', '', 'asdfg', 'asdfg', 'abcs@gmail.com', '', '0969295720', '2021-05-15 02:51:36', '2021-05-15 02:51:36', 115000, 0),
(11, '', '', 'viet', '123', 'vietqv2002@gmail.com', '', '0563183249', '2023-11-13 05:05:59', '2023-11-13 05:05:59', 863000, 0),
(12, '', '', 'quocviet', '12345', 'qv2002@gmail.com', '', '0358881702', '2023-11-13 15:51:12', '2023-11-13 15:51:12', 0, 0),
(13, '', '', 'tu1', '123456', 'phamthanhtu12309@gmail.com', '', '0386685845', '2023-11-16 02:50:11', '2023-11-16 02:50:11', 0, 0),
(14, '', '', 'viett', '12345', 'viet123@gmail.com', '', '0123456789', '2023-11-19 05:39:50', '2023-11-19 05:39:50', 200000, 0),
(15, '', '', 'Đan Vy', '1234567', 'danzy123@gmail.com', '', '0358881765', '2023-11-23 10:10:11', '2023-11-23 10:10:11', 26857000, 0),
(16, '', '', '11111', '11111', 'vansieunhan862002@gmail.com', '', '0123456789', '2023-12-10 04:54:07', '2023-12-10 04:54:07', 0, 0),
(17, '', '', 'HuyHoang', '10001', 'huy@gmail.com', 'An Giang', '0465876254', '2023-12-11 12:18:33', '2023-12-11 12:18:33', 0, 1),
(18, '', '', 'Anvy', '2002', 'anvy@gmail.com', 'TP-HCM', '0987376812', '2023-12-13 10:09:56', '2023-12-13 10:09:56', 2312000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_ncc` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `web_site` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `ngay_tao` timestamp NOT NULL DEFAULT current_timestamp(),
  `ngay_sua` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`id`, `ten_ncc`, `email`, `web_site`, `logo`, `phone`, `ngay_tao`, `ngay_sua`) VALUES
(1, 'Hasaki', 'Hasaki@gmail.com', '', '', '0932898324', '2023-11-15 10:28:52', '2023-11-15 10:28:52'),
(2, 'Công Ty Loreal', 'Loreal@gmail.com', '', '', '091234567', '2023-11-15 10:30:31', '2023-11-15 10:30:31'),
(3, 'Công Ty La Roche-Posay', 'Posay@gmail.com', '', '', '0924892442', '2023-11-15 10:31:44', '2023-11-15 10:31:44'),
(4, 'Công ty mỹ phẩm Việt Nam Skina', 'Skina@gmail.com', '', '', '0924832442', '2023-11-15 10:32:56', '2023-11-15 10:32:56'),
(5, 'Simple', 'simple@urcvn.com', '', '', '0384832442', '2023-11-15 10:33:54', '2023-11-15 10:33:54'),
(6, 'Công ty Nhật SK-II', 'japan@gmail.com', '', '', '0384832442', '2023-11-12 17:50:19', '2023-11-12 17:50:19'),
(7, 'Klairs', 'klairs@mgail.com', '', '', '0924892442', '2023-11-13 02:24:32', '2023-11-13 02:24:32'),
(8, 'Cetaphil', 'CETAPHIL@gmail.com', '', '', '064534543423', '2023-11-13 02:24:32', '2023-11-13 02:24:32'),
(9, 'Cetaphil ', 'Cetaphil @gmail.com', '', '', '0924892442', '2023-11-13 02:35:24', '2023-11-13 02:35:24'),
(10, 'Sunplay', 'Sunplay@gmail.com', '', '', '064534543423', '2023-11-13 02:35:24', '2023-11-13 02:35:24'),
(11, 'Bioderma', 'bioderma@gmail.com', '', '', '054646332', '2023-11-13 02:36:52', '2023-11-13 02:36:52'),
(12, 'Channel', 'Channel@gmail.com', '', '', '0924832442', '2023-11-13 02:37:28', '2023-11-13 02:37:28'),
(13, 'Vichy', 'vichy@gmail.com', '', '', '046342435', '2023-11-13 02:37:28', '2023-11-13 02:37:28'),
(14, 'Công ty maybeline', 'Line@gmail.com', '', '', '023423242', '2023-11-13 02:39:05', '2023-11-13 02:39:05'),
(15, 'Eucerin', 'eucerin@gmail.com', '', '', '093434223', '2023-11-13 02:39:05', '2023-11-13 02:39:05'),
(16, 'YSL', 'ysl@gmail.com', '', '', '08953543333', '2023-11-13 02:40:48', '2023-11-13 02:40:48'),
(17, 'Celine', 'CLIENTSERVICE.EU@CELINE.COM', 'https://www.gucci.com/uk/en_gb/', 'cl1.png', '01 70 48 92 92', '2023-11-13 13:00:00', '2023-11-13 15:00:00'),
(18, 'Gucci', 'Gucci@gamil.com', '', 'dgdgdg', '05462542', '2023-11-13 02:42:00', '2023-11-13 02:42:00'),
(19, 'Dior', 'Dior@gmail.com', '', '', '0468887528', '2023-12-09 07:03:30', '2023-12-09 07:03:30');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_nv` varchar(191) NOT NULL,
  `ten_dangnhap` varchar(191) NOT NULL,
  `mat_khau` varchar(191) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `email` varchar(191) NOT NULL,
  `ngay_tao` timestamp NOT NULL DEFAULT current_timestamp(),
  `ngay_sua` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`id`, `ten_nv`, `ten_dangnhap`, `mat_khau`, `phone`, `hinh_anh`, `email`, `ngay_tao`, `ngay_sua`) VALUES
(1, 'Nguyễn Văn Bình', 'VanBinh', '12345', '0353535353', '4567.jpg', 'vanbinh@gmail.com', '2023-10-12 15:32:29', '2023-10-12 15:32:29'),
(3, 'Nguyễn Gia Bảo', 'Zabeo', '10987', '0375587453', 'zabeo.jpg', 'zabeo@gmail.com', '2023-11-12 15:33:41', '2023-11-12 15:33:41'),
(4, 'Hoàng Đức Thịnh', 'ThinhCute', '17645', '0130329875', 'Thinhcute.jpg', 'DucThinhok@gmail.com', '2023-10-12 15:34:10', '2023-10-12 15:34:10'),
(6, 'Lê Hoàng Nam', 'HoangNam', '1098', '0457687453', '', 'Nam@gmail.com', '2023-12-12 14:16:12', '2023-12-12 14:16:12'),
(7, 'Tạ Gia Bảo', 'giabao', '1589', '0387598467', '', 'giabao@gmail.com', '2023-12-13 10:44:32', '2023-12-13 10:44:32');

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

CREATE TABLE `phieunhap` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_nv` int(10) UNSIGNED NOT NULL,
  `tong_tien` int(11) NOT NULL,
  `ngay_tao` timestamp NOT NULL DEFAULT current_timestamp(),
  `nguoi_nhan` varchar(50) NOT NULL,
  `sdt` int(11) NOT NULL,
  `diachi` varchar(50) NOT NULL,
  `ghichu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phieunhap`
--

INSERT INTO `phieunhap` (`id`, `id_nv`, `tong_tien`, `ngay_tao`, `nguoi_nhan`, `sdt`, `diachi`, `ghichu`) VALUES
(2, 1, 275000, '2023-11-14 13:37:13', 'ABCDEF', 987654332, '23 fefdg ', 'test'),
(3, 1, 55000, '2023-05-14 14:10:15', 'ABCDEF', 987654332, '23 fefdg ', 'test'),
(4, 1, 110000, '2023-05-15 03:07:17', 'ABCDEF', 987654332, '23 fefdg ', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `quyen`
--

CREATE TABLE `quyen` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_quyen` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quyen`
--

INSERT INTO `quyen` (`id`, `ten_quyen`) VALUES
(1, 'admin'),
(2, 'Quản lý'),
(3, 'Nhân viên'),
(4, 'Tự chọn'),
(6, 'ABC');

-- --------------------------------------------------------

--
-- Table structure for table `quyendahmuc`
--

CREATE TABLE `quyendahmuc` (
  `id_quyen` int(10) UNSIGNED NOT NULL,
  `id_danhmuc` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quyendahmuc`
--

INSERT INTO `quyendahmuc` (`id_quyen`, `id_danhmuc`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 11),
(3, 1),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(4, 1),
(4, 2),
(1, 1),
(1, 2),
(1, 5),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(6, 1),
(6, 2),
(6, 7),
(6, 8);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_sp` varchar(191) NOT NULL,
  `don_gia` int(11) NOT NULL,
  `hinh_anh` varchar(255) NOT NULL,
  `noi_dung` varchar(191) NOT NULL,
  `id_the_loai` int(10) UNSIGNED NOT NULL,
  `id_nha_cc` int(10) UNSIGNED NOT NULL,
  `so_luong` tinyint(4) NOT NULL,
  `sl_da_ban` tinyint(4) NOT NULL,
  `ngay_tao` timestamp NOT NULL DEFAULT current_timestamp(),
  `ngay_sua` timestamp NOT NULL DEFAULT current_timestamp(),
  `trangthai` tinyint(1) NOT NULL,
  `gia_goc` varchar(50) NOT NULL,
  `NoiDungChiTiet` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `ten_sp`, `don_gia`, `hinh_anh`, `noi_dung`, `id_the_loai`, `id_nha_cc`, `so_luong`, `sl_da_ban`, `ngay_tao`, `ngay_sua`, `trangthai`, `gia_goc`, `NoiDungChiTiet`) VALUES
(1, 'Sữa rửa mặt CeraVe', 352000, 'srm1.jpg', '  Sữa Rửa Mặt Cerave Sạch Sâu là sản phẩm sữa rửa mặt đến từ thương hiệu mỹ phẩm Cerave của Mỹ, với sự kết hợp của ba Ceramides thiết yếu, Hyaluronic Acid sản phẩm giúp làm sạch và giữ ẩm cho', 1, 13, 25, 28, '2023-11-12 08:00:00', '0000-00-00 00:00:00', 0, '500000', '\r\n    \r\n  <h4>Sữa Rửa Mặt Cerave Sạch Sâu</h4>\r\n    <p>Sản phẩm sữa rửa mặt Cerave Sạch Sâu đến từ thương hiệu mỹ phẩm Cerave của Mỹ. Với sự kết hợp của ba Ceramides thiết yếu và Hyaluronic Acid, sản phẩm giúp làm sạch và giữ ẩm cho làn da mà không ảnh hưởng đến hàng rào bảo vệ da mặt và cơ thể.</p>\r\n\r\n    <h4>Hiện có tại Hasaki với 2 loại và 3 dung tích:</h4>\r\n    \r\n    <ul>\r\n        <li>Sữa Rửa Mặt Cerave Sạch Sâu Cho Da Thường Đến Da Dầu</li>\r\n        <li>Sữa Rửa Mặt Cerave Sạch Sâu Cho Da Thường Đến Da Khô</li>\r\n    </ul><br>\r\n <h4>Ưu Thế Nổi Bật: Sữa Rửa Mặt Cerave Sạch Sâu</h4>\r\n\r\n    <ul>\r\n        <li>\r\n            <strong>3 loại Ceramides (1, 3, 6-II):</strong>\r\n            <span>Thiết yếu giúp khôi phục hàng rào độ ẩm da.</span>\r\n        </li>\r\n\r\n        <li>\r\n            <strong>Hyaluronic Acid:</strong>\r\n            <span>Giúp duy trì độ ẩm tự nhiên của da.</span>\r\n        </li>\r\n\r\n        <li>\r\n            <strong>Niacinamide:</strong>\r\n            <span>Giúp làm dịu, nuôi dưỡng, củng cố hàng rào da.</span>\r\n        </li>\r\n\r\n        <li>\r\n            <strong>Kết cấu dạng gel tạo bọt:</strong>\r\n            <span>Giúp làm sạch sâu, loại bỏ dầu thừa, thông thoáng lỗ chân lông nhưng vẫn duy trì độ ẩm tự nhiên của da.</span>\r\n        </li>\r\n    </ul>'),
(2, 'Sữa rửa mặt Simple', 102000, 'srm2.jpg', 'Sữa Rửa Mặt Simple Refreshing Facial Wash là sản phẩm sữa rửa mặt dạng gel dành cho mọi loại da nổi tiếng của thương hiệu mỹ phẩm Simple. Với công thức dịu nhẹ không chứa xà phòng cùng thành ', 1, 1, 15, 35, '2023-11-04 10:30:00', '2023-11-12 13:00:00', 0, '150000', '<h3>Thành Phần Sản Phẩm</h3>\r\n\r\n<h4>Thành Phần Chính:</h4>\r\n<ul>\r\n    <li><strong>Nước Tinh Khiết Lọc 3 Lần:</strong> Hỗ trợ làm dịu làn da nhạy cảm, kích ứng.</li>\r\n    <li><strong>Pro-Vitamin B5 (Panthenol):</strong> Giúp phục hồi da, đặc biệt các vùng da bị sần sùi, khô ráp, giúp da mềm và mịn màng hơn, nuôi dưỡng da từ sâu bên trong.</li>\r\n    <li><strong>Vitamin E:</strong> Dưỡng ẩm và chống oxy hóa.</li>\r\n    <li><strong>Bisalolol:</strong> Chiết xuất từ hoa cúc Chamomile có đặc tính kháng viêm, kháng khuẩn, ngăn ngừa kích ứng và giúp làm dịu làn da bị tổn thương, chống oxy hóa, dưỡng da mịn màng.</li>\r\n</ul>\r\n\r\n<h4>Thành Phần Chi Tiết:</h4>\r\n<p>Aqua, Cocamidopropyl Betaine, Propylene Glycol, Hydroxypropyl Methylcellulose, Panthenol, Disodium EDTA, Hydroxypropyl Cyclodextrin, Iodopropynyl Butylcarbamate, Pantolactone, Phenoxyethanol, Sodium Benzoate, Sodium Chloride, Sodium Hydroxide, Tocopheryl Acetate.</p>\r\n\r\n<h4>Hướng Dẫn Sử Dụng</h4>\r\n\r\n<p>Nên sử dụng sữa rửa mặt 2 lần mỗi ngày vào buổi sáng và tối.</p>\r\n\r\n<p>Sau khi tẩy trang, làm ướt mặt với nước, cho một lượng nhỏ sữa rửa mặt vào lòng bàn tay và tạo bọt, sau đó massage nhẹ nhàng toàn bộ khuôn mặt rồi rửa sạch mặt lại với nước ấm. Tránh để sữa rửa mặt dính vào vùng mắt.</p>\r\n\r\n<p>Sau khi rửa mặt, dùng toner để cân bằng da và tiếp tục với các bước dưỡng da tiếp theo trong chu trình chăm sóc da của bạn.</p>\r\n'),
(3, 'Sữa rửa mặt Cetaphil', 326000, 'srm3.jpg', 'Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser phiên bản mới ra mắt năm 2022 từ thương hiệu Cetaphil với công thức khoa học mới cho làn da nhạy cảm, giúp làm sạch da, loại bỏ bụi bẩn, phù hợp cho ', 1, 3, 43, 14, '2023-11-08 05:00:00', '2023-11-12 01:40:00', 0, '350000', '<h4>Thành Phần:</h4>\r\n        <p>Aqua, Glycerin, Cetearyl Alcohol, Panthenol, Niacinamide, Pantolactone, Xanthan Gum, Sodium Cocoyl Isethionate, Sodium Benzoate, Citric Acid. FIL.1747.V00</p>\r\n\r\n        <h4>Công Dụng:</h4>\r\n        <p>Sữa rửa mặt Cetaphil Gentle Skin Cleanser giúp làm sạch da, loại bỏ bụi bẩn, phù hợp cho mọi loại da, không làm khô da và duy trì hàng rào bảo vệ da suốt ngày dài.</p>\r\n\r\n        <h4>Cách Sử Dụng:</h4>\r\n        <p><strong>Rửa mặt khô:</strong> Lấy một lượng vừa đủ sữa rửa mặt thoa lên da và xoa nhẹ nhàng. Làm sạch phần sữa rửa mặt thừa bằng khăn mềm, để lại trên da cảm giác sạch nhẹ nhàng mà vẫn mịn màng.</p>\r\n        <p><strong>Rửa mặt với nước:</strong> Thoa đều sữa rửa mặt lên da và massage nhẹ nhàng. Sau đó rửa sạch lại với nước.</p>\r\n\r\n        <h4>Dung Tích:</h4>\r\n        <p>500ml</p>\r\n\r\n        <h4>Bảo Quản:</h4>\r\n        <p>Nơi khô ráo thoáng mát, tránh ánh nắng trực tiếp.</p>\r\n\r\n        <h4>Thương Hiệu:</h4>\r\n        <p>Cetaphil</p>\r\n\r\n        <h4>Sản Xuất Tại:</h4>\r\n        <p>Canada</p>\r\n\r\n        <h4>Tên Nhà Sản Xuất:</h4>\r\n        <p>G Production Inc.</p>\r\n\r\n        <h4>Số Giấy Công Bố:</h4>\r\n        <p>165088/22/CBMP-QLD</p>'),
(4, 'Sữa rửa mặt Oribe', 339000, 'srm5.jpg', 'Sữa rửa mặt Oribe được biết đến khá phổ biến với công dụng hỗ trợ giúp làm sạch da khỏi bụi bẩn, vi khuẩn và dầu nhờn, giúp giảm mụn cho da, giúp da được sáng mịn.', 1, 4, 32, 21, '2023-11-12 10:00:00', '2023-11-12 10:00:00', 0, '380000', '<h3>Thông Tin Sản Phẩm Làm Sạch Da</h3>\r\n\r\n<h4>Thành Phần</h4>\r\n<ul>\r\n    <li>Purified Water</li>\r\n    <li>Sodium laureth sulfate</li>\r\n    <li>Potassium Laureth Phosphate</li>\r\n    <li>Acrylates Copolymer</li>\r\n    <li>Olive Oil PEG-7 Esters</li>\r\n    <li>Polyquaternium-7</li>\r\n    <li>Sodium Lactate & Sodium Gluconate</li>\r\n    <li>Bellis Perennis (Daisy) Flower Extract (chiết xuất hoa Cúc Daisy)</li>\r\n    <!-- Thêm các thành phần khác nếu còn -->\r\n</ul>\r\n\r\n<h4>Công Dụng</h4>\r\n<p>Dùng để rửa mặt hàng ngày. Làm sạch da, giúp da loại bỏ bã nhờn, bụi bẩn và các tế bào da chết.</p>\r\n\r\n<h4>Chống Chỉ Định</h4>\r\n<p>Không dùng cho người nào dị ứng với bất kỳ thành phần nào của sản phẩm.</p>\r\n\r\n<h4>Cách Sử Dụng</h4>\r\n<ol>\r\n    <li>Làm ướt mặt.</li>\r\n    <li>Cho một lượng vừa đủ vào lòng bàn tay, hòa tan với nước để tạo bọt rồi xoa nhẹ nhàng lên khuôn mặt 10-15 giây.</li>\r\n    <li>Sau đó rửa lại với nước. Dùng 2 lần mỗi ngày.</li>\r\n</ol>\r\n\r\n<h4>Đối Tượng Sử Dụng</h4>\r\n<p>Người cần làm sạch da, dưỡng trắng.</p>\r\n\r\n<h4>Giới Tính Sử Dụng</h4>\r\n<p>Không giới hạn giới tính.</p>\r\n\r\n<h4>Độ Tuổi Sử Dụng</h4>\r\n<p>Trên 16 tuổi.</p>\r\n\r\n<h4>Loại Da</h4>\r\n<p>Mọi loại da.</p>'),
(5, 'Sữa rửa mặt Cosrx', 200000, 'srm4.jpg', 'Gel Rửa Mặt Cosrx Tràm Trà, 0.5% BHA Có Độ pH Thấp là dòng sữa rửa mặt đến từ thương hiệu mỹ phẩm Cosrx của Hàn Quốc, với độ pH lý tưởng 4.5 - 5.5 sản phẩm an toàn và dịu nhẹ trên mọi làn da ', 1, 5, 15, 36, '2023-11-12 08:00:00', '0000-00-00 00:00:00', 0, '250000', '<h4>Thông Tin Gel Rửa Mặt Cosrx Tràm Trà, 0.5% BHA</h4>\r\n\r\n<h4>Thành Phần</h4>\r\n<p><strong>Thành phần chính:</strong></p>\r\n<ul>\r\n    <li>Độ pH lý tưởng 4.5 - 5.5: giữ độ ẩm cân bằng tự nhiên cho da, không gây khô căng da sau khi rửa mặt.</li>\r\n    <li>Chiết xuất tinh dầu tràm trà kết hợp với 0.5% BHA tự nhiên: kháng khuẩn, loại bỏ mụn, tẩy tế bào chết nhẹ nhàng mang lại làn da sạch thoáng.</li>\r\n    <li>Allantoin: làm dịu, dưỡng ẩm làn da giữ da mềm mại.</li>\r\n</ul>\r\n\r\n<p><strong>Thành phần đầy đủ:</strong></p>\r\n<p>Water, Cocamidopropyl Betaine, Sodium Lauroyl Methyl Isethionate, Polysorbate 20, Styrax Japonicus Branch/Fruit/Leaf Extract. Butylene Glycol, Saccharomyces Ferment, Cryptomeria Japonica Leaf Extract, Nelumbo Nucifera Leaf Extract, Pinus Palustris Leaf Extract. Ulmus Davidiana Root Extract, Oenothera Biennis (Evening Primrose) Flower Extract. Pueraria Lobata Root Extract, Melaleuca Alternifolia (Tea Tree) Leaf Oil, Allantoin, Caprylyl Glycol. Ethylhexylglycerin, Betaine Salicylate, Citric Acid, Ethyl Hexanediol, 1,2-Hexanediol, Trisodium Ethylenediamine Disuccinate, Sodium Benzoate, Disodium EDTA</p>\r\n\r\n<h4>Hướng Dẫn Sử Dụng</h4>\r\n<ol>\r\n    <li>Sử dụng sản phẩm Gel Rửa Mặt Cosrx Tràm Trà, 0.5% BHA 2 lần/ngày vào buổi sáng và buổi tối, sau bước tẩy trang.</li>\r\n    <li>Làm ướt vùng da mặt, sau đó lấy một lượng vừa đủ Gel Rửa Mặt Cosrx cho vào lòng bàn tay và tạo bọt.</li>\r\n    <li>Massage nhẹ nhàng lên mặt để bắt đầu quá trình làm sạch da (tránh vùng mắt và miệng).</li>\r\n    <li>Rửa sạch da lại bằng nước sạch hoặc nước ấm.</li>\r\n    <li>Tiếp tục với các sản phẩm tiếp theo trong chu trình dưỡng da.</li>\r\n</ol>'),
(6, 'Serum Garnier', 259000, 'Serum1.jpg', 'Serum Garnier Tăng Cường Sáng Da Mờ Thâm 30ml là sản phẩm tinh chất dưỡng da đến từ  thương hiệu mỹ phẩm Garnier của Pháp. Serum cô đặc nhưng thẩm thấu nhanh, không nhờn dính mang ', 3, 5, 1, 58, '2023-11-12 08:00:00', '0000-00-00 00:00:00', 0, '300000', '<h4>Tinh Chất Garnier Giảm Mụn Mờ Thâm Cho Da Dầu, Mụn 30ml</h4><p>Là sản phẩm serum đến từ thương hiệu mỹ phẩm Garnier của Pháp, với công thức vượt trội 4% phức hợp Vitamin C, BHA, Niacinamide, AHA có công dụng giảm mụn, mờ vết thâm và vết thâm do mụn đồng thời làn da sẽ được làm dịu, sáng hơn rõ rệt. Sản phẩm hoạt động theo cơ chế 3 tác động làm giảm bã nhờn - tiêu sừng - mờ thâm mang lại làn da sáng mịn, rạng ngời.<h4>Thông số sản phẩm: </h4>  <ul>     <li>            <strong>Dung tích: 30ml  </strong>            <span> 30ml</span>     </li>       <li>            <strong>Xuất xứ thương hiệu:  </strong>            <span> Pháp </span>        </li>       <li>            <strong>Hạn sử dụng:  </strong>           <span>  36 tháng.</span>       </li>   </ul><br> <h4>Ưu Thế Nổi Bật: </h4>   <ul>       <li>            <strong>Dẫn xuất Vitamin C:  </strong>        <span> có khả năng làm sáng, chống oxy hoá và ngăn ngừa sự xuất hiện của các đốm nâu, cải thiện đều màu da.</span>    </li>       <li>        <strong>BHA (Axit salicylic) : </strong>          <span> làm sạch sâu ngăn bít tắc lỗ chân lông, ngăn ngừa mụn trứng cá.</span>        </li>     <li>          <strong>Niacinamide: </strong>           <span> có công dụng kháng viêm, kháng khuẩn, làm dịu da, kiểm soát bã nhờn và lượng dầu thừa trên da.</span>        </li>      <li>          <strong>AHA (axit lactic) :</strong>            <span>tẩy tế bào chết, làm thông thoáng lỗ chân lông, ngăn ngừa mụn mới hình thành thành và cải thiện sẹo mụn và vết thâm do mụn để lại.</span>        </li>  <li>         <span><p>Kết cấu mỏng nhẹ, thấm nhanh vào da mang lại hiệu quả dưỡng da tối ưu.</span>   </li>   </ul>'),
(7, 'Serum GoodnDoc', 343000, 'serum4.jpg', 'Serum B5 Goodndoc Hydra dưỡng ẩm phục hồi. Cải thiện lỗ chân lông to, ức chế lão hóa da, cải thiện nếp nhăn. Giúp da luôn căng đầy sức sống, trẻ hóa và căng mịn da. Bảo vệ làn da của bạn khỏi', 3, 5, 22, 36, '2023-11-12 10:00:00', '2023-11-12 10:00:00', 0, '400000', '<h4>Công Dụng Nổi Bật</h4>\r\n        <p>Với sự kết hợp hoàn hảo giữa axit hyaluronic tự nhiên với khả năng dưỡng ẩm mạnh mẽ: adeno cine và niacinamide không chỉ giúp dưỡng ẩm da từ sâu bên trong mà còn làm mờ nếp nhăn và làm trắng da.</p>\r\n        <p>Chứa thành phần Pro-Vitamin B5, giúp làm cho làn da bị tổn thương và sần sùi trở nên mềm mại hơn, và hoạt động như một chất tăng cường để giúp hấp thụ Vitamin C, nâng cao tác dụng của Vitamin C.</p>\r\n        <ul>\r\n            <li>Tinh chất Vitamin B5 giúp bổ sung độ ẩm cho da.</li>\r\n            <li>Giúp giảm nhanh các nếp nhăn, tăng cường độ đàn hồi cho da.</li>\r\n            <li>Phục hồi nhanh tróng làn da hư tổn.</li>\r\n        </ul>\r\n\r\n        <!-- Thành phần có trong sản phẩm -->\r\n        <h4>Thành Phần Sản Phẩm</h4>\r\n        <p><strong>Thành phần chính:</strong></p>\r\n        <ul>\r\n            <li>Pro Vitamin B5: Hiệu quả dưỡng ẩm với khả năng thẩm thấu cực tốt, kháng viêm, giảm mẩn đỏ, thúc đẩy sự hồi phục cấu trúc da.</li>\r\n            <li>Niacinamid: Hoạt chất giúp sáng da.</li>\r\n            <li>Adenosin: Hoạt chất chống nhăn hiệu quả.</li>\r\n            <li>Na hyaluronic: Hoạt chất dưỡng ẩm cao.</li>\r\n        </ul>\r\n\r\n        <!-- Hướng dẫn sử dụng -->\r\n        <h4>Hướng Dẫn Sử Dụng</h4>\r\n        <ol>\r\n            <li>Hãy đảm bảo khi sử dụng sảm phẩm, tay bạn phải ở điều kiện vệ sinh tốt nhất.</li>\r\n            <li>Sử dụng sảm phẩm từ 3-4 giọt lên tay hoặc bông gòn xoa đều nên khắp vùng da mặt, mát xa nhẹ nhàng để tinh dầu và các chất liệu của sảm phẩm thẩm thấu vào da.</li>\r\n        </ol>'),
(8, 'serum Eucerin', 1167000, 'serum2.jpg', ' Tinh Chất Eucerin Poreless Solution Pore Minimizer Serum 30ml là sản phẩm tinh chất dành cho da mụn mới ra mắt từ thương hiệu dược mỹ phẩm Eucerin của Đức, đặc biệt phù hợp với tình trạng lỗ', 3, 5, 13, 42, '2023-11-12 10:00:00', '0000-00-00 00:00:00', 0, '1500000', '<h4>Thành Phần Chính:</h4>\r\n        <ul>\r\n            <li><strong>Thiamidol:</strong> Ức chế enzyme Tyrosinase, giảm và cải thiện tế bào melanin đậm màu.</li>\r\n            <li><strong>Pro – Brightening System:</strong> Licochalcone A chiết xuất từ rễ cây cam thảo và hoạt chất chống oxi hóa tạo lá chắn bảo vệ da trước tác hại của tia UV/HEVIS, ngừa thâm nám tái sinh.</li>\r\n            <li><strong>Hyaluronic Acid:</strong> Dưỡng ẩm và giảm nếp nhăn.</li>\r\n        </ul>\r\n\r\n        <!-- Thành phần chi tiết -->\r\n        <h4>Thành Phần Chi Tiết:</h4>\r\n        <p>\r\n            Aqua, Alcohol Denat, Butylene Glycol, Glycerin, Octocrylene, Isopropyl Palmitate, Cetearyl Isononanoate, Distarch Phosphate, Methylpropanediol, Isobutylamido Thiazolyl Resorcinol, Sodium Ascorbyl Phosphate, Sodium Hyaluronate, Glycyrrhiza Inflata Root Extract, Tocopherol, Glucosylrutin, Sodium Stearoyl Glutamate, Glyceryl Stearate, Sodium Polyacrylate, Dimethicone, Isoquercitrin, Citric Acid, Sodium Chloride, Trisodium EDTA, Caprylyl Glycol, Phenoxyethanol, Parfum.\r\n        </p>\r\n\r\n        <!-- Hướng dẫn sử dụng -->\r\n        <h4>Hướng Dẫn Sử Dụng:</h4>\r\n        <p>\r\n            Dùng sản phẩm mỗi ngày, vào buổi sáng và tối sau bước làm sạch. Kết hợp cùng Kem Dưỡng Eucerin Spotless Brightening Day SPF30 mang đến hiệu quả gấp 2.5 lần*.\r\n        </p>\r\n        <p>\r\n            Sử dụng kem chống nắng để bảo vệ da khỏi tác hại của tia UV.\r\n        </p>\r\n        <p>\r\n            *So với hiệu quả khi chỉ sử dụng Eucerin Even Skin Spotless Brightening Day SPF30.\r\n        </p>'),
(9, 'Kem chống nắng Fixderma', 273000, 'sp5.jpg', 'Kem Chống Nắng Fixderma Shadow SPF 50+ 75g là sản phẩm chống nắng dành cho da mặt & toàn thân đến từ thương hiệu mỹ phẩm Fixderma (USA). Công thức kết hợp màng lọc chống nắng vật lý và hóa ', 2, 5, 31, 20, '2023-11-13 03:25:00', '2023-11-13 03:32:00', 0, '320000', '<h4>Thành Phần Chính:</h4>\r\n    <ul>\r\n        <li>Màng lọc chống nắng hóa học (Octinoxate, Avobenzone, Benzophenone-4): Hấp thụ tia UV, giúp chống nắng hiệu quả.</li>\r\n        <li>Màng lọc chống nắng vật lý (Titanium Dioxide): Tạo lớp màng chống nắng, bảo vệ da, phản chiếu tia UV.</li>\r\n        <li>Tocopheryl Acetate (Vitamin E): Có đặc tính chống oxy hóa và giúp da săn chắc.</li>\r\n        <li>Capric Triglyceride, Propylene Glycol: Làm mềm và dưỡng da mịn màng.</li>\r\n    </ul>\r\n\r\n    <h4>Thành Phần Chi Tiết:</h4>\r\n<p>Thành phần chi tiết: Aqua, Octinoxate, Titanium Dioxide, Aluminium Hydroxide, Stearic Acid, Butyl Methoxydibenzoylmethane, Benzophenone-4, Caprylic/Capric Triglyceride, Propylene Glycol, Glycerol, Steareth-2, Acrylates Copolymer, Cetearyl Alcohol, Steareth-21, Phenoxyethanol, Ethylhexylglycerin, Nicotinamide, Triethanolamine, Acrylates/C10-30 Alkyl Acrylate Crosspolymer, Acrylates Copolymer, Tocopheryl Acetate, Disodium EDTA, Fragrance</p>'),
(11, 'Nước tẩy trang La RoChe-Posay', 349000, 'NTT3.jpg', 'Nước Tẩy Trang La Roche-Posay Micellar Water Ultra Sensitive Skin đến từ thương hiệu dược mỹ phẩm La Roche-Posay của Pháp là dòng sản phẩm tẩy trang dành cho da mặt', 5, 5, 47, 5, '2023-11-13 03:00:00', '2023-11-13 04:00:00', 0, '400000', '<h4>Nước Tẩy Trang La Roche-Posay Micellar Water Ultra Sensitive Skin</h4><p>của Pháp là dòng sản phẩm tẩy trang dành cho da mặt, vùng mắt và môi, ứng dụng công nghệ Glyco Micellar giúp làm sạch sâu lớp trang điểm và bụi bẩn, bã nhờn trên da vượt trội mà vẫn êm dịu, không gây căng rát hay kích ứng da; đồng thời cung cấp độ ẩm, mang đến làn da mềm mại & thoáng nhẹ sau khi sử dụng.<h4>Thông số sản phẩm: </h4>  <ul>       <li>            <strong>Dung tích:  </strong>            <span>  50ml / 100ml / 200ml / 400ml / 400mlx2</span>        </li>       <li>          <strong>Xuất xứ thương hiệu:  </strong>           <span> Pháp </span>      </li>     <li><strong>Hạn sử dụng:  </strong>          <span>  3 năm kể từ ngày sản xuất</span>  </li><li>            <strong>Ngày sản xuất: </strong>            <span>  Xem trên bao bì sản phẩm</span>        </li>   </ul><br> <h4>Ưu Thế Nổi Bật: </h4>    <ul>        <li>           <strong> MICELLES:   </strong>          <span>Nhẹ nhàng loại bỏ lớp trang điểm, tạp chất và ô nhiễm trong khi vẫn giữ nguyên lớp bảo vệ da.</span>        </li>           <li>       <strong>BHA (Axit salicylic) : </strong>           <span> làm sạch sâu ngăn bít tắc lỗ chân lông, ngăn ngừa mụn trứng cá.</span>        </li>        <li>          <strong> CLYCERIN: </strong>           <span>Dưỡng ẩm và chống căng da.</span>        </li>      <li>            <strong>NƯỚC XỊT KHOÁNG LA ROCHE-POSAY:</strong>          <span>Làm dịu da & chống oxy hoá.</span>     </li>           </ul>'),
(12, 'Kem chống nắng La Roche-Posay', 422000, 'sp1.jpg', 'Kem chống nắng La Roche-Posay Anthelios SPF50+ với công nghệ chống nắng phổ rộng giúp chống nắng, ngăn ngừa và bảo vệ da trước tác hại do tia UVB - UVA như sạm nám, lão hóa da, ngoài ra còn g', 2, 5, 49, 3, '2023-11-12 05:00:00', '2023-11-12 08:00:00', 0, '500000', '<h4>XL-PROTECT:</h4>\r\n<p>Màng lọc đã được cấp bằng sáng chế, cung cấp khả năng bảo vệ vượt trội khỏi tia UVA/UVB với quang phổ rộng và giúp ngăn ngừa các tác hại do ô nhiễm và tia hồng ngoại gây ra.</p>\r\n\r\n<h4>Công Nghệ AIRLICIUM™:</h4>\r\n<p>Các hạt phân tử siêu nhỏ với tác dụng thấm hút bã nhờn. Ngay lập tức thẩm thấu vào da và giúp kiểm soát tất cả các nguyên nhân khiến da nhờn bóng (bã nhờn, mồ hôi và độ ẩm).</p>\r\n\r\n<h4>Thành Phần Chi Tiết:</h4>\r\n<p>Aqua / Water, Homosalate, Silica, Octocrylene, Ethylhexyl Salicylate, Butyl Methoxydibenzoylmethane, Ethylhexyl Triazone, Bis-Ethylhexyloxyphenol Methoxyphenyl Triazine, Drometrizole Trisiloxane, Aluminum Starch Octenylsuccinate, Glycerin, Pentylene Glycol, Styrene/Acrylates Copolymer, Potassium Cetyl Phosphate, Dimethicone, Perlite, Propylene Glycol, Acrylates/C10-30 Alkyl Acrylate Crosspolymer, Aluminum Hydroxide, P-Anisic Acid, Caprylyl Glycol, Disodium Edta, Inulin Lauryl Carbamate, Isopropyl Lauroyl Sarcosinate, Peg-8 Laurate, Phenoxyethanol, Scutellaria Baicalensis Extract / Scutellaria Baicalensis Root Extract, Silica Silylate, Stearic Acid, Stearyl Alcohol, Terephthalylidene Dicamphor Sulfonic Acid, Titanium Dioxide, Tocopherol, Triethanolamine, Xanthan Gum, Zinc Gluconate.</p>\r\n\r\n<h4>Hướng Dẫn Sử Dụng:</h4>\r\n<p>Thoa kem trước khi tiếp xúc với ánh nắng 20 phút.</p>\r\n<p>Lấy một lượng sản phẩm vừa đủ và chấm 5 điểm trên mặt (trán, mũi, cằm và hai bên má) sau đó thoa sản phẩm theo chiều từ trong ra ngoài và trên xuốn.</p>\r\n'),
(13, 'Kem chống nắng MartiDerm ', 900000, 'sp2.jpg', 'Kem Chống Nắng MartiDerm The Originals Proteos Screen SPF50+ Fluid Cream kem chống nắng dạng lỏng dễ hấp thụ với chỉ số SPF 50+ giúp ngăn ngừa và sửa chữa các dấu hiệu lão hoá da sớm. Sản phẩ', 2, 6, 49, 1, '2023-11-12 05:00:00', '2023-11-12 15:37:00', 0, '1100000', NULL),
(14, 'Nước hoa Gucci Bloom ', 200000, 'NH2.jpg', 'Được làm ngọt từ Hoa và các thức Trái cây nịnh mũi, nên Gucci Flora Gorgeous Gardenia không phải là một thứ mùi hương ngọt lịm quá trớn, mà thanh thoát, uyển chuyển và đồng thời cũng sở hữu n', 4, 18, 49, 1, '2023-11-12 14:00:00', '2023-11-12 14:00:00', 0, '275000', '</h4><p> Gucci Bloom là dòng nước hoa mới nhất của hang. Đây cũng là sản phẩm đầu tiên ra đời dưới tay giám đốc sáng tạo mới của Gucci, Alessandro Michele. Mùi hương nước hoa mới dự báo sẽ trở thành tượng đài tiếp theo của hãng thời trang này và cùng với những dòng sản phẩm chính như Guilty, nước hoa Gucci Bamboo, nước hoa Gucci Flora và Gucci by Gucci<h4>Thông tin sản phẩm: </h4> <ul>        <li>            <strong>Phong cách:	 </strong>           <span>  Quyến rũ, sang trọng, trẻ </span>       </li>      <li>            <strong>Xuất xứ:	</strong>            <span>Ý  </span>       </li>       <li>          <strong>Giới tính:	</strong>            <span> Nữ</span>        </li><li>            <strong>Nhóm hương:	</strong>           <span> Gucci Bloom EDP có tông mùi hoa huệ, tương tự như hương trà lài, nhẹ nhàng và nữ tính</span>       </li>    </ul><br><h4>Hương đặc trưng</h4>  <ul>        <li>                    <span>Hương đầu:Hoa nhài</span>        </li>          <li>                     <span> Hương giữa: Hoa huệ</span>        </li>        <li>                      <span>Hương cuối:Hoa đào chuông</span>    </li>   </ul>'),
(15, 'Nước hoa Dior Joy', 300000, 'NH4.jpg', ' Nước Hoa Dior Joy Intense mang mùi hương hoa thơm ngất ngây, vẫn giữ mùi hương của Dior Joy nhưng dòng mới này hương thơm đậm hơn, nữ tính hơn và giữ mùi lâu hơn.', 4, 19, 50, 0, '2023-11-13 04:20:00', '2023-11-13 04:30:00', 0, '450000', '<h4>Nước Hoa Dior Joy EDP - Tinh Tế, Ngọt Ngào, Gợi Cảm</h4>\r\n\r\n\r\n<p>- Dior Joy vừa xuất hiện vào cuối tháng 8/2018 dưới bàn tay của Francois Demachy như mang một sức sống mới của niềm hạnh phúc. Lấy cảm hứng từ mùi hương của năng lượng, sự sống động, mềm mại, hạnh phúc và năng lượng tốt. Mùi hương trái cây – hương hoa táo bạo với một chút nhấn của vị muối mặn mòi.</p>\r\n<p>- Nước hoa Dior JOY mang đến sự nhẹ nhàng và thanh khiết từ hương đầu của cam quýt cùng loài hồng quý hiếm vùng Grasse và những nhành hoa nhài, mỗi loài hoa mang một mùi hương đặc trưng riêng và khi kết hợp sẽ cho những biến tấu khác lạ và độc đáo, trở thành dạo khúc làm nền cho những nốt hương tiếp theo. </p>\r\n<p>- Thiết kế Lọ nước hoa mang tên JOY by Dior – niềm vui, mang thiết kế hiện đại, tối giản nhưng lại là một công trình sáng tạo đầy tinh xảo với gam màu chủ đạo là hồng pastel nhẹ nhàng, điểm xuyết bởi phần nắp bạc sang trọng cùng hàng chữ tráng bạc sáng lấp lánh.</p>\r\n<h4>Mùi hương đặc trưng</4>\r\n<li>Hương đầu: cam Bergamot, cam Mandarin</li>\r\n\r\n<li>Hương giữa: hoa hồng, hoa nhài</li>\r\n\r\n<li>Hương cuối: Gỗ đàn hương, xạ hương, hoắc hương, gỗ tuyết tùng</li>\r\n\r\n<li>Phong cách: Tinh tế, ngọt ngào, gợi cảm</li>\r\n<li>Xuất Xứ:Pháp</li>\r\n\r\n'),
(17, 'Serum Vichy', 490000, 'serum3.jpg', 'Serum Vichy Minéral 89 Daily Booster là một loại tinh chất dưỡng da được sản xuất bởi thương hiệu mỹ phẩm nổi tiếng Vichy của Pháp. Serum này chứa thành phần chính là nước khoáng Vichy và axi', 3, 6, 50, 0, '2023-11-12 08:28:00', '2023-11-12 08:28:00', 0, '550000', '<h4>1. Thiết Kế Bao Bì và Kết Cấu Serum Vichy 89</h4>\r\n        <p>\r\n            Hãng Vichy rất biết lấy lòng các chị em khi ngoài việc ngày càng nâng cao chất lượng sản phẩm thì cũng rất chú trọng đến việc thiết kế bao bì sản phẩm. Ngay từ lần đầu tiên nhìn thấy Serum Vichy 89, bạn đã phải yêu thích vẻ ngoài xinh xắn, thần thái của em ấy.\r\n        </p>\r\n        <p>\r\n            Thiết kế là chai thủy tinh trong suốt, chắc chắn, với hiệu ứng màu xanh biển từ nhạt tới đậm, tạo cảm giác bạn đang khám phá dòng nước khoáng sâu thẳm diệu kỳ, mang đến vẻ đẹp sang trọng, tinh khiết.\r\n        </p>\r\n        <p>\r\n            Tên hãng và tên sản phẩm được in nổi trên thân chai, dùng qua một thời gian không hề bị bong tróc. Nắp chai thiết kế đầu pump tiện lợi, chỉ là sử dụng đến gần hết sản phẩm thì hơi khó lấy một chút.\r\n        </p>\r\n        <p>\r\n            Về kết cấu, có dạng gel trong suốt, khá cô đặc, thoa lên da thì sẽ thấy mát lạnh và thẩm thấu nhanh.\r\n        </p>\r\n\r\n        <!-- Thành phần và công dụng -->\r\n        <h4>2. Thành Phần và Công Dụng</h4>\r\n        <ul>\r\n            <li>Chiết xuất 89% khoáng núi lửa cô đặc: giúp tăng cường khả năng chống oxy hóa, tạo thành hàng rào bảo vệ vững chắc, hỗ trợ phục hồi da chuyên sâu.</li>\r\n            <li>0.4% Hyaluronic Acid (HA): giúp cấp ẩm sâu sau 30 phút sử dụng và kéo dài đến 24 giờ.</li>\r\n            <li>Glycerin: duy trì độ ẩm cho da, giúp da luôn mịn màng.</li>\r\n            <li>Sản phẩm không chứa paraben, không alcohol, an toàn cho da nhạy cảm.</li>\r\n        </ul>\r\n\r\n        <!-- Hướng dẫn sử dụng -->\r\n        <h4>3. Hướng Dẫn Sử Dụng</h4>\r\n        <ol>\r\n            <li>Làm sạch da bằng sữa rửa mặt (nếu bạn dùng buổi sáng thì serum trước rồi dùng kem chống nắng).</li>\r\n            <li>Sử dụng toner cân bằng da, sau đó lấy 1-2 pump serum Vichy thoa đều khắp mặt và cổ.</li>\r\n            <li>Vỗ nhẹ để khóa lớp tinh chất còn đọng trên da.</li>\r\n            <li>Sau đó tiếp tục dưỡng da các bước còn lại. Bạn có thể dùng serum đặc trị, kem dưỡng đi kèm.</li>\r\n        </ol>\r\n\r\n        <!-- Cảm nhận sau khi dùng -->\r\n        <h4>4. Cảm Nhận Sau Khi Dùng</h4>\r\n        <p>Bỏ các đề mục vào thẻ h4</p>'),
(18, 'Nước Hoa YSL Y ', 300000, 'NH3.jpg', 'Nước hoa YSL Y EDP lấy cảm hứng từ một người đàn ông mặc sơ mi trắng cùng áo khoác màu đen, nam tính, mạnh mẽ và cuốn hút. ', 4, 16, 48, 2, '2023-11-13 03:30:00', '2023-11-13 04:06:00', 0, '450000', '<h4>Nước Hoa Yves Saint Laurent Libre EDP </h4><p> một mùi hương đầy đặn, nữ tính và đầy tự tin với hương thơm lôi cuốn và sẵn sàng thổi bay mọi giới hạn. Nước Hoa YSL Libre là sự lựa chọn hoàn hảo cho những ai yêu thích mùi hương sang trọng và đẳng cấp để tận hưởng cảm giác tự do thể hiện cá tính với YSL Libre.<h4>Thông số sản phẩm: </h4>  <ul>       <li>            <strong> Phong cách:</strong>           <span> Sang trọng, Nữ tính, Tươi mới</span>        </li>       <li>           <strong>Xuất xứ thương hiệu:  </strong>            <span> Pháp </span>        </li>           </ul><br><h4>Hương Thơm đặc trưng</h4>   <ul>       <li>         <strong>- Top hương đầu:</strong>           <span> Mandarin Oil, Petit Grain Oil, Lavandine France Oil, Blackcurrant Accord.</span>        </li>           <li>         <strong>- Hương giữa:  </strong>            <span> - Hương giữa: Lavender Oil, Jasmine Sambac Absolute, Jasmine Grandiflorum India Absolute, Orange Flower Absolute.</span>       </li>        <li>            <strong> - Hương cuối: </strong>           <span> Vanilla Extract Madagascar, Cedarwood Oil, Ambergris Accord, Muscs.</span>        </li>   </ul>'),
(19, 'Nước hoa Channel Coco', 400000, 'NH1.jpg', 'Nước hoa Coco Mademoiselle Eau de Parfum của thương hiệu Chanel mở đầu bằng mùi hương tươi mát của Cam và Hoa cam hòa quyện cùng chút thanh chua của quả Quýt Hồng.  Coco Mademoiselle là hiện ', 4, 6, 50, 0, '2023-11-12 05:00:00', '0000-00-00 00:00:00', 0, '510000', '<h4>Nước Hoa Chanel Coco Mademoiselle </h4><p>Nước Hoa Chanel Coco Mademoiselle là một phiên bản bổ sung cho nét tính cách đầy tương phản của Gabrielle Chanel. Đó là biểu hiện cho nét nữ tính, một hương thơm sinh động, tươi mát và phức cảm dành cho những phụ nữ thanh lịch và quý phái.\\r\\n<h4>Thông số sản phẩm: </h4>  <ul>     <li>          <strong>Nhóm hương:  </strong>           <span> Hoa hồng, Xạ hương, Hoa nhài</span>       </li>      <li>            <strong>Xuất xứ thương hiệu:  </strong>            <span> Pháp </span>        </li>       <li>         <strong>Phong cách: </strong>          <span>  </span>        </li>    </ul><br> <h4>Hương Thơm đặc trưng: </h4>    <ul>         <li>           <strong> Hương đầu:</strong>           <span> Quả cam, Quả quýt hồng, Hoa cam, Cam Bergamot</span>       </li>          <li>          <strong>Hương giữa: </strong>            <span>  Hoa trinh nữ, Hoa nhài, Hoa hồng Thổ Nhĩ Kỳ, Hoa ngọc lan tây</span>        </li>        <li>           <strong> Hương cuối:</strong>            <span> Đậu Tonka, Cây hoắc hương, Một dược, Hương Va ni, Cỏ hương bài, Xạ hương trắng</span>        </li>    </ul>'),
(20, 'Nước tẩy trang Bioderma', 359000, 'NTT2.jpg', 'Nước Tẩy Trang Dành Cho Da Nhạy Cảm Bioderma Sensibio H2O là sản phẩm nước tẩy trang công nghệ Micellar đầu tiên trên thế giới', 5, 6, 50, 0, '2023-11-13 03:30:00', '2023-11-13 03:56:00', 0, '400000', '<h4>Nước Tẩy Trang Bioderma Sébium H2O</h4><p> được bào chế chuyên biệt dành cho làn da dầu & hỗn hợp, có khả năng \\\"bắt chước\\\" các thành phần tự nhiên của làn da để loại bỏ lớp trang điểm một cách tối ưu nhất, trong khi vẫn duy trì được độ cân bằng pH và độ ẩm tự nhiên của da, bảo đảm an toàn cho kể cả những làn da nhạy cảm nhất.<h4>Thông số sản phẩm: </h4>  <ul>      <li>            <strong>Dung tích:  </strong>           <span> 100ml; 250ml; 500ml; 500mlx2</span>        </li>       <li>            <strong>Xuất xứ thương hiệu:  </strong>            <span> Pháp </span>        </li>           </ul><br> <h4>Ưu Thế Nổi Bật: </h4>    <ul>        <li>            <strong>Công nghệ Micellar:</strong>           <span> Các hạt micelle, có thành phần được lấy cảm hứng từ lipid của da, là những hạt làm sạch vô hình siêu nhỏ. Chúng có khả năng thu giữ các tạp chất trong khi vẫn duy trì lớp màng bảo vệ tự nhiên của da.</span>        </li>          <li>          <strong>BHA (Axit salicylic) : </strong>           <span> làm sạch sâu ngăn bít tắc lỗ chân lông, ngăn ngừa mụn trứng cá.</span>        </li>  <li>            <strong> Sáng chế D.A.F.:  </strong>        <span>Các tác động từ bên ngoài có thể làm cho da trở nên kích ứng và nhạy cảm. Hợp chất này giúp làm tăng khả năng dung nạp của làn da - bất kể đối với loại da nào - nhằm tăng cường sức đề kháng cho da.</span>    </li>    </ul>\''),
(21, 'Serum Klairs', 286000, 'serum5.jpg', 'Serum Dear Klairs dưỡng sáng và đều màu da Freshly Juiced Vitamin Drop có thành phần chiết xuất từ Ascorbic Acid – là một loại dẫn xuất từ Vitamin C tinh khiết với hàm lượng 5% có tác dụng là', 3, 6, 50, 0, '2023-11-11 08:35:00', '2023-11-11 08:35:00', 0, '350000', '<h4>Tinh chất dưỡng ẩm Klairs Rich Moist Soothing Serum</h4>\r\n<p>Tinh chất dưỡng ẩm làm mịn da Rich Moist Soothing Serum dưỡng ẩm sâu cho làn da giúp da mềm mại, mịn màng hơn bao giờ hết. Bạn sẽ thấy bất ngờ ngay lần đầu tiên sử dụng bởi khi bôi tinh chất lên da cảm giác da đang được uống nước, da sẽ căng mọng và mát tức thì. Serum thẩm thấu sâu vào trong làn da, dưỡng da nhẹ nhàng, giúp da mịn màng và tươi sáng giữa thời tiết khô lạnh của mùa đông.<h4>Thông số sản phẩm: </h4>\r\n <ul>\r\n        <li>            <strong>Dung tích: 30ml  </strong>           <span> 80ml</span>        </li>       <li>            <strong>Xuất xứ thương hiệu:  </strong>            <span> Hàn Quốc </span>        </li>        <li>           Sản phẩm chăm sóc hoàn toàn đặc biệt cho làn da khô        </li>    </ul><br><h4>Ưu Thế Nổi Bật: </h4>    <ul>         <li>           <strong>Tinh chất dưỡng ẩm làm mịn da Rich Moist Soothing Serum  </strong>            <span> dễ dàng thấm sâu vào trong da, mang hiệu quả đặc trị cho da rất cao. Đặc biệt phù hợp với loại da khô, tình trạng da nhạy cảm, da mất nước</span>    </li>          <li>         <strong>Chiết xuất rau má và Sodium Ascorbyl Phosphate</strong>            <span> trong sản phẩm có nhiều dưỡng chất chống oxy hóa, hỗ trợ kháng khuẩn, có thể dùng để dưỡng ẩm, làm chậm sự lão hóa, cải thiện vi tuần hoàn và chữa nhiều chứng bệnh về da.</span>        </li>       <li>           <strong>Tinh chất của Klairs </strong>           <span> là dạng serum mỏng nhẹ, chứa các phân tử cực nhỏ nên dễ dàng thấm sâu vào trong da, mang hiệu quả đặc trị cho da rất cao. Đặc biệt phù hợp với loại da khô, tình trạng da nhạy cảm, da mất nước.</span>      </li>        <li>            <span><p>Sản phẩm chứa nhiều dưỡng chất chống oxy hoá, hỗ trợ kháng khuẩn, có thể dùng để dưỡng ẩm, làm chậm sự lão hóa, cải thiện vi tuần hoàn và chữa nhiều chứng bệnh về da.</span>        </li>    </ul>'),
(22, 'Nước tẩy trang Loreal', 159000, 'NTT1.jpg', 'Nước Tẩy Trang L\'Oréal là dòng sản phẩm tẩy trang dạng nước đến từ thương hiệu L\'Oreal Paris, được ứng dụng công nghệ Micellar dịu nhẹ giúp làm sạch da, lấy đi bụi bẩn, dầu thừa và cặn trang ', 5, 6, 48, 2, '2023-11-13 03:11:49', '2023-11-13 03:51:39', 0, '250000', '<h4>L\'Oréal Paris Micellar Water 3-in-1 Deep Cleansing Even For Sensitive Skin (Xanh dương đậm)</h4>\r\n        <h4>Thành Phần Chính:</h4>\r\n        <p>Có hai lớp chất lỏng giúp hòa tan chất bẩn và loại bỏ toàn bộ lớp trang điểm hiệu quả, kể cả lớp trang điểm lâu trôi và không thấm nước chỉ trong một bước.</p>\r\n        <p>Lớp Micellar chứa các hạt mixen siêu nhỏ len lỏi sâu và dễ dàng lấy đi bụi bẩn, dầu thừa, lớp trang điểm và chất bẩn khác mà không làm khô da.</p>\r\n        <p>Thành phần đầy đủ: Aqua / Water, Cyclopentasiloxane, Isohexadecane, Potassium Phosphate, Sodium Chloride, Dipotassium Phosphate, Disodium Edta, Decyl Glucoside, Hexylene Glycol, Polyaminopropyl Biguanide, CI 61565 / Green 6</p>\r\n\r\n        <!-- Sản phẩm 2 -->\r\n        <h4>L\'Oréal Paris Micellar Water 3-in-1 Refreshing Even For Sensitive Skin (Xanh dương nhạt)</h4>\r\n        <h4>Thành Phần Chính:</h4>\r\n        <p>Nước khoáng lấy từ những ngọn núi ở Pháp: làm dịu và giúp làn da trông tươi tắn lên sau khi tẩy trang.</p>\r\n        <p>Thành phần đầy đủ: Aqua / Water, Hexylene Glycol, Glycerin, Poloxamer 184, Disodium Cocoamphodiacetate, Disodium Edta, BHT , Polyaminopropyl Biguanide</p>\r\n\r\n        <!-- Sản phẩm 3 -->\r\n        <h4>L\'Oréal Paris Micellar Water 3-in-1 Moisturizing Even For Sensitive Skin (Hồng)</h4>\r\n        <h4>Thành Phần Chính:</h4>\r\n        <p>Chiết xuất hoa hồng Pháp: cân bằng độ ẩm & làm mềm mịn da, làn da vẫn đủ độ ẩm sau khi tẩy trang.</p>\r\n        <p>Thành phần đầy đủ: Aqua / Water, Hexylene Glycol, Glycerin, Rosa Gallica Flower Extract, Sorbitol, Poloxamer 184, Disodium Cocoamphodiacetate, Disodium Edta, Propylene Glycol, BHT , Polyaminopropyl Biguanide</p>\r\n\r\n        <!-- Sản phẩm 4 -->\r\n        <h4>L\'Oréal Paris Revitalift Crystal Purifying Micellar Water (Trắng)</h4>\r\n        <h4>Thành Phần Chính:</h4>\r\n        <p>Công nghệ micelles: hoạt động như một nam châm làm sạch, loại bỏ 5 loại tạp chất có trên da bạn hằng ngày, giúp lỗ chân lông thoáng sạch.</p>\r\n        <p>Glycerin: giúp cấp nước và giữ độ ẩm cho da, phục hồi và duy trì vẻ ngoài khỏe khoắn.</p>\r\n        <p>Thành phần đầy đủ: Aqua / Water, Hexylene Glycol, Glycerin, Rosa Gallica Flower Extract, Sorbitol, Poloxamer 184, Disodium Cocoamphodiacetate, Disodium Edta, Propylene Glycol, BHT , Polyaminopropyl Biguanide</p>\r\n\r\n        <!-- Sản phẩm 5 -->\r\n        <h4>L\'Oreal Paris Revitalift Hyaluronic Acid Hydrating Micellar Water (Tím)</h4>\r\n        <h4>Thành Phần Chính:</h4>\r\n        <p>Hyaluronic Acid: giúp làm dịu và cấp ẩm da căng mọng từ bên trong, nuôi dưỡng da khỏe mạnh và sáng bóng.</p>\r\n        <p>Thành phần đầy đủ: Aqua / Water, Hexylene Glycol, Glycerin, Rosa Gallica Flower Extract, Sorbitol, Poloxamer 184, Disodium Cocoamphodiacetate, Disodium Edta, Propylene Glycol, BHT , Polyaminopropyl Biguanide</p>'),
(23, 'Nước tẩy trang simple Toner', 112000, 'NTT4.jpg', 'Nước Cân Bằng Làm Dịu Da Mặt Simple loại bỏ mọi chất kiềm sót lại sau khi rửa mặt, giúp cân bằng lại độ pH tự nhiên của da. Thích hợp cho da nhạy cảm. Bạn có nhận thấy màu sắc của chai sản ph', 5, 6, 50, 0, '2023-10-28 02:11:49', '2023-11-11 02:11:49', 0, '250000', '<h4>Nước Tẩy Trang Simple Micellar Cleansing Water</h4><p>  được mệnh danh là \\\"best seller\\\" của Simple kể từ khi ra mắt, được rất rất nhiều tín đồ làm đẹp ưa thích nhờ vào khả năng làm sạch, loại bỏ mọi bụi bẩn bã nhờn cùng lớp makeup mà không gây kích ứng da, kể cả những vùng da nhạy cảm như mắt và môi. Mang đến cho bạn làn da tươi mới, thông thoáng lỗ chân lông và tràn đầy sức sống.<h4>Thông số sản phẩm: </h4>  <ul>     <li>            <strong>Dung tích:  </strong>            <span> 200ml/ 400ml/ 2x400ml/ 200ml + 400ml</span>\\r\\n        </li>     <li>         <strong>Xuất xứ thương hiệu:  </strong>           <span>Anh Quốc </span>        </li>         <li>            <strong>Loại da phù hợp:             </strong>           <span> Sản phẩm phù hợp cho mọi loại da, đặc biệt là da nhạy cảm.   </span>        </li>         </ul><br> <h4>Ưu Thế Nổi Bật: </h4>   <ul>       <li>           <strong>Nước tẩy trang Simple</strong>            <span> Nước tẩy trang Simple loại bỏ đến 99% lớp trang điểm* nhờ các hạt micelle siêu nhỏ gồm một cực ưa dầu hút mọi bụi bẩn, cặn trang điểm và một cực ưa nước giúp hòa tan, cuốn trôi mọi tạp chất.</span>      </li>          <li>          <strong>Bổ sung Vitamin B3 </strong>            <span>  giúp đem lại cảm giác thoáng mịn tức thì cho da sau tẩy trang.</span>\\r\\n        </li>      <li>                   <span> Không chứa 2000 hóa chất có hại, không cồn, hương liệu, paraben gây căng da, cay mắt.</span>        </li>   </ul>'),
(24, 'Kem chống nắng Skin Aqua', 299000, 'sp4.jpg', 'Sữa Chống Nắng Sunplay Skin Aqua Clear White SPF50+ PA++++ là dòng sản phẩm chống nắng cho da mặt đến từ thương hiệu chống nắng Sunplay Skin Aqua, ứng dụng công nghệ CHỐNG NẮNG - GIỮ ẨM đột p', 2, 1, 50, 0, '2023-11-13 03:31:00', '2023-11-13 03:31:20', 0, '420000', '<h4>THÔNG TIN SẢN PHẨM</h4>\r\n\r\n<p>Sunplay là thương hiệu thuộc tập đoàn Rohto-Mentholatum được thành lập từ năm 1899 tại Osaka, Nhật Bản. Qua hơn 100 năm có mặt trên thị trường, đến nay thương hiệu Rohto-Mentholatum đã phát triển và mở rộng việc kinh doanh trên cả 5 châu lục với 11 chi nhánh trên khắp thế giới, sở hữu một loạt thương hiệu con chuyên về lĩnh vực dược mỹ phẩm chăm sóc sức khỏe.</p>\r\n\r\n<h4>Điểm Nổi Bật:</h4>\r\n<ul>\r\n    <li>Chống nắng hiệu quả: SPF50+, PA++++.</li>\r\n    <li>Hiệu chỉnh sắc da: Sự hòa quyện sắc xanh và sắc hồng độc đáo tạo nên sắc tím hoa lavender giúp che phủ tự nhiên, nâng tông da sáng hồng.</li>\r\n    <li>Tạo hiệu ứng trong suốt 3D: Các hạt ngọc trai siêu mịn phản chiếu ánh sáng đa chiều cho da trong suốt, rạng rỡ.</li>\r\n    <li>Giữ ẩm và dưỡng sáng da: Thành phần dưỡng ẩm Hyaluronic Acid giúp duy trì độ ẩm tự nhiên, kết hợp Vitamin C dưỡng da sáng mịn.</li>\r\n</ul>\r\n\r\n<h4>Hướng Dẫn Sử Dụng:</h4>\r\n<p>- Thoa đều sản phẩm trước khi ra nắng.</p>\r\n<p>- Dùng hàng ngày để bảo vệ da tốt nhất.</p>\r\n<p>- Sau khi ra mồ hôi nhiều, thoa lại để có hiệu quả tốt hơn.</p>\r\n\r\n<h4>Thông Tin Chi Tiết:</h4>\r\n<ul>\r\n    <li>Xuất xứ: Nhật Bản</li>\r\n    <li>Thương hiệu: Sunplay</li>\r\n    <li>Dung tích: 80g</li>\r\n</ul>'),
(25, 'Nước tẩy trang Garnier', 139000, 'NTT5.jpg', 'Nước Tẩy Trang Garnier Micellar Cleansing Water là dòng sản phẩm tẩy trang nổi tiếng đến từ thương hiệu Garnier của Pháp, sử dụng công nghệ Micelles (Micellar Technology) có chứa các phân tử ', 5, 6, 50, 0, '2023-10-28 02:11:49', '2023-11-12 02:11:49', 0, '250000', '<h4>Garnier Micellar Cleansing Water For Oily & Acne-Prone Skin</h4><p>   là dòng sản phẩm nước làm sạch và tẩy trang đa năng được thiết kế chuyên biệt dành cho da dầu & mụn, giúp làm sạch hiệu quả mà không gây kích ứng hay tổn thương cho làn da của bạn. Với công dụng chăm sóc da 3 trong 1, bạn có thể sử dụng Garnier Micellar Water như một sản phẩm làm sạch da, toner hoặc tẩy trang. Sản phẩm dùng được cho da mặt, mắt & môi.<h4>Thông số sản phẩm: </h4>  <ul>        <li>            <strong>Dung tích:  </strong>            <span>  400ml</span>       </li>        <li>            <strong>Loại da phù hợp:             </strong>            <span> Sản phẩm phù hợp cho da dầu, hỗn hợp thiên dầu.   </span>     </li>            </ul><br><h4>Ưu Thế Nổi Bật: </h4>    <ul>        <li>            <strong> Công nghệ Micelles (Micellar Technology):</strong>            <span> phân tử Micelles lấy đi bụi bẩn sâu bên trong lỗ chân lông theo cơ chế hoạt động của nam châm khi lau nhẹ trên da mà không cần chà xát.</span>        </li>          <li>                     <span>  Làm sạch sâu da và loại bỏ dầu thừa hiệu quả - một trong những nguyên nhân gây nên tình trạng mụn, giúp lỗ chân lông thông thoáng, giảm thiểu bít tắc.</span>        </li>        <li>    <span> Không chứa hương liệu, không gây kích ứng da.</span>      </li>    </ul>'),
(26, 'Kem Chống Nắng Innisfree', 220000, 'kemCN.jpg', 'Innisfree là một thương hiệu mỹ phẩm đã quá quen thuộc với phái đẹp. Dù là kem dưỡng da hay mỹ phẩm trang điểm thì Innisfree vẫn luôn là sự lựa chọn hàng đầu của những tín đồ làm đẹp. ', 2, 7, 34, 16, '2023-11-15 05:26:46', '2023-11-15 06:00:00', 0, '300000', '<h4>Kem Chống Nắng Kiềm Dầu và Nâng Tông Da Innisfree Tone Up No Sebum Sunscreen SPF35 PA+++ (50ml)</h4>\r\n\r\n<p>Có thể nói Kem Chống Nắng Innisfree Tone Up No Sebum Sunscreen SPF35 PA+++ (50ml) là sản phẩm sẽ tạo ra cơn sốt mới trong mùa hè năm nay. Bởi đây là một sản phẩm chống nắng với công thức cải tiến. Được bổ sung thêm tính năng kiềm dầu hiệu quả và khả năng nâng tông da tức thì ngay lớp đầu tiên.</p>\r\n\r\n<p>Kem Chống Nắng Innisfree Tone Up No Sebum Sunscreen SPF35 PA+++ với chỉ số SPF35 PA+++ giúp chống nắng cho da mỗi ngày. Thích hợp sử dụng trước lớp trang điểm hoặc sử dụng khi phải tiếp xúc với ánh nắng mỗi ngày. Với những bạn lười trang điểm hoặc còn ngồi trên ghế nhà trường thì đây được xem là một sản phẩm khá phù hợp. Còn gì tuyệt vời hơn khi mà cả hai bước chống nắng và làm sáng da đều được kết hợp trong cùng một sản phẩm.</p>\r\n\r\n<p>Giúp nâng tông da tức thì.</p>\r\n\r\n<p>Kết cấu kem chống nắng rất mướt mịn, không bị bết dính. Khả năng thẩm thấu nhanh chống, khi apply sẽ nhanh chóng tan vào da, tạo nên một lớp finish vô cùng mịn màng và tươi sáng. Đặc biệt dòng này còn giúp làn da bật tone hơn 1 xíu. Nên là chỉ cần bôi 1 lớp nhẹ nhàng là bạn đã có thể tự tin với làn da của mình rồi nhé.</p>\r\n\r\n<p>Khả năng kiềm dầu hiệu quả. Giúp làn da khô thoáng, không bị bóng nhờn suốt cả ngày. Phù hợp với những bạn có làn da dầu hoặc hỗn hợp thiên dầu. Giữ làn da luôn mịn màng, sạch sẽ và thông thoáng.</p>\r\n\r\n<p>Thích hợp sử dụng khi đi học, đi làm và cả đi chơi.</p>\r\n\r\n<h4>Hướng Dẫn Sử Dụng:</h4>\r\n<p>Sử dụng sau các bước dưỡng da và trước khi trang điểm. Lấy một lượng sản phẩm vừa đủ và dàn trải khắp vùng da mặt và vùng da cổ.</p>\r\n\r\n<h4>Lưu Ý Sử Dụng:</h4>\r\n<p>Chỉ sử dụng ngoài da, tránh để sản phẩm dính vào mắt, miệng… khi sử dụng. Bảo quản nơi khô ráo thoáng mát.</p>'),
(27, 'Kem Chống Nắng Caryophy ', 284000, 'kcnn.jpg', 'Kem Chống Nắng Caryophy là sản phẩm chống nắng da mặt mới ra mắt, giúp giải quyết hầu hết các vấn đề mà làn da cần: chống nắng dưỡng ẩm ngừa mụn, tất cả trong một sản phẩm duy nhất.', 2, 7, 0, 6, '2023-11-15 02:26:46', '2023-11-15 02:26:46', 0, '350000', NULL),
(28, 'Gel tẩy tế bào chết Rosette Nhật Bản', 135000, 'tayTBC.jpg', 'Gel tẩy tế bào chết Rosette Nhật Bản là sản phẩm nổi tiếng giàu các loại axit trái cây vừa tẩy tế bào chết an toàn vừa tăng cường độ ẩm cần thiết cho da', 6, 8, 48, 2, '2023-11-13 02:31:10', '2023-11-13 02:31:10', 0, '200000', '<h4>1. ROSETTE Gommage Gentle Peeling Gel</h4>\r\n\r\n<p><strong>Thành Phần Chính:</strong></p>\r\n<p>Thành phần chính là hỗn hợp các axit từ trái cây (Lactic Acid, Citric Acid, Malic Acid) giúp loại bỏ tế bào chết nhẹ nhàng, cải thiện tình trạng da xỉn màu và thô ráp sần sùi, để lại làn da mềm mịn mượt mà như lụa và tươi trẻ rạng rỡ.</p>\r\n<p>Chiết xuất từ trà xanh với khả năng chống oxy hóa mạnh mẽ, giúp bảo vệ làn da khỏi tác hại của gốc tự do.</p>\r\n\r\n<p><strong>Thành Phần Chi Tiết:</strong></p>\r\n<p>Nước, Glycerin, diglycerol, Sutearutorimoniumukurorido, carbomer, etanol, sữa đậu nành, glucose, allantoin, acid lactic (axit trái cây), acid malic (axit trái cây), acid citric (axit trái cây), chiết xuất từ lá trà, (styrene / VP) copolymer, methylparaben (chất bảo quản), hương liệu.</p>\r\n\r\n<h4>2. ROSETTE Gommage Moist Peeling Gel</h4>\r\n\r\n<p><strong>Thành Phần Chính:</strong></p>\r\n<p>Chứa hỗn hợp axit trái cây để mang lại hiệu quả loại bỏ tế bào chết tối ưu cùng chiết xuất trà xanh chống oxy hóa.</p>\r\n<p>Chiết xuất sữa đậu nành (Soymilk Extract) giúp ngăn ngừa tình trạng da khô bong tróc, hỗ trợ tái tạo tế bào da mới, mang lại làn da ẩm mịn mượt mà hơn.</p>\r\n\r\n<p><strong>Thành Phần Chi Tiết:</strong></p>\r\n<p>Nước, Glycerin, diglycerol, Sutearutorimoniumukurorido, carbomer, etanol, sữa đậu nành, glucose, allantoin, acid lactic (axit trái cây), acid malic (axit trái cây), acid citric (axit trái cây), chiết xuất từ lá trà, (styrene / VP) copolymer, methylparaben (chất bảo quản), hương liệu.</p>\r\n'),
(29, 'Kem Chống Nắng La Prairie Cellular', 2000000, 'kemchongNang.jpg', 'Kem chống nắng La Prairie Cellular Swiss được thiết kế để sử dụng thay cho kem dưỡng ẩm. Sản phẩm đóng vai trò như tấm màn bảo vệ vũng chắc khỏi tia UVA, UVB và các tác nhân gây hại từ môi tr', 2, 8, 47, 3, '2021-05-13 02:31:10', '2021-05-13 02:31:10', 0, '2200000', NULL),
(30, 'Kem chống nắng Skincode Alpine White Brightening ', 999000, 'ccnn.jpg', 'Kem dưỡng trắng chống nắng Skincode Brightening Day Cream SPF 15 với kết cấu như nhũ tương mịn mượt', 2, 10, 50, 0, '2023-11-13 02:44:00', '2023-11-13 02:44:00', 0, '1300000', NULL),
(31, 'Kem Chống Nắng Hatomugi', 93000, '1enter.jpg', 'Reihaku Hatomugi UV Milky Gel là dòng sản phẩm kem chống nắng dành cho da mặt và toàn thân đến từ thương hiệu mỹ phẩm Hatomugi của Nhật Bản', 2, 10, 48, 2, '2023-11-13 02:44:00', '2023-11-13 02:44:00', 0, '130000', '<h4>Reihaku Hatomugi UV Milky Gel</h4>\r\n\r\n<p>Reihaku Hatomugi UV Milky Gel là dòng sản phẩm kem chống nắng dành cho da mặt và toàn thân đến từ thương hiệu mỹ phẩm Hatomugi của Nhật Bản, giúp bảo vệ làn da khỏi tác hại của tia UVA/UVB, đồng thời dưỡng ẩm và làm sáng da nhờ chiết xuất hạt Ý Dĩ đặc trưng của dòng sản phẩm Hatomugi.</p> <!-- (Đoạn giới thiệu về sản phẩm) -->\r\n\r\n<h4>Loại sản phẩm:</h4>\r\n\r\n<ul>\r\n    <li><strong>Kem Chống Nắng Dưỡng Ẩm Và Làm Sáng Da Hatomugi The UV Milky Gel UV Care & Moisturizing SPF50+ PA++++ 80g:</strong> phù hợp cho mọi loại da, đặc biệt là những làn da thiếu độ ẩm.</li>\r\n    \r\n    <li><strong>Kem Chống Nắng Nâng Tông Và Dưỡng Ẩm Da Hatomugi The Tone Up UV Milky Gel UV Care & Tone Up SPF50+ PA++++ 70g:</strong> phù hợp cho da thường/ mọi loại da muốn sử dụng kem chống nắng làm sáng, nâng tông da.</li>\r\n    \r\n    <li><strong>Kem Chống Nắng Nâng Tông Và Dưỡng Ẩm Da Hatomugi The Tone Up UV Milky Gel UV Care & Tone Up SPF50+ PA++++ (Xanh Bạc Hà) 70g:</strong> phù hợp cho da dầu, mụn & nhạy cảm muốn sử dụng kem chống nắng nâng tông, che phủ các khuyết điểm do mụn.</li>\r\n</ul>\r\n\r\n<h4>Hướng dẫn sử dụng:</h4>\r\n\r\n<ol>\r\n    <li>Sau khi hoàn thành các bước chăm sóc da cơ bản, lấy một lượng kem vừa đủ ra tay và thoa đều lên da.</li>\r\n    \r\n    <li>Massage nhẹ nhàng cho đến khi toàn bộ kem thẩm thấu.</li>\r\n    \r\n    <li>Thoa trước khi ra nắng ít nhất 30 phút để sản phẩm phát huy tác dụng tốt nhất.</li>\r\n    \r\n    <li>Nên thoa lại kem sau khi chảy mồ hôi, hoặc sau 4-6 tiếng.</li>\r\n</ol>\r\n\r\n<p><strong>LƯU Ý:</strong></p>\r\n\r\n<ul>\r\n    <li>Ngưng sử dụng và hỏi ý kiến bác sĩ nếu da bị kích ứng với các biểu hiện: nổi mẩn đỏ, sưng, ngứa.</li>\r\n    \r\n    <li>Tránh để sản phẩm tiếp xúc trực tiếp với mắt.</li>\r\n    \r\n    <li>Để xa tầm tay trẻ em.</li>\r\n</ul>'),
(32, 'Serum White Doctors', 580000, 'serum6.jpg', 'Serum dưỡng da ban đêm White Doctors làsản phẩm dưỡng da dành riêng cho ban đêm có tác dụng cải thiện tình trạng thâm mụn, làm giảm sạm nám, làm đều màu da.', 3, 6, 50, 0, '2023-11-12 05:00:00', '2023-10-31 17:00:00', 0, '600000', NULL),
(33, 'Kem Nền MAC Studio', 187000, 'knn.jpg', 'Kem Nền MAC Studio Fix Fluid SPF 15 Fond De Teint SPF 15 là kem nền dạng lỏng với công thức đặc biệt có khả năng kiềm dầu cực kì cao', 6, 11, 49, 1, '2023-11-13 02:46:26', '2023-11-13 02:46:26', 0, '210000', '<h4>Công Dụng:</h4>\r\n\r\n<ul>\r\n    <li>Chất kem dễ dàng hòa trộn làm đều màu da với hiệu ứng lì mịn.</li>\r\n    <li>Độ bám tốt, lâu trôi lên đến 24h, cho bạn vẻ ngoài hoàn hảo suốt cả ngày đêm.</li>\r\n    <li>Độ che phủ từ trung bình đến cao, giúp che mờ các khuyết điểm và làm mịn lỗ chân lông hiệu quả cho làn da mịn màng.</li>\r\n    <li>Kiểm soát tốt độ bóng dầu, không bị trôi phấn do mồ hôi, không gây ra những vệt trắng hay vón cục, lắng cặn.</li>\r\n    <li>Công thức mang đến cho bạn sự thoải mái khi sử dụng, không quá nặng mặt và không gây khô da.</li>\r\n    <li>Bảo vệ da khỏi ánh nắng với khả năng chống nắng phổ rộng SPF 15.</li>\r\n    <li>Màu sắc trung thực, tự nhiên với bảng màu đa dạng cho bạn dễ dàng lựa chọn màu sắc phù hợp với tông da.</li>\r\n</ul>\r\n\r\n<h4>Đối Tượng Sử Dụng:</h4>\r\n\r\n<ul>\r\n    <li>Sản phẩm phù hợp với mọi loại da, đặc biệt là da dầu/hỗn hợp dầu và kể cả trong thời tiết nóng ẩm.</li>\r\n    <li>Phù hợp cho cả trang điểm chuyên nghiệp lẫn trang điểm hằng ngày.</li>\r\n    <li>Phù hợp cho làn da có nhiều khuyết điểm.</li>\r\n</ul>\r\n\r\n<p><strong>Xuất xứ:</strong> Mỹ</p>'),
(34, 'Nước Hoa Nữ Versace Bright Crystal', 1500000, 'nnnn.jpg', 'Nước Hoa Nữ Versace Bright Crystal EDT Bright Crystal Eau de Toilette Spray là sản phẩm đến từ thương hiệu Versace nổi tiếng toàn thế giới.', 4, 13, 49, 1, '2023-11-14 02:48:48', '2023-11-15 10:44:01', 0, '1800000', NULL),
(35, 'Nước hoa Victoria’s Secret', 950000, 'NuocHoa.jpg', 'Victoria’s Secret Bombshell ra đời với thông điệp mang đến sự trẻ trung, tôn lên nét xinh đẹp của mọi cô gái. ', 4, 13, 46, 4, '2023-10-10 02:48:48', '2023-10-13 02:48:48', 0, '1200000', NULL),
(36, 'Nước Hoa Nam Charme', 1000000, 'NHT5.jpg', 'Nước hoa Charme Boss mang hương thơm độc quyền, không giống bất cứ tone mùi nào. Chính vì vậy, nếu bạn có đam mê sưu tầm nước hoa thì hãy sở hữu cho mình chai nước hoa này nhé', 4, 13, 42, 8, '2021-05-13 02:52:03', '2021-05-13 02:52:03', 0, '1300000', NULL);
INSERT INTO `sanpham` (`id`, `ten_sp`, `don_gia`, `hinh_anh`, `noi_dung`, `id_the_loai`, `id_nha_cc`, `so_luong`, `sl_da_ban`, `ngay_tao`, `ngay_sua`, `trangthai`, `gia_goc`, `NoiDungChiTiet`) VALUES
(37, 'Nước Hoa Chanel jean', 1051000, 'nhh.jpg', 'Nước Hoa Nữ Versace Bright Crystal EDT Bright Crystal Eau de Toilette Spray là sản phẩm đến từ thương hiệu Versace nổi tiếng toàn thế giới.', 4, 12, 48, 2, '2023-11-13 02:52:54', '2023-11-13 02:52:54', 0, '1300000', NULL),
(38, 'Nước Hoa Nam Charme', 799000, 'NHT5.jpg', 'Nước hoa Charme Boss mang hương thơm độc quyền, không giống bất cứ tone mùi nào. Chính vì vậy, nếu bạn có đam mê sưu tầm nước hoa thì hãy sở hữu cho mình chai nước hoa này nhé', 4, 16, 49, 1, '2023-11-15 02:52:54', '2023-11-15 02:52:54', 12, '840000', NULL),
(39, 'Nước hoa Celine Rimbaud 100ml', 2000000, 'clnn.jpg', 'Rimbaud của Celine là một loại nước hoa dành cho phụ nữ và nam giới. Rimbaud được ra mắt vào năm 2022.', 4, 16, 47, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2250000', NULL),
(40, 'Nước hoa Celline Black', 900000, 'NH5.jpg', 'Black Tie EDP được tạo kiểu như một chiếc áo khoác dạ tiệc, gỗ tuyết tùng và rêu cây tạo nên vẻ quyến rũ của nó, trong khi lớp phấn phủ của hoa diên vĩ gây rắc rối cho cơ thể và tâm trí.', 4, 17, 49, 1, '2023-11-13 02:55:21', '2023-11-13 02:55:21', 0, '1100000', NULL),
(41, 'Kem Dưỡng Ẩm Neutrogena', 269000, 'kemduong.jpg', 'Kem Dưỡng Ẩm Neutrogena Hydro Boost Water Gel 50g là kem dưỡng ẩm đến từ thương hiệu mỹ phẩm Neutrogena của Mỹ', 6, 17, 50, 0, '2023-11-13 02:55:21', '2023-11-13 02:55:21', 0, '320000', '<h4>Neutrogena Hydro Boost Water Gel</h4>\r\n\r\n<p>Neutrogena Hydro Boost Water Gel là dòng sản phẩm kem dưỡng ẩm da nổi tiếng đến từ thương hiệu Neutrogena của Mỹ, nay được cải tiến với diện mạo mới & công thức mới - bổ sung thêm 20% Hyaluronic Acid, kết hợp 9 loại Amino Acid khác nhau, từ đó tăng cường cấp ẩm cho da gấp 5 lần so với công thức cũ, mang lại hiệu quả dưỡng ẩm sâu suốt 72 giờ, cho làn da căng bóng, sáng mịn và đàn hồi.</p>\r\n\r\n<h4>Thành Phần Sản Phẩm</h4>\r\n\r\n<p><strong>Thành Phần Chính:</strong></p>\r\n\r\n<ul>\r\n    <li>1% phức hợp yếu tố giữ ẩm tự nhiên (NMF):</li>\r\n    <ul>\r\n        <li><strong>Hyaluronic Acid:</strong> giúp cấp ẩm và khóa ẩm làm cho dàn da căn mọng dài lâu.</li>\r\n        <li><strong>Amino Acid:</strong> hỗ trợ hàng rào da khỏe mạnh, ngăn thoát nước qua da.</li>\r\n        <li><strong>Chất điện giải:</strong> giúp làn da hấp thu dưỡng chất tối ưu.</li>\r\n    </ul>\r\n</ul>\r\n\r\n<p><strong>Thành Phần Đầy Đủ:</strong></p>\r\n\r\n<p>Water, Glycerin, Dimethicone, Cetearyl Olivate, Sorbitan Olivate, Polyacrylate Crosspolymer-6, Betaine, Caprylyl Glycol, Synthetic Beeswax, Ethylhexylglycerin, Pentylene Glycol, Sodium PCA, Fructose, Dimethicone Crosspolymer, Sodium Hyaluronate, Dimethiconol, Sodium Lactate, Urea, Citric Acid, PCA, Fragrance, Sodium Hydroxide, Maltose, Serine, Alanine, Glycine, Sodium Chloride, Trehalose, Allantoin, Glutamic Acid, Lysine HCl, Threonine, Arginine, Glucose, Proline, CI 42090.</p>'),
(42, 'Son dưỡng môi Laneige Lip ', 75000, 'son.jpg', 'Kem dưỡng môi Laneige Lip Sleeping Mask được đánh giá cao về khả năng dưỡng ẩm và làm mềm môi ngoài ra còn giúp cải thiện tình trạng khô, nứt nẻ mang đến một đôi môi căng bóng và hồng hào.', 6, 18, 50, 0, '2023-05-13 02:58:47', '2023-11-15 03:30:00', 0, '80000', '<h4>Thông Tin Mặt Nạ Ngủ Ủ Môi Laneige Lip Sleeping Mask Ex 20g</h4>\r\n\r\n<ul>\r\n    <li><strong>Xuất Xứ:</strong> Hàn Quốc</li>\r\n    <li><strong>Dung Tích:</strong> 20g</li>\r\n    <li>\r\n        <strong>Công Dụng:</strong>\r\n        <ul>\r\n            <li>Chứa công thức Berry Mix Complex™ với vitamin C và chất chống oxy hóa từ quả mâm xôi, dâu tây, nam việt quất, và quả việt quất giúp dưỡng ẩm, làm dịu và mềm môi.</li>\r\n            <li>Công nghệ Moisture Wrap™ giữ ẩm và bảo vệ môi.</li>\r\n            <li>Chiết xuất bơ hạt mỡ giúp cung cấp độ ẩm, ngăn mất nước, chống viêm, hỗ trợ tăng sinh collagen.</li>\r\n            <li>Chiết xuất hạt cà phê làm sạch lớp da chết, tạo đôi môi tươi tắn.</li>\r\n            <li>Kết cấu kem mềm mượt, mùi hương ngọt ngào của quả Berry.</li>\r\n        </ul>\r\n    </li>\r\n    <li>\r\n        <strong>Đối Tượng Khuyên Dùng:</strong>\r\n        <ul>\r\n            <li>Dành cho vùng môi.</li>\r\n            <li>Đôi môi khô sần, nứt nẻ.</li>\r\n            <li>Đôi môi thiếu ẩm, thâm sạm.</li>\r\n        </ul>\r\n    </li>\r\n    <li>\r\n        <strong>Hướng Dẫn Sử Dụng:</strong>\r\n        <p>Sử dụng vào buổi tối trước khi đi ngủ. Lấy một lượng vừa đủ, thoa đều nhẹ nhàng lên môi. Sáng hôm sau lau sạch bằng bông gòn hoặc khăn giấy.</p>\r\n    </li>\r\n    <li>\r\n        <strong>Lưu Ý:</strong>\r\n        <ul>\r\n            <li>Bảo quản sản phẩm ở nhiệt độ từ 25-32 độ C.</li>\r\n            <li>Avoid tiếp xúc với môi trường có nhiệt độ thay đổi đột ngột hoặc quá nóng, quá lạnh.</li>\r\n        </ul>\r\n    </li>\r\n</ul>'),
(43, 'Mặt Nạ Giấy INNISFREE', 19000, 'mng.jpg', 'Mặt Nạ Giấy Innisfree bao gồm 18 loại chiết xuất từ những nguyên liệu thiên nhiên khác nhau, cung cấp độ ẩm và dưỡng chất cần thiết đối với từng loại da và các vấn đề khác nhau của da.', 6, 18, 56, 0, '2023-11-13 02:59:52', '2023-11-13 03:59:52', 0, '25000', '<h3>Thông Tin Sản Phẩm</h3>\r\n\r\n<ol>\r\n    <li>\r\n        <h3>Chiết Xuất Nước Ép Tươi</h3>\r\n        <p>Mặt nạ dưỡng chất từ hoa quả tại đảo Jeju với công nghệ vắt hiện đại và ép lạnh để giữ nguyên dưỡng chất.</p>\r\n    </li>\r\n    \r\n    <li>\r\n        <h4>Chất Liệu Cellulose Nguyên Chất</h4>\r\n        <p>Mặt nạ làm từ 100% cellulose nguyên chất từ cây bạch đàn, thiết kế mỏng nhẹ, bền chắc, lành tính và ôm sát trên da.</p>\r\n        <p>Thiết kế mới Easy-peel giúp thao tác tiện lợi hơn.</p>\r\n    </li>\r\n    \r\n    <li>\r\n        <h4>Ba Loại Dưỡng Chất Chăm Sóc Da</h4>\r\n        <p><strong>A. Dạng Nước Tinh Chất Dịu Mát:</strong></p>\r\n        <ul>\r\n            <li>Tea Tree (Cây tràm trà): Làm mượt và kháng khuẩn.</li>\r\n            <li>Bamboo (Tre): Cấp nước và làm dịu.</li>\r\n            <li>Lime (Chanh): Làm sáng da.</li>\r\n            <li>Green Tea (Trà xanh): Cấp nước và làm diu da.</li>\r\n            <li>Rose (Hoa hồng): Cấp nước và làm sáng da.</li>\r\n        </ul>\r\n\r\n        <p><strong>B. Dạng Tinh Chất Dưỡng Ẩm:</strong></p>\r\n        <ul>\r\n            <li>Fig (Trái phỉ): Thanh lọc da.</li>\r\n            <li>Pomergranate (Lựu): Làm mịn và sáng da.</li>\r\n            <li>Honey (Mật ong manuka): Dưỡng ẩm và phục hồi da.</li>\r\n            <li>Cucumber (Dưa leo): Phục hồi nước.</li>\r\n            <li>Aloe (Nha đam): Cấp nước và làm dịu da.</li>\r\n        </ul>\r\n\r\n        <p><strong>C. Dạng Kem Giàu Dưỡng Chất:</strong></p>\r\n        <ul>\r\n            <li>Rice (Gạo): Làm sáng và mịn da.</li>\r\n            <li>Acai Berry: Phục hồi và giúp da săn chắc.</li>\r\n            <li>Ginseng (Nhân sâm Hàn Quốc): Phục hồi da và nuôi dưỡng.</li>\r\n        </ul>\r\n    </li>\r\n</ol>'),
(44, 'Bông tẩy trang Ipek siêu mềm mịn ', 43000, 'btt.jpg', 'Bông tẩy trang Ipek với công nghệ sản xuất tiên tiến giúp tẩy trang và làm sạch mọi bụi bẩn bám trên da bằng nước sạch, nước tẩy trang hay nước hoa hồng chăm sóc da.', 6, 18, 50, 0, '2023-11-15 02:59:52', '2023-11-15 03:59:52', 0, '50000', '<h4>Bông Tẩy Trang Ipek với Công Nghệ Tiên Tiến</h4>\r\n\r\n<p>Công nghệ sản xuất tiên tiến giúp tẩy trang và làm sạch mọi bụi bẩn bám trên da bằng nước sạch, nước tẩy trang hay nước hoa hồng chăm sóc da. Miếng bông được dệt thành 2 mặt khác nhau giúp tận dụng được tối đa sản phẩm. Sợi bông mềm mịn, thấm hút sâu dung dịch, nhẹ nhàng lau sạch vùng da nhạy cảm mà không để lại xơ bông trên mặt, da không bị tổn thương, giúp làn da sáng mịn, rạng ngời.</p>\r\n\r\n<h4>Thành Phần: 100% Cotton</h4>\r\n\r\n<h4>Công Dụng:</h4>\r\n<p>Hỗ trợ làm sạch lớp trang điểm, bụi bẩn, bã nhờn trên da, giúp lỗ chân lông thông thoáng.</p>\r\n\r\n<h4>Hướng Dẫn Sử Dụng:</h4>\r\n<p>Lấy bông tẩy trang và thấm dung dịch tẩy trang vừa đủ miếng bông, nhẹ nhàng lau lên mặt, mắt, môi và cổ. Đối với lớp trang điểm không thấm nước, giữ miếng bông lên vùng da đó trong vài giây.</p>\r\n\r\n<h4>Sản Phẩm Dành Cho:</h4>\r\n<p>Dùng được cho mọi loại da.</p>\r\n\r\n<h4>Bảo Quản:</h4>\r\n<ul>\r\n    <li>Tránh ánh nắng trực tiếp.</li>\r\n    <li>Để nơi khô ráo, thoáng mát.</li>\r\n    <li>Đậy nắp kín sau khi sử dụng.</li>\r\n</ul>\r\n\r\n<h4>Xuất Xứ: Thổ Nhĩ Kỳ</h4>\r\n'),
(45, 'Nước tẩy trang Evoluderm', 159000, 'ntt11.jpg', 'Nước Tẩy Trang Evoluderm Micellar Cleansing Water là dòng sản phẩm tẩy trang dạng nước đến từ thương hiệu Evoluderm của Pháp', 5, 14, 48, 2, '2023-11-10 03:14:08', '2023-11-10 03:14:08', 0, '220000', '<h4>Nước Tẩy Trang Evoluderm Micellar Cleansing Water</h4><p> là dòng sản phẩm tẩy trang dạng nước đến từ thương hiệu Evoluderm của Pháp, giúp làm sạch, thanh lọc và đem lại sự tươi mát cho làn da của bạn. Với chiết xuất từ các thành phần tự nhiên tôn trọng bản chất làn da như Bưởi Hồng, Cây Bông, Lô Hội, Evoluderm đã thiết kế các công thức riêng biệt cho từng loại da, kể cả làn da nhạy cảm nhất.<h4>Phân loại: </h4><ul>     <li>                        <span> Nước Tẩy Trang Cho Da Nhạy Cảm Evoluderm Micellar Cleansing Water Reactive Skins (màu đỏ)</span>        </li>         <li>                    <span> Nước Tẩy Trang Cho Da Hỗn Hợp & Da Dầu Evoluderm Micellar Cleansing Water Combination To Oily Skins (màu xanh lá)</span>       </li>       <li>          <span>tẩy tế bào chết, làm thông thoáng lỗ chân lông, ngăn ngừa mụn mới hình thành thành và cải thiện sẹo mụn và vết thâm do mụn để lại.</span>       </li>       <li>           <span>Nước Tẩy Trang Cho Da Khô Và Nhạy Cảm Evoluderm Micellar Cleansing Water Dry & Sensitive Skins (màu hồng)</span>        </li>   </ul>'),
(46, 'Nước tẩy trang Nivea Pearl White', 180000, 'ntttt.jpg', 'Nước Tẩy Trang Nivea Làm Sáng Da Pearl White Micellar Water 400Ml \r\nNước Tẩy Trang Nivea Sáng Da \r\nCho Da Thường Và Khô\r\n', 5, 15, 44, 6, '2021-05-13 03:14:08', '2021-05-13 03:14:08', 0, '250000', '<h4>Nước Tẩy Trang NIVEA Kiểm Soát Nhờn Bright Oil Clear Micellar Water</h4>\r\n        <p><strong>Thành phần chính:</strong></p>\r\n        <ul>\r\n            <li>Chiết xuất trái cherry anh đào: là chất giàu vitamin C giúp dưỡng sáng da.</li>\r\n            <li>Glycerin: giữ da mềm mịn.</li>\r\n            <li>Carnitine: là chất giúp giảm tiết nhờn - một trong những nguyên nhân chính gây mụn.</li>\r\n        </ul>\r\n\r\n        <!-- Thành phần sản phẩm 2 -->\r\n        <h4>Nước Tẩy Trang NIVEA Làm Sáng Da Pearl White Micellar Water</h4>\r\n        <p><strong>Thành phần chính:</strong></p>\r\n        <ul>\r\n            <li>Chiết xuất trái cherry anh đào: là chất giàu vitamin C giúp dưỡng sáng da.</li>\r\n            <li>Glycerin: giữ da mềm mịn.</li>\r\n        </ul>\r\n        <p><strong>Thành phần chi tiết:</strong></p>\r\n        <p>\r\n            Aqua, PEG-6 Caprylic/Capric Glycerides, PEG-40 Hydrogenated Castor Oil, Phenoxyethanol, 1,2-Hexanediol, Glycerin, Sorbitol, Poloxamer 124, Trisodium EDTA, Decyl Glucoside, Polyquaternium-10, Propylene Glycol, Disodium Cocoyl Glutamate, Citric Acid, Sodium Chloride, Sodium Acetate, Malpighia Glabra Fruit Juice.\r\n        </p>\r\n\r\n        <!-- Thành phần sản phẩm 3 -->\r\n        <h4>Nước Tẩy Trang NIVEA Ngừa Mụn Acne Care Micellar Water</h4>\r\n        <p><strong>Thành phần chính:</strong></p>\r\n        <ul>\r\n            <li>Lactic acid: là chất giúp giảm viêm mụn & hạn chế tác nhân gây mụn hiệu quả.</li>\r\n            <li>Glycerin: giữ da mềm mịn.</li>\r\n            <li>Carnitine: là chất giúp giảm tiết nhờn - một trong những nguyên nhân chính gây mụn.</li>\r\n            <li>Dầu hạt trái nho: giảm viêm, ngăn ngừa mụn.</li>\r\n        </ul>'),
(47, 'Sữa Rửa Mặt Some By Mi Acne ', 235000, 'thbh.jpg', 'Sữa Rửa Mặt Some By Mi Acne Cho Da Mụn 100ml, các hoạt chất trên đem lại khả năng làm sạch và ngừa mụn vô cùng đáng nể.\r\n\r\n', 1, 1, 50, 0, '2023-11-13 06:54:46', '2023-11-13 06:54:46', 0, '300000', '<h4>Thông Tin Sữa Rửa Mặt SOME BY MI AHA BHA PHA 30 DAYS MIRACLE ACNE CLEAR FOAM 100ml</h4>\r\n\r\n<p>Sữa rửa mặt SOME BY MI AHA BHA PHA 30 DAYS MIRACLE ACNE CLEAR FOAM là một loại gel centella không gây dị ứng, có tính acid nhẹ làm dịu làn da có vấn đề, đồng thời cung cấp hydrat hóa và dinh dưỡng.</p>\r\n\r\n<p>Được truyền tới 80% chiết xuất Centella Asiatica và các hoạt chất khác để cải thiện sự xuất hiện của các vết sưng tấy, đồng thời bảo vệ da chống lại các chất kích thích bên ngoài, giúp da lấy lại sự khỏe mạnh và thông thoáng hơn.</p>\r\n\r\n<h4>Công Dụng Chính</h4>\r\n<ul>\r\n    <li>Sử dụng chất hoạt động bề mặt nhẹ dịu, làm sạch da tối ưu mà không gây kích ứng hay khô rát.</li>\r\n    <li>Chứa 160.200 ppm hợp chất Truecica™ giúp làm dịu, bảo vệ và củng cố hàng rào bảo vệ da.</li>\r\n    <li>BHA (Salicylic Acid) làm sạch sâu lỗ chân lông, giảm bít tắc và mụn trứng cá, điều tiết bã nhờn cho da thông thoáng sạch mịn.</li>\r\n    <li>AHA – PHA thanh tẩy tế bào chết nhẹ nhàng, dưỡng ẩm, cải thiện kết cấu da, giúp da săn chắc và đàn hồi hơn.</li>\r\n    <li>Không chứa các thành phần gây hại, an toàn và lành tính cho mọi loại da, đặc biệt phù hợp cho làn da dầu, mụn, nhạy cảm.</li>\r\n</ul>\r\n\r\n<h4>Cách Sử Dụng</h4>\r\n<p>Cho một lượng vừa đủ ra tay và cho 1 ít nước để tạo bọt, sau đó massage trên mặt ướt và rửa sạch bằng nước ấm.</p>\r\n\r\n<h4>Thành Phần</h4>\r\n<ul>\r\n    <li>Glycerin</li>\r\n    <li>Axit palmitic</li>\r\n    <li>Axit stearic</li>\r\n    <li>Ric axit myristic</li>\r\n    <li>Kali hydroxit</li>\r\n    <li>Lauryl betaine</li>\r\n    <li>Butyleneglycol</li>\r\n    <li>Thể thực khuẩn-100 stearate</li>\r\n    <li>Glyceryl stearate</li>\r\n    <li>Sáp ong</li>\r\n    <li>Cây chè nước lá</li>\r\n    <li>Natri methylcocoyl Taurat</li>\r\n    <li>Kali cocoyl Glycinate</li>\r\n    <li>Axit salicylic</li>\r\n    <li>Dipropylene glycol</li>\r\n    <li>Bộthydroxyacetate Fumarate</li>\r\n    <li>Tinh dầu bạc hà</li>\r\n    <li>Caprylic glycol</li>\r\n    <li>1,2-hexanediol</li>\r\n    <li>Di-sodium</li>\r\n    <li>Ditallow hydroxyetylxenlulo calamine</li>\r\n    <li>Gluconolactone</li>\r\n    <li>Axit citric</li>\r\n    <li>Dipotali glycyrrhizate</li>\r\n    <li>Madecasoide</li>\r\n    <li>Asian Ticoside</li>\r\n    <li>Asiatic Acid và Madeca Acid</li>\r\n    <!-- Thêm các thành phần khác nếu còn -->\r\n</ul>'),
(48, 'Sữa rửa mặt Acne-Aid Liquid Cleanser', 175000, 'P22986_1.jpg', 'Sữa rửa mặt Acne-Aid Liquid Cleanser làm sạch da dịu nhẹ, giúp loại bỏ dầu cho da. Thích hợp sử dụng hàng ngày, đặc biệt cho da dầu và mụn.', 1, 1, 50, 0, '2023-11-13 06:57:07', '2023-11-13 06:57:07', 0, '250000', '<p>Sữa Rửa Mặt Acne-Aid Liquid Cleanser Cho Da Nhờn Và Mụn hiện đã có mặt tại Hasaki với 2 dung tích: 50ml và 100ml.</p>\r\n\r\n<h4>Loại da phù hợp:</h4>\r\n<p>Sản phẩm dành cho da nhờn và da mụn.</p>\r\n<h4>Giải pháp cho tình trạng da:<4h>\r\n<li>Dầu thừa, lỗ chân lông to</li>\r\n\r\n<li>Da mụn hoặc dễ nổi mụn</li>\r\n\r\n<h4>Công dụng chính:</h4>\r\n<li>Giúp làm sạch bụi bẩn, tạp chất cùng lượng dầu thừa, bã nhờn tích tụ trên da và bên trong lỗ chân lông.</li>\r\n\r\n<li>Hỗ trợ làm giảm mụn và ngăn ngừa mụn mới hình thành.</li>\r\n\r\n<h4>Ưu thế nổi bật:</h4>\r\n<li>Với công thức không chứa xà phòng & có độ pH cân bằng, sữa rửa mặt Acne-Aid Liquid Cleanser giúp nhẹ nhàng làm sạch trên da.</li>\r\n\r\n<li>Giúp giữ cho làn da mềm mại và mịn màng nhờ hoạt chất giúp làm mượt da.</li>\r\n\r\n<li>Giúp loại bỏ hiệu quả các chất nhờn & bã nhờn dư thừa trên da, làm sạch da từ đó giúp cải thiện hiệu quả làn da bị các vấn đề về mụn.</li>\r\n\r\n<li>Khả năng gây kích ứng thấp, không chứa các thành phần gây tắc nghẽn hoặc gây bít tắc lỗ chân lông.</li>\r\n\r\n<li>Thích hợp sử dụng hằng ngày, đặc biệt dành cho da dầu và mụn.</li>\r\n\r\n '),
(49, 'Sữa rửa mặt bọt Hada Labo Gokujyun', 160000, 'grande.jpg', 'Sữa rửa mặt tạo bọt Hada Labo của Rohto Nhật Bản được thiết kế dạng tạo bọt sẵn tiện lợi giúp cho làn da sạch sâu tận lỗ sâu chân lông ', 1, 1, 48, 2, '2023-11-13 07:04:34', '2023-11-13 07:04:34', 0, '200000', '<h4>Sữa Rửa Mặt Hada Labo của Nhật</h4>\r\n\r\n<p>Sữa rửa mặt độ PH quá cao sẽ làm mất cân bằng độ ẩm da, khô da, nhưng sữa rửa mặt Hada Labo nội địa Nhật với độ PH chuẩn 5.5 sẽ không khiến da bị khô căng sau mỗi lần sử dụng. Kèm theo đó là không chứa cồn, không hương liệu, không dầu khoáng nên rất nhẹ dịu cho làn da nhạy cảm. Lớp bọt mịn tơi xốp giúp làm sạch sâu một cách tối ưu. Không gây kích ứng cho da vì bảng thành phần an toàn với chiết xuất từ thiên nhiên như: hoa đỗ quyên, hoa hồng, lúa mạch… Mùi hương dịu nhẹ, thư giãn</p>\r\n\r\n<h4>Công Dụng của Sữa Rửa Mặt Hada Labo</h4>\r\n\r\n<ul>\r\n    <li>Sữa rửa mặt tạo bọt, lớp bọt mịn nhẹ nhàng làm sạch bụi bẩn, bã nhờn, dầu thừa trên da.</li>\r\n    <li>Công thức hòa trộn nhiều loại Hyaluronic Acid, đem đến độ ẩm tuyệt vời cho làn da.</li>\r\n    <li>Ngăn ngừa hình thành melanin, phòng ngừa nám, tàn nhan do tia uv gây ra.</li>\r\n    <li>Tạo cảm giác ẩm mượt, mịn màng sau khi sử dụng.</li>\r\n    <li>Góp phần cải thiện tình trạng mụn cám, mụn đầu đen.</li>\r\n    <li>Cân bằng độ pH cho làn da.</li>\r\n    <li>Kiềm chế lượng dầu tiết ra trên da giúp ngăn chặn sự hình thành và phát triển của mụn.</li>\r\n</ul>\r\n\r\n<h4>Thành Phần của Sữa Rửa Mặt Hada Labo</h4>\r\n\r\n<ul>\r\n    <li><strong>Vitamin C:</strong> ức chế melanin làm sạm da và khôi phục sự đàn hồi cho da.</li>\r\n    <li><strong>Sodium Hyaluronate:</strong> giúp dưỡng ẩm, ngăn da khô do thiếu nước.</li>\r\n    <li><strong>HA (Hyaluronic Acid), SHA (Super Hyaluronic Acid), và Nano HA (Nano Hyaluronic Acid):</strong> là những hoạt chất sinh học hiệu quả bậc nhất trong ngành công nghiệp dưỡng ẩm.</li>\r\n</ul>'),
(50, 'Sữa rửa mặt Reihaku Hatomugi', 190000, 'srm7.jpg', 'Sữa rửa mặt Hatomugi ngừa mụn, dưỡng ẩm và làm sáng da Reihaku Hatomugi Acne Care & Facial Washing 130g chứa các thành phần dưỡng ẩm tự nhiên chiết xuất từ hạt Ý dĩ', 1, 1, 51, 0, '2023-10-13 07:07:57', '2023-10-13 07:07:57', 0, '250000', '<h4>Thông Tin Sữa Rửa Mặt Ngừa Mụn Sáng Da Reihaku Hatomugi 130g</h4>\r\n\r\n<p>Sữa Rửa Mặt Hatomugi The Medicated Facial Foam với công thức giàu các thành phần dưỡng ẩm tự nhiên chiết xuất từ hạt Ý Dĩ, Lá Đào và Rễ Cam Thảo giúp loại bỏ bụi bẩn, dầu thừa ẩn sâu trong lỗ chân lông, hỗ trợ ngăn ngừa và làm giảm mụn trứng cá, đồng thời bổ sung độ ẩm, cải thiện tình trạng da khô thô ráp. Sản phẩm phù hợp cho mọi loại da và giải pháp cho tình trạng da mụn, da thiếu nước - thiếu ẩm, da xỉn màu & thâm sạm.</p>\r\n\r\n<h4>Công Dụng Chính</h4>\r\n<ul>\r\n    <li>Sữa rửa mặt dạng kem tạo bọt mềm mịn, giúp làm sạch sâu da, loại bỏ bụi bẩn, bã nhờn và vi khuẩn gây mụn tích tụ trong lỗ chân lông.</li>\r\n    <li>Chứa thành phần dưỡng ẩm tự nhiên chiết xuất từ hạt Ý Dĩ và Lá Đào giúp nuôi dưỡng và mang lại làn da mịn màng, tươi sáng hơn.</li>\r\n    <li>Thành phần hoạt tính Dipotassium Glycyrrhizinate chiết xuất từ Rễ Cam Thảo có đặc tính giúp giảm viêm, giúp làm giảm và ngăn ngừa mụn trứng cá, cải thiện làn da khô thô ráp.</li>\r\n    <li>Tăng cường thêm độ ẩm với Hyaluronic Acid và Amino Acid, giúp bảo vệ da không bị khô căng sau khi rửa mặt.</li>\r\n</ul>\r\n\r\n<h4>Cách Sử Dụng</h4>\r\n<ol>\r\n    <li>Làm ướt mặt.</li>\r\n    <li>Lấy một lượng sữa rửa mặt bằng hạt đậu và tạo bọt kĩ.</li>\r\n    <li>Mát xa nhẹ nhàng toàn bộ gương mặt.</li>\r\n    <li>Rửa sạch lại với nước.</li>\r\n</ol>'),
(52, 'Sữa Rửa Mặt Elbon', 260000, 'srm11.jpg', 'Dù dùng mỹ phẩm đắt tiển cỡ nào, nếu dùng không đúng cách bạn vẫn không đạt được kết quả như mong muốn. ', 1, 3, 50, 0, '2023-10-14 13:20:29', '0000-00-00 00:00:00', 0, '300000', '<h4>Thành Phần:</h4>\r\n\r\n<ul>\r\n    <li>Acid</li>\r\n    <li>Myristic Acid</li>\r\n    <li>Lauric Acid</li>\r\n    <li>Beeswax</li>\r\n    <li>Glyceryl Stearate</li>\r\n    <li>PEG-10 Stearate</li>\r\n    <li>Lipid water</li>\r\n    <li>Flower 10 Complex</li>\r\n    <li>Prunus Armeniaca Seed Powder</li>\r\n    <!-- Thêm các thành phần khác nếu còn -->\r\n</ul>\r\n\r\n<h4>Công Dụng:</h4>\r\n\r\n<p>Gel rửa mặt Nano Elbon được chiết xuất từ ngọc trai thiên nhiên kết hợp với công nghệ Nano chứa nhiều hoạt chất cần thiết làm sạch da tới 98,9%. Đồng thời duy trì sử dụng sữa rửa mặt Nano Elbon hàng ngày giúp lỗ chân lông thông thoáng, da mịn màng và sáng đều.</p>\r\n\r\n<ul>\r\n    <li><strong>Salicylic Acid:</strong> kháng khuẩn, làm sạch và thông thoáng lỗ chân lông, giảm hình thành mụn.</li>\r\n    <li><strong>Niacin:</strong> kiểm soát nhờn, giảm dầu thừa, làm mờ các đốm nâu và dưỡng trắng.</li>\r\n    <li><strong>Collagen:</strong> trẻ hóa, bảo vệ và làm săn chắc da.</li>\r\n    <li><strong>Vitamin E:</strong> chống oxy hóa và ngăn ngừa lão hòa.</li>\r\n    <!-- Thêm các hoạt chất khác nếu còn -->\r\n</ul>\r\n\r\n<h4>Cách Sử Dụng:</h4>\r\n\r\n<p>Rửa tay sạch, lấy 1 lượng sữa rửa mặt Elbon vừa đủ lên lòng bàn tay rồi massage nhẹ nhàng trên mặt. Sử dụng 2 lần/ngày cho kết quả tốt nhất.</p>'),
(53, 'Son Dior Rouge Dior Màu Strong', 950000, 'son888.jpg', 'Son Dior Rouge Dior màu Strong Matte 888 là sự kết hợp hài hòa giữa màu son đỏ cam quyến rũ cùng sắc cam tươi tắn mang đến cho nàng vẻ tươi mới không kém phần quyến rũ cho nàng.', 6, 3, 10, 0, '2023-11-14 14:09:20', '0000-00-00 00:00:00', 0, '1000000', NULL),
(54, 'Sữa Rửa Mặt Pond\'s Bright Beauty ', 250000, 'srmm.jpg', 'sữa rửa mặt làm sáng da Sáng Mịn Rạng Rỡ Pond\'s Bright Beauty loại bỏ hiệu quả lớp bã nhờn và bụi bẩn sâu bên trong lỗ chân lông cho da thật sạch và tươi sáng.', 1, 1, 0, 0, '2023-11-15 03:04:25', '2023-11-15 03:04:25', 0, '300000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoang`
--

CREATE TABLE `taikhoang` (
  `trang_thai` tinyint(4) NOT NULL,
  `id_quyen` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taikhoang`
--

INSERT INTO `taikhoang` (`trang_thai`, `id_quyen`, `username`, `pass`, `fullname`) VALUES
(0, 3, 'an', '1234', 'Nhân viên Kim Yến'),
(0, 6, 'cuong', '20028751', 'Trần Quốc Cường'),
(0, 2, 'tu', '123456', 'Quản lý kho Thanh Tú'),
(0, 1, 'viet', '12345', 'Tạ Quốc Việt'),
(0, 2, 'yen', '20017171', 'Nguyễn Thị Kim Yến');

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE `theloai` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_tl` varchar(191) NOT NULL,
  `tong_sp` int(11) NOT NULL,
  `ngay_tao` timestamp NOT NULL DEFAULT current_timestamp(),
  `ngay_sua` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `theloai`
--

INSERT INTO `theloai` (`id`, `ten_tl`, `tong_sp`, `ngay_tao`, `ngay_sua`) VALUES
(1, 'Sửa rữa mặt', 379, '2023-10-25 14:04:25', '2021-11-12 14:00:00'),
(2, 'Kem chống nắng', 358, '2023-11-07 23:30:00', '2023-11-12 10:15:00'),
(3, 'Serum', 186, '2023-11-06 01:30:00', '2023-11-09 08:30:00'),
(4, 'Nước Hoa', 527, '2023-10-11 23:30:00', '2023-11-12 05:00:00'),
(5, 'Nước tẩy trang', 337, '2023-11-09 10:25:50', '2023-11-12 10:25:50'),
(6, 'Sản phẩm khác', 313, '2023-11-04 15:00:00', '2023-11-12 14:32:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cthoadon`
--
ALTER TABLE `cthoadon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sanpham` (`id_sanpham`),
  ADD KEY `cthoadon_ibfk_1` (`id_hoadon`);

--
-- Indexes for table `ctphieunhap`
--
ALTER TABLE `ctphieunhap`
  ADD KEY `id_sp` (`id_sp`),
  ADD KEY `ctphieunhap_ibfk_1` (`id_phieunhap`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hinhanhsp`
--
ALTER TABLE `hinhanhsp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hinhanhsp_ibfk_1` (`id_sp`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_khachhang` (`id_khachhang`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_nv` (`id_nv`);

--
-- Indexes for table `quyen`
--
ALTER TABLE `quyen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quyendahmuc`
--
ALTER TABLE `quyendahmuc`
  ADD KEY `id_danhmuc` (`id_danhmuc`),
  ADD KEY `id_quyen` (`id_quyen`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_nha_cc` (`id_nha_cc`),
  ADD KEY `id_the_loai` (`id_the_loai`);

--
-- Indexes for table `taikhoang`
--
ALTER TABLE `taikhoang`
  ADD PRIMARY KEY (`username`),
  ADD KEY `id_quyen` (`id_quyen`);

--
-- Indexes for table `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cthoadon`
--
ALTER TABLE `cthoadon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `hinhanhsp`
--
ALTER TABLE `hinhanhsp`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `quyen`
--
ALTER TABLE `quyen`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `theloai`
--
ALTER TABLE `theloai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cthoadon`
--
ALTER TABLE `cthoadon`
  ADD CONSTRAINT `cthoadon_ibfk_1` FOREIGN KEY (`id_hoadon`) REFERENCES `hoadon` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cthoadon_ibfk_2` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`);

--
-- Constraints for table `ctphieunhap`
--
ALTER TABLE `ctphieunhap`
  ADD CONSTRAINT `ctphieunhap_ibfk_1` FOREIGN KEY (`id_phieunhap`) REFERENCES `phieunhap` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ctphieunhap_ibfk_2` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id`);

--
-- Constraints for table `hinhanhsp`
--
ALTER TABLE `hinhanhsp`
  ADD CONSTRAINT `hinhanhsp_ibfk_1` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`id_khachhang`) REFERENCES `khachhang` (`id`);

--
-- Constraints for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `phieunhap_ibfk_1` FOREIGN KEY (`id_nv`) REFERENCES `nhanvien` (`id`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`id_nha_cc`) REFERENCES `nhacungcap` (`id`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`id_the_loai`) REFERENCES `theloai` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
