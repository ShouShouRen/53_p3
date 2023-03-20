-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-03-20 07:49:47
-- 伺服器版本： 10.4.27-MariaDB
-- PHP 版本： 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `53_p3`
--

-- --------------------------------------------------------

--
-- 資料表結構 `login_log`
--

CREATE TABLE `login_log` (
  `user` varchar(100) NOT NULL,
  `login_time` datetime NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `login_log`
--

INSERT INTO `login_log` (`user`, `login_time`, `status`) VALUES
('admin', '2023-03-19 13:37:43', '登入成功'),
('admin', '2023-03-19 14:05:24', '登入成功'),
('admin', '2023-03-19 20:01:46', '登入成功'),
('admin', '2023-03-19 21:31:21', '登出成功'),
('coffee', '2023-03-19 21:31:29', '登入成功'),
('coffee', '2023-03-19 21:37:20', '登出成功'),
('admin', '2023-03-20 11:33:22', '登出成功'),
('coffee', '2023-03-20 11:33:30', '登入失敗'),
('coffee', '2023-03-20 11:34:45', '登入失敗'),
('coffee', '2023-03-20 11:34:51', '登入失敗'),
('admin', '2023-03-20 11:38:34', '登入成功'),
('admin', '2023-03-20 11:39:24', '登出成功'),
('asdfasdf', '2023-03-20 11:39:30', '登入失敗'),
('asdfasdf', '2023-03-20 11:39:36', '登入失敗'),
('sadf', '2023-03-20 11:39:40', '登入失敗'),
('admin', '2023-03-20 11:39:52', '登入成功'),
('admin', '2023-03-20 13:49:45', '登入成功'),
('coffee', '2023-03-20 14:20:24', '登入成功'),
('coffee', '2023-03-20 14:32:42', '登出成功'),
('coffee', '2023-03-20 14:32:48', '登入成功'),
('admin', '2023-03-20 14:49:35', '登出成功');

-- --------------------------------------------------------

--
-- 資料表結構 `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_des` text NOT NULL,
  `price` varchar(50) NOT NULL,
  `links` varchar(100) NOT NULL,
  `time` datetime NOT NULL,
  `images` varchar(100) NOT NULL,
  `template` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_des`, `price`, `links`, `time`, `images`, `template`) VALUES
(1, '咖啡商品01', '咖啡好喝', '100', 'coffee.com', '2023-03-20 11:30:10', 'ea4c6ed619391d1a7e658e09221558d0.jpg', '1'),
(2, '咖啡商品02', '好喝的咖啡02', '200', 'coffee.com', '2023-03-20 11:30:21', 'c45181e604ad8ddfe1560a863f0d9d03.jpg', '2'),
(3, '咖啡商品03', '好喝的咖啡03', '300', 'coffee.com', '2023-03-20 11:31:09', '5a53d7cce44b6ebcf99c8d52d22933e7.jpg', '4'),
(4, '咖啡商品04', '好喝的咖啡04', '400', 'coffee.com', '2023-03-20 11:32:02', 'bd5f447e6d7fdbc9c2fef85c3eb3da23.jpg', '3'),
(5, '咖啡商品05', '好喝的咖啡05', '500', 'coffee.com', '2023-03-20 13:51:05', 'c03ed68ad753d0d76e18f0bf72835aec.jpg', '4'),
(6, '星巴克黑咖啡', '好喝的咖啡', '300', 'startbucks.com', '2023-03-20 14:46:46', '96641eefc1de0fd0f44fc8af4651ee40.jpg', '3'),
(7, '路易莎咖啡', 'CP值最高的咖啡廳', '80', 'louisa.com', '2023-03-20 14:47:59', '4055bb4d77cfe05c60aadcef1252c877.jpg', '2');

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  `pw` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `user_id`, `user`, `pw`, `user_name`, `role`) VALUES
(1, '0000', 'admin', '1234', '超級管理員', 0),
(2, '0001', 'coffee', '1234', '咖啡使用者', 0),
(3, '0002', 'user01', '1234', '使用者01', 0),
(4, '0003', 'user02', '1234', '使用者02', 1),
(5, '0004', 'user03', '1234', '使用者03', 1),
(6, '0005', 'user04', '1234', '使用者04', 1),
(7, '0006', 'user05', '12345', '使用者05', 1),
(8, '0007', 'user06', '1234', '使用者06', 1);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
