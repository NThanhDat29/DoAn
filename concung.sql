-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th6 06, 2024 lúc 03:38 PM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `concung`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cities`
--

CREATE TABLE `cities` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cities`
--

INSERT INTO `cities` (`id`, `name`, `type`, `province_id`) VALUES
(1, 'Quận Ba Đình', 'Quận', 1),
(2, 'Quận Hoàn Kiếm', 'Quận', 1),
(3, 'Quận Tây Hồ', 'Quận', 1),
(4, 'Quận Long Biên', 'Quận', 1),
(5, 'Quận Cầu Giấy', 'Quận', 1),
(6, 'Quận Đống Đa', 'Quận', 1),
(7, 'Quận Hai Bà Trưng', 'Quận', 1),
(8, 'Quận Hoàng Mai', 'Quận', 1),
(9, 'Quận Thanh Xuân', 'Quận', 1),
(16, 'Huyện Sóc Sơn', 'Huyện', 1),
(17, 'Huyện Đông Anh', 'Huyện', 1),
(18, 'Huyện Gia Lâm', 'Huyện', 1),
(19, 'Quận Nam Từ Liêm', 'Quận', 1),
(20, 'Huyện Thanh Trì', 'Huyện', 1),
(21, 'Quận Bắc Từ Liêm', 'Quận', 1),
(24, 'Thành phố Hà Giang', 'Thành phố', 2),
(26, 'Huyện Đồng Văn', 'Huyện', 2),
(27, 'Huyện Mèo Vạc', 'Huyện', 2),
(28, 'Huyện Yên Minh', 'Huyện', 2),
(29, 'Huyện Quản Bạ', 'Huyện', 2),
(30, 'Huyện Vị Xuyên', 'Huyện', 2),
(31, 'Huyện Bắc Mê', 'Huyện', 2),
(32, 'Huyện Hoàng Su Phì', 'Huyện', 2),
(33, 'Huyện Xín Mần', 'Huyện', 2),
(34, 'Huyện Bắc Quang', 'Huyện', 2),
(35, 'Huyện Quang Bình', 'Huyện', 2),
(40, 'Thành phố Cao Bằng', 'Thành phố', 4),
(42, 'Huyện Bảo Lâm', 'Huyện', 4),
(43, 'Huyện Bảo Lạc', 'Huyện', 4),
(45, 'Huyện Hà Quảng', 'Huyện', 4),
(47, 'Huyện Trùng Khánh', 'Huyện', 4),
(48, 'Huyện Hạ Lang', 'Huyện', 4),
(49, 'Huyện Quảng Hòa', 'Huyện', 4),
(51, 'Huyện Hoà An', 'Huyện', 4),
(52, 'Huyện Nguyên Bình', 'Huyện', 4),
(53, 'Huyện Thạch An', 'Huyện', 4),
(58, 'Thành Phố Bắc Kạn', 'Thành phố', 6),
(60, 'Huyện Pác Nặm', 'Huyện', 6),
(61, 'Huyện Ba Bể', 'Huyện', 6),
(62, 'Huyện Ngân Sơn', 'Huyện', 6),
(63, 'Huyện Bạch Thông', 'Huyện', 6),
(64, 'Huyện Chợ Đồn', 'Huyện', 6),
(65, 'Huyện Chợ Mới', 'Huyện', 6),
(66, 'Huyện Na Rì', 'Huyện', 6),
(70, 'Thành phố Tuyên Quang', 'Thành phố', 8),
(71, 'Huyện Lâm Bình', 'Huyện', 8),
(72, 'Huyện Na Hang', 'Huyện', 8),
(73, 'Huyện Chiêm Hóa', 'Huyện', 8),
(74, 'Huyện Hàm Yên', 'Huyện', 8),
(75, 'Huyện Yên Sơn', 'Huyện', 8),
(76, 'Huyện Sơn Dương', 'Huyện', 8),
(80, 'Thành phố Lào Cai', 'Thành phố', 10),
(82, 'Huyện Bát Xát', 'Huyện', 10),
(83, 'Huyện Mường Khương', 'Huyện', 10),
(84, 'Huyện Si Ma Cai', 'Huyện', 10),
(85, 'Huyện Bắc Hà', 'Huyện', 10),
(86, 'Huyện Bảo Thắng', 'Huyện', 10),
(87, 'Huyện Bảo Yên', 'Huyện', 10),
(88, 'Thị xã Sa Pa', 'Thị xã', 10),
(89, 'Huyện Văn Bàn', 'Huyện', 10),
(94, 'Thành phố Điện Biên Phủ', 'Thành phố', 11),
(95, 'Thị Xã Mường Lay', 'Thị xã', 11),
(96, 'Huyện Mường Nhé', 'Huyện', 11),
(97, 'Huyện Mường Chà', 'Huyện', 11),
(98, 'Huyện Tủa Chùa', 'Huyện', 11),
(99, 'Huyện Tuần Giáo', 'Huyện', 11),
(100, 'Huyện Điện Biên', 'Huyện', 11),
(101, 'Huyện Điện Biên Đông', 'Huyện', 11),
(102, 'Huyện Mường Ảng', 'Huyện', 11),
(103, 'Huyện Nậm Pồ', 'Huyện', 11),
(105, 'Thành phố Lai Châu', 'Thành phố', 12),
(106, 'Huyện Tam Đường', 'Huyện', 12),
(107, 'Huyện Mường Tè', 'Huyện', 12),
(108, 'Huyện Sìn Hồ', 'Huyện', 12),
(109, 'Huyện Phong Thổ', 'Huyện', 12),
(110, 'Huyện Than Uyên', 'Huyện', 12),
(111, 'Huyện Tân Uyên', 'Huyện', 12),
(112, 'Huyện Nậm Nhùn', 'Huyện', 12),
(116, 'Thành phố Sơn La', 'Thành phố', 14),
(118, 'Huyện Quỳnh Nhai', 'Huyện', 14),
(119, 'Huyện Thuận Châu', 'Huyện', 14),
(120, 'Huyện Mường La', 'Huyện', 14),
(121, 'Huyện Bắc Yên', 'Huyện', 14),
(122, 'Huyện Phù Yên', 'Huyện', 14),
(123, 'Huyện Mộc Châu', 'Huyện', 14),
(124, 'Huyện Yên Châu', 'Huyện', 14),
(125, 'Huyện Mai Sơn', 'Huyện', 14),
(126, 'Huyện Sông Mã', 'Huyện', 14),
(127, 'Huyện Sốp Cộp', 'Huyện', 14),
(128, 'Huyện Vân Hồ', 'Huyện', 14),
(132, 'Thành phố Yên Bái', 'Thành phố', 15),
(133, 'Thị xã Nghĩa Lộ', 'Thị xã', 15),
(135, 'Huyện Lục Yên', 'Huyện', 15),
(136, 'Huyện Văn Yên', 'Huyện', 15),
(137, 'Huyện Mù Căng Chải', 'Huyện', 15),
(138, 'Huyện Trấn Yên', 'Huyện', 15),
(139, 'Huyện Trạm Tấu', 'Huyện', 15),
(140, 'Huyện Văn Chấn', 'Huyện', 15),
(141, 'Huyện Yên Bình', 'Huyện', 15),
(148, 'Thành phố Hòa Bình', 'Thành phố', 17),
(150, 'Huyện Đà Bắc', 'Huyện', 17),
(152, 'Huyện Lương Sơn', 'Huyện', 17),
(153, 'Huyện Kim Bôi', 'Huyện', 17),
(154, 'Huyện Cao Phong', 'Huyện', 17),
(155, 'Huyện Tân Lạc', 'Huyện', 17),
(156, 'Huyện Mai Châu', 'Huyện', 17),
(157, 'Huyện Lạc Sơn', 'Huyện', 17),
(158, 'Huyện Yên Thủy', 'Huyện', 17),
(159, 'Huyện Lạc Thủy', 'Huyện', 17),
(164, 'Thành phố Thái Nguyên', 'Thành phố', 19),
(165, 'Thành phố Sông Công', 'Thành phố', 19),
(167, 'Huyện Định Hóa', 'Huyện', 19),
(168, 'Huyện Phú Lương', 'Huyện', 19),
(169, 'Huyện Đồng Hỷ', 'Huyện', 19),
(170, 'Huyện Võ Nhai', 'Huyện', 19),
(171, 'Huyện Đại Từ', 'Huyện', 19),
(172, 'Thị xã Phổ Yên', 'Thị xã', 19),
(173, 'Huyện Phú Bình', 'Huyện', 19),
(178, 'Thành phố Lạng Sơn', 'Thành phố', 20),
(180, 'Huyện Tràng Định', 'Huyện', 20),
(181, 'Huyện Bình Gia', 'Huyện', 20),
(182, 'Huyện Văn Lãng', 'Huyện', 20),
(183, 'Huyện Cao Lộc', 'Huyện', 20),
(184, 'Huyện Văn Quan', 'Huyện', 20),
(185, 'Huyện Bắc Sơn', 'Huyện', 20),
(186, 'Huyện Hữu Lũng', 'Huyện', 20),
(187, 'Huyện Chi Lăng', 'Huyện', 20),
(188, 'Huyện Lộc Bình', 'Huyện', 20),
(189, 'Huyện Đình Lập', 'Huyện', 20),
(193, 'Thành phố Hạ Long', 'Thành phố', 22),
(194, 'Thành phố Móng Cái', 'Thành phố', 22),
(195, 'Thành phố Cẩm Phả', 'Thành phố', 22),
(196, 'Thành phố Uông Bí', 'Thành phố', 22),
(198, 'Huyện Bình Liêu', 'Huyện', 22),
(199, 'Huyện Tiên Yên', 'Huyện', 22),
(200, 'Huyện Đầm Hà', 'Huyện', 22),
(201, 'Huyện Hải Hà', 'Huyện', 22),
(202, 'Huyện Ba Chẽ', 'Huyện', 22),
(203, 'Huyện Vân Đồn', 'Huyện', 22),
(205, 'Thị xã Đông Triều', 'Thị xã', 22),
(206, 'Thị xã Quảng Yên', 'Thị xã', 22),
(207, 'Huyện Cô Tô', 'Huyện', 22),
(213, 'Thành phố Bắc Giang', 'Thành phố', 24),
(215, 'Huyện Yên Thế', 'Huyện', 24),
(216, 'Huyện Tân Yên', 'Huyện', 24),
(217, 'Huyện Lạng Giang', 'Huyện', 24),
(218, 'Huyện Lục Nam', 'Huyện', 24),
(219, 'Huyện Lục Ngạn', 'Huyện', 24),
(220, 'Huyện Sơn Động', 'Huyện', 24),
(221, 'Huyện Yên Dũng', 'Huyện', 24),
(222, 'Huyện Việt Yên', 'Huyện', 24),
(223, 'Huyện Hiệp Hòa', 'Huyện', 24),
(227, 'Thành phố Việt Trì', 'Thành phố', 25),
(228, 'Thị xã Phú Thọ', 'Thị xã', 25),
(230, 'Huyện Đoan Hùng', 'Huyện', 25),
(231, 'Huyện Hạ Hoà', 'Huyện', 25),
(232, 'Huyện Thanh Ba', 'Huyện', 25),
(233, 'Huyện Phù Ninh', 'Huyện', 25),
(234, 'Huyện Yên Lập', 'Huyện', 25),
(235, 'Huyện Cẩm Khê', 'Huyện', 25),
(236, 'Huyện Tam Nông', 'Huyện', 25),
(237, 'Huyện Lâm Thao', 'Huyện', 25),
(238, 'Huyện Thanh Sơn', 'Huyện', 25),
(239, 'Huyện Thanh Thuỷ', 'Huyện', 25),
(240, 'Huyện Tân Sơn', 'Huyện', 25),
(243, 'Thành phố Vĩnh Yên', 'Thành phố', 26),
(244, 'Thành phố Phúc Yên', 'Thành phố', 26),
(246, 'Huyện Lập Thạch', 'Huyện', 26),
(247, 'Huyện Tam Dương', 'Huyện', 26),
(248, 'Huyện Tam Đảo', 'Huyện', 26),
(249, 'Huyện Bình Xuyên', 'Huyện', 26),
(250, 'Huyện Mê Linh', 'Huyện', 1),
(251, 'Huyện Yên Lạc', 'Huyện', 26),
(252, 'Huyện Vĩnh Tường', 'Huyện', 26),
(253, 'Huyện Sông Lô', 'Huyện', 26),
(256, 'Thành phố Bắc Ninh', 'Thành phố', 27),
(258, 'Huyện Yên Phong', 'Huyện', 27),
(259, 'Huyện Quế Võ', 'Huyện', 27),
(260, 'Huyện Tiên Du', 'Huyện', 27),
(261, 'Thị xã Từ Sơn', 'Thị xã', 27),
(262, 'Huyện Thuận Thành', 'Huyện', 27),
(263, 'Huyện Gia Bình', 'Huyện', 27),
(264, 'Huyện Lương Tài', 'Huyện', 27),
(268, 'Quận Hà Đông', 'Quận', 1),
(269, 'Thị xã Sơn Tây', 'Thị xã', 1),
(271, 'Huyện Ba Vì', 'Huyện', 1),
(272, 'Huyện Phúc Thọ', 'Huyện', 1),
(273, 'Huyện Đan Phượng', 'Huyện', 1),
(274, 'Huyện Hoài Đức', 'Huyện', 1),
(275, 'Huyện Quốc Oai', 'Huyện', 1),
(276, 'Huyện Thạch Thất', 'Huyện', 1),
(277, 'Huyện Chương Mỹ', 'Huyện', 1),
(278, 'Huyện Thanh Oai', 'Huyện', 1),
(279, 'Huyện Thường Tín', 'Huyện', 1),
(280, 'Huyện Phú Xuyên', 'Huyện', 1),
(281, 'Huyện Ứng Hòa', 'Huyện', 1),
(282, 'Huyện Mỹ Đức', 'Huyện', 1),
(288, 'Thành phố Hải Dương', 'Thành phố', 30),
(290, 'Thành phố Chí Linh', 'Thành phố', 30),
(291, 'Huyện Nam Sách', 'Huyện', 30),
(292, 'Thị xã Kinh Môn', 'Thị xã', 30),
(293, 'Huyện Kim Thành', 'Huyện', 30),
(294, 'Huyện Thanh Hà', 'Huyện', 30),
(295, 'Huyện Cẩm Giàng', 'Huyện', 30),
(296, 'Huyện Bình Giang', 'Huyện', 30),
(297, 'Huyện Gia Lộc', 'Huyện', 30),
(298, 'Huyện Tứ Kỳ', 'Huyện', 30),
(299, 'Huyện Ninh Giang', 'Huyện', 30),
(300, 'Huyện Thanh Miện', 'Huyện', 30),
(303, 'Quận Hồng Bàng', 'Quận', 31),
(304, 'Quận Ngô Quyền', 'Quận', 31),
(305, 'Quận Lê Chân', 'Quận', 31),
(306, 'Quận Hải An', 'Quận', 31),
(307, 'Quận Kiến An', 'Quận', 31),
(308, 'Quận Đồ Sơn', 'Quận', 31),
(309, 'Quận Dương Kinh', 'Quận', 31),
(311, 'Huyện Thuỷ Nguyên', 'Huyện', 31),
(312, 'Huyện An Dương', 'Huyện', 31),
(313, 'Huyện An Lão', 'Huyện', 31),
(314, 'Huyện Kiến Thuỵ', 'Huyện', 31),
(315, 'Huyện Tiên Lãng', 'Huyện', 31),
(316, 'Huyện Vĩnh Bảo', 'Huyện', 31),
(317, 'Huyện Cát Hải', 'Huyện', 31),
(318, 'Huyện Bạch Long Vĩ', 'Huyện', 31),
(323, 'Thành phố Hưng Yên', 'Thành phố', 33),
(325, 'Huyện Văn Lâm', 'Huyện', 33),
(326, 'Huyện Văn Giang', 'Huyện', 33),
(327, 'Huyện Yên Mỹ', 'Huyện', 33),
(328, 'Thị xã Mỹ Hào', 'Thị xã', 33),
(329, 'Huyện Ân Thi', 'Huyện', 33),
(330, 'Huyện Khoái Châu', 'Huyện', 33),
(331, 'Huyện Kim Động', 'Huyện', 33),
(332, 'Huyện Tiên Lữ', 'Huyện', 33),
(333, 'Huyện Phù Cừ', 'Huyện', 33),
(336, 'Thành phố Thái Bình', 'Thành phố', 34),
(338, 'Huyện Quỳnh Phụ', 'Huyện', 34),
(339, 'Huyện Hưng Hà', 'Huyện', 34),
(340, 'Huyện Đông Hưng', 'Huyện', 34),
(341, 'Huyện Thái Thụy', 'Huyện', 34),
(342, 'Huyện Tiền Hải', 'Huyện', 34),
(343, 'Huyện Kiến Xương', 'Huyện', 34),
(344, 'Huyện Vũ Thư', 'Huyện', 34),
(347, 'Thành phố Phủ Lý', 'Thành phố', 35),
(349, 'Thị xã Duy Tiên', 'Thị xã', 35),
(350, 'Huyện Kim Bảng', 'Huyện', 35),
(351, 'Huyện Thanh Liêm', 'Huyện', 35),
(352, 'Huyện Bình Lục', 'Huyện', 35),
(353, 'Huyện Lý Nhân', 'Huyện', 35),
(356, 'Thành phố Nam Định', 'Thành phố', 36),
(358, 'Huyện Mỹ Lộc', 'Huyện', 36),
(359, 'Huyện Vụ Bản', 'Huyện', 36),
(360, 'Huyện Ý Yên', 'Huyện', 36),
(361, 'Huyện Nghĩa Hưng', 'Huyện', 36),
(362, 'Huyện Nam Trực', 'Huyện', 36),
(363, 'Huyện Trực Ninh', 'Huyện', 36),
(364, 'Huyện Xuân Trường', 'Huyện', 36),
(365, 'Huyện Giao Thủy', 'Huyện', 36),
(366, 'Huyện Hải Hậu', 'Huyện', 36),
(369, 'Thành phố Ninh Bình', 'Thành phố', 37),
(370, 'Thành phố Tam Điệp', 'Thành phố', 37),
(372, 'Huyện Nho Quan', 'Huyện', 37),
(373, 'Huyện Gia Viễn', 'Huyện', 37),
(374, 'Huyện Hoa Lư', 'Huyện', 37),
(375, 'Huyện Yên Khánh', 'Huyện', 37),
(376, 'Huyện Kim Sơn', 'Huyện', 37),
(377, 'Huyện Yên Mô', 'Huyện', 37),
(380, 'Thành phố Thanh Hóa', 'Thành phố', 38),
(381, 'Thị xã Bỉm Sơn', 'Thị xã', 38),
(382, 'Thành phố Sầm Sơn', 'Thành phố', 38),
(384, 'Huyện Mường Lát', 'Huyện', 38),
(385, 'Huyện Quan Hóa', 'Huyện', 38),
(386, 'Huyện Bá Thước', 'Huyện', 38),
(387, 'Huyện Quan Sơn', 'Huyện', 38),
(388, 'Huyện Lang Chánh', 'Huyện', 38),
(389, 'Huyện Ngọc Lặc', 'Huyện', 38),
(390, 'Huyện Cẩm Thủy', 'Huyện', 38),
(391, 'Huyện Thạch Thành', 'Huyện', 38),
(392, 'Huyện Hà Trung', 'Huyện', 38),
(393, 'Huyện Vĩnh Lộc', 'Huyện', 38),
(394, 'Huyện Yên Định', 'Huyện', 38),
(395, 'Huyện Thọ Xuân', 'Huyện', 38),
(396, 'Huyện Thường Xuân', 'Huyện', 38),
(397, 'Huyện Triệu Sơn', 'Huyện', 38),
(398, 'Huyện Thiệu Hóa', 'Huyện', 38),
(399, 'Huyện Hoằng Hóa', 'Huyện', 38),
(400, 'Huyện Hậu Lộc', 'Huyện', 38),
(401, 'Huyện Nga Sơn', 'Huyện', 38),
(402, 'Huyện Như Xuân', 'Huyện', 38),
(403, 'Huyện Như Thanh', 'Huyện', 38),
(404, 'Huyện Nông Cống', 'Huyện', 38),
(405, 'Huyện Đông Sơn', 'Huyện', 38),
(406, 'Huyện Quảng Xương', 'Huyện', 38),
(407, 'Thị xã Nghi Sơn', 'Thị xã', 38),
(412, 'Thành phố Vinh', 'Thành phố', 40),
(413, 'Thị xã Cửa Lò', 'Thị xã', 40),
(414, 'Thị xã Thái Hoà', 'Thị xã', 40),
(415, 'Huyện Quế Phong', 'Huyện', 40),
(416, 'Huyện Quỳ Châu', 'Huyện', 40),
(417, 'Huyện Kỳ Sơn', 'Huyện', 40),
(418, 'Huyện Tương Dương', 'Huyện', 40),
(419, 'Huyện Nghĩa Đàn', 'Huyện', 40),
(420, 'Huyện Quỳ Hợp', 'Huyện', 40),
(421, 'Huyện Quỳnh Lưu', 'Huyện', 40),
(422, 'Huyện Con Cuông', 'Huyện', 40),
(423, 'Huyện Tân Kỳ', 'Huyện', 40),
(424, 'Huyện Anh Sơn', 'Huyện', 40),
(425, 'Huyện Diễn Châu', 'Huyện', 40),
(426, 'Huyện Yên Thành', 'Huyện', 40),
(427, 'Huyện Đô Lương', 'Huyện', 40),
(428, 'Huyện Thanh Chương', 'Huyện', 40),
(429, 'Huyện Nghi Lộc', 'Huyện', 40),
(430, 'Huyện Nam Đàn', 'Huyện', 40),
(431, 'Huyện Hưng Nguyên', 'Huyện', 40),
(432, 'Thị xã Hoàng Mai', 'Thị xã', 40),
(436, 'Thành phố Hà Tĩnh', 'Thành phố', 42),
(437, 'Thị xã Hồng Lĩnh', 'Thị xã', 42),
(439, 'Huyện Hương Sơn', 'Huyện', 42),
(440, 'Huyện Đức Thọ', 'Huyện', 42),
(441, 'Huyện Vũ Quang', 'Huyện', 42),
(442, 'Huyện Nghi Xuân', 'Huyện', 42),
(443, 'Huyện Can Lộc', 'Huyện', 42),
(444, 'Huyện Hương Khê', 'Huyện', 42),
(445, 'Huyện Thạch Hà', 'Huyện', 42),
(446, 'Huyện Cẩm Xuyên', 'Huyện', 42),
(447, 'Huyện Kỳ Anh', 'Huyện', 42),
(448, 'Huyện Lộc Hà', 'Huyện', 42),
(449, 'Thị xã Kỳ Anh', 'Thị xã', 42),
(450, 'Thành Phố Đồng Hới', 'Thành phố', 44),
(452, 'Huyện Minh Hóa', 'Huyện', 44),
(453, 'Huyện Tuyên Hóa', 'Huyện', 44),
(454, 'Huyện Quảng Trạch', 'Huyện', 44),
(455, 'Huyện Bố Trạch', 'Huyện', 44),
(456, 'Huyện Quảng Ninh', 'Huyện', 44),
(457, 'Huyện Lệ Thủy', 'Huyện', 44),
(458, 'Thị xã Ba Đồn', 'Thị xã', 44),
(461, 'Thành phố Đông Hà', 'Thành phố', 45),
(462, 'Thị xã Quảng Trị', 'Thị xã', 45),
(464, 'Huyện Vĩnh Linh', 'Huyện', 45),
(465, 'Huyện Hướng Hóa', 'Huyện', 45),
(466, 'Huyện Gio Linh', 'Huyện', 45),
(467, 'Huyện Đa Krông', 'Huyện', 45),
(468, 'Huyện Cam Lộ', 'Huyện', 45),
(469, 'Huyện Triệu Phong', 'Huyện', 45),
(470, 'Huyện Hải Lăng', 'Huyện', 45),
(471, 'Huyện Cồn Cỏ', 'Huyện', 45),
(474, 'Thành phố Huế', 'Thành phố', 46),
(476, 'Huyện Phong Điền', 'Huyện', 46),
(477, 'Huyện Quảng Điền', 'Huyện', 46),
(478, 'Huyện Phú Vang', 'Huyện', 46),
(479, 'Thị xã Hương Thủy', 'Thị xã', 46),
(480, 'Thị xã Hương Trà', 'Thị xã', 46),
(481, 'Huyện A Lưới', 'Huyện', 46),
(482, 'Huyện Phú Lộc', 'Huyện', 46),
(483, 'Huyện Nam Đông', 'Huyện', 46),
(490, 'Quận Liên Chiểu', 'Quận', 48),
(491, 'Quận Thanh Khê', 'Quận', 48),
(492, 'Quận Hải Châu', 'Quận', 48),
(493, 'Quận Sơn Trà', 'Quận', 48),
(494, 'Quận Ngũ Hành Sơn', 'Quận', 48),
(495, 'Quận Cẩm Lệ', 'Quận', 48),
(497, 'Huyện Hòa Vang', 'Huyện', 48),
(498, 'Huyện Hoàng Sa', 'Huyện', 48),
(502, 'Thành phố Tam Kỳ', 'Thành phố', 49),
(503, 'Thành phố Hội An', 'Thành phố', 49),
(504, 'Huyện Tây Giang', 'Huyện', 49),
(505, 'Huyện Đông Giang', 'Huyện', 49),
(506, 'Huyện Đại Lộc', 'Huyện', 49),
(507, 'Thị xã Điện Bàn', 'Thị xã', 49),
(508, 'Huyện Duy Xuyên', 'Huyện', 49),
(509, 'Huyện Quế Sơn', 'Huyện', 49),
(510, 'Huyện Nam Giang', 'Huyện', 49),
(511, 'Huyện Phước Sơn', 'Huyện', 49),
(512, 'Huyện Hiệp Đức', 'Huyện', 49),
(513, 'Huyện Thăng Bình', 'Huyện', 49),
(514, 'Huyện Tiên Phước', 'Huyện', 49),
(515, 'Huyện Bắc Trà My', 'Huyện', 49),
(516, 'Huyện Nam Trà My', 'Huyện', 49),
(517, 'Huyện Núi Thành', 'Huyện', 49),
(518, 'Huyện Phú Ninh', 'Huyện', 49),
(519, 'Huyện Nông Sơn', 'Huyện', 49),
(522, 'Thành phố Quảng Ngãi', 'Thành phố', 51),
(524, 'Huyện Bình Sơn', 'Huyện', 51),
(525, 'Huyện Trà Bồng', 'Huyện', 51),
(527, 'Huyện Sơn Tịnh', 'Huyện', 51),
(528, 'Huyện Tư Nghĩa', 'Huyện', 51),
(529, 'Huyện Sơn Hà', 'Huyện', 51),
(530, 'Huyện Sơn Tây', 'Huyện', 51),
(531, 'Huyện Minh Long', 'Huyện', 51),
(532, 'Huyện Nghĩa Hành', 'Huyện', 51),
(533, 'Huyện Mộ Đức', 'Huyện', 51),
(534, 'Thị xã Đức Phổ', 'Thị xã', 51),
(535, 'Huyện Ba Tơ', 'Huyện', 51),
(536, 'Huyện Lý Sơn', 'Huyện', 51),
(540, 'Thành phố Quy Nhơn', 'Thành phố', 52),
(542, 'Huyện An Lão', 'Huyện', 52),
(543, 'Thị xã Hoài Nhơn', 'Thị xã', 52),
(544, 'Huyện Hoài Ân', 'Huyện', 52),
(545, 'Huyện Phù Mỹ', 'Huyện', 52),
(546, 'Huyện Vĩnh Thạnh', 'Huyện', 52),
(547, 'Huyện Tây Sơn', 'Huyện', 52),
(548, 'Huyện Phù Cát', 'Huyện', 52),
(549, 'Thị xã An Nhơn', 'Thị xã', 52),
(550, 'Huyện Tuy Phước', 'Huyện', 52),
(551, 'Huyện Vân Canh', 'Huyện', 52),
(555, 'Thành phố Tuy Hoà', 'Thành phố', 54),
(557, 'Thị xã Sông Cầu', 'Thị xã', 54),
(558, 'Huyện Đồng Xuân', 'Huyện', 54),
(559, 'Huyện Tuy An', 'Huyện', 54),
(560, 'Huyện Sơn Hòa', 'Huyện', 54),
(561, 'Huyện Sông Hinh', 'Huyện', 54),
(562, 'Huyện Tây Hoà', 'Huyện', 54),
(563, 'Huyện Phú Hoà', 'Huyện', 54),
(564, 'Thị xã Đông Hòa', 'Thị xã', 54),
(568, 'Thành phố Nha Trang', 'Thành phố', 56),
(569, 'Thành phố Cam Ranh', 'Thành phố', 56),
(570, 'Huyện Cam Lâm', 'Huyện', 56),
(571, 'Huyện Vạn Ninh', 'Huyện', 56),
(572, 'Thị xã Ninh Hòa', 'Thị xã', 56),
(573, 'Huyện Khánh Vĩnh', 'Huyện', 56),
(574, 'Huyện Diên Khánh', 'Huyện', 56),
(575, 'Huyện Khánh Sơn', 'Huyện', 56),
(576, 'Huyện Trường Sa', 'Huyện', 56),
(582, 'Thành phố Phan Rang-Tháp Chàm', 'Thành phố', 58),
(584, 'Huyện Bác Ái', 'Huyện', 58),
(585, 'Huyện Ninh Sơn', 'Huyện', 58),
(586, 'Huyện Ninh Hải', 'Huyện', 58),
(587, 'Huyện Ninh Phước', 'Huyện', 58),
(588, 'Huyện Thuận Bắc', 'Huyện', 58),
(589, 'Huyện Thuận Nam', 'Huyện', 58),
(593, 'Thành phố Phan Thiết', 'Thành phố', 60),
(594, 'Thị xã La Gi', 'Thị xã', 60),
(595, 'Huyện Tuy Phong', 'Huyện', 60),
(596, 'Huyện Bắc Bình', 'Huyện', 60),
(597, 'Huyện Hàm Thuận Bắc', 'Huyện', 60),
(598, 'Huyện Hàm Thuận Nam', 'Huyện', 60),
(599, 'Huyện Tánh Linh', 'Huyện', 60),
(600, 'Huyện Đức Linh', 'Huyện', 60),
(601, 'Huyện Hàm Tân', 'Huyện', 60),
(602, 'Huyện Phú Quí', 'Huyện', 60),
(608, 'Thành phố Kon Tum', 'Thành phố', 62),
(610, 'Huyện Đắk Glei', 'Huyện', 62),
(611, 'Huyện Ngọc Hồi', 'Huyện', 62),
(612, 'Huyện Đắk Tô', 'Huyện', 62),
(613, 'Huyện Kon Plông', 'Huyện', 62),
(614, 'Huyện Kon Rẫy', 'Huyện', 62),
(615, 'Huyện Đắk Hà', 'Huyện', 62),
(616, 'Huyện Sa Thầy', 'Huyện', 62),
(617, 'Huyện Tu Mơ Rông', 'Huyện', 62),
(618, 'Huyện Ia H\' Drai', 'Huyện', 62),
(622, 'Thành phố Pleiku', 'Thành phố', 64),
(623, 'Thị xã An Khê', 'Thị xã', 64),
(624, 'Thị xã Ayun Pa', 'Thị xã', 64),
(625, 'Huyện KBang', 'Huyện', 64),
(626, 'Huyện Đăk Đoa', 'Huyện', 64),
(627, 'Huyện Chư Păh', 'Huyện', 64),
(628, 'Huyện Ia Grai', 'Huyện', 64),
(629, 'Huyện Mang Yang', 'Huyện', 64),
(630, 'Huyện Kông Chro', 'Huyện', 64),
(631, 'Huyện Đức Cơ', 'Huyện', 64),
(632, 'Huyện Chư Prông', 'Huyện', 64),
(633, 'Huyện Chư Sê', 'Huyện', 64),
(634, 'Huyện Đăk Pơ', 'Huyện', 64),
(635, 'Huyện Ia Pa', 'Huyện', 64),
(637, 'Huyện Krông Pa', 'Huyện', 64),
(638, 'Huyện Phú Thiện', 'Huyện', 64),
(639, 'Huyện Chư Pưh', 'Huyện', 64),
(643, 'Thành phố Buôn Ma Thuột', 'Thành phố', 66),
(644, 'Thị Xã Buôn Hồ', 'Thị xã', 66),
(645, 'Huyện Ea H\'leo', 'Huyện', 66),
(646, 'Huyện Ea Súp', 'Huyện', 66),
(647, 'Huyện Buôn Đôn', 'Huyện', 66),
(648, 'Huyện Cư M\'gar', 'Huyện', 66),
(649, 'Huyện Krông Búk', 'Huyện', 66),
(650, 'Huyện Krông Năng', 'Huyện', 66),
(651, 'Huyện Ea Kar', 'Huyện', 66),
(652, 'Huyện M\'Đrắk', 'Huyện', 66),
(653, 'Huyện Krông Bông', 'Huyện', 66),
(654, 'Huyện Krông Pắc', 'Huyện', 66),
(655, 'Huyện Krông A Na', 'Huyện', 66),
(656, 'Huyện Lắk', 'Huyện', 66),
(657, 'Huyện Cư Kuin', 'Huyện', 66),
(660, 'Thành phố Gia Nghĩa', 'Thành phố', 67),
(661, 'Huyện Đăk Glong', 'Huyện', 67),
(662, 'Huyện Cư Jút', 'Huyện', 67),
(663, 'Huyện Đắk Mil', 'Huyện', 67),
(664, 'Huyện Krông Nô', 'Huyện', 67),
(665, 'Huyện Đắk Song', 'Huyện', 67),
(666, 'Huyện Đắk R\'Lấp', 'Huyện', 67),
(667, 'Huyện Tuy Đức', 'Huyện', 67),
(672, 'Thành phố Đà Lạt', 'Thành phố', 68),
(673, 'Thành phố Bảo Lộc', 'Thành phố', 68),
(674, 'Huyện Đam Rông', 'Huyện', 68),
(675, 'Huyện Lạc Dương', 'Huyện', 68),
(676, 'Huyện Lâm Hà', 'Huyện', 68),
(677, 'Huyện Đơn Dương', 'Huyện', 68),
(678, 'Huyện Đức Trọng', 'Huyện', 68),
(679, 'Huyện Di Linh', 'Huyện', 68),
(680, 'Huyện Bảo Lâm', 'Huyện', 68),
(681, 'Huyện Đạ Huoai', 'Huyện', 68),
(682, 'Huyện Đạ Tẻh', 'Huyện', 68),
(683, 'Huyện Cát Tiên', 'Huyện', 68),
(688, 'Thị xã Phước Long', 'Thị xã', 70),
(689, 'Thành phố Đồng Xoài', 'Thành phố', 70),
(690, 'Thị xã Bình Long', 'Thị xã', 70),
(691, 'Huyện Bù Gia Mập', 'Huyện', 70),
(692, 'Huyện Lộc Ninh', 'Huyện', 70),
(693, 'Huyện Bù Đốp', 'Huyện', 70),
(694, 'Huyện Hớn Quản', 'Huyện', 70),
(695, 'Huyện Đồng Phú', 'Huyện', 70),
(696, 'Huyện Bù Đăng', 'Huyện', 70),
(697, 'Huyện Chơn Thành', 'Huyện', 70),
(698, 'Huyện Phú Riềng', 'Huyện', 70),
(703, 'Thành phố Tây Ninh', 'Thành phố', 72),
(705, 'Huyện Tân Biên', 'Huyện', 72),
(706, 'Huyện Tân Châu', 'Huyện', 72),
(707, 'Huyện Dương Minh Châu', 'Huyện', 72),
(708, 'Huyện Châu Thành', 'Huyện', 72),
(709, 'Thị xã Hòa Thành', 'Thị xã', 72),
(710, 'Huyện Gò Dầu', 'Huyện', 72),
(711, 'Huyện Bến Cầu', 'Huyện', 72),
(712, 'Thị xã Trảng Bàng', 'Thị xã', 72),
(718, 'Thành phố Thủ Dầu Một', 'Thành phố', 74),
(719, 'Huyện Bàu Bàng', 'Huyện', 74),
(720, 'Huyện Dầu Tiếng', 'Huyện', 74),
(721, 'Thị xã Bến Cát', 'Thị xã', 74),
(722, 'Huyện Phú Giáo', 'Huyện', 74),
(723, 'Thị xã Tân Uyên', 'Thị xã', 74),
(724, 'Thành phố Dĩ An', 'Thành phố', 74),
(725, 'Thành phố Thuận An', 'Thành phố', 74),
(726, 'Huyện Bắc Tân Uyên', 'Huyện', 74),
(731, 'Thành phố Biên Hòa', 'Thành phố', 75),
(732, 'Thành phố Long Khánh', 'Thành phố', 75),
(734, 'Huyện Tân Phú', 'Huyện', 75),
(735, 'Huyện Vĩnh Cửu', 'Huyện', 75),
(736, 'Huyện Định Quán', 'Huyện', 75),
(737, 'Huyện Trảng Bom', 'Huyện', 75),
(738, 'Huyện Thống Nhất', 'Huyện', 75),
(739, 'Huyện Cẩm Mỹ', 'Huyện', 75),
(740, 'Huyện Long Thành', 'Huyện', 75),
(741, 'Huyện Xuân Lộc', 'Huyện', 75),
(742, 'Huyện Nhơn Trạch', 'Huyện', 75),
(747, 'Thành phố Vũng Tàu', 'Thành phố', 77),
(748, 'Thành phố Bà Rịa', 'Thành phố', 77),
(750, 'Huyện Châu Đức', 'Huyện', 77),
(751, 'Huyện Xuyên Mộc', 'Huyện', 77),
(752, 'Huyện Long Điền', 'Huyện', 77),
(753, 'Huyện Đất Đỏ', 'Huyện', 77),
(754, 'Thị xã Phú Mỹ', 'Thị xã', 77),
(755, 'Huyện Côn Đảo', 'Huyện', 77),
(760, 'Quận 1', 'Quận', 79),
(761, 'Quận 12', 'Quận', 79),
(764, 'Quận Gò Vấp', 'Quận', 79),
(765, 'Quận Bình Thạnh', 'Quận', 79),
(766, 'Quận Tân Bình', 'Quận', 79),
(767, 'Quận Tân Phú', 'Quận', 79),
(768, 'Quận Phú Nhuận', 'Quận', 79),
(769, 'Thành phố Thủ Đức', 'Thành phố', 79),
(770, 'Quận 3', 'Quận', 79),
(771, 'Quận 10', 'Quận', 79),
(772, 'Quận 11', 'Quận', 79),
(773, 'Quận 4', 'Quận', 79),
(774, 'Quận 5', 'Quận', 79),
(775, 'Quận 6', 'Quận', 79),
(776, 'Quận 8', 'Quận', 79),
(777, 'Quận Bình Tân', 'Quận', 79),
(778, 'Quận 7', 'Quận', 79),
(783, 'Huyện Củ Chi', 'Huyện', 79),
(784, 'Huyện Hóc Môn', 'Huyện', 79),
(785, 'Huyện Bình Chánh', 'Huyện', 79),
(786, 'Huyện Nhà Bè', 'Huyện', 79),
(787, 'Huyện Cần Giờ', 'Huyện', 79),
(794, 'Thành phố Tân An', 'Thành phố', 80),
(795, 'Thị xã Kiến Tường', 'Thị xã', 80),
(796, 'Huyện Tân Hưng', 'Huyện', 80),
(797, 'Huyện Vĩnh Hưng', 'Huyện', 80),
(798, 'Huyện Mộc Hóa', 'Huyện', 80),
(799, 'Huyện Tân Thạnh', 'Huyện', 80),
(800, 'Huyện Thạnh Hóa', 'Huyện', 80),
(801, 'Huyện Đức Huệ', 'Huyện', 80),
(802, 'Huyện Đức Hòa', 'Huyện', 80),
(803, 'Huyện Bến Lức', 'Huyện', 80),
(804, 'Huyện Thủ Thừa', 'Huyện', 80),
(805, 'Huyện Tân Trụ', 'Huyện', 80),
(806, 'Huyện Cần Đước', 'Huyện', 80),
(807, 'Huyện Cần Giuộc', 'Huyện', 80),
(808, 'Huyện Châu Thành', 'Huyện', 80),
(815, 'Thành phố Mỹ Tho', 'Thành phố', 82),
(816, 'Thị xã Gò Công', 'Thị xã', 82),
(817, 'Thị xã Cai Lậy', 'Thị xã', 82),
(818, 'Huyện Tân Phước', 'Huyện', 82),
(819, 'Huyện Cái Bè', 'Huyện', 82),
(820, 'Huyện Cai Lậy', 'Huyện', 82),
(821, 'Huyện Châu Thành', 'Huyện', 82),
(822, 'Huyện Chợ Gạo', 'Huyện', 82),
(823, 'Huyện Gò Công Tây', 'Huyện', 82),
(824, 'Huyện Gò Công Đông', 'Huyện', 82),
(825, 'Huyện Tân Phú Đông', 'Huyện', 82),
(829, 'Thành phố Bến Tre', 'Thành phố', 83),
(831, 'Huyện Châu Thành', 'Huyện', 83),
(832, 'Huyện Chợ Lách', 'Huyện', 83),
(833, 'Huyện Mỏ Cày Nam', 'Huyện', 83),
(834, 'Huyện Giồng Trôm', 'Huyện', 83),
(835, 'Huyện Bình Đại', 'Huyện', 83),
(836, 'Huyện Ba Tri', 'Huyện', 83),
(837, 'Huyện Thạnh Phú', 'Huyện', 83),
(838, 'Huyện Mỏ Cày Bắc', 'Huyện', 83),
(842, 'Thành phố Trà Vinh', 'Thành phố', 84),
(844, 'Huyện Càng Long', 'Huyện', 84),
(845, 'Huyện Cầu Kè', 'Huyện', 84),
(846, 'Huyện Tiểu Cần', 'Huyện', 84),
(847, 'Huyện Châu Thành', 'Huyện', 84),
(848, 'Huyện Cầu Ngang', 'Huyện', 84),
(849, 'Huyện Trà Cú', 'Huyện', 84),
(850, 'Huyện Duyên Hải', 'Huyện', 84),
(851, 'Thị xã Duyên Hải', 'Thị xã', 84),
(855, 'Thành phố Vĩnh Long', 'Thành phố', 86),
(857, 'Huyện Long Hồ', 'Huyện', 86),
(858, 'Huyện Mang Thít', 'Huyện', 86),
(859, 'Huyện  Vũng Liêm', 'Huyện', 86),
(860, 'Huyện Tam Bình', 'Huyện', 86),
(861, 'Thị xã Bình Minh', 'Thị xã', 86),
(862, 'Huyện Trà Ôn', 'Huyện', 86),
(863, 'Huyện Bình Tân', 'Huyện', 86),
(866, 'Thành phố Cao Lãnh', 'Thành phố', 87),
(867, 'Thành phố Sa Đéc', 'Thành phố', 87),
(868, 'Thành phố Hồng Ngự', 'Thành phố', 87),
(869, 'Huyện Tân Hồng', 'Huyện', 87),
(870, 'Huyện Hồng Ngự', 'Huyện', 87),
(871, 'Huyện Tam Nông', 'Huyện', 87),
(872, 'Huyện Tháp Mười', 'Huyện', 87),
(873, 'Huyện Cao Lãnh', 'Huyện', 87),
(874, 'Huyện Thanh Bình', 'Huyện', 87),
(875, 'Huyện Lấp Vò', 'Huyện', 87),
(876, 'Huyện Lai Vung', 'Huyện', 87),
(877, 'Huyện Châu Thành', 'Huyện', 87),
(883, 'Thành phố Long Xuyên', 'Thành phố', 89),
(884, 'Thành phố Châu Đốc', 'Thành phố', 89),
(886, 'Huyện An Phú', 'Huyện', 89),
(887, 'Thị xã Tân Châu', 'Thị xã', 89),
(888, 'Huyện Phú Tân', 'Huyện', 89),
(889, 'Huyện Châu Phú', 'Huyện', 89),
(890, 'Huyện Tịnh Biên', 'Huyện', 89),
(891, 'Huyện Tri Tôn', 'Huyện', 89),
(892, 'Huyện Châu Thành', 'Huyện', 89),
(893, 'Huyện Chợ Mới', 'Huyện', 89),
(894, 'Huyện Thoại Sơn', 'Huyện', 89),
(899, 'Thành phố Rạch Giá', 'Thành phố', 91),
(900, 'Thành phố Hà Tiên', 'Thành phố', 91),
(902, 'Huyện Kiên Lương', 'Huyện', 91),
(903, 'Huyện Hòn Đất', 'Huyện', 91),
(904, 'Huyện Tân Hiệp', 'Huyện', 91),
(905, 'Huyện Châu Thành', 'Huyện', 91),
(906, 'Huyện Giồng Riềng', 'Huyện', 91),
(907, 'Huyện Gò Quao', 'Huyện', 91),
(908, 'Huyện An Biên', 'Huyện', 91),
(909, 'Huyện An Minh', 'Huyện', 91),
(910, 'Huyện Vĩnh Thuận', 'Huyện', 91),
(911, 'Thành phố Phú Quốc', 'Thành phố', 91),
(912, 'Huyện Kiên Hải', 'Huyện', 91),
(913, 'Huyện U Minh Thượng', 'Huyện', 91),
(914, 'Huyện Giang Thành', 'Huyện', 91),
(916, 'Quận Ninh Kiều', 'Quận', 92),
(917, 'Quận Ô Môn', 'Quận', 92),
(918, 'Quận Bình Thuỷ', 'Quận', 92),
(919, 'Quận Cái Răng', 'Quận', 92),
(923, 'Quận Thốt Nốt', 'Quận', 92),
(924, 'Huyện Vĩnh Thạnh', 'Huyện', 92),
(925, 'Huyện Cờ Đỏ', 'Huyện', 92),
(926, 'Huyện Phong Điền', 'Huyện', 92),
(927, 'Huyện Thới Lai', 'Huyện', 92),
(930, 'Thành phố Vị Thanh', 'Thành phố', 93),
(931, 'Thành phố Ngã Bảy', 'Thành phố', 93),
(932, 'Huyện Châu Thành A', 'Huyện', 93),
(933, 'Huyện Châu Thành', 'Huyện', 93),
(934, 'Huyện Phụng Hiệp', 'Huyện', 93),
(935, 'Huyện Vị Thuỷ', 'Huyện', 93),
(936, 'Huyện Long Mỹ', 'Huyện', 93),
(937, 'Thị xã Long Mỹ', 'Thị xã', 93),
(941, 'Thành phố Sóc Trăng', 'Thành phố', 94),
(942, 'Huyện Châu Thành', 'Huyện', 94),
(943, 'Huyện Kế Sách', 'Huyện', 94),
(944, 'Huyện Mỹ Tú', 'Huyện', 94),
(945, 'Huyện Cù Lao Dung', 'Huyện', 94),
(946, 'Huyện Long Phú', 'Huyện', 94),
(947, 'Huyện Mỹ Xuyên', 'Huyện', 94),
(948, 'Thị xã Ngã Năm', 'Thị xã', 94),
(949, 'Huyện Thạnh Trị', 'Huyện', 94),
(950, 'Thị xã Vĩnh Châu', 'Thị xã', 94),
(951, 'Huyện Trần Đề', 'Huyện', 94),
(954, 'Thành phố Bạc Liêu', 'Thành phố', 95),
(956, 'Huyện Hồng Dân', 'Huyện', 95),
(957, 'Huyện Phước Long', 'Huyện', 95),
(958, 'Huyện Vĩnh Lợi', 'Huyện', 95),
(959, 'Thị xã Giá Rai', 'Thị xã', 95),
(960, 'Huyện Đông Hải', 'Huyện', 95),
(961, 'Huyện Hoà Bình', 'Huyện', 95),
(964, 'Thành phố Cà Mau', 'Thành phố', 96),
(966, 'Huyện U Minh', 'Huyện', 96),
(967, 'Huyện Thới Bình', 'Huyện', 96),
(968, 'Huyện Trần Văn Thời', 'Huyện', 96),
(969, 'Huyện Cái Nước', 'Huyện', 96),
(970, 'Huyện Đầm Dơi', 'Huyện', 96),
(971, 'Huyện Năm Căn', 'Huyện', 96),
(972, 'Huyện Phú Tân', 'Huyện', 96),
(973, 'Huyện Ngọc Hiển', 'Huyện', 96);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `clothes`
--

CREATE TABLE `clothes` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `material` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `housenumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `province_id` bigint UNSIGNED NOT NULL,
  `city_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `housenumber`, `email`, `password`, `token`, `status`, `created_at`, `updated_at`, `province_id`, `city_id`) VALUES
(1, 'Nguyễn Thành Đạt', '0792288731', '32/29 Phú Xương, phường Vĩnh Hải', 'dat2905200278@gmail.com', '$2y$10$MIEck0hOCHoqw7jx8W8nbO0ms2GjJJt7qGXlTN.1oZvViOCZQFQPi', '', 1, '2024-04-20 04:49:40', '2024-05-22 14:22:27', 15, 568),
(2, 'Nguyễn Tiết Nghĩa', '0977942997', 'thôn Phụng Tường 1, xã Hoà Trị, huyện Phú Hoà, tỉnh Phú Yên', '10a1.ntdat@gmail.com', '$2y$10$mFluXn0C1NHSjm8vsYFX2O9U7gumWkHyiimsY.fIX.s3imoip1ZUa', NULL, 1, '2024-05-16 15:12:41', '2024-05-16 15:14:04', 54, 563);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `devvn_quanhuyen`
--

CREATE TABLE `devvn_quanhuyen` (
  `maqh` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `type` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `matp` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `url`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Trang chủ', 0, '/', 1, '2024-04-05 11:15:31', '2024-04-05 11:16:30'),
(2, 'Sản phẩm', 0, 'product', 1, '2024-04-05 11:15:54', '2024-04-05 11:15:54'),
(3, 'Đơn hàng', 0, 'order', 1, '2024-04-05 11:19:19', '2024-04-20 06:13:49'),
(5, 'Liên hệ', 0, 'contact', 1, '2024-04-05 11:21:27', '2024-04-20 06:14:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `messages`
--

CREATE TABLE `messages` (
  `id` bigint UNSIGNED NOT NULL,
  `sender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recipient` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `messages`
--

INSERT INTO `messages` (`id`, `sender`, `recipient`, `message`, `read`, `created_at`, `updated_at`) VALUES
(1, '1', 'admin', 'alo', 0, '2024-04-20 06:14:50', '2024-05-02 12:44:07'),
(2, '1', 'admin', 'alo shop', 0, '2024-05-02 12:44:47', '2024-05-02 12:45:34'),
(3, 'admin', '1', 'mình nghe ạ', 0, '2024-05-02 12:45:38', '2024-05-02 12:45:38'),
(4, '1', 'admin', 'mình caanf sự trợ giúp', 0, '2024-05-02 12:46:15', '2024-05-02 12:46:22'),
(5, 'admin', '1', 'bên mình có thể giúp gì cho bạn', 0, '2024-05-02 12:47:42', '2024-05-02 12:47:42'),
(6, '1', 'admin', 'mình muốn đổi sản phẩm', 0, '2024-05-02 15:42:54', '2024-05-02 15:42:56'),
(7, 'admin', '1', 'vâng ạ sản phẩm bên mình mua vào ngày nào vậy ạ', 0, '2024-05-02 15:43:11', '2024-05-02 15:43:11'),
(8, '1', 'admin', 'hello', 0, '2024-05-11 01:03:19', '2024-05-11 01:03:22'),
(9, 'admin', '1', 'xin chào bạn cần giúp đỡ gì ạ', 0, '2024-05-11 01:03:35', '2024-05-11 01:03:35'),
(10, '1', 'admin', 'hello', 0, '2024-05-13 13:47:06', '2024-05-13 13:47:27'),
(11, '1', 'admin', 'hello', 0, '2024-05-13 13:52:47', '2024-05-13 13:52:49'),
(12, 'admin', '1', 'xin chào', 0, '2024-05-13 13:53:05', '2024-05-13 13:53:05'),
(13, 'admin', '1', 'mình có thể giúp gì cho bạn', 0, '2024-05-13 13:53:22', '2024-05-13 13:53:22'),
(14, '1', 'admin', 'xin chào', 0, '2024-05-22 15:20:27', '2024-05-22 17:17:22'),
(15, '1', 'admin', 'tôi muốn hỗ trợ về cách sử dụng sản phẩm', 0, '2024-05-22 15:21:00', '2024-05-22 17:17:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2024_02_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_03_17_074937_create_provinces_table', 1),
(3, '2023_03_17_075011_create_cities_table', 1),
(4, '2023_03_17_075118_create_user_types_table', 1),
(5, '2023_03_17_075119_create_users_table', 1),
(6, '2023_03_17_075221_create_trademarks_table', 1),
(7, '2023_03_17_075238_create_promotions_table', 1),
(8, '2023_03_17_075253_create_product_types_table', 1),
(9, '2023_03_17_075306_create_products_table', 1),
(10, '2023_03_17_130549_create_menus_table', 1),
(11, '2023_03_24_104100_create_sliders_table', 1),
(12, '2023_04_27_155112_create_customers_table', 1),
(13, '2023_04_29_113826_add_gmail_verification_token_to_customers', 1),
(14, '2023_04_29_115132_add_province_city_to_customers', 1),
(15, '2023_05_04_102127_create_statuses_table', 1),
(16, '2023_05_06_160521_create_orders_table', 1),
(17, '2023_05_06_160535_create_orderdetails_table', 1),
(18, '2023_05_17_162716_create_messages_table', 1),
(19, '2023_05_31_184824_create_sales_table', 1),
(20, '2023_05_31_185306_add_sale_to_orders', 1),
(23, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(24, '2024_05_15_222253_create_suppliers_table', 3),
(25, '2024_05_15_222011_add_supplier_id_to_products_table', 4),
(26, '2024_05_16_201337_create_milk_table', 5),
(27, '2024_05_16_201609_create_clothes_table', 6),
(28, '2024_05_22_221544_add_read_column_to_messages_table', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `milk`
--

CREATE TABLE `milk` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `manufacture_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `volume` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `range_age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL,
  `price` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `order_id`, `product_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 4, 100, 1, 119000, '2024-04-21 04:15:21', '2024-04-21 04:15:21'),
(2, 5, 100, 1, 107100, '2024-04-21 07:54:56', '2024-04-21 07:54:56'),
(3, 6, 95, 2, 370000, '2024-05-02 15:36:13', '2024-05-02 15:36:13'),
(4, 7, 92, 2, 199000, '2024-05-02 15:39:49', '2024-05-02 15:39:49'),
(5, 7, 97, 1, 117000, '2024-05-02 15:39:49', '2024-05-02 15:39:49'),
(6, 8, 6, 1, 1636000, '2024-05-06 02:04:02', '2024-05-06 02:04:02'),
(7, 9, 99, 1, 283500, '2024-05-10 16:32:44', '2024-05-10 16:32:44'),
(9, 11, 98, 1, 375250, '2024-05-10 16:42:53', '2024-05-10 16:42:53'),
(13, 17, 100, 1, 107100, '2024-05-11 00:59:53', '2024-05-11 00:59:53'),
(14, 18, 92, 1, 199000, '2024-05-13 13:27:32', '2024-05-13 13:27:32'),
(15, 19, 98, 1, 375250, '2024-05-13 13:29:35', '2024-05-13 13:29:35'),
(16, 20, 100, 1, 107100, '2024-05-13 13:42:42', '2024-05-13 13:42:42'),
(20, 24, 100, 1, 107100, '2024-05-22 14:38:09', '2024-05-22 14:38:09'),
(21, 25, 101, 1, 500000, '2024-05-29 01:19:24', '2024-05-29 01:19:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint UNSIGNED NOT NULL,
  `status_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sale_id` bigint UNSIGNED DEFAULT NULL,
  `userset_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `status_id`, `user_id`, `created_at`, `updated_at`, `sale_id`, `userset_id`) VALUES
(4, 1, 4, NULL, '2024-04-21 04:15:21', '2024-04-21 05:15:58', NULL, 1),
(5, 1, 4, 3, '2024-04-21 07:54:56', '2024-05-02 15:37:56', NULL, NULL),
(6, 1, 4, 3, '2024-05-02 15:36:13', '2024-05-02 15:38:09', NULL, 1),
(7, 1, 5, 3, '2024-05-02 15:39:49', '2024-05-02 15:40:49', NULL, 1),
(8, 1, 2, NULL, '2024-05-06 02:04:02', '2024-05-06 02:04:51', NULL, 1),
(9, 1, 1, NULL, '2024-05-10 16:32:44', '2024-05-10 16:32:44', NULL, NULL),
(11, 1, 5, NULL, '2024-05-10 16:42:53', '2024-05-10 17:06:18', NULL, NULL),
(17, 1, 2, NULL, '2024-05-11 00:59:53', '2024-05-11 01:00:20', NULL, 1),
(18, 1, 1, NULL, '2024-05-13 13:27:32', '2024-05-13 13:27:32', NULL, NULL),
(19, 1, 1, NULL, '2024-05-13 13:29:35', '2024-05-13 13:29:35', NULL, NULL),
(20, 1, 2, NULL, '2024-05-13 13:42:42', '2024-05-16 15:01:47', NULL, 1),
(24, 1, 1, NULL, '2024-05-22 14:38:09', '2024-05-22 14:38:09', NULL, NULL),
(25, 1, 1, NULL, '2024-05-29 01:19:24', '2024-05-29 01:19:24', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `producttype_id` bigint UNSIGNED NOT NULL,
  `trademark_id` bigint UNSIGNED NOT NULL,
  `supplier_id` bigint UNSIGNED DEFAULT NULL,
  `promotion_id` bigint UNSIGNED NOT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `price` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `producttype_id`, `trademark_id`, `supplier_id`, `promotion_id`, `thumb`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Combo 2 Sữa Abbott Grow 4 1,7kg (trên 2 tuổi)', 'dsdasd', '<p><strong>Th&agrave;nh phần</strong></p>\r\n\r\n<p>Sữa to&agrave;n ph&acirc;̀n b&ocirc;̉ sung lecithin va sữa t&aacute;ch kem (58,3%), mật bắp, sucrose, lactose, KHO&Aacute;NG CH&Acirc;́T (canxi carbonat, sắt sulfat, kẽm sulfat, manga sulfat, đ&ocirc;̀ng sulfat), VITAMIN (acid ascorbic, cholin bitartrat, vitamin E acetat, niacinamid, vitamin D3, vitamin A acetat pyridoxin hydroclorid, canxi pantothenat, thiamin hydroclorid, vitamin K1, riboflavin, acid folic,d-biotin), hương vani t&ocirc;̉ng hợp, d&acirc;̀u c&aacute;(ngu&ocirc;̀n cung c&acirc;́p DHA), taurin.﻿﻿</p>\r\n\r\n<p><strong>Tỷ lệ pha gợi &yacute;</strong></p>\r\n\r\n<p>Cho 3 muỗng gạt ngang (hay 36 gram) bột Abbott GROW 4 pha trong 175ml nước. Mỗi ng&agrave;y cho b&eacute; uống 3 lần.&nbsp;</p>', 1, 1, NULL, 1, '/storage/uploads/2024/04/05/sua-abbott-grow-4-1-7kg-tren-2-tuoi-huong-vani.png', 2, 1150000, '2024-04-05 11:59:17', '2024-04-05 11:59:17'),
(2, 'Combo 3 Sữa Abbott Grow 4 1,7kg (trên 2 tuổi) hương Vani', 'Abbott Grow 4 là thức uống dinh dưỡng dành cho bé từ 2 tuổi với hệ dưỡng chất G-Power giàu các dưỡng chất và Protein chất lượng cao, hỗ trợ cho sự phát triển toàn diện của bé.', '<p><strong>Ưu điểm nổi bật</strong></p>\r\n\r\n<p>. Hỗ trợ b&eacute; ph&aacute;t triển xương v&agrave; chiều cao nhờ được bổ sung canxi, vitamin D với tỷ lệ canxi/phốt pho th&iacute;ch hợp theo khuyến c&aacute;o của Ch&acirc;u v&agrave; Hoa Kỳ v&agrave; sự c&oacute; mặt của hỗn hợp chất b&eacute;o thực vật kh&ocirc;ng chứa dầu cọ;<br />\r\n. Hỗ trợ b&eacute; tăng c&acirc;n, tăng trưởng tốt v&agrave; ph&aacute;t triển khoẻ mạnh nhờ c&oacute; Protein chất lượng cao (đặc biệt gi&agrave;u lysin);<br />\r\n. Gi&uacute;p trẻ ph&aacute;t triển tr&iacute; n&atilde;o v&agrave; thị gi&aacute;c nhờ c&aacute;c th&agrave;nh phần DHA, taurin, c&aacute;c acid b&eacute;o omega 3, 6 &amp; 9;<br />\r\n. GOS gi&uacute;p b&eacute; ti&ecirc;u ho&aacute; tốt. Ngo&agrave;i ra, sức đề kh&aacute;ng của b&eacute; cũng được tăng cường nhờ c&aacute;c chất chống oxy ho&aacute; như beta-caroten, vitamin A, C &amp; E.&nbsp;</p>\r\n\r\n<p><strong>Tỷ lệ pha gợi &yacute;</strong></p>\r\n\r\n<p>Cho 3 muỗng gạt ngang (hay 36 gram) bột Abbott GROW 4 pha trong 175ml nước. Mỗi ng&agrave;y cho b&eacute; uống 3 lần.&nbsp;</p>\r\n\r\n<p><img src=\"https://cdn1.concung.com/storage/2022/09/1663816791.png\" /></p>\r\n\r\n<p><strong>Th&agrave;nh phần</strong></p>\r\n\r\n<p>Sữa to&agrave;n ph&acirc;̀n b&ocirc;̉ sung lecithin va sữa t&aacute;ch kem (58,3%), mật bắp, sucrose, lactose, KHO&Aacute;NG CH&Acirc;́T (canxi carbonat, sắt sulfat, kẽm sulfat, manga sulfat, đ&ocirc;̀ng sulfat), VITAMIN (acid ascorbic, cholin bitartrat, vitamin E acetat, niacinamid, vitamin D3, vitamin A acetat pyridoxin hydroclorid, canxi pantothenat, thiamin hydroclorid, vitamin K1, riboflavin, acid folic,d-biotin), hương vani t&ocirc;̉ng hợp, d&acirc;̀u c&aacute;(ngu&ocirc;̀n cung c&acirc;́p DHA), taurin.﻿﻿</p>', 1, 1, NULL, 1, '/storage/uploads/2024/04/15/sua-abbott-grow-4-1-7kg-tren-2-tuoi-huong-vani3.png', 3, 1725000, '2024-04-15 02:09:22', '2024-04-15 02:09:22'),
(3, 'Sữa Abbott Grow 4 900g (trên 2 tuổi)', 'Abbott Grow 4 là thức uống dinh dưỡng dành cho bé từ 2 tuổi với hệ dưỡng chất G-Power giàu các dưỡng chất và Protein chất lượng cao, hỗ trợ cho sự phát triển toàn diện của bé.', '<p><strong>Ưu điểm nổi bật</strong></p>\r\n\r\n<p>. Hỗ trợ b&eacute; ph&aacute;t triển xương v&agrave; chiều cao nhờ được bổ sung canxi, vitamin D với tỷ lệ canxi/phốt pho th&iacute;ch hợp theo khuyến c&aacute;o của Ch&acirc;u v&agrave; Hoa Kỳ v&agrave; sự c&oacute; mặt của hỗn hợp chất b&eacute;o thực vật kh&ocirc;ng chứa dầu cọ;</p>\r\n\r\n<p>. Hỗ trợ b&eacute; tăng c&acirc;n, tăng trưởng tốt v&agrave; ph&aacute;t triển khoẻ mạnh nhờ c&oacute; Protein chất lượng cao (đặc biệt gi&agrave;u lysin);</p>\r\n\r\n<p>. Gi&uacute;p trẻ ph&aacute;t triển tr&iacute; n&atilde;o v&agrave; thị gi&aacute;c nhờ c&aacute;c th&agrave;nh phần DHA, taurin, c&aacute;c acid b&eacute;o omega 3, 6 &amp; 9;</p>\r\n\r\n<p>. GOS gi&uacute;p b&eacute; ti&ecirc;u ho&aacute; tốt. Ngo&agrave;i ra, sức đề kh&aacute;ng của b&eacute; cũng được tăng cường nhờ c&aacute;c chất chống oxy ho&aacute; như beta-caroten, vitamin A, C &amp; E.&nbsp;</p>\r\n\r\n<p><strong>Tỷ lệ pha gợi &yacute;</strong></p>\r\n\r\n<p>Cho 3 muỗng gạt ngang (hay 36 gram) bột Abbott GROW 4 pha trong 175ml nước. Mỗi ng&agrave;y cho b&eacute; uống 3 lần.&nbsp;</p>\r\n\r\n<p><img src=\"https://cdn1.concung.com/storage/2022/09/1663816791.png\" /></p>\r\n\r\n<p><strong>Th&agrave;nh phần</strong></p>\r\n\r\n<p>Sữa to&agrave;n ph&acirc;̀n b&ocirc;̉ sung lecithin va sữa t&aacute;ch kem (58,3%), mật bắp, sucrose, lactose, KHO&Aacute;NG CH&Acirc;́T (canxi carbonat, sắt sulfat, kẽm sulfat, manga sulfat, đ&ocirc;̀ng sulfat), VITAMIN (acid ascorbic, cholin bitartrat, vitamin E acetat, niacinamid, vitamin D3, vitamin A acetat pyridoxin hydroclorid, canxi pantothenat, thiamin hydroclorid, vitamin K1, riboflavin, acid folic,d-biotin), hương vani t&ocirc;̉ng hợp, d&acirc;̀u c&aacute;(ngu&ocirc;̀n cung c&acirc;́p DHA), taurin.</p>', 1, 1, NULL, 1, '/storage/uploads/2024/04/15/abbott-grow-4-huong-vani-900g.jpg', 1, 355000, '2024-04-15 02:11:55', '2024-04-15 02:11:55'),
(4, 'Combo 4 lon Sữa Abbott Grow 4 900g (trên 2 tuổi)', 'Abbott Grow 4 là thức uống dinh dưỡng dành cho bé từ 2 tuổi với hệ dưỡng chất G-Power giàu các dưỡng chât và protein chất lượng cao, hỗ trợ cho sự phát triển toàn diện của bé.', '<p><strong>Ưu điểm vượt trội của&nbsp;<a href=\"https://cdn1.concung.com/sua-bot/abbott-grow-4-huong-vani-900g-46059.html\">Abbott Grow 4</a>:</strong></p>\r\n\r\n<p>1. Hỗ trợ b&eacute; ph&aacute;t triển xương v&agrave; chiều cao nhờ được bổ sung canxi, vitamin D với tỷ lệ canxi/phốt pho th&iacute;ch hợp theo khuyến c&aacute;o của Ch&acirc;u v&agrave; Hoa Kỳ v&agrave; sự c&oacute; mặt của hỗn hợp chất b&eacute;o thực vật kh&ocirc;ng chứa dầu cọ.<br />\r\n2. Hỗ trợ b&eacute; tăng c&acirc;n, tăng trưởng tốt v&agrave; ph&aacute;t triển khoẻ mạnh nhờ c&oacute; Protein chất lượng cao (đặc biệt gi&agrave;u lysin).&nbsp;<br />\r\n3. Gi&uacute;p trẻ ph&aacute;t triển tr&iacute; n&atilde;o v&agrave; thị gi&aacute;c nhờ c&aacute;c th&agrave;nh phần DHA, taurin, c&aacute;c acid b&eacute;o omega 3, 6 &amp; 9.<br />\r\n4. GOS gi&uacute;p b&eacute; ti&ecirc;u ho&aacute; tốt. Ngo&agrave;i ra, sức đề kh&aacute;ng của b&eacute; cũng được tăng cường nhờ c&aacute;c chất chống oxy ho&aacute; như beta-caroten, vitamin A, C &amp; E.</p>\r\n\r\n<p><img alt=\"grow_04_Inforgraphic_47.04.2020_02\" src=\"https://cdn1.concung.com/storage/images/c91f21502b635274763320f404dc3cef.png\" /></p>\r\n\r\n<p><strong>Hướng dẫn c&aacute;ch pha:&nbsp;</strong></p>\r\n\r\n<p>Rửa sạch tay trước khi pha. Để c&oacute; 200ml Abbott GROW 4 cho 175ml nước ch&iacute;n để nguội v&agrave;o ly (khoảng 37&deg;C), từ từ cho v&agrave;o ly 3 muỗng gạt ngang (hay 36g) bột (muỗng c&oacute; sẵn trong hộp), khuấy cho tan đều. Uống ngay sau khi pha. Nếu kh&ocirc;ng uống ngay, n&ecirc;n đậy k&iacute;n cho v&agrave;o tủ lạnh ở 2&deg; - 4&deg;C v&agrave; d&ugrave;ng trong v&ograve;ng 24 giờ...</p>\r\n\r\n<p><img alt=\"grow_04_Inforgraphic_47.04.2020_03\" src=\"https://cdn1.concung.com/storage/images/7d5510a0ba6c0d0a647b9f9796e10795.png\" /></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Hướng dẫn c&aacute;ch bảo quản:</strong></p>\r\n\r\n<p style=\"text-align:justify\">Bảo quản hộp chưa sử dụng ở nhiệt độ ph&ograve;ng. Tr&aacute;nh &aacute;nh nắng. Khi đ&atilde; mở nắp phải được sử dụng trong v&ograve;ng 3 tuần. Đậy nắp v&agrave; bảo quản nơi kh&ocirc; m&aacute;t (kh&ocirc;ng cất trong tủ lạnh).</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"grow_04_Inforgraphic_47.04.2020_04\" src=\"https://cdn1.concung.com/storage/images/2bb0f1e630948c0a0eba50372c9d848e.png\" /></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Th&ocirc;ng tin về sản phẩm</strong></p>\r\n\r\n<ul>\r\n	<li>Định lượng (Trọng lượng): 900g</li>\r\n	<li>Thời hạn sử dụng: 36 th&aacute;ng</li>\r\n	<li>Th&agrave;nh phần: Sữa to&agrave;n ph&acirc;̀n b&ocirc;̉ sung lecithin va sữa t&aacute;ch kem (58,3%), mật bắp, sucrose, lactose, KHO&Aacute;NG CH&Acirc;́T (canxi carbonat, sắt sulfat, kẽm sulfat, manga sulfat, đ&ocirc;̀ng sulfat), VITAMIN (acid ascorbic, cholin bitartrat, vitamin E acetat, niacinamid, vitamin D3, vitamin A acetat pyridoxin hydroclorid, canxi pantothenat, thiamin hydroclorid, vitamin K1, riboflavin, acid folic,d-biotin), hương vani t&ocirc;̉ng hợp, d&acirc;̀u c&aacute;(ngu&ocirc;̀n cung c&acirc;́p DHA), taurin..</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\">﻿</span></span></span></span></p>', 1, 1, NULL, 1, '/storage/uploads/2024/04/15/combo-4-lon-abbott-grow-4-huong-vani-900g.jpg', 4, 1340000, '2024-04-15 02:15:58', '2024-04-15 02:15:58'),
(5, 'Sữa Abbott Grow 3 900g (1-2 tuổi)', 'Abbott Grow 3 với hệ dưỡng chất G-Power giàu các dưỡng chất và protein chất lượng cao, đủ 9 acid amin thiết yếu, giúp trẻ 1-2 tuổi phát triển tốt về thể chất và trí não.', '<p><strong>Ưu điểm nổi bật<br />\r\n.</strong>&nbsp;Gi&agrave;u canxi, vitamin D với tỷ lệ canxi/phốt pho th&iacute;ch hợp, hỗn hợp chất b&eacute;o thực vật kh&ocirc;ng chứa dầu cọ gi&uacute;p hấp thu canxi, hỗ trợ sự ph&aacute;t triển xương v&agrave; chiều cao;<br />\r\n<strong>.&nbsp;</strong>Chứa DHA, taurin, cholin, c&aacute;c acid b&eacute;o omega-3, 6&amp;9 gi&uacute;p ph&aacute;t triển tr&iacute; n&atilde;o v&agrave; nhận thư;<br />\r\n<strong>.&nbsp;</strong>Protein chất lượng cao (đặc biệt gi&agrave;u lysin) cho trẻ tăng trưởng tốt, hỗ trợ tăng c&acirc;n v&agrave; ph&aacute;t triển khỏe mạnh;<br />\r\n<strong>.&nbsp;</strong>FOS gi&uacute;p tăng cường sức khỏe ti&ecirc;u h&oacute;a;<br />\r\n<strong>.&nbsp;</strong>C&aacute;c chất chống oxy h&oacute;a như vitamin A, C &amp; E gi&uacute;p tăng cường sức đề kh&aacute;ng.<br />\r\n<strong>Th&agrave;nh phần</strong><br />\r\nSữa bột t&aacute;ch b&eacute;o, tinh bột bắp thủy ph&acirc;n, sucrose, DẦU THỰC VẬT (chứa: dầu hướng dương gi&agrave;u oleic, dầu đậu n&agrave;nh,dầu dừa), đạm whey c&ocirc; đặc, lactose, KHO&Aacute;NG CHẤT (canxi carbonat, dikali hydrophosphat, tricanxi phosphat, kali citrat, natri citrat, magie clorid, natri colrid, sắt sulfat, kẽm sulfat, mangan sulfat, đồng sulfat, kali iodid, natri selenat), fructo-oligosacharid (FOS), hương liệu vani tổng hợp, VITAMIN (acid ascorbic, dl-&alpha;-tocophery acetat, niacinamid, canxi d-pantothenat, Vitamin A palmitat, thiamin hydroclorid, pyridoxin hydroclorid, riboflavin, acid folic, biotin, phylloquinon, Vitamin D, cyanocobalamin), chất nhũ h&oacute;a lecithin đậu n&agrave;nh, cholin clorid, acid docosahexaenoic (DHA), laurin, chất chống oxy h&oacute;a ascorbyl palmitat, chất chống oxy h&oacute;a hỗn hợp tocopherol.</p>', 1, 1, NULL, 1, '/storage/uploads/2024/04/15/abbott-grow-3-g-power-1-2-tuoi-900g-new.png', 1, 299000, '2024-04-15 02:22:06', '2024-04-15 02:22:06'),
(6, 'Combo 4 lon Sữa Abbott Grow Gold 3+ 900g hương Vani (3-6 tuổi)', 'Abbott Grow Gold 3+ là thức uống dinh dưỡng dành cho bé từ 3 đến 6 tuổi với hệ dưỡng chất G-Power giàu các dưỡng chât và protein chất lượng cao, hỗ trợ cho sự phát triển toàn diện của bé. Đặc biệt, sản phẩm thêm 20% canxi cho bé cao hơn, thông minh hơn.', '<p><strong>Ưu điểm vượt trội của&nbsp;<strong><strong><a href=\"https://cdn1.concung.com/sua-bot/abbott-grow-gold-3-huong-vani-900g-40424.html\">Abbott&nbsp;Grow Gold 3+</a>:</strong></strong></strong></p>\r\n\r\n<p>1. Hỗ trợ b&eacute; ph&aacute;t triển xương v&agrave; chiều cao nhờ được bổ sung canxi, vitamin D với tỷ lệ canxi/phốt pho th&iacute;ch hợp theo khuyến c&aacute;o của Ch&acirc;u v&agrave; Hoa Kỳ v&agrave; sự c&oacute; mặt của hỗn hợp chất b&eacute;o thực vật kh&ocirc;ng chứa dầu cọ.</p>\r\n\r\n<p>2. Hỗ trợ b&eacute; tăng c&acirc;n, tăng trưởng tốt v&agrave; ph&aacute;t triển khoẻ mạnh nhờ c&oacute; Protein chất lượng cao (đặc biệt gi&agrave;u lysin).&nbsp;</p>\r\n\r\n<p>&nbsp;3. Gi&uacute;p trẻ ph&aacute;t triển tr&iacute; n&atilde;o v&agrave; thị gi&aacute;c nhờ c&aacute;c th&agrave;nh phần DHA, taurin, c&aacute;c acid b&eacute;o omega 3, 6 &amp; 9.</p>\r\n\r\n<p>4. GOS gi&uacute;p b&eacute; ti&ecirc;u ho&aacute; tốt. Ngo&agrave;i ra, sức đề kh&aacute;ng của b&eacute; cũng được tăng cường nhờ c&aacute;c chất chống oxy ho&aacute; như beta-caroten, vitamin A, C &amp; E.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Hướng dẫn c&aacute;ch pha:&nbsp;</strong></p>\r\n\r\n<p style=\"text-align:justify\">Rửa sạch tay trước khi pha. Đầu ti&ecirc;n cho 175 ml nước ch&iacute;n để nguội v&agrave;o ly (ở nhiệt độ khoảng 37&deg;C), sau đ&oacute; sử dụng muỗng c&oacute; sẵn trong hộp lấy v&agrave; cho từ từ 3 muỗng gạt ngang (36 g) bột Abbott GROW GOLD 3+ v&agrave;o ly. Khuấy cho tan đều đ&atilde; c&oacute; được một ly sữa 200ml. Nhớ uống sữa ngay sau khi pha.</p>\r\n\r\n<p style=\"text-align:justify\">Nếu chưa uống ngay, h&atilde;y đậy k&iacute;n v&agrave; cho v&agrave;o tủ lạnh, c&oacute; thể d&ugrave;ng trong v&ograve;ng 24 giờ. Khi pha đ&uacute;ng theo hướng dẫn, hộp 400 g bột c&oacute; thể pha được khoảng 11 ly, mỗi ly 200 ml, hộp 900 g bột c&oacute; thể pha được khoảng 25 ly, mỗi ly 200 ml..</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>', 1, 1, NULL, 1, '/storage/uploads/2024/04/15/combo-4-lon-abbott-grow-gold-3-huong-vani-900g.jpg', 3, 1636000, '2024-04-15 02:30:38', '2024-05-06 02:04:02'),
(7, 'Combo 2 Sữa Enfagrow A+ số 4 1700g (2-6 tuổi) 2Flex', 'Sữa bột Enfagrow A+ NeuroPro 4 là sản phẩm dinh dưỡng giúp con hoàn thiện tư duy cảm xúc và phát triển trí não vượt trội. Ngoài ra, sản phẩm còn chứa các chất dinh dưỡng thiết yếu, giúp con phát triển thể chất khỏe mạnh.', '<p>ƯU ĐIỂM NỔI BẬT:</p>\r\n\r\n<ul>\r\n	<li>L&agrave; sản phẩm dinh dưỡng c&ocirc;ng thức cho trẻ từ 2-6 tuổi.</li>\r\n	<li>Đẩy nhanh sự ph&aacute;t triển nhận thức ở trẻ về tư duy v&agrave; t&igrave;nh cảm c&ugrave;ng với 2&rsquo;-FL HMO, hệ chất xơ FOS gi&uacute;p hỗ trợ hệ ti&ecirc;u h&oacute;a v&agrave; miễn dịch.</li>\r\n	<li>Kh&ocirc;ng đường sucrose cho vị thanh m&aacute;t.</li>\r\n	<li>Cam kết sản phẩm sữa bột Enfa ch&iacute;nh h&atilde;ng.</li>\r\n</ul>\r\n\r\n<p><strong><span style=\"color:#000000\">TH&Agrave;NH PHẦN:</span></strong></p>\r\n\r\n<p>Sữa bột Enfagrow A+ NeuroPro 4 Vị thanh m&aacute;t với dưỡng chất DHA &amp; MFGM c&oacute; th&agrave;nh phần gồm bột bơ sữa (nguồn của MFGM), sir&ocirc; mật bắp, sữa bột nguy&ecirc;n kem, đường lactose, bột kem, oligofructose, sữa bột kh&ocirc;ng b&eacute;o, kho&aacute;ng chất (canxi carbonat, kali citrat, tricanxi photphat, natri citrat, sắt sulphat, kẽm sulphat, mangan sulphat, đồng sulphat v&agrave; kali i-ốt), dầu c&aacute; l&agrave; nguồn của Ax&iacute;t Docosahexaenoic (DHA), hương vani tổng hợp, c&aacute;c vitamin (choline bitartrate, natri ascorbat, alpha-tocopheryl acetat, niacinamide, Ax&iacute;t ascorbic, canxi pantothenat, cholecalciferol, vitamin A palmitat, cyanocobalamin, phytonadione, pyridoxine hydroclorid, thiamin hydroclorid, Ax&iacute;t folic v&agrave; biotin), 2&#39;-fucosyllactose v&agrave; beta-glucan từ men. Sản phẩm c&oacute; chứa th&agrave;nh phần nguồn gốc từ sữa, đậu n&agrave;nh v&agrave; c&aacute;.</p>\r\n\r\n<h4 style=\"text-align:justify\">&nbsp;</h4>\r\n\r\n<p><span style=\"color:#333333\"><strong><span style=\"color:#000000\">C&Ocirc;NG DỤNG</span></strong></span></p>\r\n\r\n<p><span style=\"color:#333333\"><span style=\"color:#000000\">Sữa bột Enfagrow A+ NeuroPro 4 với 2&rsquo;-FL HMO l&agrave; sản phẩm thay thế bữa ăn phụ, c&ocirc;ng thức bổ sung MFGM, DHA, Choline v&agrave; c&aacute;c vi chất dinh dưỡng thiết yếu cho chế độ ăn h&agrave;ng ng&agrave;y của trẻ. </span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"color:#000000\">Hệ chất 2&rsquo;-FL HMO v&agrave; FOS: gi&uacute;p tăng lợi khuẩn, hỗ trợ ti&ecirc;u h&oacute;a, l&agrave;m mềm ph&acirc;n, tăng cường khả năng miễn dịch.</span></li>\r\n	<li><span style=\"color:#000000\">MFGM: l&agrave; một m&agrave;ng gi&agrave;u dinh dưỡng bao quanh giọt chất b&eacute;o được b&agrave;i tiết v&agrave;o sữa, được chứng minh đ&oacute;ng vai tr&ograve; quan trọng trong việc cải thiện chức năng nhận thức, khả năng miễn dịch v&agrave; sức khỏe đường ruột của trẻ.</span></li>\r\n	<li><span style=\"color:#000000\">DHA &amp; MFGM: gi&uacute;p ph&aacute;t triển tr&iacute; n&atilde;o</span></li>\r\n	<li><span style=\"color:#000000\">C&aacute;c Vitamin v&agrave; kho&aacute;ng chất: Hỗ trợ miễn dịch, tăng sức đề kh&aacute;ng. Hỗ trợ ph&aacute;t triển thể chất.</span></li>\r\n</ul>\r\n\r\n<p><span style=\"color:#333333\"><strong><span style=\"color:#000000\">HƯỚNG DẪN C&Aacute;CH PHA</span></strong></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"color:#000000\">Sức khỏe của trẻ t&ugrave;y thuộc v&agrave;o sự tu&acirc;n thủ chặt chẽ c&aacute;c hướng dẫn sau đ&acirc;y. Vệ sinh, chuẩn bị dụng cụ, pha chế, sử dụng v&agrave; bảo quản đ&uacute;ng c&aacute;ch rất quan trọng trong qu&aacute; tr&igrave;nh pha chế sữa cho trẻ. Sản phẩm kh&ocirc;ng v&ocirc; tr&ugrave;ng v&agrave; kh&ocirc;ng n&ecirc;n d&ugrave;ng cho trẻ sinh non hoặc trẻ nhỏ c&oacute; vấn đề về miễn dịch trừ khi c&oacute; chỉ định v&agrave; c&oacute; sự gi&aacute;m s&aacute;t của b&aacute;c sĩ. N&ecirc;n hỏi &yacute; kiến b&aacute;c sĩ để biết loại sản phẩm sữa bột ph&ugrave; hợp với con bạn.</span></li>\r\n	<li><span style=\"color:#000000\">Rửa tay sạch bằng x&agrave; ph&ograve;ng v&agrave; nước trước khi pha</span></li>\r\n	<li><span style=\"color:#000000\">Đun c&aacute;c dụng cụ, cốc v&agrave; nắp trong nước s&ocirc;i (đun s&ocirc;i trong 1 ph&uacute;t).</span></li>\r\n	<li><span style=\"color:#000000\">Đun s&ocirc;i nước trong 1 ph&uacute;t. Để nước nguội đến nhiệt độ kh&ocirc;ng qu&aacute; 35-40&deg;C trước khi pha</span></li>\r\n	<li><span style=\"color:#000000\">Cho đ&uacute;ng lượng nước bạn cần v&agrave;o dung cụ pha. Cho sản phẩm v&agrave;o. Đậy nắp dụng cụ v&agrave; lắc đều. </span></li>\r\n</ul>', 1, 4, NULL, 1, '/storage/uploads/2024/04/15/sua_enfa1.jpg', 2, 1790000, '2024-04-15 02:34:47', '2024-04-15 02:34:47'),
(8, 'Combo 3 lon sữa Enfagrow A+ số 4 1700g (2-6 tuổi) 2Flex', 'Sữa bột Enfagrow A+ NeuroPro 4 là sản phẩm dinh dưỡng giúp con hoàn thiện tư duy cảm xúc và phát triển trí não vượt trội. Ngoài ra, sản phẩm còn chứa các chất dinh dưỡng thiết yếu, giúp con phát triển thể chất khỏe mạnh.', '<p><strong><span style=\"color:#000000\">ĐẶC ĐIỂM NỔI BẬT:</span></strong></p>\r\n\r\n<ul>\r\n	<li>L&agrave; sản phẩm dinh dưỡng c&ocirc;ng thức cho trẻ từ 2-6 tuổi.</li>\r\n	<li>Đẩy nhanh sự ph&aacute;t triển nhận thức ở trẻ về tư duy v&agrave; t&igrave;nh cảm c&ugrave;ng với 2&rsquo;-FL HMO, hệ chất xơ FOS gi&uacute;p hỗ trợ hệ ti&ecirc;u h&oacute;a v&agrave; miễn dịch.</li>\r\n	<li>Kh&ocirc;ng đường sucrose cho vị thanh m&aacute;t.</li>\r\n	<li>Cam kết sản phẩm sữa bột Enfa ch&iacute;nh h&atilde;ng.</li>\r\n</ul>\r\n\r\n<p><strong><span style=\"color:#000000\">TH&Agrave;NH PHẦN:</span></strong></p>\r\n\r\n<h4 style=\"text-align:justify\">&nbsp;</h4>\r\n\r\n<p><span style=\"color:#000000\">Sữa bột Enfagrow A+ NeuroPro 4 Vị thanh m&aacute;t với dưỡng chất DHA &amp; MFGM c&oacute; th&agrave;nh phần gồm bột bơ sữa (nguồn của MFGM), sir&ocirc; mật bắp, sữa bột nguy&ecirc;n kem, đường lactose, bột kem, oligofructose, sữa bột kh&ocirc;ng b&eacute;o, kho&aacute;ng chất (canxi carbonat, kali citrat, tricanxi photphat, natri citrat, sắt sulphat, kẽm sulphat, mangan sulphat, đồng sulphat v&agrave; kali i-ốt), dầu c&aacute; l&agrave; nguồn của Ax&iacute;t Docosahexaenoic (DHA), hương vani tổng hợp, c&aacute;c vitamin (choline bitartrate, natri ascorbat, alpha-tocopheryl acetat, niacinamide, Ax&iacute;t ascorbic, canxi pantothenat, cholecalciferol, vitamin A palmitat, cyanocobalamin, phytonadione, pyridoxine hydroclorid, thiamin hydroclorid, Ax&iacute;t folic v&agrave; biotin), 2&#39;-fucosyllactose v&agrave; beta-glucan từ men. Sản phẩm c&oacute; chứa th&agrave;nh phần nguồn gốc từ sữa, đậu n&agrave;nh v&agrave; c&aacute;.</span></p>\r\n\r\n<p><strong><span style=\"color:#000000\">C&Ocirc;NG DỤNG</span></strong></p>\r\n\r\n<p><span style=\"color:#000000\">Sữa bột Enfagrow A+ NeuroPro 4 với 2&rsquo;-FL HMO l&agrave; sản phẩm thay thế bữa ăn phụ, c&ocirc;ng thức bổ sung MFGM, DHA, Choline v&agrave; c&aacute;c vi chất dinh dưỡng thiết yếu cho chế độ ăn h&agrave;ng ng&agrave;y của trẻ. </span></p>\r\n\r\n<ul>\r\n	<li><span style=\"color:#000000\">Hệ chất 2&rsquo;-FL HMO v&agrave; FOS: gi&uacute;p tăng lợi khuẩn, hỗ trợ ti&ecirc;u h&oacute;a, l&agrave;m mềm ph&acirc;n, tăng cường khả năng miễn dịch.</span></li>\r\n	<li><span style=\"color:#000000\">MFGM: l&agrave; một m&agrave;ng gi&agrave;u dinh dưỡng bao quanh giọt chất b&eacute;o được b&agrave;i tiết v&agrave;o sữa, được chứng minh đ&oacute;ng vai tr&ograve; quan trọng trong việc cải thiện chức năng nhận thức, khả năng miễn dịch v&agrave; sức khỏe đường ruột của trẻ.</span></li>\r\n	<li><span style=\"color:#000000\">DHA &amp; MFGM: gi&uacute;p ph&aacute;t triển tr&iacute; n&atilde;o</span></li>\r\n	<li><span style=\"color:#000000\">C&aacute;c Vitamin v&agrave; kho&aacute;ng chất: Hỗ trợ miễn dịch, tăng sức đề kh&aacute;ng. Hỗ trợ ph&aacute;t triển thể chất.</span></li>\r\n</ul>\r\n\r\n<p><strong><span style=\"color:#000000\">HƯỚNG DẪN C&Aacute;CH PHA</span></strong></p>\r\n\r\n<ul>\r\n	<li><span style=\"color:#000000\">Sức khỏe của trẻ t&ugrave;y thuộc v&agrave;o sự tu&acirc;n thủ chặt chẽ c&aacute;c hướng dẫn sau đ&acirc;y. Vệ sinh, chuẩn bị dụng cụ, pha chế, sử dụng v&agrave; bảo quản đ&uacute;ng c&aacute;ch rất quan trọng trong qu&aacute; tr&igrave;nh pha chế sữa cho trẻ. Sản phẩm kh&ocirc;ng v&ocirc; tr&ugrave;ng v&agrave; kh&ocirc;ng n&ecirc;n d&ugrave;ng cho trẻ sinh non hoặc trẻ nhỏ c&oacute; vấn đề về miễn dịch trừ khi c&oacute; chỉ định v&agrave; c&oacute; sự gi&aacute;m s&aacute;t của b&aacute;c sĩ. N&ecirc;n hỏi &yacute; kiến b&aacute;c sĩ để biết loại sản phẩm sữa bột ph&ugrave; hợp với con bạn.</span></li>\r\n	<li><span style=\"color:#000000\">Rửa tay sạch bằng x&agrave; ph&ograve;ng v&agrave; nước trước khi pha</span></li>\r\n	<li><span style=\"color:#000000\">Đun c&aacute;c dụng cụ, cốc v&agrave; nắp trong nước s&ocirc;i (đun s&ocirc;i trong 1 ph&uacute;t).</span></li>\r\n	<li><span style=\"color:#000000\">Đun s&ocirc;i nước trong 1 ph&uacute;t. Để nước nguội đến nhiệt độ kh&ocirc;ng qu&aacute; 35-40&deg;C trước khi pha</span></li>\r\n	<li><span style=\"color:#000000\">Cho đ&uacute;ng lượng nước bạn cần v&agrave;o dung cụ pha. Cho sản phẩm v&agrave;o. Đậy nắp dụng cụ v&agrave; lắc đều. </span></li>\r\n</ul>\r\n\r\n<p><strong><span style=\"color:#000000\">HƯỚNG DẪN SỬ DỤNG</span></strong></p>\r\n\r\n<p><span style=\"color:#000000\">Sử dụng bảng dưới đ&acirc;y để đong ch&iacute;nh x&aacute;c lượng nước v&agrave; sữa bột. Sử dụng muỗng c&oacute; trong hộp v&agrave; bảo quản kh&ocirc; r&aacute;o ở r&atilde;nh kẹp tr&ecirc;n nắp.</span></p>', 1, 4, NULL, 1, '/storage/uploads/2024/04/15/sua_enfa2.jpg', 3, 2685000, '2024-04-15 02:36:31', '2024-04-15 02:36:31'),
(9, 'Combo 5 Sữa Enfagrow A+ số 4 830g (2-6 tuổi) 2Flex', 'Sữa Enfamil A+ số 4 dành cho bé từ 2 đến 6 tuổi, với mong muốn đồng hành cùng ba mẹ nuôi dưỡng con thông minh, tình cảm.', '<h4>&nbsp;</h4>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Ưu điểm nổi bật</p>\r\n\r\n<p dir=\"ltr\">. Hỗ trợ b&eacute; ph&aacute;t triển tr&iacute; th&ocirc;ng minh (IQ) v&agrave; t&igrave;nh cảm (EQ) nhờ chứa bộ đ&ocirc;i dưỡng chất v&agrave;ng MFGM v&agrave; DHA.</p>\r\n\r\n<p dir=\"ltr\">. Hệ chất xơ &amp; 2&#39;-FL HMO trong sữa Enfamil A+ Neuropro gi&uacute;p ph&aacute;t triển lợi khuẩn trong to&agrave;n bộ ruột gi&agrave;, cải thiện sức khỏe đường ruột, hỗ trợ ti&ecirc;u h&oacute;a v&agrave; l&agrave;m mềm ph&acirc;n.</p>\r\n\r\n<p dir=\"ltr\">. Vị nhạt cho b&eacute; dễ uống.</p>\r\n\r\n<h4>&nbsp;</h4>\r\n\r\n<p dir=\"ltr\">Th&agrave;nh phần</p>\r\n\r\n<p dir=\"ltr\">Bột bơ sữa (nguồn của MFGM), sir&ocirc; mật bắp, sữa bột nguy&ecirc;n kem, đường lactose, bột kem, oligofructose, sữa bột kh&ocirc;ng b&eacute;o, kho&aacute;ng chất (canxi carbonat, kali citrat, tricanxi photphat, natri citrat, sắt sulphat, kẽm sulphat, mangan sulphat, đồng sulphat v&agrave; kali i-ốt), dầu c&aacute; l&agrave; nguồn của Ax&iacute;t Docosahexaenoic (DHA), hương vani tổng hợp, c&aacute;c vitamin (choline bitartrate, natri ascorbat, alpha-tocopheryl acetat, niacinamide, Ax&iacute;t ascorbic, canxi pantothenat, cholecalciferol, vitamin A palmitat, cyanocobalamin, phytonadione, pyridoxine hydroclorid, thiamin hydroclorid, Ax&iacute;t folic v&agrave; biotin), 2&#39;-fucosyllactose v&agrave; beta-glucan từ men.</p>\r\n\r\n<p dir=\"ltr\">Lưu &yacute;: Sản phẩm c&oacute; chứa th&agrave;nh phần nguồn gốc từ sữa v&agrave; đậu n&agrave;nh.</p>', 1, 4, NULL, 1, '/storage/uploads/2024/04/15/sua_enfa3.png', 5, 2425000, '2024-04-15 02:38:28', '2024-04-15 02:38:28'),
(10, 'Sữa Enfagrow A+ số 3 1700g (1-3 tuổi) 2Flex', 'Enfamil A+ số 3 là sữa bột công thức dành riêng cho trẻ từ 1 đến 3 tuổi. Con Cưng mời ba mẹ tham khảo thông tin chi tiết về sữa Enfamil A+ số 3 cụ thể trong bảng tổng hợp dưới đây.', '<h4>&nbsp;</h4>\r\n\r\n<p>Ưu điểm nổi bật<br />\r\n.&nbsp;Được sản xuất theo c&ocirc;ng nghệ hiện đại v&agrave; được chứng minh l&acirc;m s&agrave;ng về t&iacute;nh hiệu quả v&agrave; an to&agrave;n;<br />\r\n.&nbsp;Chứa nhiều dưỡng chất tốt cho b&eacute; ph&aacute;t triển khoẻ mạnh;<br />\r\n.&nbsp;Vị nhạt cho b&eacute; dễ uống.</p>\r\n\r\n<h4>&nbsp;</h4>\r\n\r\n<p dir=\"ltr\">Th&agrave;nh phần</p>\r\n\r\n<p dir=\"ltr\">Bột bơ sữa (nguồn của MFGM) bột kem, sir&ocirc; mật bắp, sữa bột nguy&ecirc;n kem, đường lactose, sữa bột kh&ocirc;ng b&eacute;o, oligofructose, kho&aacute;ng chất (canxi carbonat, tricanxi photphat, magi&ecirc; photphat, natri citrat, sắt sulphat, kẽm sulphat, mangan sulphat, đồng sulphat v&agrave; kali i-ốt), dầu c&aacute; l&agrave; nguồn của Ax&iacute;t Docosahexaenoic (DHA), hương vani tổng hợp, c&aacute;c vitamin (choline bitartrat, natri ascorbat, alpha-tocopheryl acetat, niaciamide, vitamin A palmitat, Ax&iacute;t ascorbic, cholecalciferol, cyanocobalamin, canxi pantothenat, phytonadione, pyridoxine hydroclorid, thiamin hydroclorid, Ax&iacute;t folic v&agrave; biotin), 2&rsquo;-Fucosyllactose v&agrave; beta glucan từ men.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Lưu &yacute;: Sản phẩm c&oacute; chứa th&agrave;nh phần nguồn gốc từ sữa v&agrave; đậu n&agrave;nh.</p>\r\n\r\n<p dir=\"ltr\">Lưu &yacute;</p>\r\n\r\n<p dir=\"ltr\">. Sữa mẹ l&agrave; thức ăn tốt nhất cho sức khỏe v&agrave; sự ph&aacute;t triển to&agrave;n diện của trẻ nhỏ. C&aacute;c yếu tố chống nhiễm khuẩn, đặc biệt l&agrave; kh&aacute;ng thể chỉ c&oacute; trong sữa mẹ c&oacute; t&aacute;c dụng gi&uacute;p trẻ ph&ograve;ng, chống bệnh ti&ecirc;u chảy, nhiễm khuẩn đường h&ocirc; hấp v&agrave; một số bệnh nhiễm khuẩn kh&aacute;c.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Chỉ sử dụng sản phẩm n&agrave;y theo hướng dẫn của b&aacute;c sĩ. Pha chế theo đ&uacute;ng hướng dẫn. Cho trẻ ăn bằng cốc, th&igrave;a hợp vệ sinh.</p>', 1, 4, NULL, 1, '/storage/uploads/2024/04/15/sua_enfa4.png', 1, 995000, '2024-04-15 02:39:52', '2024-04-15 02:39:52'),
(12, 'Combo 3 Sữa Enfagrow A+ số 4 830g (2-6 tuổi) 2Flex', 'Sữa Enfamil A+ số 4 dành cho bé từ 2 đến 6 tuổi, với mong muốn đồng hành cùng ba mẹ nuôi dưỡng con thông minh, tình cảm.', '<h4>Ưu điểm nổi bật</h4>\r\n\r\n<p dir=\"ltr\">. Hỗ trợ b&eacute; ph&aacute;t triển tr&iacute; th&ocirc;ng minh (IQ) v&agrave; t&igrave;nh cảm (EQ) nhờ chứa bộ đ&ocirc;i dưỡng chất v&agrave;ng MFGM v&agrave; DHA.</p>\r\n\r\n<p dir=\"ltr\">. Hệ chất xơ &amp; 2&#39;-FL HMO trong sữa Enfamil A+ Neuropro gi&uacute;p ph&aacute;t triển lợi khuẩn trong to&agrave;n bộ ruột gi&agrave;, cải thiện sức khỏe đường ruột, hỗ trợ ti&ecirc;u h&oacute;a v&agrave; l&agrave;m mềm ph&acirc;n.</p>\r\n\r\n<p dir=\"ltr\">. Vị nhạt cho b&eacute; dễ uống.</p>\r\n\r\n<p dir=\"ltr\">Th&agrave;nh phần</p>\r\n\r\n<p dir=\"ltr\">Bột bơ sữa (nguồn của MFGM), sir&ocirc; mật bắp, sữa bột nguy&ecirc;n kem, đường lactose, bột kem, oligofructose, sữa bột kh&ocirc;ng b&eacute;o, kho&aacute;ng chất (canxi carbonat, kali citrat, tricanxi photphat, natri citrat, sắt sulphat, kẽm sulphat, mangan sulphat, đồng sulphat v&agrave; kali i-ốt), dầu c&aacute; l&agrave; nguồn của Ax&iacute;t Docosahexaenoic (DHA), hương vani tổng hợp, c&aacute;c vitamin (choline bitartrate, natri ascorbat, alpha-tocopheryl acetat, niacinamide, Ax&iacute;t ascorbic, canxi pantothenat, cholecalciferol, vitamin A palmitat, cyanocobalamin, phytonadione, pyridoxine hydroclorid, thiamin hydroclorid, Ax&iacute;t folic v&agrave; biotin), 2&#39;-fucosyllactose v&agrave; beta-glucan từ men.</p>\r\n\r\n<p dir=\"ltr\">Lưu &yacute;: Sản phẩm c&oacute; chứa th&agrave;nh phần nguồn gốc từ sữa v&agrave; đậu n&agrave;nh.</p>', 1, 4, NULL, 1, '/storage/uploads/2024/04/15/sua_enfa4.png', 3, 1455000, '2024-04-15 02:41:44', '2024-04-15 02:41:44'),
(13, 'Combo 2 thùng Sữa Abbott Grow Gold hương vani 110ML - Lốc 4 (Từ 1 tuổi)', 'Sữa nước Abbott Grow Gold Hương Vani 110ml là thức uống dinh dưỡng dành cho bé từ 1 tuổi trở lên. Sản phẩm cung cấp nguồn dinh dưỡng hỗ trợ bé phát triển chiều cao, trí não cũng như tăng cường sức đề kháng.', '<p><strong>Ưu điểm nổi bật</strong></p>\r\n\r\n<p>. Hỗ trợ b&eacute; ph&aacute;t triển xương v&agrave; chiều cao nhờ được bổ sung canxi, vitamin D với tỷ lệ canxi/phốt pho th&iacute;ch hợp theo khuyến c&aacute;o của Ch&acirc;u v&agrave; Hoa Kỳ v&agrave; sự c&oacute; mặt của hỗn hợp chất b&eacute;o thực vật kh&ocirc;ng chứa dầu cọ;</p>\r\n\r\n<p>. Hỗ trợ b&eacute; tăng c&acirc;n, tăng trưởng tốt v&agrave; ph&aacute;t triển khoẻ mạnh nhờ c&oacute; Protein chất lượng cao (đặc biệt gi&agrave;u lysin);</p>\r\n\r\n<p>. Gi&uacute;p trẻ ph&aacute;t triển tr&iacute; n&atilde;o v&agrave; thị gi&aacute;c nhờ c&aacute;c th&agrave;nh phần DHA, taurin, c&aacute;c acid b&eacute;o omega 3, 6 &amp; 9;</p>\r\n\r\n<p>. GOS gi&uacute;p b&eacute; ti&ecirc;u ho&aacute; tốt. Ngo&agrave;i ra, sức đề kh&aacute;ng của b&eacute; cũng được tăng cường nhờ c&aacute;c chất chống oxy ho&aacute; như beta-caroten, vitamin A, C &amp; E.&nbsp;</p>\r\n\r\n<p><strong>Th&agrave;nh phần&nbsp;</strong></p>\r\n\r\n<p><img src=\"https://cdn1.concung.com/storage/2022/09/1663819499.png\" /></p>', 2, 1, NULL, 1, '/storage/uploads/2024/04/15/sua_grow1.jpg', 2, 1013000, '2024-04-15 02:55:52', '2024-04-15 02:55:52'),
(14, 'Combo 3 Thùng Sữa Abbott Grow Gold hương vani 110ML - Lốc 4 (Từ 1 tuổi)', 'Sữa nước Abbott Grow Gold Hương Vani 110ml là thức uống dinh dưỡng dành cho bé từ 1 tuổi trở lên. Sản phẩm cung cấp nguồn dinh dưỡng hỗ trợ bé phát triển chiều cao, trí não cũng như tăng cường sức đề kháng.', '<p><strong>Ưu điểm nổi bật</strong></p>\r\n\r\n<p>. Hỗ trợ b&eacute; ph&aacute;t triển xương v&agrave; chiều cao nhờ được bổ sung canxi, vitamin D với tỷ lệ canxi/phốt pho th&iacute;ch hợp theo khuyến c&aacute;o của Ch&acirc;u v&agrave; Hoa Kỳ v&agrave; sự c&oacute; mặt của hỗn hợp chất b&eacute;o thực vật kh&ocirc;ng chứa dầu cọ;</p>\r\n\r\n<p>. Hỗ trợ b&eacute; tăng c&acirc;n, tăng trưởng tốt v&agrave; ph&aacute;t triển khoẻ mạnh nhờ c&oacute; Protein chất lượng cao (đặc biệt gi&agrave;u lysin);</p>\r\n\r\n<p>. Gi&uacute;p trẻ ph&aacute;t triển tr&iacute; n&atilde;o v&agrave; thị gi&aacute;c nhờ c&aacute;c th&agrave;nh phần DHA, taurin, c&aacute;c acid b&eacute;o omega 3, 6 &amp; 9;</p>\r\n\r\n<p>. GOS gi&uacute;p b&eacute; ti&ecirc;u ho&aacute; tốt. Ngo&agrave;i ra, sức đề kh&aacute;ng của b&eacute; cũng được tăng cường nhờ c&aacute;c chất chống oxy ho&aacute; như beta-caroten, vitamin A, C &amp; E.&nbsp;</p>\r\n\r\n<p><strong>Th&agrave;nh phần&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://cdn1.concung.com/storage/2022/09/1663819499.png\" /></p>', 2, 1, NULL, 1, '/storage/uploads/2024/04/15/sua_grow2.jpg', 3, 1555000, '2024-04-15 02:58:06', '2024-04-15 02:58:06'),
(15, 'Thùng sữa Abbott Grow Gold hương vani 110ml (Lốc 4 hộp)', 'Combo 12 lốc Abbott Grow Gold hương vani 110ml (Lốc 4 hộp) là thức uống dinh dưỡng dành cho bé từ 1 tuổi trở lên. Sản phẩm cung cấp nguồn dinh dưỡng hỗ trợ bé phát triển chiều cao, trí não cũng như tăng cường sức đề kháng.', '<p><strong>Ưu điểm nổi bật</strong></p>\r\n\r\n<p>. Hỗ trợ b&eacute; ph&aacute;t triển xương v&agrave; chiều cao nhờ được bổ sung canxi, vitamin D với tỷ lệ canxi/phốt pho th&iacute;ch hợp theo khuyến c&aacute;o của Ch&acirc;u v&agrave; Hoa Kỳ v&agrave; sự c&oacute; mặt của hỗn hợp chất b&eacute;o thực vật kh&ocirc;ng chứa dầu cọ;</p>\r\n\r\n<p>. Hỗ trợ b&eacute; tăng c&acirc;n, tăng trưởng tốt v&agrave; ph&aacute;t triển khoẻ mạnh nhờ c&oacute; Protein chất lượng cao (đặc biệt gi&agrave;u lysin);</p>\r\n\r\n<p>. Gi&uacute;p trẻ ph&aacute;t triển tr&iacute; n&atilde;o v&agrave; thị gi&aacute;c nhờ c&aacute;c th&agrave;nh phần DHA, taurin, c&aacute;c acid b&eacute;o omega 3, 6 &amp; 9;</p>\r\n\r\n<p>. GOS gi&uacute;p b&eacute; ti&ecirc;u ho&aacute; tốt. Ngo&agrave;i ra, sức đề kh&aacute;ng của b&eacute; cũng được tăng cường nhờ c&aacute;c chất chống oxy ho&aacute; như beta-caroten, vitamin A, C &amp; E.&nbsp;</p>\r\n\r\n<p><strong>Th&agrave;nh phần&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://cdn1.concung.com/storage/2022/09/1663819499.png\" /></p>\r\n\r\n<p>﻿﻿﻿﻿</p>', 2, 1, NULL, 1, '/storage/uploads/2024/04/15/sua_grow3.jpg', 1, 518000, '2024-04-15 02:59:40', '2024-04-15 02:59:40'),
(16, 'Sữa Abbott Grow Gold hương vani 180ML - Lốc 4 (Từ 1 tuổi)', 'Sữa nước Abbott Grow Gold Hương Vani 180ml là thức uống dinh dưỡng dành cho bé từ 1 tuổi trở lên. Sản phẩm cung cấp nguồn dinh dưỡng hỗ trợ bé phát triển chiều cao, trí não cũng như tăng cường sức đề kháng.', '<p><strong>Ưu điểm nổi bật</strong></p>\r\n\r\n<p>. Hỗ trợ b&eacute; ph&aacute;t triển xương v&agrave; chiều cao nhờ được bổ sung canxi, vitamin D với tỷ lệ canxi/phốt pho th&iacute;ch hợp theo khuyến c&aacute;o của Ch&acirc;u v&agrave; Hoa Kỳ v&agrave; sự c&oacute; mặt của hỗn hợp chất b&eacute;o thực vật kh&ocirc;ng chứa dầu cọ;</p>\r\n\r\n<p>. Hỗ trợ b&eacute; tăng c&acirc;n, tăng trưởng tốt v&agrave; ph&aacute;t triển khoẻ mạnh nhờ c&oacute; Protein chất lượng cao (đặc biệt gi&agrave;u lysin);</p>\r\n\r\n<p>. Gi&uacute;p trẻ ph&aacute;t triển tr&iacute; n&atilde;o v&agrave; thị gi&aacute;c nhờ c&aacute;c th&agrave;nh phần DHA, taurin, c&aacute;c acid b&eacute;o omega 3, 6 &amp; 9;</p>\r\n\r\n<p>. GOS gi&uacute;p b&eacute; ti&ecirc;u ho&aacute; tốt. Ngo&agrave;i ra, sức đề kh&aacute;ng của b&eacute; cũng được tăng cường nhờ c&aacute;c chất chống oxy ho&aacute; như beta-caroten, vitamin A, C &amp; E.&nbsp;</p>\r\n\r\n<p><strong>Th&agrave;nh phần&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://cdn1.concung.com/storage/2022/09/1663827235.png\" /></p>\r\n\r\n<p>﻿</p>', 2, 1, NULL, 1, '/storage/uploads/2024/04/15/sua_grow4.jpg', 1, 67000, '2024-04-15 03:01:18', '2024-04-15 03:01:18'),
(18, 'Thùng sữa uống dinh dưỡng Vinamilk Yoko Gold 110ml (Lốc 4 hộp)', 'Thùng sữa uống dinh dưỡng Vinamilk Yoko Gold 110ml (Lốc 4 hộp) là một dòng sản phẩm của Vinamilk – Thương hiệu sữa số 1 Việt Nam. Với công thức dinh dưỡng dễ tiêu hóa và nhiều dưỡng chất tốt từ Nhật, sữa giúp bé hấp thu tốt, tăng cường sức đề kháng và phát triển não bộ.', '<p><strong>Ưu điểm nổi bật</strong></p>\r\n\r\n<p><strong>.&nbsp;</strong>Hệ chất xơ h&ograve;a tan FOS (Oligofructose) v&agrave; Inulin hỗ trợ hệ ti&ecirc;u h&oacute;a của trẻ khỏe mạnh, tăng khả năng hấp thu c&aacute;c dưỡng chất.<br />\r\n<strong>.&nbsp;</strong>Taurin nhập khẩu từ Nhật kết hợp c&ugrave;ng DHA, Lutein v&agrave; Cholin gi&uacute;p ph&aacute;t triển n&atilde;o bộ, thị gi&aacute;c, tăng khả năng nhận thức v&agrave; học hỏi của trẻ.<br />\r\n<strong>.&nbsp;</strong>Canxi nhập khẩu từ Nhật v&agrave; vitamin D gi&uacute;p ph&aacute;t triển hệ xương chắc khỏe v&agrave; chiều cao.<br />\r\n<strong>.&nbsp;</strong>C&aacute;c Vitamin v&agrave; kho&aacute;ng chất thiết yếu như A, D, C, Kẽm, Selen v&agrave; hỗn hợp Nucleotid gi&uacute;p tăng cường sức đề kh&aacute;ng, hỗ trợ hệ miễn dịch, bảo vệ trẻ khỏi bệnh nhiễm khuẩn th&ocirc;ng thường. ﻿﻿</p>', 2, 5, NULL, 1, '/storage/uploads/2024/04/15/sua_vinamilk1.jpg', 1, 408000, '2024-04-15 03:39:17', '2024-04-15 03:39:17'),
(19, 'Thùng Sữa uống dinh dưỡng Optimum Gold 110ml (Lốc 4 hộp) - 12 lốc', 'Được sản xuất trên dây chuyền công nghệ Đức, Optimum Gold hỗ trợ phát triển toàn diện từ tiêu hoá, đề kháng, trí não, đến chiều cao vượt trội.', '<p dir=\"ltr\">Ưu điểm nổi bật</p>\r\n\r\n<p dir=\"ltr\">Hấp thu &amp; đề kh&aacute;ng</p>\r\n\r\n<p dir=\"ltr\">Tăng 30% HMO* (2&rsquo;- FL) l&agrave; prebiotic c&oacute; cấu tr&uacute;c tương tự như dưỡng chất được t&igrave;m thấy trong sữa mẹ, gi&uacute;p h&igrave;nh th&agrave;nh hệ vi khuẩn c&oacute; lợi, c&ugrave;ng với đạm Whey gi&agrave;u Alpha-lactalbumin gi&uacute;p tăng khả năng hấp thu v&agrave; hỗ trợ hệ ti&ecirc;u h&oacute;a khỏe mạnh.</p>\r\n\r\n<p dir=\"ltr\">Gi&agrave;u vitamin, kho&aacute;ng chất C, Kẽm v&agrave; hỗn hợp Nucleotid gi&uacute;p tăng cường sức đề kh&aacute;ng, bảo vệ trẻ khỏi c&aacute;c bệnh nhiễm khuẩn th&ocirc;ng thường.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Tăng chiều cao vượt trội</p>\r\n\r\n<p dir=\"ltr\">Gi&agrave;u vitamin D v&agrave; Canxi gi&uacute;p trẻ ph&aacute;t triển tốt hệ xương v&agrave; chiều cao.</p>\r\n\r\n<p dir=\"ltr\">Vitamin K2&nbsp; tự nhi&ecirc;n hỗ trợ hấp thu Canxi gi&uacute;p trẻ ph&aacute;t triển tốt hệ xương v&agrave; chiều cao.</p>\r\n\r\n<p dir=\"ltr\">Ph&aacute;t triển tr&iacute; n&atilde;o nhờ DHA từ tảo kết hợp c&ugrave;ng với Lutein, Omega 3 &amp; Omega 6, Taurin v&agrave; Cholin gi&uacute;p ph&aacute;t triển n&atilde;o bộ, thị gi&aacute;c</p>\r\n\r\n<p dir=\"ltr\">Đối tượng sử dụng</p>\r\n\r\n<p dir=\"ltr\">Trẻ từ 1 tuổi trở l&ecirc;n.</p>\r\n\r\n<p dir=\"ltr\">Lưu &yacute;: Kh&ocirc;ng d&ugrave;ng cho trẻ dưới 1 tuổi</p>\r\n\r\n<p dir=\"ltr\">Hướng dẫn sử dụng&nbsp;</p>\r\n\r\n<p dir=\"ltr\">- Ngon hơn khi uống lạnh. Lắc đều trước khi sử dụng</p>\r\n\r\n<p dir=\"ltr\">- Sản phẩm cho 1 lần sử dụng</p>\r\n\r\n<p dir=\"ltr\">Hướng dẫn bảo quản</p>\r\n\r\n<p dir=\"ltr\">Bảo quản nơi kh&ocirc; r&aacute;o tho&aacute;ng m&aacute;t.</p>\r\n\r\n<p dir=\"ltr\">Th&ocirc;ng tin chi tiết</p>\r\n\r\n<p dir=\"ltr\">T&ecirc;n sản phẩm: Sữa uống dinh dưỡng Optimum Gold 110ml (Lốc 4 hộp)</p>\r\n\r\n<p dir=\"ltr\">Thương hiệu: Optimum Gold</p>\r\n\r\n<p dir=\"ltr\">Nh&agrave; sản xuất: Vinamilk</p>\r\n\r\n<p dir=\"ltr\">Xuất xứ: Việt Nam</p>\r\n\r\n<p dir=\"ltr\">Thể t&iacute;ch: 110ml</p>', 2, 5, NULL, 1, '/storage/uploads/2024/04/15/sua_vinamilk2.jpg', 1, 377000, '2024-04-15 03:43:53', '2024-04-15 03:43:53'),
(20, 'Thùng Sữa non Vinamilk ColosGold 110ml (từ 1 tuổi) lốc 4 hộp - 12 lốc', 'Sữa uống dinh dưỡng Vinamilk ColosGold 110ml là một sản phẩm thuộc thương hiệu Vinamilk. Sản phẩm phù hợp cho trẻ từ 1 tuổi trở lên. Với thành phần bổ sữa non, HMO (2\'FL) cùng chất xơ hòa tan FOS; sữa ColosGokd giúp hỗ trợ tiêu hóa và tăng sức khỏe hệ miễn dịch cho trẻ. Ngoài ra, DHA kết hợp với Taurin, Cholin và  trong sữa giúp phát triển não bộ, thị giác.', '<p><strong>Ưu điểm sản phẩm<br />\r\n<em>. Hỗ trợ tăng cường miễn dịch, gi&uacute;p b&eacute; ti&ecirc;u h&oacute;a khỏe mạnh:&nbsp;</em></strong><span style=\"font-family:Arial,Helvetica,sans-serif\">Ch&iacute;nh nhờ th&agrave;nh phần sữa non 24h t&iacute;ch hợp nhiều kh&aacute;ng thể bao gồm:</span><br />\r\n<span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\">- Kh&aacute;ng thể IgG,&nbsp;</span></span></span></span><br />\r\n<span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\">- HMO(3) (2&rsquo;-FL) kết hợp với lợi khuẩn Lactobacillus fermentum (HMP) được ph&acirc;n lập từ sữa mẹ</span></span></span></span><br />\r\n<span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\">- Bifidobacterium</span></span></span></span><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\">- BB-12TM</span><br />\r\n<span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\">Đ&acirc;y đều l&agrave; những th&agrave;nh phần qu&yacute; gi&aacute;, gi&uacute;p hạn chế sự b&aacute;m d&iacute;nh của c&aacute;c t&aacute;c nh&acirc;n g&acirc;y nhiễm khuẩn l&ecirc;n th&agrave;nh ruột của trẻ, tăng vi khuẩn c&oacute; lợi, ức chế vi khuẩn c&oacute; hại, gi&uacute;p tăng kh&aacute;ng thể IgA tự nhi&ecirc;n. Từ đ&oacute;, hệ ti&ecirc;u h&oacute;a khoẻ mạnh v&agrave; khả năng miễn dịch của b&eacute; trở n&ecirc;n khỏe mạnh hơn.</span></span></span></span><br />\r\n<strong><em>. Hỗ trợ tăng c&acirc;n khỏe mạnh v&agrave; tăng chiều cao:&nbsp;</em></strong><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\">SữaColosGold rất gi&agrave;u đạm whey. Đ&acirc;y l&agrave; loại đạm th&acirc;n thiện với hệ ti&ecirc;u h&oacute;a của b&eacute;, gi&uacute;p b&eacute; hấp thu dưỡng chất nhanh v&agrave; dễ. B&ecirc;n cạnh đ&oacute;, sản phẩm c&ograve;n cung cấp Alpha-lactalbumin &ndash; một loại axit amin thiết yếu c&ugrave;ng c&aacute;c kho&aacute;ng chất kh&aacute;c cho trẻ tăng c&acirc;n khỏe mạnh.</span></span></span></span><br />\r\n<span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\">H&agrave;m lượng Canxi v&agrave; Vitamin D cao cộng với tỉ lệ Canxi &amp; Phốt pho (Ca:P) th&iacute;ch hợp gi&uacute;p trẻ ph&aacute;t triển xương v&agrave; răng c&ugrave;ng chiều cao.</span></span></span></span><br />\r\n<strong><em>. Hỗ trợ ph&aacute;t triển n&atilde;o bộ:&nbsp;</em></strong><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\">Sữa uống dinh dưỡng Vinamilk ColosGold được bổ sung th&ecirc;m 20% lượng DHA từ tảo, hỗ trợ ph&aacute;t triển n&atilde;o bộ v&agrave; gi&uacute;p đ&aacute;p ứng h&agrave;m lượng theo khuyến nghị hằng ng&agrave;y của c&aacute;c chuy&ecirc;n gia y tế thế giới FAO/WHO.</span></span></span></span><br />\r\n<strong>Th&agrave;nh phần ch&iacute;nh&nbsp;</strong><br />\r\n<strong>.&nbsp;</strong><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\">Nước, bột sữa (sữa bột, đạm whey gi&agrave;u alpha-lactalbumin) (7,7%), đường, maltodextrin, dầu thực vật, chất b&eacute;o sữa, chất xơ h&ograve;a tan oligofructose (FOS), chất nhũ h&oacute;a (471,460(i), 407, 466), bột sữa non (colostrum) (3 g/l), c&aacute;c kho&aacute;ng chất (tricalci phosphat, kali citrat, natri citrat, magnesi carbonat, sắt pyrophosphat, kẽm sulfat, đồng sulfat, mangan sulfat, kali iodid, natri selnit), c&aacute;c vitamin (natri ascorbat, E, niacin, calci D-pantothenat, B6, A, B1, B2, acid folic, K1, D3, biotin, B12), dầu c&aacute; gi&agrave;u DHA, oligosaccharid (2&#39;Fucosyllactose (2&#39;FL)), cholin clorid, hương liệu tổng hợp d&ugrave;ng cho thực phẩm, taurin, hỗn hợp nucleotid, chất chống oxy h&oacute;a (hỗn hợp tocopherol concemtrate, ascorbyl palmitat), lutein.</span></span></span></span><br />\r\n<strong>.&nbsp;</strong><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\">C&oacute; chứa sữa, dầu c&aacute; v&agrave; đậu n&agrave;nh.</span></span></span></span></p>', 2, 5, NULL, 1, '/storage/uploads/2024/04/15/sua_vinamilk3.jpg', 1, 397000, '2024-04-15 03:45:11', '2024-04-15 03:45:11'),
(21, 'Thùng Sữa uống dinh dưỡng Dielac Grow Plus 110ml (Sữa Non) - Lốc 4 hộp', 'Sữa Uống Dinh Dưỡng Dielac Grow Plus (Sữa Non) bổ sung sữa non Colostrum, kết hợp HMO (2’-FL) là prebiotic có cấu trúc tương tự dưỡng chất được tìm thấy trong sữa mẹ, giúp tăng hệ vi khuẩn có lợi, ngăn ngừa sự bám dính của các tác nhân gây bệnh lên thành ruột, nhờ đó tăng cường miễn dịch tốt.', '<p><strong>Ưu điểm nổi bật</strong><br />\r\n<strong><em>. Hỗ trợ hệ ti&ecirc;u h&oacute;a v&agrave; đề kh&aacute;ng</em></strong><br />\r\nHMO (2&rsquo;-FL) l&agrave; prebiotic c&oacute; cấu tr&uacute;c tương tự dưỡng chất được t&igrave;m thấy trong sữa mẹ, gi&uacute;p tăng hệ vi khuẩn c&oacute; lợi, ngăn ngừa sự b&aacute;m d&iacute;nh của c&aacute;c t&aacute;c nh&acirc;n g&acirc;y bệnh l&ecirc;n th&agrave;nh ruột c&ugrave;ng với Chất xơ h&ograve;a tan FOS (Oligofructose) hỗ trợ hệ ti&ecirc;u h&oacute;a khỏe mạnh v&agrave; tăng sức đề kh&aacute;ng.<br />\r\n<em><strong>. Gi&uacute;p tăng c&acirc;n khỏe mạnh</strong></em><br />\r\nĐạm Whey gi&agrave;u Alpha-Lactalbumin cung cấp ax&iacute;t amin thiết yếu v&agrave; Lysin, c&ugrave;ng chất b&eacute;o chuyển h&oacute;a nhanh MCT dễ hấp thu, gi&uacute;p trẻ tăng c&acirc;n khỏe mạnh;<br />\r\nKẽm c&ugrave;ng Vitamin nh&oacute;m B th&uacute;c đẩy qu&aacute; tr&igrave;nh chuyển h&oacute;a năng lượng, gi&uacute;p trẻ ăn ngon miệng.<br />\r\n<em><strong>. Gi&uacute;p tăng chiều cao</strong></em><br />\r\nH&agrave;m lượng Vitamin D cao theo nhu cầu dinh dưỡng khuyến nghị (DRI) của tổ chức IOM - Hoa Kỳ c&ugrave;ng Canxi gi&uacute;p ph&aacute;t triển xương v&agrave; chiều cao của trẻ;<br />\r\n02 hộp (180ml) mỗi ng&agrave;y đ&aacute;p ứng 100% Canxi gi&uacute;p trẻ tăng chiều cao (Theo nhu cầu dinh dưỡng khuyến nghị của Bộ Y Tế cho trẻ từ 1-6 tuổi).<br />\r\n<em><strong>. Hỗ trợ ph&aacute;t triển n&atilde;o bộ</strong></em><br />\r\nDHA, ax&iacute;t Linoleic, ax&iacute;t Alpha-Linolenic, Taurin &amp; Cholin &ndash; những dưỡng chất quan trọng cho sự ph&aacute;t triển của n&atilde;o bộ, thị gi&aacute;c v&agrave; chức năng ghi nhớ của trẻ.<br />\r\n<strong>Th&agrave;nh phần</strong></p>\r\n\r\n<p>Nước,sữa bột(8.6%), chất b&eacute;o sữa, đường, chất xơ h&ograve;a tan oligofructose, bột b&eacute;o MCT, dầu thực vật, c&aacute;c kho&aacute;ng chất (tricalci phosphat, natri citrat, magnesi citrat, sắt pyrophosphat, kẽm gluconat, mangan sulfat, đồng gluconat, kaliiodid, natri selenit, chất nhũ h&oacute;a (471,460(i),407,466), đạm whey gi&agrave;u alpha-lactalbumin, maltodextrin, bột sữa non (colostrum) (1g/l), c&aacute;c vitamin (natri ascorbat, E, niacin, calcin D-pantothenat, B6, B1, A, B2, acid folic, K1, biotin, D3, B12), dầu c&aacute; gi&agrave;u DHA, oligosaccharid (2&#39;-Fucosyllactose(2&#39;-FL)), cholin clorid, hương liệu tổng hợp d&ugrave;ng cho thực phẩm, taurin, chất chống oxy h&oacute;a ( hỗn hợp tocopherol concentrate, ascorbyl palminat).</p>\r\n\r\n<p>C&oacute; chưa sữa, dầu c&aacute; v&agrave; đậu n&agrave;nh.</p>\r\n\r\n<p><img src=\"https://cdn1.concung.com/storage/2023/05/1683543594-0809-growplussuanon110ml-block-chinhdien-1-crop.png\" /></p>', 2, 5, NULL, 1, '/storage/uploads/2024/04/15/sua_vinamilk4.jpg', 1, 346000, '2024-04-15 03:47:25', '2024-04-15 03:47:25');
INSERT INTO `products` (`id`, `name`, `description`, `content`, `producttype_id`, `trademark_id`, `supplier_id`, `promotion_id`, `thumb`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(22, 'Thùng Sữa tươi tiệt trùng có đường Vinamilk 180ml - 12 lốc', 'Thùng Sữa tươi tiệt trùng có đường Vinamilk 180ml - 12 lốc là một dòng sản phẩm của Vinamilk – Thương hiệu sữa số 1 Việt Nam. Sản phẩm rất giàu dinh dưỡng và đặc biệt thơm ngon, dễ uống.', '<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Ưu điểm nổi bật</strong></span><br />\r\n<strong>.&nbsp;</strong><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\">Được l&agrave;m từ 100% sữa b&ograve; tươi nguy&ecirc;n chất từ những c&ocirc; b&ograve; hạnh ph&uacute;c được chăm s&oacute;c trong m&ocirc;i trường l&yacute; tưởng tại hệ thống 12 trang trại rộng lớn trải d&agrave;i khắp Việt Nam.</span></span></span></span><br />\r\n<strong>.&nbsp;</strong><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\">Hương vị sữa thơm b&eacute;o, dễ uống.</span></span></span></span><br />\r\n<strong>.&nbsp;</strong><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\">Bổ sung vitamin D3, A, C v&agrave; selen&nbsp;gi&uacute;p hỗ trợ miễn dịch, ph&aacute;t triển xương v&agrave; tốt cho thị gi&aacute;c.</span></span></span></span><br />\r\n<br />\r\n<strong>Hướng dẫn sử dụng</strong><br />\r\n<strong>.&nbsp;</strong><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\">Lắc đều trước khi uống</span></span></span></span><br />\r\n<strong>.&nbsp;</strong><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\">Ngon hơn khi uống lạnh</span></span></span></span><br />\r\n<strong>Hướng dẫn bảo quản</strong><br />\r\n<strong>.&nbsp;</strong><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\">Bảo quản sản phẩm nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh s&aacute;ng trực tiếp</span></span></span></span><br />\r\n<strong>.&nbsp;</strong><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\">Hạn sử dụng : 6 th&aacute;ng kể từ ng&agrave;y sản xuất</span></span></span></span><br />\r\n<strong>.&nbsp;</strong><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\">Ch&uacute; &yacute;:&nbsp;Kh&ocirc;ng d&ugrave;ng cho trẻ dưới 1 tuổi﻿</span></span></span></span></p>\r\n\r\n<div style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\">﻿</span></span></span></span></div>', 2, 5, NULL, 1, '/storage/uploads/2024/04/15/sua_vinamilk5.jpg', 1, 360000, '2024-04-15 03:49:02', '2024-04-15 03:49:02'),
(23, 'Sữa chua uống Probi có đường - Lốc 5 chai x 65ml', 'Chi Tiết Sản Phẩm\r\n﻿﻿Sữa chua uống Probi có đường là sản phẩm được ra đời từ sự hợp tác của Vinamilk và CHR Hansen - Công ty men sống hàng đầu Châu Âu. Chứa 65 tỷ lợi khuẩn độc quyền L. Casei 431®, sữa chua uống Probi giúp đường ruột khỏe mạnh, bảo vệ cả gia đình khỏe mạnh.', '<p dir=\"ltr\">Ưu điểm nổi bật của sản phẩm</p>\r\n\r\n<p dir=\"ltr\">Sữa chua uống Probi kh&ocirc;ng chỉ gi&uacute;p đường ruột khỏe mạnh m&agrave; c&ograve;n tăng cường sức đề kh&aacute;ng, giảm bệnh vặt cho b&eacute; nhờ c&oacute; c&aacute;c ưu điểm như sau:</p>\r\n\r\n<p dir=\"ltr\">&bull; Sử dụng c&ocirc;ng nghệ l&ecirc;n men hiện đại Ch&acirc;u &Acirc;u.</p>\r\n\r\n<p dir=\"ltr\">&bull; Chứa 65 tỷ lợi khuẩn L. Casei 431&reg;</p>\r\n\r\n<p dir=\"ltr\">&bull; Được kiểm chứng l&acirc;m s&agrave;ng v&agrave; được Tổng Hội Y học Việt Nam khuy&ecirc;n d&ugrave;ng.&quot;</p>\r\n\r\n<p dir=\"ltr\">Hướng dẫn sử dụng&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Sử dụng ngay sau khi mở chai</p>\r\n\r\n<p dir=\"ltr\">D&ugrave;ng 2-3 chai mỗi ng&agrave;y</p>\r\n\r\n<p dir=\"ltr\">Hướng dẫn bảo quản</p>\r\n\r\n<p dir=\"ltr\">Bảo quản lạnh 6-8 độ C</p>\r\n\r\n<p dir=\"ltr\">Th&ocirc;ng tin chi tiết</p>\r\n\r\n<p dir=\"ltr\">T&ecirc;n sản phẩm: Sữa chua uống Probi c&oacute; đường - Lốc 5 chai x 65ml</p>\r\n\r\n<p dir=\"ltr\">Thương hiệu: Vinamilk Probi</p>\r\n\r\n<p dir=\"ltr\">Xuất xứ: Việt Nam</p>\r\n\r\n<p dir=\"ltr\">Thể t&iacute;ch: Lốc 65ml x 5 chai</p>\r\n\r\n<p dir=\"ltr\">Th&agrave;nh phần: Nước, đường, sữa bột (3,3%), xir&ocirc; fructoza, xir&ocirc; glucoza, chất ổn định (405, 466), hương sữa chua tổng hợp d&ugrave;ng cho thực phẩm, Lactobacillus paracasei (L.CASEI 431TM), vitamin D3</p>\r\n\r\n<p dir=\"ltr\">Hạn sử dụng: 50 ng&agrave;y</p>', 2, 5, NULL, 1, '/storage/uploads/2024/04/15/sua_vinamilk6.jpg', 5, 25000, '2024-04-15 03:50:51', '2024-04-15 03:50:51'),
(24, 'Sữa tươi tiệt trùng có đường Vinamilk 180ml - Lốc 4 hộp', 'Sữa tươi tiệt trùng có đường Vinamilk 180ml là một dòng sản phẩm của Vinamilk – Thương hiệu sữa số 1 Việt Nam. Sản phẩm rất giàu dinh dưỡng và đặc biệt thơm ngon, dễ uống.', '<div style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><img src=\"https://cdn1.concung.com/storage/2023/04/1681194254-sua-tuoi-tiet-trung-co-duong-vinamilk-180ml-loc-4-hop-chinh-dien-crop.png\" style=\"border-style:none; box-sizing:border-box; height:auto !important; max-width:100%; vertical-align:middle; width:900px\" /></span></span></span></span></div>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Ưu điểm nổi bật</strong></span><br />\r\n<span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><strong>.&nbsp;</strong>Được l&agrave;m từ 100% sữa b&ograve; tươi nguy&ecirc;n chất từ những c&ocirc; b&ograve; hạnh ph&uacute;c được chăm s&oacute;c trong m&ocirc;i trường l&yacute; tưởng tại hệ thống 12 trang trại rộng lớn trải d&agrave;i khắp Việt Nam.</span></span></span></span><br />\r\n<span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><strong>.&nbsp;</strong>Hương vị sữa thơm b&eacute;o, dễ uống.</span></span></span></span><br />\r\n<span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><strong>.&nbsp;</strong>Bổ sung vitamin D3, A, C v&agrave; selen&nbsp;gi&uacute;p hỗ trợ miễn dịch, ph&aacute;t triển xương v&agrave; tốt cho thị gi&aacute;c.</span></span></span></span><br />\r\n<span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><strong>Hướng dẫn sử dụng</strong></span></span></span></span><br />\r\n<span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><strong>.&nbsp;</strong>Lắc đều trước khi uống</span></span></span></span><br />\r\n<span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><strong>.&nbsp;</strong>Ngon hơn khi uống lạnh</span></span></span></span><br />\r\n<span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><strong>Hướng dẫn bảo quản</strong></span></span></span></span><br />\r\n<span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><strong>.&nbsp;</strong>Bảo quản sản phẩm nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh s&aacute;ng trực tiếp</span></span></span></span><br />\r\n<span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><strong>.&nbsp;</strong>Hạn sử dụng : 6 th&aacute;ng kể từ ng&agrave;y sản xuất</span></span></span></span><br />\r\n<span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><strong>.&nbsp;</strong>Ch&uacute; &yacute;:&nbsp;Kh&ocirc;ng d&ugrave;ng cho trẻ dưới 1 tuổi</span></span></span></span></p>', 2, 5, NULL, 1, '/storage/uploads/2024/04/15/sua_vinamilk7.jpg', 1, 30000, '2024-04-15 03:52:07', '2024-04-15 03:52:07'),
(25, 'Combo 2 thùng Thực phẩm dinh dưỡng y học cho trẻ 1-10 tuổi: Pediasure hương vani (110ml) (Lốc 4)', 'Pediasure dành cho trẻ 1-10 tuổi, bổ sung dinh dưỡng đầy đủ và cân đối gồm 28 vitamin và khoáng chất thiết yếu giúp trẻ nhanh chóng bắt kịp và duy trì đà tăng trưởng khỏe mạnh. ﻿Pediasure nay được bổ sung thêm Casein Phosphopeptid (CPP) lấy từ thủy phân Casein, một loại đạm chính của sữa. CPP dễ tiêu hóa và hấp thu hơn đạm toàn phần.', '<p><br />\r\n<strong>Ưu đi&ecirc;̉m n&ocirc;̉i b&acirc;̣t</strong></p>\r\n\r\n<p><strong><em>PediaSure được chứng minh l&acirc;m s&agrave;ng gi&uacute;p trẻ tăng chiều cao tốt hơn:</em></strong></p>\r\n\r\n<p>. Gi&agrave;u đạm, canxi, vitamin D<br />\r\n. Bổ sung th&ecirc;m Arginin v&agrave; vitamin K tự nhi&ecirc;n<br />\r\n. Nay th&ecirc;m Casein Phosphopeptid (CPP) lấy từ thủy ph&acirc;n Casein, một loại đạm ch&iacute;nh của sữa.&nbsp;<br />\r\n<em><strong>Tăng c&acirc;n nặng t&ocirc;́t hơn</strong></em><br />\r\n<strong><em>.&nbsp;</em></strong>Dinh dưỡng đầy đủ, c&acirc;n đối, được chứng minh l&acirc;m s&agrave;ng gi&uacute;p trẻ tăng c&acirc;n khỏe mạnh.<br />\r\n. Giảm hơn 25% đường, c&oacute; hương vị thơm ngon trẻ th&iacute;ch.<br />\r\n. CPP dễ ti&ecirc;u h&oacute;a v&agrave; hấp thu hơn đạm to&agrave;n phần.&nbsp;</p>\r\n\r\n<p><strong><em>H&ocirc;̃ trợ tăng cường sức đ&ecirc;̀ kháng</em></strong><br />\r\n. Prebiotic (chất xơ FOS) c&ugrave;ng với nhiều vitamin v&agrave; kho&aacute;ng chất gi&uacute;p tăng cường miễn dịch.<br />\r\n<strong>Đ&ocirc;́i tưởng sử dụng</strong></p>\r\n\r\n<p>PediaSure d&agrave;nh cho trẻ 1-10 tuổi, đặc biệt ph&ugrave; hợp với:</p>\r\n\r\n<p>- Trẻ tăng trưởng k&eacute;m (nhẹ c&acirc;n, thấp c&ograve;i, suy dinh dưỡng)</p>\r\n\r\n<p>- Trẻ biếng ăn, ăn kh&ocirc;ng ngon miệng, trẻ c&oacute; nhu cầu năng lượng tăng cao</p>\r\n\r\n<p>- Trẻ k&eacute;m hấp thu, trẻ bệnh cần phục hồi sức khỏe</p>\r\n\r\n<p>H&atilde;y hỏi B&aacute;c sĩ/ chuy&ecirc;n vi&ecirc;n dinh dưỡng để được hướng dẫn cụ thể về nhu cầu dinh dưỡng của trẻ.</p>\r\n\r\n<p><strong>Thành ph&acirc;̀n</strong><br />\r\nNước, maltodextrin, DẦU THỰC VẬT (dầu hướng dương gi&agrave;u oleic, dầu đậu n&agrave;nh, dầu hạt cải, dầu MCT (triglycerid chuỗi trung b&igrave;nh)), ĐẠM (đạm sữa c&ocirc; đặc, đạm đậu n&agrave;nh tinh chế, đạm casein thủy ph&acirc;n&#39;), sucrose, fructo-oligosaccharid (FOS), KHO&Aacute;NG CHẤT (kali phosphat, magi&ecirc; phosphat, canxi phosphat, kali clorid, kali citrate, natri citrat, sắt sulfat, kẽm sulfat, mangan sulfat, đồng sulfat, kali iodid, cr&ocirc;m clorid, natri selenit, natri molybdat), chất ổn định (gel cellulose, gồm cellulose, gồm gellan), L-arginin, chất nhũ h&oacute;a (monoglycerid, lecithin đậu n&agrave;nh), VITAMIN (acid ascorbic, dl-alpha tocopheryl acetat, niacinamid, d-canxi pantothenat, thiamin hydroclorid, pyridoxin hydroclorid, riboflavin, Vitamin A palmitat, acid folic, biotin, phylloquinon, Vitamin D3, menaquinone-7, cyanocobalamin), hương liệu vani tổng hợp, cholin clorid, m-inositol, acid docosahexaenoic (DHA), taurin, L-carnitin.&nbsp;</p>\r\n\r\n<p>Nguồn casein phosphopeptid﻿</p>', 2, 3, NULL, 1, '/storage/uploads/2024/04/15/sua_pediasure1.png', 2, 1795000, '2024-04-15 03:55:09', '2024-04-15 03:55:09'),
(26, 'Combo 3 Thùng Thực phẩm dinh dưỡng y học cho trẻ 1-10 tuổi: Pediasure hương vani (110ml) (Lốc 4)', 'Pediasure dành cho trẻ 1-10 tuổi, bổ sung dinh dưỡng đầy đủ và cân đối gồm 28 vitamin và khoáng chất thiết yếu giúp trẻ nhanh chóng bắt kịp và duy trì đà tăng trưởng khỏe mạnh. ﻿Pediasure nay được bổ sung thêm Casein Phosphopeptid (CPP) lấy từ thủy phân Casein, một loại đạm chính của sữa. CPP dễ tiêu hóa và hấp thu hơn đạm toàn phần.', '<p><strong>Ưu đi&ecirc;̉m n&ocirc;̉i b&acirc;̣t</strong></p>\r\n\r\n<p><strong><em>PediaSure được chứng minh l&acirc;m s&agrave;ng gi&uacute;p trẻ tăng chiều cao tốt hơn:</em></strong></p>\r\n\r\n<p>. Gi&agrave;u đạm, canxi, vitamin D<br />\r\n. Bổ sung th&ecirc;m Arginin v&agrave; vitamin K tự nhi&ecirc;n<br />\r\n. Nay th&ecirc;m Casein Phosphopeptid (CPP) lấy từ thủy ph&acirc;n Casein, một loại đạm ch&iacute;nh của sữa.&nbsp;</p>\r\n\r\n<p><br />\r\n<em><strong>Tăng c&acirc;n nặng t&ocirc;́t hơn</strong></em><br />\r\n<strong><em>.&nbsp;</em></strong>Dinh dưỡng đầy đủ, c&acirc;n đối, được chứng minh l&acirc;m s&agrave;ng gi&uacute;p trẻ tăng c&acirc;n khỏe mạnh.<br />\r\n. Giảm hơn 25% đường, c&oacute; hương vị thơm ngon trẻ th&iacute;ch.<br />\r\n. CPP dễ ti&ecirc;u h&oacute;a v&agrave; hấp thu hơn đạm to&agrave;n phần.&nbsp;</p>\r\n\r\n<p><strong><em>H&ocirc;̃ trợ tăng cường sức đ&ecirc;̀ kháng</em></strong><br />\r\n. Prebiotic (chất xơ FOS) c&ugrave;ng với nhiều vitamin v&agrave; kho&aacute;ng chất gi&uacute;p tăng cường miễn dịch.</p>\r\n\r\n<p><br />\r\n<strong>Đ&ocirc;́i tưởng sử dụng</strong></p>\r\n\r\n<p>PediaSure d&agrave;nh cho trẻ 1-10 tuổi, đặc biệt ph&ugrave; hợp với:</p>\r\n\r\n<p>- Trẻ tăng trưởng k&eacute;m (nhẹ c&acirc;n, thấp c&ograve;i, suy dinh dưỡng)</p>\r\n\r\n<p>- Trẻ biếng ăn, ăn kh&ocirc;ng ngon miệng, trẻ c&oacute; nhu cầu năng lượng tăng cao</p>\r\n\r\n<p>- Trẻ k&eacute;m hấp thu, trẻ bệnh cần phục hồi sức khỏe</p>\r\n\r\n<p>H&atilde;y hỏi B&aacute;c sĩ/ chuy&ecirc;n vi&ecirc;n dinh dưỡng để được hướng dẫn cụ thể về nhu cầu dinh dưỡng của trẻ.</p>\r\n\r\n<p><strong>Thành ph&acirc;̀n</strong><br />\r\nNước, maltodextrin, DẦU THỰC VẬT (dầu hướng dương gi&agrave;u oleic, dầu đậu n&agrave;nh, dầu hạt cải, dầu MCT (triglycerid chuỗi trung b&igrave;nh)), ĐẠM (đạm sữa c&ocirc; đặc, đạm đậu n&agrave;nh tinh chế, đạm casein thủy ph&acirc;n&#39;), sucrose, fructo-oligosaccharid (FOS), KHO&Aacute;NG CHẤT (kali phosphat, magi&ecirc; phosphat, canxi phosphat, kali clorid, kali citrate, natri citrat, sắt sulfat, kẽm sulfat, mangan sulfat, đồng sulfat, kali iodid, cr&ocirc;m clorid, natri selenit, natri molybdat), chất ổn định (gel cellulose, gồm cellulose, gồm gellan), L-arginin, chất nhũ h&oacute;a (monoglycerid, lecithin đậu n&agrave;nh), VITAMIN (acid ascorbic, dl-alpha tocopheryl acetat, niacinamid, d-canxi pantothenat, thiamin hydroclorid, pyridoxin hydroclorid, riboflavin, Vitamin A palmitat, acid folic, biotin, phylloquinon, Vitamin D3, menaquinone-7, cyanocobalamin), hương liệu vani tổng hợp, cholin clorid, m-inositol, acid docosahexaenoic (DHA), taurin, L-carnitin.&nbsp;</p>\r\n\r\n<p>Nguồn casein phosphopeptid﻿</p>', 2, 3, NULL, 1, '/storage/uploads/2024/04/15/sua_pediasure2.png', 3, 3060000, '2024-04-15 03:56:23', '2024-04-15 03:56:23'),
(27, 'Thùng Thực phẩm dinh dưỡng y học cho trẻ 1-10 tuổi: Pediasure dạng lỏng hương vani 237ml (Lốc 6 chai)', 'Pediasure dành cho trẻ 1-10 tuổi, bổ sung dinh dưỡng đầy đủ và cân đối gồm 28 vitamin và khoáng chất thiết yếu giúp trẻ nhanh chóng bắt kịp và duy trì đà tăng trưởng khỏe mạnh. ﻿Pediasure nay được bổ sung thêm Casein Phosphopeptid (CPP) lấy từ thủy phân Casein, một loại đạm chính của sữa. CPP dễ tiêu hóa và hấp thu hơn đạm toàn phần.', '<p><strong>Ưu đi&ecirc;̉m n&ocirc;̉i b&acirc;̣t</strong></p>\r\n\r\n<p><strong><em>PediaSure được chứng minh l&acirc;m s&agrave;ng gi&uacute;p trẻ tăng chiều cao tốt hơn:</em></strong></p>\r\n\r\n<p>. Gi&agrave;u đạm, canxi, vitamin D<br />\r\n. Bổ sung th&ecirc;m Arginin v&agrave; vitamin K tự nhi&ecirc;n<br />\r\n. Nay th&ecirc;m Casein Phosphopeptid (CPP) lấy từ thủy ph&acirc;n Casein, một loại đạm ch&iacute;nh của sữa.&nbsp;<br />\r\n<em><strong>Tăng c&acirc;n nặng t&ocirc;́t hơn</strong></em><br />\r\n<strong><em>.&nbsp;</em></strong>Dinh dưỡng đầy đủ, c&acirc;n đối, được chứng minh l&acirc;m s&agrave;ng gi&uacute;p trẻ tăng c&acirc;n khỏe mạnh.<br />\r\n. Giảm hơn 25% đường, c&oacute; hương vị thơm ngon trẻ th&iacute;ch.<br />\r\n. CPP dễ ti&ecirc;u h&oacute;a v&agrave; hấp thu hơn đạm to&agrave;n phần.&nbsp;</p>\r\n\r\n<p><strong><em>H&ocirc;̃ trợ tăng cường sức đ&ecirc;̀ kháng</em></strong><br />\r\n. Prebiotic (chất xơ FOS) c&ugrave;ng với nhiều vitamin v&agrave; kho&aacute;ng chất gi&uacute;p tăng cường miễn dịch.<br />\r\n<strong>Đ&ocirc;́i tưởng sử dụng</strong></p>\r\n\r\n<p>PediaSure d&agrave;nh cho trẻ 1-10 tuổi, đặc biệt ph&ugrave; hợp với:</p>\r\n\r\n<p>- Trẻ tăng trưởng k&eacute;m (nhẹ c&acirc;n, thấp c&ograve;i, suy dinh dưỡng)</p>\r\n\r\n<p>- Trẻ biếng ăn, ăn kh&ocirc;ng ngon miệng, trẻ c&oacute; nhu cầu năng lượng tăng cao</p>\r\n\r\n<p>- Trẻ k&eacute;m hấp thu, trẻ bệnh cần phục hồi sức khỏe</p>\r\n\r\n<p>H&atilde;y hỏi B&aacute;c sĩ/ chuy&ecirc;n vi&ecirc;n dinh dưỡng để được hướng dẫn cụ thể về nhu cầu dinh dưỡng của trẻ.</p>\r\n\r\n<p><strong>Thành ph&acirc;̀n</strong><br />\r\nNước, maltodextrin, DẦU THỰC VẬT (dầu hướng dương gi&agrave;u oleic, dầu đậu n&agrave;nh, dầu hạt cải, dầu MCT (triglycerid chuỗi trung b&igrave;nh)), ĐẠM (đạm sữa c&ocirc; đặc, đạm đậu n&agrave;nh tinh chế, đạm casein thủy ph&acirc;n&#39;), sucrose, fructo-oligosaccharid (FOS), KHO&Aacute;NG CHẤT (kali phosphat, magi&ecirc; phosphat, canxi phosphat, kali clorid, kali citrate, natri citrat, sắt sulfat, kẽm sulfat, mangan sulfat, đồng sulfat, kali iodid, cr&ocirc;m clorid, natri selenit, natri molybdat), chất ổn định (gel cellulose, gồm cellulose, gồm gellan), L-arginin, chất nhũ h&oacute;a (monoglycerid, lecithin đậu n&agrave;nh), VITAMIN (acid ascorbic, dl-alpha tocopheryl acetat, niacinamid, d-canxi pantothenat, thiamin hydroclorid, pyridoxin hydroclorid, riboflavin, Vitamin A palmitat, acid folic, biotin, phylloquinon, Vitamin D3, menaquinone-7, cyanocobalamin), hương liệu vani tổng hợp, cholin clorid, m-inositol, acid docosahexaenoic (DHA), taurin, L-carnitin.&nbsp;</p>\r\n\r\n<p>Nguồn casein phosphopeptid</p>', 2, 3, NULL, 1, '/storage/uploads/2024/04/15/sua_pediasure3.png', 5, 896000, '2024-04-15 03:57:53', '2024-04-15 03:57:53'),
(28, 'Thực phẩm dinh dưỡng y học cho trẻ 1-10 tuổi: Pediasure hương vani (180ml) (Lốc 4)', 'Pediasure dành cho trẻ 1-10 tuổi, bổ sung dinh dưỡng đầy đủ và cân đối gồm 28 vitamin và khoáng chất thiết yếu giúp trẻ nhanh chóng bắt kịp và duy trì đà tăng trưởng khỏe mạnh. ﻿Pediasure nay được bổ sung thêm Casein Phosphopeptid (CPP) lấy từ thủy phân Casein, một loại đạm chính của sữa. CPP dễ tiêu hóa và hấp thu hơn đạm toàn phần.', '<p><strong>Ưu đi&ecirc;̉m n&ocirc;̉i b&acirc;̣t</strong></p>\r\n\r\n<p><strong><em>PediaSure được chứng minh l&acirc;m s&agrave;ng gi&uacute;p trẻ tăng chiều cao tốt hơn:</em></strong></p>\r\n\r\n<p>. Gi&agrave;u đạm, canxi, vitamin D<br />\r\n. Bổ sung th&ecirc;m Arginin v&agrave; vitamin K tự nhi&ecirc;n<br />\r\n. Nay th&ecirc;m Casein Phosphopeptid (CPP) lấy từ thủy ph&acirc;n Casein, một loại đạm ch&iacute;nh của sữa.&nbsp;<br />\r\n<em><strong>Tăng c&acirc;n nặng t&ocirc;́t hơn</strong></em><br />\r\n<strong><em>.&nbsp;</em></strong>Dinh dưỡng đầy đủ, c&acirc;n đối, được chứng minh l&acirc;m s&agrave;ng gi&uacute;p trẻ tăng c&acirc;n khỏe mạnh.<br />\r\n. Giảm hơn 25% đường, c&oacute; hương vị thơm ngon trẻ th&iacute;ch.<br />\r\n. CPP dễ ti&ecirc;u h&oacute;a v&agrave; hấp thu hơn đạm to&agrave;n phần.&nbsp;</p>\r\n\r\n<p><strong><em>H&ocirc;̃ trợ tăng cường sức đ&ecirc;̀ kháng</em></strong><br />\r\n. Prebiotic (chất xơ FOS) c&ugrave;ng với nhiều vitamin v&agrave; kho&aacute;ng chất gi&uacute;p tăng cường miễn dịch.<br />\r\n<strong>Đ&ocirc;́i tưởng sử dụng</strong></p>\r\n\r\n<p>PediaSure d&agrave;nh cho trẻ 1-10 tuổi, đặc biệt ph&ugrave; hợp với:</p>\r\n\r\n<p>- Trẻ tăng trưởng k&eacute;m (nhẹ c&acirc;n, thấp c&ograve;i, suy dinh dưỡng)</p>\r\n\r\n<p>- Trẻ biếng ăn, ăn kh&ocirc;ng ngon miệng, trẻ c&oacute; nhu cầu năng lượng tăng cao</p>\r\n\r\n<p>- Trẻ k&eacute;m hấp thu, trẻ bệnh cần phục hồi sức khỏe</p>\r\n\r\n<p>H&atilde;y hỏi B&aacute;c sĩ/ chuy&ecirc;n vi&ecirc;n dinh dưỡng để được hướng dẫn cụ thể về nhu cầu dinh dưỡng của trẻ.</p>\r\n\r\n<p><strong>Thành ph&acirc;̀n</strong><br />\r\nNước, maltodextrin, DẦU THỰC VẬT (dầu hướng dương gi&agrave;u oleic, dầu đậu n&agrave;nh, dầu hạt cải, dầu MCT (triglycerid chuỗi trung b&igrave;nh)), ĐẠM (đạm sữa c&ocirc; đặc, đạm đậu n&agrave;nh tinh chế, đạm casein thủy ph&acirc;n&#39;), sucrose, fructo-oligosaccharid (FOS), KHO&Aacute;NG CHẤT (kali phosphat, magi&ecirc; phosphat, canxi phosphat, kali clorid, kali citrate, natri citrat, sắt sulfat, kẽm sulfat, mangan sulfat, đồng sulfat, kali iodid, cr&ocirc;m clorid, natri selenit, natri molybdat), chất ổn định (gel cellulose, gồm cellulose, gồm gellan), L-arginin, chất nhũ h&oacute;a (monoglycerid, lecithin đậu n&agrave;nh), VITAMIN (acid ascorbic, dl-alpha tocopheryl acetat, niacinamid, d-canxi pantothenat, thiamin hydroclorid, pyridoxin hydroclorid, riboflavin, Vitamin A palmitat, acid folic, biotin, phylloquinon, Vitamin D3, menaquinone-7, cyanocobalamin), hương liệu vani tổng hợp, cholin clorid, m-inositol, acid docosahexaenoic (DHA), taurin, L-carnitin.&nbsp;</p>\r\n\r\n<p>Nguồn casein phosphopeptid</p>', 2, 3, NULL, 1, '/storage/uploads/2024/04/15/sua_pediasure4.png', 4, 125000, '2024-04-15 03:59:02', '2024-04-15 03:59:02'),
(29, 'Combo 3 thùng Thực phẩm bổ sung: Enfagrow A+ 360 Brain DHA+ hương Vani, Lốc 3 hộp - 8 lốc/thùng', 'Thực phẩm bổ sung: Enfagrow A+ 360 Brain DHA+ hương Vani, Lốc 3 hộp được nhập khẩu từ Thái Lan', '<p><strong>Đặc điểm sản phẩm:</strong></p>\r\n\r\n<p>- Sữa bột pha sẵn nhập khẩu từ Th&aacute;i Lan</p>\r\n\r\n<p>Th&agrave;nh phần&nbsp;: Nước, sữa bột nguy&ecirc;n kem ( sữa b&ograve;), sucrose, bột cacao, c&aacute;c kho&aacute;ng chất ( đồng sulphat, sắt sulphat, magi&ecirc; phosphat, mangan sulphat, kali cloride, kali hydroxit, natri iodide v&agrave; kẽm sulphat), dầu đơn b&agrave;o ( dầu Mortierella alpina, Crypthecodinium cohnii) l&agrave; nguồn từ axit Arachidonic ( ARA) v&agrave; axit Docosahexaenoic ( DHA), chất nhũ h&oacute;a ( mono v&agrave; diglyceride), c&aacute;c vitamin ( vitamin E, vitamin B5, vitamin D3, choline cloride, vitamin B12, axit folic, vitamin B3, vitamin K, vitamin B6, vitamin C, vitamin B1 v&agrave; vitamin A palmitat), siro mật bắp ( thực vật), carrageenan ( thực vật), đường lactose.</p>\r\n\r\n<p><strong>Hướng dẫn bảo quản:</strong></p>\r\n\r\n<p><strong>-&nbsp;</strong>C&oacute; thể kh&ocirc;ng cần giữ lạnh</p>\r\n\r\n<p>- Nếu đ&atilde; mở, cần để trong tủ lạnh v&agrave; sử dụng trong 24 giờ</p>\r\n\r\n<p>- Lắc đều trước khi uống</p>\r\n\r\n<p>Hướng dẫn sử dụng&nbsp;: C&oacute; thể sử dụng từ 1- 3 hộp/ng&agrave;y</p>\r\n\r\n<p>Hạn sử dụng:&nbsp;D&ugrave;ng trước hạn sử dụng (HSD) được in tr&ecirc;n nắp hộp</p>\r\n\r\n<p>Địa chỉ sản xuất: 89/2, Moo 8, Soi Watsuansom, Poochaosamingprai Road, Tambon Samrong Tai,. Amphoe Phra Pradaeng, Samut Prakan 10130, Thailand.</p>\r\n\r\n<p>Xuất xứ:Th&aacute;i Lan</p>', 2, 4, NULL, 1, '/storage/uploads/2024/04/15/sua_enfa1.jpg', 3, 877000, '2024-04-15 04:01:37', '2024-04-15 04:01:37'),
(30, 'Thùng thực phẩm bổ sung: Enfagrow A 360 Brain DHA hương Vani - 8 lốc', 'Thực phẩm bổ sung: Enfagrow A+ 360 Brain DHA+ hương Vani, Lốc 3 hộp được nhập khẩu từ Thái Lan', '<p><strong>Đặc điểm sản phẩm:</strong></p>\r\n\r\n<p>- Sữa bột pha sẵn nhập khẩu từ Th&aacute;i Lan</p>\r\n\r\n<p>Th&agrave;nh phần&nbsp;: Nước, sữa bột nguy&ecirc;n kem ( sữa b&ograve;), sucrose, bột cacao, c&aacute;c kho&aacute;ng chất ( đồng sulphat, sắt sulphat, magi&ecirc; phosphat, mangan sulphat, kali cloride, kali hydroxit, natri iodide v&agrave; kẽm sulphat), dầu đơn b&agrave;o ( dầu Mortierella alpina, Crypthecodinium cohnii) l&agrave; nguồn từ axit Arachidonic ( ARA) v&agrave; axit Docosahexaenoic ( DHA), chất nhũ h&oacute;a ( mono v&agrave; diglyceride), c&aacute;c vitamin ( vitamin E, vitamin B5, vitamin D3, choline cloride, vitamin B12, axit folic, vitamin B3, vitamin K, vitamin B6, vitamin C, vitamin B1 v&agrave; vitamin A palmitat), siro mật bắp ( thực vật), carrageenan ( thực vật), đường lactose.</p>\r\n\r\n<p><strong>Hướng dẫn bảo quản:</strong></p>\r\n\r\n<p><strong>-&nbsp;</strong>C&oacute; thể kh&ocirc;ng cần giữ lạnh</p>\r\n\r\n<p>- Nếu đ&atilde; mở, cần để trong tủ lạnh v&agrave; sử dụng trong 24 giờ</p>\r\n\r\n<p>- Lắc đều trước khi uống</p>\r\n\r\n<p>Hướng dẫn sử dụng&nbsp;: C&oacute; thể sử dụng từ 1- 3 hộp/ng&agrave;y</p>\r\n\r\n<p>Hạn sử dụng:&nbsp;D&ugrave;ng trước hạn sử dụng (HSD) được in tr&ecirc;n nắp hộp</p>\r\n\r\n<p>Địa chỉ sản xuất: 89/2, Moo 8, Soi Watsuansom, Poochaosamingprai Road, Tambon Samrong Tai,. Amphoe Phra Pradaeng, Samut Prakan 10130, Thailand.</p>\r\n\r\n<p>Xuất xứ:Th&aacute;i Lan</p>', 2, 4, NULL, 1, '/storage/uploads/2024/04/15/sua_enfa2.jpg', 1, 309, '2024-04-15 04:03:15', '2024-04-15 04:03:15'),
(31, 'Thực phẩm bổ sung: Enfagrow A+ 360 Brain DHA+ hương Vani, Lốc 3 hộp', 'Sữa bột pha sẵn Enfagrow A+ là sản phẩm dành cho bé từ 2 tuổi trở lên, bổ sung các dưỡng chất thiết yếu để bé không những thông minh, mà còn cao lớn, khỏe mạnh.', '<p dir=\"ltr\">Ưu điểm nổi bật</p>\r\n\r\n<p dir=\"ltr\">. Được đặc chế tr&ecirc;n nền tảng khoa học đ&aacute;p ứng nhu cầu dinh dưỡng cần thiết v&agrave; li&ecirc;n tục cho sự ph&aacute;t triển của n&atilde;o bộ theo từng độ tuổi, để b&eacute; y&ecirc;u lu&ocirc;n được cung cấp đầy đủ dinh dưỡng mọi l&uacute;c, mọi nơi;</p>\r\n\r\n<p dir=\"ltr\">. Tăng cường th&ecirc;m h&agrave;m lượng cao 23 Vitamin &amp; kho&aacute;ng chất cho sự ph&aacute;t triển chiều cao v&agrave; thể chất to&agrave;n diện của trẻ;</p>\r\n\r\n<p dir=\"ltr\">. C&ocirc;ng thức tăng cường DHA v&agrave; Choline*, hỗ trợ ph&aacute;t triển tr&iacute; n&atilde;o to&agrave;n diện;</p>\r\n\r\n<p dir=\"ltr\">. H&agrave;m lượng cao Kẽm v&agrave; Vitamin C hỗ trợ ph&aacute;t triển thể chất khỏe mạnh;</p>\r\n\r\n<p dir=\"ltr\">. H&agrave;m lượng cao Canxi v&agrave; Phốt pho hỗ trợ ph&aacute;t triển chiều cao;</p>\r\n\r\n<p dir=\"ltr\">. Vị Vani thơm ngon dễ uống.</p>\r\n\r\n<p dir=\"ltr\">Th&agrave;nh phần</p>\r\n\r\n<p dir=\"ltr\">Sữa bột pha sẵn (sữa nước) Enfagrow A+ 360&deg; Brain DHA+ c&oacute; th&agrave;nh phần gồm nước, sữa bột nguy&ecirc;n kem, đường sucrose, chất ổn định (tinh bột biến t&iacute;nh), c&aacute;c chất kho&aacute;ng (kali clorua, magi&ecirc; photphat, kali hydroxit, sắt sulfat, kẽm sulfat, đồng sulfat, mangan sulfat v&agrave; natri iodide), dầu đơn b&agrave;o (dầu Mortierella alpina, Crypthecodinium cohnii) l&agrave; nguồn của Ax&iacute;t Arachidonic (ARA) v&agrave; Ax&iacute;t Docosahexaenoic (DHA), hương vani tổng hợp, vitamin (choline clorua, natri ascorbate, alpha-tocopheryl acetate, phytonadione, retinyl palmitate, niacinamide, cyanocobalamin, cholecalciferol, canxi pantothenate, pyridoxine hydrochloride, thiamin hydrochloride v&agrave; ax&iacute;t folic), chất nhũ h&oacute;a (mono v&agrave; diglyceride), sir&ocirc; mật bắp, đường lactose.</p>', 2, 4, NULL, 1, '/storage/uploads/2024/04/15/sua_enfa3.jpg', 3, 43000, '2024-04-15 04:04:57', '2024-04-15 04:04:57'),
(32, 'Combo 2 Sữa Nutifood Varna Complete 237ml (lốc 6 chai)', 'Varna Complete là sản phẩm dành cho người lớn giúp phòng ngừa và phục hồi sức khỏe nhanh.', '<p>Ưu điểm nổi bật</p>\r\n\r\n<p dir=\"ltr\">. C&ocirc;ng thức FRP* &ndash; Ph&ograve;ng ngừa &amp; phục hồi sức khỏe nhanh.</p>\r\n\r\n<p dir=\"ltr\">. Xương chắc, cơ khỏe: Vitamin K2 kết hợp c&ugrave;ng calci, Vitamin D3, Phospho ngăn ngừa t&igrave;nh trạng lo&atilde;ng xương. Protein chất lượng cao hạn chế t&igrave;nh trạng mất cơ;</p>\r\n\r\n<p dir=\"ltr\">. Tốt cho tim mạch: MUFA, PUFA gi&uacute;p giảm cholesterol trong m&aacute;u, ổn định huyết &aacute;p, bảo vệ tim mạch;</p>\r\n\r\n<p dir=\"ltr\">. Hỗ trợ tr&iacute; nhớ: Cholin hỗ trợ hoạt động n&atilde;o bộ, hạn chế t&igrave;nh trạng giảm tr&iacute; nhớ;</p>\r\n\r\n<p dir=\"ltr\">. Phục hồi nhanh: Năng lượng cao v&agrave; Protein chất lượng cao với MCT, Kẽm, Vitamin C gi&uacute;p bảo vệ v&agrave; phục hồi sức người bệnh nhanh;</p>\r\n\r\n<p dir=\"ltr\">. Tăng cường miễn dịch v&agrave; hệ ti&ecirc;u h&oacute;a khỏe mạnh: Hệ men vi sinh Bifidobacterium Lactis kết hợp c&ugrave;ng Vitamin A, E, Selen, Kẽm gi&uacute;p tăng cường hệ miễn dịch. FOS/Inulin v&agrave; Vitamin nh&oacute;m B hỗ trợ hệ đường ruột khỏe mạnh.</p>\r\n\r\n<p dir=\"ltr\">(*) Fast Recovery and Prevention: Ph&ograve;ng ngừa &amp; Phục hồi sức khỏe nhanh</p>\r\n\r\n<p dir=\"ltr\">Đối tượng sử dụng&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Người lớn ăn uống k&eacute;m hoặc cần tăng cường dinh dưỡng.</p>\r\n\r\n<p dir=\"ltr\">. Người bệnh cần phục hồi sức khỏe.</p>\r\n\r\n<p dir=\"ltr\">. Người dị ứng với đường Lactose.</p>\r\n\r\n<p dir=\"ltr\">. Sản phẩm c&oacute; thể sử dụng cho đối tượng trẻ lớn hơn 10 tuổi dưới sự chỉ định của nh&acirc;n vi&ecirc;n y tế.</p>\r\n\r\n<p dir=\"ltr\">Th&agrave;nh phần</p>\r\n\r\n<p dir=\"ltr\">Nước, maltodextrin, đường sucrose, chất b&eacute;o thực vật, đạm sữa c&ocirc; đặc, đạm đậu n&agrave;nh, chất xơ thực phẩm (FOS/ Inulin), medium chain triglycerides (MCT), chất ổn định v&agrave; nhũ h&oacute;a (466, 460(i), 407, 322(i)), hương liệu tổng hợp d&ugrave;ng cho thực phẩm, kho&aacute;ng chất (kali citrat, calci phosphat, calci carbonat, sắt (III) pyrophosphat, magnesi phosphat, magnesi oxyd, natri selenit, natri molybdat, natri clorid, mangan sulfat, crom clorid, kẽm sulfat, kali iodid, kẽm oxyd, kali iodat), cholin, vitamin (A, D3, C, E, K1, K2, B1, B2, B3, B5, B6, B12, biotin, axit folic).C&oacute; chứa sữa v&agrave; đậu n&agrave;nh. Kh&ocirc;ng sử dụng chất bảo quản.</p>', 2, 6, NULL, 1, '/storage/uploads/2024/04/15/sua_nutifood1.png', 2, 370000, '2024-04-15 04:07:03', '2024-04-15 04:13:48'),
(33, 'Thùng Sữa dinh dưỡng pha sẵn Nuvi Grow 110ml (Lốc 4 hộp)', 'Nuvi Grow với công thức Nuvi Power chứa bộ ba dưỡng chất Canxi, Vitamin K2, Vitamin D3 giúp xương chắc khỏe hơn nhắm tối ưu tiềm năng chiều cao của trẻ.', '<div class=\"addclass\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><strong>Ưu điểm nổi bật</strong><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\">. Chứa bộ ba dưỡng chất Canxi, Vitamin K2, Vitamin D3 gi&uacute;p xương chắc khỏe hơn;&nbsp;</span></span></span></span></span></div>\r\n\r\n<div style=\"text-align:justify\">\r\n<p><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\">. Dưỡng chất HMO được nhập khẩu 100% từ Ch&acirc;u &Acirc;u gi&uacute;p tăng đề kh&aacute;ng;<br />\r\n. C&ocirc;ng thức Power được nghi&ecirc;n cứu v&agrave; ph&aacute;t triển bởi Viện Nghi&ecirc;n cứu Dinh dưỡng Nutifood Thụy Điển theo nhu cầu dinh dưỡng của trẻ em Việt Nam.</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><strong>Lượng d&ugrave;ng khuyến nghị</strong><br />\r\nD&ugrave;ng 2-3 hộp mỗi ng&agrave;y gi&uacute;p đ&aacute;p ứng nhu cầu Canxi, Vitamin D3, Vitamin K theo nhu cầu dinh dưỡng khuyến nghị cho người Việt Nam 2016.</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><strong>Th&agrave;nh phần</strong><br />\r\nNước, sữa bột (9%), đường, chất b&eacute;o sữa, chất b&eacute;o thực vật, chất xơ thực phẩm (FOS/Inulin), maltodextrin, chất ổn định (466, 460 (i), 407, 471, 418), hương liệu giống tự nhi&ecirc;n d&ugrave;ng cho thực phẩm, lysin, DHA từ dầu c&aacute;, cholin, 2&#39;-Fucosyllactose (2&#39;FL), hỗn hợp Vitamin v&agrave; kho&aacute;ng chất (A, D3, C, E, K1, K2, B1, B3, B5, B6, B12, biotin, acid folic, kẽm oxyd,, kali iodid, inositol, taurin, lutein. C&oacute; chứa sữa, đậu n&agrave;nh. Kh&ocirc;ng sử dụng chất bảo quản.</span></span></span></span></p>\r\n</div>', 2, 6, NULL, 1, '/storage/uploads/2024/04/15/sua_nutifood2.png', 1, 336000, '2024-04-15 04:08:33', '2024-04-15 04:13:36'),
(34, 'Combo 2 Thùng Sữa dinh dưỡng pha sẵn Nuvi Grow 110ml (Lốc 4 hộp)', 'Nuvi Grow với công thức Nuvi Power chứa bộ ba dưỡng chất Canxi, Vitamin K2, Vitamin D3 giúp xương chắc khỏe hơn nhắm tối ưu tiềm năng chiều cao của trẻ.', '<p><img src=\"https://cdn1.concung.com/storage/2023/06/1686881905-210614-nuvi-grow-listing-con-cung-10-min-crop.png\" /></p>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><strong>Ưu điểm nổi bật</strong><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\">. Chứa bộ ba dưỡng chất Canxi, Vitamin K2, Vitamin D3 gi&uacute;p xương chắc khỏe hơn;&nbsp;</span></span></span></span></span></div>\r\n\r\n<div style=\"text-align:justify\">\r\n<p><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\">. Dưỡng chất HMO được nhập khẩu 100% từ Ch&acirc;u &Acirc;u gi&uacute;p tăng đề kh&aacute;ng;<br />\r\n. C&ocirc;ng thức Power được nghi&ecirc;n cứu v&agrave; ph&aacute;t triển bởi Viện Nghi&ecirc;n cứu Dinh dưỡng Nutifood Thụy Điển theo nhu cầu dinh dưỡng của trẻ em Việt Nam.</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><strong>Lượng d&ugrave;ng khuyến nghị</strong><br />\r\nD&ugrave;ng 2-3 hộp mỗi ng&agrave;y gi&uacute;p đ&aacute;p ứng nhu cầu Canxi, Vitamin D3, Vitamin K theo nhu cầu dinh dưỡng khuyến nghị cho người Việt Nam 2016.</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><strong>Th&agrave;nh phần</strong><br />\r\nNước, sữa bột (9%), đường, chất b&eacute;o sữa, chất b&eacute;o thực vật, chất xơ thực phẩm (FOS/Inulin), maltodextrin, chất ổn định (466, 460 (i), 407, 471, 418), hương liệu giống tự nhi&ecirc;n d&ugrave;ng cho thực phẩm, lysin, DHA từ dầu c&aacute;, cholin, 2&#39;-Fucosyllactose (2&#39;FL), hỗn hợp Vitamin v&agrave; kho&aacute;ng chất (A, D3, C, E, K1, K2, B1, B3, B5, B6, B12, biotin, acid folic, kẽm oxyd,, kali iodid, inositol, taurin, lutein. C&oacute; chứa sữa, đậu n&agrave;nh. Kh&ocirc;ng sử dụng chất bảo quản.</span></span></span></span></p>\r\n</div>', 2, 6, NULL, 1, '/storage/uploads/2024/04/15/sua_nutifood3.png', 2, 672000, '2024-04-15 04:09:58', '2024-04-15 04:09:58'),
(35, 'Sữa dinh dưỡng pha sẵn Nuvi Grow 110ml (Lốc 4 hộp)', 'Nuvi Grow với công thức Nuvi Power chứa bộ ba dưỡng chất Canxi, Vitamin K2, Vitamin D3 giúp xương chắc khỏe hơn nhắm tối ưu tiềm năng chiều cao của trẻ.', '<p><img src=\"https://cdn1.concung.com/storage/2023/06/1686881905-210614-nuvi-grow-listing-con-cung-10-min-crop.png\" /></p>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><strong>Ưu điểm nổi bật</strong><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\">. Chứa bộ ba dưỡng chất Canxi, Vitamin K2, Vitamin D3 gi&uacute;p xương chắc khỏe hơn;&nbsp;</span></span></span></span></span></div>\r\n\r\n<div style=\"text-align:justify\">\r\n<p><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\">. Dưỡng chất HMO được nhập khẩu 100% từ Ch&acirc;u &Acirc;u gi&uacute;p tăng đề kh&aacute;ng;<br />\r\n. C&ocirc;ng thức Power được nghi&ecirc;n cứu v&agrave; ph&aacute;t triển bởi Viện Nghi&ecirc;n cứu Dinh dưỡng Nutifood Thụy Điển theo nhu cầu dinh dưỡng của trẻ em Việt Nam.</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><strong>Lượng d&ugrave;ng khuyến nghị</strong><br />\r\nD&ugrave;ng 2-3 hộp mỗi ng&agrave;y gi&uacute;p đ&aacute;p ứng nhu cầu Canxi, Vitamin D3, Vitamin K theo nhu cầu dinh dưỡng khuyến nghị cho người Việt Nam 2016.</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><strong>Th&agrave;nh phần</strong><br />\r\nNước, sữa bột (9%), đường, chất b&eacute;o sữa, chất b&eacute;o thực vật, chất xơ thực phẩm (FOS/Inulin), maltodextrin, chất ổn định (466, 460 (i), 407, 471, 418), hương liệu giống tự nhi&ecirc;n d&ugrave;ng cho thực phẩm, lysin, DHA từ dầu c&aacute;, cholin, 2&#39;-Fucosyllactose (2&#39;FL), hỗn hợp Vitamin v&agrave; kho&aacute;ng chất (A, D3, C, E, K1, K2, B1, B3, B5, B6, B12, biotin, acid folic, kẽm oxyd,, kali iodid, inositol, taurin, lutein. C&oacute; chứa sữa, đậu n&agrave;nh. Kh&ocirc;ng sử dụng chất bảo quản.</span></span></span></span></p>\r\n</div>', 2, 6, NULL, 1, '/storage/uploads/2024/04/15/sua_nutifood4.png', 4, 28000, '2024-04-15 04:11:18', '2024-04-15 04:11:18'),
(36, 'Sữa Nutifood Varna Complete 237ml (lốc 6 chai)', 'Varna Complete là sản phẩm dành cho người lớn giúp phòng ngừa và phục hồi sức khỏe nhanh.', '<p>Ưu điểm nổi bật</p>\r\n\r\n<p dir=\"ltr\">. C&ocirc;ng thức FRP* &ndash; Ph&ograve;ng ngừa &amp; phục hồi sức khỏe nhanh.</p>\r\n\r\n<p dir=\"ltr\">. Xương chắc, cơ khỏe: Vitamin K2 kết hợp c&ugrave;ng calci, Vitamin D3, Phospho ngăn ngừa t&igrave;nh trạng lo&atilde;ng xương. Protein chất lượng cao hạn chế t&igrave;nh trạng mất cơ;</p>\r\n\r\n<p dir=\"ltr\">. Tốt cho tim mạch: MUFA, PUFA gi&uacute;p giảm cholesterol trong m&aacute;u, ổn định huyết &aacute;p, bảo vệ tim mạch;</p>\r\n\r\n<p dir=\"ltr\">. Hỗ trợ tr&iacute; nhớ: Cholin hỗ trợ hoạt động n&atilde;o bộ, hạn chế t&igrave;nh trạng giảm tr&iacute; nhớ;</p>\r\n\r\n<p dir=\"ltr\">. Phục hồi nhanh: Năng lượng cao v&agrave; Protein chất lượng cao với MCT, Kẽm, Vitamin C gi&uacute;p bảo vệ v&agrave; phục hồi sức người bệnh nhanh;</p>\r\n\r\n<p dir=\"ltr\">. Tăng cường miễn dịch v&agrave; hệ ti&ecirc;u h&oacute;a khỏe mạnh: Hệ men vi sinh Bifidobacterium Lactis kết hợp c&ugrave;ng Vitamin A, E, Selen, Kẽm gi&uacute;p tăng cường hệ miễn dịch. FOS/Inulin v&agrave; Vitamin nh&oacute;m B hỗ trợ hệ đường ruột khỏe mạnh.</p>\r\n\r\n<p dir=\"ltr\">(*) Fast Recovery and Prevention: Ph&ograve;ng ngừa &amp; Phục hồi sức khỏe nhanh</p>\r\n\r\n<p dir=\"ltr\">Đối tượng sử dụng&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Người lớn ăn uống k&eacute;m hoặc cần tăng cường dinh dưỡng.</p>\r\n\r\n<p dir=\"ltr\">. Người bệnh cần phục hồi sức khỏe.</p>\r\n\r\n<p dir=\"ltr\">. Người dị ứng với đường Lactose.</p>\r\n\r\n<p dir=\"ltr\">. Sản phẩm c&oacute; thể sử dụng cho đối tượng trẻ lớn hơn 10 tuổi dưới sự chỉ định của nh&acirc;n vi&ecirc;n y tế.</p>\r\n\r\n<p dir=\"ltr\">Th&agrave;nh phần</p>\r\n\r\n<p dir=\"ltr\">Nước, maltodextrin, đường sucrose, chất b&eacute;o thực vật, đạm sữa c&ocirc; đặc, đạm đậu n&agrave;nh, chất xơ thực phẩm (FOS/ Inulin), medium chain triglycerides (MCT), chất ổn định v&agrave; nhũ h&oacute;a (466, 460(i), 407, 322(i)), hương liệu tổng hợp d&ugrave;ng cho thực phẩm, kho&aacute;ng chất (kali citrat, calci phosphat, calci carbonat, sắt (III) pyrophosphat, magnesi phosphat, magnesi oxyd, natri selenit, natri molybdat, natri clorid, mangan sulfat, crom clorid, kẽm sulfat, kali iodid, kẽm oxyd, kali iodat), cholin, vitamin (A, D3, C, E, K1, K2, B1, B2, B3, B5, B6, B12, biotin, axit folic).C&oacute; chứa sữa v&agrave; đậu n&agrave;nh. Kh&ocirc;ng sử dụng chất bảo quản.</p>', 2, 6, NULL, 1, '/storage/uploads/2024/04/15/sua_nutifood5.png', 6, 195000, '2024-04-15 04:12:38', '2024-04-15 04:12:38'),
(37, 'Combo 2 lốc Sữa tươi tiệt trùng có đường Dutch Lady 180ml - Lốc 4 hộp', 'Sữa tươi tiệt trùng có đường Dutch Lady 180ml - Lốc 4 hộp được làm từ nguồn nguyên liệu sữa tươi và trải qua quy trình sản xuất/ kiểm soát chất lượng theo tiêu chuẩn được quốc tế công nhận. Sản phẩm giúp bổ sung protein, phốt pho, Vitamin B2 và B12 cùng nhiều vitamin và khoáng chất cần thiết cho cơ thể.', '<p><img src=\"https://cdn1.concung.com/storage/2022/12/1669948695-sua-tuoi-tiet-trung-co-duong-dutch-lady-180ml-loc-4-hop.jpg\" /></p>\r\n\r\n<p><strong>Ưu điểm nổi bật</strong><br />\r\n<strong>.&nbsp;</strong>Gi&uacute;p bổ sung protein, phốt pho, vitamin B2 v&agrave; B12 c&ugrave;ng nhiều vitamin v&agrave; kho&aacute;ng chất cần thiết cho cơ thể khỏe mạnh.<br />\r\n<strong>.&nbsp;</strong>Sữa tươi c&oacute; đường gi&uacute;p b&eacute; dễ uống, th&iacute;ch uống hơn, từ đ&oacute; gi&uacute;p cơ thể khoẻ mạnh v&agrave; tr&agrave;n đầy năng lượng hơn.<br />\r\n<strong>.&nbsp;</strong>Ti&ecirc;u chuẩn H&agrave; Lan, an to&agrave;n vượt chuẩn 11 lần.<br />\r\n<br />\r\n<strong>Hướng dẫn sử dụng<br />\r\n.&nbsp;</strong>Ngon hơn khi uống lạnh<br />\r\n<strong>.&nbsp;</strong>Lắc đều trước khi uống<br />\r\n<strong>.&nbsp;</strong>Sản phẩm sử dụng cho một lần uống<br />\r\n<strong>.&nbsp;</strong>Sản phẩm kh&ocirc;ng sử dụng cho trẻ dưới 1 tuổi<br />\r\n<br />\r\n<strong>Hướng dẫn bảo quản</strong><br />\r\nBảo quản nơi kh&ocirc; r&aacute;o v&agrave; tho&aacute;ng m&aacute;t﻿</p>', 2, 7, NULL, 1, '/storage/uploads/2024/04/15/sua_dutchlady1.png', 2, 57000, '2024-04-15 04:20:30', '2024-04-15 04:20:30'),
(38, 'Sữa tươi tiệt trùng có đường Dutch Lady 180ml - Lốc 4 hộp', 'ữa tươi tiệt trùng có đường Dutch Lady 180ml - Lốc 4 hộp được làm từ nguồn nguyên liệu sữa tươi và trải qua quy trình sản xuất/ kiểm soát chất lượng theo tiêu chuẩn được quốc tế công nhận. Sản phẩm giúp bổ sung protein, phốt pho, Vitamin B2 và B12 cùng nhiều vitamin và khoáng chất cần thiết cho cơ thể.', '<p><img alt=\"Sữa tươi tiệt trùng có đường Dutch Lady 180ml1\" src=\"https://cdn1.concung.com/storage/images/TOY-T11/1e7dd84af654c8a39aed956345befd51.jpg\" /></p>\r\n\r\n<p><strong>Ưu điểm nổi bật<br />\r\n.&nbsp;</strong>Gi&uacute;p bổ sung protein, phốt pho, vitamin B2 v&agrave; B12 c&ugrave;ng nhiều vitamin v&agrave; kho&aacute;ng chất cần thiết cho cơ thể khỏe mạnh.<br />\r\n<strong>.&nbsp;</strong>Sữa tươi c&oacute; đường gi&uacute;p b&eacute; dễ uống, th&iacute;ch uống hơn, từ đ&oacute; gi&uacute;p cơ thể khoẻ mạnh v&agrave; tr&agrave;n đầy năng lượng hơn.<br />\r\n<strong>.&nbsp;</strong>Ti&ecirc;u chuẩn H&agrave; Lan, an to&agrave;n vượt chuẩn 11 lần.<br />\r\n<br />\r\n<strong>Hướng dẫn sử dụng<br />\r\n.&nbsp;</strong>Ngon hơn khi uống lạnh<br />\r\n<strong>.&nbsp;</strong>Lắc đều trước khi uống<br />\r\n<strong>.&nbsp;</strong>Sản phẩm sử dụng cho một lần uống<br />\r\n<strong>.&nbsp;</strong>Sản phẩm kh&ocirc;ng sử dụng cho trẻ dưới 1 tuổi<br />\r\n<br />\r\n<strong>Hướng dẫn bảo quản</strong><br />\r\nBảo quản nơi kh&ocirc; r&aacute;o v&agrave; tho&aacute;ng m&aacute;t﻿</p>', 2, 7, NULL, 1, '/storage/uploads/2024/04/15/sua_dutchlady2.png', 1, 32000, '2024-04-15 04:21:47', '2024-04-15 04:21:47'),
(39, 'Thùng Sữa tươi tiệt trùng có đường Dutch Lady 180ml - 12 lốc', 'Sữa tươi tiệt trùng có đường Dutch Lady 180ml - Lốc 4 hộp được làm từ nguồn nguyên liệu sữa tươi và trải qua quy trình sản xuất/ kiểm soát chất lượng theo tiêu chuẩn được quốc tế công nhận. Sản phẩm giúp bổ sung protein, phốt pho, Vitamin B2 và B12 cùng nhiều vitamin và khoáng chất cần thiết cho cơ thể.', '<p><img src=\"https://cdn1.concung.com/storage/2022/11/1669370902-sua-tuoi-tiet-trung-co-duong-dutch-lady-180ml-loc-4-hop-1.jpg\" /></p>\r\n\r\n<p><strong>Ưu điểm nổi bật<br />\r\n.&nbsp;</strong>Gi&uacute;p bổ sung protein, phốt pho, vitamin B2 v&agrave; B12 c&ugrave;ng nhiều vitamin v&agrave; kho&aacute;ng chất cần thiết cho cơ thể khỏe mạnh.<br />\r\n<strong>.&nbsp;</strong>Sữa tươi c&oacute; đường gi&uacute;p b&eacute; dễ uống, th&iacute;ch uống hơn, từ đ&oacute; gi&uacute;p cơ thể khoẻ mạnh v&agrave; tr&agrave;n đầy năng lượng hơn.<br />\r\n<strong>.&nbsp;</strong>Ti&ecirc;u chuẩn H&agrave; Lan, an to&agrave;n vượt chuẩn 11 lần.<br />\r\n<br />\r\n<strong>Hướng dẫn sử dụng<br />\r\n.&nbsp;</strong>Ngon hơn khi uống lạnh<br />\r\n<strong>.&nbsp;</strong>Lắc đều trước khi uống<br />\r\n<strong>.&nbsp;</strong>Sản phẩm sử dụng cho một lần uống<br />\r\n<strong>.&nbsp;</strong>Sản phẩm kh&ocirc;ng sử dụng cho trẻ dưới 1 tuổi<br />\r\n<br />\r\n<strong>Hướng dẫn bảo quản</strong><br />\r\nBảo quản nơi kh&ocirc; r&aacute;o v&agrave; tho&aacute;ng m&aacute;t﻿﻿</p>', 2, 7, NULL, 1, '/storage/uploads/2024/04/15/sua_dutchlady3.png', 1, 384000, '2024-04-15 04:23:03', '2024-04-15 04:23:03'),
(40, 'Thực phẩm bảo vệ sức khỏe Nature\'s Way Kids Smart Drops DHA (20ml)', 'Nature\'s Way Kids Smart Drops DHA là thực phẩm bảo vệ sức khoẻ dành cho trẻ sơ sinh từ 4 tuần tuổi đến từ Úc. Sản phẩm không chứa chất bảo quản, không chất tạo màu, không chất tạo vị nên rất an toàn với con yêu.', '<p><img src=\"https://cdn1.concung.com/2023/08/54912-104547-large_mobile/thuc-pham-bao-ve-suc-khoe-nature-s-way-kids-smart-drops-dha-20ml.png\" /></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><strong>Ưu điểm nổi bật</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#000000\"><img alt=\"Có thể là hình ảnh về văn bản cho biết \'Kids Smart. draps DHA cao cấp từ cá cơm Nature Kids Sr drops DHA KHÔNG CHỨA THỦY NGÂN Concentrated Omega-3 triglycerides 463.88 mg/mL toDHA 00.5mg/mL help support children\'s: Brain function Eye health Cognitive function .Nervous system health Elv sweeteners. preservatives 20mLquid USTL278590 278590 Û 보さ也\'\" src=\"https://lh4.googleusercontent.com/YcAbuTRKv_v8GoermVUBfS6fuWl2nFfkEzPc-aa_1wYrMwUDDapNbKdYUeUCOC4z508jRS0Fr0s9jPNjjt8wZ-eHEwW9cTrXBVI-UGoVE5HDVNQkgZ88PovGkQcLcB0ZgxB762XX\" style=\"border-style:none; box-sizing:border-box; height:auto !important; max-width:100%; vertical-align:middle; width:535px\" /></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><strong>. Nature&#39;s Way Kids Smart Drops DHA </strong></span><span style=\"color:#000000\">được l&agrave;m từ th&agrave;nh phần từ dầu c&aacute; tinh khiết chiết xuất từ c&aacute; cơm, nguồn nguy&ecirc;n liệu n&agrave;y được tuyển chọn từ những loại c&aacute; sống ở tầng nước mặt n&ecirc;n hầu như kh&ocirc;ng nhiễm thủy ng&acirc;n; . Sản phẩm kh&ocirc;ng chứa những chất c&oacute; hại với hệ ti&ecirc;u h&oacute;a non nớt của con như: chất bảo quản, chất tạo m&agrave;u, tạo vị&hellip; Do đ&oacute;, sản phẩm rất an to&agrave;n với cả trẻ sơ sinh v&agrave; trẻ nhỏ; . Cung cấp cho b&eacute; h&agrave;m lượng DHA cao, <strong>Nature&#39;s Way Kids Smart Drops DHA </strong>sẽ hỗ trợ ph&aacute;t triển tr&iacute; n&atilde;o v&agrave; tăng cường thị lực cho con từ sớm; </span><span style=\"color:#000000\">. Mỗi lọ </span><span style=\"color:#000000\"><strong>Nature&#39;s Way Kids Smart Drops DHA </strong></span><span style=\"color:#000000\">c&ograve;n đi k&egrave;m ống h&uacute;t đo định lượng, gi&uacute;p mẹ c&acirc;n đo liều d&ugrave;ng ch&iacute;nh x&aacute;c một c&aacute;ch dễ d&agrave;ng.&nbsp;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><strong>Đối tượng sử dụng&nbsp;</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\">Trẻ sơ sinh từ 4 tuần tuổi&nbsp;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><strong>Hướng dẫn sử dụng&nbsp; </strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\">Liều d&ugrave;ng ph&ugrave; hợp với từng đối tượng:&nbsp;</span></p>\r\n\r\n<ul>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">Trẻ sơ sinh (dưới 12 th&aacute;ng tuổi): 0.5ml/ ng&agrave;y&nbsp;</span></li>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">Trẻ 12 th&aacute;ng đến 2 tuổi: 1ml/ng&agrave;y&nbsp;</span></li>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">Trẻ từ 2 tuổi: 1-2ml/ng&agrave;y </span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><strong>Hướng dẫn bảo quản</strong></span></p>\r\n\r\n<ul>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">Bảo quản nơi kh&ocirc; m&aacute;t, tr&aacute;nh &aacute;nh s&aacute;ng trực tiếp, nhiệt độ dưới 25&deg;C.&nbsp;</span></li>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">Để xa tầm với trẻ em.&nbsp;</span></li>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">Kh&ocirc;ng sử dụng khi m&agrave;ng d&aacute;n bị hỏng hoặc bị mất.</span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><strong>Th&agrave;nh phần ch&iacute;nh&nbsp;</strong></span></p>\r\n\r\n<ul>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">Mỗi ml chứa: 463,88 mg Omega-3 triglyceride. Trong đ&oacute;: DHA (Axit docosahexaenoic): 200,5 mg+ EPA (Axit Eicosapentaenoic): 42 mg.&nbsp;</span></li>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">Phụ liệu: Dầu hướng dương, dầu đậu n&agrave;nh vừa đủ</span></li>\r\n</ul>', 4, 9, NULL, 1, '/storage/uploads/2024/04/15/natureway1.png', 1, 350000, '2024-04-15 04:26:37', '2024-04-15 04:26:37');
INSERT INTO `products` (`id`, `name`, `description`, `content`, `producttype_id`, `trademark_id`, `supplier_id`, `promotion_id`, `thumb`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(41, 'Gummies Nature\'s Way Kids Smart Vita Gummies bổ sung Multi-Vitamin và Omega 3', 'Nature\'s Way Kids Smart Vita Gummies Multivitamin + omega3 phù hợp cho bé từ 2 tuổi trở lên. Sản phẩm sở hữu công thức đa dạng dưỡng chất, giúp hỗ trợ sự tăng trưởng và phát triển toàn diện của trẻ.', '<p dir=\"ltr\"><strong>Ưu điểm nổi bật&nbsp;</strong></p>\r\n\r\n<p dir=\"ltr\">. C&ocirc;ng thức chứa hơn 10 loại vitamin v&agrave; kho&aacute;ng chất&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Bổ sung dầu c&aacute; tự nhi&ecirc;n với tỷ lệ v&agrave;ng DHA:EPA (tỷ lệ 5:1): 17,5/3,18&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Gi&uacute;p hỗ trợ sự tăng trưởng v&agrave; ph&aacute;t triển to&agrave;n diện của trẻ</p>\r\n\r\n<p dir=\"ltr\">. Tăng cường chức năng n&atilde;o bộ, tăng tư duy, tăng t&iacute;nh s&aacute;ng tạo&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Tăng cường tr&iacute; nhớ, gi&uacute;p mắt s&aacute;ng khỏe.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. K&iacute;ch th&iacute;ch trẻ ăn uống ngon miệng hơn, gi&uacute;p cải thiện c&acirc;n nặng v&agrave; hạn chế t&igrave;nh trạng ốm vặt.</p>\r\n\r\n<p dir=\"ltr\">. Sản xuất dưới dạng vi&ecirc;n kẹo dẻo vị berry thơm ngon, dễ ăn, ph&ugrave; hợp với sở th&iacute;ch của con&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>Hướng dẫn sử dụng&nbsp;</strong></p>\r\n\r\n<p dir=\"ltr\">. Từ 2-3 tuổi: 1 vi&ecirc;n 1 ng&agrave;y</p>\r\n\r\n<p dir=\"ltr\">. Từ 4 tuổi trở l&ecirc;n: 2 vi&ecirc;n 1 ng&agrave;y</p>\r\n\r\n<p dir=\"ltr\"><strong>Hướng dẫn bảo quản&nbsp;</strong></p>\r\n\r\n<p dir=\"ltr\">. Bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, dưới 25 độ C</p>\r\n\r\n<p dir=\"ltr\">. Tr&aacute;nh &aacute;nh nắng trực tiếp.</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần&nbsp;</strong></p>\r\n\r\n<p dir=\"ltr\">VitaminC (Ascorbic acid) 20 mg, Vitamin B3 (Nicotinamide) 6 mg, Dl-alpha-Tocopheryl Acetate14,9 mg (tương đương Vitamin E 14,19 IU), Pyridoxine hydrochloride 610 mcg (tương đương: Vitamin B6 500 mcg), Vitamin H (Biotin) 37,5 mcg, Vitamin D3 (Colecalciferol) 5 mcg (tương đương 200IU) (Từ Dry Vitamin D3 100 GFP 2mg, chứa: Colecalciferol, acacia, canxi photphat, dl-alpha-tocopherol, tinh bột ng&ocirc;, triglyceride chuỗi trung b&igrave;nh, sucrose), Vitamin B12(Cyanocobalamin) 2,5 mcg, Thiamine Nitrate 145 mcg (tương đương: Vitamin B1 117,5 mcg),Vitamin B2 (Riboflavin) 115 mcg, Iod (dưới dạng Kali iodide) 15 mcg, Dầu c&aacute; tự nhi&ecirc;n 68,4087mg (Từ Dry n3 DHA 11D (PI 114127) 159,09 mg, chứa: Dầu c&aacute; tự nhi&ecirc;n, Sucrose, tinh bột ng&ocirc;,casein, natri ascorbate, canxi photphat, hỗn hợp tocopherol c&ocirc; đặc, mono-v&agrave; di-glyceride, lecithin v&agrave; ascorbyl palmitate, nước uống) (tương đương: Docosahexaenoic acid (DHA) 17,5 mg; Eicosapentaenoic acid (EPA) 3,18 mg)</p>', 4, 9, NULL, 1, '/storage/uploads/2024/04/15/natureway2.png', 1, 350000, '2024-04-15 04:28:25', '2024-04-15 04:28:25'),
(42, 'Combo 1 Men vi sinh 10 chủng BioAmicus Complete và 1 Vitamin BioAmicus D3 K2-MK7', 'Men vi sinh 10 chủng BioAmicus Complete\r\nLà men vi sinh 10 chủng đầu tiên và duy nhất hiện nay được nhập khẩu nguyên chai từ Canada, BioAmicus Complete được ví như hệ vi sinh đường ruột thu nhỏ với công thức đột phá chứa 10 chủng lợi khuẩn cần thiết có mặt ngay trong đường ruột của trẻ là Lactobacillus và Bifidobacteria. 5-10 giọt mỗi ngày không chỉ đơn thuần giúp trẻ cải thiện hiệu quả tình trạng biếng ăn, kém hấp thu và rối loạn tiêu hóa mà còn tăng cường sức đề kháng giúp trẻ giảm ốm vặt, giảm tỷ lệ sử dụng kháng sinh.', '<p dir=\"ltr\">Ưu điểm vượt trội của sản phẩm</p>\r\n\r\n<p dir=\"ltr\"><img src=\"https://cdn1.concung.com/storage/2022/05/1652343896-6-li%CC%81-do-me%CC%A3-cho%CC%A3n-men-01.png\" /></p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\">- BioAmicus Complete l&agrave; men vi sinh 10 chủng đầu ti&ecirc;n, chứa 10 chủng lợi khuẩn cần c&oacute; mặt ngay trong đường ruột của trẻ.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">- Được v&iacute; như hệ vi sinh đường ruột thu nhỏ, BioAmicus Complete l&agrave; giải ph&aacute;p chăm s&oacute;c sức khỏe to&agrave;n diện với t&igrave;nh trạng rối loạn ti&ecirc;u h&oacute;a, hấp thu k&eacute;m, chậm tăng c&acirc;n.</p>\r\n\r\n<p dir=\"ltr\">-&nbsp; An to&agrave;n cho trẻ sơ sinh v&agrave; trẻ nhỏ với ti&ecirc;u ch&iacute; 5 kh&ocirc;ng: Kh&ocirc;ng m&agrave;u, kh&ocirc;ng m&ugrave;i, kh&ocirc;ng vị, kh&ocirc;ng chất bảo quản.</p>\r\n\r\n<p dir=\"ltr\">- Nhập khẩu ch&iacute;nh h&atilde;ng từ Canada khẳng định chất lượng vượt trội, được h&agrave;ng triệu b&agrave; mẹ tại hơn 30 quốc gia tin d&ugrave;ng.</p>\r\n\r\n<p dir=\"ltr\">- C&oacute; mặt tại bệnh viện&nbsp; lớn như: BV Nhi TW, Phụ sản HN, Phụ sản TW...</p>\r\n\r\n<p dir=\"ltr\">- Đảm bảo c&aacute;c ti&ecirc;u chuẩn của BYT Canada, Dược điển Mỹ.</p>\r\n\r\n<p dir=\"ltr\">Th&agrave;nh phần ch&iacute;nh</p>\r\n\r\n<p dir=\"ltr\">5 giọt mỗi liều chứa tới 1 tỷ lợi khuẩn thuộc 10 chủng, ph&ugrave; hợp với liều khuyến c&aacute;o ph&aacute;t huy t&aacute;c dụng của WHO</p>\r\n\r\n<p dir=\"ltr\">Nh&oacute;m Lactobacillus</p>\r\n\r\n<p dir=\"ltr\">1. Lactobacillus Johnsonii 5467: 10^8 CFU</p>\r\n\r\n<p dir=\"ltr\">2.Lactobacillus Plantarum 1096: 10^8 CFU</p>\r\n\r\n<p dir=\"ltr\">3. Lactobacillus Salivarius 6313: 10^8 CFU&nbsp;</p>\r\n\r\n<p dir=\"ltr\">4. Lactobacillus Reuteri 5454: 10^8 CFU</p>\r\n\r\n<p dir=\"ltr\">5 Lactobacillus Gasseri 6369: 10^8 CFU</p>\r\n\r\n<p dir=\"ltr\">Nh&oacute;m Bifidobacterium</p>\r\n\r\n<p dir=\"ltr\">6. Bifidobacterium B ifidum 5480: 10^8 CFU</p>\r\n\r\n<p dir=\"ltr\">7. Bifidobacterium Breve 6018: 10^8 CFU</p>\r\n\r\n<p dir=\"ltr\">8. Bifidobacterium Longum subsp Infantis 5478: 10^8 CFU</p>\r\n\r\n<p dir=\"ltr\">9. Bifidobacterium Animalis subsp. Lactis 5764: 10^8 CFU</p>\r\n\r\n<p dir=\"ltr\">10. Bifidobacterium Longum 6283: 10^8 CFU</p>\r\n\r\n<p dir=\"ltr\">T&aacute; dược: Dầu hướng dương, dầu dừa ph&acirc;n đoạn, Silicon Dioxide.</p>\r\n\r\n<p dir=\"ltr\">Đối tượng sử dụng</p>\r\n\r\n<p dir=\"ltr\">- Trẻ bị rối loạn ti&ecirc;u h&oacute;a như: t&aacute;o b&oacute;n, ti&ecirc;u chảy, ph&acirc;n sống, biếng ăn, k&eacute;m hấp thu.</p>\r\n\r\n<p dir=\"ltr\">- Trẻ sơ sinh thường n&ocirc;n trớ, quấy kh&oacute;c.</p>\r\n\r\n<p dir=\"ltr\">- Trẻ sử dụng kh&aacute;ng sinh dẫn đến ti&ecirc;u chảy.</p>\r\n\r\n<p dir=\"ltr\">- Trẻ thường xuy&ecirc;n ốm vặt, sức đề kh&aacute;ng k&eacute;m.</p>\r\n\r\n<p dir=\"ltr\">- Dự ph&ograve;ng c&aacute;c vấn đề ti&ecirc;u h&oacute;a cho trẻ.</p>\r\n\r\n<p dir=\"ltr\">Hướng dẫn sử dụng</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Liều d&ugrave;ng</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Liều d&ugrave;ng BioAmicus Complete phụ thuộc v&agrave;o độ tuổi của b&eacute;. Mẹ nhớ bổ sung duy tr&igrave; đủ một liệu tr&igrave;nh 2-3 th&aacute;ng v&agrave; sử dụng theo đ&uacute;ng theo liều lượng sau để đạt được hiệu quả tốt nhất:</p>\r\n\r\n<p dir=\"ltr\">- Trẻ dưới 1 tuổi: 5 giọt/lần, ng&agrave;y d&ugrave;ng 1 lần.</p>\r\n\r\n<p dir=\"ltr\">- Trẻ &gt;12 th&aacute;ng v&agrave; người lớn: 5 giọt/lần, 1-3 lần/ ng&agrave;y.</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">C&aacute;ch d&ugrave;ng</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">- Lắc đều lọ trước khi d&ugrave;ng.</p>\r\n\r\n<p dir=\"ltr\">- Vặn nắp, nghi&ecirc;ng miệng lọ một g&oacute;c khoảng 45 độ, nhỏ 5 giọt ra th&igrave;a sau đ&oacute; cho trẻ uống trực tiếp. Hoặc th&ecirc;m v&agrave;o c&ugrave;ng sữa, nước hay đồ ăn th&iacute;ch hợp.</p>\r\n\r\n<p dir=\"ltr\">- C&oacute; thể nhỏ trực tiếp v&agrave;o đầu ti mẹ v&agrave; cho b&eacute; b&uacute;, mỗi giọt b&uacute; &iacute;t nhất 30 gi&acirc;y.</p>\r\n\r\n<p dir=\"ltr\">Lưu &yacute;</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Kh&ocirc;ng tiếp x&uacute;c đầu nhỏ giọt với bất kỳ chất lỏng n&agrave;o bao gồm cả nước bọt.&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Kh&ocirc;ng được bỏ v&agrave;o sữa nước v&agrave; đồ ăn n&oacute;ng. Nếu d&ugrave;ng c&ugrave;ng kh&aacute;ng sinh, cần uống trước hoặc sau khi d&ugrave;ng kh&aacute;ng sinh &iacute;t nhất 2-3 giờ.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Hướng dẫn bảo quản</p>\r\n\r\n<p dir=\"ltr\">- Bảo quản men vi sinh 10 chủng Bioamicus Complete ở nhiệt độ ph&ograve;ng khi chưa mở nắp. Tr&aacute;nh để ở nơi c&oacute; nhiệt độ cao, bảo quản tại nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t.</p>\r\n\r\n<p dir=\"ltr\">- Sau khi mở nắp:&nbsp; Bảo quản lạnh ở nhiệt độ 2-8℃.</p>\r\n\r\n<p dir=\"ltr\">Th&ocirc;ng tin chi tiết</p>\r\n\r\n<p dir=\"ltr\">T&ecirc;n sản phẩm: Men vi sinh 10 chủng BioAmicus Complete</p>\r\n\r\n<p dir=\"ltr\">Thương hiệu: BioAmicus</p>\r\n\r\n<p dir=\"ltr\">Nh&agrave; sản xuất: BIOAMICUS LABORATORY INC</p>\r\n\r\n<p dir=\"ltr\">Xuất xứ: Canada</p>\r\n\r\n<p dir=\"ltr\">Thể t&iacute;ch: 10mL</p>', 4, 10, NULL, 1, '/storage/uploads/2024/04/16/bioamicus1.png', 2, 810000, '2024-04-16 01:48:00', '2024-04-16 01:48:00'),
(43, 'Combo 2 Men vi sinh 10 chủng BioAmicus Complete', 'Chi Tiết Sản Phẩm\r\n﻿﻿Là men vi sinh 10 chủng đầu tiên và duy nhất hiện nay được nhập khẩu nguyên chai từ Canada, BioAmicus Complete được ví như hệ vi sinh đường ruột thu nhỏ với công thức đột phá chứa 10 chủng lợi khuẩn cần thiết có mặt ngay trong đường ruột của trẻ là Lactobacillus và Bifidobacteria. 5-10 giọt mỗi ngày không chỉ đơn thuần giúp trẻ cải thiện hiệu quả tình trạng biếng ăn, kém hấp thu và rối loạn tiêu hóa mà còn tăng cường sức đề kháng giúp trẻ giảm ốm vặt, giảm tỷ lệ sử dụng kháng sinh.', '<p dir=\"ltr\">Ưu điểm vượt trội của sản phẩm</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><img src=\"https://lh4.googleusercontent.com/3niv2hhtUncAan2ZNI5DXWZFobUZLZsWmW1nul_G6s23DagJ7iN08kDZ236mz5SsO3Ll9ay5OjejfcbkbwcU_5E0RpWjrqCo_zGiyPxO-XHFwLwkRWz7WYs6LhSfbljBoNMQYmDu\" style=\"height:601px; width:602px\" /></p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\">- BioAmicus Complete l&agrave; men vi sinh 10 chủng đầu ti&ecirc;n, chứa 10 chủng lợi khuẩn cần c&oacute; mặt ngay trong đường ruột của trẻ.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">- Được v&iacute; như hệ vi sinh đường ruột thu nhỏ, BioAmicus Complete l&agrave; giải ph&aacute;p chăm s&oacute;c sức khỏe to&agrave;n diện với t&igrave;nh trạng rối loạn ti&ecirc;u h&oacute;a, hấp thu k&eacute;m, chậm tăng c&acirc;n.</p>\r\n\r\n<p dir=\"ltr\">-&nbsp; An to&agrave;n cho trẻ sơ sinh v&agrave; trẻ nhỏ với ti&ecirc;u ch&iacute; 5 kh&ocirc;ng: Kh&ocirc;ng m&agrave;u, kh&ocirc;ng m&ugrave;i, kh&ocirc;ng vị, kh&ocirc;ng chất bảo quản.</p>\r\n\r\n<p dir=\"ltr\">- Nhập khẩu ch&iacute;nh h&atilde;ng từ Canada khẳng định chất lượng vượt trội, được h&agrave;ng triệu b&agrave; mẹ tại hơn 30 quốc gia tin d&ugrave;ng.</p>\r\n\r\n<p dir=\"ltr\">- C&oacute; mặt tại bệnh viện&nbsp; lớn như: BV Nhi TW, Phụ sản HN, Phụ sản TW...</p>\r\n\r\n<p dir=\"ltr\">- Đảm bảo c&aacute;c ti&ecirc;u chuẩn của BYT Canada, Dược điển Mỹ.</p>\r\n\r\n<p dir=\"ltr\">Th&agrave;nh phần ch&iacute;nh</p>\r\n\r\n<p dir=\"ltr\">5 giọt mỗi liều chứa tới 1 tỷ lợi khuẩn thuộc 10 chủng, ph&ugrave; hợp với liều khuyến c&aacute;o ph&aacute;t huy t&aacute;c dụng của WHO</p>\r\n\r\n<p dir=\"ltr\">Nh&oacute;m Lactobacillus</p>\r\n\r\n<p dir=\"ltr\">1. Lactobacillus Johnsonii 5467: 10^8 CFU</p>\r\n\r\n<p dir=\"ltr\">2.Lactobacillus Plantarum 1096: 10^8 CFU</p>\r\n\r\n<p dir=\"ltr\">3. Lactobacillus Salivarius 6313: 10^8 CFU&nbsp;</p>\r\n\r\n<p dir=\"ltr\">4. Lactobacillus Reuteri 5454: 10^8 CFU</p>\r\n\r\n<p dir=\"ltr\">5 Lactobacillus Gasseri 6369: 10^8 CFU</p>\r\n\r\n<p dir=\"ltr\">Nh&oacute;m Bifidobacterium</p>\r\n\r\n<p dir=\"ltr\">6. Bifidobacterium B ifidum 5480: 10^8 CFU</p>\r\n\r\n<p dir=\"ltr\">7. Bifidobacterium Breve 6018: 10^8 CFU</p>\r\n\r\n<p dir=\"ltr\">8. Bifidobacterium Longum subsp Infantis 5478: 10^8 CFU</p>\r\n\r\n<p dir=\"ltr\">9. Bifidobacterium Animalis subsp. Lactis 5764: 10^8 CFU</p>\r\n\r\n<p dir=\"ltr\">10. Bifidobacterium Longum 6283: 10^8 CFU</p>\r\n\r\n<p dir=\"ltr\">T&aacute; dược: Dầu hướng dương, dầu dừa ph&acirc;n đoạn, Silicon Dioxide.</p>\r\n\r\n<p dir=\"ltr\">Đối tượng sử dụng</p>\r\n\r\n<p dir=\"ltr\">- Trẻ bị rối loạn ti&ecirc;u h&oacute;a như: t&aacute;o b&oacute;n, ti&ecirc;u chảy, ph&acirc;n sống, biếng ăn, k&eacute;m hấp thu.</p>\r\n\r\n<p dir=\"ltr\">- Trẻ sơ sinh thường n&ocirc;n trớ, quấy kh&oacute;c.</p>\r\n\r\n<p dir=\"ltr\">- Trẻ sử dụng kh&aacute;ng sinh dẫn đến ti&ecirc;u chảy.</p>\r\n\r\n<p dir=\"ltr\">- Trẻ thường xuy&ecirc;n ốm vặt, sức đề kh&aacute;ng k&eacute;m.</p>\r\n\r\n<p dir=\"ltr\">- Dự ph&ograve;ng c&aacute;c vấn đề ti&ecirc;u h&oacute;a cho trẻ.</p>\r\n\r\n<p dir=\"ltr\">Hướng dẫn sử dụng</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Liều d&ugrave;ng</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Liều d&ugrave;ng BioAmicus Complete phụ thuộc v&agrave;o độ tuổi của b&eacute;. Mẹ nhớ bổ sung duy tr&igrave; đủ một liệu tr&igrave;nh 2-3 th&aacute;ng v&agrave; sử dụng theo đ&uacute;ng theo liều lượng sau để đạt được hiệu quả tốt nhất:</p>\r\n\r\n<p dir=\"ltr\">- Trẻ dưới 1 tuổi: 5 giọt/lần, ng&agrave;y d&ugrave;ng 1 lần.</p>\r\n\r\n<p dir=\"ltr\">- Trẻ &gt;12 th&aacute;ng v&agrave; người lớn: 5 giọt/lần, 1-3 lần/ ng&agrave;y.</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">C&aacute;ch d&ugrave;ng</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">- Lắc đều lọ trước khi d&ugrave;ng.</p>\r\n\r\n<p dir=\"ltr\">- Vặn nắp, nghi&ecirc;ng miệng lọ một g&oacute;c khoảng 45 độ, nhỏ 5 giọt ra th&igrave;a sau đ&oacute; cho trẻ uống trực tiếp. Hoặc th&ecirc;m v&agrave;o c&ugrave;ng sữa, nước hay đồ ăn th&iacute;ch hợp.</p>\r\n\r\n<p dir=\"ltr\">- C&oacute; thể nhỏ trực tiếp v&agrave;o đầu ti mẹ v&agrave; cho b&eacute; b&uacute;, mỗi giọt b&uacute; &iacute;t nhất 30 gi&acirc;y.</p>\r\n\r\n<p dir=\"ltr\">Lưu &yacute;</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Kh&ocirc;ng tiếp x&uacute;c đầu nhỏ giọt với bất kỳ chất lỏng n&agrave;o bao gồm cả nước bọt.&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Kh&ocirc;ng được bỏ v&agrave;o sữa nước v&agrave; đồ ăn n&oacute;ng. Nếu d&ugrave;ng c&ugrave;ng kh&aacute;ng sinh, cần uống trước hoặc sau khi d&ugrave;ng kh&aacute;ng sinh &iacute;t nhất 2-3 giờ.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Hướng dẫn bảo quản</p>\r\n\r\n<p dir=\"ltr\">- Bảo quản men vi sinh 10 chủng Bioamicus Complete ở nhiệt độ ph&ograve;ng khi chưa mở nắp. Tr&aacute;nh để ở nơi c&oacute; nhiệt độ cao, bảo quản tại nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t.</p>\r\n\r\n<p dir=\"ltr\">- Sau khi mở nắp:&nbsp; Bảo quản lạnh ở nhiệt độ 2-8℃.</p>\r\n\r\n<p dir=\"ltr\">Th&ocirc;ng tin chi tiết</p>\r\n\r\n<p dir=\"ltr\">T&ecirc;n sản phẩm: Men vi sinh 10 chủng BioAmicus Complete</p>\r\n\r\n<p dir=\"ltr\">Thương hiệu: BioAmicus</p>\r\n\r\n<p dir=\"ltr\">Nh&agrave; sản xuất: BIOAMICUS LABORATORY INC</p>\r\n\r\n<p dir=\"ltr\">Xuất xứ: Canada</p>\r\n\r\n<p dir=\"ltr\">Thể t&iacute;ch: 10mL</p>', 4, 10, NULL, 1, '/storage/uploads/2024/04/16/bioamicus2.png', 2, 960000, '2024-04-16 01:49:42', '2024-04-16 01:49:42'),
(44, 'Combo 2 Bioamicus Vitamin K2D3', 'BioAmicus Vitamin D3K2 được hàng triệu bà mẹ tại hơn 50 quốc gia lựa chọn là giải pháp chống còi xương và kích hoạt chiều cao tối đa trong 3 năm đầu đời của trẻ. Với công nghệ bao kép độc quyền số 1 thế giới, đảm bảo chất lượng theo tiêu chuẩn USP (Hoa Kỳ), an toàn tuyệt đối cho trẻ sơ sinh và trẻ nhỏ. BioAmicus Vitamin D3K2 được hàng triệu bà mẹ trên 30 quốc gia đặt niềm tin sử dụng sản phẩm chất lượng.', '<p dir=\"ltr\">Ưu điểm vượt trội của sản phẩm</p>\r\n\r\n<p dir=\"ltr\"><img src=\"https://lh5.googleusercontent.com/-vfh-GDUnBLF-v5Y6o702zXt14U604AVdSd22jVN6VqSOB1BsN1NZ5oN9eE5wlLheLck-4VqiBUvS7hyIqgUwybZl8viQtJor6qxXpi4oCakCTtR7zabL9dcPaZB0IW-d2wtkvfg\" style=\"height:601px; width:602px\" /></p>\r\n\r\n<p dir=\"ltr\">- Vitamin bao k&eacute;p BioAmicus D3K2 l&agrave; sự kết hợp ho&agrave;n hảo của &ldquo;bộ đ&ocirc;i vitamin&rdquo; gồm vitamin D3 v&agrave; vitamin K2-MK7 nhập khẩu nguy&ecirc;n chai từ Canada.</p>\r\n\r\n<p dir=\"ltr\">- BioAmicus Vitamin D3 K2 ch&iacute;nh l&agrave; giải ph&aacute;p gi&uacute;p hấp thu canxi tối đa, chống c&ograve;i xương v&agrave; tạo nền tảng vững chắc bứt ph&aacute; chiều cao cho b&eacute; trong 2 năm đầu đời.</p>\r\n\r\n<p dir=\"ltr\">- Với c&ocirc;ng nghệ bao k&eacute;p độc quyền tr&ecirc;n thế giới, Vitamin BioAmicus đảm bảo được độ ổn định v&agrave; h&agrave;m lượng đạt 100% tr&ecirc;n nh&atilde;n.</p>\r\n\r\n<p dir=\"ltr\">- Vitamin K2-MK7 100% dạng trans hoạt t&iacute;nh mạnh v&agrave; hấp thu tốt nhất.</p>\r\n\r\n<p dir=\"ltr\">- L&agrave; vitamin tinh khiết an to&agrave;n tuyệt đối cho trẻ sơ sinh v&agrave; trẻ nhỏ.</p>\r\n\r\n<p dir=\"ltr\">Đối tượng sử dụng</p>\r\n\r\n<p dir=\"ltr\">- Trẻ sơ sinh v&agrave; trẻ nhỏ cần bổ sung Vitamin D3 v&agrave; Vitamin K2 thường quy (trong 2 năm đầu đời).</p>\r\n\r\n<p dir=\"ltr\">- Trường hợp trẻ bị c&ograve;i xương, thiếu canxi với c&aacute;c biểu hiện đi k&egrave;m như: mồ h&ocirc;i trộm, mủn răng, rụng t&oacute;c v&agrave;nh khăn&hellip;.</p>\r\n\r\n<p dir=\"ltr\">- Kết hợp bổ sung cho trẻ khi đang cần bổ sung Canxi.</p>\r\n\r\n<p dir=\"ltr\">Hướng dẫn sử dụng</p>\r\n\r\n<p dir=\"ltr\">C&aacute;ch d&ugrave;ng</p>\r\n\r\n<p dir=\"ltr\">- BioaAmicus Vitamin D3 K2-MK7 thiết kế dạng nhỏ giọt, trước khi d&ugrave;ng cần lắc đều lọ.</p>\r\n\r\n<p dir=\"ltr\">- Nhỏ trực tiếp cho trẻ. Vặn nắp, nghi&ecirc;ng miệng lọ một g&oacute;c khoảng 45 độ để nhỏ số giọt theo liều lượng th&iacute;ch hợp ra th&igrave;a hoặc nhỏ trực tiếp v&agrave;o miệng b&eacute;.</p>\r\n\r\n<p dir=\"ltr\">- Nhỏ giọt trực tiếp v&agrave;o th&igrave;a hoặc l&ecirc;n n&uacute;m v&uacute; của mẹ hoặc tr&ecirc;n một bề mặt sạch, chẳng hạn như ng&oacute;n tay rửa sạch, n&uacute;m v&uacute; giả v&agrave; cho b&eacute; b&uacute; &iacute;t nhất 30 gi&acirc;y. Hoặc trộn một giọt mỗi ng&agrave;y với sữa, nước tr&aacute;i c&acirc;y hoặc thực phẩm kh&aacute;c.</p>\r\n\r\n<p dir=\"ltr\">- Tốt nhất n&ecirc;n sử dụng v&agrave;o buổi s&aacute;ng (khoảng thời gian từ 9-11h.</p>\r\n\r\n<p dir=\"ltr\">Liều d&ugrave;ng</p>\r\n\r\n<p dir=\"ltr\">- Trẻ sơ sinh 0-6 th&aacute;ng: 3 giọt / ng&agrave;y.</p>\r\n\r\n<p dir=\"ltr\">- Trẻ sơ sinh 7-12 th&aacute;ng: 4 giọt / ng&agrave;y.</p>\r\n\r\n<p dir=\"ltr\">- Trẻ em 1-3 tuổi: 7 giọt / ng&agrave;y.</p>\r\n\r\n<p dir=\"ltr\">- Trẻ 4 tuổi trở l&ecirc;n: 10 giọt / ng&agrave;y.</p>\r\n\r\n<p dir=\"ltr\">Lưu &yacute;: N&ecirc;n duy tr&igrave; sử dụng trong 2 năm đầu đời để trẻ c&oacute; nền tảng ph&aacute;t triển chiều cao tốt nhất. Do đ&oacute;, việc tạo một th&oacute;i quen cho con uống đều đặn v&agrave;o mỗi buổi s&aacute;ng l&agrave; rất cần thiết.</p>\r\n\r\n<p dir=\"ltr\">Hướng dẫn bảo quản</p>\r\n\r\n<p dir=\"ltr\">Bảo quản Bioamicus Vitamin D3 K2-MK7 ở nhiệt độ 4 &ndash; 25℃. Bảo quản ngăn m&aacute;t tủ lạnh sau khi mở nắp</p>\r\n\r\n<p dir=\"ltr\">Th&agrave;nh phần ch&iacute;nh</p>\r\n\r\n<p dir=\"ltr\">Mỗi giọt (tương ứng 0,028ml) chứa:</p>\r\n\r\n<p dir=\"ltr\">+ Vitamin D3 (Cholecalciferol) 100IU tương ứng 2,5&micro;g,</p>\r\n\r\n<p dir=\"ltr\">+ Vitamin K2 (Menaquinone-7) 4&micro;g.</p>\r\n\r\n<p dir=\"ltr\">T&aacute; dược: Chất b&eacute;o trung t&iacute;nh chuỗi trung b&igrave;nh (medium chain triglyceride oil), dl-alpha tocopherol</p>\r\n\r\n<p dir=\"ltr\">Th&ocirc;ng tin chi tiết</p>\r\n\r\n<p dir=\"ltr\">T&ecirc;n sản phẩm: Vitamin BioAmicus D3 K2-MK7</p>\r\n\r\n<p dir=\"ltr\">Thương hiệu: BioAmicus</p>\r\n\r\n<p dir=\"ltr\">Nh&agrave; sản xuất: BIOAMICUS LABORATORY INC</p>\r\n\r\n<p dir=\"ltr\">Xuất xứ: Canada</p>\r\n\r\n<p dir=\"ltr\">Thể t&iacute;ch: 10mL</p>', 4, 10, NULL, 1, '/storage/uploads/2024/04/16/bioamicus3.png', 2, 660000, '2024-04-16 01:51:16', '2024-04-16 01:51:16'),
(45, 'Men vi sinh 10 chủng BioAmicus Complete', 'Là men vi sinh 10 chủng đầu tiên và duy nhất hiện nay được nhập khẩu nguyên chai từ Canada, BioAmicus Complete được ví như hệ vi sinh đường ruột thu nhỏ với công thức đột phá chứa 10 chủng lợi khuẩn cần thiết có mặt ngay trong đường ruột của trẻ là Lactobacillus và Bifidobacteria. 5-10 giọt mỗi ngày không chỉ đơn thuần giúp trẻ cải thiện hiệu quả tình trạng biếng ăn, kém hấp thu và rối loạn tiêu hóa mà còn tăng cường sức đề kháng giúp trẻ giảm ốm vặt, giảm tỷ lệ sử dụng kháng sinh.', '<p dir=\"ltr\">Ưu điểm vượt trội của sản phẩm</p>\r\n\r\n<p dir=\"ltr\"><img src=\"https://cdn1.concung.com/storage/2022/05/1652343896-6-li%CC%81-do-me%CC%A3-cho%CC%A3n-men-01.png\" /></p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\">- BioAmicus Complete l&agrave; men vi sinh 10 chủng đầu ti&ecirc;n, chứa 10 chủng lợi khuẩn cần c&oacute; mặt ngay trong đường ruột của trẻ.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">- Được v&iacute; như hệ vi sinh đường ruột thu nhỏ, BioAmicus Complete l&agrave; giải ph&aacute;p chăm s&oacute;c sức khỏe to&agrave;n diện với t&igrave;nh trạng rối loạn ti&ecirc;u h&oacute;a, hấp thu k&eacute;m, chậm tăng c&acirc;n.</p>\r\n\r\n<p dir=\"ltr\">-&nbsp; An to&agrave;n cho trẻ sơ sinh v&agrave; trẻ nhỏ với ti&ecirc;u ch&iacute; 5 kh&ocirc;ng: Kh&ocirc;ng m&agrave;u, kh&ocirc;ng m&ugrave;i, kh&ocirc;ng vị, kh&ocirc;ng chất bảo quản.</p>\r\n\r\n<p dir=\"ltr\">- Nhập khẩu ch&iacute;nh h&atilde;ng từ Canada khẳng định chất lượng vượt trội, được h&agrave;ng triệu b&agrave; mẹ tại hơn 30 quốc gia tin d&ugrave;ng.</p>\r\n\r\n<p dir=\"ltr\">- C&oacute; mặt tại bệnh viện&nbsp; lớn như: BV Nhi TW, Phụ sản HN, Phụ sản TW...</p>\r\n\r\n<p dir=\"ltr\">- Đảm bảo c&aacute;c ti&ecirc;u chuẩn của BYT Canada, Dược điển Mỹ.</p>\r\n\r\n<p dir=\"ltr\">Th&agrave;nh phần ch&iacute;nh</p>\r\n\r\n<p dir=\"ltr\">5 giọt mỗi liều chứa tới 1 tỷ lợi khuẩn thuộc 10 chủng, ph&ugrave; hợp với liều khuyến c&aacute;o ph&aacute;t huy t&aacute;c dụng của WHO</p>\r\n\r\n<p dir=\"ltr\">Nh&oacute;m Lactobacillus</p>\r\n\r\n<p dir=\"ltr\">1. Lactobacillus Johnsonii 5467: 10^8 CFU</p>\r\n\r\n<p dir=\"ltr\">2.Lactobacillus Plantarum 1096: 10^8 CFU</p>\r\n\r\n<p dir=\"ltr\">3. Lactobacillus Salivarius 6313: 10^8 CFU&nbsp;</p>\r\n\r\n<p dir=\"ltr\">4. Lactobacillus Reuteri 5454: 10^8 CFU</p>\r\n\r\n<p dir=\"ltr\">5 Lactobacillus Gasseri 6369: 10^8 CFU</p>\r\n\r\n<p dir=\"ltr\">Nh&oacute;m Bifidobacterium</p>\r\n\r\n<p dir=\"ltr\">6. Bifidobacterium B ifidum 5480: 10^8 CFU</p>\r\n\r\n<p dir=\"ltr\">7. Bifidobacterium Breve 6018: 10^8 CFU</p>\r\n\r\n<p dir=\"ltr\">8. Bifidobacterium Longum subsp Infantis 5478: 10^8 CFU</p>\r\n\r\n<p dir=\"ltr\">9. Bifidobacterium Animalis subsp. Lactis 5764: 10^8 CFU</p>\r\n\r\n<p dir=\"ltr\">10. Bifidobacterium Longum 6283: 10^8 CFU</p>\r\n\r\n<p dir=\"ltr\">T&aacute; dược: Dầu hướng dương, dầu dừa ph&acirc;n đoạn, Silicon Dioxide.</p>\r\n\r\n<p dir=\"ltr\">Đối tượng sử dụng</p>\r\n\r\n<p dir=\"ltr\">- Trẻ bị rối loạn ti&ecirc;u h&oacute;a như: t&aacute;o b&oacute;n, ti&ecirc;u chảy, ph&acirc;n sống, biếng ăn, k&eacute;m hấp thu.</p>\r\n\r\n<p dir=\"ltr\">- Trẻ sơ sinh thường n&ocirc;n trớ, quấy kh&oacute;c.</p>\r\n\r\n<p dir=\"ltr\">- Trẻ sử dụng kh&aacute;ng sinh dẫn đến ti&ecirc;u chảy.</p>\r\n\r\n<p dir=\"ltr\">- Trẻ thường xuy&ecirc;n ốm vặt, sức đề kh&aacute;ng k&eacute;m.</p>\r\n\r\n<p dir=\"ltr\">- Dự ph&ograve;ng c&aacute;c vấn đề ti&ecirc;u h&oacute;a cho trẻ.</p>\r\n\r\n<p dir=\"ltr\">Hướng dẫn sử dụng</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Liều d&ugrave;ng</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Liều d&ugrave;ng BioAmicus Complete phụ thuộc v&agrave;o độ tuổi của b&eacute;. Mẹ nhớ bổ sung duy tr&igrave; đủ một liệu tr&igrave;nh 2-3 th&aacute;ng v&agrave; sử dụng theo đ&uacute;ng theo liều lượng sau để đạt được hiệu quả tốt nhất:</p>\r\n\r\n<p dir=\"ltr\">- Trẻ dưới 1 tuổi: 5 giọt/lần, ng&agrave;y d&ugrave;ng 1 lần.</p>\r\n\r\n<p dir=\"ltr\">- Trẻ &gt;12 th&aacute;ng v&agrave; người lớn: 5 giọt/lần, 1-3 lần/ ng&agrave;y.</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">C&aacute;ch d&ugrave;ng</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">- Lắc đều lọ trước khi d&ugrave;ng.</p>\r\n\r\n<p dir=\"ltr\">- Vặn nắp, nghi&ecirc;ng miệng lọ một g&oacute;c khoảng 45 độ, nhỏ 5 giọt ra th&igrave;a sau đ&oacute; cho trẻ uống trực tiếp. Hoặc th&ecirc;m v&agrave;o c&ugrave;ng sữa, nước hay đồ ăn th&iacute;ch hợp.</p>\r\n\r\n<p dir=\"ltr\">- C&oacute; thể nhỏ trực tiếp v&agrave;o đầu ti mẹ v&agrave; cho b&eacute; b&uacute;, mỗi giọt b&uacute; &iacute;t nhất 30 gi&acirc;y.</p>\r\n\r\n<p dir=\"ltr\">Lưu &yacute;</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Kh&ocirc;ng tiếp x&uacute;c đầu nhỏ giọt với bất kỳ chất lỏng n&agrave;o bao gồm cả nước bọt.&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Kh&ocirc;ng được bỏ v&agrave;o sữa nước v&agrave; đồ ăn n&oacute;ng. Nếu d&ugrave;ng c&ugrave;ng kh&aacute;ng sinh, cần uống trước hoặc sau khi d&ugrave;ng kh&aacute;ng sinh &iacute;t nhất 2-3 giờ.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Hướng dẫn bảo quản</p>\r\n\r\n<p dir=\"ltr\">- Bảo quản men vi sinh 10 chủng Bioamicus Complete ở nhiệt độ ph&ograve;ng khi chưa mở nắp. Tr&aacute;nh để ở nơi c&oacute; nhiệt độ cao, bảo quản tại nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t.</p>\r\n\r\n<p dir=\"ltr\">- Sau khi mở nắp:&nbsp; Bảo quản lạnh ở nhiệt độ 2-8℃.</p>\r\n\r\n<p dir=\"ltr\">Th&ocirc;ng tin chi tiết</p>\r\n\r\n<p dir=\"ltr\">T&ecirc;n sản phẩm: Men vi sinh 10 chủng BioAmicus Complete</p>\r\n\r\n<p dir=\"ltr\">Thương hiệu: BioAmicus</p>\r\n\r\n<p dir=\"ltr\">Nh&agrave; sản xuất: BIOAMICUS LABORATORY INC</p>\r\n\r\n<p dir=\"ltr\">Xuất xứ: Canada</p>\r\n\r\n<p dir=\"ltr\">Thể t&iacute;ch: 10mL</p>', 4, 10, NULL, 1, '/storage/uploads/2024/04/16/bioamicus4.png', 1, 480000, '2024-04-16 01:52:35', '2024-04-16 01:52:35'),
(46, 'Vitamin BioAmicus D3 K2-MK7', 'BioAmicus Vitamin D3K2 được hàng triệu bà mẹ tại hơn 50 quốc gia lựa chọn là giải pháp chống còi xương và kích hoạt chiều cao tối đa trong 3 năm đầu đời của trẻ. Với công nghệ bao kép độc quyền số 1 thế giới, đảm bảo chất lượng theo tiêu chuẩn USP (Hoa Kỳ), an toàn tuyệt đối cho trẻ sơ sinh và trẻ nhỏ. BioAmicus Vitamin D3K2 được hàng triệu bà mẹ trên 30 quốc gia đặt niềm tin sử dụng sản phẩm chất lượng.', '<p dir=\"ltr\">Ưu điểm vượt trội của sản phẩm</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><img src=\"https://lh5.googleusercontent.com/-vfh-GDUnBLF-v5Y6o702zXt14U604AVdSd22jVN6VqSOB1BsN1NZ5oN9eE5wlLheLck-4VqiBUvS7hyIqgUwybZl8viQtJor6qxXpi4oCakCTtR7zabL9dcPaZB0IW-d2wtkvfg\" style=\"height:601px; width:602px\" /></p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\">- Vitamin bao k&eacute;p BioAmicus D3K2 l&agrave; sự kết hợp ho&agrave;n hảo của &ldquo;bộ đ&ocirc;i vitamin&rdquo; gồm vitamin D3 v&agrave; vitamin K2-MK7 nhập khẩu nguy&ecirc;n chai từ Canada.</p>\r\n\r\n<p dir=\"ltr\">- BioAmicus Vitamin D3 K2 ch&iacute;nh l&agrave; giải ph&aacute;p gi&uacute;p hấp thu canxi tối đa, chống c&ograve;i xương v&agrave; tạo nền tảng vững chắc bứt ph&aacute; chiều cao cho b&eacute; trong 2 năm đầu đời.</p>\r\n\r\n<p dir=\"ltr\">- Với c&ocirc;ng nghệ bao k&eacute;p độc quyền tr&ecirc;n thế giới, Vitamin BioAmicus đảm bảo được độ ổn định v&agrave; h&agrave;m lượng đạt 100% tr&ecirc;n nh&atilde;n.</p>\r\n\r\n<p dir=\"ltr\">- Vitamin K2-MK7 100% dạng trans hoạt t&iacute;nh mạnh v&agrave; hấp thu tốt nhất.</p>\r\n\r\n<p dir=\"ltr\">- L&agrave; vitamin tinh khiết an to&agrave;n tuyệt đối cho trẻ sơ sinh v&agrave; trẻ nhỏ.</p>\r\n\r\n<p dir=\"ltr\">Đối tượng sử dụng</p>\r\n\r\n<p dir=\"ltr\">- Trẻ sơ sinh v&agrave; trẻ nhỏ cần bổ sung Vitamin D3 v&agrave; Vitamin K2 thường quy (trong 2 năm đầu đời).</p>\r\n\r\n<p dir=\"ltr\">- Trường hợp trẻ bị c&ograve;i xương, thiếu canxi với c&aacute;c biểu hiện đi k&egrave;m như: mồ h&ocirc;i trộm, mủn răng, rụng t&oacute;c v&agrave;nh khăn&hellip;.</p>\r\n\r\n<p dir=\"ltr\">- Kết hợp bổ sung cho trẻ khi đang cần bổ sung Canxi.</p>\r\n\r\n<p dir=\"ltr\">Hướng dẫn sử dụng</p>\r\n\r\n<p dir=\"ltr\">C&aacute;ch d&ugrave;ng</p>\r\n\r\n<p dir=\"ltr\">- BioaAmicus Vitamin D3 K2-MK7 thiết kế dạng nhỏ giọt, trước khi d&ugrave;ng cần lắc đều lọ.</p>\r\n\r\n<p dir=\"ltr\">- Nhỏ trực tiếp cho trẻ. Vặn nắp, nghi&ecirc;ng miệng lọ một g&oacute;c khoảng 45 độ để nhỏ số giọt theo liều lượng th&iacute;ch hợp ra th&igrave;a hoặc nhỏ trực tiếp v&agrave;o miệng b&eacute;.</p>\r\n\r\n<p dir=\"ltr\">- Nhỏ giọt trực tiếp v&agrave;o th&igrave;a hoặc l&ecirc;n n&uacute;m v&uacute; của mẹ hoặc tr&ecirc;n một bề mặt sạch, chẳng hạn như ng&oacute;n tay rửa sạch, n&uacute;m v&uacute; giả v&agrave; cho b&eacute; b&uacute; &iacute;t nhất 30 gi&acirc;y. Hoặc trộn một giọt mỗi ng&agrave;y với sữa, nước tr&aacute;i c&acirc;y hoặc thực phẩm kh&aacute;c.</p>\r\n\r\n<p dir=\"ltr\">- Tốt nhất n&ecirc;n sử dụng v&agrave;o buổi s&aacute;ng (khoảng thời gian từ 9-11h.</p>\r\n\r\n<p dir=\"ltr\">Liều d&ugrave;ng</p>\r\n\r\n<p dir=\"ltr\">- Trẻ sơ sinh 0-6 th&aacute;ng: 3 giọt / ng&agrave;y.</p>\r\n\r\n<p dir=\"ltr\">- Trẻ sơ sinh 7-12 th&aacute;ng: 4 giọt / ng&agrave;y.</p>\r\n\r\n<p dir=\"ltr\">- Trẻ em 1-3 tuổi: 7 giọt / ng&agrave;y.</p>\r\n\r\n<p dir=\"ltr\">- Trẻ 4 tuổi trở l&ecirc;n: 10 giọt / ng&agrave;y.</p>\r\n\r\n<p dir=\"ltr\">Lưu &yacute;: N&ecirc;n duy tr&igrave; sử dụng trong 2 năm đầu đời để trẻ c&oacute; nền tảng ph&aacute;t triển chiều cao tốt nhất. Do đ&oacute;, việc tạo một th&oacute;i quen cho con uống đều đặn v&agrave;o mỗi buổi s&aacute;ng l&agrave; rất cần thiết.</p>\r\n\r\n<p dir=\"ltr\">Hướng dẫn bảo quản</p>\r\n\r\n<p dir=\"ltr\">Bảo quản Bioamicus Vitamin D3 K2-MK7 ở nhiệt độ 4 &ndash; 25℃. Bảo quản ngăn m&aacute;t tủ lạnh sau khi mở nắp</p>\r\n\r\n<p dir=\"ltr\">Th&agrave;nh phần ch&iacute;nh</p>\r\n\r\n<p dir=\"ltr\">Mỗi giọt (tương ứng 0,028ml) chứa:</p>\r\n\r\n<p dir=\"ltr\">+ Vitamin D3 (Cholecalciferol) 100IU tương ứng 2,5&micro;g,</p>\r\n\r\n<p dir=\"ltr\">+ Vitamin K2 (Menaquinone-7) 4&micro;g.</p>\r\n\r\n<p dir=\"ltr\">T&aacute; dược: Chất b&eacute;o trung t&iacute;nh chuỗi trung b&igrave;nh (medium chain triglyceride oil), dl-alpha tocopherol</p>\r\n\r\n<p dir=\"ltr\">Th&ocirc;ng tin chi tiết</p>\r\n\r\n<p dir=\"ltr\">T&ecirc;n sản phẩm: Vitamin BioAmicus D3 K2-MK7</p>\r\n\r\n<p dir=\"ltr\">Thương hiệu: BioAmicus</p>\r\n\r\n<p dir=\"ltr\">Nh&agrave; sản xuất: BIOAMICUS LABORATORY INC</p>\r\n\r\n<p dir=\"ltr\">Xuất xứ: Canada</p>\r\n\r\n<p dir=\"ltr\">Thể t&iacute;ch: 10mL</p>', 4, 10, NULL, 1, '/storage/uploads/2024/04/16/bioamicus5.png', 1, 330000, '2024-04-16 01:54:57', '2024-04-16 01:54:57'),
(47, 'Viên uống canxi sữa cho bé Milk Calcium HealthyCare', 'Viên uống Canxi sữa Milk Calcium HealthyCare là thực phẩm bảo vệ sức khỏe dành cho trẻ sơ sinh từ 4 tháng tuổi nhằm giúp bổ sung vitamin D, canxi, hỗ trợ bé phát triển xương và răng chắc khỏe.', '<p dir=\"ltr\">Ưu điểm nổi bật</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Vi&ecirc;n nang mềm, m&agrave;ng bọc mỏng, dễ sử dụng đối với trẻ em</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Sản phẩm c&oacute; hương chanh tự nhi&ecirc;n rất thơm, k&iacute;ch th&iacute;ch b&eacute; uống m&agrave; kh&ocirc;ng cần bắt &eacute;p như 1 số loại thuốc kh&aacute;c</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Nguồn nguy&ecirc;n liệu được đảm bảo về t&iacute;nh an to&agrave;n, kh&ocirc;ng chứa bất kỳ th&agrave;nh phần độc hại n&agrave;o. Đặc biệt l&agrave; c&aacute;c chất c&oacute; thể g&acirc;y dị ứng như: nấm men, l&uacute;a m&igrave;, tinh bột, glucose,....</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">C&aacute;ch sử dụng</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Vi&ecirc;n nang n&ecirc;n được uống k&egrave;m với thức ăn.&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Đối với trẻ sơ sinh v&agrave; trẻ nhỏ chưa nhai v&agrave; nuốt được, cắt hoặc vặn đu&ocirc;i vi&ecirc;n nang v&agrave; &eacute;p dịch v&agrave;o muỗng để ăn hoặc ăn c&ugrave;ng thức ăn.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Đối tượng sử dụng</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Trẻ sơ sinh từ 4 đến 6 th&aacute;ng tuổi: 1 vi&ecirc;n mỗi ng&agrave;y.&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Trẻ sơ sinh từ 7 th&aacute;ng đến 1 tuổi: 1-2 vi&ecirc;n mỗi ng&agrave;y.&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Trẻ em từ 1 đến 3 tuổi: 2-3 vi&ecirc;n mỗi ng&agrave;y.&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Trẻ em tr&ecirc;n 3 tuổi: 3-4 vi&ecirc;n mỗi ng&agrave;y.&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Vi&ecirc;n nang n&ecirc;n được uống k&egrave;m với thức ăn hoặc theo hướng dẫn của chuy&ecirc;n gia y tế.&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Đối với trẻ sơ sinh v&agrave; trẻ nhỏ chưa nhai v&agrave; nuốt được, cắt hoặc vặn đu&ocirc;i vi&ecirc;n nang sau đ&oacute; &eacute;p dịch v&agrave;o muỗng để ăn hoặc ăn c&ugrave;ng thức ăn.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Hướng dẫn bảo quản</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Bảo quản ở nhiệt độ ph&ograve;ng, tr&aacute;nh &aacute;nh nắng trực tiếp.&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Trong điều kiện thời tiết n&oacute;ng, c&aacute;c vi&ecirc;n nang c&oacute; thể d&iacute;nh v&agrave;o nhau, điều n&agrave;y kh&ocirc;ng ảnh hưởng đến chất lượng sản phẩm do m&agrave;ng bao được thiết kế mỏng để ph&ugrave; hợp với trẻ em.&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Khi c&oacute; hiện tượng vi&ecirc;n nang d&iacute;nh v&agrave;o, cho sản phẩm v&agrave;o tủ lạnh 1- 2 tiếng, g&otilde; nhẹ, c&aacute;c vi&ecirc;n sẽ tự t&aacute;ch rời.&nbsp;&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Th&agrave;nh phần</p>\r\n\r\n<p dir=\"ltr\">Mỗi vi&ecirc;n nang chứa: Hydroxyapatite ( Milk Calcium) 270mg, Colecalciferol ( Vitamin D3 100IU) 2,5mcg&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Phụ liệu: Hương chanh, dầu đậu n&agrave;nh, lecithin, sucralose, s&aacute;p ong v&agrave;ng, gelatin, glycerol, titanium dioxide, nước tinh khiết. Kh&ocirc;ng th&ecirc;m gluten, bột m&igrave;, tinh bột, đường, men, trứng, lactose, m&agrave;u nh&acirc;n tạo, hương vị hoặc chất bảo quản. Hương chanh tự nhi&ecirc;n.</p>', 4, 8, NULL, 1, '/storage/uploads/2024/04/16/healthycare1.jpg', 1, 265000, '2024-04-16 01:56:35', '2024-04-16 01:56:35'),
(48, 'Combo 2 Viên uống bổ sung DHA cho bé Healthy Care', 'Viên uống bổ sung DHA cho bé HealthyCare là thực phẩm bảo vệ sức khỏe dành cho trẻ sơ sinh từ 4 tháng tuổi trở lên nhằm giúp bổ sung DHA, hỗ trợ giúp bổ não, tốt cho mắt.', '<p style=\"text-align:justify\"><span style=\"color:#000000\"><strong>Ưu điểm sản phẩm&nbsp;</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\">Vi&ecirc;n uống bổ sung DHA cho b&eacute; HealthyCare c&oacute; những ưu điểm như sau:</span></p>\r\n\r\n<ul>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">Vi&ecirc;n nang mềm, m&agrave;ng bọc mỏng, dễ sử dụng đối với trẻ em&nbsp;</span></li>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">Sản phẩm đ&atilde; được khử m&ugrave;i tanh từ c&aacute;, hương chanh rất thơm, k&iacute;ch th&iacute;ch b&eacute; uống m&agrave; kh&ocirc;ng phải bắt &eacute;p con uống như 1 số loại DHA th&ocirc;ng thường.&nbsp;</span></li>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">H&agrave;m lượng DHA đạt chuẩn, gi&uacute;p b&eacute; hấp thụ tốt hơn.</span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><strong>Liều lượng sử dụng</strong></span></p>\r\n\r\n<ul>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">Trẻ sơ sinh dưới 4 th&aacute;ng tuổi: Tham khảo &yacute; kiến chuy&ecirc;n gia y tế v&agrave; chỉ sử dụng theo hướng dẫn.</span></li>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">Trẻ 4 th&aacute;ng đến 6 tuổi: Uống 1 vi&ecirc;n mỗi ng&agrave;y.</span></li>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">Trẻ 7 đến 12 tuổi: Uống 2 vi&ecirc;n mỗi ng&agrave;y.</span></li>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">Trẻ tr&ecirc;n 12 tuổi: Uống 3 vi&ecirc;n mỗi ng&agrave;y.</span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><strong><em>Lưu &yacute;</em></strong></span></p>\r\n\r\n<ul>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\"><em>N&ecirc;n uống trong bữa ăn</em></span></li>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\"><em>C&oacute; thể tham khảo &yacute; kiến b&aacute;c sĩ về liều lượng trước khi sử dụng nhằm đảm bảo an to&agrave;n cho trẻ.&nbsp;</em></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><strong>C&aacute;ch sử dụng</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\">C&aacute;ch sử dụng vi&ecirc;n uống bổ sung DHA cho b&eacute; HealthyCare như sau:</span></p>\r\n\r\n<ul>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">Uống trực tiếp</span></li>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">Đối với trẻ em dưới 4 tuổi, cắt hoặc vặn đu&ocirc;i vi&ecirc;n nang v&agrave; b&oacute;p dung dịch v&agrave;o muỗng v&agrave; sau đ&oacute;</span></li>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">Ngo&agrave;i ra, dung dịch c&oacute; thể được th&ecirc;m v&agrave;o thức ăn.</span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><strong>Hướng dẫn bảo quản</strong></span></p>\r\n\r\n<ul>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">Bảo quản ở nhiệt độ ph&ograve;ng, tr&aacute;nh &aacute;nh nắng trực tiếp.&nbsp;</span></li>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">Trong điều kiện thời tiết n&oacute;ng, c&aacute;c vi&ecirc;n nang c&oacute; thể d&iacute;nh v&agrave;o nhau, điều n&agrave;y kh&ocirc;ng ảnh hưởng đến chất lượng sản phẩm do m&agrave;ng bao được thiết kế mỏng để ph&ugrave; hợp với trẻ em.&nbsp;</span></li>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">Khi c&oacute; hiện tượng vi&ecirc;n nang d&iacute;nh v&agrave;o, cho sản phẩm v&agrave;o tủ lạnh 1- 2 tiếng, g&otilde; nhẹ, c&aacute;c vi&ecirc;n sẽ tự t&aacute;ch rời.&nbsp;&nbsp;</span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><strong>Th&agrave;nh phần ch&iacute;nh</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\">Mỗi vi&ecirc;n nang chứa: Dầu c&oacute; nguồn gốc từ vi tảo Schizochytrium (DHA) 250m</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\">Phụ liệu: Hương chanh , Soya oil, Lecithin, Gelatin, Glycerol, Nước tinh khiết.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\">Kh&ocirc;ng th&ecirc;m đường, tinh bột, gluten, men, muối, m&agrave;u nh&acirc;n tạo hoặc chất bảo quản.</span><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><strong>Đặc điểm sản phẩm&nbsp;</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\">T&ecirc;n: Vi&ecirc;n uống DHA Kids Healthycare&nbsp;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\">Xuất xứ: &Uacute;c</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\">Thương hiệu: HealthyCare&nbsp;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\">Trọng lượng:106G&nbsp;</span></p>', 4, 8, NULL, 1, '/storage/uploads/2024/04/16/healthycare2.jpg', 2, 570000, '2024-04-16 01:57:44', '2024-04-16 01:57:44'),
(49, 'Combo 2 Viên uống canxi sữa cho bé Milk Calcium HealthyCare', 'Viên uống Canxi sữa Milk Calcium HealthyCare là thực phẩm bảo vệ sức khỏe dành cho trẻ sơ sinh từ 4 tháng tuổi nhằm giúp bổ sung vitamin D, canxi, hỗ trợ bé phát triển xương và răng chắc khỏe.', '<p dir=\"ltr\">Ưu điểm nổi bật</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Vi&ecirc;n nang mềm, m&agrave;ng bọc mỏng, dễ sử dụng đối với trẻ em</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Sản phẩm c&oacute; hương chanh tự nhi&ecirc;n rất thơm, k&iacute;ch th&iacute;ch b&eacute; uống m&agrave; kh&ocirc;ng cần bắt &eacute;p như 1 số loại thuốc kh&aacute;c</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Nguồn nguy&ecirc;n liệu được đảm bảo về t&iacute;nh an to&agrave;n, kh&ocirc;ng chứa bất kỳ th&agrave;nh phần độc hại n&agrave;o. Đặc biệt l&agrave; c&aacute;c chất c&oacute; thể g&acirc;y dị ứng như: nấm men, l&uacute;a m&igrave;, tinh bột, glucose,....</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">C&aacute;ch sử dụng</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Vi&ecirc;n nang n&ecirc;n được uống k&egrave;m với thức ăn.&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Đối với trẻ sơ sinh v&agrave; trẻ nhỏ chưa nhai v&agrave; nuốt được, cắt hoặc vặn đu&ocirc;i vi&ecirc;n nang v&agrave; &eacute;p dịch v&agrave;o muỗng để ăn hoặc ăn c&ugrave;ng thức ăn.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Đối tượng sử dụng</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Trẻ sơ sinh từ 4 đến 6 th&aacute;ng tuổi: 1 vi&ecirc;n mỗi ng&agrave;y.&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Trẻ sơ sinh từ 7 th&aacute;ng đến 1 tuổi: 1-2 vi&ecirc;n mỗi ng&agrave;y.&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Trẻ em từ 1 đến 3 tuổi: 2-3 vi&ecirc;n mỗi ng&agrave;y.&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Trẻ em tr&ecirc;n 3 tuổi: 3-4 vi&ecirc;n mỗi ng&agrave;y.&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Vi&ecirc;n nang n&ecirc;n được uống k&egrave;m với thức ăn hoặc theo hướng dẫn của chuy&ecirc;n gia y tế.&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Đối với trẻ sơ sinh v&agrave; trẻ nhỏ chưa nhai v&agrave; nuốt được, cắt hoặc vặn đu&ocirc;i vi&ecirc;n nang sau đ&oacute; &eacute;p dịch v&agrave;o muỗng để ăn hoặc ăn c&ugrave;ng thức ăn.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Hướng dẫn bảo quản</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Bảo quản ở nhiệt độ ph&ograve;ng, tr&aacute;nh &aacute;nh nắng trực tiếp.&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Trong điều kiện thời tiết n&oacute;ng, c&aacute;c vi&ecirc;n nang c&oacute; thể d&iacute;nh v&agrave;o nhau, điều n&agrave;y kh&ocirc;ng ảnh hưởng đến chất lượng sản phẩm do m&agrave;ng bao được thiết kế mỏng để ph&ugrave; hợp với trẻ em.&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Khi c&oacute; hiện tượng vi&ecirc;n nang d&iacute;nh v&agrave;o, cho sản phẩm v&agrave;o tủ lạnh 1- 2 tiếng, g&otilde; nhẹ, c&aacute;c vi&ecirc;n sẽ tự t&aacute;ch rời.&nbsp;&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Th&agrave;nh phần</p>\r\n\r\n<p dir=\"ltr\">Mỗi vi&ecirc;n nang chứa: Hydroxyapatite ( Milk Calcium) 270mg, Colecalciferol ( Vitamin D3 100IU) 2,5mcg&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Phụ liệu: Hương chanh, dầu đậu n&agrave;nh, lecithin, sucralose, s&aacute;p ong v&agrave;ng, gelatin, glycerol, titanium dioxide, nước tinh khiết. Kh&ocirc;ng th&ecirc;m gluten, bột m&igrave;, tinh bột, đường, men, trứng, lactose, m&agrave;u nh&acirc;n tạo, hương vị hoặc chất bảo quản. Hương chanh tự nhi&ecirc;n.</p>', 4, 8, NULL, 1, '/storage/uploads/2024/04/16/healthycare3.jpg', 2, 570000, '2024-04-16 01:59:12', '2024-04-16 01:59:12'),
(50, 'Viên uống bổ sung DHA cho bé Healthy Care', 'Viên uống bổ sung DHA cho bé HealthyCare là thực phẩm bảo vệ sức khỏe dành cho trẻ sơ sinh từ 4 tháng tuổi trở lên nhằm giúp bổ sung DHA, hỗ trợ giúp bổ não, tốt cho mắt.', '<p style=\"text-align:justify\"><span style=\"color:#000000\"><strong>Ưu điểm sản phẩm&nbsp;</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\">Vi&ecirc;n uống bổ sung DHA cho b&eacute; HealthyCare c&oacute; những ưu điểm như sau:</span></p>\r\n\r\n<ul>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">Vi&ecirc;n nang mềm, m&agrave;ng bọc mỏng, dễ sử dụng đối với trẻ em&nbsp;</span></li>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">Sản phẩm đ&atilde; được khử m&ugrave;i tanh từ c&aacute;, hương chanh rất thơm, k&iacute;ch th&iacute;ch b&eacute; uống m&agrave; kh&ocirc;ng phải bắt &eacute;p con uống như 1 số loại DHA th&ocirc;ng thường.&nbsp;</span></li>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">H&agrave;m lượng DHA đạt chuẩn, gi&uacute;p b&eacute; hấp thụ tốt hơn.</span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><strong>Liều lượng sử dụng</strong></span></p>\r\n\r\n<ul>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">Trẻ sơ sinh dưới 4 th&aacute;ng tuổi: Tham khảo &yacute; kiến chuy&ecirc;n gia y tế v&agrave; chỉ sử dụng theo hướng dẫn.</span></li>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">Trẻ 4 th&aacute;ng đến 6 tuổi: Uống 1 vi&ecirc;n mỗi ng&agrave;y.</span></li>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">Trẻ 7 đến 12 tuổi: Uống 2 vi&ecirc;n mỗi ng&agrave;y.</span></li>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">Trẻ tr&ecirc;n 12 tuổi: Uống 3 vi&ecirc;n mỗi ng&agrave;y.</span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><strong><em>Lưu &yacute;</em></strong></span></p>\r\n\r\n<ul>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\"><em>N&ecirc;n uống trong bữa ăn</em></span></li>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\"><em>C&oacute; thể tham khảo &yacute; kiến b&aacute;c sĩ về liều lượng trước khi sử dụng nhằm đảm bảo an to&agrave;n cho trẻ.&nbsp;</em></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><strong>C&aacute;ch sử dụng</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\">C&aacute;ch sử dụng vi&ecirc;n uống bổ sung DHA cho b&eacute; HealthyCare như sau:</span></p>\r\n\r\n<ul>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">Uống trực tiếp</span></li>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">Đối với trẻ em dưới 4 tuổi, cắt hoặc vặn đu&ocirc;i vi&ecirc;n nang v&agrave; b&oacute;p dung dịch v&agrave;o muỗng v&agrave; sau đ&oacute;</span></li>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">Ngo&agrave;i ra, dung dịch c&oacute; thể được th&ecirc;m v&agrave;o thức ăn.</span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><strong>Hướng dẫn bảo quản</strong></span></p>\r\n\r\n<ul>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">Bảo quản ở nhiệt độ ph&ograve;ng, tr&aacute;nh &aacute;nh nắng trực tiếp.&nbsp;</span></li>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">Trong điều kiện thời tiết n&oacute;ng, c&aacute;c vi&ecirc;n nang c&oacute; thể d&iacute;nh v&agrave;o nhau, điều n&agrave;y kh&ocirc;ng ảnh hưởng đến chất lượng sản phẩm do m&agrave;ng bao được thiết kế mỏng để ph&ugrave; hợp với trẻ em.&nbsp;</span></li>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#000000\">Khi c&oacute; hiện tượng vi&ecirc;n nang d&iacute;nh v&agrave;o, cho sản phẩm v&agrave;o tủ lạnh 1- 2 tiếng, g&otilde; nhẹ, c&aacute;c vi&ecirc;n sẽ tự t&aacute;ch rời.&nbsp;&nbsp;</span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><strong>Th&agrave;nh phần ch&iacute;nh</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\">Mỗi vi&ecirc;n nang chứa: Dầu c&oacute; nguồn gốc từ vi tảo Schizochytrium (DHA) 250m</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\">Phụ liệu: Hương chanh , Soya oil, Lecithin, Gelatin, Glycerol, Nước tinh khiết.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\">Kh&ocirc;ng th&ecirc;m đường, tinh bột, gluten, men, muối, m&agrave;u nh&acirc;n tạo hoặc chất bảo quản.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\"><strong>Đặc điểm sản phẩm&nbsp;</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\">T&ecirc;n: Vi&ecirc;n uống DHA Kids Healthycare&nbsp;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\">Xuất xứ: &Uacute;c</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\">Thương hiệu: HealthyCare&nbsp;</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#000000\">Trọng lượng:106G&nbsp;</span></p>', 4, 8, NULL, 1, '/storage/uploads/2024/04/16/healthycare4.jpg', 1, 285001, '2024-04-16 02:00:20', '2024-04-16 02:00:20');
INSERT INTO `products` (`id`, `name`, `description`, `content`, `producttype_id`, `trademark_id`, `supplier_id`, `promotion_id`, `thumb`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(51, 'Viên uống Sữa Ong Chúa Healthy Care Royal Jelly 1000mg', 'Sữa Ong Chúa Healthy Care Royal Jelly 1000mg là thực phẩm bảo vệ sức khỏe dành cho người từ 18 tuổi trở lên. Sản phẩm có công dụng hỗ trợ tăng cường sức khỏe, làm đẹp da.', '<p dir=\"ltr\">Ưu điểm nổi bật</p>\r\n\r\n<p dir=\"ltr\">Sữa Ong Ch&uacute;a Healthy Care Royal Jelly 1000mg c&oacute; những c&ocirc;ng dụng nổi bật như sau:</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Chống mệt mỏi, l&agrave;m việc qu&aacute; sức, suy nhược, lo lắng k&eacute;o d&agrave;i, mất ngủ, biếng ăn.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Tăng cường hormone nữ, n&acirc;ng cao sức khỏe sinh l&yacute; nữ giới.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Chống l&atilde;o h&oacute;a da, chữa l&agrave;nh c&aacute;c tổn thương da.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Hỗ trợ tốt trong qu&aacute; tr&igrave;nh trị n&aacute;m da, đồi mồi v&agrave; t&agrave;n nhang cho l&agrave;n da mịn m&agrave;ng, khỏe mạnh</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Đặc biệt c&oacute; t&aacute;c dụng tốt đối với người mới ốm dậy hoặc người suy dinh dưỡng, suy nhược thần kinh, b&eacute;o ph&igrave;, cholesterol cao, tiểu đường, c&oacute; t&aacute;c dụng điều ho&agrave; huyết &aacute;p.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">N&acirc;ng cao sức đề kh&aacute;ng v&agrave; miễn dịch cho cơ thể.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">B&ecirc;n cạnh đ&oacute;, Sữa ong ch&uacute;a 1000mg cũng cung cấp vitamin nh&oacute;m B, vitamin A, C, D, E, protein, lipid, glucid, hormon, enzym, c&aacute;c chất kho&aacute;ng (Kali, Natri, sắt, crom, mangan), 18 acid amin v&agrave; 10-DHA.</p>\r\n\r\n<p dir=\"ltr\">Sản phẩm d&ugrave;ng được cho tất cả mọi người (đặc biệt l&agrave; người mới ốm dậy, người bị suy dinh dưỡng v&agrave; người gi&agrave; cần được tăng cường sức khỏe).&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Hướng dẫn sử dụng</p>\r\n\r\n<p dir=\"ltr\">Người lớn uống 2 vi&ecirc;n mỗi ng&agrave;y hoặc theo sự hướng dẫn của b&aacute;c sĩ.</p>\r\n\r\n<p dir=\"ltr\">Đối tượng sử dụng</p>\r\n\r\n<p dir=\"ltr\">Người từ 18 tuổi trở l&ecirc;n</p>\r\n\r\n<p dir=\"ltr\">Lưu &yacute;</p>\r\n\r\n<p dir=\"ltr\">Kh&ocirc;ng d&ugrave;ng cho trẻ em dưới 2 tuổi, người bị hen suyễn, người bị dị ứng với mật ong cũng như dị ứng với c&aacute;c th&agrave;nh phần c&oacute; trong sản phẩm.</p>\r\n\r\n<p dir=\"ltr\">Th&agrave;nh phần ch&iacute;nh</p>\r\n\r\n<p dir=\"ltr\">. Sữa ong ch&uacute;a c&ocirc; đặc: 183.3 mg</p>\r\n\r\n<p dir=\"ltr\">. Chiết xuất ong ch&uacute;a tươi: 550mg</p>\r\n\r\n<p dir=\"ltr\">. Chiết xuất Acid Amino 10HDA: 11mg (6%)&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Canxi carbonate: 20mg</p>\r\n\r\n<p dir=\"ltr\">. Chiết xuất canxi: 08 mg</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&ocirc;ng tin sản phẩm</strong></p>\r\n\r\n<p dir=\"ltr\">Sản phẩm: Sữa Ong Ch&uacute;a Healthy Care Royal Jelly 1000mg&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Thương hiệu: Healthy Care</p>\r\n\r\n<p dir=\"ltr\">Xuất xứ: &Uacute;c</p>\r\n\r\n<p dir=\"ltr\">Quy c&aacute;ch đ&oacute;ng g&oacute;i:&nbsp;365 vi&ecirc;n</p>', 4, 8, NULL, 1, '/storage/uploads/2024/04/16/healthycare5.jpg', 1, 890000, '2024-04-16 02:03:01', '2024-04-16 02:03:01'),
(52, 'Dầu Cá Omega 3 Healthy Care 1000mg', 'Dầu Cá Omega 3 Healthy Care Fish Oil 1000mg là thực phẩm bảo vệ sức khỏe dành cho trẻ từ 6 tháng tuổi trở lên. Sản phẩm giúp bổ sung​​ axit béo Omega 3 (DHA,EPA), bổ cho não, tốt cho tim mạch.', '<p dir=\"ltr\">Ưu điểm nổi bật</p>\r\n\r\n<p dir=\"ltr\">Dầu C&aacute; Omega 3 Healthy Care Fish Oil 1000mg c&oacute; những ưu điểm nổi bật như sau:</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Tốt cho sức khỏe hệ tim mạch, ngăn ngừa xơ cứng vữa động mạch, bệnh tim.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Tốt cho sức khỏe của mắt, bổ mắt, n&acirc;ng cao thị lực, đặc biệt tốt cho người cao tuổi suy giảm thị lực.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Tốt cho sức khỏe n&atilde;o bộ, gia tăng tr&iacute; nhớ, chống mệt mỏi. Giảm ph&aacute;t triển bệnh Alzheimer ở người gi&agrave;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Gi&uacute;p tăng cường chức năng hệ thần kinh khỏe mạnh.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Gi&uacute;p giảm cholesterol xấu LDL, duy tr&igrave; mức cholesterol b&igrave;nh thường ở người khỏe mạnh.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Giảm c&aacute;c triệu chứng vi&ecirc;m khớp, cứng khớp, sưng khớp, đau nhức khớp, đau lưng.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Giảm c&aacute;c triệu chứng đường h&ocirc; hấp, hen suyễn.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Fish Oil Healthy care Omega-3 1000mg gi&uacute;p giảm nguy cơ đột quỵ, tai biến.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Cung cấp dưỡng chất cho t&oacute;c, nu&ocirc;i dưỡng da, chống l&atilde;o h&oacute;a da.</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Phụ nữ mang thai bổ sung DHA tốt cho sự ph&aacute;t triển tr&iacute; tuệ, thị lực của thai nhi</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Liều lượng v&agrave; c&aacute;ch sử dụng</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Người lớn: Uống 1 vi&ecirc;n/lần, 3 lần mỗi ng&agrave;y c&ugrave;ng với bữa ăn&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Trẻ em ( từ 6-12 tuổi): Uống 1-2 vi&ecirc;n mỗi ng&agrave;y (l&agrave;m r&aacute;ch vỏ nang, sau đ&oacute; pha gel v&agrave;o sữa hoặc nước tr&aacute;i c&acirc;y)&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Trẻ em dưới 6 tuổi: Chỉ sử dụng theo sự hướng dẫn của chuy&ecirc;n gia y tế.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Hướng dẫn bảo quản</p>\r\n\r\n<p dir=\"ltr\">Bảo quản ở nơi tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Th&ocirc;ng tin sản phẩm</p>\r\n\r\n<p dir=\"ltr\">T&ecirc;n sản phẩm: Dầu C&aacute; Omega 3 Healthy Care Fish Oil 1000mg</p>\r\n\r\n<p dir=\"ltr\">Thương hiệu: Healthy Care</p>\r\n\r\n<p dir=\"ltr\">Xuất xứ: &Uacute;c</p>\r\n\r\n<p dir=\"ltr\">Quy c&aacute;ch đ&oacute;ng g&oacute;i: Hộp 400 vi&ecirc;n</p>', 4, 8, NULL, 1, '/storage/uploads/2024/04/16/healthycare6.jpg', 1, 480000, '2024-04-16 02:04:32', '2024-04-16 02:04:32'),
(53, 'Viên uống bổ não Healthy Care Ginkgo Biloba 2000mg', 'Bổ não Healthy Care Ginkgo Biloba 2000mg là sản phẩm bảo vệ sức khỏe dành cho người từ 18 tuổi trở lên. Sản phẩm hỗ trợ tăng cường lưu thông máu, hỗ trợ tăng cường khả năng hoạt động của não.', '<p dir=\"ltr\">Ưu điểm nổi bật</p>\r\n\r\n<p dir=\"ltr\">. Vi&ecirc;n bổ n&atilde;o Ginkgo Biloba 2000 được h&atilde;ng Healthy Care nghi&ecirc;n cứu v&agrave; điều chế từ quả bạch quả gi&uacute;p hỗ trợ lưu lượng m&aacute;u v&agrave; l&agrave;m tăng dinh dưỡng cho m&ocirc;; . Ginkgo Biloba 2000mg điều chỉnh v&agrave; c&acirc;n bằng sự tuần ho&agrave;n của mạch m&aacute;u, qua đ&oacute; l&agrave;m giảm &aacute;p lực đến c&aacute;c động mạch v&agrave; l&agrave;m săn chắc c&aacute;c tĩnh mạch; . Vi&ecirc;n uống bổ n&atilde;o Ginkgo Biloba cũng c&oacute; chức năng cải thiện v&agrave; tăng cường sự lưu th&ocirc;ng của oxy v&agrave; gluco cho cơ thể nhằm cung cấp năng lượng cho c&aacute;c tế b&agrave;o n&atilde;o hoạt động; . Nhiều nghi&ecirc;n cứu đ&atilde; cho thấy t&aacute;c dụng t&iacute;ch cực của bạch quả đối với tr&iacute; nhớ l&agrave;m việc, tốc độ xử l&yacute; th&ocirc;ng tin v&agrave; học tập.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">C&ocirc;ng dụng sản phẩm</p>\r\n\r\n<p dir=\"ltr\">C&ocirc;ng dụng của sản phẩm Bổ n&atilde;o Healthy Care Ginkgo Biloba 2000mg bao gồm:</p>\r\n\r\n<p dir=\"ltr\">. Gi&uacute;p cải thiện tr&iacute; nhớ v&agrave; chức năng nhận thức;</p>\r\n\r\n<p>.&nbsp;Gi&uacute;p cải thiện sự ch&uacute; &yacute; v&agrave; tinh thần r&otilde; r&agrave;ng;</p>\r\n\r\n<p>.&nbsp;Hỗ trợ trong việc thu hồi v&agrave; tốc độ th&ocirc;ng tin v&agrave; xử l&yacute;;</p>\r\n\r\n<p>.&nbsp;Hỗ trợ lưu th&ocirc;ng m&aacute;u ổn định;</p>\r\n\r\n<p>.&nbsp;Duy tr&igrave; sức khỏe của mao mạch;</p>\r\n\r\n<p>.&nbsp;Gi&uacute;p duy tr&igrave; lưu th&ocirc;ng m&aacute;u khắp cơ thể, tay v&agrave; ch&acirc;n.</p>\r\n\r\n<p dir=\"ltr\">Đối tượng sử dụng</p>\r\n\r\n<p dir=\"ltr\">Người lớn từ 18 tuổi trở l&ecirc;n.</p>\r\n\r\n<p dir=\"ltr\">Liều lượng sử dụng&nbsp;</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Người lớn uống 1 vi&ecirc;n/lần, 3 lần mỗi ng&agrave;y c&ugrave;ng với bữa ăn</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Nếu c&oacute; t&igrave;nh trạng sức khỏe đi k&egrave;m c&oacute; thể tham khảo &yacute; kiến của chuy&ecirc;n gia y tế</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Th&agrave;nh phần</p>\r\n\r\n<p dir=\"ltr\">Mỗi vi&ecirc;n nang chứa: Chiết xuất Ginkgo Biloba (2000mg)</p>\r\n\r\n<p dir=\"ltr\">Phụ liệu: Lecithin, S&aacute;p ong v&agrave;ng, Dầu thực vật đ&atilde; hydrat h&oacute;a, Soya Oil, Gelatin, Glycerol, Nước tinh khiết, Oxit sắt đen, Oxit sắt đỏ.</p>\r\n\r\n<p dir=\"ltr\">Th&ocirc;ng tin sản phẩm</p>\r\n\r\n<p dir=\"ltr\">T&ecirc;n sản phẩm: Bổ n&atilde;o Healthy Care Ginkgo Biloba 2000mg&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Thuơng hiệu: HealthyCare&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Xuất xứ: &Uacute;c&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Quy c&aacute;ch: 100 vi&ecirc;n</p>', 4, 8, NULL, 1, '/storage/uploads/2024/04/16/healthycare7.jpg', 1, 285000, '2024-04-16 02:05:45', '2024-04-16 02:05:45'),
(54, 'Nước Giặt OMO Matic Cửa trên túi 4kg', 'Nước Giặt OMO Matic Cửa trên sở hữu công nghệ màn chắn kháng bẩn Polyshield Xanh. Với công nghệ này, sản phẩm hoàn toàn có thể xoáy bay vết bẩn và loại bỏ mùi hôi trên quần áo hiệu quả. Sản phẩm dạng túi 4kg giúp tiết kiệm lên tới 104.000đ.', '<p dir=\"ltr\"><strong>Hướng dẫn sử dụng</strong></p>\r\n\r\n<p dir=\"ltr\">GIẶT M&Aacute;Y CỬA TR&Ecirc;N</p>\r\n\r\n<p dir=\"ltr\">1. Đổ nước giặt OMO Matic v&agrave;o nắp.</p>\r\n\r\n<p dir=\"ltr\">D&ugrave;ng 1 nắp (65ml) cho một lần giặt th&ocirc;ng thường. Điều chỉnh lượng nước giặt tương ứng với lượng quần &aacute;o v&agrave; độ bẩn.</p>\r\n\r\n<p dir=\"ltr\">2. Xử l&yacute; d&agrave;nh cho vết bẩn cứng đầu.</p>\r\n\r\n<p dir=\"ltr\">- Chấm một &iacute;t nước giặt OMO Matic.</p>\r\n\r\n<p dir=\"ltr\">- Thoa nhẹ l&ecirc;n vết bẩn.</p>\r\n\r\n<p dir=\"ltr\">- Đổ phần nước giặt c&ograve;n lại v&agrave;o m&aacute;y giặt.</p>', 3, 11, NULL, 1, '/storage/uploads/2024/04/16/omo1.jpg', 1, 167000, '2024-04-16 02:07:54', '2024-04-16 02:07:54'),
(55, 'Nước Giặt OMO Matic Comfort Tinh dầu thơm Cửa trên 3.7kg', 'Nước giặt OMO Matic Comfort cho máy giặt cửa trên nay được kết hợp cùng hương Comfort tinh dầu thơm cho quần áo không chỉ được xoáy bay vết bẩn nhanh chóng và còn lưu lại hương thơm bền lâu.', '<p dir=\"ltr\">Ưu điểm nổi bật của sản phẩm</p>\r\n\r\n<p dir=\"ltr\">- Nước giặt OMO Matic với C&ocirc;ng nghẹ M&agrave;n chắn kh&aacute;ng bẩn xanh, phủ một lớp m&agrave;n chắn v&ocirc; h&igrave;nh l&ecirc;n bề mặt sợi vải, khiến vết bẩn kh&ocirc;ng thể b&aacute;m s&acirc;u v&agrave; dễ d&agrave;ng bị đ&aacute;nh bay khi giặt.</p>\r\n\r\n<p dir=\"ltr\">- Hương Comfort tinh dầu thơm sang trọng bền l&acirc;u, với hương hoa ngọc lan t&acirc;y v&agrave; gỗ đ&agrave;n hương</p>\r\n\r\n<p dir=\"ltr\">- Th&acirc;n thiện m&ocirc;i trường với hoạt chất c&oacute; nguồn gốc từ thi&ecirc;n nhi&ecirc;n</p>\r\n\r\n<p dir=\"ltr\">Hướng dẫn sử dụng</p>\r\n\r\n<p dir=\"ltr\">Sản phẩm d&ugrave;ng cho m&aacute;y giặt cửa tr&ecirc;n</p>\r\n\r\n<p dir=\"ltr\">1. Đổ nước giặt OMO Matic v&agrave;o nắp.</p>\r\n\r\n<p dir=\"ltr\">D&ugrave;ng 1 nắp (65ml) cho một lần giặt th&ocirc;ng thường. Điều chỉnh lượng nước giặt tương ứng với lượng quần &aacute;o v&agrave; độ bẩn.</p>\r\n\r\n<p dir=\"ltr\">2. Xử l&yacute; d&agrave;nh cho vết bẩn cứng đầu.</p>\r\n\r\n<p dir=\"ltr\">- Chấm một &iacute;t nước giặt OMO Matic.</p>\r\n\r\n<p dir=\"ltr\">- Thoa nhẹ l&ecirc;n vết bẩn.</p>\r\n\r\n<p dir=\"ltr\">3. Đổ phần nước giặt c&ograve;n lại v&agrave;o m&aacute;y giặt.</p>\r\n\r\n<p dir=\"ltr\">Hướng dẫn bảo quản</p>\r\n\r\n<p dir=\"ltr\">Bảo quản nơi tho&aacute;ng m&aacute;t, tr&aacute;nh để ngo&agrave;i &aacute;nh nắng mặt trời.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Th&agrave;nh phần</p>\r\n\r\n<p dir=\"ltr\">Sodium Linear Alkylbenzene Sulfonate; Sodium Laureth Sulfate; Ethoxylated Polyethyleneimine; Poly(dimethylsiloxane) and Treated Amorphous Silica; 1,4-Benzenedicarboxylic acid, 1,4-dimethyl ester, polymer:1,2-propanediol, diester:2-methyloxirane polymer, oxirane monomethyl ether; Citric Acid; Sodium Chloride; Triethanolamine; Disodium Distyrylbiphenyl Disulfonate; Benzisothiazolinone; Chiết xuất L&aacute; Bạc H&agrave; (Hoạt chất c&oacute; nguồn gốc thi&ecirc;n nhi&ecirc;n 10 ppm); CI 45100; Chất m&agrave;u kh&aacute;c; Chất thơm; Nước.</p>\r\n\r\n<p dir=\"ltr\">Lưu &yacute;</p>\r\n\r\n<p dir=\"ltr\">Kiểm tra độ bền m&agrave;u trước khi sử dụng.</p>\r\n\r\n<p dir=\"ltr\">Unilever đề nghị giặt với nhiệt độ thường.</p>\r\n\r\n<p dir=\"ltr\">Để xa tầm tay trẻ em. Kh&ocirc;ng được uống.</p>\r\n\r\n<p dir=\"ltr\">Tr&aacute;nh để tiếp x&uacute;c với mắt. Nếu sản phẩm d&iacute;nh v&agrave;o mắt h&atilde;y rửa kỹ với nước.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Rửa sạch v&agrave; lau kh&ocirc; tay sau khi sử dụng.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Bảo quản nơi kh&ocirc; m&aacute;t.</p>\r\n\r\n<p dir=\"ltr\">Th&ocirc;ng tin sản phẩm</p>\r\n\r\n<p dir=\"ltr\">T&ecirc;n sản phẩm: Nước Giặt OMO Matic Comfort Tinh dầu thơm Cửa tr&ecirc;n 3.7kg</p>\r\n\r\n<p dir=\"ltr\">Thương hiệu: OMO</p>\r\n\r\n<p dir=\"ltr\">Xuất xứ: Việt Nam</p>\r\n\r\n<p dir=\"ltr\">Nh&agrave; sản xuất: Unilever Việt Nam</p>\r\n\r\n<p dir=\"ltr\">Trọng lượng: 3.7kg</p>', 3, 11, NULL, 1, '/storage/uploads/2024/04/16/omo2.jpg', 1, 167201, '2024-04-16 02:09:28', '2024-04-16 02:09:28'),
(56, 'Nước Giặt OMO Matic Comfort Tinh dầu thơm Cửa trên 2.0kg', 'Nước giặt OMO Matic Comfort cho máy giặt cửa trên nay được kết hợp cùng hương Comfort tinh dầu thơm cho quần áo không chỉ được xoáy bay vết bẩn nhanh chóng và còn lưu lại hương thơm bền lâu.', '<p dir=\"ltr\">Ưu điểm nổi bật của sản phẩm</p>\r\n\r\n<p dir=\"ltr\">- Nước giặt OMO Matic với C&ocirc;ng nghẹ M&agrave;n chắn kh&aacute;ng bẩn xanh, phủ một lớp m&agrave;n chắn v&ocirc; h&igrave;nh l&ecirc;n bề mặt sợi vải, khiến vết bẩn kh&ocirc;ng thể b&aacute;m s&acirc;u v&agrave; dễ d&agrave;ng bị đ&aacute;nh bay khi giặt.</p>\r\n\r\n<p dir=\"ltr\">- Hương Comfort tinh dầu thơm sang trọng bền l&acirc;u, với hương hoa ngọc lan t&acirc;y v&agrave; gỗ đ&agrave;n hương</p>\r\n\r\n<p dir=\"ltr\">- Th&acirc;n thiện m&ocirc;i trường với hoạt chất c&oacute; nguồn gốc từ thi&ecirc;n nhi&ecirc;n</p>\r\n\r\n<p dir=\"ltr\">Hướng dẫn sử dụng</p>\r\n\r\n<p dir=\"ltr\">Sản phẩm d&ugrave;ng cho m&aacute;y giặt cửa tr&ecirc;n</p>\r\n\r\n<p dir=\"ltr\">1. Đổ nước giặt OMO Matic v&agrave;o nắp.</p>\r\n\r\n<p dir=\"ltr\">D&ugrave;ng 1 nắp (65ml) cho một lần giặt th&ocirc;ng thường. Điều chỉnh lượng nước giặt tương ứng với lượng quần &aacute;o v&agrave; độ bẩn.</p>\r\n\r\n<p dir=\"ltr\">2. Xử l&yacute; d&agrave;nh cho vết bẩn cứng đầu.</p>\r\n\r\n<p dir=\"ltr\">- Chấm một &iacute;t nước giặt OMO Matic.</p>\r\n\r\n<p dir=\"ltr\">- Thoa nhẹ l&ecirc;n vết bẩn.</p>\r\n\r\n<p dir=\"ltr\">3. Đổ phần nước giặt c&ograve;n lại v&agrave;o m&aacute;y giặt.</p>\r\n\r\n<p dir=\"ltr\">Hướng dẫn bảo quản</p>\r\n\r\n<p dir=\"ltr\">Bảo quản nơi tho&aacute;ng m&aacute;t, tr&aacute;nh để ngo&agrave;i &aacute;nh nắng mặt trời.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Th&agrave;nh phần</p>\r\n\r\n<p dir=\"ltr\">Sodium Linear Alkylbenzene Sulfonate; Sodium Laureth Sulfate; Ethoxylated Polyethyleneimine; Poly(dimethylsiloxane) and Treated Amorphous Silica; 1,4-Benzenedicarboxylic acid, 1,4-dimethyl ester, polymer:1,2-propanediol, diester:2-methyloxirane polymer, oxirane monomethyl ether; Citric Acid; Sodium Chloride; Triethanolamine; Disodium Distyrylbiphenyl Disulfonate; Benzisothiazolinone; Chiết xuất L&aacute; Bạc H&agrave; (Hoạt chất c&oacute; nguồn gốc thi&ecirc;n nhi&ecirc;n 10 ppm); CI 45100; Chất m&agrave;u kh&aacute;c; Chất thơm; Nước.</p>\r\n\r\n<p dir=\"ltr\">Lưu &yacute;</p>\r\n\r\n<p dir=\"ltr\">Kiểm tra độ bền m&agrave;u trước khi sử dụng.</p>\r\n\r\n<p dir=\"ltr\">Unilever đề nghị giặt với nhiệt độ thường.</p>\r\n\r\n<p dir=\"ltr\">Để xa tầm tay trẻ em. Kh&ocirc;ng được uống.</p>\r\n\r\n<p dir=\"ltr\">Tr&aacute;nh để tiếp x&uacute;c với mắt. Nếu sản phẩm d&iacute;nh v&agrave;o mắt h&atilde;y rửa kỹ với nước.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Rửa sạch v&agrave; lau kh&ocirc; tay sau khi sử dụng.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Bảo quản nơi kh&ocirc; m&aacute;t.</p>\r\n\r\n<p dir=\"ltr\">Th&ocirc;ng tin sản phẩm</p>\r\n\r\n<p dir=\"ltr\">T&ecirc;n sản phẩm: Nước Giặt OMO Matic Comfort Tinh dầu thơm Cửa tr&ecirc;n 2.0kg</p>\r\n\r\n<p dir=\"ltr\">Thương hiệu: OMO</p>\r\n\r\n<p dir=\"ltr\">Xuất xứ: Việt Nam</p>\r\n\r\n<p dir=\"ltr\">Nh&agrave; sản xuất: Unilever Việt Nam</p>\r\n\r\n<p dir=\"ltr\">Trọng lượng: 2.0kg</p>', 3, 11, NULL, 1, '/storage/uploads/2024/04/16/omo3.jpg', 1, 105600, '2024-04-16 02:10:39', '2024-04-16 02:10:39'),
(57, 'Nước Giặt OMO Matic Bền Đẹp Cửa trước 2.0kg', 'Với công nghệ màn chắn kháng bẩn Polyshield Xanh kết hợp cùng chiết xuất từ lựu và tre, Nước Giặt OMO Matic Bền Đẹp Cửa trước không chỉ giúp xoáy bay vết bẩn và loại bỏ mùi hôi, mà còn giữ cho quần áo bền màu sau 100 lần giặt. Sản phẩm dạng túi 2kg tiện dụng.', '<p><img src=\"https://cdn1.concung.com/storage/2021/08/1628679413-omo-frontload-2-0kg-mockup.jpg\" /></p>\r\n\r\n<p><strong>Hướng dẫn sử dụng:</strong></p>\r\n\r\n<p><strong>GIẶT M&Aacute;Y CỬA TRƯỚC</strong></p>\r\n\r\n<p>1. Đổ nước giặt OMO Matic v&agrave;o nắp.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;D&ugrave;ng 1 nắp (65ml) cho một lần giặt th&ocirc;ng thường. Điều chỉnh lượng nước giặt tương ứng với lượng quần &aacute;o v&agrave; độ bẩn.</p>\r\n\r\n<p>2. Xử l&yacute; d&agrave;nh cho vết bẩn cứng đầu.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Chấm một &iacute;t nước giặt OMO Matic.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thoa nhẹ l&ecirc;n vết bẩn.</p>\r\n\r\n<p>-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Đổ phần nước giặt c&ograve;n lại v&agrave;o m&aacute;y giặt.</p>', 3, 11, NULL, 1, '/storage/uploads/2024/04/16/omo4.jpg', 1, 105600, '2024-04-16 02:12:12', '2024-04-16 02:12:12'),
(58, 'Nước Giặt OMO Matic Cho Quần Áo Bé Yêu, Túi 3.6kg', 'Nước Giặt OMO Matic Cho Quần Áo Bé Yêu chứa thành phần được chiết xuất từ Tràm Trà và Nha Đam. Nhờ vậy, sản phẩm không chỉ giúp làm sạch khuẩn mà còn dịu nhẹ, an toàn cho bé.', '<p dir=\"ltr\"><strong>Hướng dẫn sử dụng</strong></p>\r\n\r\n<p dir=\"ltr\">1. Với giặt m&aacute;y: Đổ nước giặt OMO Matic v&agrave;o nắp, sử dụng 1 nắp đầy (65ml) cho một lần giặt th&ocirc;ng thường.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;&nbsp;&nbsp;&nbsp;Với giặt tay: Sử dụng &frac12; nắp với khoảng 3-5L nước cho 8-10 chiếc quần &aacute;o.</p>\r\n\r\n<p dir=\"ltr\">2. Xử l&yacute; d&agrave;nh cho vết bẩn cứng đầu:</p>\r\n\r\n<p dir=\"ltr\">- Chấm một &iacute;t nước giặt OMO Matic.</p>\r\n\r\n<p dir=\"ltr\">- Thoa nhẹ l&ecirc;n vết bẩn.</p>\r\n\r\n<p dir=\"ltr\">Với giặt m&aacute;y: Đổ phần nước giặt c&ograve;n lại v&agrave;o m&aacute;y giặt.</p>\r\n\r\n<p dir=\"ltr\">Với giặt tay: V&ograve; nhẹ v&agrave; xả 2-3 lần với nước sạch.</p>', 3, 11, NULL, 1, '/storage/uploads/2024/04/16/omo5.jpg', 1, 227000, '2024-04-16 02:13:16', '2024-04-16 03:43:30'),
(59, 'Viên nén vệ sinh lồng giặt Omo (Hộp 4 viên – 80gr)', 'Viên nén vệ sinh lồng giặt OMO Matic là sản phẩm đến từ thương hiệu uy tín được nhiều gia đình Việt tin chọn. Với công thức Năng Lượng Xoáy ION-BOOST, sản phẩm giúp loạt bỏ sạch vi khuẩn, cho lồng giặt sạch sẽ.', '<p><img src=\"https://cdn1.concung.com/storage/2022/11/1669108185-vien-nen-ve-sinh-long-giat-omo-hop-4-vien-80gr.jpg\" /></p>\r\n\r\n<p><strong>Ưu điểm nổi bật của sản phẩm&nbsp;</strong><br />\r\n<strong>.&nbsp;</strong>C&ocirc;ng thức Năng Lượng Xo&aacute;y ION-BOOST giải ph&oacute;ng h&agrave;ng triệu ph&acirc;n tử l&agrave;m sạch mạnh mẽ.<br />\r\n<strong>.&nbsp;</strong>Khi kết hợp với lực xo&aacute;y của lồng giặt m&aacute;y giặt sẽ tạo ra c&aacute;c t&aacute;c động xo&aacute;y gi&uacute;p loại bỏ 5 yếu tố g&acirc;y mất vệ sinh trong lồng giặt: cặn bẩn, m&ugrave;i h&ocirc;i, vi khuẩn*, cặn mốc l&acirc;u ng&agrave;y gi&uacute;p cho lồng giặt sạch tối ưu, hạn chế ảnh hưởng l&ecirc;n quần &aacute;o trong những lần giặt tiếp theo.&nbsp;<br />\r\n<strong>*&nbsp;</strong>Dựa tr&ecirc;n kết quả trong điều kiện th&iacute; nghiệm với c&aacute;c loại vi khuẩn S.typhl; S.aureus; E.coli; P.aeruginosa; S.flexneri; B.subtilis<br />\r\n<br />\r\n<strong>Hướng dẫn sử dụng</strong><br />\r\n1. Lấy hết quần &aacute;o ra khỏi m&aacute;y giặt.<br />\r\n2. X&eacute; t&uacute;i nh&ocirc;m v&agrave; cho 2 vi&ecirc;n n&eacute;n vệ sinh trực tiếp v&agrave;o trong lồng giặt.<br />\r\n3. Chọn chế độ giặt th&ocirc;ng thường với mực nước cao nhất hoặc chế độ vệ sinh m&aacute;y giặt.<br />\r\n4. Đối với m&aacute;y giặt hơn 6 th&aacute;ng kh&ocirc;ng được vệ sinh v&agrave; kh&ocirc;ng c&oacute; chế độ vệ sinh lồng giặt: H&atilde;y cho m&aacute;y dừng lại để ng&acirc;m lồng giặt 4 - 6 tiếng trước khi ho&agrave;n th&agrave;nh chu tr&igrave;nh giặt. Sau đ&oacute; tiếp tục vệ sinh 1 lần nữa như hướng dẫn sử dụng b&igrave;nh thường.<br />\r\n5. Để đảm bảo vệ sinh cho lồng giặt, bạn n&ecirc;n vệ sinh lồng giặt mỗi th&aacute;ng một lần.<br />\r\n<strong><em>Lưu &yacute;:</em></strong><br />\r\n<strong>.&nbsp;</strong>Để xa tầm tay trẻ em<br />\r\n<strong>.&nbsp;</strong>Tr&aacute;nh tiếp x&uacute;c với mắt<br />\r\n<strong>.&nbsp;</strong>Nếu d&iacute;nh sản phẩm v&agrave;o mắt, rửa ngay với nước v&agrave; đến ngay cơ sở y tế, đem theo bao b&igrave; sản phẩm<br />\r\n<strong>.&nbsp;</strong>Kh&ocirc;ng được nuốt<br />\r\n<strong>.&nbsp;</strong>Rửa sạch v&agrave; lau kh&ocirc; tay sau khi sử dụng<br />\r\n<strong>.&nbsp;</strong>Kh&ocirc;ng giặt chung với quần &aacute;o hay c&aacute;c chất tẩy rửa kh&aacute;c<br />\r\n<br />\r\n<strong>Hướng dẫn bảo quản</strong><br />\r\nBảo quản sản phẩm ở nơi tho&aacute;ng m&aacute;t v&agrave; tr&aacute;nh &aacute;nh nắng trực tiếp</p>', 3, 11, NULL, 1, '/storage/uploads/2024/04/16/omo6.jpg', 1, 92000, '2024-04-16 02:14:22', '2024-04-16 03:43:07'),
(60, 'Nước Giặt OMO Matic Comfort Tinh dầu thơm Cửa trên 3.6kg', 'Nước giặt OMO Matic Comfort cho máy giặt cửa trên nay được kết hợp cùng hương Comfort tinh dầu thơm cho quần áo không chỉ được xoáy bay vết bẩn nhanh chóng và còn lưu lại hương thơm bền lâu.', '<p dir=\"ltr\">Ưu điểm nổi bật của sản phẩm</p>\r\n\r\n<p dir=\"ltr\"><strong>.</strong> Nước giặt OMO Matic với c&ocirc;ng nghệ M&agrave;n chắn kh&aacute;ng bẩn xanh, phủ một lớp m&agrave;n chắn v&ocirc; h&igrave;nh l&ecirc;n bề mặt sợi vải, khiến vết bẩn kh&ocirc;ng thể b&aacute;m s&acirc;u v&agrave; dễ d&agrave;ng bị đ&aacute;nh bay khi giặt.</p>\r\n\r\n<p dir=\"ltr\"><strong>.</strong> Hương Comfort tinh dầu thơm sang trọng bền l&acirc;u, với hương hoa ngọc lan t&acirc;y v&agrave; gỗ đ&agrave;n hương.</p>\r\n\r\n<p dir=\"ltr\"><strong>.</strong> Th&acirc;n thiện m&ocirc;i trường với hoạt chất c&oacute; nguồn gốc từ thi&ecirc;n nhi&ecirc;n.</p>\r\n\r\n<p dir=\"ltr\">Hướng dẫn sử dụng: Sản phẩm d&ugrave;ng cho m&aacute;y giặt cửa tr&ecirc;n</p>\r\n\r\n<p dir=\"ltr\"><strong>.</strong> Đổ nước giặt OMO Matic v&agrave;o nắp: D&ugrave;ng 1 nắp (65ml) cho một lần giặt th&ocirc;ng thường. Điều chỉnh lượng nước giặt tương ứng với lượng quần &aacute;o v&agrave; độ bẩn.</p>\r\n\r\n<p dir=\"ltr\"><strong>.</strong> Xử l&yacute; d&agrave;nh cho vết bẩn cứng đầu.</p>\r\n\r\n<p dir=\"ltr\">- Chấm một &iacute;t nước giặt OMO Matic.</p>\r\n\r\n<p dir=\"ltr\">- Thoa nhẹ l&ecirc;n vết bẩn.</p>\r\n\r\n<p dir=\"ltr\"><strong>.</strong> Đổ phần nước giặt c&ograve;n lại v&agrave;o m&aacute;y giặt.</p>\r\n\r\n<p dir=\"ltr\">Hướng dẫn bảo quản</p>\r\n\r\n<p dir=\"ltr\">Bảo quản nơi tho&aacute;ng m&aacute;t, tr&aacute;nh để ngo&agrave;i &aacute;nh nắng mặt trời.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Lưu &yacute;</p>\r\n\r\n<p dir=\"ltr\"><strong>. </strong>Kiểm tra độ bền m&agrave;u trước khi sử dụng.</p>\r\n\r\n<p dir=\"ltr\"><strong>. </strong>Unilever đề nghị giặt với nhiệt độ thường.</p>\r\n\r\n<p dir=\"ltr\"><strong>. </strong>Để xa tầm tay trẻ em. Kh&ocirc;ng được uống.</p>\r\n\r\n<p dir=\"ltr\"><strong>. </strong>Tr&aacute;nh để tiếp x&uacute;c với mắt. Nếu sản phẩm d&iacute;nh v&agrave;o mắt h&atilde;y rửa kỹ với nước.&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>. </strong>Rửa sạch v&agrave; lau kh&ocirc; tay sau khi sử dụng.&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>. </strong>Bảo quản nơi kh&ocirc; m&aacute;t.</p>', 3, 11, NULL, 1, '/storage/uploads/2024/04/16/omo7.jpg', 1, 230000, '2024-04-16 02:15:58', '2024-04-16 02:15:58'),
(61, 'Nước xả làm mềm vải Comfort diu nhẹ thơm hương phấn, Túi 3.2L', 'Nước xả làm mềm vải Comfort diu nhẹ thơm hương phấn với chiết xuất yến mạnh và thành phần làm mềm vải từ 100% nguồn gốc thực vật đảm bảo an toàn cho làn da của bé yêu.', '<p><strong>Ưu điểm nổi bật</strong></p>\r\n\r\n<p><strong>.&nbsp;</strong>Chiết xuất yến mạch v&agrave; th&agrave;nh phần l&agrave;m mềm vải từ 100% nguồn gốc thực vật;<br />\r\n<strong>.&nbsp;</strong>Chăm s&oacute;c l&agrave;nh t&iacute;nh từ s&acirc;u từng s&acirc;u từng sợi vải, mang lại cảm gi&aacute;c &ecirc;m &aacute;i, dễ chịu cho l&agrave;n da b&eacute; y&ecirc;u;<br />\r\n<strong>.&nbsp;</strong>Lưu hương phấn thơm nhẹ nh&agrave;ng v&agrave; ngọt ng&agrave;o tr&ecirc;n &aacute;o quần, lọai bỏ hiệu quả m&ugrave;i h&ocirc;i (kể cả m&ugrave;i trớ sữa, đồ ăn dặm,...).&nbsp;<br />\r\n<br />\r\n<strong>Hướng dẫn sử dụng</strong></p>\r\n\r\n<p><strong><em>Giặt tay:&nbsp;</em></strong></p>\r\n\r\n<p><strong>.&nbsp;</strong>D&ugrave;ng 1/2 nắp cho 10-15 chiếc quần &aacute;o;</p>\r\n\r\n<p><strong>.&nbsp;</strong>H&ograve;a Comfort Dịu Nhẹ v&agrave;o nước xả cuối, đảm bảo lượng nước đủ ngập hết quần &aacute;o;</p>\r\n\r\n<p><strong>.&nbsp;</strong>Ng&acirc;m quần &aacute;o 10-15 ph&uacute;t. Sau đ&oacute; vắt v&agrave; phơi kh&ocirc;.</p>\r\n\r\n<p><strong><em>Giặt m&aacute;y:&nbsp;</em></strong></p>\r\n\r\n<p><strong>.</strong>&nbsp;Đổ Comfort Dịu Nhẹ v&agrave;o ngăn chứa nước xả vải;<br />\r\n<strong>.</strong>&nbsp;D&ugrave;ng 1 nắp cho một lần giặt th&ocirc;ng thường;<br />\r\n<strong>.</strong>&nbsp;Điều chỉnh lượng d&ugrave;ng t&ugrave;y v&agrave;o số lượng v&agrave; chất liệu quần &aacute;o.<br />\r\n<br />\r\n<strong>Hướng dẫn bảo quản</strong></p>\r\n\r\n<p>Bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp</p>\r\n\r\n<p><strong>Hạn sử dụng</strong></p>\r\n\r\n<p>15 th&aacute;ng kể từ NSX (in tr&ecirc;n bao b&igrave;).</p>', 3, 12, NULL, 1, '/storage/uploads/2024/04/16/comfort1.png', 1, 245000, '2024-04-16 02:17:25', '2024-04-16 02:17:25'),
(62, 'Nước xả vải Comfort chăm sóc chuyên sâu 1 lần xả hương Ban Mai (túi 3.2L)', 'Nước Xả Vải Comfort Chăm Sóc Chuyên Sâu mới sẽ giúp bạn ngăn bạc màu và ngừa sờn vải. Với công thức Ultra Care độc quyền, nước xả vải Comfort thẩm thấu sâu vào từng sợi vải tạo nên lớp màng giúp bảo vệ màu sắc và độ bền sợi vải, cũng như ướp hương ban mai lôi cuốn bền lâu cho áo quần luôn như mới sau nhiều lần giặt.', '<p style=\"text-align:center\"><span style=\"color:#000000\">&nbsp;</span><img src=\"https://cdn1.concung.com/storage/2022/04/1650450784.png\" style=\"border-style:none; box-sizing:border-box; height:auto !important; max-width:100%; vertical-align:middle; width:600px\" /></p>\r\n\r\n<p><span style=\"color:#000000\"><strong>Ưu điểm nổi bật của sản phẩm&nbsp;</strong></span></p>\r\n\r\n<ul>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#222222\"><span style=\"background-color:#ffffff\">C&ocirc;ng thức chăm s&oacute;c chuy&ecirc;n s&acirc;u Ultra Care mới gi&uacute;p bảo vệ &aacute;o quần kh&ocirc;ng bị bạc m&agrave;u, sờn vải sau mỗi lần giặt để &aacute;o quần lu&ocirc;n như mới.</span></span></li>\r\n	<li style=\"list-style-type:disc\"><span style=\"color:#222222\"><span style=\"background-color:#ffffff\">Lưu hương thơm ng&aacute;t tr&ecirc;n &aacute;o quần suốt ng&agrave;y d&agrave;i.</span></span></li>\r\n</ul>\r\n\r\n<p><span style=\"color:#000000\"><strong>Hướng dẫn sử dụng&nbsp;</strong></span></p>\r\n\r\n<p><span style=\"color:#222222\"><strong><em>GIẶT TAY:</em></strong></span></p>\r\n\r\n<p><span style=\"color:#222222\">&nbsp;1. Sau khi giặt, vắt quần &aacute;o cho bớt bọt.</span></p>\r\n\r\n<p><span style=\"color:#222222\">&nbsp;2. D&ugrave;ng 1 g&oacute;i nước xả vải Comfort Giữ M&agrave;u &amp; Bền Vải cho 10-15 chiếc quần &aacute;o, đảm bảo lượng nước đủ ngập hết quần &aacute;o</span></p>\r\n\r\n<p><span style=\"color:#222222\">&nbsp;3. Ng&acirc;m quần &aacute;o 10-15 ph&uacute;t. Sau đ&oacute; vắt v&agrave; phơi kh&ocirc;. Kh&ocirc;ng cần xả lại với nước</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#222222\"><strong><em>GIẶT M&Aacute;Y:</em></strong></span></p>\r\n\r\n<p><span style=\"color:#222222\">&nbsp;1. Đổ nước xả vải Comfort Giữ M&agrave;u &amp; Bền Vải v&agrave;o ngăn chứa nước xả vải. D&ugrave;ng theo hướng dẫn sử dụng của m&aacute;y giặt.</span></p>\r\n\r\n<p><span style=\"color:#222222\">&nbsp;2. Điều chỉnh lượng d&ugrave;ng t&ugrave;y v&agrave;o số lượng v&agrave; chất liệu quần &aacute;o &amp; chế độ giặt.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#000000\"><strong>Hướng dẫn bảo quản&nbsp;</strong></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#000000\">Bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t&nbsp;</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#000000\"><strong>Th&ocirc;ng tin chi tiết&nbsp;</strong></span></p>\r\n\r\n<p><span style=\"color:#000000\">T&ecirc;n sản phẩm:&nbsp;Nước xả vải Comfort chăm s&oacute;c chuy&ecirc;n s&acirc;u 1 lần xả hương Ban Mai (t&uacute;i 3.2L)</span></p>\r\n\r\n<p><span style=\"color:#000000\">Thương hiệu: Comfort&nbsp;</span></p>\r\n\r\n<p><span style=\"color:#000000\">Xuất xứ: Việt Nam&nbsp;</span></p>\r\n\r\n<p><span style=\"color:#000000\">Thể t&iacute;ch:&nbsp;3.2l </span></p>\r\n\r\n<p>&nbsp;</p>', 3, 12, NULL, 1, '/storage/uploads/2024/04/16/comfort2.png', 1, 239000, '2024-04-16 02:18:42', '2024-04-16 02:18:42'),
(63, 'Dung dịch giặt quần áo D-nee 3L/2,8L Tím', 'Dung dịch giặt quần áo D-nee 3L/2,8L Tím được chế tạo bởi công thức đặc biệt chứa Sodium Lauryl Sulfate, Sodium Laureth Sulfate giúp đánh bật các vết bẩn và Polyalate sẽ ngăn chặn vết bẩn quay trở lại mà không gây kích ứng cho làn da nhạy cảm của bé, vừa an toàn cho da tay của Mẹ.', '<p><strong>Ưu điểm nổi bật</strong><br />\r\n<strong><em>C&ocirc;ng thức đặc biệt gi&uacute;p thổi bay vết bẩn</em></strong><br />\r\n. Dung dịch giặt xả quần &aacute;o em b&eacute; D-nee với c&ocirc;ng thức đặc biệt chứa Sodium Lauryl Sulfate, Sodium Laureth Sulfate gi&uacute;p đ&aacute;nh bật c&aacute;c vết bẩn v&agrave; Polyalate sẽ ngăn chặn vết bẩn quay trở lại, gi&uacute;p cho quần &aacute;o b&eacute; v&agrave; cả nh&agrave; lu&ocirc;n sạch v&agrave; thơm m&aacute;t;<br />\r\n<strong><em>Mềm dịu với da tay</em></strong><br />\r\n. Dung dịch c&oacute; độ pH trung t&iacute;nh n&ecirc;n rất mềm dịu với da tay bạn v&agrave; kh&ocirc;ng l&agrave;m hư hại đến quần &aacute;o của b&eacute;;<br />\r\n<strong><em>Hương thơm dịu nhẹ</em></strong><br />\r\n. Dung dịch giặt xả quần &aacute;o em b&eacute; D-nee c&oacute; hương thơm rất nhẹ, th&iacute;ch hợp cho trẻ sơ sinh v&agrave; những người bị dị ứng với m&ugrave;i hương, gi&uacute;p quần &aacute;o b&eacute; y&ecirc;u lu&ocirc;n thơm tho suốt cả ng&agrave;y.<br />\r\n<br />\r\n<strong>Hướng dẫn sử dụng</strong><br />\r\nGiặt tay:<br />\r\n. H&ograve;a &frac12; nắp chai hoặc 15ml dung dịch giặt xả quần &aacute;o em b&eacute; D-Nee với 2 l&iacute;t nước (d&ugrave;ng giặt cho 10 bộ quần &aacute;o trẻ em)<br />\r\n. Ng&acirc;m quần &aacute;o trong v&agrave;i ph&uacute;t&nbsp;<br />\r\n. Giặt lại với nước sạch<br />\r\nGiặt m&aacute;y:<br />\r\n. H&ograve;a 2 nắp chai hoặc 60ml dung dịch giặt xả quần &aacute;o em b&eacute; D-Nee với 8 l&iacute;t nước trong m&aacute;y giặt<br />\r\n. Ng&acirc;m quần &aacute;o trong v&agrave;i ph&uacute;t<br />\r\n. Giặt lại với nước sạch.</p>', 3, 16, NULL, 1, '/storage/uploads/2024/04/16/D-nee1.png', 1, 215000, '2024-04-16 02:23:54', '2024-04-16 02:23:54'),
(64, 'Dung dịch giặt quần áo D-nee 3L/2,8L Xanh', 'Dung dịch giặt quần áo D-nee 3L/2,8L Xanh được chế tạo bởi công thức đặc biệt chứa Sodium Lauryl Sulfate, Sodium Laureth Sulfate giúp đánh bật các vết bẩn và Polyalate sẽ ngăn chặn vết bẩn quay trở lại mà không gây kích ứng cho làn da nhạy cảm của bé, vừa an toàn cho da tay của Mẹ.', '<p><strong>Ưu điểm nổi bật</strong><br />\r\n<strong><em>C&ocirc;ng thức đặc biệt gi&uacute;p thổi bay vết bẩn</em></strong><br />\r\n. Dung dịch giặt xả quần &aacute;o em b&eacute; D-nee với c&ocirc;ng thức đặc biệt chứa Sodium Lauryl Sulfate, Sodium Laureth Sulfate gi&uacute;p đ&aacute;nh bật c&aacute;c vết bẩn v&agrave; Polyalate sẽ ngăn chặn vết bẩn quay trở lại, gi&uacute;p cho quần &aacute;o b&eacute; v&agrave; cả nh&agrave; lu&ocirc;n sạch v&agrave; thơm m&aacute;t;<br />\r\n<strong><em>Mềm dịu với da tay</em></strong><br />\r\n. Dung dịch c&oacute; độ pH trung t&iacute;nh n&ecirc;n rất mềm dịu với da tay bạn v&agrave; kh&ocirc;ng l&agrave;m hư hại đến quần &aacute;o của b&eacute;;<br />\r\n<strong><em>Hương thơm dịu nhẹ</em></strong><br />\r\n. Dung dịch giặt xả quần &aacute;o em b&eacute; D-nee c&oacute; hương thơm rất nhẹ, th&iacute;ch hợp cho trẻ sơ sinh v&agrave; những người bị dị ứng với m&ugrave;i hương, gi&uacute;p quần &aacute;o b&eacute; y&ecirc;u lu&ocirc;n thơm tho suốt cả ng&agrave;y.<br />\r\n<br />\r\n<strong>Hướng dẫn sử dụng</strong><br />\r\nGiặt tay:<br />\r\n. H&ograve;a &frac12; nắp chai hoặc 15ml dung dịch giặt xả quần &aacute;o em b&eacute; D-Nee với 2 l&iacute;t nước (d&ugrave;ng giặt cho 10 bộ quần &aacute;o trẻ em)<br />\r\n. Ng&acirc;m quần &aacute;o trong v&agrave;i ph&uacute;t&nbsp;<br />\r\n. Giặt lại với nước sạch<br />\r\nGiặt m&aacute;y:<br />\r\n. H&ograve;a 2 nắp chai hoặc 60ml dung dịch giặt xả quần &aacute;o em b&eacute; D-Nee với 8 l&iacute;t nước trong m&aacute;y giặt<br />\r\n. Ng&acirc;m quần &aacute;o trong v&agrave;i ph&uacute;t<br />\r\n. Giặt lại với nước sạch.</p>', 3, 16, NULL, 1, '/storage/uploads/2024/04/16/D-nee2.png', 1, 215000, '2024-04-16 02:25:16', '2024-04-16 02:25:16'),
(65, 'Dung dịch giặt quần áo D-nee 3L/2,8L Hồng', 'Dung dịch giặt quần áo D-nee 3L/2,8L Hồng được chế tạo bởi công thức đặc biệt chứa Sodium Lauryl Sulfate, Sodium Laureth Sulfate giúp đánh bật các vết bẩn và Polyalate sẽ ngăn chặn vết bẩn quay trở lại mà không gây kích ứng cho làn da nhạy cảm của bé, vừa an toàn cho da tay của Mẹ.', '<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p>\r\n\r\n<p><strong>C&ocirc;ng thức đặc biệt gi&uacute;p thổi bay vết bẩn</strong></p>\r\n\r\n<p>Dung dịch giặt xả quần &aacute;o em b&eacute; D-nee với c&ocirc;ng thức đặc biệt chứa Sodium Lauryl Sulfate, Sodium Laureth Sulfate gi&uacute;p đ&aacute;nh bật c&aacute;c vết bẩn v&agrave; Polyalate sẽ ngăn chặn vết bẩn quay trở lại, gi&uacute;p cho quần &aacute;o b&eacute; v&agrave; cả nh&agrave; lu&ocirc;n sạch v&agrave; thơm m&aacute;t.</p>\r\n\r\n<p><strong>Mềm dịu với da tay</strong></p>\r\n\r\n<p>Dung dịch c&oacute; độ pH trung t&iacute;nh n&ecirc;n rất mềm dịu với da tay bạn v&agrave; kh&ocirc;ng l&agrave;m hư hại đến quần &aacute;o của b&eacute;.</p>\r\n\r\n<p><strong>Hương thơm dịu nhẹ</strong></p>\r\n\r\n<p>Dung dịch giặt xả quần &aacute;o em b&eacute; D-nee c&oacute; hương thơm rất nhẹ, th&iacute;ch hợp cho trẻ sơ sinh v&agrave; những người bị dị ứng với m&ugrave;i hương, gi&uacute;p quần &aacute;o b&eacute; y&ecirc;u lu&ocirc;n thơm tho suốt cả ng&agrave;y.</p>\r\n\r\n<p><img alt=\"12595-13623\" src=\"https://cdn1.concung.com/storage/images/hinh/147ba35d84256f85c3de562072d0e7e9.jpg\" style=\"height:475px; width:380px\" /></p>\r\n\r\n<p><strong>TH&Ocirc;NG TIN SẢN PHẨM</strong></p>\r\n\r\n<p><strong><em>T&ecirc;n sản phẩm:&nbsp;</em></strong>Dung dịch giặt quần &aacute;o D-nee 3L Hồng</p>\r\n\r\n<p><em><strong>Thương hiệu:&nbsp;</strong></em>D-nee&nbsp;</p>\r\n\r\n<p><em><strong>Xuất xứ:&nbsp;</strong></em>Th&aacute;i Lan</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng</strong></p>\r\n\r\n<p>Giặt tay:</p>\r\n\r\n<p>- H&ograve;a &frac12; nắp chai hoặc 15ml dung dịch giặt xả quần &aacute;o em b&eacute; D-Nee với 2 l&iacute;t nước (d&ugrave;ng giặt cho 10 bộ quần &aacute;o trẻ em)</p>\r\n\r\n<p>- Ng&acirc;m quần &aacute;o trong v&agrave;i ph&uacute;t &nbsp;</p>\r\n\r\n<p>- Giặt lại với nước sạch</p>\r\n\r\n<p>Giặt m&aacute;y:</p>\r\n\r\n<p>- H&ograve;a 2 nắp chai hoặc 60ml dung dịch giặt xả quần &aacute;o em b&eacute; D-Nee với 8 l&iacute;t nước trong m&aacute;y giặt</p>\r\n\r\n<p>- Ng&acirc;m quần &aacute;o trong v&agrave;i ph&uacute;t</p>\r\n\r\n<p>- Giặt lại với nước sạch</p>', 3, 16, NULL, 1, '/storage/uploads/2024/04/16/D-nee3.png', 1, 215000, '2024-04-16 02:26:21', '2024-04-16 02:26:21'),
(66, 'Nước giặt quần áo em bé D-nee Organic Xanh lá chai 3L/2,8L', 'Nước giặt quần áo em bé D-nee Organic Xanh lá chai 3L/2,8L﻿ được chế tạo bởi công thức đặt biệt đánh bật các viết bẩn và Polyacrylate sẽ ngăn chặn các vết bẩn quay trở lại mà không gây kích ứng làn da nhạy cảm của bé.', '<p><strong>Ưu điểm nổi bật</strong><br />\r\n. Được chế tạo bởi c&ocirc;ng thức đặt biệt đ&aacute;nh bật c&aacute;c viết bẩn v&agrave; Polyacrylate sẽ ngăn chặn c&aacute;c vết bẩn quay trở lại m&agrave; kh&ocirc;ng g&acirc;y k&iacute;ch ứng l&agrave;n da nhạy cảm của b&eacute;;<br />\r\n. Độ PH trung t&iacute;nh, chiết xuất nha đam (Aloe Vera) tự nhi&ecirc;n rất an to&agrave;n, mềm dịu với da tay v&agrave; kh&ocirc;ng l&agrave;m hư hại quần &aacute;o;<br />\r\n. Kh&ocirc;ng chứa Cồn,Clo, Paraben, Phosphate, chất tẩy trắng, kh&ocirc;ng c&oacute; thuốc nhộm, chất l&agrave;m s&aacute;ng quang học v&agrave; hương liệu tổng hợp g&acirc;y dị ứng cho da;<br />\r\n. Hương thơm nhẹ nh&agrave;ng , m&aacute;t dịu gi&uacute;p quần &aacute;o b&eacute; y&ecirc;u lu&ocirc;n thơm tho suốt cả ng&agrave;y.<br />\r\n<strong>Hướng dẫn sử dụng</strong></p>\r\n\r\n<p>. Ho&agrave; &frac12; nắp chai hoặc 15ml nước giặt quần &aacute;o trẻ em D-Nee với 2 l&iacute;t nước ( d&ugrave;ng giặt cho 10 bộ quần &aacute;o trẻ em).<br />\r\n. Ng&acirc;m quần &aacute;o trong v&agrave;i ph&uacute;t.<br />\r\n. Giặt lại với nước sạch.<br />\r\n. Vắt r&aacute;o nước v&agrave; mang quần &aacute;o b&eacute; y&ecirc;u đi phơi.<br />\r\n<strong>Th&agrave;nh phần</strong></p>\r\n\r\n<p>+ Sodium Lauryl Sulfate</p>\r\n\r\n<p>+ Sodium Laureth Sulfate</p>\r\n\r\n<p>+ Polyacrylate</p>\r\n\r\n<p>﻿</p>', 3, 16, NULL, 1, '/storage/uploads/2024/04/16/D-nee4.png', 1, 215000, '2024-04-16 02:27:40', '2024-04-16 02:27:40'),
(67, 'Tắm gội toàn thân em bé Baby D-nee Hồng Organic', 'Tắm gội toàn thân em bé Baby D-nee Hồng Organic (dưới 3 tuổi) có chứa các thành phần tự nhiên nuôi dưỡng làn da và mái tóc của bé. Độ PH cân bằng với công thức giữ ẩm và làm sạch nhẹ nhàng cho bé.', '<p><strong>M&ocirc; tả sản phẩm&nbsp;</strong><br />\r\nTắm gội to&agrave;n th&acirc;n em b&eacute; Baby D-nee Hồng Organic&nbsp; (dưới 3 tuổi) c&oacute; chứa c&aacute;c th&agrave;nh phần tự nhi&ecirc;n như chiết xuất hoa anh đ&agrave;o, nước kho&aacute;ng, dầu hạt hướng dương, vitamin E nu&ocirc;i dưỡng l&agrave;n da v&agrave; m&aacute;i t&oacute;c của b&eacute;. Độ PH c&acirc;n bằng với c&ocirc;ng thức giữ ẩm v&agrave; l&agrave;m sạch nhẹ nh&agrave;ng cho b&eacute;. Sản phẩm kh&ocirc;ng chứ Gluten v&agrave; được kiểm nghiệm kh&ocirc;ng g&acirc;y k&iacute;ch ứng da v&agrave; mắt. Hương thơm nhẹ dịu gi&uacute;p b&eacute; ngoan cả ng&agrave;y.<br />\r\n<br />\r\n<strong>Hướng dẫn sử dụng</strong><br />\r\nCho một lượng vừa đủ v&agrave;o chậu hoặc bồn tắm, nhẹ nh&agrave;ng xoa l&ecirc;n t&oacute;c v&agrave; khắp người b&eacute;, sau đ&oacute; tắm sạch lại với nước.<br />\r\n<br />\r\n<strong>Hướng dẫn bảo quản</strong><br />\r\nĐể nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t<br />\r\n<br />\r\n<strong>Đối tượng sử dụng</strong></p>\r\n\r\n<p>D&agrave;nh cho Newborn v&agrave; b&eacute; dưới 3 tuổi. Sử dụng h&agrave;ng ng&agrave;y<br />\r\n<strong>Hạn sử dụng</strong></p>\r\n\r\n<p>3 năm (36 th&aacute;ng)&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 3, 16, NULL, 1, '/storage/uploads/2024/04/16/D-nee5.png', 1, 97500, '2024-04-16 02:29:31', '2024-04-16 02:29:31'),
(68, 'Tắm gội toàn thân em bé baby D-nee Organic 380ml (Xanh lá)', 'Tắm gội toàn thân em bé Baby D-nee Organic Xanh Lá chứa các thành phần hoàn toàn tinh khiết từ tự nhiên nuôi dưỡng làn da bé. Sản phẩm có hương thơm dịu nhẹ cho bé chơi ngoan cả ngày.', '<p><strong>Ưu điểm nổi bật</strong></p>\r\n\r\n<p>. Tắm gội to&agrave;n th&acirc;n em b&eacute; Baby D-nee Organic Xanh L&aacute; chứa c&aacute;c th&agrave;nh phần ho&agrave;n to&agrave;n tinh khiết từ tự nhi&ecirc;n như nước kho&aacute;ng v&agrave; 7 chiết xuất tự nhi&ecirc;n: Yến mạch, Rau m&aacute;, C&acirc;y Cốt Kh&iacute;, Ho&agrave;ng Cầm, Tr&agrave;, Cam thảo, Hương thảo v&agrave; hoa Chamomile (c&uacute;c La M&atilde;) nu&ocirc;i dưỡng l&agrave;n da của b&eacute;;<br />\r\n. Độ PH c&acirc;n bằng với khả năng giữ ẩm gi&uacute;p l&agrave;m sạch nhẹ nh&agrave;ng, duy tr&igrave; độ ẩm v&agrave; sự mềm mại cho da v&agrave; t&oacute;c b&eacute;;<br />\r\n. Sản phẩm được kiểm nghiệm kh&ocirc;ng g&acirc;y k&iacute;ch ứng da cũng như kh&ocirc;ng c&oacute; chất tạo m&agrave;u nh&acirc;n tạo v&agrave; x&agrave; ph&ograve;ng rất an to&agrave;n cho b&eacute;;<br />\r\n. Hương thơm nhẹ dịu cho b&eacute; chơi ngoan cả ng&agrave;y.<br />\r\n<br />\r\n<strong>Hướng dẫn sử dụng</strong><br />\r\nCho một lượng vừa đủ v&agrave;o chậu hoặc bồn tắm, nhẹ nh&agrave;ng xoa l&ecirc;n t&oacute;c v&agrave; khắp người b&eacute;, sau đ&oacute; tắm sạch lại với nước.<br />\r\n<br />\r\n<strong>Hướng dẫn bảo quản</strong><br />\r\nĐể nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t<br />\r\n<br />\r\n<strong>Hạn sử dụng</strong></p>\r\n\r\n<p>3 năm (36 th&aacute;ng)</p>', 3, 16, NULL, 1, '/storage/uploads/2024/04/16/D-nee6.png', 1, 97500, '2024-04-16 02:30:36', '2024-04-16 02:30:36'),
(69, 'Nước xả Downy Hương đam mê túi 3L', 'Nước xả Downy hương đam mê với công thức mùi hương độc đáo chứa những hạt nước hoa giúp lưu lại trên quần áo lâu hơn, cho bạn thoải mái hoạt động suốt cả ngày mà không sợ ám mùi mồ hôi và bụi bẩn. Công thức pha trộn các mùi hương và công nghệ PMC giúp đưa từng phân tử hương hoa siêu nhỏ, linh hoạt len lỏi và thấm sâu vào từng sợi vải.', '<p><strong>Ưu điểm nổi bật</strong><br />\r\n<strong>.&nbsp;</strong>Sở hữu những ph&acirc;n tử hương hoa si&ecirc;u nhỏ thấm s&acirc;u v&agrave;o từng sợi v&agrave;i, nước xả v&agrave;i Downy gi&uacute;p mang lại m&ugrave;i hương dễ chịu, thơm l&acirc;u b&aacute;m chặt tr&ecirc;n vải.<br />\r\n<strong>.&nbsp;</strong>Hương nước hoa đam m&ecirc; l&ocirc;i cuốn với hương hoa d&acirc;u lingon, hoa lan trắng thơm l&ocirc;i cuốn, cho bạn sự tự tin khi ra ngo&agrave;i.<br />\r\n<strong>.&nbsp;</strong>L&agrave;m mềm vải, giữ cho &aacute;o quần lu&ocirc;n đẹp m&agrave;u, mềm mại.<br />\r\n<strong>.&nbsp;</strong>Ngăn m&ugrave;i mồ h&ocirc;i, ngăn vi khuẩn tạo m&ugrave;i tr&ecirc;n &aacute;o quần.<br />\r\n<strong>.&nbsp;</strong>Gi&uacute;p &aacute;o quần dễ ủi hơn.&nbsp;<br />\r\n<br />\r\n<strong>Hướng dẫn sử dụng</strong><br />\r\n<strong>.&nbsp;</strong>Kh&ocirc;ng đổ trực tiếp l&ecirc;n quần &aacute;o.<br />\r\n<strong>.&nbsp;</strong>Đối với giặt tay d&ugrave;ng 1/2 nắp Downy cho 15-20 chiếc quần &aacute;o, ng&acirc;m trong v&agrave;i ph&uacute;t, vắt v&agrave; phơi kh&ocirc;.<br />\r\n<strong>.&nbsp;</strong>Đối với giặt m&aacute;y d&ugrave;ng 1/2 nắp Downy cho nửa th&ugrave;ng giặt (khoảng 35L) hoặc 1 nắp rưỡi cho đầy th&ugrave;ng giặt (khoảng 52L) sau khi m&aacute;y ho&agrave;n tất c&ocirc;ng đoạn xả, vắt v&agrave; sấy kh&ocirc; như thường lệ.<br />\r\n<strong>.&nbsp;</strong>Đối với c&aacute;c loại quần &aacute;o c&oacute; độ d&agrave;y như: jeans, chăn,... n&ecirc;n d&ugrave;ng 1 nắp đầy.<br />\r\n<br />\r\n<strong>Hướng dẫn bảo quản</strong><br />\r\n<strong>.&nbsp;</strong>C&aacute;ch bảo quản v&agrave; lưu &yacute; về sản phẩm<br />\r\n<strong>.&nbsp;</strong>Cần bảo quản nơi kh&ocirc; r&aacute;o, th&oacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng mặt trời.<br />\r\n<strong>.&nbsp;</strong>Để xa tầm tay trẻ em để tr&aacute;nh b&eacute; bị thu h&uacute;t bởi m&ugrave;i hương v&agrave; uống phải.﻿</p>', 3, 14, NULL, 1, '/storage/uploads/2024/04/16/downy1.jpg', 1, 192000, '2024-04-16 02:32:05', '2024-04-16 02:32:05'),
(70, 'Nước xả Downy Hương nắng mai túi 3L', 'Downy có khả năng lưu giữ mùi hương lâu hơn trên trang phục và trong từng cử động.', '<p>B&iacute; mật của c&ocirc;ng nghệ chuyển hương nằm ở c&aacute;c hạt nước hoa si&ecirc;u nhỏ với đặc t&iacute;nh linh hoạt trước những di chuyển tự nhi&ecirc;n của con người.</p>\r\n\r\n<p>Khi được ch&agrave; nhẹ, c&aacute;c hạt si&ecirc;u nhỏ chứa nước hoa sẽ quyện v&agrave;o nhau v&agrave; tỏa ra m&ugrave;i hương đầy l&yacute; th&uacute;.</p>\r\n\r\n<p>Đặc biệt, mỗi lần chạm nhẹ, bạn sẽ được cảm nhận một m&ugrave;i hương ho&agrave;n to&agrave;n kh&aacute;c nhau t&ugrave;y theo nồng độ của c&aacute;c loại hạt tại vị tr&iacute; ma s&aacute;t.</p>', 3, 14, NULL, 1, '/storage/uploads/2024/04/16/downy2.jpg', 1, 188000, '2024-04-16 02:33:37', '2024-04-16 02:33:37'),
(71, 'Nước xả Downy Hương Huyền bí túi 3L', 'Nước xả Downy hương huyền bí với công thức mùi hương độc đáo chứa những hạt nước hoa giúp lưu lại trên quần áo lâu hơn, cho bạn thoải mái hoạt động suốt cả ngày mà không sợ ám mùi mồ hôi và bụi bẩn. Công thức pha trộn các mùi hương và công nghệ PMC giúp đưa từng phân tử hương hoa siêu nhỏ, linh hoạt len lỏi và thấm sâu vào từng sợi vải.', '<p><br />\r\n<strong>Ưu điểm nổi bật</strong><br />\r\n<strong>.&nbsp;</strong>Sở hữu những ph&acirc;n tử hương hoa si&ecirc;u nhỏ thấm s&acirc;u v&agrave;o từng sợi v&agrave;i, nước xả v&agrave;i Downy gi&uacute;p mang lại m&ugrave;i hương dễ chịu, thơm l&acirc;u b&aacute;m chặt tr&ecirc;n vải.<br />\r\n<strong>.&nbsp;</strong>Hương nước hoa đam m&ecirc; l&ocirc;i cuốn với hương hoa d&acirc;u lingon, hoa lan trắng thơm l&ocirc;i cuốn, cho bạn sự tự tin khi ra ngo&agrave;i.<br />\r\n<strong>.&nbsp;</strong>L&agrave;m mềm vải, giữ cho &aacute;o quần lu&ocirc;n đẹp m&agrave;u, mềm mại.<br />\r\n<strong>.&nbsp;</strong>Ngăn m&ugrave;i mồ h&ocirc;i, ngăn vi khuẩn tạo m&ugrave;i tr&ecirc;n &aacute;o quần.<br />\r\n<strong>.&nbsp;</strong>Gi&uacute;p &aacute;o quần dễ ủi hơn.&nbsp;<br />\r\n<br />\r\n<strong>Hướng dẫn sử dụng</strong><br />\r\n<strong>.&nbsp;</strong>Kh&ocirc;ng đổ trực tiếp l&ecirc;n quần &aacute;o.<br />\r\n<strong>.&nbsp;</strong>Đối với giặt tay d&ugrave;ng 1/2 nắp Downy cho 15-20 chiếc quần &aacute;o, ng&acirc;m trong v&agrave;i ph&uacute;t, vắt v&agrave; phơi kh&ocirc;.<br />\r\n<strong>.&nbsp;</strong>Đối với giặt m&aacute;y d&ugrave;ng 1/2 nắp Downy cho nửa th&ugrave;ng giặt (khoảng 35L) hoặc 1 nắp rưỡi cho đầy th&ugrave;ng giặt (khoảng 52L) sau khi m&aacute;y ho&agrave;n tất c&ocirc;ng đoạn xả, vắt v&agrave; sấy kh&ocirc; như thường lệ.<br />\r\n<strong>.&nbsp;</strong>Đối với c&aacute;c loại quần &aacute;o c&oacute; độ d&agrave;y như: jeans, chăn,... n&ecirc;n d&ugrave;ng 1 nắp đầy.<br />\r\n<br />\r\n<strong>Hướng dẫn bảo quản</strong><br />\r\n<strong>.&nbsp;</strong>C&aacute;ch bảo quản v&agrave; lưu &yacute; về sản phẩm<br />\r\n<strong>.&nbsp;</strong>Cần bảo quản nơi kh&ocirc; r&aacute;o, th&oacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng mặt trời.<br />\r\n<strong>.&nbsp;</strong>Để xa tầm tay trẻ em để tr&aacute;nh b&eacute; bị thu h&uacute;t bởi m&ugrave;i hương v&agrave; uống phải.﻿﻿</p>', 3, 14, NULL, 1, '/storage/uploads/2024/04/16/downy3.jpg', 1, 241000, '2024-04-16 02:34:38', '2024-04-16 02:34:38');
INSERT INTO `products` (`id`, `name`, `description`, `content`, `producttype_id`, `trademark_id`, `supplier_id`, `promotion_id`, `thumb`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(72, 'Sữa tắm Dưỡng thể Dove Dưỡng ẩm chuyên sâu 900g', 'Sữa tắm Dưỡng thể Dove Dưỡng ẩm chuyên sâu 900g giúp nuôi dưỡng và cân bằng độ ẩm, mang lại làn da đẹp mịn màng, cho làn da mềm mịn từ sâu bên trong sau mỗi lần tắm.', '<p><img src=\"https://cdn1.concung.com/storage/2022/11/1669100742-sua-tam-duong-the-dove-duong-am-chuyen-sau-900g.jpg\" /></p>\r\n\r\n<div style=\"text-align:start\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Ưu điểm nổi bật</strong></span></span></span></span></span></div>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>.&nbsp;</strong>Tinh chất dưỡng ẩm nutrium moisture, nu&ocirc;i dưỡng l&agrave;n da từ s&acirc;u b&ecirc;n trong.</span><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>.&nbsp;</strong>Chứa &frac14; kem dưỡng da mặt gi&uacute;p dưỡng ẩm s&acirc;u, nu&ocirc;i dưỡng l&agrave;n da mềm mịn hơn sau mỗi lần tắm.</span><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>.&nbsp;</strong>C&ocirc;ng thức sạch nhanh, kh&ocirc;ng nhờn r&iacute;t với lớp bọt d&agrave;y mịn.&nbsp;</span><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>.&nbsp;</strong>Sản phẩm được Viện da liễu Trung Ương chứng nhận An to&agrave;n cho mọi loại da, kể cả da nhạy cảm.</span><br />\r\n<br />\r\n<strong><span style=\"font-family:Arial,Helvetica,sans-serif\">Hướng dẫn sử dụng</span></strong><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>.&nbsp;</strong>Cho một lượng sữa tắm vừa đủ v&agrave;o l&ograve;ng b&agrave;n tay hoặc khăn mềm.</span><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>.&nbsp;</strong>Sau đ&oacute; nhẹ nh&agrave;ng thoa l&ecirc;n người để tạo bọt, rồi tắm lại bằng nước sạch.</span><br />\r\n<span style=\"font-family:Arial,Helvetica,sans-serif\"><strong><em>Lưu &yacute;:&nbsp;</em></strong>Chỉ sử dụng ngo&agrave;i da, tr&aacute;nh tiếp x&uacute;c với mắt. Nếu d&iacute;nh sản phẩm v&agrave;o mắt, h&atilde;y rửa kĩ bằng nước.&nbsp;</span></p>', 3, 13, NULL, 1, '/storage/uploads/2024/04/16/dove1.jpg', 1, 183000, '2024-04-16 02:38:49', '2024-04-16 02:38:49'),
(73, 'Dầu gội DOVE phục hồi hư tổn 640g', 'Dầu Gội Đầu Dove Phục Hồi Tóc Hư Tổn giúp phục hồi tóc bằng các dưỡng chất và Vitamin kết hợp công thức tác động kép tạo màng bảo vệ tóc, chống ôxy hóa. Ngoài ra, sản phẩm còn bổ sung keratin phục hồi độ đàn hồi, độ ẩm và giúp dễ dàng tạo kiểu. Hương thơm dịu nhẹ cho bạn cảm giác sảng khoái sau khi sử dụng. Dầu Gội Dove Phục Hồi Hư Tổn là sản phẩm dầu gội hỗ trợ phục hồi mái tóc khô xơ và hư tổn, cho bạn mái tóc mềm mại, mượt mà với công nghệ tiên tiến nhất.', '<p dir=\"ltr\">Hướng dẫn sử dụng</p>\r\n\r\n<p dir=\"ltr\">Bước 1: Thoa một lượng dầu gội vừa đủ l&ecirc;n t&oacute;c, ma s&aacute;t nhẹ nh&agrave;ng &amp; tập trung l&agrave;m sạch tr&ecirc;n da dầu.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Bước 2: Sau khi xả sạch dầu gội, lấy một lượng vừa đủ kem xả ra l&ograve;ng b&agrave;n tay. Nhẹ nh&agrave;ng vuốt kem xả từ th&acirc;n đến đu&ocirc;i t&oacute;c, lưu &yacute; c&aacute;ch xa ch&acirc;n t&oacute;c 10-15 cm v&agrave; kh&ocirc;ng b&ocirc;i v&agrave;o da đầu.</p>\r\n\r\n<p dir=\"ltr\">Bước 3: Đợi kem xả thấm từ 1-3 ph&uacute;t, sau đ&oacute; xả sạch&nbsp; với nước ấm hoặc nước m&aacute;t (kh&ocirc;ng d&ugrave;ng nước n&oacute;ng).</p>\r\n\r\n<p dir=\"ltr\">Lưu &yacute;:&nbsp;</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Để xa tầm tay trẻ em, tr&aacute;nh tiếp x&uacute;c với mắt.&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Nếu sản phẩm d&iacute;nh v&agrave;o mặt, rửa kỹ với nước.&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Hướng dẫn bảo quản</p>\r\n\r\n<p dir=\"ltr\">Tr&aacute;nh nhiệt độ cao v&agrave; &aacute;nh nắng trực tiếp</p>\r\n\r\n<p dir=\"ltr\">Th&agrave;nh phần</p>\r\n\r\n<p dir=\"ltr\">Water, Sodium Laureth Sulfate, Dimethiconol, Cocamidopropyl&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Betaine, Perfume, Glycerin, Glycol Distearate, Gluconolactone,&nbsp;</p>\r\n\r\n<p dir=\"ltr\">TEA-Dodecylbenzenesulfonate, Carbomer, Sodium Benzoate, Citric Acid, Sodium&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Chloride, Guar Hydroxypropyltrimonium Chloride, Mica, Cocamide MEA, Sodium&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Sulfate, Trehalose, PEG-45M, Trideceth-10, Disodium EDTA, Titanium Dioxide,&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Phenoxyethanol, Helianthus Annuus (Sunower) Seed Oil, Silica, Iodopropynyl&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Butylcarbamate, BHT.</p>\r\n\r\n<p dir=\"ltr\">Th&ocirc;ng tin chi tiết&nbsp;</p>\r\n\r\n<p dir=\"ltr\">T&ecirc;n sản phẩm: Dầu gội DOVE phục hồi hư tổn 640g</p>\r\n\r\n<p dir=\"ltr\">Thương hiệu: DOVE</p>\r\n\r\n<p dir=\"ltr\">Xuất xứ: ​​Việt Nam&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Trọng lượng: 640g</p>', 3, 13, NULL, 1, '/storage/uploads/2024/04/16/dove2.jpg', 1, 124000, '2024-04-16 02:41:02', '2024-04-16 03:42:25'),
(74, 'Xịt Khử Mùi Dove Powder Soft Dưỡng Da Sáng Mịn Hương Phấn Thơm 150 ml', 'Xịt Khử Mùi Dove Powder Soft Dưỡng Da Sáng Mịn Hương Phấn Thơm 150 ml là dòng sản phẩm khử mùi cho nữ. Với công thức chăm sóc da hoàn toàn mới chứa 1/4 hàm lượng kem dưỡng ẩm và 0% cồn alcohol, sản phẩm nhờ vậy có thể thấm nhanh vào da, giúp mang lại cho làn da dưới cánh tay sự mịn màng, tươi sáng và khô thoáng suốt 48 giờ.', '<p><img src=\"https://cdn1.concung.com/storage/2022/11/1669099274-xit-khu-mui-dove-powder-soft-duong-da-sang-min-huong-phan-thom-150-ml.jpg\" /></p>\r\n\r\n<div style=\"text-align:justify\">\r\n<div><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><strong>﻿Ưu điểm nổi bật</strong><br />\r\n<strong>.&nbsp;</strong><span style=\"font-family:Arial,Helvetica,sans-serif\">Khử m&ugrave;i mạnh mẽ đến 48 giờ sau khi sử dụng, kể cả trong trường hợp vận động mạnh.</span><br />\r\n<strong>.&nbsp;</strong><span style=\"font-family:Arial,Helvetica,sans-serif\">Thấm nhanh v&agrave;o da, cho da kh&ocirc; tho&aacute;ng suốt cả ng&agrave;y.</span><br />\r\n<strong>.&nbsp;</strong><span style=\"font-family:Arial,Helvetica,sans-serif\">Kh&ocirc;ng g&acirc;y v&agrave;ng &aacute;o, bết hay d&iacute;nh đồ.</span><br />\r\n<strong>.&nbsp;</strong><span style=\"font-family:Arial,Helvetica,sans-serif\">Th&agrave;nh phần thi&ecirc;n nhi&ecirc;n an to&agrave;n, kh&ocirc;ng g&acirc;y k&iacute;ch ứng, ph&ugrave; hợp với mọi loại da kể cả da nhạy cảm.</span><br />\r\n<strong>.&nbsp;</strong><span style=\"font-family:Arial,Helvetica,sans-serif\">Kh&ocirc;ng chứa Alcohol, kh&ocirc;ng l&agrave;m th&acirc;m sạm hay kh&ocirc; r&aacute;t da.</span><br />\r\n<strong>.</strong><span style=\"font-family:Arial,Helvetica,sans-serif\">&nbsp;C&ocirc;ng thức độc đ&aacute;o chứa 1/4 lượng kem dưỡng ẩm gi&uacute;p chăm s&oacute;c l&agrave;n da dưới c&aacute;nh tay mịn m&agrave;ng, tươi s&aacute;ng như mong muốn.</span><br />\r\n<strong>.&nbsp;</strong><span style=\"font-family:Arial,Helvetica,sans-serif\">M&ugrave;i hương phấn thơm dễ chịu, kh&ocirc;ng nồng gắt.</span></span></span></span></span></div>\r\n</div>\r\n\r\n<div style=\"text-align:justify\"><br />\r\n<span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><strong>Hướng dẫn sử dụng<br />\r\n.&nbsp;</strong>Lắc đều chai.<br />\r\n<strong>.&nbsp;</strong>Để chai xịt c&aacute;ch 15cm v&agrave; xịt đều l&ecirc;n v&ugrave;ng da dưới c&aacute;nh tay.&nbsp;</span></span></span></span>\r\n\r\n<div><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\">﻿</span></span></span></span></div>\r\n</div>', 3, 13, NULL, 1, '/storage/uploads/2024/04/16/dove3.jpg', 1, 100000, '2024-04-16 02:42:20', '2024-04-16 02:42:20'),
(75, 'Xịt Khử Mùi Dove Original Nourished và Smooth Dưỡng Da Sáng Mịn Hương Dịu Nhẹ 150 ml', 'Xịt Khử Mùi Dove Original Nourished và Smooth Dưỡng Da Sáng Mịn Hương Dịu Nhẹ 150 ml là dòng sản phẩm khử mùi cho nữ. Với công thức chăm sóc da hoàn toàn mới chứa 1/4 hàm lượng kem dưỡng ẩm và 0% cồn alcohol, sản phẩm nhờ vậy có thể thấm nhanh vào da, giúp mang lại cho làn da dưới cánh tay sự mịn màng, tươi sáng và khô thoáng suốt 48 giờ.', '<p><img src=\"https://cdn1.concung.com/storage/2021/07/1625718889-dove-apa-original.jpeg\" /></p>\r\n\r\n<p><strong>﻿Ưu điểm nổi bật</strong></p>\r\n\r\n<p><strong>.&nbsp;</strong>Khử m&ugrave;i mạnh mẽ đến 48 giờ sau khi sử dụng, kể cả trong trường hợp vận động mạnh.<br />\r\n<strong>.&nbsp;</strong>Thấm nhanh v&agrave;o da, cho da kh&ocirc; tho&aacute;ng suốt cả ng&agrave;y.<br />\r\n<strong>.&nbsp;</strong>Kh&ocirc;ng g&acirc;y v&agrave;ng &aacute;o, bết hay d&iacute;nh đồ.<br />\r\n<strong>.&nbsp;</strong>Th&agrave;nh phần thi&ecirc;n nhi&ecirc;n an to&agrave;n, kh&ocirc;ng g&acirc;y k&iacute;ch ứng, ph&ugrave; hợp với mọi loại da kể cả da nhạy cảm.<br />\r\n<strong>.&nbsp;</strong>Kh&ocirc;ng chứa Alcohol, kh&ocirc;ng l&agrave;m th&acirc;m sạm hay kh&ocirc; r&aacute;t da.<br />\r\n<strong>.</strong>&nbsp;C&ocirc;ng thức độc đ&aacute;o chứa 1/4 lượng kem dưỡng ẩm gi&uacute;p chăm s&oacute;c l&agrave;n da dưới c&aacute;nh tay mịn m&agrave;ng, tươi s&aacute;ng như mong muốn.<br />\r\n<strong>.&nbsp;</strong>M&ugrave;i hương dễ chịu, kh&ocirc;ng nồng gắt.<br />\r\n<br />\r\n<strong>Hướng dẫn sử dụng<br />\r\n.&nbsp;</strong>Lắc đều chai.<br />\r\n<strong>.&nbsp;</strong>Để chai xịt c&aacute;ch 15cm v&agrave; xịt đều l&ecirc;n v&ugrave;ng da dưới c&aacute;nh tay.&nbsp;</p>', 3, 13, NULL, 1, '/storage/uploads/2024/04/16/dove4.jpg', 1, 100000, '2024-04-16 02:43:50', '2024-04-16 02:43:50'),
(76, 'Nước rửa chén Sunlight Thiên Nhiên Muối Khoáng & Lô Hội can 3.6kg', 'Nước rửa chén Sunlight Thiên Nhiên Muối Khoáng & Lô Hội là sản phẩm đến từ thương hiệu uy tín được tin chọn bởi hàng triệu gia đình Việt. Với thành phần được làm từ 100% lô hội và muối khoáng nhập từ Đức và nước cốt của những trái chanh nhập khẩu từ Anh, nước rửa chén rất dịu nhẹ với đôi bàn tay mẹ và phù hợp với cả chén đĩa trẻ em.', '<p><img src=\"https://cdn1.concung.com/storage/2022/04/1648783308.png\" /></p>\r\n\r\n<p dir=\"ltr\">Ưu điểm nổi bật của sản phẩm&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Nước rửa ch&eacute;n Sunlight Thi&ecirc;n Nhi&ecirc;n Muối Kho&aacute;ng &amp; L&ocirc; Hội hội tụ nhiều ưu điểm nổi trội như:&nbsp;</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Kh&ocirc;ng chứa chất tạo m&agrave;u, dịu nhẹ với da tay.&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Được l&agrave;m từ 100% l&ocirc; hội v&agrave; muối kho&aacute;ng nhập từ Đức v&agrave; nước cốt của những tr&aacute;i chanh nhập khẩu từ Anh, sản phẩm rất dịu nhẹ với da tay của mẹ</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Được chứng nhận bởi Viện Da Liễu Trung Ương, an to&agrave;n cho cả ch&eacute;n dĩa trẻ em.&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Gi&uacute;p đ&aacute;nh bay dầu mỡ nhanh ch&oacute;ng m&agrave; vẫn an to&agrave;n, hương thơm nhẹ nh&agrave;ng, thanh khiết cho ch&eacute;n b&aacute;t lu&ocirc;n thơm m&aacute;t d&agrave;i l&acirc;u.&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Hướng dẫn sử dụng</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Đổ trực tiếp sản phẩm v&agrave;o miếng rửa ch&eacute;n đ&atilde; được thấm nước</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">B&oacute;p nhẹ để tạo bọt rồi rửa ch&eacute;n</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Sau đ&oacute; tr&aacute;ng lại bằng nước sạch</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\"><strong><em>Lưu &yacute;:&nbsp;</em></strong></p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Kh&ocirc;ng được uống, để xa tầm tay trẻ em</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Nếu sản phẩm d&iacute;nh v&agrave;o mắt, rửa sạch bằng nước</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Nếu nuốt phải, uống ngay 1 ly nước hoặc sữa, nếu cần th&igrave; đến cơ sở y tế</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Hướng dẫn bảo quản&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Bảo quản sản phẩm ở nơi tho&aacute;ng m&aacute;t v&agrave; tr&aacute;nh &aacute;nh nắng trực tiếp</p>', 3, 15, NULL, 1, '/storage/uploads/2024/04/16/sunlight1.jpg', 1, 105600, '2024-04-16 02:45:48', '2024-04-16 02:49:18'),
(77, 'Nước Lau sàn Sunlight Thiên nhiên 3.6kg', 'Nước Lau sàn Sunlight Thiên nhiên với 100% Nguồn Gốc Thiên Nhiên sẽ giúp sàn nhà mẹ sạch bóng vượt trội và lưu lại hương thơm tinh tế của tinh dầu cực lâu, mang lại sự thư giãn cho cả nhà thân yêu.', '<p><img src=\"https://cdn1.concung.com/storage/2022/04/1648785537.png\" /></p>\r\n\r\n<p dir=\"ltr\">Ưu điểm nổi bật của sản phẩm&nbsp;</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">100% nguồn gốc thi&ecirc;n nhi&ecirc;n, chiết xuất tre v&agrave; l&ocirc; hội n&ecirc;n rất an to&agrave;n với sức khoẻ</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Được Viện Da liễu Trung Ương chứng nhận an to&agrave;n cho da, mẹ an t&acirc;m cho b&eacute; vui chơi tr&ecirc;n s&agrave;n nh&agrave;&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Sản phẩm chứa tinh dầu thảo mộc v&agrave; hương hoa thi&ecirc;n nhi&ecirc;n gi&uacute;p s&agrave;n nh&agrave; sạch b&oacute;ng vượt trội v&agrave; lưu lại hương thơm tinh tế.&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">L&agrave;m sạch hiệu quả tr&ecirc;n nhiều loại s&agrave;n&nbsp;kh&aacute;c nhau.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Hướng dẫn sử dụng</p>\r\n\r\n<p dir=\"ltr\"><strong>. </strong>Bước 1: H&ograve;a 1 nắp đầy nước lau s&agrave;n Sunlight v&agrave;o nửa x&ocirc; nước (Loại x&ocirc; 5L).</p>\r\n\r\n<p dir=\"ltr\"><strong>. </strong>Bước 2: Nh&uacute;ng ướt giẻ rồi lau sạch c&aacute;c vết bẩn.</p>\r\n\r\n<p dir=\"ltr\"><strong>. </strong>Bước 3: Kh&ocirc;ng lau lại bằng nước.</p>\r\n\r\n<p dir=\"ltr\">Hướng dẫn bảo quản&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Bảo quản sản phẩm ở nơi tho&aacute;ng m&aacute;t v&agrave; tr&aacute;nh &aacute;nh nắng trực tiếp.</p>', 3, 15, NULL, 1, '/storage/uploads/2024/04/16/sunlight2.jpg', 1, 76000, '2024-04-16 02:47:11', '2024-04-16 02:47:11'),
(78, 'Nước rửa chén Sunlight Chanh 100 can 3.8kg', 'Nước rửa chén Sunlight Chanh 100 với công nghệ xả bọt nhanh giúp đánh bay dầu mỡ hiệu quả. Đặc biệt, sản phẩm còn chứa hương chanh thơm mát và dịu nhẹ với da tay. Đây là sự lựa chọn hoàn hảo cho các chị em nội trợ Việt.', '<p><img src=\"https://cdn1.concung.com/storage/2022/10/1665550139.png\" /></p>\r\n\r\n<p dir=\"ltr\"><strong>Ưu điểm nổi bật</strong></p>\r\n\r\n<p dir=\"ltr\">Với c&ocirc;ng nghệ xả bọt nhanh mới, Nước rửa ch&eacute;n Sunlight Chanh gi&uacute;p đ&aacute;nh bay dầu mỡ b&aacute;m tr&ecirc;n b&aacute;t đĩa hiệu quả chỉ trong 1 lần rửa. Đặc biệt, sản phẩm c&oacute; khả năng rửa sạch dầu mỡ cả tr&ecirc;n đồ nhựa.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Ngo&agrave;i ra, nước rửa ch&eacute;n Sunlight Chanh c&ograve;n dịu nhẹ với da tay của mẹ. Ưu điểm n&agrave;y đ&atilde; được kiểm nghiệm v&agrave; chứng nhận bởi Viện Da Liễu. Hơn thế nữa, c&ocirc;ng thức nước rửa ch&eacute;n c&ograve;n bổ sung th&ecirc;m hương chanh thơm m&aacute;t, gi&uacute;p khử m&ugrave;i đồ ăn tr&ecirc;n b&aacute;t đĩa triệt để. Vậy n&ecirc;n, đ&acirc;y ch&iacute;nh l&agrave; sự lựa chọn ho&agrave;n hảo v&agrave; an to&agrave;n cho c&aacute;c b&agrave; nội trợ Việt.</p>', 3, 15, NULL, 1, '/storage/uploads/2024/04/16/sunlight3.jpg', 1, 89600, '2024-04-16 02:48:48', '2024-04-16 02:48:48'),
(79, 'Nước lau sàn Sunlight tinh dầu thảo mộc Hoa hạ Bạc hà 3.6kg', 'Nước Lau Sàn Sunlight Tinh Dầu Thảo Mộc Hương Hoa Hạ & Bạc Hà sở hữu công thức ưu việt, không chỉ giúp sàn nhà sạch bóng, mà còn lưu lại hương thơm thư thái, dài lâu.', '<p><img src=\"https://cdn1.concung.com/storage/2022/04/1648785110.png\" /></p>\r\n\r\n<p dir=\"ltr\"><strong>Ưu điểm nổi bật &nbsp; </strong></p>\r\n\r\n<p><strong>.&nbsp;</strong>Sản phẩm c&oacute; c&ocirc;ng thức&nbsp;<strong>Sạch B&oacute;ng Vượt Trội&nbsp;</strong>gi&uacute;p lau s&agrave;n sạch b&oacute;ng kin k&iacute;t, hiệu quả tr&ecirc;n mọi bề mặt s&agrave;n, kể cả s&agrave;n gỗ.</p>\r\n\r\n<p><strong>.&nbsp;</strong>Chứa tinh dầu thảo mộc thi&ecirc;n nhi&ecirc;n, đảm bảo an to&agrave;n cho sức khỏe.&nbsp;<strong>.&nbsp;</strong>Hương thơm từ tinh dầu thảo mộc thư th&aacute;i, gi&uacute;p kh&ocirc;ng gian sống th&ecirc;m tho&aacute;ng m&aacute;t.</p>\r\n\r\n<p dir=\"ltr\">Hướng dẫn sử dụng</p>\r\n\r\n<p dir=\"ltr\">1. H&ograve;a 1 nắp đầy nước lau s&agrave;n Sunlight v&agrave;o nửa x&ocirc; nước (loại x&ocirc; 5L).</p>\r\n\r\n<p dir=\"ltr\">2. Nh&uacute;ng ướt giẻ rồi lau sạch c&aacute;c vết bẩn.</p>\r\n\r\n<p dir=\"ltr\">3. Kh&ocirc;ng lau lại bằng nước.</p>\r\n\r\n<p dir=\"ltr\">Lưu &yacute;:&nbsp;</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Kh&ocirc;ng được uống.&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Để xa tầm với của trẻ em.&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Nếu sản phẩm d&iacute;nh v&agrave;o mắt, rửa sạch bằng nước.&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Trong trường hợp nuốt sản phẩm, đến cơ sở y tế v&agrave; mang theo chai hoặc nh&atilde;n m&aacute;c.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Hướng dẫn bảo quản&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Bảo quản sản phẩm ở nơi tho&aacute;ng m&aacute;t v&agrave; tr&aacute;nh &aacute;nh nắng trực tiếp</p>', 3, 15, NULL, 1, '/storage/uploads/2024/04/16/sunlight4.jpg', 1, 95000, '2024-04-16 02:50:45', '2024-04-16 02:50:45'),
(80, 'Thùng 20 gói Khăn ướt chiết xuất tự nhiên Aga-ae, 100 tờ', 'Khăn ướt chiết xuất tự nhiên Aga-ae được sản xuất tại Hàn Quốc, đạt chứng nhận quốc tế Ecocert về sản phẩm từ thiên nhiên uy tín bậc nhất Châu Âu, hoàn toàn an toàn cho làn da nhạy cảm của bé và gia đình. Sản phẩm chứa các thành phần tự nhiên: Vải không dệt, nước tinh khiết, tinh chất lô hội và trà xanh, Phytoncide - Chất kháng khuẩn tự nhiên, Caprylyl Glycol giúp dưỡng ẩm cho làn da nhạy cảm của bé yêu. Sản phẩm không chứa các chất ảnh hưởng đến sức khỏe như: chất tẩy trắng, chất tạo màu, cồn, Paraben ... Các Mẹ hoàn toàn có thể tin tưởng khi dùng cho bé yêu.', '<p>﻿﻿<strong>﻿Ưu điểm nổi bật&nbsp;</strong><br />\r\n. Khăn ướt chiết xuất tự nhi&ecirc;n Aga-ae&nbsp;được sản xuất tại H&agrave;n Quốc.<br />\r\n. Sản phẩm chứa c&aacute;c th&agrave;nh phần tự nhi&ecirc;n: Vải kh&ocirc;ng dệt, nước tinh khiết, tinh chất l&ocirc; hội v&agrave; tr&agrave; xanh, Phytoncide - Chất kh&aacute;ng khuẩn tự nhi&ecirc;n, Caprylyl Glycol gi&uacute;p dưỡng ẩm cho l&agrave;n da nhạy cảm của b&eacute; y&ecirc;u.<br />\r\n. Sản phẩm kh&ocirc;ng chứa c&aacute;c chất ảnh hưởng đến sức khỏe như: chất tẩy trắng, chất tạo m&agrave;u, cồn, Paraben ... C&aacute;c mẹ ho&agrave;n to&agrave;n c&oacute; thể tin tưởng khi d&ugrave;ng cho b&eacute; y&ecirc;u.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://cdn1.concung.com/2023/08/46951-1693366223-trans.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong>:<br />\r\n. Quy c&aacute;ch đ&oacute;ng g&oacute;i: 100tờ<br />\r\n. K&iacute;ch thước: 150x200mm<br />\r\n.&nbsp;Xuất xứ: H&agrave;n Quốc﻿﻿</p>\r\n\r\n<p><em><strong>Lưu &yacute;</strong></em>: Bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh xa tầm tay trẻ em.</p>\r\n\r\n<p>&nbsp;</p>', 5, 18, NULL, 1, '/storage/uploads/2024/04/16/aga-ae1.png', 20, 784000, '2024-04-16 02:54:21', '2024-04-16 02:54:21'),
(81, 'Kem chống nắng cho bé từ 6 tháng Aga-ae Robocar Poli 80ml', 'Kem chống nắng cho bé từ 6 tháng Aga-ae Robocar Poli với thành phần lành tính từ thiên nhiên, giúp bảo vệ làn da bé khỏi ánh nắng đến hơn 8 tiếng.', '<p><img alt=\"Kem chống nắng cho bé từ 6 tháng Aga-ae Robacar Poli 80ml\" src=\"https://cdn1.concung.com/img/p/2022/12/60638-96336-large_mobile.png\" /></p>\r\n\r\n<p dir=\"ltr\"><strong>Ưu điểm nổi bật&nbsp;</strong></p>\r\n\r\n<p dir=\"ltr\">. Chỉ số SPF 50+ c&oacute; t&aacute;c dụng bảo vệ l&agrave;n da b&eacute; khỏi &aacute;nh nắng đến hơn 8 tiếng v&agrave; bảo vệ da khỏi c&aacute;c t&aacute;c hại của tia UVB, UVA;&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Chất kem dịu nhẹ, kh&ocirc;ng nhờn r&iacute;t, kh&ocirc;ng bết, b&oacute;ng da mặt;&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Th&agrave;nh phần l&agrave;nh t&iacute;nh, chiết xuất từ thực vật;&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Dưỡng ẩm tốt v&agrave; kh&ocirc;ng g&acirc;y k&iacute;ch ứng da;&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Bao b&igrave; Robocar dễ thương, tạo sự hứng th&uacute; cho b&eacute; khi sử dụng.&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>Hướng dẫn sử dụng</strong></p>\r\n\r\n<p dir=\"ltr\">Lấy một lượng vừa đủ thoa đều l&ecirc;n những v&ugrave;ng da nhạy cảm với &aacute;nh nắng như mặt, cổ v&agrave; c&aacute;nh tay cho b&eacute;. Ph&ugrave; hợp cho cả người lớn nếu c&oacute; nhu cầu.&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong><em>Lưu &yacute;:&nbsp;</em></strong></p>\r\n\r\n<p dir=\"ltr\">. Nếu c&oacute; bất kỳ dấu hiệu bất thường n&agrave;o như nổi nốt đỏ, sưng tấy, ngứa ng&aacute;y v&ugrave;ng sử dụng dưới &aacute;nh nắng trực tiếp th&igrave; n&ecirc;n tham khảo &yacute; kiến của b&aacute;c sĩ chuy&ecirc;n khoa.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Hạn chế sử dụng tr&ecirc;n c&aacute;c khu vực bị thương.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Để xa tầm tay trẻ em.&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>Hướng dẫn bảo quản&nbsp;</strong></p>\r\n\r\n<p dir=\"ltr\">Bảo quản nơi kh&ocirc; tho&aacute;ng, tr&aacute;nh &aacute;nh nắng mặt trời trực tiếp.</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần&nbsp;</strong></p>\r\n\r\n<p dir=\"ltr\">Water (Nước), Dipropylene Glycol, Methyl Methacrylate Crosspolymer, C12-15 Alkyl Benzoate, 1,2-Hexanediol, Diethylamino Hydroxybenzoyl Hexyl Benzoate, Behenyl Alcohol, Bis-Ethylhexyloxyphenol Methoxyphenyl Triazine, Sodium Acrylate/Sodium Acryloyldimethyl Taurate Copolymer, Potassium Cetyl Phosphate, Polyisobutene, Ammonium Acryloyldimethyltaurate/Vp Copolymer, Silica, Caprylyl/Capryl Glucoside, Sorbitan Oleate, Butylene Glycol, Centella Asiatica Extract (Chiết Xuất Rau M&aacute;), Sodium Hyaluronate, Rosmarinus Officinalis (Rosemary) Leaf Extract (Chiết Xuất L&aacute; Hương Thảo).</p>', 5, 18, NULL, 1, '/storage/uploads/2024/04/16/aga-ae2.png', 1, 200000, '2024-04-16 02:55:55', '2024-04-16 02:55:55'),
(82, 'Combo 2 Nước rửa bình sữa AGA-AE hương cam - Túi 500ml (Giao bao bì ngẫu nhiên)', 'Nước rửa bình sữa AGA-AE hương cam với thành phần hữu cơ 100% từ gốc thực vật, an toàn cho sức khoẻ của bé. Sản phẩm chứa tinh dầu cam có thể loại bỏ vi khuẩn trong chai mà không cần đun sôi.', '<p><img src=\"https://cdn1.concung.com/storage/2023/10/1698042334-nuoc-rua-binh-500ml-2.png\" /></p>\r\n\r\n<p><strong>Ưu điểm nổi bật</strong></p>\r\n\r\n<p><strong>.&nbsp;</strong>Th&agrave;nh phần hữu cơ 100% từ gốc thực vật, kh&ocirc;ng chứa h&oacute;a chất l&agrave;m sạch độc hại như những sản phẩm th&ocirc;ng thường kh&aacute;c;</p>\r\n\r\n<p><strong>.</strong>&nbsp;Nhẹ nh&agrave;ng lấy đi c&aacute;c chất cặn, vết mỡ, protein b&aacute;m tr&ecirc;n mặt b&igrave;nh sữa v&agrave; c&aacute;c vật dụng của b&eacute;, ngăn ngừa chất dơ b&aacute;m trở lại;</p>\r\n\r\n<p><strong>.&nbsp;</strong>Tinh dầu cam c&oacute; thể l&agrave;m sạch v&agrave; loại bỏ vi khuẩn trong chai m&agrave; kh&ocirc;ng cần phải đun s&ocirc;i.<br />\r\n<strong>Hướng dẫn sử dụng</strong></p>\r\n\r\n<p>Cho vừa đủ lượng dung dịch v&agrave;o b&ocirc;ng tẩy rửa c&ugrave;ng một &iacute;t nước v&agrave; ch&ugrave;i rửa b&igrave;nh sữa cũng như c&aacute;c dụng cụ cho b&eacute; ăn kh&aacute;c. Sau khi l&agrave;m sạch, rửa lại c&aacute;c dụng cụ bằng nước sạch từ 2 đến 3 lần.<br />\r\n<strong><em>Lưu &yacute;</em></strong></p>\r\n\r\n<p><strong>.</strong>&nbsp;Để xa tầm tay trẻ em v&agrave; kh&ocirc;ng được uống;</p>\r\n\r\n<p><strong>.&nbsp;</strong>Sau khi sử dụng, rửa tay sạch với nước để bảo vệ da.&nbsp;<br />\r\n<strong>Hướng dẫn bảo quản</strong><br />\r\nĐể nơi kh&ocirc; m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp.<br />\r\n<strong>Đối tượng sử dụng</strong></p>\r\n\r\n<p>D&ugrave;ng để rửa b&igrave;nh sữa, đồ d&ugrave;ng ăn uống cho b&eacute;, phụ kiện m&aacute;y h&uacute;t sữa , đồ chơi, rau củ v&agrave; dụng cụ sử dụng trong gia đ&igrave;nh.<br />\r\n<strong>Hạn sử dụng</strong><br />\r\nXem tr&ecirc;n bao b&igrave;.</p>', 5, 18, NULL, 1, '/storage/uploads/2024/04/16/aga-ae3.png', 2, 155750, '2024-04-16 02:57:58', '2024-04-16 03:00:16'),
(83, 'Nước giặt Hàn Quốc Aga-ae cho bé - Blue Sky 3L', 'Nước giặt Hàn Quốc Aga-ae cho bé - Blue Sky 3L đến từ Hàn Quốc với thành phần từ thiên nhiên đảm bảo an toàn cho làn da của bé. Sản phẩm không chứa các chất độc hại nên ba mẹ có thể yên tâm cho bé sử dụng.', '<p><img src=\"https://concung.com/storage/2024/01/1705570118-giat.png\" /></p>\r\n\r\n<p><strong>Ưu điểm nổi bật</strong></p>\r\n\r\n<p><strong>.&nbsp;</strong>Công thức làm sạch hiệu quả từ thiên nhiên và hương thơm dịu nhẹ, lưu hương bền l&acirc;u;&nbsp;</p>\r\n\r\n<p><strong>.&nbsp;</strong>Công thức ưu việt đ&ecirc;́n từ Hàn Qu&ocirc;́c, đạt các chứng nhận uy tín: Ecocert (chứng nhận th&agrave;nh phần hữu cơ an to&agrave;n đến từ Ch&acirc;u &Acirc;u), US FDA Gras (chứng nhận sản phẩm an&nbsp; toàn đến từ Hoa Kỳ);</p>\r\n\r\n<p><strong>.&nbsp;</strong>Chứa c&aacute;c tinh dầu thi&ecirc;n nhi&ecirc;n l&agrave;nh t&iacute;nh: tinh dầu argan, tinh dầu bạch đ&agrave;n, bơ hạt mỡ&hellip; c&oacute; khả năng kh&aacute;ng khuẩn v&agrave; an to&agrave;n cho da b&eacute;;</p>\r\n\r\n<p><strong>.&nbsp;</strong>Không chứa 7 ch&acirc;́t độc hại: Fluorescent whitening agents, Triclosan, Phosphates, Parabens, Formaldehyde, MIT, CMIT.</p>\r\n\r\n<p><br />\r\n<strong>Hướng dẫn sử dụng</strong></p>\r\n\r\n<p><strong>.&nbsp;</strong>Giặt tay:<strong>&nbsp;</strong>H&ograve;a 1 nắp chai hoặc 30ml nước giặt với 4 l&iacute;t nước (d&ugrave;ng cho 20 bộ quần &aacute;o trẻ em). Ng&acirc;m quần &aacute;o trong 3 ph&uacute;t rồi giặt lại với nước sạch;</p>\r\n\r\n<p><strong>.&nbsp;</strong>Giặt m&aacute;y: H&ograve;a 2 nắp chai hoặc 60ml với 8 l&iacute;t nước trong m&aacute;y giặt.<br />\r\n<br />\r\n<strong>Hướng dẫn bảo quản</strong></p>\r\n\r\n<p><strong>.&nbsp;</strong>Bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp;</p>\r\n\r\n<p><strong>.&nbsp;</strong>Để xa tầm tay trẻ em.<br />\r\n<br />\r\n<strong>Hạn sử dụng</strong><br />\r\n3 năm.</p>', 5, 18, NULL, 1, '/storage/uploads/2024/04/16/aga-ae4.png', 1, 193500, '2024-04-16 03:00:03', '2024-04-16 03:00:03'),
(84, 'Combo 2 Bình sữa PPSU AGA-AE 180ml (Beige)', 'Bình sữa PPSU Aga-ae có xuất xứ từ Hàn Quốc. Sản phẩm là sự kết hợp giữa chất liệu cao cấp và thiết kế thông minh, giúp bé dễ sử dụng và đảm bảo an toàn cho sức khoẻ của con.', '<p><img src=\"https://cdn1.concung.com/storage/2022/10/1665975587.png\" /></p>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Ưu điểm nổi bật&nbsp;</strong></span></span></span></span></span></div>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial,Helvetica,sans-serif\">. B&igrave;nh sữa PPSU Aga-ae c&oacute; n&uacute;m v&uacute; silicone si&ecirc;u mềm, mang lại cho b&eacute; cảm gi&aacute;c như đang b&uacute; mẹ, gi&uacute;p b&eacute; chuyển đổi từ b&uacute; mẹ sang b&uacute; b&igrave;nh một c&aacute;ch dễ d&agrave;ng;</span></span></span></span></span></div>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial,Helvetica,sans-serif\">. T&iacute;ch hợp van th&ocirc;ng kh&iacute; tr&ecirc;n n&uacute;m ty, gi&uacute;p giảm đầy hơi, n&ocirc;n trớ;&nbsp;</span></span></span></span></span></div>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial,Helvetica,sans-serif\">. Được l&agrave;m từ nhựa PPSU cao cấp, an to&agrave;n cho b&eacute; v&agrave; chịu nhiệt l&ecirc;n đến 200 độ C;&nbsp;</span></span></span></span></span></div>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial,Helvetica,sans-serif\">. B&igrave;nh sữa nhỏ gọn, thiết kế gi&uacute;p b&eacute; dễ d&agrave;ng cầm nắm, đồng thời ph&aacute;t triển kỹ năng cầm nắm đồ vật;&nbsp;</span></span></span></span></span></div>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial,Helvetica,sans-serif\">. Cổ rộng gi&uacute;p mẹ dễ d&agrave;ng pha sữa v&agrave; vệ sinh b&igrave;nh sữa.&nbsp;</span></span></span></span></span></div>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\">&nbsp;\r\n<div style=\"text-align:center\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><img src=\"https://cdn1.concung.com/storage/2022/10/1665372146.png\" style=\"border-style:none; box-sizing:border-box; height:auto !important; max-width:100%; vertical-align:middle; width:600px\" /></span></span></span></span></span></div>\r\n\r\n<div style=\"text-align:center\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Hướng dẫn sử dụng&nbsp;</strong></span></span></span></span></span></div>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial,Helvetica,sans-serif\">. Tiệt tr&ugrave;ng trước khi sử dụng lần đầu ti&ecirc;n v&agrave; sau mỗi lần sử dụng.&nbsp;</span></span></span></span></span></div>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial,Helvetica,sans-serif\">. Nếu b&eacute; tự cầm b&igrave;nh cần c&oacute; sự gi&aacute;m s&aacute;t của người lớn.</span></span></span></span></span></div>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial,Helvetica,sans-serif\">. N&ecirc;n thay mới n&uacute;m ty sau 3 th&aacute;ng sử dụng hoặc thấy xuất hiện vết nứt, r&aacute;ch.</span></span></span></span></span></div>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\">&nbsp;</div>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Hướng dẫn bảo quản&nbsp;</strong></span></span></span></span></span></div>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial,Helvetica,sans-serif\">. L&agrave;m sạch sản phẩm bằng b&agrave;n chải mềm v&agrave; chất tẩy rửa cho trẻ sơ sinh (Kh&ocirc;ng ch&agrave; rửa qu&aacute; mạnh).&nbsp;</span></span></span></span></span></div>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial,Helvetica,sans-serif\">. N&ecirc;n khử tr&ugrave;ng sản phẩm bằng nước n&oacute;ng, thay v&igrave; khử tr&ugrave;ng trong tia UV, m&aacute;y rửa ch&eacute;n, l&ograve; vi s&oacute;ng.&nbsp;</span></span></span></span></span></div>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\">&nbsp;</div>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Chất liệu&nbsp;</strong></span></span></span></span></span></div>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial,Helvetica,sans-serif\">. Th&acirc;n b&igrave;nh: nhựa PPSU cao cấp chịu nhiệt tới 200 độ C.</span></span></span></span></span></div>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial,Helvetica,sans-serif\">. Nắp v&agrave; v&ograve;ng cổ b&igrave;nh: nhựa PP, chịu nhiệt: 100 độ C.</span></span></span></span></span></div>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial,Helvetica,sans-serif\">. N&uacute;m ty: silicone, chịu nhiệt: 120 độ C.</span></span></span></span></span></div>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\">﻿</span></span></span></span></div>', 5, 18, NULL, 1, '/storage/uploads/2024/04/16/aga-ae5.png', 2, 560500, '2024-04-16 03:02:07', '2024-04-16 03:02:07'),
(85, 'Combo 2 Miếng lót thấm sữa cao cấp AGA-AE (30 miếng/hộp)', 'Miếng lót thấm sữa cao cấp Aga-ae được làm từ chất liệu an toàn, mềm mại và thấm hút tốt. Sản phẩm sẽ giữ cho bầu ngực của các mẹ mới sinh luôn sạch sẽ, khô thoáng.', '<p dir=\"ltr\"><strong>Ưu điểm nổi bật&nbsp;</strong></p>\r\n\r\n<p dir=\"ltr\">. Thi&ecirc;́t k&ecirc;́ mỏng nhẹ, vừa vặn với bầu ngực của mẹ;&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Chất liệu b&ecirc;̀ mặt m&ecirc;̀m mại, an to&agrave;n v&agrave; gi&uacute;p mẹ cảm thấy thoải m&aacute;i;&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Si&ecirc;u thấm h&uacute;t, mang lại cảm gi&aacute;c kh&ocirc; tho&aacute;ng cho mẹ;&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Thiết kế gập đ&ocirc;i nhỏ gọn, ph&ugrave; hợp để bỏ t&uacute;i mang theo khi ra ngo&agrave;i.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"Miếng lót thấm sữa cao cấp Aga-ae\" src=\"https://cdn1.concung.com/img/p/2023/03/59619-98853-large_mobile.png\" /></p>\r\n\r\n<p dir=\"ltr\"><br />\r\n<strong>Hướng dẫn sử dụng&nbsp;</strong></p>\r\n\r\n<p dir=\"ltr\">. Lấy miếng l&oacute;t thấm sữa ra khỏi t&uacute;i nilon.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Th&aacute;o băng d&iacute;nh b&ecirc;n ngo&agrave;i miếng l&oacute;t thấm sữa.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Đặt miếng l&oacute;t thấm sữa v&agrave;o trong &aacute;o ngực sao cho sản phẩm kh&iacute;t với bầu ngực.</p>\r\n\r\n<p dir=\"ltr\"><strong><em>Lưu &yacute;:&nbsp;</em></strong></p>\r\n\r\n<p dir=\"ltr\">. N&ecirc;n thay miếng l&oacute;t thường xuy&ecirc;n, khuyến c&aacute;o 3-4 tiếng thay 1 lần&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Vệ sinh n&uacute;m ty trước v&agrave; sau khi d&ugrave;ng miếng l&oacute;t thấm sữa</p>\r\n\r\n<p dir=\"ltr\">. Tr&aacute;nh xa tầm tay trẻ em, kh&ocirc;ng t&aacute;i sử dụng sản phẩm</p>\r\n\r\n<p dir=\"ltr\">. Ngưng sử dụng sản phẩm nếu c&oacute; dấu hiệu bị dị ứng</p>\r\n\r\n<p dir=\"ltr\"><strong>Hướng dẫn bảo quản</strong></p>\r\n\r\n<p dir=\"ltr\">Bảo quản nơi kh&ocirc; tho&aacute;ng, tr&aacute;nh tiếp x&uacute;c với nguồn nhiệt.</p>\r\n\r\n<p dir=\"ltr\"><strong>Th&agrave;nh phần</strong></p>\r\n\r\n<p dir=\"ltr\">Vải kh&ocirc;ng dệt (ưa nước), khăn giấy tissue, bột giấy (Mỹ), hạt SAP Sumitomo (polyme si&ecirc;u thấm) (Nhật Bản), m&agrave;ng tho&aacute;ng kh&iacute; (polyethylene kết hợp vải kh&ocirc;ng dệt), băng d&iacute;nh</p>', 5, 18, NULL, 1, '/storage/uploads/2024/04/16/aga-ae6.png', 2, 188000, '2024-04-16 03:03:46', '2024-04-16 03:03:46'),
(86, 'Combo 2 Bộ cọ rửa bình sữa và núm ty Aga-ae (4 chi tiết)', 'Bộ cọ rửa bình sữa và núm ty Aga-ae (4 chi tiết) rất đa năng, thích hợp vệ sinh nhiều bộ phận. Đặc biệt, đầu cọ rửa rất mềm, làm sạch tốt mà không lo bình bị xước.', '<p dir=\"ltr\"><strong>Ưu điểm nổi bật&nbsp;</strong></p>\r\n\r\n<p dir=\"ltr\">. Bộ sản phẩm gồm 4 chi tiết: cọ n&uacute;m ty, cọ silicone, cọ m&uacute;t xốp, cọ ống h&uacute;t</p>\r\n\r\n<p dir=\"ltr\">. Bộ 4 cọ đa năng th&iacute;ch hợp vệ sinh nhiều bộ phận.</p>\r\n\r\n<p dir=\"ltr\">. Đầu cọ silicone v&agrave; xốp mềm mại gi&uacute;p rửa sạch vết bẩn m&agrave; kh&ocirc;ng lo xước b&igrave;nh.</p>\r\n\r\n<p dir=\"ltr\"><strong>Hướng dẫn sử dụng&nbsp;</strong></p>\r\n\r\n<p dir=\"ltr\">Bước 1: T&aacute;ch c&aacute;c bộ phận của b&igrave;nh sữa, b&igrave;nh tập uống trước khi d&ugrave;ng cọ.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Bước 2: Sử dụng nước rửa b&igrave;nh v&agrave; loại cọ tương ứng để l&agrave;m sạch c&aacute;c bộ phận.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Cọ silicone v&agrave; cọ m&uacute;t xốp: b&igrave;nh sữa v&agrave; b&igrave;nh tập uống&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Cọ n&uacute;m ty: n&uacute;m ty&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Cọ ống h&uacute;t: ống h&uacute;t</p>\r\n\r\n<p dir=\"ltr\"><strong>Hướng dẫn bảo quản&nbsp;</strong></p>\r\n\r\n<p dir=\"ltr\">. Vệ sinh tất cả cọ bằng nước sạch hoặc nước rửa b&igrave;nh.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Phơi kh&ocirc; v&agrave; bảo quản nơi tho&aacute;ng m&aacute;t.</p>\r\n\r\n<p dir=\"ltr\"><strong><em>Lưu &yacute;:&nbsp;</em></strong></p>\r\n\r\n<p dir=\"ltr\">. Kh&ocirc;ng đun s&ocirc;i, tiệt tr&ugrave;ng sản phẩm.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Sau thời gian sử dụng, do đặc t&iacute;nh chất liệu, cọ xốp c&oacute; thể bị đổi m&agrave;u nhưng kh&ocirc;ng ảnh hưởng đến chất lượng.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Kh&ocirc;ng vặn hoặc vắt mạnh sản phẩm, h&atilde;y b&oacute;p nhẹ để loại bỏ nước.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Tr&aacute;nh xa tầm tay trẻ em.</p>\r\n\r\n<p dir=\"ltr\"><strong>Chất liệu&nbsp;</strong></p>\r\n\r\n<p dir=\"ltr\">. Tay cầm v&agrave; m&oacute;c treo: nhựa PP</p>\r\n\r\n<p dir=\"ltr\">. Cọ n&uacute;m ty: nhựa T.P.R</p>\r\n\r\n<p dir=\"ltr\">. Cọ m&uacute;t xốp: nhựa PU</p>\r\n\r\n<p dir=\"ltr\">. Cọ silicone: silicone&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Cọ ống h&uacute;t: nylon v&agrave; Inox 304</p>', 5, 18, NULL, 1, '/storage/uploads/2024/04/16/aga-ae7.png', 2, 332500, '2024-04-16 03:05:12', '2024-04-16 03:05:12'),
(87, 'Combo 2 Set 2 núm ty silicone Aga-ae siêu mềm size M', 'Núm ty silicone Aga-ae size M phù hợp với bé 3-6 tháng và có xuất xứ từ Hàn Quốc. Với chất liệu silicone cao cấp, sản phẩm không chỉ an toàn, mà còn mang lại cho bé cảm giác mềm mại như đang bú mẹ.', '<p><img src=\"https://cdn1.concung.com/storage/2022/10/1665373765.png\" /></p>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Ưu điểm nổi bật&nbsp;</strong></span></span></span></span></span></div>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial,Helvetica,sans-serif\">. N&uacute;m ty Aga-ae được l&agrave;m từ chất liệu silicone cao cấp, an to&agrave;n cho b&eacute;;&nbsp;</span></span></span></span></span></div>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial,Helvetica,sans-serif\">. N&uacute;m v&uacute; silicone si&ecirc;u mềm mang lại cho b&eacute; cảm gi&aacute;c như đang b&uacute; mẹ, gi&uacute;p b&eacute; chuyển đổi từ b&uacute; mẹ sang b&uacute; b&igrave;nh một c&aacute;ch dễ d&agrave;ng;&nbsp;&nbsp;</span></span></span></span></span></div>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial,Helvetica,sans-serif\">. Van th&ocirc;ng kh&iacute; tr&ecirc;n n&uacute;m ti, gi&uacute;p giảm n&ocirc;n trớ, đau bụng.&nbsp;</span></span></span></span></span></div>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\">&nbsp;</div>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Hướng dẫn sử dụng&nbsp;</strong></span></span></span></span></span></div>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial,Helvetica,sans-serif\">. Tiệt tr&ugrave;ng trước khi sử dụng lần đầu ti&ecirc;n v&agrave; sau mỗi lần sử dụng.&nbsp;</span></span></span></span></span></div>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial,Helvetica,sans-serif\">. N&ecirc;n thay mới n&uacute;m ty sau 3 th&aacute;ng sử dụng hoặc thấy xuất hiện vết nứt, r&aacute;ch.</span></span></span></span></span></div>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\">&nbsp;</div>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Hướng dẫn bảo quản&nbsp;</strong></span></span></span></span></span></div>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial,Helvetica,sans-serif\">. L&agrave;m sạch sản phẩm bằng b&agrave;n chải mềm v&agrave; chất tẩy rửa cho trẻ sơ sinh (Kh&ocirc;ng ch&agrave; rửa qu&aacute; mạnh).&nbsp;</span></span></span></span></span></div>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\"><span style=\"font-family:Arial,Helvetica,sans-serif\">. N&ecirc;n khử tr&ugrave;ng sản phẩm bằng nước n&oacute;ng, thay v&igrave; khử tr&ugrave;ng trong tia UV, m&aacute;y rửa ch&eacute;n, l&ograve; vi s&oacute;ng.&nbsp;</span></span></span></span></span></div>\r\n\r\n<div class=\"addclass\" style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\">﻿﻿﻿</span></span></span></span></div>', 5, 18, NULL, 1, '/storage/uploads/2024/04/16/aga-ae8.png', 2, 281300, '2024-04-16 03:06:53', '2024-04-16 03:06:53'),
(88, 'Snack sữa chua sấy khô AGA-AE vị dâu (20g)', 'Snack sữa chua sấy khô Aga-ae là sản phẩm ăn dặm cho bé đến từ thương hiệu uy tín của Hàn Quốc. Được là từ thành phần chọn lọc, an toàn cho con, sản phẩm không chỉ bổ dưỡng mà còn thơm ngon, kích thích vị giác cho bé ăn ngon miệng hơn.', '<p dir=\"ltr\">Hướng dẫn sử dụng&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Sử dụng trực tiếp.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Lưu &yacute;:&nbsp;</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Kh&ocirc;ng d&ugrave;ng sản phẩm hết hạn sử dụng.&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">N&ecirc;n sử dụng cho trẻ đ&atilde; c&oacute; khả năng nhai thức ăn mềm.&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Cho trẻ ăn khi ngồi v&agrave; c&oacute; sự gi&aacute;m s&aacute;t của người lớn đảm bảo b&eacute; nhai kĩ v&agrave; kh&ocirc;ng bị nghẹn.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Hướng dẫn bảo quản&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh xa nơi c&oacute; nhiệt độ cao v&agrave; &aacute;nh s&aacute;ng mặt trời chiếu trực tiếp.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Sản phẩm rất dễ bị h&uacute;t ẩm, v&igrave; thế sau khi mở g&oacute;i phải bảo quản k&iacute;n v&agrave; ăn nhanh nhất c&oacute; thể trước hạn sử dụng.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Sau khi mở bao b&igrave; sản phẩm, cần đ&oacute;ng khớp k&iacute;n phần kho&aacute; zip để bảo quản.</p>\r\n\r\n<p dir=\"ltr\">Th&agrave;nh phần ch&iacute;nh&nbsp;</p>\r\n\r\n<p dir=\"ltr\">D&acirc;u sấy kh&ocirc; (45%), sữa chua nguy&ecirc;n chất (42,4%), lợi khuẩn (lactobacillus), đường FOS (Fructooligosaccharide), fibersol-2 (Maltodextrin), dầu c&aacute;m gạo lứt, gạo nổ, đường, bột củ dền, 7 loại men vi sinh (probiotics) [Lactobacillus. Plantarum, Lactobacillus. Casei, Lactobacillus. rhamnosus, Lactobacillus. Acidophilus, Lactobacillus lactis, Bifidobacterium animalis ssp. lactis, Bifidobacterium. Breve]. Sản phẩm c&oacute; chứa sữa.</p>\r\n\r\n<p dir=\"ltr\">Th&ocirc;ng tin chi tiết&nbsp;</p>\r\n\r\n<p dir=\"ltr\">T&ecirc;n sản phẩm:&nbsp;Snack sữa chua sấy kh&ocirc; AGA-AE vị d&acirc;u (20g)</p>\r\n\r\n<p dir=\"ltr\">Thương hiệu: Cheng cheng&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Xuất xứ: H&agrave;n Quốc&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Trọng lượng: 20g/g&oacute;i</p>', 5, 18, NULL, 1, '/storage/uploads/2024/04/16/aga-ae9.png', 1, 69000, '2024-04-16 03:08:32', '2024-04-16 03:08:32');
INSERT INTO `products` (`id`, `name`, `description`, `content`, `producttype_id`, `trademark_id`, `supplier_id`, `promotion_id`, `thumb`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(89, 'Bình sữa Moyuum PPSU 270ml (Beige)', 'Bình sữa Moyuum PPSU được làm từ chất liệu cao cấp, an toàn cho bé. Đặc biệt, sản phẩm có núm vú mềm như ty mẹ, cho bé dễ làm quen ngay từ lần đầu sử dụng.', '<p><strong>Ưu điểm nổi bật&nbsp;</strong>:</p>\r\n\r\n<p dir=\"ltr\">. N&uacute;m v&uacute; silicone si&ecirc;u mềm như ty mẹ v&agrave; được l&agrave;m từ chất liệu silicon cao cấp;</p>\r\n\r\n<p dir=\"ltr\">. Van kh&iacute; thiết kế th&ocirc;ng minh, gi&uacute;p giảm đầy hơi, n&ocirc;n trớ;&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. B&igrave;nh sữa l&agrave;m từ chất lượng nhựa PPSU cao cấp, an to&agrave;n cho b&eacute;;&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Thiết kế cổ rộng, gi&uacute;p dễ d&agrave;ng vệ sinh, pha sữa;&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. T&iacute;ch hợp vạch chia r&otilde; r&agrave;ng, độ bền cao;&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Giảm thiểu sự uốn cong tối đa, thuận cho việc vệ sinh, l&agrave;m sạch.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Hướng dẫn sử dụng&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. D&ugrave;ng l&agrave;m b&igrave;nh b&uacute; hoặc b&igrave;nh uống nước nếu thay n&uacute;m ty bằng ống h&uacute;t.</p>\r\n\r\n<p dir=\"ltr\">. N&ecirc;n thay mới n&uacute;m ty sau 3 th&aacute;ng sử dụng hoặc thấy xuất hiện vết nứt, r&aacute;ch.</p>\r\n\r\n<p dir=\"ltr\"><strong><em>Lưu &yacute;:&nbsp;</em></strong></p>\r\n\r\n<p dir=\"ltr\">. Lu&ocirc;n sử dụng sản phẩm n&agrave;y với sự gi&aacute;m s&aacute;t của người lớn.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Kh&ocirc;ng sử dụng n&uacute;m ty l&agrave;m ty ngậm cho b&eacute;.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Khi trẻ đang trong thời kỳ mọc răng, trẻ cắn n&uacute;m ty c&oacute; thể bị r&aacute;ch.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>Hướng dẫn bảo quản&nbsp;</strong></p>\r\n\r\n<p dir=\"ltr\">Bảo quản sản phẩm nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t tr&aacute;nh tiếp x&uacute;c trực tiếp với mặt trời, nơi c&oacute; nguồn nhiệt cao.</p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>Hướng dẫn vệ sinh</strong></p>\r\n\r\n<p dir=\"ltr\">. Vệ sinh trước khi sử dụng lần đầu ti&ecirc;n v&agrave; sau mỗi lần sử dụng.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. L&agrave;m sạch sản phẩm bằng cọ mềm v&agrave; chất tẩy rửa cho trẻ sơ sinh, kh&ocirc;ng ch&agrave; rửa qu&aacute; mạnh.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. N&ecirc;n khử tr&ugrave;ng sản phẩm bằng c&aacute;ch trụng nhanh qua nước s&ocirc;i dưới 1 ph&uacute;t, tiệt tr&ugrave;ng UV.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Kh&ocirc;ng n&ecirc;n tiệt tr&ugrave;ng nắp đậy, cổ b&igrave;nh v&agrave; n&uacute;m ty bằng hơi nước, l&ograve; vi s&oacute;ng, đun trực tiếp trong nước s&ocirc;i.</p>\r\n\r\n<p dir=\"ltr\"><strong>Chất liệu</strong></p>\r\n\r\n<p dir=\"ltr\">. Th&acirc;n b&igrave;nh: nhựa PPSU, chịu nhiệt&nbsp; &le; 200 &deg;C</p>\r\n\r\n<p dir=\"ltr\">. Nắp đậy n&uacute;m ty, cổ nối giữa th&acirc;n b&igrave;nh v&agrave; n&uacute;m ty: nhựa PP, chịu nhiệt &le; 100 &deg;C</p>\r\n\r\n<p dir=\"ltr\">. N&uacute;m ty: Silicone, chịu nhiệt&nbsp; &le; 120 &deg;C</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Bình sữa Moyuum PPSU 270ml (Beige) \" src=\"https://cdn1.concung.com/img/p/2023/01/61318-97141-large_mobile.png\" /></p>', 5, 19, NULL, 1, '/storage/uploads/2024/04/16/moyuum1.png', 1, 350000, '2024-04-16 03:15:20', '2024-04-16 03:15:20'),
(90, 'Núm ty Moyuum step 4 (8M+, 2 cái/hộp) (giao bao bì ngẫu nhiên)', 'Núm ty Moyuum được làm từ chất liệu cao cấp, an toàn và mềm như ty mẹ, cho bé dễ làm quen ngay từ lần đầu sử dụng.', '<p dir=\"ltr\"><strong>Ưu điểm nổi bật&nbsp;</strong></p>\r\n\r\n<p dir=\"ltr\">. N&uacute;m v&uacute; silicone si&ecirc;u mềm như ty mẹ n&ecirc;n kh&ocirc;ng l&agrave;m đau lợi b&eacute;;</p>\r\n\r\n<p dir=\"ltr\">. Được l&agrave;m từ chất liệu cao cấp an to&agrave;n v&agrave; c&oacute; độ bền cao;&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Sở hữu van kh&iacute; với thiết kế th&ocirc;ng minh, gi&uacute;p giảm đầy hơi, n&ocirc;n trớ hiệu quả.&nbsp;</p>\r\n\r\n<p>Hướng dẫn sử dụng&nbsp;</p>\r\n\r\n<p>. D&ugrave;ng l&agrave;m n&uacute;m ty b&igrave;nh sữa cho b&eacute;.&nbsp;</p>\r\n\r\n<p>. N&ecirc;n thay mới n&uacute;m ty sau 3 th&aacute;ng sử dụng hoặc thấy xuất hiện vết nứt, r&aacute;ch.</p>\r\n\r\n<p>Hướng dẫn bảo quản&nbsp;</p>\r\n\r\n<p>. Bảo quản sản phẩm nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t tr&aacute;nh tiếp x&uacute;c trực tiếp với mặt trời, nơi c&oacute; nguồn nhiệt cao.<br />\r\nHướng dẫn vệ sinh<br />\r\n. Vệ sinh trước khi sử dụng lần đầu ti&ecirc;n v&agrave; sau mỗi lần sử dụng.&nbsp;</p>\r\n\r\n<p>. L&agrave;m sạch sản phẩm bằng cọ mềm v&agrave; chất tẩy rửa cho trẻ sơ sinh, kh&ocirc;ng ch&agrave; rửa qu&aacute; mạnh.&nbsp;</p>\r\n\r\n<p>. N&ecirc;n khử tr&ugrave;ng sản phẩm bằng c&aacute;ch trụng nhanh qua nước s&ocirc;i dưới 1 ph&uacute;t, tiệt tr&ugrave;ng UV</p>\r\n\r\n<p>. Kh&ocirc;ng tiệt tr&ugrave;ng bằng hơi nước, l&ograve; vi s&oacute;ng, đun trực tiếp trong nước s&ocirc;i.<br />\r\nChất liệu</p>\r\n\r\n<p>N&uacute;m ty: silicone (chịu nhiệt: 120 độ C)</p>\r\n\r\n<p><img alt=\"Núm ty Moyuum step 4 (từ 8 tháng tuổi, 2 cái/hộp)\" src=\"https://cdn1.concung.com/img/p/2023/01/61316-97165-large_mobile.png\" /></p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>', 5, 19, NULL, 1, '/storage/uploads/2024/04/16/moyuum2.png', 4, 199000, '2024-04-16 03:18:09', '2024-04-16 03:18:09'),
(91, 'Bình sữa Moyuum PPSU 170ml (hoạ tiết lạc đà)', 'Bình sữa Moyuum PPSU 170ml (hoạ tiết lạc đà) được làm từ chất liệu cao cấp, an toàn cho bé. Đặc biệt, bình sữa có núm ty mềm như ty mẹ, dễ làm quen ngay từ lần đầu sử dụng.', '<p dir=\"ltr\"><strong>Ưu điểm nổi bật&nbsp;</strong></p>\r\n\r\n<p dir=\"ltr\">. B&igrave;nh sữa l&agrave;m từ chất lượng nhựa PPSU cao cấp, an to&agrave;n cho b&eacute;.</p>\r\n\r\n<p dir=\"ltr\">. N&uacute;m ty step 1, 0M+, lỗ tr&ograve;n 1 tia, tự động chảy khi dốc b&igrave;nh.</p>\r\n\r\n<p dir=\"ltr\">. N&uacute;m ty silicone si&ecirc;u mềm được l&agrave;m từ chất liệu cao cấp, mềm như ty mẹ.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Van thiết kế th&ocirc;ng minh, gi&uacute;p giảm đầy hơi v&agrave; n&ocirc;n trớ.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Thiết kế cổ rộng, gi&uacute;p dễ d&agrave;ng vệ sinh, pha sữa.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. T&iacute;ch hợp vạch chia r&otilde; r&agrave;ng, độ bền cao</p>\r\n\r\n<p dir=\"ltr\"><strong>Hướng dẫn sử dụng&nbsp;</strong></p>\r\n\r\n<p dir=\"ltr\">. D&ugrave;ng l&agrave;m b&igrave;nh b&uacute; hoặc b&igrave;nh uống nước nếu thay n&uacute;m ty bằng ống h&uacute;t.</p>\r\n\r\n<p dir=\"ltr\">. N&ecirc;n thay mới n&uacute;m ty sau 3 th&aacute;ng sử dụng hoặc thấy xuất hiện vết nứt, r&aacute;ch.</p>\r\n\r\n<p dir=\"ltr\"><strong><em>Lưu &yacute;:&nbsp;</em></strong></p>\r\n\r\n<p dir=\"ltr\">. Lu&ocirc;n sử dụng sản phẩm n&agrave;y với sự gi&aacute;m s&aacute;t của người lớn.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Kh&ocirc;ng sử dụng n&uacute;m ty l&agrave;m ty ngậm cho b&eacute;.&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong>Hướng dẫn bảo quản&nbsp;</strong></p>\r\n\r\n<p dir=\"ltr\">Bảo quản sản phẩm nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t tr&aacute;nh tiếp x&uacute;c trực tiếp với mặt trời, nơi c&oacute; nguồn nhiệt cao.</p>\r\n\r\n<p dir=\"ltr\"><strong>Hướng dẫn vệ sinh</strong></p>\r\n\r\n<p dir=\"ltr\">. Vệ sinh trước khi sử dụng lần đầu ti&ecirc;n v&agrave; sau mỗi lần sử dụng.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. L&agrave;m sạch sản phẩm bằng cọ mềm v&agrave; chất tẩy rửa cho trẻ sơ sinh, kh&ocirc;ng ch&agrave; rửa qu&aacute; mạnh.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. N&ecirc;n khử tr&ugrave;ng sản phẩm bằng c&aacute;ch trụng nhanh qua nước s&ocirc;i dưới 1 ph&uacute;t, tiệt tr&ugrave;ng UV.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">. Kh&ocirc;ng n&ecirc;n tiệt tr&ugrave;ng nắp đậy, cổ b&igrave;nh v&agrave; n&uacute;m ty bằng hơi nước, l&ograve; vi s&oacute;ng, đun trực tiếp trong nước s&ocirc;i.</p>\r\n\r\n<p dir=\"ltr\"><strong>Chất liệu</strong></p>\r\n\r\n<p dir=\"ltr\">. Th&acirc;n b&igrave;nh: nhựa PPSU, chịu nhiệt&nbsp; &le; 200 &deg;C</p>\r\n\r\n<p dir=\"ltr\">. Nắp đậy n&uacute;m ty, cổ nối giữa th&acirc;n b&igrave;nh v&agrave; n&uacute;m ty: nhựa PP, chịu nhiệt &le; 100 &deg;C</p>\r\n\r\n<p dir=\"ltr\">. N&uacute;m ty: Silicone, chịu nhiệt&nbsp; &le; 120 &deg;C</p>\r\n\r\n<p dir=\"ltr\"><img alt=\"Bình sữa Moyuum PPSU 170ml (hoạ tiết lạc đà)\" src=\"https://cdn1.concung.com/img/p/2024/01/65221-107717-large_mobile.png\" /></p>', 5, 19, NULL, 1, '/storage/uploads/2024/04/16/moyuum3.png', 1, 410000, '2024-04-16 03:19:49', '2024-04-16 03:19:49'),
(92, 'Núm ty Moyuum step 3 (5M+, 2 cái/hộp) (giao bao bì ngẫu nhiên)', 'Núm ty Moyuum được làm từ chất liệu cao cấp, an toàn và mềm như ty mẹ, cho bé dễ làm quen ngay từ lần đầu sử dụng.', '<p><br />\r\n<span style=\"font-size:16px\"><span style=\"color:#111111\"><span style=\"font-family:Helvetica\"><span style=\"background-color:#ffffff\">Ưu điểm nổi bật&nbsp;</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\">. N&uacute;m v&uacute; silicone si&ecirc;u mềm như ty mẹ n&ecirc;n kh&ocirc;ng l&agrave;m đau lợi b&eacute;;</span></p>\r\n\r\n<p><span style=\"font-size:16px\">. Được l&agrave;m từ chất liệu cao cấp an to&agrave;n v&agrave; c&oacute; độ bền cao;&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:16px\">. Sở hữu van kh&iacute; với thiết kế th&ocirc;ng minh, gi&uacute;p giảm đầy hơi, n&ocirc;n trớ hiệu quả.&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing:border-box\">\r\n<div style=\"box-sizing:border-box; text-align:center\"><span style=\"font-size:16px\"><img alt=\"Núm ty Moyuum step 3 (từ 5 tháng tuổi, 2 cái/hộp)\" src=\"https://cdn1.concung.com/img/p/2023/01/61315-97161-large_mobile.png\" style=\"border-style:none; box-sizing:border-box; height:auto !important; max-width:100%; vertical-align:middle\" /></span></div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\">Hướng dẫn sử dụng&nbsp;</span></p>\r\n\r\n<div style=\"box-sizing:border-box\">\r\n<div style=\"box-sizing:border-box\">\r\n<p><span style=\"font-size:16px\">. D&ugrave;ng l&agrave;m n&uacute;m ty b&igrave;nh sữa cho b&eacute;.&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:16px\">. N&ecirc;n thay mới n&uacute;m ty sau 3 th&aacute;ng sử dụng hoặc thấy xuất hiện vết nứt, r&aacute;ch.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Hướng dẫn bảo quản&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:16px\">. Bảo quản sản phẩm nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t tr&aacute;nh tiếp x&uacute;c trực tiếp với mặt trời, nơi c&oacute; nguồn nhiệt cao.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Hướng dẫn vệ sinh<br />\r\n. Vệ sinh trước khi sử dụng lần đầu ti&ecirc;n v&agrave; sau mỗi lần sử dụng.&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:16px\">. L&agrave;m sạch sản phẩm bằng cọ mềm v&agrave; chất tẩy rửa cho trẻ sơ sinh, kh&ocirc;ng ch&agrave; rửa qu&aacute; mạnh.&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:16px\">. N&ecirc;n khử tr&ugrave;ng sản phẩm bằng c&aacute;ch trụng nhanh qua nước s&ocirc;i dưới 1 ph&uacute;t, tiệt tr&ugrave;ng UV</span></p>\r\n\r\n<p><span style=\"font-size:16px\">. Kh&ocirc;ng tiệt tr&ugrave;ng bằng hơi nước, l&ograve; vi s&oacute;ng, đun trực tiếp trong nước s&ocirc;i.</span></p>\r\n</div>\r\n</div>\r\n\r\n<p><span style=\"font-size:16px\">Chất liệu</span></p>\r\n\r\n<p><span style=\"font-size:16px\">N&uacute;m ty: silicone (chịu nhiệt: 120 độ C)</span></p>', 5, 19, NULL, 1, '/storage/uploads/2024/04/16/moyuum4.png', 1, 199000, '2024-04-16 03:21:22', '2024-05-13 13:27:32'),
(93, 'Thùng 20 Khăn ướt ConCung Gentle Care Hàn Quốc cho da nhạy cảm, 100 tờ (màu xanh)', 'Khăn ướt ConCung Gentle Care Hàn Quốc cho da nhạy cảm, 100 tờ (màu xanh) được sản xuất trên dây chuyền công nghệ tiên tiến của Hàn Quốc dưới thương hiệu ConCung Gentle Care. Sản phẩm được sản xuất trực tiếp tại Hàn Quốc với các thành phần từ thiên nhiên, giúp làm sạch, dưỡng ẩm và thân thiện với làn da nhạy cảm của bé yêu. Với các thành phần tự nhiên như sau, các Mẹ hoàn toàn có thể tin tưởng khi dùng cho bé yêu.', '<p><strong>Th&agrave;nh phần Khăn ướt<strong>&nbsp;ConCung</strong>&nbsp;Gentle Care H&agrave;n Quốc cho da nhạy cảm, 100 tờ (m&agrave;u xanh)</strong>:<strong>&nbsp;</strong></p>\r\n\r\n<p>&bull; 99% th&agrave;nh phần khăn ướt l&agrave; nước tinh khiết được lấy từ nguồn nước tự nhi&ecirc;n ở tỉnh Gyeonggi H&agrave;n Quốc đ&atilde; qua quy tr&igrave;nh xử l&yacute; 10 bước thanh lọc</p>\r\n\r\n<p>&bull; Chất liệu vải kh&ocirc;ng dệt si&ecirc;u dai, kh&ocirc;ng chứa antimony, an to&agrave;n tuyệt đối cho da b&eacute;</p>\r\n\r\n<p>&bull; Bổ sung tinh chất dưỡng ẩm đến từ Ph&aacute;p nu&ocirc;i dưỡng da b&eacute; mịn m&agrave;ng</p>\r\n\r\n<p>&bull; Sản xuất tr&ecirc;n c&ocirc;ng nghệ d&acirc;y chuyền hiện đại theo chuẩn ISO 9001:2008 H&agrave;n Quốc</p>\r\n\r\n<p>&bull; Kh&ocirc;ng chứa 7 h&oacute;a chất độc hại: Cồn - Paraben - Chất tẩy trắng &ndash; Tạo m&agrave;u -&nbsp; Formaldehyde - CMIT &ndash; MIT : an to&agrave;n v&agrave; dịu nhẹ cho l&agrave;n da nhạy cảm của b&eacute;</p>\r\n\r\n<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong>:</p>\r\n\r\n<p>- Quy c&aacute;ch đ&oacute;ng g&oacute;i: 100 tờ</p>\r\n\r\n<p><strong>Lưu &yacute;</strong>: Bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t</p>\r\n\r\n<p><strong>Xuất xứ</strong>: H&agrave;n Quốc</p>', 5, 17, NULL, 1, '/storage/uploads/2024/04/16/concung_gentle1.png', 20, 624000, '2024-04-16 03:23:43', '2024-04-16 03:23:43'),
(94, 'Combo 1 Nước xả vải Hàn Quốc  hương ngọt ấm chai 3L và 1 nước giặt Hàn Quốc  hương tươi mát chai 3L', 'Nước xả vải Hàn Quốc ConCung Gentle Care hương ngọt ấm, chai 3L sở hữu công thức làm mềm vượt trội và hương thơm nhẹ dịu từ thiên nhiên đến từ Hàn Quốc.', '<p>Ưu điểm nổi bật : Sở hữu t&iacute;nh năng l&agrave;m mềm vải ưu việt v&agrave; hương thơm nhẹ dịu ph&ugrave; hợp cho trẻ từ giai đoạn sơ sinh; . An to&agrave;n tuyệt đối cho b&eacute;, cho mẹ v&agrave; cho m&ocirc;i trường nhờ th&agrave;nh phần gốc tự nhi&ecirc;n. C&ocirc;ng thức vượt trội . C&ocirc;ng thức l&agrave;m mềm vượt trội từ nhi&ecirc;n nhi&ecirc;n gi&uacute;p quần &aacute;o b&eacute; lu&ocirc;n mềm mại. Hương thơm tươi m&aacute;t nhẹ dịu m&agrave; bền l&acirc;u từ H&agrave;n Quốc cho quần &aacute;o b&eacute; lu&ocirc;n thơm tho suốt cả ng&agrave;y. . C&ocirc;ng thức c&acirc;n bằng PH v&agrave; n&oacute;i kh&ocirc;ng với 10 h&oacute;a chất g&acirc;y hại an to&agrave;n tuyệt đối cho l&agrave;n da mỏng manh của b&eacute;. Sản phẩm đ&atilde; được kiểm định Kh&ocirc;ng kim loại nặng Hoa K&igrave;, kiểm định An to&agrave;n cho da H&agrave;n Quốc v&agrave; h&agrave;ng loại c&aacute;c chứng chỉ uy t&iacute;n kh&aacute;c. . C&ocirc;ng thức ưu việt th&acirc;n thiện m&ocirc;i trường gi&uacute;p mẹ v&agrave; b&eacute; c&ugrave;ng chung tay bảo vệ h&agrave;nh tinh xanh (được chứng nhận bởi Katri H&agrave;n Quốc) Th&agrave;nh phầnChất hoạt động bề mặt, Dipropylene glycol, Polysorbate 20, Olive oil, Sodium chloride, Sodium benzoate, ngọt ấm&nbsp; Chứng nhận . Kiểm nghiệm kh&ocirc;ng kim loại nặng theo ti&ecirc;u chuẩn FDA Hoa K&igrave;.. Kiểm nghiệm an to&agrave;n cho da H&agrave;n Quốc.. C&ocirc;ng thức C&acirc;n bằng PH.. Kh&ocirc;ng 10 chất g&acirc;y hại: Fluorescent whitening agents, pigments, triclosan, phosphates, parabens, petroleum surfactants, mineral oils, bleach, formaldehyde, phenoxyethanol.. Kiểm nghiệm th&acirc;n thiện với m&ocirc;i trường.﻿﻿﻿</p>', 5, 17, NULL, 1, '/storage/uploads/2024/04/16/concung_gentle2.png', 2, 296000, '2024-04-16 03:26:36', '2024-04-21 07:51:03'),
(95, 'Combo 2 Nước giặt Hàn Quốc ConCung Gentle Care hương tươi mát, chai 3L (giao bao bì ngẫu nhiên)', 'Nước giặt Hàn Quốc ConCung Gentle Care hương tươi mát, chai 3L sở hữu công thức làm sạch vượt trội và hương thơm nhẹ dịu từ thiên nhiên đến từ Hàn Quốc.', '<p><strong>Ưu điểm nổi bật</strong></p>\r\n\r\n<p>. T&iacute;nh năng l&agrave;m sạch vượt trội từ nhi&ecirc;n nhi&ecirc;n gi&uacute;p quần &aacute;o b&eacute; sạch vết bẩn, sạch khuẩn v&agrave; sạch m&ugrave;i kh&oacute; chịu ph&ugrave; hợp cho trẻ từ giai đoạn sơ sinh;<br />\r\n. An to&agrave;n tuyệt đối cho b&eacute; cho mẹ v&agrave; cho m&ocirc;i trường nhờ th&agrave;nh phần gốc tự nhi&ecirc;n.</p>\r\n\r\n<p><img src=\"https://cdn1.concung.com/storage/2023/01/1673503602-dsc00612-copy.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://cdn1.concung.com/storage/2023/01/1673498727-dsc00619-copy.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em>C&ocirc;ng thức vượt trội</em></strong></p>\r\n\r\n<p>. C&ocirc;ng thức l&agrave;m sạch vượt trội từ nhi&ecirc;n nhi&ecirc;n gi&uacute;p quần &aacute;o b&eacute; sạch vết bẩn, sạch khuẩn v&agrave; sạch m&ugrave;i kh&oacute; chịu. Hương thơm ngọt ấm nhẹ dịu m&agrave; bền l&acirc;u từ H&agrave;n Quốc được bổ sung v&agrave; nước giặt cho quần &aacute;o b&eacute; lu&ocirc;n thơm tho suốt ng&agrave;y.<strong>&nbsp;</strong></p>\r\n\r\n<p>. C&ocirc;ng thức c&acirc;n bằng PH v&agrave; n&oacute;i kh&ocirc;ng với 10 h&oacute;a chất g&acirc;y hại an to&agrave;n tuyệt đối cho l&agrave;n da mỏng manh của b&eacute;. Sản phẩm đ&atilde; được kiểm định Kh&ocirc;ng kim loại nặng Hoa K&igrave;, kiểm định An to&agrave;n cho da H&agrave;n Quốc v&agrave; h&agrave;ng loại c&aacute;c chứng chỉ uy t&iacute;n kh&aacute;c.</p>\r\n\r\n<p>. C&ocirc;ng thức ưu việt th&acirc;n thiện m&ocirc;i trường gi&uacute;p mẹ v&agrave; b&eacute; c&ugrave;ng chung tay bảo vệ h&agrave;nh tinh xanh (được chứng nhận bởi Katri H&agrave;n Quốc)</p>\r\n\r\n<p><br />\r\n<strong>Th&agrave;nh phần</strong></p>\r\n\r\n<p>Chất hoạt động bề mặt chiết xuất từ dừa, Glycerin, Dipropylene glycol, Sodium chloride, Sodium benzoate, Tetrasodium EDTA, citric acid, Hương thơm tươi m&aacute;t.</p>\r\n\r\n<p><br />\r\n<strong>Chứng nhận</strong></p>\r\n\r\n<p>. Kiểm nghiệm kh&ocirc;ng kim loại nặng theo ti&ecirc;u chuẩn FDA Hoa K&igrave;.</p>\r\n\r\n<p>. Kiểm nghiệm an to&agrave;n cho da H&agrave;n Quốc.</p>\r\n\r\n<p>. C&ocirc;ng thức C&acirc;n bằng PH.</p>\r\n\r\n<p>. Kh&ocirc;ng 10 chất g&acirc;y hại: Fluorescent whitening agents, pigments, triclosan, phosphates, parabens, petroleum surfactants, mineral oils, bleach, formaldehyde, phenoxyethanol.</p>\r\n\r\n<p>. Kiểm nghiệm th&acirc;n thiện với m&ocirc;i trường.</p>\r\n\r\n<p><br />\r\n<strong>Hướng dẫn sử dụng</strong></p>\r\n\r\n<p>. C&oacute; thể d&ugrave;ng cho m&aacute;y giặt hoặc giặt tay theo hướng dẫn tr&ecirc;n bao b&igrave;.</p>\r\n\r\n<p>. Bảo quản ở nhiệt độ thường tr&aacute;nh &aacute;nh trực tiếp chiếu l&ecirc;n sản phẩm.</p>', 5, 17, NULL, 1, '/storage/uploads/2024/04/16/concung_gentle3.png', 0, 370000, '2024-04-16 03:29:08', '2024-05-02 15:36:13'),
(96, 'Thùng 20 Khăn ướt ConCung Gentle Care Hàn Quốc cho da nhạy cảm, 100 tờ (màu hồng)', 'Khăn ướt ConCung Gentle Care Hàn Quốc cho da nhạy cảm, 100 tờ (màu hồng) được sản xuất trên dây chuyền công nghệ tiên tiến của Hàn Quốc dưới thương hiệu ConCung Gentle Care. Sản phẩm được sản xuất trực tiếp tại Hàn Quốc với các thành phần từ thiên nhiên, giúp làm sạch, dưỡng ẩm và thân thiện với làn da nhạy cảm của bé yêu. Với các thành phần tự nhiên như sau, các Mẹ hoàn toàn có thể tin tưởng khi dùng cho bé yêu.', '<p><strong>Th&agrave;nh phần Khăn ướt&nbsp;<strong>ConCung Gentle Care</strong>&nbsp;H&agrave;n Quốc cho da nhạy cảm, 100 tờ (m&agrave;u hồng)</strong>:<strong>&nbsp;</strong></p>\r\n\r\n<p>&bull; 99% th&agrave;nh phần khăn ướt l&agrave; nước tinh khiết được lấy từ nguồn nước tự nhi&ecirc;n ở tỉnh Gyeonggi H&agrave;n Quốc đ&atilde; qua quy tr&igrave;nh xử l&yacute; 10 bước thanh lọc</p>\r\n\r\n<p>&bull; Chất liệu vải kh&ocirc;ng dệt si&ecirc;u dai, kh&ocirc;ng chứa antimony, an to&agrave;n tuyệt đối cho da b&eacute;</p>\r\n\r\n<p>&bull; Bổ sung tinh chất dưỡng ẩm đến từ Ph&aacute;p nu&ocirc;i dưỡng da b&eacute; mịn m&agrave;ng</p>\r\n\r\n<p>&bull; Sản xuất tr&ecirc;n c&ocirc;ng nghệ d&acirc;y chuyền hiện đại theo chuẩn ISO 9001:2008 H&agrave;n Quốc</p>\r\n\r\n<p>&bull; Kh&ocirc;ng chứa 7 h&oacute;a chất độc hại: Cồn - Paraben - Chất tẩy trắng &ndash; Tạo m&agrave;u -&nbsp; Formaldehyde - CMIT &ndash; MIT : an to&agrave;n v&agrave; dịu nhẹ cho l&agrave;n da nhạy cảm của b&eacute;</p>\r\n\r\n<p>&nbsp;<img src=\"https://cdn1.concung.com/storage/2023/02/1675416001-img-9845-copy.jpg\" /></p>\r\n\r\n<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong>:</p>\r\n\r\n<p>- Quy c&aacute;ch đ&oacute;ng g&oacute;i: 100 tờ</p>\r\n\r\n<p><strong>Lưu &yacute;</strong>: Bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t</p>\r\n\r\n<p><strong>Xuất xứ</strong>: H&agrave;n Quốc</p>', 5, 17, NULL, 1, '/storage/uploads/2024/04/16/concung_gentle4.png', 20, 624000, '2024-04-16 03:30:16', '2024-04-16 03:30:16'),
(97, 'Combo 3 Khăn ướt ConCung Gentle Care Hàn Quốc cho da nhạy cảm, 100 tờ (màu hồng)', 'Khăn ướt ConCung Gentle Care Hàn Quốc cho da nhạy cảm, 100 tờ (màu hồng) được sản xuất trên dây chuyền công nghệ tiên tiến của Hàn Quốc dưới thương hiệu ConCung Gentle Care. Sản phẩm được sản xuất trực tiếp tại Hàn Quốc với các thành phần từ thiên nhiên, giúp làm sạch, dưỡng ẩm và thân thiện với làn da nhạy cảm của bé yêu. Với các thành phần tự nhiên như sau, các Mẹ hoàn toàn có thể tin tưởng khi dùng cho bé yêu.', '<p><strong>Th&agrave;nh phần Khăn ướt&nbsp;<strong>ConCung Gentle Care</strong>&nbsp;H&agrave;n Quốc cho da nhạy cảm, 100 tờ (m&agrave;u hồng)</strong>:<strong>&nbsp;</strong></p>\r\n\r\n<p>&bull; 99% th&agrave;nh phần khăn ướt l&agrave; nước tinh khiết được lấy từ nguồn nước tự nhi&ecirc;n ở tỉnh Gyeonggi H&agrave;n Quốc đ&atilde; qua quy tr&igrave;nh xử l&yacute; 10 bước thanh lọc</p>\r\n\r\n<p>&bull; Chất liệu vải kh&ocirc;ng dệt si&ecirc;u dai, kh&ocirc;ng chứa antimony, an to&agrave;n tuyệt đối cho da b&eacute;</p>\r\n\r\n<p>&bull; Bổ sung tinh chất dưỡng ẩm đến từ Ph&aacute;p nu&ocirc;i dưỡng da b&eacute; mịn m&agrave;ng</p>\r\n\r\n<p>&bull; Sản xuất tr&ecirc;n c&ocirc;ng nghệ d&acirc;y chuyền hiện đại theo chuẩn ISO 9001:2008 H&agrave;n Quốc</p>\r\n\r\n<p>&bull; Kh&ocirc;ng chứa 7 h&oacute;a chất độc hại: Cồn - Paraben - Chất tẩy trắng &ndash; Tạo m&agrave;u -&nbsp; Formaldehyde - CMIT &ndash; MIT : an to&agrave;n v&agrave; dịu nhẹ cho l&agrave;n da nhạy cảm của b&eacute;</p>\r\n\r\n<p>&nbsp;<img src=\"https://cdn1.concung.com/storage/2023/02/1675416001-img-9845-copy.jpg\" /></p>\r\n\r\n<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong>:</p>\r\n\r\n<p>- Quy c&aacute;ch đ&oacute;ng g&oacute;i: 100 tờ</p>\r\n\r\n<p><strong>Lưu &yacute;</strong>: Bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t</p>\r\n\r\n<p><strong>Xuất xứ</strong>: H&agrave;n Quốc</p>', 5, 17, NULL, 1, '/storage/uploads/2024/04/16/concung_gentle5.png', 1, 117000, '2024-04-16 03:31:42', '2024-05-10 17:02:47'),
(98, 'Combo 2 Bình sữa Mam Easy Start Anticolic(chống đầy hơi, 260ml, trắng kem)', 'Sản phẩm Combo 2 Bình sữa Mam Easy Start Anticolic 260ml (trắng kem) có công nghệ van silicone độc quyền lắp dưới đáy bình giúp giảm lượng khí vào bụng khi bé bú, hạn chế tình trạng đầy hơi của bé.', '<p dir=\"ltr\">Ưu điểm nổi bật của sản phẩm&nbsp;</p>\r\n\r\n<p dir=\"ltr\">- Chất lượng PP cao cấp, an to&agrave;n cho b&eacute;</p>\r\n\r\n<p dir=\"ltr\">- C&ocirc;ng nghệ van silicone độc quyền lắp dưới đ&aacute;y b&igrave;nh gi&uacute;p giảm lượng kh&iacute; v&agrave;o bụng khi b&eacute; b&uacute;, hạn chế t&igrave;nh trạng đầy hơi của b&eacute;.</p>\r\n\r\n<p dir=\"ltr\">- C&aacute;c bộ phận dễ d&agrave;ng th&aacute;o rời v&agrave; vệ sinh.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">- N&uacute;m ty m&ocirc; phỏng như ty mẹ, gi&uacute;p b&eacute; dễ d&agrave;ng ngậm b&uacute;&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Hướng dẫn sử dụng</p>\r\n\r\n<p dir=\"ltr\">D&ugrave;ng cho b&eacute; b&uacute; sữa hoặc nước s&ocirc;i để nguội.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">&bull; L&agrave;m sạch trước lần đầu ti&ecirc;n v&agrave; mỗi lần sử dụng tiếp theo.</p>\r\n\r\n<p dir=\"ltr\">&bull; Trước khi sử dụng lần đầu, h&atilde;y t&aacute;ch tất cả c&aacute;c bộ phận ra v&agrave; cho v&agrave;o nước s&ocirc;i trong 5 ph&uacute;t.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">&bull; Kh&ocirc;ng sử dụng chất tẩy rửa ăn m&ograve;n. Chỉ d&ugrave;ng b&agrave;n chải l&ocirc;ng mềm hoặc bọt biển mềm&nbsp;</p>\r\n\r\n<p dir=\"ltr\">&bull; Khử tr&ugrave;ng bằng một trong c&aacute;c phương ph&aacute;p sau: khử tr&ugrave;ng bằng hơi nước (điện hoặc m&aacute;y tiệt tr&ugrave;ng theo hướng dẫn của nh&agrave; sản xuất), đun s&ocirc;i trong nước &iacute;t nhất 5 ph&uacute;t hoặc ng&acirc;m trong dung dịch khử tr&ugrave;ng. &bull; Kh&ocirc;ng d&ugrave;ng ghim hoặc vật sắc nhọn để mở rộng lỗ tr&ecirc;n n&uacute;m ty&nbsp;</p>\r\n\r\n<p dir=\"ltr\">&bull; Kh&ocirc;ng đặt b&igrave;nh trong l&ograve; đ&atilde; l&agrave;m n&oacute;ng.</p>\r\n\r\n<p dir=\"ltr\">Hướng dẫn bảo quản&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t. Tr&aacute;nh &aacute;nh nắng trực tiếp.</p>\r\n\r\n<p dir=\"ltr\">Th&ocirc;ng tin chi tiết&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Thương hiệu: MAM&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Xuất xứ: ch&acirc;u &Acirc;u</p>\r\n\r\n<p dir=\"ltr\">Độ tuổi ph&ugrave; hợp: b&eacute; từ 2 th&aacute;ng tuổi&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Quy c&aacute;ch đ&oacute;ng g&oacute;i: 2 b&igrave;nh/hộp</p>', 5, 20, 1, 3, '/storage/uploads/2024/04/16/mam1.jpg', 98, 395000, '2024-04-16 03:35:30', '2024-05-16 14:03:41'),
(99, 'Ty ngậm Mam Original 2-6m (unisex) (2 cái/set)', 'Các sản phẩm của Mam được đánh giá là chất lượng, an toàn và mang lại cảm giác gần gũi như bú mẹ cho bé.', '<p dir=\"ltr\">Ưu điểm nổi bật của sản phẩm&nbsp;</p>\r\n\r\n<p dir=\"ltr\">- Chuy&ecirc;n d&ugrave;ng cho b&eacute; ngậm tạo cảm gi&aacute;c giống như b&uacute; mẹ.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">- Chất liệu silicone mềm mịn như da mẹ, an to&agrave;n cho b&eacute;.&nbsp;</p>\r\n\r\n<p dir=\"ltr\">- Thiết kế mỏng nhẹ, hai mặt đối xứng nhau của ty giả MAM gi&uacute;p b&eacute; ph&aacute;t triển răng h&agrave;m một c&aacute;ch khỏe mạnh.</p>\r\n\r\n<p dir=\"ltr\">- Thoải m&aacute;i cho trẻ sơ sinh, y&ecirc;n t&acirc;m cho cha mẹ v&agrave; cho cảm gi&aacute;c quen thuộc với n&uacute;m v&uacute;</p>\r\n\r\n<p dir=\"ltr\">Hướng dẫn sử dụng</p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Trước khi sử dụng lần đầu, đun s&ocirc;i trong nước 5 ph&uacute;t. Để th&ecirc;m 5 ph&uacute;t trước khi đưa ty ngậm cho b&eacute; (để l&agrave;m nguội)</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Vệ sinh trước mỗi lần sử dụng.&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Phương ph&aacute;p khử tr&ugrave;ng: khử tr&ugrave;ng bằng hơi nước (điện hoặc vi s&oacute;ng), ng&acirc;m trong dung dịch khử tr&ugrave;ng dạng lỏng, tất cả đều theo hướng dẫn của nh&agrave; sản xuất hoặc đun s&ocirc;i trong nước &iacute;t nhất 5 ph&uacute;t</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Kh&ocirc;ng sử dụng c&aacute;c chất tẩy rửa mạnh&nbsp;</p>\r\n	</li>\r\n	<li dir=\"ltr\">\r\n	<p dir=\"ltr\">Khuyến nghị ngừng sử dụng ty ngậm khi b&eacute; 3 tuổi.&nbsp;</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir=\"ltr\">Hướng dẫn bảo quản&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t. Tr&aacute;nh &aacute;nh nắng trực tiếp.</p>\r\n\r\n<p dir=\"ltr\">Th&ocirc;ng tin chi tiết&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Thương hiệu: MAM&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Xuất xứ: ch&acirc;u &Acirc;u</p>\r\n\r\n<p dir=\"ltr\">Độ tuổi ph&ugrave; hợp: b&eacute; 2-6 th&aacute;ng tuổi&nbsp;</p>\r\n\r\n<p dir=\"ltr\">Quy c&aacute;ch đ&oacute;ng g&oacute;i: 2 c&aacute;i/vỉ</p>', 5, 20, 1, 2, '/storage/uploads/2024/04/16/mam2.jpg', 97, 315000, '2024-04-16 03:38:34', '2024-05-22 13:57:22'),
(100, 'Bàn chải đánh răng có vòng chắn cho bé Mam (xanh)', 'Bàn chải đánh răng cho bé Mam là lựa chọn tốt cho bé trong giai đoạn tập đánh răng, chăm sóc răng miệng với lông chải mềm mại, tay cầm dẻo và vòng chắn bảo vệ ngăn bé đưa bài chải sâu vào miệng.', '<p><strong>Đặc điểm sản phẩm:</strong></p>\r\n\r\n<p><strong>Th&agrave;nh phần:</strong></p>\r\n\r\n<ul>\r\n	<li>Tay cầm: Nhựa PP v&agrave; TPO</li>\r\n	<li>Sợi b&agrave;n chải: Nylong</li>\r\n	<li>V&ograve;ng tr&ograve;n bảo vệ: Nhựa POM</li>\r\n</ul>\r\n\r\n<p><strong>K&iacute;ch thước:</strong>&nbsp;17x3x3 cm</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng:</strong>&nbsp;D&ugrave;ng để vệ sinh răng miệng cho b&eacute; từ 5 th&aacute;ng tuổi</p>\r\n\r\n<p><strong>Hướng dẫn bảo quản:</strong>&nbsp;Bảo quản nơi kh&ocirc; tho&aacute;ng</p>\r\n\r\n<p><strong>Th&ocirc;ng tin cảnh b&aacute;o:</strong>&nbsp;Sử dụng dưới sự gi&aacute;m s&aacute;t của người lớn</p>\r\n\r\n<p><strong>Xuất xứ:&nbsp;</strong>Đức</p>\r\n\r\n<p><img src=\"https://cdn1.concung.com/storage/2021/07/1627014852-babys-brush-caucasian1-a5-100dpi.jpg\" /></p>', 5, 20, 1, 2, '/storage/uploads/2024/04/16/mam3.jpg', 94, 119000, '2024-04-16 03:40:25', '2024-05-22 14:38:09'),
(101, 'sữa', 'sữa', '<p>sữa</p>', 1, 1, 1, 1, '/storage/uploads/2024/05/29/sua_enfa1.jpg', 48, 500000, '2024-05-29 01:17:19', '2024-05-29 01:19:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_types`
--

CREATE TABLE `product_types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_types`
--

INSERT INTO `product_types` (`id`, `name`, `thumb`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Sữa bột cao cấp', '/storage/uploads/2024/04/05/avt_suabotcaocap.png', 1, '2024-04-05 11:28:08', '2024-04-05 11:28:08'),
(2, 'Sữa tươi các loại', '/storage/uploads/2024/04/05/avt_suatuoicacloai.png', 1, '2024-04-05 11:28:34', '2024-04-05 11:28:34'),
(3, 'Chăm sóc gia đình', '/storage/uploads/2024/04/05/chamsocgd.jpg', 1, '2024-04-05 11:28:53', '2024-04-05 11:28:53'),
(4, 'Vitamin & Sức khỏe', '/storage/uploads/2024/04/05/vitamin_suckhoe.png', 1, '2024-04-05 11:29:07', '2024-04-05 11:29:07'),
(5, 'Đồ dùng mẹ và bé', '/storage/uploads/2024/04/05/avt_dodungmevabe.jpg', 1, '2024-04-05 11:29:19', '2024-04-05 11:29:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale` decimal(2,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `promotions`
--

INSERT INTO `promotions` (`id`, `name`, `sale`, `created_at`, `updated_at`) VALUES
(1, 'không có', 0.00, '2024-04-05 11:58:11', '2024-04-05 11:58:11'),
(2, 'khuyễn mãi 10%', 0.10, '2024-04-21 06:03:01', '2024-04-21 06:03:01'),
(3, 'khuyến mãi 5%', 0.05, '2024-04-21 07:58:34', '2024-04-21 07:58:34'),
(4, 'khuyến mãi 15%', 0.15, '2024-04-21 07:58:46', '2024-04-21 07:58:46'),
(6, 'Khuyến mãi 20%', 0.20, '2024-04-23 11:45:47', '2024-04-23 11:45:47'),
(7, 'Khuyến mãi 25%', 0.25, '2024-05-13 13:57:38', '2024-05-13 13:57:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `provinces`
--

CREATE TABLE `provinces` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `provinces`
--

INSERT INTO `provinces` (`id`, `name`, `type`, `slug`) VALUES
(1, 'Thành phố Hà Nội', 'Thành phố Trung ương', 'HANOI'),
(2, 'Tỉnh Hà Giang', 'Tỉnh', 'HAGIANG'),
(4, 'Tỉnh Cao Bằng', 'Tỉnh', 'CAOBANG'),
(6, 'Tỉnh Bắc Kạn', 'Tỉnh', 'BACKAN'),
(8, 'Tỉnh Tuyên Quang', 'Tỉnh', 'TUYENQUANG'),
(10, 'Tỉnh Lào Cai', 'Tỉnh', 'LAOCAI'),
(11, 'Tỉnh Điện Biên', 'Tỉnh', 'DIENBIEN'),
(12, 'Tỉnh Lai Châu', 'Tỉnh', 'LAICHAU'),
(14, 'Tỉnh Sơn La', 'Tỉnh', 'SONLA'),
(15, 'Tỉnh Yên Bái', 'Tỉnh', 'YENBAI'),
(17, 'Tỉnh Hoà Bình', 'Tỉnh', 'HOABINH'),
(19, 'Tỉnh Thái Nguyên', 'Tỉnh', 'THAINGUYEN'),
(20, 'Tỉnh Lạng Sơn', 'Tỉnh', 'LANGSON'),
(22, 'Tỉnh Quảng Ninh', 'Tỉnh', 'QUANGNINH'),
(24, 'Tỉnh Bắc Giang', 'Tỉnh', 'BACGIANG'),
(25, 'Tỉnh Phú Thọ', 'Tỉnh', 'PHUTHO'),
(26, 'Tỉnh Vĩnh Phúc', 'Tỉnh', 'VINHPHUC'),
(27, 'Tỉnh Bắc Ninh', 'Tỉnh', 'BACNINH'),
(30, 'Tỉnh Hải Dương', 'Tỉnh', 'HAIDUONG'),
(31, 'Thành phố Hải Phòng', 'Thành phố Trung ương', 'HAIPHONG'),
(33, 'Tỉnh Hưng Yên', 'Tỉnh', 'HUNGYEN'),
(34, 'Tỉnh Thái Bình', 'Tỉnh', 'THAIBINH'),
(35, 'Tỉnh Hà Nam', 'Tỉnh', 'HANAM'),
(36, 'Tỉnh Nam Định', 'Tỉnh', 'NAMDINH'),
(37, 'Tỉnh Ninh Bình', 'Tỉnh', 'NINHBINH'),
(38, 'Tỉnh Thanh Hóa', 'Tỉnh', 'THANHHOA'),
(40, 'Tỉnh Nghệ An', 'Tỉnh', 'NGHEAN'),
(42, 'Tỉnh Hà Tĩnh', 'Tỉnh', 'HATINH'),
(44, 'Tỉnh Quảng Bình', 'Tỉnh', 'QUANGBINH'),
(45, 'Tỉnh Quảng Trị', 'Tỉnh', 'QUANGTRI'),
(46, 'Tỉnh Thừa Thiên Huế', 'Tỉnh', 'THUATHIENHUE'),
(48, 'Thành phố Đà Nẵng', 'Thành phố Trung ương', 'DANANG'),
(49, 'Tỉnh Quảng Nam', 'Tỉnh', 'QUANGNAM'),
(51, 'Tỉnh Quảng Ngãi', 'Tỉnh', 'QUANGNGAI'),
(52, 'Tỉnh Bình Định', 'Tỉnh', 'BINHDINH'),
(54, 'Tỉnh Phú Yên', 'Tỉnh', 'PHUYEN'),
(56, 'Tỉnh Khánh Hòa', 'Tỉnh', 'KHANHHOA'),
(58, 'Tỉnh Ninh Thuận', 'Tỉnh', 'NINHTHUAN'),
(60, 'Tỉnh Bình Thuận', 'Tỉnh', 'BINHTHUAN'),
(62, 'Tỉnh Kon Tum', 'Tỉnh', 'KONTUM'),
(64, 'Tỉnh Gia Lai', 'Tỉnh', 'GIALAI'),
(66, 'Tỉnh Đắk Lắk', 'Tỉnh', 'DAKLAK'),
(67, 'Tỉnh Đắk Nông', 'Tỉnh', 'DAKNONG'),
(68, 'Tỉnh Lâm Đồng', 'Tỉnh', 'LAMDONG'),
(70, 'Tỉnh Bình Phước', 'Tỉnh', 'BINHPHUOC'),
(72, 'Tỉnh Tây Ninh', 'Tỉnh', 'TAYNINH'),
(74, 'Tỉnh Bình Dương', 'Tỉnh', 'BINHDUONG'),
(75, 'Tỉnh Đồng Nai', 'Tỉnh', 'DONGNAI'),
(77, 'Tỉnh Bà Rịa - Vũng Tàu', 'Tỉnh', 'BARIAVUNGTAU'),
(79, 'Thành phố Hồ Chí Minh', 'Thành phố Trung ương', 'HOCHIMINH'),
(80, 'Tỉnh Long An', 'Tỉnh', 'LONGAN'),
(82, 'Tỉnh Tiền Giang', 'Tỉnh', 'TIENGIANG'),
(83, 'Tỉnh Bến Tre', 'Tỉnh', 'BENTRE'),
(84, 'Tỉnh Trà Vinh', 'Tỉnh', 'TRAVINH'),
(86, 'Tỉnh Vĩnh Long', 'Tỉnh', 'VINHLONG'),
(87, 'Tỉnh Đồng Tháp', 'Tỉnh', 'DONGTHAP'),
(89, 'Tỉnh An Giang', 'Tỉnh', 'ANGIANG'),
(91, 'Tỉnh Kiên Giang', 'Tỉnh', 'KIENGIANG'),
(92, 'Thành phố Cần Thơ', 'Thành phố Trung ương', 'CANTHO'),
(93, 'Tỉnh Hậu Giang', 'Tỉnh', 'HAUGIANG'),
(94, 'Tỉnh Sóc Trăng', 'Tỉnh', 'SOCTRANG'),
(95, 'Tỉnh Bạc Liêu', 'Tỉnh', 'BACLIEU'),
(96, 'Tỉnh Cà Mau', 'Tỉnh', 'CAMAU');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sales`
--

CREATE TABLE `sales` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale` decimal(2,2) NOT NULL,
  `quantity` int NOT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sales`
--

INSERT INTO `sales` (`id`, `name`, `token`, `sale`, `quantity`, `active`, `created_at`, `updated_at`) VALUES
(1, 'giảm giá 10%', 'discount10%', 0.10, 10, 1, '2024-05-05 12:53:00', '2024-05-05 12:54:24'),
(2, 'Giảm giá 5%', 'concungsale5%', 0.05, 5, 1, '2024-05-05 12:55:21', '2024-05-05 12:55:21'),
(3, 'Giảm giá 15%', 'concungsale15%', 0.15, 5, 1, '2024-05-13 13:58:04', '2024-05-13 13:58:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `url`, `thumb`, `description`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Khuyến mãi 1', '', '/storage/uploads/2024/04/05/khuyenmai1.png', 'khuyến mãi', 1, '2024-04-05 11:22:26', '2024-04-05 11:22:26'),
(2, 'khuyến mãi 2', '', '/storage/uploads/2024/04/05/khuyenmai2.png', 'khuyến mãi', 1, '2024-04-05 11:22:59', '2024-04-05 11:22:59'),
(3, 'khuyến mãi 3', '', '/storage/uploads/2024/04/05/khuyenmai3.png', 'khuyến mãi', 1, '2024-04-05 11:23:13', '2024-04-05 11:23:13'),
(4, 'khuyến mãi 4', '', '/storage/uploads/2024/04/05/khuyenmai4.png', 'khuyến mãi', 1, '2024-04-05 11:23:26', '2024-04-05 11:23:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Chờ xác nhận đơn hàng', NULL, NULL),
(2, 'Xác nhận thành công', NULL, NULL),
(3, 'Đang giao hàng', NULL, NULL),
(4, 'Giao hàng thành công', NULL, NULL),
(5, 'Hủy đơn hàng', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `thumb`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Abbott Grow', '/storage/uploads/2024/05/21/abootgrow.png', '', '2024-05-15 16:18:05', '2024-05-21 15:48:21'),
(2, 'Amino', '/storage/uploads/2024/05/21/amino.png', '', '2024-05-21 15:49:42', '2024-05-21 15:49:42'),
(3, 'Mam', '/storage/uploads/2024/05/21/mam.png', '', '2024-05-21 15:50:47', '2024-05-21 15:50:47'),
(4, 'AGA-AE', '/storage/uploads/2024/05/21/ageae.png', '', '2024-05-21 15:53:15', '2024-05-21 15:53:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trademarks`
--

CREATE TABLE `trademarks` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `trademarks`
--

INSERT INTO `trademarks` (`id`, `name`, `thumb`, `url`, `created_at`, `updated_at`) VALUES
(1, 'ABBOTT', '/storage/uploads/2024/04/05/images.png', '', '2024-04-05 11:38:09', '2024-04-05 11:39:48'),
(2, 'CoLosBaby', '/storage/uploads/2024/04/15/avt_colosbaby.jpg', '', '2024-04-15 01:28:15', '2024-04-15 01:28:15'),
(3, 'Pediasure', '/storage/uploads/2024/04/15/avt_pediasure.png', '', '2024-04-15 01:30:00', '2024-04-15 01:30:00'),
(4, 'Enfa', '/storage/uploads/2024/04/15/avt_enfa.jpg', '', '2024-04-15 01:34:34', '2024-04-15 01:34:34'),
(5, 'Vinamilk', '/storage/uploads/2024/04/15/avt_vinamilk.png', '', '2024-04-15 01:37:19', '2024-04-15 01:37:19'),
(6, 'NutiFood', '/storage/uploads/2024/04/15/avt_nutifood.png', '', '2024-04-15 01:38:47', '2024-04-15 01:38:47'),
(7, 'Dutch Lady', '/storage/uploads/2024/04/15/avt_ducthlady.png', '', '2024-04-15 01:40:17', '2024-04-15 01:40:17'),
(8, 'Healthy Care', '/storage/uploads/2024/04/15/avt_healthycare.png', '', '2024-04-15 01:43:01', '2024-04-15 01:43:01'),
(9, 'Nature\'s Way', '/storage/uploads/2024/04/15/avt_natureway.png', '', '2024-04-15 01:44:51', '2024-04-15 01:44:51'),
(10, 'BioAmicus', '/storage/uploads/2024/04/15/avt_biomicus.jpg', '', '2024-04-15 01:46:13', '2024-04-15 01:46:13'),
(11, 'Omo', '/storage/uploads/2024/04/15/avt_omo.png', '', '2024-04-15 01:47:27', '2024-04-15 01:47:27'),
(12, 'Comfort', '/storage/uploads/2024/04/15/avt_comfort.png', '', '2024-04-15 01:49:53', '2024-04-15 01:49:53'),
(13, 'Dove', '/storage/uploads/2024/04/15/avt_dove.png', '', '2024-04-15 01:51:15', '2024-04-15 01:51:15'),
(14, 'Downy', '/storage/uploads/2024/04/15/avt_downy.png', '', '2024-04-15 01:51:51', '2024-04-15 01:51:51'),
(15, 'Sunlight', '/storage/uploads/2024/04/15/avt_sunlight.png', '', '2024-04-15 01:54:37', '2024-04-15 01:54:37'),
(16, 'D-nee', '/storage/uploads/2024/04/15/avt_d-nee.png', '', '2024-04-15 01:55:16', '2024-04-15 01:55:16'),
(17, 'ConCung Gentle Care', '/storage/uploads/2024/04/15/avt_gentlecare.png', '', '2024-04-15 01:56:45', '2024-04-15 01:56:45'),
(18, 'AGA-AE', '/storage/uploads/2024/04/15/avt_AGA-AE.png', '', '2024-04-15 01:57:59', '2024-04-15 01:57:59'),
(19, 'Moyuum', '/storage/uploads/2024/04/15/avt_moyuum.png', '', '2024-04-15 01:59:08', '2024-04-15 01:59:08'),
(20, 'Mam', '/storage/uploads/2024/04/15/avt_mam.png', '', '2024-04-15 02:01:04', '2024-04-15 02:01:04'),
(21, 'Thương hiệu khác', '/storage/uploads/2024/05/15/thuonghieukhac.png', '', '2024-05-15 05:19:40', '2024-05-15 05:19:40'),
(22, 'Amino', '/storage/uploads/2024/05/15/thuonghieu_amino.png', '', '2024-05-15 05:25:39', '2024-05-15 05:25:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype_id` bigint UNSIGNED NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `cccd` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `usertype_id`, `gender`, `cccd`, `phone`, `email`, `thumb`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Thành Đạt', 1, 1, '056201009724', '0792288731', 'dat.ntha.62cntt@ntu.edu.vn', '/storage/uploads/2024/04/05/avt.jpg', '2024-04-05 11:09:41', '$2a$12$suxZfHu.Ee2N51fyuB1xkO4ktBgf61bE4YVTpT8Ix0lg/yMd6Qdnq', 'pd3a9iw8QcSMl4RVKFg4S9i52jMvv6Rj8Et8TKD14EcZtvDh1A7VkpN864UK', NULL, '2024-04-20 03:43:16'),
(2, 'Phan Trần Thu Phương', 2, 1, '01234567891', '0977942997', 'dat2905200278@gmail.com', '/storage/uploads/2024/04/05/back.jpg', NULL, '$2a$12$suxZfHu.Ee2N51fyuB1xkO4ktBgf61bE4YVTpT8Ix0lg/yMd6Qdnq', NULL, '2024-04-05 11:26:20', '2024-04-05 11:26:20'),
(3, 'Nguyễn Thành Thi', 4, 1, '01234567891', '0977942997', 'dat2905200279@gmail.com', '/storage/uploads/2024/04/21/back.jpg', NULL, '$2y$10$/KW6Dta49LVbmM4oBUErfOgPSs4y.JTM.4QB4lf.0dGk566OKhTbq', NULL, '2024-04-21 08:09:58', '2024-05-02 12:17:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_types`
--

CREATE TABLE `user_types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_types`
--

INSERT INTO `user_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Quản lý', '2024-04-05 11:25:18', '2024-04-21 04:14:28'),
(3, 'Nhân viên bán hàng', NULL, '2024-04-21 04:14:44'),
(4, 'Nhân viên giao hàng', NULL, '2024-04-21 04:14:57');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_province_id_foreign` (`province_id`);

--
-- Chỉ mục cho bảng `clothes`
--
ALTER TABLE `clothes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clothes_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `token` (`city_id`),
  ADD KEY `customers_province_id_foreign` (`province_id`);

--
-- Chỉ mục cho bảng `devvn_quanhuyen`
--
ALTER TABLE `devvn_quanhuyen`
  ADD PRIMARY KEY (`maqh`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Chỉ mục cho bảng `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `milk`
--
ALTER TABLE `milk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `milk_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderdetails_order_id_foreign` (`order_id`),
  ADD KEY `orderdetails_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`),
  ADD KEY `orders_status_id_foreign` (`status_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_sale_id_foreign` (`sale_id`),
  ADD KEY `orders_userset_id_foreign` (`userset_id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD KEY `products_producttype_id_foreign` (`producttype_id`),
  ADD KEY `products_trademark_id_foreign` (`trademark_id`),
  ADD KEY `products_promotion_id_foreign` (`promotion_id`),
  ADD KEY `products_supplier_id_foreign` (`supplier_id`);

--
-- Chỉ mục cho bảng `product_types`
--
ALTER TABLE `product_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_types_name_unique` (`name`);

--
-- Chỉ mục cho bảng `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `promotions_name_unique` (`name`);

--
-- Chỉ mục cho bảng `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sales_name_unique` (`name`),
  ADD UNIQUE KEY `sales_token_unique` (`token`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sliders_name_unique` (`name`);

--
-- Chỉ mục cho bảng `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_name_unique` (`name`);

--
-- Chỉ mục cho bảng `trademarks`
--
ALTER TABLE `trademarks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trademarks_name_unique` (`name`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_usertype_id_foreign` (`usertype_id`);

--
-- Chỉ mục cho bảng `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_types_name_unique` (`name`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=974;

--
-- AUTO_INCREMENT cho bảng `clothes`
--
ALTER TABLE `clothes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `milk`
--
ALTER TABLE `milk`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT cho bảng `product_types`
--
ALTER TABLE `product_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT cho bảng `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `trademarks`
--
ALTER TABLE `trademarks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`);

--
-- Các ràng buộc cho bảng `clothes`
--
ALTER TABLE `clothes`
  ADD CONSTRAINT `clothes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `customers_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`);

--
-- Các ràng buộc cho bảng `milk`
--
ALTER TABLE `milk`
  ADD CONSTRAINT `milk_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `orderdetails_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `orders_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`),
  ADD CONSTRAINT `orders_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_userset_id_foreign` FOREIGN KEY (`userset_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_producttype_id_foreign` FOREIGN KEY (`producttype_id`) REFERENCES `product_types` (`id`),
  ADD CONSTRAINT `products_promotion_id_foreign` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`id`),
  ADD CONSTRAINT `products_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`),
  ADD CONSTRAINT `products_trademark_id_foreign` FOREIGN KEY (`trademark_id`) REFERENCES `trademarks` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_usertype_id_foreign` FOREIGN KEY (`usertype_id`) REFERENCES `user_types` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
