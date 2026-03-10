-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 17, 2023 at 09:22 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `heartdatabase`
--
CREATE DATABASE IF NOT EXISTS `heartdatabase` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `heartdatabase`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_permission`
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
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session'),
(29, 'Can add user2', 8, 'add_user2'),
(30, 'Can change user2', 8, 'change_user2'),
(31, 'Can delete user2', 8, 'delete_user2'),
(32, 'Can view user2', 8, 'view_user2'),
(33, 'Can add adminuser', 9, 'add_adminuser'),
(34, 'Can change adminuser', 9, 'change_adminuser'),
(35, 'Can delete adminuser', 9, 'delete_adminuser'),
(36, 'Can view adminuser', 9, 'view_adminuser'),
(37, 'Can add uploaddataset', 10, 'add_uploaddataset'),
(38, 'Can change uploaddataset', 10, 'change_uploaddataset'),
(39, 'Can delete uploaddataset', 10, 'delete_uploaddataset'),
(40, 'Can view uploaddataset', 10, 'view_uploaddataset'),
(41, 'Can add uploaddata', 10, 'add_uploaddata'),
(42, 'Can change uploaddata', 10, 'change_uploaddata'),
(43, 'Can delete uploaddata', 10, 'delete_uploaddata'),
(44, 'Can view uploaddata', 10, 'view_uploaddata');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'appuser', 'user'),
(7, 'sessions', 'session'),
(8, 'appuser', 'user2'),
(9, 'appmain', 'adminuser'),
(10, 'appadmin', 'uploaddata');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'appuser', '0001_initial', '2023-03-01 09:38:06.945521'),
(2, 'appuser', '0002_alter_user_table', '2023-03-01 09:38:06.957789'),
(3, 'appuser', '0003_alter_user_table', '2023-03-01 09:38:06.963330'),
(4, 'contenttypes', '0001_initial', '2023-03-01 09:39:06.524681'),
(5, 'auth', '0001_initial', '2023-03-01 09:39:06.990717'),
(6, 'admin', '0001_initial', '2023-03-01 09:39:07.167053'),
(7, 'admin', '0002_logentry_remove_auto_add', '2023-03-01 09:39:07.191217'),
(8, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-01 09:39:07.199281'),
(9, 'appuser', '0004_alter_user_table', '2023-03-01 09:45:36.237945'),
(10, 'appmain', '0001_initial', '2023-03-01 09:46:08.965020'),
(11, 'appmain', '0002_delete_user', '2023-03-01 09:46:08.973076'),
(12, 'contenttypes', '0002_remove_content_type_name', '2023-03-01 09:46:09.062183'),
(13, 'auth', '0002_alter_permission_name_max_length', '2023-03-01 09:46:09.104457'),
(14, 'auth', '0003_alter_user_email_max_length', '2023-03-01 09:46:09.140407'),
(15, 'auth', '0004_alter_user_username_opts', '2023-03-01 09:46:09.150504'),
(16, 'auth', '0005_alter_user_last_login_null', '2023-03-01 09:46:09.194289'),
(17, 'auth', '0006_require_contenttypes_0002', '2023-03-01 09:46:09.194289'),
(18, 'auth', '0007_alter_validators_add_error_messages', '2023-03-01 09:46:09.203673'),
(19, 'auth', '0008_alter_user_username_max_length', '2023-03-01 09:46:09.235303'),
(20, 'auth', '0009_alter_user_last_name_max_length', '2023-03-01 09:46:09.261306'),
(21, 'auth', '0010_alter_group_name_max_length', '2023-03-01 09:46:09.294029'),
(22, 'auth', '0011_update_proxy_permissions', '2023-03-01 09:46:09.302177'),
(23, 'auth', '0012_alter_user_first_name_max_length', '2023-03-01 09:46:09.335879'),
(24, 'sessions', '0001_initial', '2023-03-01 09:46:09.367636'),
(25, 'appuser', '0005_user_password', '2023-03-01 10:24:32.444389'),
(26, 'appuser', '0006_alter_user_address_alter_user_email_and_more', '2023-03-01 11:44:41.283225'),
(27, 'appuser', '0007_user2', '2023-03-03 06:07:17.813069'),
(28, 'appuser', '0008_rename_cfield1_user2_cf1_rename_cfield10_user2_cf10_and_more', '2023-03-03 06:15:48.910603'),
(29, 'appmain', '0003_initial', '2023-03-03 07:19:32.904862'),
(30, 'appmain', '0004_delete_adminuser', '2023-03-03 07:29:40.456816'),
(31, 'appuser', '0009_user_user_status', '2023-03-03 11:07:57.356343'),
(32, 'appuser', '0010_alter_user_image', '2023-03-03 12:14:53.760459'),
(33, 'appuser', '0011_rename_image_user_profile_pic', '2023-03-03 12:23:04.864924'),
(34, 'appuser', '0012_rename_profile_pic_user_image', '2023-03-03 12:26:54.197046'),
(35, 'appadmin', '0001_initial', '2023-03-04 07:16:57.723319'),
(36, 'appadmin', '0002_rename_upload_id_uploaddataset_admin_id_and_more', '2023-03-04 07:30:18.006930'),
(37, 'appadmin', '0003_rename_uploaddataset_uploaddata', '2023-03-04 09:01:21.352306'),
(38, 'appadmin', '0004_alter_uploaddata_date_alter_uploaddata_time', '2023-03-04 09:09:54.011259'),
(39, 'appadmin', '0005_alter_uploaddata_date_alter_uploaddata_time', '2023-03-04 09:10:39.595881'),
(40, 'appadmin', '0006_alter_uploaddata_image', '2023-03-13 09:37:32.278965'),
(41, 'appuser', '0013_alter_user_phone', '2023-03-13 09:37:32.303358'),
(42, 'appadmin', '0007_rename_image_uploaddata_file', '2023-03-13 10:49:51.099298'),
(43, 'appadmin', '0008_rename_file_uploaddata_image', '2023-03-13 11:06:10.070010');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('a8yaidb0bz2ofwf4cqzhwtm57uzfz2i9', 'eyJVc2VyX2lkIjoyMCwiVXNlcjJfaWQiOjE1fQ:1pbgtz:SAsG0GifIHo7PZhaEgaodq47wUlAl-6HQ6fa6pBx0BQ', '2023-03-27 12:03:43.310972');

-- --------------------------------------------------------

--
-- Table structure for table `field_details`
--

DROP TABLE IF EXISTS `field_details`;
CREATE TABLE IF NOT EXISTS `field_details` (
  `User2_id` int NOT NULL AUTO_INCREMENT,
  `cf1` varchar(100) DEFAULT NULL,
  `cf2` varchar(100) DEFAULT NULL,
  `cf3` varchar(100) DEFAULT NULL,
  `cf4` varchar(100) DEFAULT NULL,
  `cf5` varchar(100) DEFAULT NULL,
  `cf6` varchar(100) DEFAULT NULL,
  `cf7` varchar(100) DEFAULT NULL,
  `cf8` varchar(100) DEFAULT NULL,
  `cf9` varchar(100) DEFAULT NULL,
  `cf10` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`User2_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `field_details`
--

INSERT INTO `field_details` (`User2_id`, `cf1`, `cf2`, `cf3`, `cf4`, `cf5`, `cf6`, `cf7`, `cf8`, `cf9`, `cf10`) VALUES
(1, 'hi', 'hii', 'hiii', 'hiiii', 'hiiii', 'hyyy', 'hgggg', 'jjjj', 'gvgn', 'uuyyt'),
(2, '2yt43278tg', 'iuge32ug28', '28723g2e89', '873e8y3egu32', '7e2y3ede3hu', '89y2edy8e3hde', '8y3e8yed3h', '238y3eu3', 'y82e8y3eh', 'iu238y23hi'),
(3, 'eiuh4', 'iugeuiwebj', 'uiedywdb', 'oiewcwdbj', 'ihdiodn', 'hijbkwjck', 'iwdjdn', 'hwhiwejk', 'ih2hiwnj', 'ihrjncedkj'),
(4, '2yt43278tg', 'iuge32ug28', '28723g2e89', '873e8y3egu32', '7e2y3ede3hu', '89y2edy8e3hde', '8y3e8yed3h', '238y3eu3', 'y82e8y3eh', 'uuyyt'),
(5, '2yt43278tg', 'iuge32ug28', '28723g2e89', 'hiiii', '7e2y3ede3hu', '89y2edy8e3hde', '8y3e8yed3h', '238y3eu3', 'y82e8y3eh', 'uuyyt'),
(6, '2yt43278tg', 'iuge32ug28', '28723g2e89', '873e8y3egu32', '7e2y3ede3hu', '89y2edy8e3hde', '8y3e8yed3h', '238y3eu3', 'y82e8y3eh', 'iu238y23hi'),
(7, '2yt43278tg', 'iuge32ug28', '28723g2e89', '873e8y3egu32', '7e2y3ede3hu', '89y2edy8e3hde', '8y3e8yed3h', '238y3eu3', 'y82e8y3eh', 'iu238y23hi'),
(8, '2yt43278tg', 'iuge32ug28', '28723g2e89', '873e8y3egu32', '7e2y3ede3hu', '89y2edy8e3hde', '8y3e8yed3h', '238y3eu3', 'y82e8y3eh', 'iu238y23hi'),
(9, '2yt43278tg', 'iuge32ug28', '28723g2e89', '873e8y3egu32', '7e2y3ede3hu', '89y2edy8e3hde', '8y3e8yed3h', '238y3eu3', 'y82e8y3eh', 'iu238y23hi'),
(10, 'hi', 'que', 'aws', 'eee', 'ece', 'cse', 'mech', 'civil', 'eie', 'it'),
(11, 'ASDAS', 'GGGG', 'GG', 'GG', 'G', 'G', 'G', 'G', 'G', 'G'),
(12, 'aA', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'),
(13, 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k', 'k'),
(14, 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a'),
(15, 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `upload_details`
--

DROP TABLE IF EXISTS `upload_details`;
CREATE TABLE IF NOT EXISTS `upload_details` (
  `Admin_id` int NOT NULL AUTO_INCREMENT,
  `Files` varchar(100) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `File_size` varchar(100) DEFAULT NULL,
  `Time` time(6) DEFAULT NULL,
  PRIMARY KEY (`Admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `upload_details`
--

INSERT INTO `upload_details` (`Admin_id`, `Files`, `Date`, `File_size`, `Time`) VALUES
(13, 'Images/user/cb_lHZMRlt.jpg', '2023-03-13', '76048', '15:49:15.965428'),
(11, 'Images/user/cb_mjdaXgC.jpg', '2023-03-11', '76048', '17:05:02.073296'),
(7, 'Images/user/Screenshot_4.png', '2023-03-10', '439168', '17:15:08.934303'),
(10, 'Images/user/cb_Qu7nXMz.jpg', '2023-03-11', '76048', '16:35:43.554225'),
(12, 'Images/user/cb_NnCOuwd.jpg', '2023-03-11', '76048', '17:05:10.992078'),
(14, 'Images/user/cb_KAXSUHq.jpg', '2023-03-13', '76048', '15:49:27.143527');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
CREATE TABLE IF NOT EXISTS `user_details` (
  `User_id` int NOT NULL AUTO_INCREMENT,
  `First_name` varchar(100) DEFAULT NULL,
  `Last_name` varchar(100) DEFAULT NULL,
  `Image` varchar(100) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Address` varchar(150) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Phone` int NOT NULL,
  `Password` varchar(30) DEFAULT NULL,
  `User_status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`User_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`User_id`, `First_name`, `Last_name`, `Image`, `Email`, `Address`, `Age`, `Phone`, `Password`, `User_status`) VALUES
(13, 'Chaitanya Nalam', NULL, 'Images/user/p2_a6OUF3b.jpg', 'ch@gmail.com', 'Hyderabad', 24, 12345678, 'Chaitu123#', 'rejected'),
(15, 'Chaitanya', NULL, 'Images/user/Screenshot_1_O7Rtdhr.png', 'sdsa@gmail.com', '2-20, hyderabad', 23, 0, 'ertyuii', 'accepted'),
(12, 'Vinay Kumar', NULL, 'Images/user/Screenshot_5_oQg2Nuw.png', 'jim@gmail.com', 'sdfgghj', 29, 1234567890, 'areS2@1', 'accepted'),
(11, 'jay', NULL, 'Images/user/Screenshot_1_gFyMYsf.png', 'jay@gmail.com', '2-20, hyderabad', 29, 2147483647, 'asdr', 'accepted'),
(9, 'harshavardann', NULL, 'Images/user/Screenshot_2.png', 'sdsa@gmail.com', '2-20, hyderabad', 23, 2147483647, '1234QW!', 'accepted'),
(21, 'Rakesh', 'Atluri', 'Images/user/Screenshot_59_1_g94O7QT.png', 'rak@gmail.com', 'hyderabad', 22, 1234567890, 'Rak123@', 'accepted'),
(19, 'code', NULL, 'Images/user/cb.jpg', 'codebook@gmail.com', 'hyderabad', 27, 0, 'Codebook@1', 'Accepted'),
(20, 'jim', 'john', 'Images/user/cb_QsYKWvJ.jpg', 'cb@gmail.com', 'LB nagar', 22, 1234567872, 'Code123@', 'accepted'),
(22, 'code', 'book', 'Images/user/cb_fzrD2AW.jpg', 'codebook@gmail.com', 'hyderabad', 32, 2147483647, 'codebook32', 'Accepted');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
