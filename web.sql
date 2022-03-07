-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 
-- 伺服器版本： 8.0.17
-- PHP 版本： 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `web`
--

-- --------------------------------------------------------

--
-- 資料表結構 `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add news', 7, 'add_news'),
(26, 'Can change news', 7, 'change_news'),
(27, 'Can delete news', 7, 'delete_news'),
(28, 'Can view news', 7, 'view_news'),
(29, 'Can add customer', 8, 'add_customer'),
(30, 'Can change customer', 8, 'change_customer'),
(31, 'Can delete customer', 8, 'delete_customer'),
(32, 'Can view customer', 8, 'view_customer'),
(33, 'Can add products', 9, 'add_products'),
(34, 'Can change products', 9, 'change_products'),
(35, 'Can delete products', 9, 'delete_products'),
(36, 'Can view products', 9, 'view_products'),
(37, 'Can add contact', 10, 'add_contact'),
(38, 'Can change contact', 10, 'change_contact'),
(39, 'Can delete contact', 10, 'delete_contact'),
(40, 'Can view contact', 10, 'view_contact'),
(41, 'Can add photo', 11, 'add_photo'),
(42, 'Can change photo', 11, 'change_photo'),
(43, 'Can delete photo', 11, 'delete_photo'),
(44, 'Can view photo', 11, 'view_photo'),
(45, 'Can add detail model', 12, 'add_detailmodel'),
(46, 'Can change detail model', 12, 'change_detailmodel'),
(47, 'Can delete detail model', 12, 'delete_detailmodel'),
(48, 'Can view detail model', 12, 'view_detailmodel'),
(49, 'Can add orders model', 13, 'add_ordersmodel'),
(50, 'Can change orders model', 13, 'change_ordersmodel'),
(51, 'Can delete orders model', 13, 'delete_ordersmodel'),
(52, 'Can view orders model', 13, 'view_ordersmodel');

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$BNHcS9wABspnbAolBr1kzb$aSEla7M+ovRKif8UBUsLOGG4lq7q+8fnpvzcSkLdvCA=', '2022-02-28 14:06:02.945227', 1, 'admin', '', '', 'admin@good.com.tw', 1, 1, '2022-01-10 11:34:37.140494');

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `cart_detailmodel`
--

CREATE TABLE `cart_detailmodel` (
  `id` bigint(20) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `unitprice` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `dtotal` int(11) NOT NULL,
  `dorder_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `cart_detailmodel`
--

INSERT INTO `cart_detailmodel` (`id`, `pname`, `unitprice`, `quantity`, `dtotal`, `dorder_id`) VALUES
(1, 'Nike 拖鞋 Offline 2 0 穆勒鞋 套腳 男女鞋 多層次網布 軟木塞 反光 半包拖 情侶款 黑 CZ0332-001', 3176, 3, 9528, 5),
(2, 'NIKE NIKE REVOLUTION 6 NN  男 慢跑鞋-DC3728001', 1253, 1, 1253, 5),
(3, 'Nike 拖鞋 Offline 2 0 穆勒鞋 套腳 男女鞋 多層次網布 軟木塞 反光 半包拖 情侶款 黑 CZ0332-001', 3176, 1, 3176, 6),
(4, 'NIKE NIKE REVOLUTION 6 NN  男 慢跑鞋-DC3728001', 1253, 1, 1253, 6),
(5, 'Nike 休閒鞋 W  Air Zoom Type 女鞋 奶茶 網美 舒適 氣墊 球鞋 米白 粉 CZ1151101', 3092, 1, 3092, 7),
(6, 'Nike 休閒鞋 Air Max 90 SE 運動 女鞋 經典款 氣墊 舒適 簡約 球鞋 穿搭 白 灰 CV8824100', 2924, 1, 2924, 8),
(7, 'Nike 休閒鞋 RYZ 365 II 運動 女鞋 厚底 舒適 增高 球鞋 穿搭 簡約 黑 白 CU4874001', 2084, 1, 2084, 9),
(8, 'NIKE 休閒鞋  運動鞋 男鞋 粉白 DC4831002 AF1 AF1 CRATER FLYKNIT', 2470, 2, 4940, 9),
(9, 'Nike 拖鞋 Offline 2 0 穆勒鞋 套腳 男女鞋 多層次網布 軟木塞 反光 半包拖 情侶款 黑 CZ0332-001', 3176, 2, 6352, 10);

-- --------------------------------------------------------

--
-- 資料表結構 `cart_ordersmodel`
--

CREATE TABLE `cart_ordersmodel` (
  `id` bigint(20) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `shipping` int(11) NOT NULL,
  `grandtotal` int(11) NOT NULL,
  `customname` varchar(100) NOT NULL,
  `customemail` varchar(100) NOT NULL,
  `customphone` varchar(20) NOT NULL,
  `customaddress` varchar(200) NOT NULL,
  `paytype` varchar(30) NOT NULL,
  `create_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `cart_ordersmodel`
--

INSERT INTO `cart_ordersmodel` (`id`, `subtotal`, `shipping`, `grandtotal`, `customname`, `customemail`, `customphone`, `customaddress`, `paytype`, `create_date`) VALUES
(3, 5260, 60, 5320, '王呆呆', 'abc@gmail.com', '0911111111', '台中市火車路10號', 'ATM轉帳', '2022-02-21 13:04:19.657290'),
(5, 10781, 60, 10841, '王懶懶', 'def@gmail.com', '0922222222', '台中市火車路20號', 'ATM轉帳', '2022-02-21 13:07:26.039044'),
(6, 4429, 60, 4489, '陳國國', 'ghj@gmail.com', '0933333333', '台中市火車路10號', 'ATM轉帳', '2022-02-23 11:12:12.240164'),
(7, 3092, 60, 3152, 'qqqqq', '34trggtrhew', 'gfsfggf', 'dfgrrewrtrw', '貨到付款', '2022-02-23 11:26:36.352177'),
(8, 2924, 60, 2984, '曾大成', 'small@gmil.com', '0988888888', '台北市三立電視台', 'ATM轉帳', '2022-02-23 12:17:44.193670'),
(9, 7024, 60, 7084, '曾大成', 'small@gmail.com', '0988888888', '台北市三立電視台', '貨到付款', '2022-02-23 12:48:56.293359'),
(10, 6352, 60, 6412, '陳國國', 'small@gmail.com', '0911111111', '台北市三立電視台', 'ATM轉帳', '2022-02-28 14:05:33.312169');

-- --------------------------------------------------------

--
-- 資料表結構 `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `create_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `content`, `create_date`) VALUES
(1, '王小呆', '台中市火車站大便號', '怎麼找廁所', '蹲著?\r\n坐著?\r\n', '2022-02-10 04:29:27.198263');

-- --------------------------------------------------------

--
-- 資料表結構 `customer`
--

CREATE TABLE `customer` (
  `id` bigint(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `sex` varchar(2) NOT NULL,
  `birthday` date NOT NULL,
  `email` varchar(70) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `create_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `customer`
--

INSERT INTO `customer` (`id`, `name`, `sex`, `birthday`, `email`, `phone`, `address`, `password`, `create_date`) VALUES
(1, '陳大明', 'M', '1988-01-01', '', '', '', '999999', '2022-01-10 13:25:33.348161'),
(2, '王小明', 'F', '1990-01-01', 'wang@gmail.com', '048888888', '台中市火車站1號', '15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225', '2022-01-19 13:50:05.463529');

-- --------------------------------------------------------

--
-- 資料表結構 `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-01-10 12:21:10.202162', '1', 'News object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2022-01-10 13:25:33.370157', '1', 'Customer object (1)', 1, '[{\"added\": {}}]', 8, 1),
(3, '2022-01-12 13:39:27.997644', '2', 'News object (2)', 1, '[{\"added\": {}}]', 7, 1),
(4, '2022-02-21 13:03:54.485408', '2', '王呆呆', 3, '', 13, 1),
(5, '2022-02-21 13:03:59.797793', '1', '王呆呆', 3, '', 13, 1),
(6, '2022-02-21 13:07:03.478954', '4', '王懶懶', 3, '', 13, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(12, 'cart', 'detailmodel'),
(13, 'cart', 'ordersmodel'),
(10, 'contact', 'contact'),
(5, 'contenttypes', 'contenttype'),
(8, 'customer', 'customer'),
(7, 'news', 'news'),
(11, 'photos', 'photo'),
(9, 'product', 'products'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- 資料表結構 `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-01-10 11:24:24.205086'),
(2, 'auth', '0001_initial', '2022-01-10 11:24:24.829921'),
(3, 'admin', '0001_initial', '2022-01-10 11:24:25.064233'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-01-10 11:24:25.079854'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-01-10 11:24:25.079854'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-01-10 11:24:25.204821'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-01-10 11:24:25.282925'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-01-10 11:24:25.361030'),
(9, 'auth', '0004_alter_user_username_opts', '2022-01-10 11:24:25.361030'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-01-10 11:24:25.423614'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-01-10 11:24:25.439139'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-01-10 11:24:25.439139'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-01-10 11:24:25.501622'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-01-10 11:24:25.579722'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-01-10 11:24:25.642205'),
(16, 'auth', '0011_update_proxy_permissions', '2022-01-10 11:24:25.657827'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-01-10 11:24:25.735930'),
(18, 'sessions', '0001_initial', '2022-01-10 11:24:25.782793'),
(19, 'news', '0001_initial', '2022-01-10 12:12:46.922540'),
(20, 'customer', '0001_initial', '2022-01-10 13:15:54.613287'),
(21, 'product', '0001_initial', '2022-01-17 11:38:17.570273'),
(22, 'contact', '0001_initial', '2022-02-09 15:45:56.890237'),
(23, 'photos', '0001_initial', '2022-02-11 13:06:38.377122'),
(24, 'cart', '0001_initial', '2022-02-20 14:19:50.583786');

-- --------------------------------------------------------

--
-- 資料表結構 `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0150tdqa856achqh0sc5qorhhc7ax0lj', '.eJxVjrkOwjAQRP_FdWQlJj5ChZAoKamjtXedGBJbyiEKxL9jSxRQ7s7M03uxHvZt7PeVlj4gO7KGVb8_C-5BsQR4hzgk7lLclmB5qfBvuvJrQprO3-4fYIR1zGtJxumG0DUChTcga2vBd1pYrXSH5L005JU0rVDgoZYOa68QwbW27fwhQ29TGkKk7LItO1Ws4C8zhCnjn9ntNJQjC87s_QF5zEjN:1nJatJ:udA0dNVkCpLLvA3lDYO6Dp1QxDnVAyQSI4oO6MNyjog', '2022-02-28 12:55:41.520767'),
('6rccv24cfwswlkvwmp6nvmr8amdijf1n', '.eJxVjDsOwjAQBe_iGlmJ8ZeSPmew1t5dHEC2FCcV4u4QKQW0b2beS0TY1hK3TkucUVzEKE6_W4L8oLoDvEO9NZlbXZc5yV2RB-1yakjP6-H-HRTo5Vsb8tmNhHlUqNiDGVICDk4lZ11AYjae2BqvlQWGwWQc2CJC1kkHPov3Bw26OTM:1n7bFL:Tim11BZXhuDobGsWusifNBPM6gOwviRuUNDMbA2ror8', '2022-01-26 10:52:51.578631'),
('cuakgyzekenyhd7wkgg4w99edsrilg9p', '.eJxVUctOwzAQ_JXI5xL5_eipAnEETlxoqsr22m1omkh5iAPi31lDhMpl7dnZmV2vP8nRL_P5uExpPLZAtoSRzW0u-HhJfSHg3fenoY5DP49tqEtJvbJT_TRA6u7X2n8GZz-dUa2SjYYliIwDz9YrGoLPzvBgtHGQclY2Za2s5NpnT1UEmjWAjzJIlwWaRj_OXTvNZLvfk-f2kqpm0Rx0szhjQ_WSc9f2qeIVRcJ4iYTCZiuNwCnTLJYZUXglTEkZccMzjzFqib6BMyyCgHKVaFHYBBkJwy2mrCrdlYiAkUn3A2SRC6p-xyrT0YhA5qCLoygSl4BVD29UCH5HaVm2YEbj8Xc9HDbktRtO-BZc-zwuaUPKJh-vvu1wkx_4DbtTAfgXV_L1Db26i5c:1nMriR:OedInrTBhhXcypG2lpIvbxugEAxdZfnHKGTzBrgREw8', '2022-03-09 13:29:59.930099'),
('jgtp6bypq7iif7vxaoa0rm9n6h7rgh4i', '.eJxVjDsOwjAQBe_iGlmJ8ZeSPmew1t5dHEC2FCcV4u4QKQW0b2beS0TY1hK3TkucUVzEKE6_W4L8oLoDvEO9NZlbXZc5yV2RB-1yakjP6-H-HRTo5Vsb8tmNhHlUqNiDGVICDk4lZ11AYjae2BqvlQWGwWQc2CJC1kkHPov3Bw26OTM:1n6t6o:ymL3PwOwSi1xv59HpaDgtPpDRa-28nU7X0h46BzCJh4', '2022-01-24 11:45:06.337113'),
('r2hapk8msw00rlj4qp8aen09q2t48hxv', '.eJxVjrkOwjAQRP_FNbIcEx-hpE9Jba29u0kgsqUcFeLfcaQU0M6beZq3CLBvY9hXWsKE4iYacfnNIqQX5QPgE_JQZCp5W6Yoj4o86Sr7gjTfz-6fYIR1rGtDPrmGMDUaNXswKkbgzunorOuQmI0ntsa32gKDMgkVW0RIbWw7vlbpYy7DlKl-2ZadPl_LqD7U:1nIUxk:qLOm1KoNJdQkngABBm7-D0n7rr-2_HXPLWaWETW4i1s', '2022-02-25 12:23:44.416699'),
('ta1iew9h7kjkg6fpi8n3ubn0vgsosybo', '.eJxVjLsOgjAUht_lzKSBSqEwGRNHRydjyGnPKVS5JFDiYHx3acLC-F--7wv3fmr9yAR1mFdOYF14vg7oe6jhg2N7bmMQdhogAYtz6P0SoH48E2hwDV0TgcZvPGRw6AzaN49xoNcmmjbHGGZvRLyIfV3EbSLuL_v3IOhw6TZasbZlxmQzSdJpVKkx6KpSmrIoK2LnlGZXKJ3LAh2mylLqCiK0uckrd4LfHx_ITZU:1nOgf4:U76p22uKOH_fs-TTOCNsM8saUxcjhuRm2EM4lMM6u7k', '2022-03-14 14:06:02.951515');

-- --------------------------------------------------------

--
-- 資料表結構 `news`
--

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '標題',
  `content` longtext NOT NULL,
  `photo_file` varchar(200) NOT NULL,
  `video_url` varchar(200) NOT NULL,
  `create_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `photo_file`, `video_url`, `create_date`) VALUES
(1, '內政部強化防疫 宗教場所全程戴口罩 餐會不得逐桌敬酒', '中央流行疫情指揮中心昨天宣布，維持二級警戒至1月24日，並調整部分防疫措施。\r\n\r\n內政部表示，為防堵疫情擴散，即日起加強宗教場所及宗教集會活動相關防疫措施，除須配合指揮中心防疫指引，全程配戴口罩、落實實聯制、量體溫外，欲辦理繞境、遊行及其他大型宗教活動者，都須提報防疫計畫，並經地方政府同意後辦理。\r\n\r\n內政部指出，10日起宗教團體神職人員主持宗教儀式或講道，必須全程配戴口罩。如果有舉辦餐會、宴席等飲食活動，不得逐桌敬酒、敬茶，並建議參與者維持適當社交距離。此外，如有提供住宿的場所，除同住家人外，以1人1室為限。\r\n\r\n內政部強調，為維護宗教團體內部人員自身及信眾安全，宗教團體應提供洗手設備或消毒用品，並定時清潔宗教場所、設備及用具；另外，宗教團體務必備有充足的人力落實防疫措施，並隨時注意疫情變化，維持勤洗手、戴口罩、保持社交距離，保護自己也保護家人。', '001.jpg', 'https://www.youtube.com/watch?v=8MG--WuNW1Y', '2022-01-10'),
(2, '成員今成兩派 王少偉：懷念奮鬥時光', '昔日男子天團「5566」是許多人的青春回憶，當時討厭他們的人怒罵「醜又台」但至今依然有眾多支持者敲碗合體，但成員如今壁壘分明，孫協志、王仁甫及許孟哲嗨玩《飢餓遊戲》，王少偉則在《綜藝3國智》撐起一片天，王少偉雖自認不會懷念過去，仍坦言：「很想念團體共同奮鬥的時候。」', 'news001.jpg', 'youtube', '2022-01-12');

-- --------------------------------------------------------

--
-- 資料表結構 `photos_photo`
--

CREATE TABLE `photos_photo` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `upload_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `photos_photo`
--

INSERT INTO `photos_photo` (`id`, `image`, `upload_date`) VALUES
(1, 'image/mom1.jpg', '2022-02-14'),
(2, 'image/DSC_0359.jpg', '2022-02-14'),
(3, 'image/FB_IMG_1507422948172.jpg', '2022-02-14'),
(4, 'image/2018.01.13-366.jpg', '2022-02-14');

-- --------------------------------------------------------

--
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `brand` varchar(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `size` decimal(4,1) NOT NULL,
  `color` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `photo_url` varchar(200) NOT NULL,
  `discount` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`id`, `brand`, `name`, `size`, `color`, `price`, `photo_url`, `discount`) VALUES
(1, 'Nike', 'NIKE RYZ 365 II 女休閒鞋-白-CU4874100', '0.0', '', 1928, 'https://s.yimg.com/zp/MerchandiseImages/5DAEC0E983-SP-9528026.jpg', '0.00'),
(2, 'Nike', 'Nike 休閒鞋 TC 7900 運動 女鞋 基本款 厚底 舒適 簡約 穿搭 反光 米白 白 DD9682100', '0.0', '', 3932, 'https://s.yimg.com/zp/MerchandiseImages/FA23366512-SP-9474821.jpg', '0.00'),
(3, 'Nike', 'NIKE 慢跑鞋 AIR ZOOM TEMPO NEXT% FK 灰黑 編織 男 (布魯克林) CI9923-006', '0.0', '', 2701, 'https://s.yimg.com/ut/api/res/1.2/g9X4aSVjq9KLo41Box1HtQ--~B/dz0xNjg7aD0xNjg7cT0xMDA7Zmk9Zml0O3NzPTEuMDthcHBpZD15dHdtYWxs/https://s.yimg.com/fy/f014/item/p0373233048828-item-8bf1xf4x1000x1000-m.jpg', '0.00'),
(4, 'Nike', 'NIKE AIR FORCE 1 07 LV8男復古休閒運動鞋 -白綠-DO5220131', '0.0', '', 3024, 'https://s.yimg.com/zp/MerchandiseImages/C43CDCB9D0-SP-10539773.jpg', '0.00'),
(5, 'Nike', 'NIKE KD Trey 5 VII EP 男鞋 籃球 避震 包覆 耐磨 黑 紅【運動世界】CK2089-002', '0.0', '', 1852, 'https://s.yimg.com/ut/api/res/1.2/BL4uat8RMy_a4vykXh8aFg--~B/dz0xNjg7aD0xNjg7cT0xMDA7Zmk9Zml0O3NzPTEuMDthcHBpZD15dHdtYWxs/https://s.yimg.com/fy/95c2/item/p0268209274919-item-e218xf4x1000x1000-m.jpg', '0.00'),
(6, 'Nike', 'Nike 慢跑鞋 Flyknit Trainer 男鞋', '0.0', '', 2504, 'https://s.yimg.com/zp/images/7D868D0F67AB673DECFB6665C670579F2098B0AD', '0.00'),
(7, 'Nike', 'NIKE 運動鞋 運動 健身 慢跑  男鞋 黑 CD4371012 REACT INFINITY RUN FK', '0.0', '', 3869, 'https://s.yimg.com/zp/MerchandiseImages/CA1F1559F1-SP-8971248.jpg', '0.00'),
(8, 'Nike', 'Nike 休閒鞋 Air Max 90 SE 運動 女鞋 經典款 氣墊 舒適 簡約 球鞋 穿搭 白 灰 CV8824100', '0.0', '', 2924, 'https://s.yimg.com/zp/MerchandiseImages/15086A68BA-SP-9553390.jpg', '0.00'),
(9, 'Nike', 'NIKE NIKE REVOLUTION 6 NN  男 慢跑鞋-DC3728001', '0.0', '', 1253, 'https://s.yimg.com/zp/MerchandiseImages/B5247EF062-SP-10797241.jpg', '0.00'),
(10, 'Nike', 'Nike 休閒鞋 W  Air Zoom Type 女鞋 奶茶 網美 舒適 氣墊 球鞋 米白 粉 CZ1151101', '0.0', '', 3092, 'https://s.yimg.com/zp/MerchandiseImages/6F9F8826C2-Product-27323654.jpg', '0.00'),
(11, 'Nike', 'Nike 休閒鞋 Wearallday WNTR 運動 男鞋 輕量 舒適 避震 簡約 球鞋 穿搭 黑 白 CT1729001', '0.0', '', 1328, 'https://s.yimg.com/zp/MerchandiseImages/6A2DB10B80-SP-8881204.jpg', '0.00'),
(12, 'Nike', 'Nike Air Jordan 11代 Retro 男鞋 Cool Grey 喬丹 AJ11 酷灰 灰 白 CT8012005', '0.0', '', 6704, 'https://s.yimg.com/zp/MerchandiseImages/B940C9D185-SP-10727411.jpg', '0.00'),
(13, 'Nike', 'Nike 拖鞋 Offline 2 0 穆勒鞋 套腳 男女鞋 多層次網布 軟木塞 反光 半包拖 情侶款 黑 CZ0332-001', '0.0', '', 3176, 'https://s.yimg.com/zp/MerchandiseImages/2310ecf57b-Gd-9698318.jpg', '0.00'),
(14, 'Nike', 'Nike 休閒鞋 RYZ 365 II 運動 女鞋 厚底 舒適 增高 球鞋 穿搭 簡約 黑 白 CU4874001', '0.0', '', 2084, 'https://s.yimg.com/zp/MerchandiseImages/6903FFF764-SP-9258062.jpg', '0.00'),
(15, 'Nike', 'NIKE 休閒鞋  運動鞋 男鞋 粉白 DC4831002 AF1 AF1 CRATER FLYKNIT', '0.0', '', 2470, 'https://s.yimg.com/zp/MerchandiseImages/06364C453C-SP-10544511.jpg', '0.00');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- 資料表索引 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- 資料表索引 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- 資料表索引 `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- 資料表索引 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- 資料表索引 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- 資料表索引 `cart_detailmodel`
--
ALTER TABLE `cart_detailmodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_detailmodel_dorder_id_4a34f87f_fk_cart_ordersmodel_id` (`dorder_id`);

--
-- 資料表索引 `cart_ordersmodel`
--
ALTER TABLE `cart_ordersmodel`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- 資料表索引 `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- 資料表索引 `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- 資料表索引 `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `photos_photo`
--
ALTER TABLE `photos_photo`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cart_detailmodel`
--
ALTER TABLE `cart_detailmodel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cart_ordersmodel`
--
ALTER TABLE `cart_ordersmodel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `customer`
--
ALTER TABLE `customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `photos_photo`
--
ALTER TABLE `photos_photo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- 資料表的限制式 `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- 資料表的限制式 `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- 資料表的限制式 `cart_detailmodel`
--
ALTER TABLE `cart_detailmodel`
  ADD CONSTRAINT `cart_detailmodel_dorder_id_4a34f87f_fk_cart_ordersmodel_id` FOREIGN KEY (`dorder_id`) REFERENCES `cart_ordersmodel` (`id`);

--
-- 資料表的限制式 `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
