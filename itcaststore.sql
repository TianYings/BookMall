-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2023-09-24 22:23:56
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `itcaststore`
--

-- --------------------------------------------------------

--
-- 表的结构 `notice`
--

CREATE TABLE `notice` (
  `n_id` int(11) NOT NULL,
  `title` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '标题',
  `details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '内容',
  `n_time` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '创建时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `notice`
--

INSERT INTO `notice` (`n_id`, `title`, `details`, `n_time`) VALUES
(1, '开业大吉', '传智书城今日开业，全场8折优惠，快来抢购吧！', '2022-05-14 17:27:19.463341'),
(2, '周末特惠！', '周末大酬宾！书籍全部七折优惠！买到就是赚到！', '2022-05-14 17:41:19.433120');

-- --------------------------------------------------------

--
-- 表的结构 `orderitem`
--

CREATE TABLE `orderitem` (
  `order_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `buynum` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `orderitem`
--

INSERT INTO `orderitem` (`order_id`, `product_id`, `buynum`) VALUES
('57caccc2-b613-4684-ba5e-15d7a3cd4a3e', 'afff', 1),
('57caccc2-b613-4684-ba5e-15d7a3cd4a3e', 'asdfff', 1),
('757e61ad-f456-485d-bffd-1dfb19055c7a', 'afff', 3),
('757e61ad-f456-485d-bffd-1dfb19055c7a', 'asdfff', 1),
('8f1c40ca-2678-403a-a1a9-a202c16e7a71', 'afff', 7),
('94ed6373-b4e4-4c36-9c91-ea46ff876ece', 'afff', 1),
('ad98ad61-a9a2-47f2-9951-85fe72a603c3', 'asdfff', 6),
('b0b1386b-ab99-4668-b984-466122898fc1', 'asdfff', 1),
('b15fec97-5644-49b2-848b-d8a756811474', 'afff', 8);

-- --------------------------------------------------------

--
-- 表的结构 `orders`
--

CREATE TABLE `orders` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `money` double DEFAULT NULL,
  `receiverAddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiverName` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiverPhone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paystate` int(11) DEFAULT NULL,
  `ordertime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `orders`
--

INSERT INTO `orders` (`id`, `money`, `receiverAddress`, `receiverName`, `receiverPhone`, `paystate`, `ordertime`, `user_id`) VALUES
('57caccc2-b613-4684-ba5e-15d7a3cd4a3e', 196, '上海', 'nihao', '15345678912', NULL, '2022-05-14 07:19:54', 5),
('757e61ad-f456-485d-bffd-1dfb19055c7a', 392, 'ssssssssss', 'SLTianYing', '15222222222', 1, '2022-05-18 00:54:03', 4),
('8f1c40ca-2678-403a-a1a9-a202c16e7a71', 686, '杭州', 'nihao', '15345678912', NULL, '2022-05-14 07:22:52', 5),
('94ed6373-b4e4-4c36-9c91-ea46ff876ece', 98, '杭州', 'nihao', '15345678912', NULL, '2022-05-14 07:20:32', 5),
('ad98ad61-a9a2-47f2-9951-85fe72a603c3', 588, '新疆', 'nihao', '15345678912', NULL, '2022-05-14 07:24:40', 5),
('b0b1386b-ab99-4668-b984-466122898fc1', 98, '北京', 'nihao', '15345678912', NULL, '2022-05-14 07:19:14', 5),
('b15fec97-5644-49b2-848b-d8a756811474', 784, '1', 'SLTianYing', '15222222222', 1, '2022-06-09 09:21:54', 4);

-- --------------------------------------------------------

--
-- 表的结构 `products`
--

CREATE TABLE `products` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `category` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pnum` int(11) DEFAULT NULL,
  `imgurl` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category`, `pnum`, `imgurl`, `description`) VALUES
('1337ccb6-e71a-4757-9de1-d6488332fb7b', '跑路的艺术', 45, '学术', 99, '/client/bookcover/bpaolu.png', '0基础教你从程序小白成为跑路大师~'),
('afff', '《时间穿行》', 98, '原版', 24, '/client/bookcover/101.jpg', '这是一本好书~'),
('asdfff', '《学会宽容》', 98, '原版', 37, '/client/bookcover/107.jpg', '这是一本好书~'),
('ganwu', '《感悟》', 68, '生活', 99, '/client/bookcover/102.jpg', '感悟一下'),
('yingzaiyingxiangli', '《赢在影响力》', 34.6, '励志', 50, '/client/bookcover/103.jpg', '赢在影响的力');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `introduce` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activeCode` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  `role` varchar(10) COLLATE utf8_unicode_ci DEFAULT '普通用户',
  `registTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `gender`, `email`, `telephone`, `introduce`, `activeCode`, `state`, `role`, `registTime`) VALUES
(1, 'admin', 'admin', NULL, NULL, NULL, NULL, NULL, 1, '超级用户', '2022-05-15 02:53:48'),
(4, 'SLTianYing', '123456', '男', '2145879656@qq.com', '15222222222', '全体目光向我看齐，看我看我！666\r\n', 'f863f18f-d429-40b4-8202-3e6b8eb14f7d', 1, '普通用户', '2022-05-18 01:16:29'),
(5, 'nihao', '123456', '男', '2315898726@qq.com', '15345678912', '哈哈，我好！', 'e3626a19-760f-474f-bfa7-d5ab92405e7b', 1, '普通用户', '2022-05-15 15:43:57'),
(9, '一叶飘零', '753951qazwsx', '女', '2478545698@163.com', '14587896532', '乘一叶扁舟，渡一江月色。', NULL, 1, '普通用户', '2022-05-15 15:41:58');

--
-- 转储表的索引
--

--
-- 表的索引 `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`n_id`);

--
-- 表的索引 `orderitem`
--
ALTER TABLE `orderitem`
  ADD PRIMARY KEY (`order_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- 表的索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- 表的索引 `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `notice`
--
ALTER TABLE `notice`
  MODIFY `n_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 限制导出的表
--

--
-- 限制表 `orderitem`
--
ALTER TABLE `orderitem`
  ADD CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `orderitem_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- 限制表 `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
