-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 31, 2019 lúc 10:27 AM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mobile`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(100) NOT NULL,
  `id_product` int(100) NOT NULL,
  `id_user` int(100) NOT NULL,
  `qty` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_nopad_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `ID` int(225) NOT NULL,
  `content` varchar(10000) COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `product_ID` int(225) NOT NULL,
  `username` varchar(500) COLLATE utf8mb4_unicode_nopad_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_nopad_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`ID`, `content`, `product_ID`, `username`) VALUES
(1, 'Tôi rất thích sản phẩm này', 1, 'trang'),
(2, 'vy', 21, 'trang'),
(3, 'hihi haha', 21, 'trang'),
(4, 'hihi', 21, 'trang'),
(5, 'Không biết', 21, 'trang'),
(6, 'TRang hâm', 20, 'trang'),
(7, 'Trang kkkkk', 20, 'trang'),
(8, 'Công bình luận nè mấy đứa', 21, 'cong'),
(9, 'dsd', 28, 'trang');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

CREATE TABLE `manufactures` (
  `manu_ID` int(11) NOT NULL,
  `manu_name` varchar(100) COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `manu_img` varchar(100) COLLATE utf8mb4_unicode_nopad_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_nopad_ci;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`manu_ID`, `manu_name`, `manu_img`) VALUES
(1, 'Apple', 'Iphone1.pjg'),
(2, 'SamSung', 'j7.jpg'),
(3, 'Sony', 'experia.jpg'),
(4, 'Nokia', 'E72.jpg'),
(5, 'blackberry', 'br.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `ID` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(150) COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `manu_ID` int(11) NOT NULL,
  `type_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_nopad_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`ID`, `name`, `price`, `image`, `description`, `manu_ID`, `type_ID`) VALUES
(1, 'j1', 11000, 'j1.jpg', 'mua cho vui dung co su dung', 2, 1),
(3, 'Iphone 5', 11000000, 'iphone5.jpg', 'iPad WiFi New 2018 vẫn giữ phong cách thiết kế quen thuộc như phiên bản tiền nhiệm 2017 với chất liệu nhôm nguyên khối cao cấp, các cạnh được bo cong mềm mại, tạo cảm giác cầm nắm thoải mái và chắc tay. Bên cạnh đó các chi tiết đều được gia công một cách tỉ mỉ và tinh tế, bạn sẽ phải \"Wow\" lên vì sức hút mãnh liệt từ vẻ đẹp bên ngoài của nó.', 1, 1),
(4, 'Iphone 6', 11000000, 'iphone6.jpg', 'iPad WiFi New 2018 vẫn giữ phong cách thiết kế quen thuộc như phiên bản tiền nhiệm 2017 với chất liệu nhôm nguyên khối cao cấp, các cạnh được bo cong mềm mại, tạo cảm giác cầm nắm thoải mái và chắc tay. Bên cạnh đó các chi tiết đều được gia công một cách tỉ mỉ và tinh tế, bạn sẽ phải \"Wow\" lên vì sức hút mãnh liệt từ vẻ đẹp bên ngoài của nó.', 1, 1),
(5, 'E72', 11000000, 'E72.jpg', 'iPad WiFi New 2018 vẫn giữ phong cách thiết kế quen thuộc như phiên bản tiền nhiệm 2017 với chất liệu nhôm nguyên khối cao cấp, các cạnh được bo cong mềm mại, tạo cảm giác cầm nắm thoải mái và chắc tay. Bên cạnh đó các chi tiết đều được gia công một cách tỉ mỉ và tinh tế, bạn sẽ phải \"Wow\" lên vì sức hút mãnh liệt từ vẻ đẹp bên ngoài của nó.', 4, 1),
(6, 'Iphone 6plus', 11000000, 'iphone6plus.jpg', 'iPad WiFi New 2018 vẫn giữ phong cách thiết kế quen thuộc như phiên bản tiền nhiệm 2017 với chất liệu nhôm nguyên khối cao cấp, các cạnh được bo cong mềm mại, tạo cảm giác cầm nắm thoải mái và chắc tay. Bên cạnh đó các chi tiết đều được gia công một cách tỉ mỉ và tinh tế, bạn sẽ phải \"Wow\" lên vì sức hút mãnh liệt từ vẻ đẹp bên ngoài của nó.', 1, 1),
(7, 'Ipad 2', 11000000, 'ipad2.jpg', 'iPad WiFi New 2018 vẫn giữ phong cách thiết kế quen thuộc như phiên bản tiền nhiệm 2017 với chất liệu nhôm nguyên khối cao cấp, các cạnh được bo cong mềm mại, tạo cảm giác cầm nắm thoải mái và chắc tay. Bên cạnh đó các chi tiết đều được gia công một cách tỉ mỉ và tinh tế, bạn sẽ phải \"Wow\" lên vì sức hút mãnh liệt từ vẻ đẹp bên ngoài của nó.', 1, 4),
(8, 'Macbook 13inch', 11000000, 'macbook13.jpg', 'iPad WiFi New 2018 vẫn giữ phong cách thiết kế quen thuộc như phiên bản tiền nhiệm 2017 với chất liệu nhôm nguyên khối cao cấp, các cạnh được bo cong mềm mại, tạo cảm giác cầm nắm thoải mái và chắc tay. Bên cạnh đó các chi tiết đều được gia công một cách tỉ mỉ và tinh tế, bạn sẽ phải \"Wow\" lên vì sức hút mãnh liệt từ vẻ đẹp bên ngoài của nó.', 1, 3),
(9, 'Galaxy tab A8', 11000000, 'tabA8.jpg', 'iPad WiFi New 2018 vẫn giữ phong cách thiết kế quen thuộc như phiên bản tiền nhiệm 2017 với chất liệu nhôm nguyên khối cao cấp, các cạnh được bo cong mềm mại, tạo cảm giác cầm nắm thoải mái và chắc tay. Bên cạnh đó các chi tiết đều được gia công một cách tỉ mỉ và tinh tế, bạn sẽ phải \"Wow\" lên vì sức hút mãnh liệt từ vẻ đẹp bên ngoài của nó.', 2, 4),
(10, 'Ipad gen6', 11000000, 'ipadgen6.jpg', 'iPad WiFi New 2018 vẫn giữ phong cách thiết kế quen thuộc như phiên bản tiền nhiệm 2017 với chất liệu nhôm nguyên khối cao cấp, các cạnh được bo cong mềm mại, tạo cảm giác cầm nắm thoải mái và chắc tay. Bên cạnh đó các chi tiết đều được gia công một cách tỉ mỉ và tinh tế, bạn sẽ phải \"Wow\" lên vì sức hút mãnh liệt từ vẻ đẹp bên ngoài của nó.', 1, 4),
(11, 'Galaxy fodl', 11000000, 'galaxyfodl.jpg', 'iPad WiFi New 2018 vẫn giữ phong cách thiết kế quen thuộc như phiên bản tiền nhiệm 2017 với chất liệu nhôm nguyên khối cao cấp, các cạnh được bo cong mềm mại, tạo cảm giác cầm nắm thoải mái và chắc tay. Bên cạnh đó các chi tiết đều được gia công một cách tỉ mỉ và tinh tế, bạn sẽ phải \"Wow\" lên vì sức hút mãnh liệt từ vẻ đẹp bên ngoài của nó.', 2, 1),
(12, 'Xperia Z5', 11000000, 'Xperiaz5.jpg', 'iPad WiFi New 2018 vẫn giữ phong cách thiết kế quen thuộc như phiên bản tiền nhiệm 2017 với chất liệu nhôm nguyên khối cao cấp, các cạnh được bo cong mềm mại, tạo cảm giác cầm nắm thoải mái và chắc tay. Bên cạnh đó các chi tiết đều được gia công một cách tỉ mỉ và tinh tế, bạn sẽ phải \"Wow\" lên vì sức hút mãnh liệt từ vẻ đẹp bên ngoài của nó.', 3, 1),
(13, 'Sony Vaio i7', 11000000, 'sonyvaioi7.jpg', 'iPad WiFi New 2018 vẫn giữ phong cách thiết kế quen thuộc như phiên bản tiền nhiệm 2017 với chất liệu nhôm nguyên khối cao cấp, các cạnh được bo cong mềm mại, tạo cảm giác cầm nắm thoải mái và chắc tay. Bên cạnh đó các chi tiết đều được gia công một cách tỉ mỉ và tinh tế, bạn sẽ phải \"Wow\" lên vì sức hút mãnh liệt từ vẻ đẹp bên ngoài của nó.', 3, 3),
(14, 'Xperia ZX', 11000000, 'xperiazx.jpg', 'iPad WiFi New 2018 vẫn giữ phong cách thiết kế quen thuộc như phiên bản tiền nhiệm 2017 với chất liệu nhôm nguyên khối cao cấp, các cạnh được bo cong mềm mại, tạo cảm giác cầm nắm thoải mái và chắc tay. Bên cạnh đó các chi tiết đều được gia công một cách tỉ mỉ và tinh tế, bạn sẽ phải \"Wow\" lên vì sức hút mãnh liệt từ vẻ đẹp bên ngoài của nó.', 3, 1),
(15, 'Sony Vaio s', 11000000, 'sonyvaios.jpg', 'iPad WiFi New 2018 vẫn giữ phong cách thiết kế quen thuộc như phiên bản tiền nhiệm 2017 với chất liệu nhôm nguyên khối cao cấp, các cạnh được bo cong mềm mại, tạo cảm giác cầm nắm thoải mái và chắc tay. Bên cạnh đó các chi tiết đều được gia công một cách tỉ mỉ và tinh tế, bạn sẽ phải \"Wow\" lên vì sức hút mãnh liệt từ vẻ đẹp bên ngoài của nó.', 3, 3),
(16, 'SamSung gear fit', 11000000, 'ssgearfit.jpg', 'iPad WiFi New 2018 vẫn giữ phong cách thiết kế quen thuộc như phiên bản tiền nhiệm 2017 với chất liệu nhôm nguyên khối cao cấp, các cạnh được bo cong mềm mại, tạo cảm giác cầm nắm thoải mái và chắc tay. Bên cạnh đó các chi tiết đều được gia công một cách tỉ mỉ và tinh tế, bạn sẽ phải \"Wow\" lên vì sức hút mãnh liệt từ vẻ đẹp bên ngoài của nó.', 2, 5),
(17, 'Apple Warth seri 2', 11000000, 'applewarthsr2.jpg', 'mua ve deo khoe thien ha', 1, 5),
(18, 'Blackbery key2', 11000000, 'bbkey2.jpg', 'iPad WiFi New 2018 vẫn giữ phong cách thiết kế quen thuộc như phiên bản tiền nhiệm 2017 với chất liệu nhôm nguyên khối cao cấp, các cạnh được bo cong mềm mại, tạo cảm giác cầm nắm thoải mái và chắc tay. Bên cạnh đó các chi tiết đều được gia công một cách tỉ mỉ và tinh tế, bạn sẽ phải \"Wow\" lên vì sức hút mãnh liệt từ vẻ đẹp bên ngoài của nó.', 5, 1),
(19, 'Backbery keyone Sliver', 11000000, 'bbkeyonesv.jpg', 'iPad WiFi New 2018 vẫn giữ phong cách thiết kế quen thuộc như phiên bản tiền nhiệm 2017 với chất liệu nhôm nguyên khối cao cấp, các cạnh được bo cong mềm mại, tạo cảm giác cầm nắm thoải mái và chắc tay. Bên cạnh đó các chi tiết đều được gia công một cách tỉ mỉ và tinh tế, bạn sẽ phải \"Wow\" lên vì sức hút mãnh liệt từ vẻ đẹp bên ngoài của nó.', 5, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `protypes`
--

CREATE TABLE `protypes` (
  `type_ID` int(11) NOT NULL,
  `type_name` varchar(100) COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `type_img` varchar(100) COLLATE utf8mb4_unicode_nopad_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_nopad_ci;

--
-- Đang đổ dữ liệu cho bảng `protypes`
--

INSERT INTO `protypes` (`type_ID`, `type_name`, `type_img`) VALUES
(1, 'Phone ', '1'),
(2, 'Headphone', '2'),
(3, 'Laptop', '3'),
(4, 'Tablet', '4'),
(5, 'Smart watch', '5');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(250) NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `type` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_nopad_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `type`) VALUES
(1, 'vy', '12345', 1),
(2, 'cong', '12345', 0),
(3, 'thang', '12345', 0),
(4, 'trang', '12345', 0),
(5, 'admin', '12345', 0),
(9, 'vy12', '123', 0),
(10, 'Trang12', '123', 0),
(11, '17211TT4118', '1', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `manufactures`
--
ALTER TABLE `manufactures`
  ADD PRIMARY KEY (`manu_ID`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `protypes`
--
ALTER TABLE `protypes`
  ADD PRIMARY KEY (`type_ID`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `ID` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `manufactures`
--
ALTER TABLE `manufactures`
  MODIFY `manu_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `protypes`
--
ALTER TABLE `protypes`
  MODIFY `type_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
