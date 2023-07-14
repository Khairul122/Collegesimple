-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2023 at 01:20 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_customuser'),
(22, 'Can change user', 6, 'change_customuser'),
(23, 'Can delete user', 6, 'delete_customuser'),
(24, 'Can view user', 6, 'view_customuser'),
(25, 'Can add attendance', 7, 'add_attendance'),
(26, 'Can change attendance', 7, 'change_attendance'),
(27, 'Can delete attendance', 7, 'delete_attendance'),
(28, 'Can view attendance', 7, 'view_attendance'),
(29, 'Can add course', 8, 'add_course'),
(30, 'Can change course', 8, 'change_course'),
(31, 'Can delete course', 8, 'delete_course'),
(32, 'Can view course', 8, 'view_course'),
(33, 'Can add session', 9, 'add_session'),
(34, 'Can change session', 9, 'change_session'),
(35, 'Can delete session', 9, 'delete_session'),
(36, 'Can view session', 9, 'view_session'),
(37, 'Can add staff', 10, 'add_staff'),
(38, 'Can change staff', 10, 'change_staff'),
(39, 'Can delete staff', 10, 'delete_staff'),
(40, 'Can view staff', 10, 'view_staff'),
(41, 'Can add student', 11, 'add_student'),
(42, 'Can change student', 11, 'change_student'),
(43, 'Can delete student', 11, 'delete_student'),
(44, 'Can view student', 11, 'view_student'),
(45, 'Can add subject', 12, 'add_subject'),
(46, 'Can change subject', 12, 'change_subject'),
(47, 'Can delete subject', 12, 'delete_subject'),
(48, 'Can view subject', 12, 'view_subject'),
(49, 'Can add student result', 13, 'add_studentresult'),
(50, 'Can change student result', 13, 'change_studentresult'),
(51, 'Can delete student result', 13, 'delete_studentresult'),
(52, 'Can view student result', 13, 'view_studentresult'),
(53, 'Can add notification student', 14, 'add_notificationstudent'),
(54, 'Can change notification student', 14, 'change_notificationstudent'),
(55, 'Can delete notification student', 14, 'delete_notificationstudent'),
(56, 'Can view notification student', 14, 'view_notificationstudent'),
(57, 'Can add notification staff', 15, 'add_notificationstaff'),
(58, 'Can change notification staff', 15, 'change_notificationstaff'),
(59, 'Can delete notification staff', 15, 'delete_notificationstaff'),
(60, 'Can view notification staff', 15, 'view_notificationstaff'),
(61, 'Can add leave report student', 16, 'add_leavereportstudent'),
(62, 'Can change leave report student', 16, 'change_leavereportstudent'),
(63, 'Can delete leave report student', 16, 'delete_leavereportstudent'),
(64, 'Can view leave report student', 16, 'view_leavereportstudent'),
(65, 'Can add leave report staff', 17, 'add_leavereportstaff'),
(66, 'Can change leave report staff', 17, 'change_leavereportstaff'),
(67, 'Can delete leave report staff', 17, 'delete_leavereportstaff'),
(68, 'Can view leave report staff', 17, 'view_leavereportstaff'),
(69, 'Can add feedback student', 18, 'add_feedbackstudent'),
(70, 'Can change feedback student', 18, 'change_feedbackstudent'),
(71, 'Can delete feedback student', 18, 'delete_feedbackstudent'),
(72, 'Can view feedback student', 18, 'view_feedbackstudent'),
(73, 'Can add feedback staff', 19, 'add_feedbackstaff'),
(74, 'Can change feedback staff', 19, 'change_feedbackstaff'),
(75, 'Can delete feedback staff', 19, 'delete_feedbackstaff'),
(76, 'Can view feedback staff', 19, 'view_feedbackstaff'),
(77, 'Can add attendance report', 20, 'add_attendancereport'),
(78, 'Can change attendance report', 20, 'change_attendancereport'),
(79, 'Can delete attendance report', 20, 'delete_attendancereport'),
(80, 'Can view attendance report', 20, 'view_attendancereport'),
(81, 'Can add admin', 21, 'add_admin'),
(82, 'Can change admin', 21, 'change_admin'),
(83, 'Can delete admin', 21, 'delete_admin'),
(84, 'Can view admin', 21, 'view_admin');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(21, 'main_app', 'admin'),
(7, 'main_app', 'attendance'),
(20, 'main_app', 'attendancereport'),
(8, 'main_app', 'course'),
(6, 'main_app', 'customuser'),
(19, 'main_app', 'feedbackstaff'),
(18, 'main_app', 'feedbackstudent'),
(17, 'main_app', 'leavereportstaff'),
(16, 'main_app', 'leavereportstudent'),
(15, 'main_app', 'notificationstaff'),
(14, 'main_app', 'notificationstudent'),
(9, 'main_app', 'session'),
(10, 'main_app', 'staff'),
(11, 'main_app', 'student'),
(13, 'main_app', 'studentresult'),
(12, 'main_app', 'subject'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-05-19 22:47:39.397203'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-05-19 22:47:45.256655'),
(3, 'auth', '0001_initial', '2023-05-19 22:47:51.412871'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-05-19 22:48:06.600551'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-05-19 22:48:07.053464'),
(6, 'auth', '0004_alter_user_username_opts', '2023-05-19 22:48:07.350331'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-05-19 22:48:07.506552'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-05-19 22:48:07.631569'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-05-19 22:48:07.787904'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-05-19 22:48:07.928495'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-05-19 22:48:08.147272'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-05-19 22:48:08.615923'),
(13, 'auth', '0011_update_proxy_permissions', '2023-05-19 22:48:08.834716'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-05-19 22:48:09.053501'),
(15, 'main_app', '0001_initial', '2023-05-19 22:48:35.678485'),
(16, 'admin', '0001_initial', '2023-05-19 22:50:08.506577'),
(17, 'admin', '0002_logentry_remove_auto_add', '2023-05-19 22:50:17.709707'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2023-05-19 22:50:18.100368'),
(19, 'sessions', '0001_initial', '2023-05-19 22:50:20.037834');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `main_app_admin`
--

CREATE TABLE `main_app_admin` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_app_admin`
--

INSERT INTO `main_app_admin` (`id`, `admin_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `main_app_attendance`
--

CREATE TABLE `main_app_attendance` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `session_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `main_app_attendancereport`
--

CREATE TABLE `main_app_attendancereport` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `attendance_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `main_app_course`
--

CREATE TABLE `main_app_course` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `main_app_customuser`
--

CREATE TABLE `main_app_customuser` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `email` varchar(254) NOT NULL,
  `user_type` varchar(1) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `address` longtext NOT NULL,
  `fcm_token` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_app_customuser`
--

INSERT INTO `main_app_customuser` (`id`, `password`, `last_login`, `is_superuser`, `first_name`, `last_name`, `is_staff`, `is_active`, `date_joined`, `email`, `user_type`, `gender`, `profile_pic`, `address`, `fcm_token`, `created_at`, `updated_at`) VALUES
(1, 'pbkdf2_sha256$216000$2rXgtyF0mbCG$GBBESRV/8mVzQysYlbpP8rVuckXBFsAfvhHsMJiaVhg=', '2023-05-19 23:14:39.886330', 1, '', '', 1, 1, '2023-05-19 22:54:41.421339', 'bghz@gmail.com', '1', '', '', '', '', '2023-05-19 22:54:42.468216', '2023-05-19 22:54:42.468216'),
(2, 'pbkdf2_sha256$216000$0asqRCEqcGbz$OlERfGq5ixUIiDh8PzGmrkUnHJdlCauTOOr3WzfQ0so=', NULL, 1, '', '', 1, 1, '2023-05-19 23:12:20.568282', 'bghz1@gmail.com', '1', '', '', '', '', '2023-05-19 23:12:21.599473', '2023-05-19 23:12:21.599473');

-- --------------------------------------------------------

--
-- Table structure for table `main_app_customuser_groups`
--

CREATE TABLE `main_app_customuser_groups` (
  `id` int(11) NOT NULL,
  `customuser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `main_app_customuser_user_permissions`
--

CREATE TABLE `main_app_customuser_user_permissions` (
  `id` int(11) NOT NULL,
  `customuser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `main_app_feedbackstaff`
--

CREATE TABLE `main_app_feedbackstaff` (
  `id` int(11) NOT NULL,
  `feedback` longtext NOT NULL,
  `reply` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `main_app_feedbackstudent`
--

CREATE TABLE `main_app_feedbackstudent` (
  `id` int(11) NOT NULL,
  `feedback` longtext NOT NULL,
  `reply` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `main_app_leavereportstaff`
--

CREATE TABLE `main_app_leavereportstaff` (
  `id` int(11) NOT NULL,
  `date` varchar(60) NOT NULL,
  `message` longtext NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `main_app_leavereportstudent`
--

CREATE TABLE `main_app_leavereportstudent` (
  `id` int(11) NOT NULL,
  `date` varchar(60) NOT NULL,
  `message` longtext NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `main_app_notificationstaff`
--

CREATE TABLE `main_app_notificationstaff` (
  `id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `main_app_notificationstudent`
--

CREATE TABLE `main_app_notificationstudent` (
  `id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `main_app_session`
--

CREATE TABLE `main_app_session` (
  `id` int(11) NOT NULL,
  `start_year` date NOT NULL,
  `end_year` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `main_app_staff`
--

CREATE TABLE `main_app_staff` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `main_app_student`
--

CREATE TABLE `main_app_student` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `main_app_studentresult`
--

CREATE TABLE `main_app_studentresult` (
  `id` int(11) NOT NULL,
  `test` double NOT NULL,
  `exam` double NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `main_app_subject`
--

CREATE TABLE `main_app_subject` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `course_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_main_app_customuser_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

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
-- Indexes for table `main_app_admin`
--
ALTER TABLE `main_app_admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`);

--
-- Indexes for table `main_app_attendance`
--
ALTER TABLE `main_app_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_app_attendance_session_id_b5e3071a_fk_main_app_session_id` (`session_id`),
  ADD KEY `main_app_attendance_subject_id_4de67085_fk_main_app_subject_id` (`subject_id`);

--
-- Indexes for table `main_app_attendancereport`
--
ALTER TABLE `main_app_attendancereport`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_app_attendancer_attendance_id_8102922e_fk_main_app_` (`attendance_id`),
  ADD KEY `main_app_attendancer_student_id_0957b64c_fk_main_app_` (`student_id`);

--
-- Indexes for table `main_app_course`
--
ALTER TABLE `main_app_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_app_customuser`
--
ALTER TABLE `main_app_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `main_app_customuser_groups`
--
ALTER TABLE `main_app_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `main_app_customuser_groups_customuser_id_group_id_6dd2b9a7_uniq` (`customuser_id`,`group_id`),
  ADD KEY `main_app_customuser_groups_group_id_9ee498f4_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `main_app_customuser_user_permissions`
--
ALTER TABLE `main_app_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `main_app_customuser_user_customuser_id_permission_0bd2d638_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `main_app_customuser__permission_id_595e7ce3_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `main_app_feedbackstaff`
--
ALTER TABLE `main_app_feedbackstaff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_app_feedbackstaff_staff_id_b20848bb_fk_main_app_staff_id` (`staff_id`);

--
-- Indexes for table `main_app_feedbackstudent`
--
ALTER TABLE `main_app_feedbackstudent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_app_feedbackstu_student_id_7509652e_fk_main_app_` (`student_id`);

--
-- Indexes for table `main_app_leavereportstaff`
--
ALTER TABLE `main_app_leavereportstaff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_app_leavereportstaff_staff_id_9c69ba31_fk_main_app_staff_id` (`staff_id`);

--
-- Indexes for table `main_app_leavereportstudent`
--
ALTER TABLE `main_app_leavereportstudent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_app_leavereport_student_id_2d19cc01_fk_main_app_` (`student_id`);

--
-- Indexes for table `main_app_notificationstaff`
--
ALTER TABLE `main_app_notificationstaff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_app_notificatio_staff_id_4170f50c_fk_main_app_` (`staff_id`);

--
-- Indexes for table `main_app_notificationstudent`
--
ALTER TABLE `main_app_notificationstudent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_app_notificatio_student_id_dcbe1f25_fk_main_app_` (`student_id`);

--
-- Indexes for table `main_app_session`
--
ALTER TABLE `main_app_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_app_staff`
--
ALTER TABLE `main_app_staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`),
  ADD KEY `main_app_staff_course_id_b4d19096_fk_main_app_course_id` (`course_id`);

--
-- Indexes for table `main_app_student`
--
ALTER TABLE `main_app_student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`),
  ADD KEY `main_app_student_course_id_8a4c712f_fk_main_app_course_id` (`course_id`),
  ADD KEY `main_app_student_session_id_8f220969_fk_main_app_session_id` (`session_id`);

--
-- Indexes for table `main_app_studentresult`
--
ALTER TABLE `main_app_studentresult`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_app_studentresu_student_id_e57bb0c5_fk_main_app_` (`student_id`),
  ADD KEY `main_app_studentresu_subject_id_6abff4dc_fk_main_app_` (`subject_id`);

--
-- Indexes for table `main_app_subject`
--
ALTER TABLE `main_app_subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_app_subject_course_id_e94ba4e3_fk_main_app_course_id` (`course_id`),
  ADD KEY `main_app_subject_staff_id_f1d6d399_fk_main_app_staff_id` (`staff_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `main_app_admin`
--
ALTER TABLE `main_app_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_app_attendance`
--
ALTER TABLE `main_app_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_app_attendancereport`
--
ALTER TABLE `main_app_attendancereport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_app_course`
--
ALTER TABLE `main_app_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_app_customuser`
--
ALTER TABLE `main_app_customuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_app_customuser_groups`
--
ALTER TABLE `main_app_customuser_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_app_customuser_user_permissions`
--
ALTER TABLE `main_app_customuser_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_app_feedbackstaff`
--
ALTER TABLE `main_app_feedbackstaff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_app_feedbackstudent`
--
ALTER TABLE `main_app_feedbackstudent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_app_leavereportstaff`
--
ALTER TABLE `main_app_leavereportstaff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_app_leavereportstudent`
--
ALTER TABLE `main_app_leavereportstudent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_app_notificationstaff`
--
ALTER TABLE `main_app_notificationstaff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_app_notificationstudent`
--
ALTER TABLE `main_app_notificationstudent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_app_session`
--
ALTER TABLE `main_app_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_app_staff`
--
ALTER TABLE `main_app_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_app_student`
--
ALTER TABLE `main_app_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_app_studentresult`
--
ALTER TABLE `main_app_studentresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_app_subject`
--
ALTER TABLE `main_app_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_main_app_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `main_app_customuser` (`id`);

--
-- Constraints for table `main_app_admin`
--
ALTER TABLE `main_app_admin`
  ADD CONSTRAINT `main_app_admin_admin_id_677566c2_fk_main_app_customuser_id` FOREIGN KEY (`admin_id`) REFERENCES `main_app_customuser` (`id`);

--
-- Constraints for table `main_app_attendance`
--
ALTER TABLE `main_app_attendance`
  ADD CONSTRAINT `main_app_attendance_session_id_b5e3071a_fk_main_app_session_id` FOREIGN KEY (`session_id`) REFERENCES `main_app_session` (`id`),
  ADD CONSTRAINT `main_app_attendance_subject_id_4de67085_fk_main_app_subject_id` FOREIGN KEY (`subject_id`) REFERENCES `main_app_subject` (`id`);

--
-- Constraints for table `main_app_attendancereport`
--
ALTER TABLE `main_app_attendancereport`
  ADD CONSTRAINT `main_app_attendancer_attendance_id_8102922e_fk_main_app_` FOREIGN KEY (`attendance_id`) REFERENCES `main_app_attendance` (`id`),
  ADD CONSTRAINT `main_app_attendancer_student_id_0957b64c_fk_main_app_` FOREIGN KEY (`student_id`) REFERENCES `main_app_student` (`id`);

--
-- Constraints for table `main_app_customuser_groups`
--
ALTER TABLE `main_app_customuser_groups`
  ADD CONSTRAINT `main_app_customuser__customuser_id_9d75aa94_fk_main_app_` FOREIGN KEY (`customuser_id`) REFERENCES `main_app_customuser` (`id`),
  ADD CONSTRAINT `main_app_customuser_groups_group_id_9ee498f4_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `main_app_customuser_user_permissions`
--
ALTER TABLE `main_app_customuser_user_permissions`
  ADD CONSTRAINT `main_app_customuser__customuser_id_b28fdeb1_fk_main_app_` FOREIGN KEY (`customuser_id`) REFERENCES `main_app_customuser` (`id`),
  ADD CONSTRAINT `main_app_customuser__permission_id_595e7ce3_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `main_app_feedbackstaff`
--
ALTER TABLE `main_app_feedbackstaff`
  ADD CONSTRAINT `main_app_feedbackstaff_staff_id_b20848bb_fk_main_app_staff_id` FOREIGN KEY (`staff_id`) REFERENCES `main_app_staff` (`id`);

--
-- Constraints for table `main_app_feedbackstudent`
--
ALTER TABLE `main_app_feedbackstudent`
  ADD CONSTRAINT `main_app_feedbackstu_student_id_7509652e_fk_main_app_` FOREIGN KEY (`student_id`) REFERENCES `main_app_student` (`id`);

--
-- Constraints for table `main_app_leavereportstaff`
--
ALTER TABLE `main_app_leavereportstaff`
  ADD CONSTRAINT `main_app_leavereportstaff_staff_id_9c69ba31_fk_main_app_staff_id` FOREIGN KEY (`staff_id`) REFERENCES `main_app_staff` (`id`);

--
-- Constraints for table `main_app_leavereportstudent`
--
ALTER TABLE `main_app_leavereportstudent`
  ADD CONSTRAINT `main_app_leavereport_student_id_2d19cc01_fk_main_app_` FOREIGN KEY (`student_id`) REFERENCES `main_app_student` (`id`);

--
-- Constraints for table `main_app_notificationstaff`
--
ALTER TABLE `main_app_notificationstaff`
  ADD CONSTRAINT `main_app_notificatio_staff_id_4170f50c_fk_main_app_` FOREIGN KEY (`staff_id`) REFERENCES `main_app_staff` (`id`);

--
-- Constraints for table `main_app_notificationstudent`
--
ALTER TABLE `main_app_notificationstudent`
  ADD CONSTRAINT `main_app_notificatio_student_id_dcbe1f25_fk_main_app_` FOREIGN KEY (`student_id`) REFERENCES `main_app_student` (`id`);

--
-- Constraints for table `main_app_staff`
--
ALTER TABLE `main_app_staff`
  ADD CONSTRAINT `main_app_staff_admin_id_831efa54_fk_main_app_customuser_id` FOREIGN KEY (`admin_id`) REFERENCES `main_app_customuser` (`id`),
  ADD CONSTRAINT `main_app_staff_course_id_b4d19096_fk_main_app_course_id` FOREIGN KEY (`course_id`) REFERENCES `main_app_course` (`id`);

--
-- Constraints for table `main_app_student`
--
ALTER TABLE `main_app_student`
  ADD CONSTRAINT `main_app_student_admin_id_c8e987bb_fk_main_app_customuser_id` FOREIGN KEY (`admin_id`) REFERENCES `main_app_customuser` (`id`),
  ADD CONSTRAINT `main_app_student_course_id_8a4c712f_fk_main_app_course_id` FOREIGN KEY (`course_id`) REFERENCES `main_app_course` (`id`),
  ADD CONSTRAINT `main_app_student_session_id_8f220969_fk_main_app_session_id` FOREIGN KEY (`session_id`) REFERENCES `main_app_session` (`id`);

--
-- Constraints for table `main_app_studentresult`
--
ALTER TABLE `main_app_studentresult`
  ADD CONSTRAINT `main_app_studentresu_student_id_e57bb0c5_fk_main_app_` FOREIGN KEY (`student_id`) REFERENCES `main_app_student` (`id`),
  ADD CONSTRAINT `main_app_studentresu_subject_id_6abff4dc_fk_main_app_` FOREIGN KEY (`subject_id`) REFERENCES `main_app_subject` (`id`);

--
-- Constraints for table `main_app_subject`
--
ALTER TABLE `main_app_subject`
  ADD CONSTRAINT `main_app_subject_course_id_e94ba4e3_fk_main_app_course_id` FOREIGN KEY (`course_id`) REFERENCES `main_app_course` (`id`),
  ADD CONSTRAINT `main_app_subject_staff_id_f1d6d399_fk_main_app_staff_id` FOREIGN KEY (`staff_id`) REFERENCES `main_app_staff` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
