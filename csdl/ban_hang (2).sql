-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 30, 2019 lúc 01:32 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ban_hang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `hinh` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `rong` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `cao` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `hinh`, `rong`, `cao`) VALUES
(1, '1.jpg', '990px', '150px');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `footer`
--

CREATE TABLE `footer` (
  `id` int(11) NOT NULL,
  `html` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `footer`
--

INSERT INTO `footer` (`id`, `html`) VALUES
(1, '<table width=\"990px\">\r\n<tbody>\r\n<tr >\r\n<td align=\"right\" width=\"495px\">Shop:</td>\r\n<td width=\"495px\">Glosbe</td>\r\n</tr>\r\n<tr>\r\n<td align=\"right\">Tel:</td>\r\n<strong  >454 Ton Duc Thang </strong>\r\n</tr>\r\n<tr>\r\n<td align=\"right\">Add:</td>\r\n<strong>-AnhYenLyTrang</strong>\r\n</tr>\r\n</tbody>\r\n</table>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don`
--

CREATE TABLE `hoa_don` (
  `id` int(11) NOT NULL,
  `ten_nguoi_mua` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dien_thoai` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `hang_duoc_mua` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoa_don`
--

INSERT INTO `hoa_don` (`id`, `ten_nguoi_mua`, `email`, `dia_chi`, `dien_thoai`, `noi_dung`, `hang_duoc_mua`) VALUES
(1, 'ney', 'ney@gmail.com', 'ton duc thang', '0909088987', '', '12[|||]0[|||||]41[|||]1[|||||]34[|||]1[|||||]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_doc`
--

CREATE TABLE `menu_doc` (
  `id` int(11) NOT NULL,
  `ten` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_doc`
--

INSERT INTO `menu_doc` (`id`, `ten`) VALUES
(1, 'Necklace'),
(2, 'Set'),
(3, 'Ring');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_ngang`
--

CREATE TABLE `menu_ngang` (
  `id` int(11) NOT NULL,
  `ten` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `loai_menu` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_ngang`
--

INSERT INTO `menu_ngang` (`id`, `ten`, `noi_dung`, `loai_menu`) VALUES
(1, 'Introduce', '\r\nCompany name: PHU NHUAN JEWELRY JOINT STOCK COMPANY<br><br>\r\n\r\nEnglish name: Phu Nhuan Jewelry Joint Stock Company<br><br>\r\n\r\nAbbreviated name: PNJ., JSC<br><br>\r\n\r\nAddress: 170E Phan Dang Luu - Ward 3 - Phu Nhuan District - Ho Chi Minh City<br><br>\r\n\r\nPhone: (84-28) 39951703 - Fax: (84-28) 39951702 - Email: pnj@pnj.com.vn<br><br>\r\n\r\nBusiness registration certificate: 0300521758<br><br>\r\n\r\nTax code: 0300521758<br><br>\r\n\r\nCompany type: Joint stock company<br><br>\r\n\r\nLegal representative: Ms. Cao Thi Ngoc Dung - PNJ Chairwoman<br><br>\r\n\r\nCharter capital: 1,621,393,240,000 (One thousand six hundred twenty one billion, three hundred and ninety three million, two hundred and forty thousand dong)<br><br>\r\n\r\nMain business sectors:<br>\r\n\r\nManufacturing and trading jewelry with gold, silver, gemstones, fashion accessories, souvenirs. Trading in watches and gold bars<br><br>\r\n\r\nService of testing diamonds, precious stones and precious metals<br><br>\r\n\r\nReal estate business', ''),
(2, 'Product', '', 'san_pham'),
(3, 'Tutorial', 'ORDER ONLINE WEBSITE PNJ.COM.VN<br>\r\nStep 1: Find products to buy<br>\r\nStep 2: Select the product to buy<br>\r\nStep 3: Enter payment information and proceed to payment<br>\r\nStep 4: Select a payment method<br>\r\nStep 5: Pay and see orders<br>\r\n<br>\r\nCALL THE HOTLINE NUMBER 1800545457\r\n', ''),
(5, 'Contact', '<div class=\"container\">\r\n  <form action=\"action_page.php\">\r\n\r\n    <label for=\"fname\">First Name</label>\r\n    <input type=\"text\" id=\"fname\" name=\"firstname\" placeholder=\"Your name..\">\r\n\r\n    <label for=\"lname\">Last Name</label>\r\n    <input type=\"text\" id=\"lname\" name=\"lastname\" placeholder=\"Your last name..\">\r\n\r\n    <label for=\"country\">Country</label>\r\n    <select id=\"country\" name=\"country\">\r\n      <option value=\"australia\">Australia</option>\r\n      <option value=\"canada\">Canada</option>\r\n      <option value=\"usa\">USA</option>\r\n    </select>\r\n\r\n    <label for=\"subject\">Subject</label>\r\n    <textarea id=\"subject\" name=\"subject\" placeholder=\"Write something..\" style=\"height:200px\"></textarea>\r\n\r\n    <input type=\"submit\" value=\"Submit\">\r\n\r\n  </form>\r\n</div>\r\n<style>\r\ninput[type=text], select, textarea {\r\n  width: 100%; /* Full width */\r\n  padding: 12px; /* Some padding */ \r\n  border: 1px solid #ccc; /* Gray border */\r\n  border-radius: 4px; /* Rounded borders */\r\n  box-sizing: border-box; /* Make sure that padding and width stays in place */\r\n  margin-top: 6px; /* Add a top margin */\r\n  margin-bottom: 16px; /* Bottom margin */\r\n  resize: vertical /* Allow the user to vertically resize the textarea (not horizontally) */\r\n}\r\n\r\n/* Style the submit button with a specific background color etc */\r\ninput[type=submit] {\r\n  background-color: #4CAF50;\r\n  color: white;\r\n  padding: 12px 20px;\r\n  border: none;\r\n  border-radius: 4px;\r\n  cursor: pointer;\r\n}\r\n\r\n/* When moving the mouse over the submit button, add a darker green color */\r\ninput[type=submit]:hover {\r\n  background-color: #45a049;\r\n}\r\n\r\n/* Add a background color and some padding around the form */\r\n.container {\r\n  border-radius: 5px;\r\n  background-color: #f2f2f2;\r\n  padding: 20px;\r\n}\r\n\r\n</style>', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quang_cao`
--

CREATE TABLE `quang_cao` (
  `id` int(11) NOT NULL,
  `html` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `vi_tri` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quang_cao`
--

INSERT INTO `quang_cao` (`id`, `html`, `vi_tri`) VALUES
(1, '<p><a href=\"#\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"../ban_hang/hinh_anh/tinymce/qc_p_11.png\" alt=\"\" /></a></p>\r\n<p style=\"text-align: center;\"><a href=\"#\"><img src=\"../ban_hang/hinh_anh/tinymce/qc_p_21.png\" alt=\"\" /></a></p>\r\n<p><a href=\"#\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"../ban_hang/hinh_anh/tinymce/qc_p_31.png\" alt=\"\" /></a></p>\r\n', 'trai'),
(2, '<p><a href=\"#\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"../ban_hang/hinh_anh/tinymce/qc_t_1.png\" alt=\"\" /></a></p>\r\n<p style=\"text-align: center;\"><a href=\"#\"><img src=\"../ban_hang/hinh_anh/tinymce/qc_t_2.png\" alt=\"\" /></a></p>\r\n<p><a href=\"#\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"../ban_hang/hinh_anh/tinymce/qc_t_3.png\" alt=\"\" /></a></p>', 'phai');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `id` int(11) NOT NULL,
  `ten` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `gia` int(255) NOT NULL,
  `hinh_anh` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `thuoc_menu` int(255) NOT NULL,
  `noi_bat` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `trang_chu` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `sap_xep_trang_chu` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`id`, `ten`, `gia`, `hinh_anh`, `noi_dung`, `thuoc_menu`, `noi_bat`, `trang_chu`, `sap_xep_trang_chu`) VALUES
(1, 'Necklace_1', 55000, '0.jpg', ' For those girls who love beauty and want to create many different styles, you should not ignore PNJSilver silver jewelry. These jewelry samples allow her to unleash creativity, mix & match with many jewelry samples, different costumes to help her confidently and shine.', 1, 'co', '', 0),
(2, 'Ring_1', 82000, '2.jpg', 'Possessing a bold design with one long earrings and the other designed funny pig combined with charming red stone, earrings with youthful and modern beauty, Help her confidently show off her personality.', 3, '', 'co', 7),
(3, 'Necklace_2', 86000, '00.jpg', 'Dress up a bit feminine, a little cute and youthful style, \"teenage\" her with unique silver jewelry. The silver earrings are designed by PNJSilver with a funny pig\'s style holding a red heart, bringing a youthful and dynamic look. Besides, when combined with other jewelry models on the right outfit, she is not only cute but also extremely cool.', 1, '', '', 0),
(4, 'Necklace_3', 97000, '4.jpg', 'Attractive with the iridescence of high quality 92.5 Sterling silver, featuring attractive red heart-shaped details integrated in the highlight of the funny pig, the silver PNJSilver pendant brings feminine and youthful beauty. , helps her look so pretty, attracts her surroundings.', 1, '', 'co', 3),
(5, 'Necklace_4', 42000, '5.jpg', 'Pendants and necklaces are always the perfect couple, so she can match any necklace or necklace she loves. In addition, PNJSilver also brings jewelry such as rings, earrings, bracelets, ... with a unique and feminine beauty, offering many choices for girls.', 1, '', '', 0),
(6, 'Necklace_5', 100000, '6.png', 'Trên chất liệu bạc Sterling 92.5 cao cấp kết hợp cùng chi tiết trái tim màu đỏ đính ở giữa trên chú heo vui nhộn, chiếc mặt dây chuyền bạc mang vẻ đẹp nữ tính, trẻ trung. Sự nổi bật của chi tiết đá màu đỏ kết hợp điểm nhấn chú heo nhỏ nhắn tô điểm vẻ đẹp duyên dáng và ngọt ngào cho nàng, giúp nàng luôn tỏa sáng trong mọi ánh nhìn.', 1, '', 'co', 0),
(7, 'Set_2', 120000, '7.jpg', 'On high quality 92.5 sterling silver combined with red heart details attached in the middle on the funny pig, the silver pendant has a feminine and youthful beauty. The highlight of the red stone detail combined with the small pig accent adorn her charming and sweet beauty, helping her to always shine in every gaze.', 2, '', 'co', 2),
(8, 'Set_3', 80000, '8.jpg', 'On high quality 92.5 sterling silver combined with red heart details attached in the middle on the funny pig, the silver pendant has a feminine and youthful beauty. The highlight of the red stone detail combined with the small pig accent adorn her charming and sweet beauty, helping her to always shine in every gaze.', 2, '', '', 0),
(9, 'Set_4', 160000, '9.jpg', 'On high quality 92.5 sterling silver combined with red heart details attached in the middle on the funny pig, the silver pendant has a feminine and youthful beauty. The highlight of the red stone detail combined with the small pig accent adorn her charming and sweet beauty, helping her to always shine in every gaze.', 2, '', '', 0),
(10, 'Set_5', 160000, '10.jpg', 'On high quality 92.5 sterling silver combined with red heart details attached in the middle on the funny pig, the silver pendant has a feminine and youthful beauty. The highlight of the red stone detail combined with the small pig accent adorn her charming and sweet beauty, helping her to always shine in every gaze.', 2, '', 'co', 7),
(11, 'Set_6', 135000, '11.jpg', 'Dress up a bit feminine, a little cute and youthful style, \"teenage\" her with unique silver jewelry. The silver earrings are designed by PNJSilver with a funny piggy style hugging a red heart, bringing a youthful and dynamic look. Besides, when combined with other jewelry models on the right outfit, she is not only cute but also extremely cool.', 2, '', 'co', 0),
(12, 'Necklace_11', 55000, '12.jpg', 'Dress up a bit feminine, a little cute and youthful style, \"teenage\" her with unique silver jewelry. The silver earrings are designed by PNJSilver with a funny piggy style hugging a red heart, bringing a youthful and dynamic look. Besides, when combined with other jewelry models on the right outfit, she is not only cute but also extremely cool.', 1, '', 'co', 13),
(13, 'Necklace_12', 72000, '13.jpg', 'Dress up a bit feminine, a little cute and youthful style, \"teenage\" her with unique silver jewelry. The silver earrings are designed by PNJSilver with a funny piggy style hugging a red heart, bringing a youthful and dynamic look. Besides, when combined with other jewelry models on the right outfit, she is not only cute but also extremely cool.', 1, '', '', 0),
(14, 'Necklace_13', 78000, '14.jpg', ' Possessing a bold design with one long earrings and the other designed funny pig combined with charming red stone, earrings with youthful and modern beauty, Help her confidently show off her personality.', 1, '', 'co', 11),
(15, 'Necklace_14', 123000, '15.jpg', ' Possessing a bold design with one long earrings and the other designed funny pig combined with charming red stone, earrings with youthful and modern beauty, Help her confidently show off her personality.', 1, '', 'co', 0),
(16, 'Necklace_15', 125000, '16.jpg', ' Possessing a bold design with one long earrings and the other designed funny pig combined with charming red stone, earrings with youthful and modern beauty, Help her confidently show off her personality.', 1, 'co', 'co', 5),
(17, 'Necklace_16', 99000, '17.jpg', 'Attractive with the iridescence of high quality 92.5 Sterling silver, featuring attractive red heart-shaped details integrated in the highlight of the funny pig, the silver PNJSilver pendant brings feminine and youthful beauty. , helps her look so pretty, attracts her surroundings.', 1, '', '', 0),
(18, 'Necklace_17', 145000, '18.jpg', 'Attractive with the iridescence of high quality 92.5 Sterling silver, featuring attractive red heart-shaped details integrated in the highlight of the funny pig, the silver PNJSilver pendant brings feminine and youthful beauty. , helps her look so pretty, attracts her surroundings.', 1, '', 'co', 1),
(19, 'Necklace_18', 145000, '18.jpg', 'Attractive with the iridescence of high quality 92.5 Sterling silver, featuring attractive red heart-shaped details integrated in the highlight of the funny pig, the silver PNJSilver pendant brings feminine and youthful beauty. , helps her look so pretty, attracts her surroundings.', 1, '', '', 0),
(20, 'Necklace_19', 170000, '21.png', ' For those girls who love beauty and want to create many different styles, you should not ignore PNJSilver silver jewelry. These jewelry samples allow her to unleash creativity, mix & match with many jewelry samples, different costumes to help her confidently and shine.', 1, '', '', 0),
(21, 'Necklace_20', 85000, '22.jpg', ' For those girls who love beauty and want to create many different styles, you should not ignore PNJSilver silver jewelry. These jewelry samples allow her to unleash creativity, mix & match with many jewelry samples, different costumes to help her confidently and shine.', 1, '', '', 0),
(22, 'Ring_2', 30000, '23.jpg', ' For those girls who love beauty and want to create many different styles, you should not ignore PNJSilver silver jewelry. These jewelry samples allow her to unleash creativity, mix & match with many jewelry samples, different costumes to help her confidently and shine.', 3, '', 'co', 8),
(23, 'Ring_3', 40000, '24.jpg', ' Inspired by the beauty of the sun flower, the pendant possesses an innovative but equally elegant design and the novelty of the brilliant Suncut Swarovski stone that is exclusively used at PNJ, bringing you she is charismatic, pure and attractive when presenting.', 3, '', '', 6),
(24, 'Ring_4', 50000, '25.jpg', ' Inspired by the beauty of the sun flower, the pendant possesses an innovative but equally elegant design and the novelty of the brilliant Suncut Swarovski stone that is exclusively used at PNJ, bringing you she is charismatic, pure and attractive when presenting.', 3, '', '', 0),
(25, 'Ring_5', 60000, '26.jpg', '\r\nInspired by the beauty of the sun flower, the pendant possesses an innovative but equally elegant design and the novelty of the brilliant Suncut Swarovski stone that is exclusively used at PNJ, bringing you she is charismatic, pure and attractive when presenting.', 3, '', '', 9),
(26, 'Ring_6', 70000, '27.jpg', 'The PNJ Sunflower pendant will be perfect when combined with necklaces or necklaces and it will help her look radiant, exuding a charming but equally luxurious beauty. In addition, she can also combine with the rings or earrings in the Sunflower Collection to create a striking style that impresses the people around the upcoming 8/3 holiday.', 3, '', 'co', 12),
(27, 'Ring_7', 80000, '28.png', 'The PNJ Sunflower pendant will be perfect when combined with necklaces or necklaces and it will help her look radiant, exuding a charming but equally luxurious beauty. In addition, she can also combine with the rings or earrings in the Sunflower Collection to create a striking style that impresses the people around the upcoming 8/3 holiday.', 3, '', '', 0),
(28, 'Ring_8', 90000, '29.jpg', 'The PNJ Sunflower pendant will be perfect when combined with necklaces or necklaces and it will help her look radiant, exuding a charming but equally luxurious beauty. In addition, she can also combine with the rings or earrings in the Sunflower Collection to create a striking style that impresses the people around the upcoming 8/3 holiday.', 3, '', '', 8),
(29, 'Ring_9', 100000, '30.png', 'Strong, youthful and full of positive energy is the message that PNJ wants to convey to the beautiful people through the product of 10K white gold pendant in Sunflower collection. The locket has a unique design with sunflowers attached to Suncut Swarovski stones as a highlight, creating a youthful and trendy beauty.', 3, '', '', 0),
(30, 'Ring_10', 110000, '31.png', 'Strong, youthful and full of positive energy is the message that PNJ wants to convey to the beautiful people through the product of 10K white gold pendant in Sunflower collection. The locket has a unique design with sunflowers attached to Suncut Swarovski stones as a highlight, creating a youthful and trendy beauty.', 3, '', '', 7),
(31, 'Ring_11', 120000, '32.jpg', 'Not only is this special day for women, it is also an opportunity for ladies to give each other or reward themselves a meaningful gift. To celebrate International Women\'s Day full of joy and love, PNJ brings BST Sunflower with young and delicate gold jewelry, honoring the beauty of Vietnamese women.', 3, '', 'co', 9),
(32, 'Ring_12', 50000, '33.jpg', 'Strong, youthful and full of positive energy is the message that PNJ wants to convey to the beautiful people through the product of 10K white gold pendant in Sunflower collection. The locket has a unique design with sunflowers attached to Suncut Swarovski stones as a highlight, creating a youthful and trendy beauty.', 3, '', '', 12),
(33, 'Ring_13', 60000, '34.jpg', 'Not only is this special day for women, it is also an opportunity for ladies to give each other or reward themselves a meaningful gift. To celebrate International Women\'s Day full of joy and love, PNJ brings BST Sunflower with young and delicate gold jewelry, honoring the beauty of Vietnamese women.', 3, '', '', 1),
(34, 'Ring_14', 70000, '35.jpg', 'Not only is this special day for women, it is also an opportunity for ladies to give each other or reward themselves a meaningful gift. To celebrate International Women\'s Day full of joy and love, PNJ brings BST Sunflower with young and delicate gold jewelry, honoring the beauty of Vietnamese women.', 3, '', '', 11),
(35, 'Ring_15', 80000, '36.jpg', 'Possessing a unique design with delicate pattern lines adorned by white stone combined with Suncut Swarovski stone accents with 86 flawless exclusive cuts from PNJ, it creates a charming and present beauty. represents a 10K white gold ring PNJ.', 3, '', '', 0),
(36, 'Ring_16', 90000, '37.jpg', 'Possessing a unique design with delicate pattern lines adorned by white stone combined with Suncut Swarovski stone accents with 86 flawless exclusive cuts from PNJ, it creates a charming and present beauty. represents a 10K white gold ring PNJ.', 3, '', '', 16),
(37, 'Ring_17', 170000, '38.jpg', 'Possessing a unique design with delicate pattern lines adorned by white stone combined with Suncut Swarovski stone accents with 86 flawless exclusive cuts from PNJ, it creates a charming and present beauty. represents a 10K white gold ring PNJ.', 3, '', '', 15),
(38, 'Ring_18', 180000, '40.jpg', 'Launched on the occasion of International Women\'s Day, PNJ\'s jewelry products are designed based on inspiration from the festival atmosphere, designed with the strength of the sun flower and the unique cut of stone. Suncut Swarovski is exquisite with 10K gold material, the ring is a bright spot to adorn the youthful and fashionable beauty for girls.', 3, '', '', 0),
(39, 'Ring_19', 190000, '41.jpg', 'Launched on the occasion of International Women\'s Day, PNJ\'s jewelry products are designed based on inspiration from the festival atmosphere, designed with the strength of the sun flower and the unique cut of stone. Suncut Swarovski is exquisite with 10K gold material, the ring is a bright spot to adorn the youthful and fashionable beauty for girls.', 3, 'co', '', 0),
(40, 'Ring_20', 200000, '42.png', 'Launched on the occasion of International Women\'s Day, PNJ\'s jewelry products are designed based on inspiration from the festival atmosphere, designed with the strength of the sun flower and the unique cut of stone. Suncut Swarovski is exquisite with 10K gold material, the ring is a bright spot to adorn the youthful and fashionable beauty for girls.', 3, '', 'co', 2),
(41, 'Set_1', 1000000, '39.jpg', 'Launched on the occasion of International Women\'s Day, PNJ\'s jewelry products are designed based on inspiration from the festival atmosphere, designed with the strength of the sun flower and the unique cut of stone. Suncut Swarovski is exquisite with 10K gold material, the ring is a bright spot to adorn the youthful and fashionable beauty for girls.', 2, '', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slideshow`
--

CREATE TABLE `slideshow` (
  `id` int(11) NOT NULL,
  `hinh` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `lien_ket` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slideshow`
--

INSERT INTO `slideshow` (`id`, `hinh`, `lien_ket`) VALUES
(1, '1.jpg', '#'),
(2, '2.jpg', '#'),
(3, '3.jpg', '#'),
(4, '4.jpg', '#');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thong_tin_quan_tri`
--

CREATE TABLE `thong_tin_quan_tri` (
  `id` int(11) NOT NULL,
  `ky_danh` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thong_tin_quan_tri`
--

INSERT INTO `thong_tin_quan_tri` (`id`, `ky_danh`, `mat_khau`) VALUES
(1, 'admin', 'c3284d0f94606de1fd2af172aba15bf3');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu_doc`
--
ALTER TABLE `menu_doc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu_ngang`
--
ALTER TABLE `menu_ngang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quang_cao`
--
ALTER TABLE `quang_cao`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slideshow`
--
ALTER TABLE `slideshow`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thong_tin_quan_tri`
--
ALTER TABLE `thong_tin_quan_tri`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `menu_doc`
--
ALTER TABLE `menu_doc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `menu_ngang`
--
ALTER TABLE `menu_ngang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `quang_cao`
--
ALTER TABLE `quang_cao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `slideshow`
--
ALTER TABLE `slideshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `thong_tin_quan_tri`
--
ALTER TABLE `thong_tin_quan_tri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
