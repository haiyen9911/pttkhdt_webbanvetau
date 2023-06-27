-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 01, 2022 lúc 01:02 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlyvetau`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chieudi`
--

CREATE TABLE `chieudi` (
  `id` int(3) NOT NULL,
  `mota` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chieudi`
--

INSERT INTO `chieudi` (`id`, `mota`) VALUES
(1, 'Một chiều'),
(2, 'Khứ Hồi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gaden`
--

CREATE TABLE `gaden` (
  `id` int(11) NOT NULL,
  `tenga` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gaden`
--

INSERT INTO `gaden` (`id`, `tenga`) VALUES
(1, 'Hà nội'),
(2, 'Sài Gòn'),
(3, 'Đà Nẵng'),
(4, 'Lạng Sơn'),
(5, 'Phủ Lí'),
(6, 'Hải Dương'),
(7, 'Vinh'),
(8, 'Hạ Long'),
(9, 'Nghệ An'),
(10, 'Biên Hòa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gadi`
--

CREATE TABLE `gadi` (
  `id` int(3) NOT NULL,
  `tengadi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gadi`
--

INSERT INTO `gadi` (`id`, `tengadi`) VALUES
(1, 'Hà nội'),
(2, 'Sài Gòn'),
(3, 'Đà Nẵng'),
(4, 'Lạng Sơn'),
(5, 'Phủ Lí'),
(6, 'Hải Dương'),
(7, 'Vinh'),
(8, 'Hạ Long'),
(9, 'Biên Hòa'),
(10, 'Nghệ An');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ghe`
--

CREATE TABLE `ghe` (
  `id` int(255) NOT NULL,
  `soghe` varchar(255) NOT NULL,
  `toa_id` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ghe`
--

INSERT INTO `ghe` (`id`, `soghe`, `toa_id`) VALUES
(1, '01', ''),
(2, '02', ''),
(3, '03', ''),
(4, '04', ''),
(5, '05', ''),
(6, '06', ''),
(7, '07', ''),
(8, '08', ''),
(9, '09', ''),
(10, '10', ''),
(11, '11', ''),
(12, '12', ''),
(13, '13', ''),
(14, '14', ''),
(15, '15', ''),
(16, '16', ''),
(17, '17', ''),
(18, '18', ''),
(19, '19', ''),
(20, '20', ''),
(21, '21', ''),
(22, '22', ''),
(23, '23', ''),
(24, '24', ''),
(25, '25', ''),
(26, '26', ''),
(27, '27', ''),
(28, '28', ''),
(29, '29', ''),
(30, '30', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `id` int(255) NOT NULL,
  `mahd` varchar(255) NOT NULL,
  `makh` varchar(255) NOT NULL,
  `mave` varchar(255) NOT NULL,
  `hinhthuctt` varchar(255) NOT NULL,
  `tinhtrang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(255) NOT NULL,
  `tenkh` varchar(255) NOT NULL,
  `cccd` varchar(255) NOT NULL,
  `ngaysinh` date NOT NULL,
  `sdt` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`id`, `tenkh`, `cccd`, `ngaysinh`, `sdt`, `email`) VALUES
(1, 'Phạm Thị Minh Châu', '12345666', '1997-09-01', '0932836827', 'chau@gmail.com'),
(2, 'Nguyễn Trường Duy', '16858598', '1995-10-04', '0954369687', 'duy@gmail.com'),
(3, 'Huỳnh Kiều Trinh', '168505245', '1997-08-07', '0988994223', 'trinh@gmail.com'),
(4, 'Nguyễn Huyền Trang', '168642356', '2000-01-09', '0954669964', 'trang@gmail.com'),
(5, 'Trần Trung Quân ', '16858598', '1999-01-01', '0988994223', 'quan@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichtrinh`
--

CREATE TABLE `lichtrinh` (
  `id` int(255) NOT NULL,
  `malichtrinh` varchar(255) NOT NULL,
  `gadi_id` int(3) NOT NULL,
  `gaden_id` int(3) DEFAULT NULL,
  `ngaydi` date NOT NULL,
  `ngayve` date NOT NULL,
  `khoihanh` varchar(255) NOT NULL,
  `matau` int(3) DEFAULT NULL,
  `chieudi` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lichtrinh`
--

INSERT INTO `lichtrinh` (`id`, `malichtrinh`, `gadi_id`, `gaden_id`, `ngaydi`, `ngayve`, `khoihanh`, `matau`, `chieudi`) VALUES
(2, 'LT01', 2, 1, '2022-12-20', '2022-12-22', '12:00 AM', 4, 0),
(3, 'LT02', 1, 2, '2022-12-20', '2022-12-21', '13:00 PM', 5, 1),
(4, 'LT03', 2, 3, '2022-12-13', '2022-12-14', '8:00 AM', 6, 1),
(5, 'LT04', 1, 4, '2022-12-27', '2022-12-29', '9:00 AM', 7, 1),
(6, 'LT05', 2, 4, '2023-01-09', '2023-01-10', '11:00 AM', 8, 1),
(7, 'LT06', 1, 6, '2023-01-04', '2023-01-05', '10:00 AM', 9, 1),
(8, 'LT07', 2, 7, '2023-02-06', '2023-02-08', '13:00 PM', 10, 1),
(9, 'LT08', 1, 8, '2023-02-10', '2023-02-11', '8:00 AM', 11, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id` int(255) NOT NULL,
  `manv` varchar(255) NOT NULL,
  `tennv` varchar(255) NOT NULL,
  `ngaysinh` date NOT NULL,
  `sdt` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`id`, `manv`, `tennv`, `ngaysinh`, `sdt`, `email`) VALUES
(1, 'NV01', 'Trần Thị Hải Yến', '2002-01-09', '0908077651', 'yen@gmail.com'),
(2, 'NV02', 'Hoàng Thị Xuân Duyên', '2002-03-21', '0948549876', 'duyen@gmail.com'),
(3, 'NV03', 'Chu Thị Thái Hiền', '2002-02-01', '0977123456', 'hien@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieudatve`
--

CREATE TABLE `phieudatve` (
  `id` int(3) NOT NULL,
  `khachhang_id` varchar(255) DEFAULT NULL,
  `tentoa_id` varchar(255) NOT NULL,
  `ghe_id` varchar(255) DEFAULT NULL,
  `lichtrinh_id` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phieudatve`
--

INSERT INTO `phieudatve` (`id`, `khachhang_id`, `tentoa_id`, `ghe_id`, `lichtrinh_id`) VALUES
(1, '6', '4', '4', 2),
(9, '12', '2', '2', 2),
(10, '13', '2', '1', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tau`
--

CREATE TABLE `tau` (
  `id` int(255) NOT NULL,
  `matau` varchar(255) NOT NULL,
  `tentau` varchar(255) NOT NULL,
  `tinhtrang` varchar(255) NOT NULL,
  `noixuatphat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tau`
--

INSERT INTO `tau` (`id`, `matau`, `tentau`, `tinhtrang`, `noixuatphat`) VALUES
(5, 'T03', 'Tàu 03', '1', 'Hà Nội'),
(6, 'T04', 'Tàu 04', '0', 'Sài Gòn'),
(7, 'T01', 'Tàu 01', '0', 'Hà Nội'),
(8, 'T05', 'Tàu 05', '0', 'Sài Gòn'),
(9, 'T06', 'Tàu 06', '0', 'Hà Nội'),
(10, 'T07', 'Tàu 07', '0', 'Sài Gòn'),
(11, 'T08', 'Tàu 08', '0', 'Hà Nội');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `toa`
--

CREATE TABLE `toa` (
  `id` int(255) NOT NULL,
  `matoa` varchar(255) NOT NULL,
  `tentoa` varchar(255) NOT NULL,
  `tinhtrang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `toa`
--

INSERT INTO `toa` (`id`, `matoa`, `tentoa`, `tinhtrang`) VALUES
(2, 'A01', 'Toa A01', 'còn chỗ'),
(3, 'A02', 'Toa A02', 'còn chỗ'),
(4, 'A03', 'Toa A03', 'còn chỗ'),
(5, 'A04', 'Toa A04', 'còn chỗ');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `chieudi`
--
ALTER TABLE `chieudi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gaden`
--
ALTER TABLE `gaden`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gadi`
--
ALTER TABLE `gadi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ghe`
--
ALTER TABLE `ghe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lichtrinh`
--
ALTER TABLE `lichtrinh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phieudatve`
--
ALTER TABLE `phieudatve`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tau`
--
ALTER TABLE `tau`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `toa`
--
ALTER TABLE `toa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chieudi`
--
ALTER TABLE `chieudi`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `gaden`
--
ALTER TABLE `gaden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `gadi`
--
ALTER TABLE `gadi`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `ghe`
--
ALTER TABLE `ghe`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `lichtrinh`
--
ALTER TABLE `lichtrinh`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `phieudatve`
--
ALTER TABLE `phieudatve`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tau`
--
ALTER TABLE `tau`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `toa`
--
ALTER TABLE `toa`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
