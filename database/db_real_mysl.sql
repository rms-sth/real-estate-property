-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2019 at 11:28 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_real`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(32) NOT NULL,
  `name` char(80) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(32) NOT NULL,
  `group_id` int(32) NOT NULL,
  `permission_id` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(32) NOT NULL,
  `name` char(255) COLLATE utf8_bin NOT NULL,
  `content_type_id` int(32) NOT NULL,
  `codename` char(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add listing', 7, 'add_listing'),
(26, 'Can change listing', 7, 'change_listing'),
(27, 'Can delete listing', 7, 'delete_listing'),
(28, 'Can view listing', 7, 'view_listing'),
(29, 'Can add realtor', 8, 'add_realtor'),
(30, 'Can change realtor', 8, 'change_realtor'),
(31, 'Can delete realtor', 8, 'delete_realtor'),
(32, 'Can view realtor', 8, 'view_realtor'),
(33, 'Can add contact', 9, 'add_contact'),
(34, 'Can change contact', 9, 'change_contact'),
(35, 'Can delete contact', 9, 'delete_contact'),
(36, 'Can view contact', 9, 'view_contact');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(32) NOT NULL,
  `password` char(128) COLLATE utf8_bin NOT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` char(150) COLLATE utf8_bin NOT NULL,
  `first_name` char(30) COLLATE utf8_bin NOT NULL,
  `last_name` char(150) COLLATE utf8_bin NOT NULL,
  `email` char(254) COLLATE utf8_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$oaWYKAZodwqh$5rmNMt89KdyWO/EN1CS0QSxf248p9W5wibtZw7pa+pE=', '2019-01-03 20:02:17', 1, 'rameshpradhan', '', '', 'ramesrest@gmail.com', 1, 1, '2019-01-01 18:44:27'),
(2, 'pbkdf2_sha256$120000$Ol97o395Y5Uc$oeNf+brDOXYj1UYnvhReJY65M7NhDVmIW0zKG6NG/yo=', '2019-01-03 15:51:47', 0, 'ramesrest', 'Ramesh', 'Pradhan', 'rameshpradhan@gmail.com', 0, 1, '2019-01-03 15:51:46'),
(3, 'pbkdf2_sha256$120000$GUeKLj0uEFaf$Dd9vHeuAfUCe0cD2GVYsZuWSHfs3QUBXZ9AOfVTxiDg=', '2019-01-03 19:59:44', 0, 'bhuwan', 'bhuwan', 'pandey', 'bhuwan@gmail.com', 0, 1, '2019-01-03 15:54:42');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(32) NOT NULL,
  `user_id` int(32) NOT NULL,
  `group_id` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(32) NOT NULL,
  `user_id` int(32) NOT NULL,
  `permission_id` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_contact`
--

CREATE TABLE `contacts_contact` (
  `id` int(32) NOT NULL,
  `listing` char(250) COLLATE utf8_bin NOT NULL,
  `listing_id` int(32) NOT NULL,
  `name` char(200) COLLATE utf8_bin NOT NULL,
  `email` char(100) COLLATE utf8_bin NOT NULL,
  `phone` char(100) COLLATE utf8_bin NOT NULL,
  `message` text COLLATE utf8_bin NOT NULL,
  `contact_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `contacts_contact`
--

INSERT INTO `contacts_contact` (`id`, `listing`, `listing_id`, `name`, `email`, `phone`, `message`, `contact_date`, `user_id`) VALUES
(17, 'Biratnagar, Shantinagar', 3, ' Ramesh Pradhan', 'ramesrestt@gmail.com', '9862135291', 'I want this property', '2019-01-04 01:47:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(32) NOT NULL,
  `action_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `object_id` text COLLATE utf8_bin,
  `object_repr` char(200) COLLATE utf8_bin NOT NULL,
  `action_flag` smallint(16) NOT NULL,
  `change_message` text COLLATE utf8_bin NOT NULL,
  `content_type_id` int(32) DEFAULT NULL,
  `user_id` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-01-01 19:03:05', '2', 'Ramesh Pradhan', 1, '[{\"added\": {}}]', 8, 1),
(2, '2019-01-01 19:04:00', '3', 'Bijesh Jung Basnet', 1, '[{\"added\": {}}]', 8, 1),
(3, '2019-01-01 19:04:26', '4', 'Bhuwan Raj Pandeya', 1, '[{\"added\": {}}]', 8, 1),
(4, '2019-01-01 19:09:09', '1', '25th street Patan Dhoka, Lalitpur', 1, '[{\"added\": {}}]', 7, 1),
(5, '2019-01-01 19:12:04', '2', 'Mahendranagar, Mahakali', 1, '[{\"added\": {}}]', 7, 1),
(6, '2019-01-01 19:13:13', '3', 'Biratnagar, Shantinagar', 1, '[{\"added\": {}}]', 7, 1),
(7, '2019-01-01 19:15:25', '4', 'Biratnagar, Hatkhola', 1, '[{\"added\": {}}]', 7, 1),
(8, '2019-01-01 19:16:38', '5', 'Biratnagar, Pushpalal chowk', 1, '[{\"added\": {}}]', 7, 1),
(9, '2019-01-01 19:54:38', '2', 'Ramesh Pradhan', 2, '[{\"changed\": {\"fields\": [\"hire_date\"]}}]', 8, 1),
(10, '2019-01-02 14:37:05', '1', 'Patan Dhoka, Lalitpur', 2, '[{\"changed\": {\"fields\": [\"title\", \"list_date\"]}}]', 7, 1),
(11, '2019-01-02 17:41:36', '3', 'Biratnagar, Shantinagar', 2, '[{\"changed\": {\"fields\": [\"is_published\"]}}]', 7, 1),
(12, '2019-01-02 17:41:44', '5', 'Biratnagar, Pushpalal chowk', 2, '[{\"changed\": {\"fields\": [\"is_published\"]}}]', 7, 1),
(13, '2019-01-02 17:41:44', '3', 'Biratnagar, Shantinagar', 2, '[{\"changed\": {\"fields\": [\"is_published\"]}}]', 7, 1),
(14, '2019-01-02 18:13:39', '5', 'Biratnagar, Pushpalal chowk', 2, '[{\"changed\": {\"fields\": [\"is_published\"]}}]', 7, 1),
(15, '2019-01-02 18:39:58', '2', 'Ramesh Pradhan', 2, '[]', 8, 1),
(16, '2019-01-02 18:54:45', '3', 'Bijesh Jung Basnet', 2, '[{\"changed\": {\"fields\": [\"is_mvp\"]}}]', 8, 1),
(17, '2019-01-02 19:08:30', '3', 'Bijesh Jung Basnet', 2, '[{\"changed\": {\"fields\": [\"is_mvp\"]}}]', 8, 1),
(18, '2019-01-02 19:09:27', '2', 'Ramesh Pradhan', 2, '[{\"changed\": {\"fields\": [\"is_mvp\"]}}]', 8, 1),
(19, '2019-01-02 19:09:30', '4', 'Bhuwan Raj Pandeya', 2, '[{\"changed\": {\"fields\": [\"is_mvp\"]}}]', 8, 1),
(20, '2019-01-03 10:40:59', '4', 'Biratnagar, Hatkhola', 2, '[{\"changed\": {\"fields\": [\"state\"]}}]', 7, 1),
(21, '2019-01-03 11:21:58', '4', 'Biratnagar, Hatkhola', 2, '[{\"changed\": {\"fields\": [\"price\"]}}]', 7, 1),
(22, '2019-01-03 11:22:24', '4', 'Biratnagar, Hatkhola', 2, '[{\"changed\": {\"fields\": [\"zipcode\"]}}]', 7, 1),
(23, '2019-01-03 11:22:51', '5', 'Biratnagar, Pushpalal chowk', 2, '[{\"changed\": {\"fields\": [\"state\", \"zipcode\"]}}]', 7, 1),
(24, '2019-01-03 11:23:19', '2', 'Mahendranagar, Mahakali', 2, '[{\"changed\": {\"fields\": [\"state\", \"zipcode\"]}}]', 7, 1),
(25, '2019-01-03 11:23:38', '1', 'Patan Dhoka, Lalitpur', 2, '[{\"changed\": {\"fields\": [\"state\", \"zipcode\"]}}]', 7, 1),
(26, '2019-01-03 11:26:11', '5', 'Biratnagar, Pushpalal chowk', 2, '[{\"changed\": {\"fields\": [\"state\"]}}]', 7, 1),
(27, '2019-01-03 11:26:46', '1', 'Patan Dhoka, Lalitpur', 2, '[{\"changed\": {\"fields\": [\"state\"]}}]', 7, 1),
(28, '2019-01-03 11:27:01', '5', 'Biratnagar, Pushpalal chowk', 2, '[]', 7, 1),
(29, '2019-01-03 11:27:09', '4', 'Biratnagar, Hatkhola', 2, '[{\"changed\": {\"fields\": [\"state\"]}}]', 7, 1),
(30, '2019-01-03 11:27:16', '3', 'Biratnagar, Shantinagar', 2, '[{\"changed\": {\"fields\": [\"state\"]}}]', 7, 1),
(31, '2019-01-03 11:27:24', '2', 'Mahendranagar, Mahakali', 2, '[{\"changed\": {\"fields\": [\"state\"]}}]', 7, 1),
(32, '2019-01-03 11:32:53', '1', 'Patan Dhoka, Lalitpur', 2, '[{\"changed\": {\"fields\": [\"state\", \"zipcode\", \"price\"]}}]', 7, 1),
(33, '2019-01-03 11:33:09', '1', 'Patan Dhoka, Lalitpur', 2, '[{\"changed\": {\"fields\": [\"state\"]}}]', 7, 1),
(34, '2019-01-03 11:33:32', '1', 'Patan Dhoka, Lalitpur', 2, '[{\"changed\": {\"fields\": [\"price\"]}}]', 7, 1),
(35, '2019-01-03 11:37:17', '1', 'Patan Dhoka, Lalitpur', 2, '[{\"changed\": {\"fields\": [\"bedrooms\"]}}]', 7, 1),
(36, '2019-01-03 11:42:24', '5', 'Biratnagar, Pushpalal chowk', 2, '[{\"changed\": {\"fields\": [\"zipcode\", \"price\"]}}]', 7, 1),
(37, '2019-01-03 11:42:39', '3', 'Biratnagar, Shantinagar', 2, '[{\"changed\": {\"fields\": [\"price\"]}}]', 7, 1),
(38, '2019-01-03 19:15:28', '9', ' sdfs', 3, '', 9, 1),
(39, '2019-01-03 19:15:28', '8', 'godofh', 3, '', 9, 1),
(40, '2019-01-03 19:15:28', '7', ' dsd', 3, '', 9, 1),
(41, '2019-01-03 19:15:28', '6', 'sdf', 3, '', 9, 1),
(42, '2019-01-03 19:15:28', '5', 'ssdjk', 3, '', 9, 1),
(43, '2019-01-03 19:15:28', '4', 'dinesh', 3, '', 9, 1),
(44, '2019-01-03 19:15:28', '3', ' Babhu ram', 3, '', 9, 1),
(45, '2019-01-03 19:15:28', '2', ' Ramesh Pradhan', 3, '', 9, 1),
(46, '2019-01-03 19:15:28', '1', ' Ramesh Pradhan', 3, '', 9, 1),
(47, '2019-01-03 20:01:59', '16', 'bhuwan pandey', 3, '', 9, 1),
(48, '2019-01-03 20:01:59', '15', 'Jsoon Ramesh', 3, '', 9, 1),
(49, '2019-01-03 20:01:59', '14', 'Jsoon Ramesh', 3, '', 9, 1),
(50, '2019-01-03 20:01:59', '13', 'Ramesh Pradhan', 3, '', 9, 1),
(51, '2019-01-03 20:01:59', '12', 'Ramesh Pradhan', 3, '', 9, 1),
(52, '2019-01-03 20:01:59', '41-TRIAL-11 167', '34-TRIAL-Ramesh Pradhan 100', 3, '', 9, 1),
(53, '2019-01-03 20:01:59', '10', '78-TRIAL- Ramesh Pradhan 258', 3, '', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(32) NOT NULL,
  `app_label` char(100) COLLATE utf8_bin NOT NULL,
  `model` char(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(9, 'contacts', 'contact'),
(5, 'contenttypes', 'contenttype'),
(3, 'auth', 'group'),
(7, 'listings', 'listing'),
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(8, 'realtors', 'realtor'),
(6, 'sessions', 'session'),
(4, 'auth', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(32) NOT NULL,
  `app` char(255) COLLATE utf8_bin NOT NULL,
  `name` char(255) COLLATE utf8_bin NOT NULL,
  `applied` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-01-01 17:50:25'),
(2, 'auth', '0001_initial', '2019-01-01 17:50:25'),
(3, 'admin', '0001_initial', '2019-01-01 17:50:25'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-01-01 17:50:25'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-01-01 17:50:25'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-01-01 17:50:25'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-01-01 17:50:25'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-01-01 17:50:25'),
(9, 'auth', '0004_alter_user_username_opts', '2019-01-01 17:50:25'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-01-01 17:50:25'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-01-01 17:50:25'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-01-01 17:50:25'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-01-01 17:50:25'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-01-01 17:50:25'),
(15, 'sessions', '0001_initial', '2019-01-01 17:50:25'),
(16, 'realtors', '0001_initial', '2019-01-01 18:38:49'),
(17, 'listings', '0001_initial', '2019-01-01 18:38:49'),
(18, 'contacts', '0001_initial', '2019-01-03 17:00:50'),
(19, 'contacts', '0002_auto_20190104_0029', '2019-01-03 18:44:16');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` char(40) COLLATE utf8_bin NOT NULL,
  `session_data` text COLLATE utf8_bin NOT NULL,
  `expire_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('zx8jtsc11dw70sw73oz3le4rvl9jm5h3', 'OGQyODIxOGQ1Zjg0OGVkNTI3NmM0MjBiNmFjZjY5NTUxOTRmNzgyZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0Yzk2NzhkZjAyZDQ3MTJkN2M3OWMzZmYwZThiNDZhYzc1NGJmMTJiIn0=', '2019-01-17 20:02:17');

-- --------------------------------------------------------

--
-- Table structure for table `listings_listing`
--

CREATE TABLE `listings_listing` (
  `id` int(32) NOT NULL,
  `title` char(200) COLLATE utf8_bin NOT NULL,
  `address` char(200) COLLATE utf8_bin NOT NULL,
  `city` char(200) COLLATE utf8_bin NOT NULL,
  `state` char(200) COLLATE utf8_bin NOT NULL,
  `zipcode` char(200) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `price` int(32) NOT NULL,
  `bedrooms` int(32) NOT NULL,
  `bathrooms` double(2,1) NOT NULL,
  `garage` int(32) NOT NULL,
  `sqft` int(32) NOT NULL,
  `lot_size` double(5,1) NOT NULL,
  `photo_main` char(100) COLLATE utf8_bin NOT NULL,
  `photo_1` char(100) COLLATE utf8_bin NOT NULL,
  `photo_2` char(100) COLLATE utf8_bin NOT NULL,
  `photo_3` char(100) COLLATE utf8_bin NOT NULL,
  `photo_4` char(100) COLLATE utf8_bin NOT NULL,
  `photo_5` char(100) COLLATE utf8_bin NOT NULL,
  `photo_6` char(100) COLLATE utf8_bin NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  `list_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `realtor_id` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `listings_listing`
--

INSERT INTO `listings_listing` (`id`, `title`, `address`, `city`, `state`, `zipcode`, `description`, `price`, `bedrooms`, `bathrooms`, `garage`, `sqft`, `lot_size`, `photo_main`, `photo_1`, `photo_2`, `photo_3`, `photo_4`, `photo_5`, `photo_6`, `is_published`, `list_date`, `realtor_id`) VALUES
(1, 'Patan Dhoka, Lalitpur', '25th street Patan Dhoka, Lalitpur', 'Laltipur', '3', '55600', 'This house is sale for $200000K.', 5000000, 7, 2.0, 2, 3000, 2.9, 'photos/2019/01/02/home-1.jpg', 'photos/2019/01/02/home-inside-1.jpg', 'photos/2019/01/02/home-inside-2.jpg', 'photos/2019/01/02/home-inside-3.jpg', 'photos/2019/01/02/home-inside-4.jpg', 'photos/2019/01/02/home-inside-5.jpg', 'photos/2019/01/02/home-inside-6.jpg', 1, '2018-12-05 00:50:46', 2),
(2, 'Mahendranagar, Mahakali', 'Mahendranagar, Mahakali', 'Mahendranagar', '7', '2000000', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 232323, 11, 2.5, 3, 333, 4.0, 'photos/2019/01/02/home-2.jpg', 'photos/2019/01/02/home-inside-1_QR0cbIX.jpg', 'photos/2019/01/02/home-inside-2_SxxVyiV.jpg', 'photos/2019/01/02/home-inside-3_lCRqPtn.jpg', 'photos/2019/01/02/home-inside-4_rZHTnLn.jpg', 'photos/2019/01/02/home-inside-5_MNE19Q9.jpg', 'photos/2019/01/02/home-inside-6_VG2kfB9.jpg', 1, '2019-01-02 00:54:46', 4),
(3, 'Biratnagar, Shantinagar', 'Biratnagar, Shantinagar', 'Biratnagar', '1', '23334', 'Biratnagar, Shantinagar\r\nWhat is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1800000, 9, 2.0, 2, 344, 3.0, 'photos/2019/01/02/home-3.jpg', 'photos/2019/01/02/home-inside-1_nqyf2ao.jpg', 'photos/2019/01/02/home-inside-2_W5F3gBF.jpg', 'photos/2019/01/02/home-inside-3_87TvdSz.jpg', 'photos/2019/01/02/home-inside-4_Xnbebyp.jpg', 'photos/2019/01/02/home-inside-5_eApBl7p.jpg', 'photos/2019/01/02/home-inside-6_PQymu19.jpg', 1, '2019-01-02 00:57:07', 3),
(4, 'Biratnagar, Hatkhola', 'Biratnagar, Hatkhola', 'Biratnagar', '1', '1500000', 'act that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infan', 3232440, 8, 2.0, 2, 343, 1.0, 'photos/2019/01/02/home-4.jpg', 'photos/2019/01/02/home-inside-1_H4GLZXx.jpg', 'photos/2019/01/02/home-inside-2_6edmnL2.jpg', 'photos/2019/01/02/home-inside-3_VkIOwZb.jpg', 'photos/2019/01/02/home-inside-4_Hz6BSVG.jpg', 'photos/2019/01/02/home-inside-5_ivyf5O8.jpg', 'photos/2019/01/02/home-inside-6_lO6EDqX.jpg', 1, '2019-01-02 00:59:19', 2),
(5, 'Biratnagar, Pushpalal chowk', 'Biratnagar, Pushpalal chowk', 'Biratnagar', '1', '32322', 'Where does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\nWhere can I get some?\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alte', 500000, 15, 3.0, 3, 3223, 3.0, 'photos/2019/01/02/home-5.jpg', 'photos/2019/01/02/home-inside-1_pBVUifA.jpg', 'photos/2019/01/02/home-inside-2_dbx6e4T.jpg', 'photos/2019/01/02/home-inside-3_eeikzX9.jpg', 'photos/2019/01/02/home-inside-4_oyLRfH5.jpg', 'photos/2019/01/02/home-inside-5_y3xTm0k.jpg', '', 1, '2019-01-02 01:00:27', 2);

-- --------------------------------------------------------

--
-- Table structure for table `realtors_realtor`
--

CREATE TABLE `realtors_realtor` (
  `id` int(32) NOT NULL,
  `name` char(200) COLLATE utf8_bin NOT NULL,
  `photo` char(100) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `email` char(50) COLLATE utf8_bin NOT NULL,
  `phone` char(20) COLLATE utf8_bin NOT NULL,
  `is_mvp` tinyint(1) NOT NULL,
  `hire_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `realtors_realtor`
--

INSERT INTO `realtors_realtor` (`id`, `name`, `photo`, `description`, `email`, `phone`, `is_mvp`, `hire_date`) VALUES
(2, 'Ramesh Pradhan', 'photos/2019/01/02/19620950_1351670614940539_6426405727003658740_o_6z8jGoQ.jpg', 'I am a BSc. CSIT student. What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'ramesrest@gmail.com', '9860298534', 0, '2019-01-01 19:54:37'),
(3, 'Bijesh Jung Basnet', 'photos/2019/01/02/43255789_1142656279208770_1618796980866121728_o.jpg', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'bijeshjungbasnet@gmail.com', '9862135291', 0, '2019-01-01 19:03:58'),
(4, 'Bhuwan Raj Pandeya', 'photos/2019/01/02/27021242_1592096704214203_3513701933829184542_o.jpg', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'bhuwanpandeya@gmail.com', '9832323223', 1, '2019-01-01 19:04:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_name_key` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`permission_id`,`group_id`),
  ADD KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  ADD KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`codename`,`content_type_id`),
  ADD KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_username_key` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`group_id`,`user_id`),
  ADD KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  ADD KEY `auth_user_groups_group_id_97559544` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`permission_id`,`user_id`),
  ADD KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  ADD KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`);

--
-- Indexes for table `contacts_contact`
--
ALTER TABLE `contacts_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`model`,`app_label`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `listings_listing`
--
ALTER TABLE `listings_listing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listings_listing_realtor_id_90583529` (`realtor_id`);

--
-- Indexes for table `realtors_realtor`
--
ALTER TABLE `realtors_realtor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts_contact`
--
ALTER TABLE `contacts_contact`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `listings_listing`
--
ALTER TABLE `listings_listing`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `realtors_realtor`
--
ALTER TABLE `realtors_realtor`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `listings_listing`
--
ALTER TABLE `listings_listing`
  ADD CONSTRAINT `listings_listing_realtor_id_90583529_fk_realtors_realtor_id` FOREIGN KEY (`realtor_id`) REFERENCES `realtors_realtor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
