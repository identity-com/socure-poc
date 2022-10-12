-- phpMyAdmin SQL Dump
-- version 4.9.10
-- https://www.phpmyadmin.net/
--
-- Host: pod-120263.wpengine.com:13306
-- Generation Time: Oct 12, 2022 at 01:59 PM
-- Server version: 5.7.39-42-log
-- PHP Version: 7.2.24-0ubuntu0.18.04.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(70, 'woocommerce_cleanup_draft_orders', 'complete', '2022-09-12 06:57:03', '2022-09-12 06:57:03', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1662965823;s:18:\"\0*\0first_timestamp\";i:1660654979;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1662965823;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-09-13 12:46:49', '2022-09-13 12:46:49', 0, NULL),
(71, 'woocommerce_subscriptions_privacy_anonymize_ended_subscriptions', 'complete', '2022-09-11 06:57:07', '2022-09-11 06:57:07', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1662879427;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1662879427;}', 0, 1, '2022-09-13 12:46:49', '2022-09-13 12:46:49', 0, NULL),
(72, 'woocommerce_cleanup_draft_orders', 'complete', '2022-09-14 12:46:49', '2022-09-14 12:46:49', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1663159609;s:18:\"\0*\0first_timestamp\";i:1660654979;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1663159609;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-09-15 04:05:20', '2022-09-15 04:05:20', 0, NULL),
(73, 'woocommerce_subscriptions_privacy_anonymize_ended_subscriptions', 'complete', '2022-09-13 12:46:52', '2022-09-13 12:46:52', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663073212;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663073212;}', 0, 1, '2022-09-13 12:46:52', '2022-09-13 12:46:52', 0, NULL),
(74, 'woocommerce_subscriptions_privacy_anonymize_ended_subscriptions', 'complete', '2022-09-14 05:47:55', '2022-09-14 05:47:55', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663134475;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663134475;}', 0, 1, '2022-09-14 05:47:56', '2022-09-14 05:47:56', 0, NULL),
(75, 'woocommerce_cleanup_draft_orders', 'complete', '2022-09-16 04:05:20', '2022-09-16 04:05:20', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1663301120;s:18:\"\0*\0first_timestamp\";i:1660654979;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1663301120;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-09-16 22:03:35', '2022-09-16 22:03:35', 0, NULL),
(76, 'woocommerce_subscriptions_privacy_anonymize_ended_subscriptions', 'complete', '2022-09-15 04:05:21', '2022-09-15 04:05:21', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663214721;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663214721;}', 0, 1, '2022-09-15 04:05:23', '2022-09-15 04:05:23', 0, NULL),
(77, 'woocommerce_cleanup_draft_orders', 'complete', '2022-09-17 22:03:35', '2022-09-17 22:03:35', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1663452215;s:18:\"\0*\0first_timestamp\";i:1660654979;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1663452215;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-09-20 10:00:18', '2022-09-20 10:00:18', 0, NULL),
(78, 'woocommerce_subscriptions_privacy_anonymize_ended_subscriptions', 'complete', '2022-09-16 22:03:38', '2022-09-16 22:03:38', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663365818;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663365818;}', 0, 1, '2022-09-16 22:03:39', '2022-09-16 22:03:39', 0, NULL),
(79, 'woocommerce_cleanup_draft_orders', 'complete', '2022-09-21 10:00:18', '2022-09-21 10:00:18', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1663754418;s:18:\"\0*\0first_timestamp\";i:1660654979;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1663754418;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-09-21 22:31:18', '2022-09-21 22:31:18', 0, NULL),
(80, 'woocommerce_subscriptions_privacy_anonymize_ended_subscriptions', 'complete', '2022-09-20 10:00:22', '2022-09-20 10:00:22', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663668022;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663668022;}', 0, 1, '2022-09-20 10:06:48', '2022-09-20 10:06:48', 0, NULL),
(81, 'wc-admin_import_orders', 'complete', '2022-09-20 10:06:49', '2022-09-20 10:06:49', '[60]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663668409;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663668409;}', 3, 1, '2022-09-20 10:06:54', '2022-09-20 10:06:54', 0, NULL),
(82, 'wc-admin_import_orders', 'complete', '2022-09-20 10:15:09', '2022-09-20 10:15:09', '[61]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663668909;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663668909;}', 3, 1, '2022-09-20 10:22:37', '2022-09-20 10:22:37', 0, NULL),
(83, 'wc-admin_import_orders', 'complete', '2022-09-20 10:34:22', '2022-09-20 10:34:22', '[62]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663670062;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663670062;}', 3, 1, '2022-09-20 10:34:55', '2022-09-20 10:34:55', 0, NULL),
(84, 'wc-admin_import_orders', 'complete', '2022-09-20 11:08:24', '2022-09-20 11:08:24', '[63]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663672104;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663672104;}', 3, 1, '2022-09-20 11:08:24', '2022-09-20 11:08:24', 0, NULL),
(85, 'wc-admin_import_orders', 'complete', '2022-09-20 11:10:32', '2022-09-20 11:10:32', '[63]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663672232;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663672232;}', 3, 1, '2022-09-20 11:19:06', '2022-09-20 11:19:06', 0, NULL),
(86, 'wc-admin_import_orders', 'complete', '2022-09-20 11:42:30', '2022-09-20 11:42:30', '[64]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663674150;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663674150;}', 3, 1, '2022-09-20 11:42:30', '2022-09-20 11:42:30', 0, NULL),
(87, 'wc-admin_import_orders', 'complete', '2022-09-20 11:45:17', '2022-09-20 11:45:17', '[64]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663674317;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663674317;}', 3, 1, '2022-09-20 12:35:06', '2022-09-20 12:35:06', 0, NULL),
(88, 'wc-admin_import_orders', 'complete', '2022-09-20 12:36:40', '2022-09-20 12:36:40', '[65]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663677400;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663677400;}', 3, 1, '2022-09-20 12:36:41', '2022-09-20 12:36:41', 0, NULL),
(89, 'wc-admin_import_orders', 'complete', '2022-09-20 12:39:10', '2022-09-20 12:39:10', '[65]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663677550;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663677550;}', 3, 1, '2022-09-20 12:58:59', '2022-09-20 12:58:59', 0, NULL),
(90, 'wc-admin_import_orders', 'complete', '2022-09-20 13:00:12', '2022-09-20 13:00:12', '[66]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663678812;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663678812;}', 3, 1, '2022-09-20 13:00:13', '2022-09-20 13:00:13', 0, NULL),
(91, 'wc-admin_import_orders', 'complete', '2022-09-20 13:00:49', '2022-09-20 13:00:49', '[67]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663678849;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663678849;}', 3, 1, '2022-09-20 13:01:02', '2022-09-20 13:01:02', 0, NULL),
(92, 'woocommerce_subscriptions_privacy_anonymize_ended_subscriptions', 'complete', '2022-09-20 13:28:39', '2022-09-20 13:28:39', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663680519;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663680519;}', 0, 1, '2022-09-20 13:28:41', '2022-09-20 13:28:41', 0, NULL),
(93, 'wc-admin_import_orders', 'complete', '2022-09-20 15:07:08', '2022-09-20 15:07:08', '[68]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663686428;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663686428;}', 3, 1, '2022-09-20 15:07:10', '2022-09-20 15:07:10', 0, NULL),
(94, 'wc-admin_import_orders', 'complete', '2022-09-20 15:08:31', '2022-09-20 15:08:31', '[69]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663686511;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663686511;}', 3, 1, '2022-09-20 15:13:20', '2022-09-20 15:13:20', 0, NULL),
(95, 'wc-admin_import_orders', 'complete', '2022-09-20 15:13:29', '2022-09-20 15:13:29', '[69]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663686809;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663686809;}', 3, 1, '2022-09-20 15:18:19', '2022-09-20 15:18:19', 0, NULL),
(96, 'wc-admin_import_customers', 'complete', '2022-09-20 16:39:23', '2022-09-20 16:39:23', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663691963;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663691963;}', 3, 1, '2022-09-20 16:40:53', '2022-09-20 16:40:53', 0, NULL),
(97, 'wc-admin_import_customers', 'complete', '2022-09-21 06:51:21', '2022-09-21 06:51:21', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663743081;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663743081;}', 3, 1, '2022-09-21 06:51:55', '2022-09-21 06:51:55', 0, NULL),
(98, 'woocommerce_cleanup_draft_orders', 'complete', '2022-09-22 22:31:18', '2022-09-22 22:31:18', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1663885878;s:18:\"\0*\0first_timestamp\";i:1660654979;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1663885878;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-09-26 08:24:08', '2022-09-26 08:24:08', 0, NULL),
(99, 'woocommerce_subscriptions_privacy_anonymize_ended_subscriptions', 'complete', '2022-09-21 22:31:21', '2022-09-21 22:31:21', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1663799481;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1663799481;}', 0, 1, '2022-09-21 22:31:21', '2022-09-21 22:31:21', 0, NULL),
(100, 'woocommerce_cleanup_draft_orders', 'complete', '2022-09-27 08:24:08', '2022-09-27 08:24:08', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1664267048;s:18:\"\0*\0first_timestamp\";i:1660654979;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1664267048;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-09-27 13:40:41', '2022-09-27 13:40:41', 0, NULL),
(101, 'woocommerce_subscriptions_privacy_anonymize_ended_subscriptions', 'complete', '2022-09-26 08:24:12', '2022-09-26 08:24:12', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1664180652;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1664180652;}', 0, 1, '2022-09-26 08:24:13', '2022-09-26 08:24:13', 0, NULL),
(102, 'wc-admin_import_orders', 'complete', '2022-09-26 08:24:51', '2022-09-26 08:24:51', '[71]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1664180691;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1664180691;}', 3, 1, '2022-09-26 08:41:05', '2022-09-26 08:41:05', 0, NULL),
(103, 'woocommerce_subscriptions_privacy_anonymize_ended_subscriptions', 'complete', '2022-09-27 05:29:35', '2022-09-27 05:29:35', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1664256575;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1664256575;}', 0, 1, '2022-09-27 05:29:37', '2022-09-27 05:29:37', 0, NULL),
(104, 'woocommerce_cleanup_draft_orders', 'complete', '2022-09-28 13:40:41', '2022-09-28 13:40:41', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1664372441;s:18:\"\0*\0first_timestamp\";i:1660654979;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1664372441;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-09-29 13:44:56', '2022-09-29 13:44:56', 0, NULL),
(105, 'woocommerce_subscriptions_privacy_anonymize_ended_subscriptions', 'complete', '2022-09-27 13:40:43', '2022-09-27 13:40:43', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1664286043;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1664286043;}', 0, 1, '2022-09-27 13:40:43', '2022-09-27 13:40:43', 0, NULL),
(106, 'woocommerce_cleanup_draft_orders', 'complete', '2022-09-30 13:44:56', '2022-09-30 13:44:56', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1664545496;s:18:\"\0*\0first_timestamp\";i:1660654979;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1664545496;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-09-30 13:45:45', '2022-09-30 13:45:45', 0, NULL),
(107, 'woocommerce_subscriptions_privacy_anonymize_ended_subscriptions', 'complete', '2022-09-29 13:45:05', '2022-09-29 13:45:05', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1664459105;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1664459105;}', 0, 1, '2022-09-29 13:45:07', '2022-09-29 13:45:07', 0, NULL),
(108, 'wc-admin_import_orders', 'complete', '2022-09-29 13:48:17', '2022-09-29 13:48:17', '[72]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1664459297;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1664459297;}', 3, 1, '2022-09-29 13:48:21', '2022-09-29 13:48:21', 0, NULL),
(109, 'wc-admin_import_orders', 'complete', '2022-09-29 14:12:50', '2022-09-29 14:12:50', '[73]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1664460770;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1664460770;}', 3, 1, '2022-09-30 11:25:14', '2022-09-30 11:25:14', 0, NULL),
(110, 'wc-admin_import_customers', 'complete', '2022-09-30 11:29:40', '2022-09-30 11:29:40', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1664537380;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1664537380;}', 3, 1, '2022-09-30 11:29:54', '2022-09-30 11:29:54', 0, NULL),
(111, 'woocommerce_update_marketplace_suggestions', 'complete', '2022-09-30 11:34:59', '2022-09-30 11:34:59', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1664537699;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1664537699;}', 0, 1, '2022-09-30 11:35:43', '2022-09-30 11:35:43', 0, NULL),
(112, 'woocommerce_subscriptions_privacy_anonymize_ended_subscriptions', 'complete', '2022-09-30 13:03:11', '2022-09-30 13:03:11', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1664542991;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1664542991;}', 0, 1, '2022-09-30 13:04:10', '2022-09-30 13:04:10', 0, NULL),
(113, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-09-30 13:42:47', '2022-09-30 13:42:47', '[35,3]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1664545367;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1664545367;}', 2, 1, '2022-09-30 13:43:03', '2022-09-30 13:43:03', 0, NULL),
(114, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-09-30 13:42:47', '2022-09-30 13:42:47', '[34,3]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1664545367;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1664545367;}', 2, 1, '2022-09-30 13:43:03', '2022-09-30 13:43:03', 0, NULL),
(115, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-09-30 13:42:47', '2022-09-30 13:42:47', '[25,3]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1664545367;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1664545367;}', 2, 1, '2022-09-30 13:43:03', '2022-09-30 13:43:03', 0, NULL),
(116, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-09-30 13:42:47', '2022-09-30 13:42:47', '[24,3]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1664545367;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1664545367;}', 2, 1, '2022-09-30 13:43:03', '2022-09-30 13:43:03', 0, NULL),
(117, 'adjust_download_permissions', 'complete', '2022-09-30 13:43:32', '2022-09-30 13:43:32', '[12]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1664545412;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1664545412;}', 0, 1, '2022-09-30 13:44:34', '2022-09-30 13:44:34', 0, NULL),
(118, 'woocommerce_cleanup_draft_orders', 'complete', '2022-10-01 13:45:45', '2022-10-01 13:45:45', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1664631945;s:18:\"\0*\0first_timestamp\";i:1660654979;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1664631945;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-10-03 04:35:53', '2022-10-03 04:35:53', 0, NULL),
(119, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-09-30 14:15:09', '2022-09-30 14:15:09', '[32,3]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1664547309;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1664547309;}', 2, 1, '2022-09-30 14:15:10', '2022-09-30 14:15:10', 0, NULL),
(120, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-09-30 14:15:09', '2022-09-30 14:15:09', '[14,3]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1664547309;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1664547309;}', 2, 1, '2022-09-30 14:15:10', '2022-09-30 14:15:10', 0, NULL),
(121, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-09-30 14:15:09', '2022-09-30 14:15:09', '[17,3]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1664547309;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1664547309;}', 2, 1, '2022-09-30 14:15:10', '2022-09-30 14:15:10', 0, NULL),
(122, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-09-30 14:16:02', '2022-09-30 14:16:02', '[33,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1664547362;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1664547362;}', 2, 1, '2022-09-30 14:16:11', '2022-09-30 14:16:11', 0, NULL),
(123, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-09-30 14:16:23', '2022-09-30 14:16:23', '[16,3]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1664547383;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1664547383;}', 2, 1, '2022-09-30 14:16:54', '2022-09-30 14:16:54', 0, NULL),
(124, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-09-30 14:17:52', '2022-09-30 14:17:52', '[33,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1664547472;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1664547472;}', 2, 1, '2022-09-30 14:17:53', '2022-09-30 14:17:53', 0, NULL),
(125, 'wc-admin_import_orders', 'complete', '2022-09-30 16:31:54', '2022-09-30 16:31:54', '[97]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1664555514;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1664555514;}', 3, 1, '2022-09-30 16:31:57', '2022-09-30 16:31:57', 0, NULL),
(126, 'woocommerce_cleanup_draft_orders', 'complete', '2022-10-04 04:35:53', '2022-10-04 04:35:53', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1664858153;s:18:\"\0*\0first_timestamp\";i:1660654979;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1664858153;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-10-04 22:42:34', '2022-10-04 22:42:34', 0, NULL),
(127, 'woocommerce_subscriptions_privacy_anonymize_ended_subscriptions', 'complete', '2022-10-03 04:35:57', '2022-10-03 04:35:57', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1664771757;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1664771757;}', 0, 1, '2022-10-03 04:35:58', '2022-10-03 04:35:58', 0, NULL),
(128, 'wc-admin_import_orders', 'complete', '2022-10-03 04:36:56', '2022-10-03 04:36:56', '[98]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1664771816;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1664771816;}', 3, 1, '2022-10-04 22:42:34', '2022-10-04 22:42:34', 0, NULL),
(129, 'woocommerce_cleanup_draft_orders', 'complete', '2022-10-05 22:42:34', '2022-10-05 22:42:34', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1665009754;s:18:\"\0*\0first_timestamp\";i:1660654979;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1665009754;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-10-06 15:17:37', '2022-10-06 15:17:37', 0, NULL),
(130, 'woocommerce_subscriptions_privacy_anonymize_ended_subscriptions', 'complete', '2022-10-04 22:42:36', '2022-10-04 22:42:36', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1664923356;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1664923356;}', 0, 1, '2022-10-04 22:42:37', '2022-10-04 22:42:37', 0, NULL),
(131, 'wc-admin_import_customers', 'complete', '2022-10-05 14:56:41', '2022-10-05 14:56:41', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1664981801;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1664981801;}', 3, 1, '2022-10-05 14:58:06', '2022-10-05 14:58:06', 0, NULL),
(132, 'woocommerce_subscriptions_privacy_anonymize_ended_subscriptions', 'complete', '2022-10-05 14:59:26', '2022-10-05 14:59:26', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1664981966;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1664981966;}', 0, 1, '2022-10-05 14:59:50', '2022-10-05 14:59:50', 0, NULL),
(133, 'woocommerce_cleanup_draft_orders', 'complete', '2022-10-07 15:17:37', '2022-10-07 15:17:37', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1665155857;s:18:\"\0*\0first_timestamp\";i:1660654979;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1665155857;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-10-11 10:06:03', '2022-10-11 10:06:03', 0, NULL),
(134, 'woocommerce_subscriptions_privacy_anonymize_ended_subscriptions', 'complete', '2022-10-06 15:17:42', '2022-10-06 15:17:42', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665069462;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665069462;}', 0, 1, '2022-10-06 15:17:44', '2022-10-06 15:17:44', 0, NULL),
(135, 'wc-admin_import_orders', 'complete', '2022-10-06 15:19:40', '2022-10-06 15:19:40', '[99]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665069580;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665069580;}', 3, 1, '2022-10-06 15:19:44', '2022-10-06 15:19:44', 0, NULL),
(136, 'woocommerce_cleanup_draft_orders', 'complete', '2022-10-12 10:06:03', '2022-10-12 10:06:03', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1665569163;s:18:\"\0*\0first_timestamp\";i:1660654979;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1665569163;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 1, '2022-10-12 11:34:52', '2022-10-12 11:34:52', 0, NULL),
(137, 'woocommerce_subscriptions_privacy_anonymize_ended_subscriptions', 'complete', '2022-10-11 10:06:08', '2022-10-11 10:06:08', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665482768;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665482768;}', 0, 1, '2022-10-11 10:06:10', '2022-10-11 10:06:10', 0, NULL),
(138, 'wc-admin_import_orders', 'complete', '2022-10-11 10:06:13', '2022-10-11 10:06:13', '[60]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665482773;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665482773;}', 3, 1, '2022-10-11 10:06:17', '2022-10-11 10:06:17', 0, NULL),
(139, 'wc-admin_import_orders', 'complete', '2022-10-11 10:06:14', '2022-10-11 10:06:14', '[61]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665482774;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665482774;}', 3, 1, '2022-10-11 10:06:17', '2022-10-11 10:06:17', 0, NULL),
(140, 'wc-admin_import_orders', 'complete', '2022-10-11 10:06:14', '2022-10-11 10:06:14', '[66]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665482774;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665482774;}', 3, 1, '2022-10-11 10:06:17', '2022-10-11 10:06:17', 0, NULL),
(141, 'wc-admin_import_orders', 'complete', '2022-10-11 10:06:14', '2022-10-11 10:06:14', '[67]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665482774;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665482774;}', 3, 1, '2022-10-11 10:06:17', '2022-10-11 10:06:17', 0, NULL),
(142, 'wc-admin_import_orders', 'complete', '2022-10-11 10:06:14', '2022-10-11 10:06:14', '[68]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665482774;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665482774;}', 3, 1, '2022-10-11 10:06:17', '2022-10-11 10:06:17', 0, NULL),
(143, 'wc-admin_import_orders', 'complete', '2022-10-11 10:06:14', '2022-10-11 10:06:14', '[72]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665482774;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665482774;}', 3, 1, '2022-10-11 10:06:17', '2022-10-11 10:06:17', 0, NULL),
(144, 'wc-admin_import_orders', 'complete', '2022-10-11 10:06:14', '2022-10-11 10:06:14', '[73]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665482774;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665482774;}', 3, 1, '2022-10-11 10:06:17', '2022-10-11 10:06:17', 0, NULL),
(145, 'wc-admin_import_orders', 'complete', '2022-10-11 10:06:14', '2022-10-11 10:06:14', '[97]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665482774;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665482774;}', 3, 1, '2022-10-11 10:06:17', '2022-10-11 10:06:17', 0, NULL),
(146, 'wc-admin_import_orders', 'complete', '2022-10-11 10:06:14', '2022-10-11 10:06:14', '[98]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665482774;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665482774;}', 3, 1, '2022-10-11 10:06:17', '2022-10-11 10:06:17', 0, NULL),
(147, 'woocommerce_subscriptions_privacy_anonymize_ended_subscriptions', 'complete', '2022-10-11 10:06:22', '2022-10-11 10:06:22', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665482782;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665482782;}', 0, 1, '2022-10-11 10:07:26', '2022-10-11 10:07:26', 0, NULL),
(148, 'wc-admin_import_customers', 'complete', '2022-10-11 10:06:38', '2022-10-11 10:06:38', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665482798;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665482798;}', 3, 1, '2022-10-11 10:07:26', '2022-10-11 10:07:26', 0, NULL),
(149, 'wc-admin_import_orders', 'complete', '2022-10-11 11:29:18', '2022-10-11 11:29:18', '[106]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665487758;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665487758;}', 3, 1, '2022-10-11 11:29:23', '2022-10-11 11:29:23', 0, NULL),
(150, 'woocommerce_subscriptions_privacy_anonymize_ended_subscriptions', 'complete', '2022-10-11 16:37:27', '2022-10-11 16:37:27', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665506247;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665506247;}', 0, 1, '2022-10-11 16:37:28', '2022-10-11 16:37:28', 0, NULL),
(151, 'woocommerce_cleanup_draft_orders', 'pending', '2022-10-13 11:34:52', '2022-10-13 11:34:52', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1665660892;s:18:\"\0*\0first_timestamp\";i:1660654979;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1665660892;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(152, 'wc-admin_import_customers', 'complete', '2022-10-12 11:36:18', '2022-10-12 11:36:18', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665574578;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665574578;}', 3, 1, '2022-10-12 11:37:22', '2022-10-12 11:37:22', 0, NULL),
(153, 'woocommerce_update_marketplace_suggestions', 'complete', '2022-10-12 11:37:51', '2022-10-12 11:37:51', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665574671;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665574671;}', 0, 1, '2022-10-12 11:37:57', '2022-10-12 11:37:57', 0, NULL),
(154, 'woocommerce_update_marketplace_suggestions', 'complete', '2022-10-12 11:37:51', '2022-10-12 11:37:51', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665574671;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665574671;}', 0, 1, '2022-10-12 11:37:57', '2022-10-12 11:37:57', 0, NULL),
(155, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-12 11:40:20', '2022-10-12 11:40:20', '[33,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665574820;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665574820;}', 2, 1, '2022-10-12 11:40:38', '2022-10-12 11:40:38', 0, NULL),
(156, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-12 11:41:28', '2022-10-12 11:41:28', '[18,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665574888;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665574888;}', 2, 1, '2022-10-12 11:41:56', '2022-10-12 11:41:56', 0, NULL),
(157, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-12 11:41:57', '2022-10-12 11:41:57', '[18,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665574917;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665574917;}', 2, 1, '2022-10-12 11:41:58', '2022-10-12 11:41:58', 0, NULL),
(158, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-12 11:43:03', '2022-10-12 11:43:03', '[21,3]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665574983;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665574983;}', 2, 1, '2022-10-12 11:43:04', '2022-10-12 11:43:04', 0, NULL),
(159, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-12 11:43:13', '2022-10-12 11:43:13', '[36,3]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665574993;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665574993;}', 2, 1, '2022-10-12 11:44:16', '2022-10-12 11:44:16', 0, NULL),
(160, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-12 11:43:13', '2022-10-12 11:43:13', '[29,3]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665574993;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665574993;}', 2, 1, '2022-10-12 11:44:16', '2022-10-12 11:44:16', 0, NULL),
(161, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-12 11:43:13', '2022-10-12 11:43:13', '[30,3]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665574993;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665574993;}', 2, 1, '2022-10-12 11:44:16', '2022-10-12 11:44:16', 0, NULL),
(162, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-12 11:43:13', '2022-10-12 11:43:13', '[31,3]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665574993;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665574993;}', 2, 1, '2022-10-12 11:44:16', '2022-10-12 11:44:16', 0, NULL),
(163, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-12 11:43:13', '2022-10-12 11:43:13', '[13,3]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665574993;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665574993;}', 2, 1, '2022-10-12 11:44:16', '2022-10-12 11:44:16', 0, NULL),
(164, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-12 11:44:17', '2022-10-12 11:44:17', '[19,2]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665575057;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665575057;}', 2, 1, '2022-10-12 11:44:18', '2022-10-12 11:44:18', 0, NULL),
(165, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-12 11:45:44', '2022-10-12 11:45:44', '[20,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665575144;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665575144;}', 2, 1, '2022-10-12 11:46:01', '2022-10-12 11:46:01', 0, NULL),
(166, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-12 11:47:03', '2022-10-12 11:47:03', '[22,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665575223;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665575223;}', 2, 1, '2022-10-12 11:47:04', '2022-10-12 11:47:04', 0, NULL),
(167, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-12 11:48:11', '2022-10-12 11:48:11', '[23,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665575291;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665575291;}', 2, 1, '2022-10-12 11:48:12', '2022-10-12 11:48:12', 0, NULL),
(168, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-12 11:50:21', '2022-10-12 11:50:21', '[26,3]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665575421;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665575421;}', 2, 1, '2022-10-12 11:50:22', '2022-10-12 11:50:22', 0, NULL),
(169, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-12 11:50:22', '2022-10-12 11:50:22', '[27,3]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665575422;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665575422;}', 2, 1, '2022-10-12 11:50:22', '2022-10-12 11:50:22', 0, NULL),
(170, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-12 11:50:22', '2022-10-12 11:50:22', '[28,3]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665575422;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665575422;}', 2, 1, '2022-10-12 11:50:22', '2022-10-12 11:50:22', 0, NULL),
(171, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-12 11:50:22', '2022-10-12 11:50:22', '[12,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665575422;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665575422;}', 2, 1, '2022-10-12 11:50:22', '2022-10-12 11:50:22', 0, NULL),
(172, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-12 11:51:07', '2022-10-12 11:51:07', '[12,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665575467;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665575467;}', 2, 1, '2022-10-12 11:52:05', '2022-10-12 11:52:05', 0, NULL),
(173, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-12 11:52:07', '2022-10-12 11:52:07', '[12,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665575527;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665575527;}', 2, 1, '2022-10-12 11:52:08', '2022-10-12 11:52:08', 0, NULL),
(174, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-12 11:53:05', '2022-10-12 11:53:05', '[15,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665575585;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665575585;}', 2, 1, '2022-10-12 11:53:10', '2022-10-12 11:53:10', 0, NULL),
(175, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2022-10-12 11:56:06', '2022-10-12 11:56:06', '[20,1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665575766;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665575766;}', 2, 1, '2022-10-12 11:56:46', '2022-10-12 11:56:46', 0, NULL),
(176, 'wc-admin_import_orders', 'complete', '2022-10-12 12:29:58', '2022-10-12 12:29:58', '[110]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665577798;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665577798;}', 3, 1, '2022-10-12 12:30:02', '2022-10-12 12:30:02', 0, NULL),
(177, 'wc-admin_import_orders', 'complete', '2022-10-12 12:32:23', '2022-10-12 12:32:23', '[111]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665577943;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665577943;}', 3, 1, '2022-10-12 12:36:10', '2022-10-12 12:36:10', 0, NULL),
(178, 'wc-admin_import_orders', 'pending', '2022-10-12 12:38:55', '2022-10-12 12:38:55', '[112]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1665578335;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1665578335;}', 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'woocommerce-db-updates'),
(3, 'wc-admin-data');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(192, 70, 'action created', '2022-09-11 06:57:03', '2022-09-11 06:57:03'),
(193, 71, 'action created', '2022-09-11 06:57:07', '2022-09-11 06:57:07'),
(194, 71, 'action started via WP Cron', '2022-09-13 12:46:49', '2022-09-13 12:46:49'),
(195, 71, 'action complete via WP Cron', '2022-09-13 12:46:49', '2022-09-13 12:46:49'),
(196, 70, 'action started via WP Cron', '2022-09-13 12:46:49', '2022-09-13 12:46:49'),
(197, 70, 'action complete via WP Cron', '2022-09-13 12:46:49', '2022-09-13 12:46:49'),
(198, 72, 'action created', '2022-09-13 12:46:49', '2022-09-13 12:46:49'),
(199, 73, 'action created', '2022-09-13 12:46:52', '2022-09-13 12:46:52'),
(200, 73, 'action started via Async Request', '2022-09-13 12:46:52', '2022-09-13 12:46:52'),
(201, 73, 'action complete via Async Request', '2022-09-13 12:46:52', '2022-09-13 12:46:52'),
(202, 74, 'action created', '2022-09-14 05:47:55', '2022-09-14 05:47:55'),
(203, 74, 'action started via Async Request', '2022-09-14 05:47:56', '2022-09-14 05:47:56'),
(204, 74, 'action complete via Async Request', '2022-09-14 05:47:56', '2022-09-14 05:47:56'),
(205, 72, 'action started via WP Cron', '2022-09-15 04:05:20', '2022-09-15 04:05:20'),
(206, 72, 'action complete via WP Cron', '2022-09-15 04:05:20', '2022-09-15 04:05:20'),
(207, 75, 'action created', '2022-09-15 04:05:20', '2022-09-15 04:05:20'),
(208, 76, 'action created', '2022-09-15 04:05:21', '2022-09-15 04:05:21'),
(209, 76, 'action started via Async Request', '2022-09-15 04:05:23', '2022-09-15 04:05:23'),
(210, 76, 'action complete via Async Request', '2022-09-15 04:05:23', '2022-09-15 04:05:23'),
(211, 75, 'action started via WP Cron', '2022-09-16 22:03:35', '2022-09-16 22:03:35'),
(212, 75, 'action complete via WP Cron', '2022-09-16 22:03:35', '2022-09-16 22:03:35'),
(213, 77, 'action created', '2022-09-16 22:03:35', '2022-09-16 22:03:35'),
(214, 78, 'action created', '2022-09-16 22:03:38', '2022-09-16 22:03:38'),
(215, 78, 'action started via Async Request', '2022-09-16 22:03:39', '2022-09-16 22:03:39'),
(216, 78, 'action complete via Async Request', '2022-09-16 22:03:39', '2022-09-16 22:03:39'),
(217, 77, 'action started via WP Cron', '2022-09-20 10:00:18', '2022-09-20 10:00:18'),
(218, 77, 'action complete via WP Cron', '2022-09-20 10:00:18', '2022-09-20 10:00:18'),
(219, 79, 'action created', '2022-09-20 10:00:18', '2022-09-20 10:00:18'),
(220, 80, 'action created', '2022-09-20 10:00:22', '2022-09-20 10:00:22'),
(221, 81, 'action created', '2022-09-20 10:06:44', '2022-09-20 10:06:44'),
(222, 80, 'action started via Async Request', '2022-09-20 10:06:48', '2022-09-20 10:06:48'),
(223, 80, 'action complete via Async Request', '2022-09-20 10:06:48', '2022-09-20 10:06:48'),
(224, 81, 'action started via Async Request', '2022-09-20 10:06:53', '2022-09-20 10:06:53'),
(225, 81, 'action complete via Async Request', '2022-09-20 10:06:54', '2022-09-20 10:06:54'),
(226, 82, 'action created', '2022-09-20 10:15:04', '2022-09-20 10:15:04'),
(227, 82, 'action started via WP Cron', '2022-09-20 10:22:37', '2022-09-20 10:22:37'),
(228, 82, 'action complete via WP Cron', '2022-09-20 10:22:37', '2022-09-20 10:22:37'),
(229, 83, 'action created', '2022-09-20 10:34:17', '2022-09-20 10:34:17'),
(230, 83, 'action started via WP Cron', '2022-09-20 10:34:55', '2022-09-20 10:34:55'),
(231, 83, 'action complete via WP Cron', '2022-09-20 10:34:55', '2022-09-20 10:34:55'),
(232, 84, 'action created', '2022-09-20 11:08:19', '2022-09-20 11:08:19'),
(233, 84, 'action started via Async Request', '2022-09-20 11:08:24', '2022-09-20 11:08:24'),
(234, 84, 'action complete via Async Request', '2022-09-20 11:08:24', '2022-09-20 11:08:24'),
(235, 85, 'action created', '2022-09-20 11:10:27', '2022-09-20 11:10:27'),
(236, 85, 'action started via WP Cron', '2022-09-20 11:19:06', '2022-09-20 11:19:06'),
(237, 85, 'action complete via WP Cron', '2022-09-20 11:19:06', '2022-09-20 11:19:06'),
(238, 86, 'action created', '2022-09-20 11:42:25', '2022-09-20 11:42:25'),
(239, 86, 'action started via Async Request', '2022-09-20 11:42:30', '2022-09-20 11:42:30'),
(240, 86, 'action complete via Async Request', '2022-09-20 11:42:30', '2022-09-20 11:42:30'),
(241, 87, 'action created', '2022-09-20 11:45:12', '2022-09-20 11:45:12'),
(242, 87, 'action started via WP Cron', '2022-09-20 12:35:06', '2022-09-20 12:35:06'),
(243, 87, 'action complete via WP Cron', '2022-09-20 12:35:06', '2022-09-20 12:35:06'),
(244, 88, 'action created', '2022-09-20 12:36:35', '2022-09-20 12:36:35'),
(245, 88, 'action started via Async Request', '2022-09-20 12:36:41', '2022-09-20 12:36:41'),
(246, 88, 'action complete via Async Request', '2022-09-20 12:36:41', '2022-09-20 12:36:41'),
(247, 89, 'action created', '2022-09-20 12:39:05', '2022-09-20 12:39:05'),
(248, 89, 'action started via WP Cron', '2022-09-20 12:58:59', '2022-09-20 12:58:59'),
(249, 89, 'action complete via WP Cron', '2022-09-20 12:58:59', '2022-09-20 12:58:59'),
(250, 90, 'action created', '2022-09-20 13:00:07', '2022-09-20 13:00:07'),
(251, 90, 'action started via Async Request', '2022-09-20 13:00:13', '2022-09-20 13:00:13'),
(252, 90, 'action complete via Async Request', '2022-09-20 13:00:13', '2022-09-20 13:00:13'),
(253, 91, 'action created', '2022-09-20 13:00:44', '2022-09-20 13:00:44'),
(254, 91, 'action started via WP Cron', '2022-09-20 13:01:02', '2022-09-20 13:01:02'),
(255, 91, 'action complete via WP Cron', '2022-09-20 13:01:02', '2022-09-20 13:01:02'),
(256, 92, 'action created', '2022-09-20 13:28:39', '2022-09-20 13:28:39'),
(257, 92, 'action started via Async Request', '2022-09-20 13:28:41', '2022-09-20 13:28:41'),
(258, 92, 'action complete via Async Request', '2022-09-20 13:28:41', '2022-09-20 13:28:41'),
(259, 93, 'action created', '2022-09-20 15:07:03', '2022-09-20 15:07:03'),
(260, 93, 'action started via Async Request', '2022-09-20 15:07:10', '2022-09-20 15:07:10'),
(261, 93, 'action complete via Async Request', '2022-09-20 15:07:10', '2022-09-20 15:07:10'),
(262, 94, 'action created', '2022-09-20 15:08:26', '2022-09-20 15:08:26'),
(263, 94, 'action started via WP Cron', '2022-09-20 15:13:20', '2022-09-20 15:13:20'),
(264, 94, 'action complete via WP Cron', '2022-09-20 15:13:20', '2022-09-20 15:13:20'),
(265, 95, 'action created', '2022-09-20 15:13:24', '2022-09-20 15:13:24'),
(266, 95, 'action started via WP Cron', '2022-09-20 15:18:19', '2022-09-20 15:18:19'),
(267, 95, 'action complete via WP Cron', '2022-09-20 15:18:19', '2022-09-20 15:18:19'),
(268, 96, 'action created', '2022-09-20 16:39:18', '2022-09-20 16:39:18'),
(269, 96, 'action started via WP Cron', '2022-09-20 16:40:53', '2022-09-20 16:40:53'),
(270, 96, 'action complete via WP Cron', '2022-09-20 16:40:53', '2022-09-20 16:40:53'),
(271, 97, 'action created', '2022-09-21 06:51:16', '2022-09-21 06:51:16'),
(272, 97, 'action started via WP Cron', '2022-09-21 06:51:55', '2022-09-21 06:51:55'),
(273, 97, 'action complete via WP Cron', '2022-09-21 06:51:55', '2022-09-21 06:51:55'),
(274, 79, 'action started via WP Cron', '2022-09-21 22:31:18', '2022-09-21 22:31:18'),
(275, 79, 'action complete via WP Cron', '2022-09-21 22:31:18', '2022-09-21 22:31:18'),
(276, 98, 'action created', '2022-09-21 22:31:18', '2022-09-21 22:31:18'),
(277, 99, 'action created', '2022-09-21 22:31:21', '2022-09-21 22:31:21'),
(278, 99, 'action started via Async Request', '2022-09-21 22:31:21', '2022-09-21 22:31:21'),
(279, 99, 'action complete via Async Request', '2022-09-21 22:31:21', '2022-09-21 22:31:21'),
(280, 98, 'action started via WP Cron', '2022-09-26 08:24:08', '2022-09-26 08:24:08'),
(281, 98, 'action complete via WP Cron', '2022-09-26 08:24:08', '2022-09-26 08:24:08'),
(282, 100, 'action created', '2022-09-26 08:24:08', '2022-09-26 08:24:08'),
(283, 101, 'action created', '2022-09-26 08:24:12', '2022-09-26 08:24:12'),
(284, 101, 'action started via Async Request', '2022-09-26 08:24:13', '2022-09-26 08:24:13'),
(285, 101, 'action complete via Async Request', '2022-09-26 08:24:13', '2022-09-26 08:24:13'),
(286, 102, 'action created', '2022-09-26 08:24:46', '2022-09-26 08:24:46'),
(287, 102, 'action started via WP Cron', '2022-09-26 08:41:05', '2022-09-26 08:41:05'),
(288, 102, 'action complete via WP Cron', '2022-09-26 08:41:05', '2022-09-26 08:41:05'),
(289, 103, 'action created', '2022-09-27 05:29:35', '2022-09-27 05:29:35'),
(290, 103, 'action started via Async Request', '2022-09-27 05:29:37', '2022-09-27 05:29:37'),
(291, 103, 'action complete via Async Request', '2022-09-27 05:29:37', '2022-09-27 05:29:37'),
(292, 100, 'action started via WP Cron', '2022-09-27 13:40:41', '2022-09-27 13:40:41'),
(293, 100, 'action complete via WP Cron', '2022-09-27 13:40:41', '2022-09-27 13:40:41'),
(294, 104, 'action created', '2022-09-27 13:40:41', '2022-09-27 13:40:41'),
(295, 105, 'action created', '2022-09-27 13:40:43', '2022-09-27 13:40:43'),
(296, 105, 'action started via Async Request', '2022-09-27 13:40:43', '2022-09-27 13:40:43'),
(297, 105, 'action complete via Async Request', '2022-09-27 13:40:43', '2022-09-27 13:40:43'),
(298, 104, 'action started via WP Cron', '2022-09-29 13:44:56', '2022-09-29 13:44:56'),
(299, 104, 'action complete via WP Cron', '2022-09-29 13:44:56', '2022-09-29 13:44:56'),
(300, 106, 'action created', '2022-09-29 13:44:56', '2022-09-29 13:44:56'),
(301, 107, 'action created', '2022-09-29 13:45:05', '2022-09-29 13:45:05'),
(302, 107, 'action started via Async Request', '2022-09-29 13:45:07', '2022-09-29 13:45:07'),
(303, 107, 'action complete via Async Request', '2022-09-29 13:45:07', '2022-09-29 13:45:07'),
(304, 108, 'action created', '2022-09-29 13:48:12', '2022-09-29 13:48:12'),
(305, 108, 'action started via Async Request', '2022-09-29 13:48:21', '2022-09-29 13:48:21'),
(306, 108, 'action complete via Async Request', '2022-09-29 13:48:21', '2022-09-29 13:48:21'),
(307, 109, 'action created', '2022-09-29 14:12:45', '2022-09-29 14:12:45'),
(308, 109, 'action started via WP Cron', '2022-09-30 11:25:14', '2022-09-30 11:25:14'),
(309, 109, 'action complete via WP Cron', '2022-09-30 11:25:14', '2022-09-30 11:25:14'),
(310, 110, 'action created', '2022-09-30 11:29:35', '2022-09-30 11:29:35'),
(311, 110, 'action started via WP Cron', '2022-09-30 11:29:54', '2022-09-30 11:29:54'),
(312, 110, 'action complete via WP Cron', '2022-09-30 11:29:54', '2022-09-30 11:29:54'),
(313, 111, 'action created', '2022-09-30 11:34:59', '2022-09-30 11:34:59'),
(314, 111, 'action started via Async Request', '2022-09-30 11:35:43', '2022-09-30 11:35:43'),
(315, 111, 'action complete via Async Request', '2022-09-30 11:35:43', '2022-09-30 11:35:43'),
(316, 112, 'action created', '2022-09-30 13:03:11', '2022-09-30 13:03:11'),
(317, 112, 'action started via Async Request', '2022-09-30 13:04:10', '2022-09-30 13:04:10'),
(318, 112, 'action complete via Async Request', '2022-09-30 13:04:10', '2022-09-30 13:04:10'),
(319, 113, 'action created', '2022-09-30 13:42:46', '2022-09-30 13:42:46'),
(320, 114, 'action created', '2022-09-30 13:42:46', '2022-09-30 13:42:46'),
(321, 115, 'action created', '2022-09-30 13:42:46', '2022-09-30 13:42:46'),
(322, 116, 'action created', '2022-09-30 13:42:46', '2022-09-30 13:42:46'),
(323, 113, 'action started via WP Cron', '2022-09-30 13:43:03', '2022-09-30 13:43:03'),
(324, 113, 'action complete via WP Cron', '2022-09-30 13:43:03', '2022-09-30 13:43:03'),
(325, 114, 'action started via WP Cron', '2022-09-30 13:43:03', '2022-09-30 13:43:03'),
(326, 114, 'action complete via WP Cron', '2022-09-30 13:43:03', '2022-09-30 13:43:03'),
(327, 115, 'action started via WP Cron', '2022-09-30 13:43:03', '2022-09-30 13:43:03'),
(328, 115, 'action complete via WP Cron', '2022-09-30 13:43:03', '2022-09-30 13:43:03'),
(329, 116, 'action started via WP Cron', '2022-09-30 13:43:03', '2022-09-30 13:43:03'),
(330, 116, 'action complete via WP Cron', '2022-09-30 13:43:03', '2022-09-30 13:43:03'),
(331, 117, 'action created', '2022-09-30 13:43:31', '2022-09-30 13:43:31'),
(332, 117, 'action started via WP Cron', '2022-09-30 13:44:34', '2022-09-30 13:44:34'),
(333, 117, 'action complete via WP Cron', '2022-09-30 13:44:34', '2022-09-30 13:44:34'),
(334, 106, 'action started via WP Cron', '2022-09-30 13:45:45', '2022-09-30 13:45:45'),
(335, 106, 'action complete via WP Cron', '2022-09-30 13:45:45', '2022-09-30 13:45:45'),
(336, 118, 'action created', '2022-09-30 13:45:45', '2022-09-30 13:45:45'),
(337, 119, 'action created', '2022-09-30 14:15:08', '2022-09-30 14:15:08'),
(338, 120, 'action created', '2022-09-30 14:15:08', '2022-09-30 14:15:08'),
(339, 121, 'action created', '2022-09-30 14:15:08', '2022-09-30 14:15:08'),
(340, 119, 'action started via WP Cron', '2022-09-30 14:15:10', '2022-09-30 14:15:10'),
(341, 119, 'action complete via WP Cron', '2022-09-30 14:15:10', '2022-09-30 14:15:10'),
(342, 120, 'action started via WP Cron', '2022-09-30 14:15:10', '2022-09-30 14:15:10'),
(343, 120, 'action complete via WP Cron', '2022-09-30 14:15:10', '2022-09-30 14:15:10'),
(344, 121, 'action started via WP Cron', '2022-09-30 14:15:10', '2022-09-30 14:15:10'),
(345, 121, 'action complete via WP Cron', '2022-09-30 14:15:10', '2022-09-30 14:15:10'),
(346, 122, 'action created', '2022-09-30 14:16:01', '2022-09-30 14:16:01'),
(347, 122, 'action started via Async Request', '2022-09-30 14:16:11', '2022-09-30 14:16:11'),
(348, 122, 'action complete via Async Request', '2022-09-30 14:16:11', '2022-09-30 14:16:11'),
(349, 123, 'action created', '2022-09-30 14:16:22', '2022-09-30 14:16:22'),
(350, 123, 'action started via WP Cron', '2022-09-30 14:16:54', '2022-09-30 14:16:54'),
(351, 123, 'action complete via WP Cron', '2022-09-30 14:16:54', '2022-09-30 14:16:54'),
(352, 124, 'action created', '2022-09-30 14:17:51', '2022-09-30 14:17:51'),
(353, 124, 'action started via WP Cron', '2022-09-30 14:17:53', '2022-09-30 14:17:53'),
(354, 124, 'action complete via WP Cron', '2022-09-30 14:17:53', '2022-09-30 14:17:53'),
(355, 125, 'action created', '2022-09-30 16:31:49', '2022-09-30 16:31:49'),
(356, 125, 'action started via Async Request', '2022-09-30 16:31:57', '2022-09-30 16:31:57'),
(357, 125, 'action complete via Async Request', '2022-09-30 16:31:57', '2022-09-30 16:31:57'),
(358, 118, 'action started via WP Cron', '2022-10-03 04:35:53', '2022-10-03 04:35:53'),
(359, 118, 'action complete via WP Cron', '2022-10-03 04:35:53', '2022-10-03 04:35:53'),
(360, 126, 'action created', '2022-10-03 04:35:53', '2022-10-03 04:35:53'),
(361, 127, 'action created', '2022-10-03 04:35:57', '2022-10-03 04:35:57'),
(362, 127, 'action started via Async Request', '2022-10-03 04:35:58', '2022-10-03 04:35:58'),
(363, 127, 'action complete via Async Request', '2022-10-03 04:35:58', '2022-10-03 04:35:58'),
(364, 128, 'action created', '2022-10-03 04:36:51', '2022-10-03 04:36:51'),
(365, 128, 'action started via WP Cron', '2022-10-04 22:42:34', '2022-10-04 22:42:34'),
(366, 128, 'action complete via WP Cron', '2022-10-04 22:42:34', '2022-10-04 22:42:34'),
(367, 126, 'action started via WP Cron', '2022-10-04 22:42:34', '2022-10-04 22:42:34'),
(368, 126, 'action complete via WP Cron', '2022-10-04 22:42:34', '2022-10-04 22:42:34'),
(369, 129, 'action created', '2022-10-04 22:42:34', '2022-10-04 22:42:34'),
(370, 130, 'action created', '2022-10-04 22:42:36', '2022-10-04 22:42:36'),
(371, 130, 'action started via Async Request', '2022-10-04 22:42:37', '2022-10-04 22:42:37'),
(372, 130, 'action complete via Async Request', '2022-10-04 22:42:37', '2022-10-04 22:42:37'),
(373, 131, 'action created', '2022-10-05 14:56:36', '2022-10-05 14:56:36'),
(374, 131, 'action started via Async Request', '2022-10-05 14:58:06', '2022-10-05 14:58:06'),
(375, 131, 'action complete via Async Request', '2022-10-05 14:58:06', '2022-10-05 14:58:06'),
(376, 132, 'action created', '2022-10-05 14:59:26', '2022-10-05 14:59:26'),
(377, 132, 'action started via Async Request', '2022-10-05 14:59:50', '2022-10-05 14:59:50'),
(378, 132, 'action complete via Async Request', '2022-10-05 14:59:50', '2022-10-05 14:59:50'),
(379, 129, 'action started via WP Cron', '2022-10-06 15:17:37', '2022-10-06 15:17:37'),
(380, 129, 'action complete via WP Cron', '2022-10-06 15:17:37', '2022-10-06 15:17:37'),
(381, 133, 'action created', '2022-10-06 15:17:37', '2022-10-06 15:17:37'),
(382, 134, 'action created', '2022-10-06 15:17:42', '2022-10-06 15:17:42'),
(383, 134, 'action started via Async Request', '2022-10-06 15:17:44', '2022-10-06 15:17:44'),
(384, 134, 'action complete via Async Request', '2022-10-06 15:17:44', '2022-10-06 15:17:44'),
(385, 135, 'action created', '2022-10-06 15:19:35', '2022-10-06 15:19:35'),
(386, 135, 'action started via Async Request', '2022-10-06 15:19:44', '2022-10-06 15:19:44'),
(387, 135, 'action complete via Async Request', '2022-10-06 15:19:44', '2022-10-06 15:19:44'),
(388, 133, 'action started via WP Cron', '2022-10-11 10:06:03', '2022-10-11 10:06:03'),
(389, 133, 'action complete via WP Cron', '2022-10-11 10:06:03', '2022-10-11 10:06:03'),
(390, 136, 'action created', '2022-10-11 10:06:03', '2022-10-11 10:06:03'),
(391, 137, 'action created', '2022-10-11 10:06:08', '2022-10-11 10:06:08'),
(392, 138, 'action created', '2022-10-11 10:06:08', '2022-10-11 10:06:08'),
(393, 139, 'action created', '2022-10-11 10:06:09', '2022-10-11 10:06:09'),
(394, 140, 'action created', '2022-10-11 10:06:09', '2022-10-11 10:06:09'),
(395, 141, 'action created', '2022-10-11 10:06:09', '2022-10-11 10:06:09'),
(396, 142, 'action created', '2022-10-11 10:06:09', '2022-10-11 10:06:09'),
(397, 143, 'action created', '2022-10-11 10:06:09', '2022-10-11 10:06:09'),
(398, 144, 'action created', '2022-10-11 10:06:09', '2022-10-11 10:06:09'),
(399, 145, 'action created', '2022-10-11 10:06:09', '2022-10-11 10:06:09'),
(400, 146, 'action created', '2022-10-11 10:06:09', '2022-10-11 10:06:09'),
(401, 137, 'action started via Async Request', '2022-10-11 10:06:10', '2022-10-11 10:06:10'),
(402, 137, 'action complete via Async Request', '2022-10-11 10:06:10', '2022-10-11 10:06:10'),
(403, 138, 'action started via Async Request', '2022-10-11 10:06:16', '2022-10-11 10:06:16'),
(404, 138, 'action complete via Async Request', '2022-10-11 10:06:17', '2022-10-11 10:06:17'),
(405, 139, 'action started via Async Request', '2022-10-11 10:06:17', '2022-10-11 10:06:17'),
(406, 139, 'action complete via Async Request', '2022-10-11 10:06:17', '2022-10-11 10:06:17'),
(407, 140, 'action started via Async Request', '2022-10-11 10:06:17', '2022-10-11 10:06:17'),
(408, 140, 'action complete via Async Request', '2022-10-11 10:06:17', '2022-10-11 10:06:17'),
(409, 141, 'action started via Async Request', '2022-10-11 10:06:17', '2022-10-11 10:06:17'),
(410, 141, 'action complete via Async Request', '2022-10-11 10:06:17', '2022-10-11 10:06:17'),
(411, 142, 'action started via Async Request', '2022-10-11 10:06:17', '2022-10-11 10:06:17'),
(412, 142, 'action complete via Async Request', '2022-10-11 10:06:17', '2022-10-11 10:06:17'),
(413, 143, 'action started via Async Request', '2022-10-11 10:06:17', '2022-10-11 10:06:17'),
(414, 143, 'action complete via Async Request', '2022-10-11 10:06:17', '2022-10-11 10:06:17'),
(415, 144, 'action started via Async Request', '2022-10-11 10:06:17', '2022-10-11 10:06:17'),
(416, 144, 'action complete via Async Request', '2022-10-11 10:06:17', '2022-10-11 10:06:17'),
(417, 145, 'action started via Async Request', '2022-10-11 10:06:17', '2022-10-11 10:06:17'),
(418, 145, 'action complete via Async Request', '2022-10-11 10:06:17', '2022-10-11 10:06:17'),
(419, 146, 'action started via Async Request', '2022-10-11 10:06:17', '2022-10-11 10:06:17'),
(420, 146, 'action complete via Async Request', '2022-10-11 10:06:17', '2022-10-11 10:06:17'),
(421, 147, 'action created', '2022-10-11 10:06:22', '2022-10-11 10:06:22'),
(422, 148, 'action created', '2022-10-11 10:06:33', '2022-10-11 10:06:33'),
(423, 147, 'action started via Async Request', '2022-10-11 10:07:26', '2022-10-11 10:07:26'),
(424, 147, 'action complete via Async Request', '2022-10-11 10:07:26', '2022-10-11 10:07:26'),
(425, 148, 'action started via Async Request', '2022-10-11 10:07:26', '2022-10-11 10:07:26'),
(426, 148, 'action complete via Async Request', '2022-10-11 10:07:26', '2022-10-11 10:07:26'),
(427, 149, 'action created', '2022-10-11 11:29:14', '2022-10-11 11:29:14'),
(428, 149, 'action started via Async Request', '2022-10-11 11:29:23', '2022-10-11 11:29:23'),
(429, 149, 'action complete via Async Request', '2022-10-11 11:29:23', '2022-10-11 11:29:23'),
(430, 150, 'action created', '2022-10-11 16:37:27', '2022-10-11 16:37:27'),
(431, 150, 'action started via Async Request', '2022-10-11 16:37:28', '2022-10-11 16:37:28'),
(432, 150, 'action complete via Async Request', '2022-10-11 16:37:28', '2022-10-11 16:37:28'),
(433, 136, 'action started via WP Cron', '2022-10-12 11:34:51', '2022-10-12 11:34:51'),
(434, 136, 'action complete via WP Cron', '2022-10-12 11:34:52', '2022-10-12 11:34:52'),
(435, 151, 'action created', '2022-10-12 11:34:52', '2022-10-12 11:34:52'),
(436, 152, 'action created', '2022-10-12 11:36:13', '2022-10-12 11:36:13'),
(437, 152, 'action started via WP Cron', '2022-10-12 11:37:22', '2022-10-12 11:37:22'),
(438, 152, 'action complete via WP Cron', '2022-10-12 11:37:22', '2022-10-12 11:37:22'),
(439, 153, 'action created', '2022-10-12 11:37:51', '2022-10-12 11:37:51'),
(440, 154, 'action created', '2022-10-12 11:37:51', '2022-10-12 11:37:51'),
(441, 153, 'action started via WP Cron', '2022-10-12 11:37:57', '2022-10-12 11:37:57'),
(442, 153, 'action complete via WP Cron', '2022-10-12 11:37:57', '2022-10-12 11:37:57'),
(443, 154, 'action started via WP Cron', '2022-10-12 11:37:57', '2022-10-12 11:37:57'),
(444, 154, 'action complete via WP Cron', '2022-10-12 11:37:57', '2022-10-12 11:37:57'),
(445, 155, 'action created', '2022-10-12 11:40:19', '2022-10-12 11:40:19'),
(446, 155, 'action started via Async Request', '2022-10-12 11:40:38', '2022-10-12 11:40:38'),
(447, 155, 'action complete via Async Request', '2022-10-12 11:40:38', '2022-10-12 11:40:38'),
(448, 156, 'action created', '2022-10-12 11:41:27', '2022-10-12 11:41:27'),
(449, 156, 'action started via WP Cron', '2022-10-12 11:41:56', '2022-10-12 11:41:56'),
(450, 156, 'action complete via WP Cron', '2022-10-12 11:41:56', '2022-10-12 11:41:56'),
(451, 157, 'action created', '2022-10-12 11:41:56', '2022-10-12 11:41:56'),
(452, 157, 'action started via WP Cron', '2022-10-12 11:41:58', '2022-10-12 11:41:58'),
(453, 157, 'action complete via WP Cron', '2022-10-12 11:41:58', '2022-10-12 11:41:58'),
(454, 158, 'action created', '2022-10-12 11:43:02', '2022-10-12 11:43:02'),
(455, 158, 'action started via WP Cron', '2022-10-12 11:43:04', '2022-10-12 11:43:04'),
(456, 158, 'action complete via WP Cron', '2022-10-12 11:43:04', '2022-10-12 11:43:04'),
(457, 159, 'action created', '2022-10-12 11:43:12', '2022-10-12 11:43:12'),
(458, 160, 'action created', '2022-10-12 11:43:12', '2022-10-12 11:43:12'),
(459, 161, 'action created', '2022-10-12 11:43:12', '2022-10-12 11:43:12'),
(460, 162, 'action created', '2022-10-12 11:43:12', '2022-10-12 11:43:12'),
(461, 163, 'action created', '2022-10-12 11:43:12', '2022-10-12 11:43:12'),
(462, 159, 'action started via WP Cron', '2022-10-12 11:44:16', '2022-10-12 11:44:16'),
(463, 159, 'action complete via WP Cron', '2022-10-12 11:44:16', '2022-10-12 11:44:16'),
(464, 160, 'action started via WP Cron', '2022-10-12 11:44:16', '2022-10-12 11:44:16'),
(465, 160, 'action complete via WP Cron', '2022-10-12 11:44:16', '2022-10-12 11:44:16'),
(466, 161, 'action started via WP Cron', '2022-10-12 11:44:16', '2022-10-12 11:44:16'),
(467, 161, 'action complete via WP Cron', '2022-10-12 11:44:16', '2022-10-12 11:44:16'),
(468, 162, 'action started via WP Cron', '2022-10-12 11:44:16', '2022-10-12 11:44:16'),
(469, 162, 'action complete via WP Cron', '2022-10-12 11:44:16', '2022-10-12 11:44:16'),
(470, 163, 'action started via WP Cron', '2022-10-12 11:44:16', '2022-10-12 11:44:16'),
(471, 163, 'action complete via WP Cron', '2022-10-12 11:44:16', '2022-10-12 11:44:16'),
(472, 164, 'action created', '2022-10-12 11:44:16', '2022-10-12 11:44:16'),
(473, 164, 'action started via WP Cron', '2022-10-12 11:44:18', '2022-10-12 11:44:18'),
(474, 164, 'action complete via WP Cron', '2022-10-12 11:44:18', '2022-10-12 11:44:18'),
(475, 165, 'action created', '2022-10-12 11:45:43', '2022-10-12 11:45:43'),
(476, 165, 'action started via WP Cron', '2022-10-12 11:46:01', '2022-10-12 11:46:01'),
(477, 165, 'action complete via WP Cron', '2022-10-12 11:46:01', '2022-10-12 11:46:01'),
(478, 166, 'action created', '2022-10-12 11:47:02', '2022-10-12 11:47:02'),
(479, 166, 'action started via WP Cron', '2022-10-12 11:47:04', '2022-10-12 11:47:04'),
(480, 166, 'action complete via WP Cron', '2022-10-12 11:47:04', '2022-10-12 11:47:04'),
(481, 167, 'action created', '2022-10-12 11:48:10', '2022-10-12 11:48:10'),
(482, 167, 'action started via WP Cron', '2022-10-12 11:48:12', '2022-10-12 11:48:12'),
(483, 167, 'action complete via WP Cron', '2022-10-12 11:48:12', '2022-10-12 11:48:12'),
(484, 168, 'action created', '2022-10-12 11:50:21', '2022-10-12 11:50:21'),
(485, 169, 'action created', '2022-10-12 11:50:21', '2022-10-12 11:50:21'),
(486, 170, 'action created', '2022-10-12 11:50:21', '2022-10-12 11:50:21'),
(487, 171, 'action created', '2022-10-12 11:50:21', '2022-10-12 11:50:21'),
(488, 168, 'action started via Async Request', '2022-10-12 11:50:22', '2022-10-12 11:50:22'),
(489, 168, 'action complete via Async Request', '2022-10-12 11:50:22', '2022-10-12 11:50:22'),
(490, 169, 'action started via Async Request', '2022-10-12 11:50:22', '2022-10-12 11:50:22'),
(491, 169, 'action complete via Async Request', '2022-10-12 11:50:22', '2022-10-12 11:50:22'),
(492, 170, 'action started via Async Request', '2022-10-12 11:50:22', '2022-10-12 11:50:22'),
(493, 170, 'action complete via Async Request', '2022-10-12 11:50:22', '2022-10-12 11:50:22'),
(494, 171, 'action started via Async Request', '2022-10-12 11:50:22', '2022-10-12 11:50:22'),
(495, 171, 'action complete via Async Request', '2022-10-12 11:50:22', '2022-10-12 11:50:22'),
(496, 172, 'action created', '2022-10-12 11:51:06', '2022-10-12 11:51:06'),
(497, 172, 'action started via WP Cron', '2022-10-12 11:52:05', '2022-10-12 11:52:05'),
(498, 172, 'action complete via WP Cron', '2022-10-12 11:52:05', '2022-10-12 11:52:05'),
(499, 173, 'action created', '2022-10-12 11:52:06', '2022-10-12 11:52:06'),
(500, 173, 'action started via WP Cron', '2022-10-12 11:52:08', '2022-10-12 11:52:08'),
(501, 173, 'action complete via WP Cron', '2022-10-12 11:52:08', '2022-10-12 11:52:08'),
(502, 174, 'action created', '2022-10-12 11:53:04', '2022-10-12 11:53:04'),
(503, 174, 'action started via Async Request', '2022-10-12 11:53:10', '2022-10-12 11:53:10'),
(504, 174, 'action complete via Async Request', '2022-10-12 11:53:10', '2022-10-12 11:53:10'),
(505, 175, 'action created', '2022-10-12 11:56:05', '2022-10-12 11:56:05'),
(506, 175, 'action started via Async Request', '2022-10-12 11:56:46', '2022-10-12 11:56:46'),
(507, 175, 'action complete via Async Request', '2022-10-12 11:56:46', '2022-10-12 11:56:46'),
(508, 176, 'action created', '2022-10-12 12:29:53', '2022-10-12 12:29:53'),
(509, 176, 'action started via Async Request', '2022-10-12 12:30:02', '2022-10-12 12:30:02'),
(510, 176, 'action complete via Async Request', '2022-10-12 12:30:02', '2022-10-12 12:30:02'),
(511, 177, 'action created', '2022-10-12 12:32:18', '2022-10-12 12:32:18'),
(512, 177, 'action started via WP Cron', '2022-10-12 12:36:10', '2022-10-12 12:36:10'),
(513, 177, 'action complete via WP Cron', '2022-10-12 12:36:10', '2022-10-12 12:36:10'),
(514, 178, 'action created', '2022-10-12 12:38:50', '2022-10-12 12:38:50');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wpengine.com/', '', '2022-08-12 15:33:22', '2022-08-12 15:33:22', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0),
(2, 59, 'WooCommerce', 'woocommerce@socurepocdev.wpengine.com', '', '', '2022-08-30 08:10:35', '2022-08-30 08:10:35', 'Unpaid order cancelled - time limit reached. Order status changed from Pending payment to Cancelled.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(3, 62, 'WooCommerce', 'woocommerce@socurepocdev.wpengine.com', '', '', '2022-09-20 10:34:32', '2022-09-20 10:34:32', 'Order status changed from Pending payment to Completed.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(4, 63, 'WooCommerce', 'woocommerce@socurepocdev.wpengine.com', '', '', '2022-09-20 11:10:29', '2022-09-20 11:10:29', 'Order status changed from Pending payment to Completed.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(5, 64, 'WooCommerce', 'woocommerce@socurepocdev.wpengine.com', '', '', '2022-09-20 11:45:13', '2022-09-20 11:45:13', 'Order status changed from Pending payment to Completed.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(6, 65, 'WooCommerce', 'woocommerce@socurepocdev.wpengine.com', '', '', '2022-09-20 12:39:07', '2022-09-20 12:39:07', 'Order status changed from Pending payment to Completed.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(7, 69, 'WooCommerce', 'woocommerce@socurepocdev.wpengine.com', '', '', '2022-09-20 15:13:25', '2022-09-20 15:13:25', 'Order status changed from Pending payment to Completed.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(8, 71, 'WooCommerce', 'woocommerce@socurepocdev.wpengine.com', '', '', '2022-09-26 08:27:05', '2022-09-26 08:27:05', 'Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(9, 60, 'WooCommerce', 'woocommerce@zerodayshopping.identity.com', '', '', '2022-10-11 10:06:09', '2022-10-11 10:06:09', 'Unpaid order cancelled - time limit reached. Order status changed from Pending payment to Cancelled.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(10, 61, 'WooCommerce', 'woocommerce@zerodayshopping.identity.com', '', '', '2022-10-11 10:06:09', '2022-10-11 10:06:09', 'Unpaid order cancelled - time limit reached. Order status changed from Pending payment to Cancelled.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(11, 66, 'WooCommerce', 'woocommerce@zerodayshopping.identity.com', '', '', '2022-10-11 10:06:09', '2022-10-11 10:06:09', 'Unpaid order cancelled - time limit reached. Order status changed from Pending payment to Cancelled.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(12, 67, 'WooCommerce', 'woocommerce@zerodayshopping.identity.com', '', '', '2022-10-11 10:06:09', '2022-10-11 10:06:09', 'Unpaid order cancelled - time limit reached. Order status changed from Pending payment to Cancelled.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(13, 68, 'WooCommerce', 'woocommerce@zerodayshopping.identity.com', '', '', '2022-10-11 10:06:09', '2022-10-11 10:06:09', 'Unpaid order cancelled - time limit reached. Order status changed from Pending payment to Cancelled.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(14, 72, 'WooCommerce', 'woocommerce@zerodayshopping.identity.com', '', '', '2022-10-11 10:06:09', '2022-10-11 10:06:09', 'Unpaid order cancelled - time limit reached. Order status changed from Pending payment to Cancelled.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(15, 73, 'WooCommerce', 'woocommerce@zerodayshopping.identity.com', '', '', '2022-10-11 10:06:09', '2022-10-11 10:06:09', 'Unpaid order cancelled - time limit reached. Order status changed from Pending payment to Cancelled.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(16, 97, 'WooCommerce', 'woocommerce@zerodayshopping.identity.com', '', '', '2022-10-11 10:06:09', '2022-10-11 10:06:09', 'Unpaid order cancelled - time limit reached. Order status changed from Pending payment to Cancelled.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(17, 98, 'WooCommerce', 'woocommerce@zerodayshopping.identity.com', '', '', '2022-10-11 10:06:09', '2022-10-11 10:06:09', 'Unpaid order cancelled - time limit reached. Order status changed from Pending payment to Cancelled.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://socurepoc.wpengine.com', 'yes'),
(2, 'home', 'https://socurepoc.wpengine.com', 'yes'),
(3, 'blogname', 'A shop from the future', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jonathan@civic.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:33:\"genesis-blocks/genesis-blocks.php\";i:1;s:22:\"solpay-store/index.php\";i:2;s:45:\"woocommerce-payments/woocommerce-payments.php\";i:3;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'shoppe', 'yes'),
(41, 'stylesheet', 'shoppe', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '6', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '78', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1675870401', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '51917', 'yes'),
(100, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:6:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:9:\"sidebar-4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:20:{i:1665578392;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1665578393;a:2:{s:17:\"jetpack_sync_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:21:\"jetpack_sync_interval\";s:4:\"args\";a:0:{}s:8:\"interval\";i:300;}}s:22:\"jetpack_sync_full_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:21:\"jetpack_sync_interval\";s:4:\"args\";a:0:{}s:8:\"interval\";i:300;}}}i:1665579461;a:4:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1665579773;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1665579775;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1665579783;a:3:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1665580181;a:2:{s:20:\"jetpack_v2_heartbeat\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1665581603;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1665588803;a:5:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1665589081;a:1:{s:39:\"WPEngineSecurityAuditor_Scans_scheduler\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1665590573;a:2:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"woocommerce_cleanup_rate_limits\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1665601373;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1665608228;a:1:{s:48:\"WPEngineSecurityAuditor_Scans_fingerprint_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1665611270;a:1:{s:49:\"WPEngineSecurityAuditor_Scans_fingerprint_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1665619200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1665839033;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}i:1665848003;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1666087582;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1666098584;a:1:{s:20:\"wcs_cleanup_big_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_wpe_powered_by_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentytwentytwo', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1660318699;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(121, 'https_detection_errors', 'a:0:{}', 'yes'),
(123, 'current_theme', 'Shoppe', 'yes'),
(124, 'theme_switched', '', 'yes'),
(125, 'theme_mods_genesis-block-theme', 'a:3:{s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1660655118;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(126, 'wpe_template', 'Genesis Blocks Free', 'yes'),
(127, 'user_count', '1', 'no'),
(128, 'db_upgraded', '', 'yes'),
(130, 'wpe-health-check-site-status-result', '{\"good\":15,\"recommended\":3,\"critical\":0}', 'yes'),
(131, 'genesis_blocks_has_content_to_migrate', '0', 'yes'),
(132, 'can_compress_scripts', '0', 'no'),
(133, 'recently_activated', 'a:0:{}', 'yes'),
(135, 'finished_updating_comment_type', '1', 'yes'),
(136, 'action_scheduler_hybrid_store_demarkation', '5', 'yes'),
(137, 'schema-ActionScheduler_StoreSchema', '6.0.1660654971', 'yes'),
(138, 'schema-ActionScheduler_LoggerSchema', '3.0.1660654972', 'yes'),
(139, 'woocommerce_schema_version', '430', 'yes'),
(140, 'woocommerce_store_address', 'n/a', 'yes'),
(141, 'woocommerce_store_address_2', 'n/a', 'yes'),
(142, 'woocommerce_store_city', 'n/a', 'yes'),
(143, 'woocommerce_default_country', 'US:CA', 'yes'),
(144, 'woocommerce_store_postcode', '12345', 'yes'),
(145, 'woocommerce_allowed_countries', 'all', 'yes'),
(146, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(147, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(148, 'woocommerce_ship_to_countries', 'all', 'yes'),
(149, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(150, 'woocommerce_default_customer_address', 'base', 'yes'),
(151, 'woocommerce_calc_taxes', 'no', 'yes'),
(152, 'woocommerce_enable_coupons', 'yes', 'yes'),
(153, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(154, 'woocommerce_currency', 'USD', 'yes'),
(155, 'woocommerce_currency_pos', 'left', 'yes'),
(156, 'woocommerce_price_thousand_sep', ',', 'yes'),
(157, 'woocommerce_price_decimal_sep', '.', 'yes'),
(158, 'woocommerce_price_num_decimals', '2', 'yes'),
(159, 'woocommerce_shop_page_id', '6', 'yes'),
(160, 'woocommerce_cart_redirect_after_add', 'yes', 'yes'),
(161, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(162, 'woocommerce_placeholder_image', '5', 'yes'),
(163, 'woocommerce_weight_unit', 'kg', 'yes'),
(164, 'woocommerce_dimension_unit', 'cm', 'yes'),
(165, 'woocommerce_enable_reviews', 'yes', 'yes'),
(166, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(167, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(168, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(169, 'woocommerce_review_rating_required', 'yes', 'no'),
(170, 'woocommerce_manage_stock', 'yes', 'yes'),
(171, 'woocommerce_hold_stock_minutes', '10080', 'no'),
(172, 'woocommerce_notify_low_stock', 'yes', 'no'),
(173, 'woocommerce_notify_no_stock', 'yes', 'no'),
(174, 'woocommerce_stock_email_recipient', '', 'no'),
(175, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(176, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(177, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(178, 'woocommerce_stock_format', '', 'yes'),
(179, 'woocommerce_file_download_method', 'force', 'no'),
(180, 'woocommerce_downloads_redirect_fallback_allowed', 'no', 'no'),
(181, 'woocommerce_downloads_require_login', 'no', 'no'),
(182, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(183, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(184, 'woocommerce_attribute_lookup_enabled', 'no', 'yes'),
(185, 'woocommerce_attribute_lookup_direct_updates', 'no', 'yes'),
(186, 'woocommerce_prices_include_tax', 'no', 'yes'),
(187, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(188, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(189, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(190, 'woocommerce_tax_classes', '', 'yes'),
(191, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(192, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(193, 'woocommerce_price_display_suffix', '', 'yes'),
(194, 'woocommerce_tax_total_display', 'itemized', 'no'),
(195, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(196, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(197, 'woocommerce_ship_to_destination', 'billing', 'no'),
(198, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(199, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(200, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(201, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(202, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(203, 'woocommerce_registration_generate_username', 'yes', 'no'),
(204, 'woocommerce_registration_generate_password', 'yes', 'no'),
(205, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(206, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(207, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(208, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(209, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(210, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(211, 'woocommerce_trash_pending_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(212, 'woocommerce_trash_failed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(213, 'woocommerce_trash_cancelled_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(214, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(215, 'woocommerce_email_from_name', '', 'no'),
(216, 'woocommerce_email_from_address', '', 'no'),
(217, 'woocommerce_email_header_image', '', 'no'),
(218, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(219, 'woocommerce_email_base_color', '#7f54b3', 'no'),
(220, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(221, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(222, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(223, 'woocommerce_merchant_email_notifications', 'no', 'no'),
(224, 'woocommerce_cart_page_id', '7', 'no'),
(225, 'woocommerce_checkout_page_id', '8', 'no'),
(226, 'woocommerce_myaccount_page_id', '9', 'no'),
(227, 'woocommerce_terms_page_id', '', 'no'),
(228, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(229, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(230, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(231, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(232, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(233, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(234, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(235, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(236, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(237, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(238, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(239, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(240, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(241, 'woocommerce_api_enabled', 'no', 'yes'),
(242, 'woocommerce_allow_tracking', 'no', 'no'),
(243, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(244, 'woocommerce_single_image_width', '600', 'yes'),
(245, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(246, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(247, 'woocommerce_demo_store', 'no', 'no'),
(248, 'wc_downloads_approved_directories_mode', 'enabled', 'yes'),
(249, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(250, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(251, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(253, 'default_product_cat', '15', 'yes'),
(255, 'woocommerce_refund_returns_page_id', '10', 'yes'),
(256, 'woocommerce_paypal_settings', 'a:23:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:85:\"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.\";s:5:\"email\";s:18:\"jonathan@civic.com\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:5:\"debug\";s:3:\"yes\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:18:\"jonathan@civic.com\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";s:12:\"_should_load\";s:2:\"no\";}', 'yes'),
(257, 'woocommerce_version', '6.8.0', 'yes'),
(258, 'woocommerce_db_version', '6.8.0', 'yes'),
(259, 'woocommerce_admin_install_timestamp', '1660654975', 'yes'),
(260, 'woocommerce_inbox_variant_assignment', '10', 'yes'),
(261, 'action_scheduler_lock_async-request-runner', '1665578394', 'yes'),
(262, 'woocommerce_admin_notices', 'a:1:{i:0;s:14:\"template_files\";}', 'yes'),
(263, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"vKdvFzhhZYP9gtHcfDz2RTuPHdzZVc1B\";}', 'yes'),
(264, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(265, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(266, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(267, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(268, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(269, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(270, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(271, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(272, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(273, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(274, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(275, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(276, 'wc_remote_inbox_notifications_stored_state', 'O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:1;}', 'no'),
(277, 'wc_blocks_surface_cart_checkout_probability', '37', 'yes'),
(278, 'wc_blocks_db_schema_version', '260', 'yes'),
(279, 'woocommerce_task_list_tracked_completed_tasks', 'a:8:{i:0;s:8:\"purchase\";i:1;s:14:\"store_creation\";i:2;s:13:\"store_details\";i:3;s:8:\"shipping\";i:4;s:8:\"products\";i:5;s:8:\"payments\";i:6;s:10:\"appearance\";i:7;s:15:\"review-shipping\";}', 'yes'),
(280, 'woocommerce_task_list_completed_lists', 'a:2:{i:0;s:8:\"extended\";i:1;s:19:\"extended_two_column\";}', 'yes'),
(282, 'action_scheduler_migration_status', 'complete', 'yes'),
(283, 'woocommerce_onboarding_profile', 'a:9:{s:18:\"is_agree_marketing\";b:0;s:11:\"store_email\";s:0:\"\";s:8:\"industry\";a:1:{i:0;a:2:{s:4:\"slug\";s:5:\"other\";s:6:\"detail\";s:3:\"n/a\";}}s:13:\"product_types\";a:1:{i:0;s:8:\"physical\";}s:13:\"product_count\";s:1:\"0\";s:14:\"selling_venues\";s:2:\"no\";s:12:\"setup_client\";b:1;s:19:\"business_extensions\";a:0:{}s:9:\"completed\";b:1;}', 'yes'),
(284, 'woocommerce_task_list_dismissed_tasks', 'a:0:{}', 'yes'),
(286, 'theme_mods_storefront', 'a:5:{s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:78;s:17:\"storefront_layout\";s:5:\"right\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1664546703;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(287, 'woocommerce_catalog_rows', '4', 'yes'),
(288, 'woocommerce_catalog_columns', '3', 'yes'),
(289, 'woocommerce_maybe_regenerate_images_hash', '344724bddd211306dd2941e6043bc664', 'yes'),
(291, 'storefront_nux_fresh_site', '0', 'yes'),
(292, 'woocommerce_admin_created_default_shipping_zones', 'yes', 'yes'),
(293, 'woocommerce_task_list_prompt_shown', '1', 'yes'),
(299, 'product_cat_children', 'a:1:{i:16;a:3:{i:0;i:17;i:1;i:18;i:2;i:19;}}', 'yes'),
(305, 'pa_size_children', 'a:0:{}', 'yes'),
(307, 'pa_color_children', 'a:0:{}', 'yes'),
(308, 'WPLANG', '', 'yes'),
(309, 'new_admin_email', 'jonathan@civic.com', 'yes'),
(310, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:\"suggestions\";a:28:{i:0;a:4:{s:4:\"slug\";s:28:\"product-edit-meta-tab-header\";s:7:\"context\";s:28:\"product-edit-meta-tab-header\";s:5:\"title\";s:22:\"Recommended extensions\";s:13:\"allow-dismiss\";b:0;}i:1;a:6:{s:4:\"slug\";s:39:\"product-edit-meta-tab-footer-browse-all\";s:7:\"context\";s:28:\"product-edit-meta-tab-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:2;a:9:{s:4:\"slug\";s:46:\"product-edit-mailchimp-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-mailchimp\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/mailchimp-for-memberships.svg\";s:5:\"title\";s:25:\"Mailchimp for Memberships\";s:4:\"copy\";s:79:\"Completely automate your email lists by syncing membership changes to Mailchimp\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/mailchimp-woocommerce-memberships/\";}i:3;a:9:{s:4:\"slug\";s:19:\"product-edit-addons\";s:7:\"product\";s:26:\"woocommerce-product-addons\";s:14:\"show-if-active\";a:2:{i:0;s:25:\"woocommerce-subscriptions\";i:1;s:20:\"woocommerce-bookings\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-add-ons.svg\";s:5:\"title\";s:15:\"Product Add-Ons\";s:4:\"copy\";s:93:\"Offer add-ons like gift wrapping, special messages or other special options for your products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-add-ons/\";}i:4;a:9:{s:4:\"slug\";s:46:\"product-edit-woocommerce-subscriptions-gifting\";s:7:\"product\";s:33:\"woocommerce-subscriptions-gifting\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/gifting-for-subscriptions.svg\";s:5:\"title\";s:25:\"Gifting for Subscriptions\";s:4:\"copy\";s:70:\"Let customers buy subscriptions for others - they\'re the ultimate gift\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/woocommerce-subscriptions-gifting/\";}i:5;a:9:{s:4:\"slug\";s:42:\"product-edit-teams-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-for-teams\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:112:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/teams-for-memberships.svg\";s:5:\"title\";s:21:\"Teams for Memberships\";s:4:\"copy\";s:123:\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/teams-woocommerce-memberships/\";}i:6;a:8:{s:4:\"slug\";s:29:\"product-edit-variation-images\";s:7:\"product\";s:39:\"woocommerce-additional-variation-images\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/additional-variation-images.svg\";s:5:\"title\";s:27:\"Additional Variation Images\";s:4:\"copy\";s:72:\"Showcase your products in the best light with a image for each variation\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:73:\"https://woocommerce.com/products/woocommerce-additional-variation-images/\";}i:7;a:9:{s:4:\"slug\";s:47:\"product-edit-woocommerce-subscription-downloads\";s:7:\"product\";s:34:\"woocommerce-subscription-downloads\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscription-downloads.svg\";s:5:\"title\";s:22:\"Subscription Downloads\";s:4:\"copy\";s:57:\"Give customers special downloads with their subscriptions\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:68:\"https://woocommerce.com/products/woocommerce-subscription-downloads/\";}i:8;a:8:{s:4:\"slug\";s:31:\"product-edit-min-max-quantities\";s:7:\"product\";s:30:\"woocommerce-min-max-quantities\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/min-max-quantities.svg\";s:5:\"title\";s:18:\"Min/Max Quantities\";s:4:\"copy\";s:81:\"Specify minimum and maximum allowed product quantities for orders to be completed\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/min-max-quantities/\";}i:9;a:8:{s:4:\"slug\";s:28:\"product-edit-name-your-price\";s:7:\"product\";s:27:\"woocommerce-name-your-price\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/name-your-price.svg\";s:5:\"title\";s:15:\"Name Your Price\";s:4:\"copy\";s:70:\"Let customers pay what they want - useful for donations, tips and more\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/name-your-price/\";}i:10;a:8:{s:4:\"slug\";s:42:\"product-edit-woocommerce-one-page-checkout\";s:7:\"product\";s:29:\"woocommerce-one-page-checkout\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/one-page-checkout.svg\";s:5:\"title\";s:17:\"One Page Checkout\";s:4:\"copy\";s:92:\"Don\'t make customers click around - let them choose products, checkout & pay all on one page\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/woocommerce-one-page-checkout/\";}i:11;a:9:{s:4:\"slug\";s:24:\"product-edit-automatewoo\";s:7:\"product\";s:11:\"automatewoo\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:23:\"Automate your marketing\";s:4:\"copy\";s:89:\"Win customers and keep them coming back with a nearly endless range of powerful workflows\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:45:\"https://woocommerce.com/products/automatewoo/\";}i:12;a:4:{s:4:\"slug\";s:19:\"orders-empty-header\";s:7:\"context\";s:24:\"orders-list-empty-header\";s:5:\"title\";s:20:\"Tools for your store\";s:13:\"allow-dismiss\";b:0;}i:13;a:6:{s:4:\"slug\";s:30:\"orders-empty-footer-browse-all\";s:7:\"context\";s:24:\"orders-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:14;a:8:{s:4:\"slug\";s:19:\"orders-empty-wc-pay\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-payments\";s:4:\"icon\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/woocommerce-payments.svg\";s:5:\"title\";s:20:\"WooCommerce Payments\";s:4:\"copy\";s:125:\"Securely accept payments and manage transactions directly from your WooCommerce dashboard – no setup costs or monthly fees.\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-payments/\";}i:15;a:8:{s:4:\"slug\";s:19:\"orders-empty-zapier\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:18:\"woocommerce-zapier\";s:4:\"icon\";s:97:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/zapier.svg\";s:5:\"title\";s:6:\"Zapier\";s:4:\"copy\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/woocommerce-zapier/\";}i:16;a:8:{s:4:\"slug\";s:30:\"orders-empty-shipment-tracking\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:29:\"woocommerce-shipment-tracking\";s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipment-tracking.svg\";s:5:\"title\";s:17:\"Shipment Tracking\";s:4:\"copy\";s:86:\"Let customers know when their orders will arrive by adding shipment tracking to emails\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:51:\"https://woocommerce.com/products/shipment-tracking/\";}i:17;a:8:{s:4:\"slug\";s:32:\"orders-empty-table-rate-shipping\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:31:\"woocommerce-table-rate-shipping\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/table-rate-shipping.svg\";s:5:\"title\";s:19:\"Table Rate Shipping\";s:4:\"copy\";s:122:\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/table-rate-shipping/\";}i:18;a:8:{s:4:\"slug\";s:40:\"orders-empty-shipping-carrier-extensions\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipping-carrier-extensions.svg\";s:5:\"title\";s:27:\"Shipping Carrier Extensions\";s:4:\"copy\";s:116:\"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again\";s:11:\"button-text\";s:13:\"Find Carriers\";s:8:\"promoted\";s:26:\"category-shipping-carriers\";s:3:\"url\";s:99:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/\";}i:19;a:8:{s:4:\"slug\";s:32:\"orders-empty-google-product-feed\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-product-feeds\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/google-product-feed.svg\";s:5:\"title\";s:19:\"Google Product Feed\";s:4:\"copy\";s:76:\"Increase sales by letting customers find you when they\'re shopping on Google\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/google-product-feed/\";}i:20;a:4:{s:4:\"slug\";s:35:\"products-empty-header-product-types\";s:7:\"context\";s:26:\"products-list-empty-header\";s:5:\"title\";s:23:\"Other types of products\";s:13:\"allow-dismiss\";b:0;}i:21;a:6:{s:4:\"slug\";s:32:\"products-empty-footer-browse-all\";s:7:\"context\";s:26:\"products-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:22;a:8:{s:4:\"slug\";s:30:\"products-empty-product-vendors\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-vendors\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-vendors.svg\";s:5:\"title\";s:15:\"Product Vendors\";s:4:\"copy\";s:47:\"Turn your store into a multi-vendor marketplace\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-vendors/\";}i:23;a:8:{s:4:\"slug\";s:26:\"products-empty-memberships\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:23:\"woocommerce-memberships\";s:4:\"icon\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/memberships.svg\";s:5:\"title\";s:11:\"Memberships\";s:4:\"copy\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:57:\"https://woocommerce.com/products/woocommerce-memberships/\";}i:24;a:9:{s:4:\"slug\";s:35:\"products-empty-woocommerce-deposits\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-deposits\";s:14:\"show-if-active\";a:1:{i:0;s:20:\"woocommerce-bookings\";}s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/deposits.svg\";s:5:\"title\";s:8:\"Deposits\";s:4:\"copy\";s:75:\"Make it easier for customers to pay by offering a deposit or a payment plan\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-deposits/\";}i:25;a:8:{s:4:\"slug\";s:40:\"products-empty-woocommerce-subscriptions\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-subscriptions\";s:4:\"icon\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:13:\"Subscriptions\";s:4:\"copy\";s:97:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:59:\"https://woocommerce.com/products/woocommerce-subscriptions/\";}i:26;a:8:{s:4:\"slug\";s:35:\"products-empty-woocommerce-bookings\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-bookings\";s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/bookings.svg\";s:5:\"title\";s:8:\"Bookings\";s:4:\"copy\";s:99:\"Allow customers to book appointments, make reservations or rent equipment without leaving your site\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-bookings/\";}i:27;a:8:{s:4:\"slug\";s:30:\"products-empty-product-bundles\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-bundles\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-bundles.svg\";s:5:\"title\";s:15:\"Product Bundles\";s:4:\"copy\";s:49:\"Offer customizable bundles and assembled products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-bundles/\";}}s:7:\"updated\";i:1665574677;}', 'no'),
(311, '_wcpay_feature_subscriptions', '1', 'yes'),
(312, 'jetpack_sync_settings_disable', '0', 'yes'),
(313, 'jetpack_connection_active_plugins', 'a:1:{s:20:\"woocommerce-payments\";a:1:{s:4:\"name\";s:20:\"WooCommerce Payments\";}}', 'yes'),
(314, 'widget_currency_switcher_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(315, 'woocommerce_subscriptions_multiple_purchase', 'yes', 'yes'),
(316, 'woocommerce_subscriptions_sync_payments', 'no', 'yes'),
(317, 'woocommerce_subscriptions_prorate_synced_payments', 'no', 'yes'),
(318, 'woocommerce_subscriptions_days_no_fee', '0', 'yes'),
(319, 'woocommerce_subscriptions_paypal_debugging_default_set', 'true', 'yes'),
(320, 'woocommerce_subscriptions_is_active', '1', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(321, 'woocommerce_woocommerce_payments_settings', 'a:17:{s:7:\"enabled\";s:2:\"no\";s:28:\"account_statement_descriptor\";s:0:\"\";s:14:\"manual_capture\";s:2:\"no\";s:11:\"saved_cards\";s:3:\"yes\";s:9:\"test_mode\";s:2:\"no\";s:14:\"enable_logging\";s:2:\"no\";s:23:\"payment_request_details\";s:0:\"\";s:15:\"payment_request\";s:3:\"yes\";s:27:\"payment_request_button_type\";s:3:\"buy\";s:28:\"payment_request_button_theme\";s:4:\"dark\";s:29:\"payment_request_button_height\";s:2:\"44\";s:28:\"payment_request_button_label\";s:7:\"Buy now\";s:32:\"payment_request_button_locations\";a:3:{i:0;s:7:\"product\";i:1;s:4:\"cart\";i:2;s:8:\"checkout\";}s:30:\"upe_enabled_payment_method_ids\";a:1:{i:0;s:4:\"card\";}s:27:\"payment_request_button_size\";s:7:\"default\";s:17:\"platform_checkout\";s:2:\"no\";s:35:\"payment_request_button_branded_type\";s:0:\"\";}', 'yes'),
(322, 'wcpay_upe_is_tracked', '1', 'yes'),
(323, 'wcpay_activation_timestamp', '1660655381', 'yes'),
(324, 'woocommerce_woocommerce_payments_version', '4.5.1', 'yes'),
(325, 'wcpay_multi_currency_store_currency', 'USD', 'yes'),
(326, 'wcs_upgrade_initial_total_subscription_count', '0', 'yes'),
(327, 'woocommerce_subscriptions_previous_version', '0', 'yes'),
(328, 'wc_subscriptions_siteurl', 'https://socurepocdev_[wc_subscriptions_siteurl]_.wpengine.com', 'yes'),
(329, 'woocommerce_subscriptions_active_version', '3.1.6', 'yes'),
(330, 'jetpack_options', 'a:5:{s:28:\"fallback_no_verify_ssl_certs\";i:0;s:9:\"time_diff\";i:0;s:2:\"id\";i:209724605;s:6:\"public\";i:1;s:14:\"last_heartbeat\";i:1665482782;}', 'yes'),
(331, 'wcpay_multi_currency_customer_currencies', 'a:3:{s:4:\"data\";a:2:{s:10:\"currencies\";a:1:{i:0;s:3:\"USD\";}s:7:\"updated\";i:1665577325;}s:7:\"fetched\";i:1665577325;s:7:\"errored\";b:0;}', 'no'),
(332, 'wcpay_menu_badge_hidden', 'yes', 'yes'),
(333, 'jetpack_secrets', 'a:1:{s:19:\"jetpack_authorize_1\";a:3:{s:8:\"secret_1\";s:32:\"JwUNsy8eKfPf4LpGJ83hv66Re4RmYOAI\";s:8:\"secret_2\";s:32:\"un7eN6ge0JqGRedqyZnGN8Z6ghVYDADu\";s:3:\"exp\";i:1660662591;}}', 'no'),
(334, 'jetpack_sync_https_history_site_url', 'a:5:{i:0;s:5:\"https\";i:1;s:5:\"https\";i:2;s:5:\"https\";i:3;s:5:\"https\";i:4;s:5:\"https\";}', 'yes'),
(335, 'jetpack_sync_https_history_home_url', 'a:5:{i:0;s:5:\"https\";i:1;s:5:\"https\";i:2;s:5:\"https\";i:3;s:5:\"https\";i:4;s:5:\"https\";}', 'yes'),
(337, 'jetpack_package_versions', 'a:2:{s:10:\"connection\";s:6:\"1.37.3\";s:4:\"sync\";s:6:\"1.30.5\";}', 'yes'),
(338, 'jetpack_private_options', 'a:1:{s:10:\"blog_token\";s:65:\"hGw&Dpim%*D@7972noKgD1w0!g^1(OvJ.NymJ)LmjI8iLp4xBRkHi87r%aJsAL*8f\";}', 'yes'),
(339, 'jetpack_sync_settings_max_queue_size', '5000', 'yes'),
(340, 'jetpack_sync_settings_max_queue_lag', '7200', 'yes'),
(346, 'jetpack_sync_settings_dedicated_sync_enabled', '0', 'yes'),
(347, 'jetpack_sync_settings_dequeue_max_bytes', '500000', 'yes'),
(348, 'jetpack_sync_settings_upload_max_bytes', '600000', 'yes'),
(349, 'jetpack_sync_settings_upload_max_rows', '500', 'yes'),
(350, 'jetpack_sync_settings_sync_wait_time', '10', 'yes'),
(351, 'jetpack_sync_settings_sync_wait_threshold', '10', 'yes'),
(352, 'jetpack_sync_settings_enqueue_wait_time', '1', 'yes'),
(353, 'jetpack_sync_settings_queue_max_writes_sec', '100', 'yes'),
(354, 'jetpack_sync_settings_post_types_blacklist', 'a:0:{}', 'yes'),
(355, 'jetpack_sync_settings_taxonomies_blacklist', 'a:0:{}', 'yes'),
(356, 'jetpack_sync_settings_render_filtered_content', '0', 'yes'),
(357, 'jetpack_sync_settings_post_meta_whitelist', 'a:0:{}', 'yes'),
(358, 'jetpack_sync_settings_comment_meta_whitelist', 'a:0:{}', 'yes'),
(359, 'jetpack_sync_settings_max_enqueue_full_sync', '100', 'yes'),
(360, 'jetpack_sync_settings_max_queue_size_full_sync', '1000', 'yes'),
(361, 'jetpack_sync_settings_sync_via_cron', '1', 'yes'),
(362, 'jetpack_sync_settings_cron_sync_time_limit', '240', 'yes'),
(363, 'jetpack_sync_settings_known_importers', 'a:6:{s:16:\"Blogger_Importer\";s:7:\"blogger\";s:13:\"LJ_API_Import\";s:11:\"livejournal\";s:9:\"MT_Import\";s:2:\"mt\";s:10:\"RSS_Import\";s:3:\"rss\";s:20:\"WC_Tax_Rate_Importer\";s:12:\"woo-tax-rate\";s:9:\"WP_Import\";s:9:\"wordpress\";}', 'yes'),
(364, 'jetpack_sync_settings_term_relationships_full_sync_item_size', '100', 'yes'),
(365, 'jetpack_sync_settings_sync_sender_enabled', '1', 'yes'),
(366, 'jetpack_sync_settings_full_sync_sender_enabled', '1', 'yes'),
(367, 'jetpack_sync_settings_full_sync_send_duration', '9', 'yes'),
(368, 'jetpack_sync_settings_full_sync_limits', 'a:5:{s:8:\"comments\";a:2:{s:10:\"chunk_size\";i:100;s:10:\"max_chunks\";i:10;}s:5:\"posts\";a:2:{s:10:\"chunk_size\";i:100;s:10:\"max_chunks\";i:1;}s:18:\"term_relationships\";a:2:{s:10:\"chunk_size\";i:1000;s:10:\"max_chunks\";i:10;}s:5:\"terms\";a:2:{s:10:\"chunk_size\";i:1000;s:10:\"max_chunks\";i:10;}s:5:\"users\";a:2:{s:10:\"chunk_size\";i:100;s:10:\"max_chunks\";i:10;}}', 'yes'),
(369, 'jetpack_sync_settings_checksum_disable', '0', 'yes'),
(370, 'jp_sync_lock_full_sync_enqueue', '', 'no'),
(375, 'woocommerce_setup_jetpack_opted_in', '1', 'yes'),
(380, 'jetpack_callables_sync_checksum', 'a:4:{s:8:\"site_url\";i:4152451335;s:8:\"home_url\";i:4152451335;s:14:\"paused_plugins\";i:223132457;s:13:\"paused_themes\";i:223132457;}', 'no'),
(381, 'jpsq_sync_checkout', '0:0', 'no'),
(382, 'jetpack_plugin_api_action_links', 'a:2:{s:27:\"woocommerce/woocommerce.php\";a:1:{s:8:\"Settings\";s:72:\"https://zerodayshopping.identity.com/wp-admin/admin.php?page=wc-settings\";}s:45:\"woocommerce-payments/woocommerce-payments.php\";a:1:{s:8:\"Settings\";s:114:\"https://zerodayshopping.identity.com/wp-admin/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments\";}}', 'yes'),
(383, 'jp_sync_last_success_sync', '1665578331.2', 'no'),
(384, 'jetpack_next_sync_time_full-sync-enqueue', '1660656000', 'yes'),
(385, 'jpsq_full_sync_checkout', '0:0', 'no'),
(388, 'jetpack_next_sync_time_full_sync', '1660655403', 'yes'),
(389, 'jp_sync_last_success_full_sync', '1660656003.73', 'no'),
(398, 'wcpay_dispute_status_counts_cache', 'a:3:{s:4:\"data\";N;s:7:\"fetched\";i:1665574576;s:7:\"errored\";b:1;}', 'no'),
(400, 'woocommerce_solana_pay_gateway_settings', 'a:7:{s:7:\"enabled\";s:3:\"yes\";s:19:\"message_to_customer\";s:34:\"Thanks for paying with the future!\";s:20:\"merchant_wallet_info\";s:0:\"\";s:15:\"merchant_wallet\";s:44:\"FuRbm4WDM83to4w25ZwiYfVz1f5TNwkZiMHV8cH9hDtR\";s:24:\"verification_service_url\";s:54:\"https://solana-payment-verifier.soma-labs.workers.dev/\";s:8:\"dev_info\";s:0:\"\";s:7:\"devmode\";s:3:\"yes\";}', 'yes'),
(413, 'jetpack_sync_full__started', '1660655999', 'no'),
(414, 'jetpack_sync_full_config', 'a:3:{s:9:\"functions\";b:1;s:7:\"options\";b:1;s:11:\"woocommerce\";b:1;}', 'no'),
(415, 'jetpack_sync_full_enqueue_status', 'a:4:{s:9:\"functions\";a:3:{i:0;i:1;i:1;i:1;i:2;b:1;}s:7:\"options\";a:3:{i:0;i:1;i:1;i:1;i:2;b:1;}s:9:\"full-sync\";b:0;s:11:\"woocommerce\";a:3:{i:0;i:1;i:1;i:1;i:2;b:1;}}', 'no'),
(421, 'jetpack_sync_full__queue_finished', '1660655999', 'yes'),
(423, 'jetpack_sync_full__send_started', '1660656003', 'no'),
(424, 'jetpack_sync_full__functions_sent', '1', 'no'),
(425, 'jetpack_sync_full__functions_sent_total', '-1', 'no'),
(426, 'jetpack_sync_full__options_sent', '1', 'no'),
(427, 'jetpack_sync_full__options_sent_total', '-1', 'no'),
(428, 'jetpack_sync_full__woocommerce_sent', '1', 'no'),
(429, 'jetpack_sync_full__woocommerce_sent_total', '1', 'no'),
(430, 'jetpack_sync_full__finished', '1660656003', 'no'),
(431, 'woocommerce_admin_last_orders_milestone', '10', 'yes'),
(476, 'woocommerce_task_list_reminder_bar_hidden', 'yes', 'yes'),
(640, 'jetpack_next_sync_time_sync', '1665577182', 'yes'),
(641, 'woocommerce_sales_record_date', '2022-10-03', 'yes'),
(642, 'woocommerce_sales_record_amount', '8', 'yes'),
(719, 'storefront_nux_guided_tour', '1', 'yes'),
(721, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(722, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(726, 'woocommerce_onboarding_homepage_post_id', '76', 'yes'),
(728, 'woocommerce_demo_store_notice', '', 'yes'),
(729, 'woocommerce_task_list_tracked_completed_actions', 'a:1:{i:0;s:10:\"appearance\";}', 'yes'),
(730, 'woocommerce_admin_reviewed_default_shipping_zones', 'yes', 'yes'),
(731, 'woocommerce_enable_signup_from_checkout_for_subscriptions', 'no', 'no'),
(732, 'woocommerce_erasure_request_removes_subscription_data', 'no', 'no'),
(733, 'woocommerce_anonymize_ended_subscriptions', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(734, 'category_children', 'a:0:{}', 'yes'),
(735, 'woocommerce_checkout_company_field', 'hidden', 'yes'),
(736, 'woocommerce_checkout_address_2_field', 'hidden', 'yes'),
(737, 'woocommerce_checkout_phone_field', 'hidden', 'yes'),
(739, 'theme_mods_shoppe', 'a:7:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:11:\"custom_logo\";i:93;s:12:\"header_image\";s:13:\"remove-header\";s:16:\"background_image\";s:0:\"\";s:16:\"header_textcolor\";s:5:\"blank\";s:16:\"background_color\";s:6:\"ffffff\";}', 'yes'),
(743, 'theme_switched_via_customizer', '', 'yes'),
(744, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(751, 'jetpack_site_icon_url', 'https://zerodayshopping.identity.com/wp-content/uploads/2022/09/image.png', 'yes'),
(761, 'site_logo', '93', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', 'woocommerce-placeholder.png'),
(4, 5, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:8:\"filesize\";i:102644;s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:35:\"woocommerce-placeholder-380x380.png\";s:5:\"width\";i:380;s:6:\"height\";i:380;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15387;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-120x120.png\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2252;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-700x700.png\";s:5:\"width\";i:700;s:6:\"height\";i:700;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:42019;}s:6:\"medium\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:10659;}s:5:\"large\";a:5:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:80210;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3738;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:48652;}s:28:\"gb-block-post-grid-landscape\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x400.png\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:31009;}s:25:\"gb-block-post-grid-square\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:32129;}s:24:\"genesis-block-theme-logo\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:10659;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 12, '_sku', 'identity-vneck-tee'),
(8, 12, 'total_sales', '0'),
(9, 12, '_tax_status', 'taxable'),
(10, 12, '_tax_class', ''),
(11, 12, '_manage_stock', 'no'),
(12, 12, '_backorders', 'no'),
(13, 12, '_sold_individually', 'no'),
(14, 12, '_virtual', 'no'),
(15, 12, '_downloadable', 'no'),
(16, 12, '_download_limit', '0'),
(17, 12, '_download_expiry', '0'),
(18, 12, '_stock', NULL),
(19, 12, '_stock_status', 'instock'),
(20, 12, '_wc_average_rating', '0'),
(21, 12, '_wc_review_count', '0'),
(22, 12, '_product_version', '6.8.0'),
(24, 13, '_sku', 'woo-hoodie'),
(25, 13, 'total_sales', '0'),
(26, 13, '_tax_status', 'taxable'),
(27, 13, '_tax_class', ''),
(28, 13, '_manage_stock', 'no'),
(29, 13, '_backorders', 'no'),
(30, 13, '_sold_individually', 'no'),
(31, 13, '_virtual', 'no'),
(32, 13, '_downloadable', 'no'),
(33, 13, '_download_limit', '0'),
(34, 13, '_download_expiry', '0'),
(35, 13, '_stock', NULL),
(36, 13, '_stock_status', 'instock'),
(37, 13, '_wc_average_rating', '0'),
(38, 13, '_wc_review_count', '0'),
(39, 13, '_product_version', '6.8.0'),
(41, 14, '_sku', 'woo-hoodie-with-logo'),
(42, 14, 'total_sales', '0'),
(43, 14, '_tax_status', 'taxable'),
(44, 14, '_tax_class', ''),
(45, 14, '_manage_stock', 'no'),
(46, 14, '_backorders', 'no'),
(47, 14, '_sold_individually', 'no'),
(48, 14, '_virtual', 'no'),
(49, 14, '_downloadable', 'no'),
(50, 14, '_download_limit', '0'),
(51, 14, '_download_expiry', '0'),
(52, 14, '_stock', NULL),
(53, 14, '_stock_status', 'instock'),
(54, 14, '_wc_average_rating', '0'),
(55, 14, '_wc_review_count', '0'),
(56, 14, '_product_version', '6.8.0'),
(58, 15, '_sku', 'identity-tshirt'),
(59, 15, 'total_sales', '0'),
(60, 15, '_tax_status', 'taxable'),
(61, 15, '_tax_class', ''),
(62, 15, '_manage_stock', 'no'),
(63, 15, '_backorders', 'no'),
(64, 15, '_sold_individually', 'no'),
(65, 15, '_virtual', 'no'),
(66, 15, '_downloadable', 'no'),
(67, 15, '_download_limit', '0'),
(68, 15, '_download_expiry', '0'),
(69, 15, '_stock', NULL),
(70, 15, '_stock_status', 'instock'),
(71, 15, '_wc_average_rating', '0'),
(72, 15, '_wc_review_count', '0'),
(73, 15, '_product_version', '6.8.0'),
(75, 16, '_sku', 'woo-beanie'),
(76, 16, 'total_sales', '1'),
(77, 16, '_tax_status', 'taxable'),
(78, 16, '_tax_class', ''),
(79, 16, '_manage_stock', 'no'),
(80, 16, '_backorders', 'no'),
(81, 16, '_sold_individually', 'no'),
(82, 16, '_virtual', 'no'),
(83, 16, '_downloadable', 'no'),
(84, 16, '_download_limit', '0'),
(85, 16, '_download_expiry', '0'),
(86, 16, '_stock', NULL),
(87, 16, '_stock_status', 'instock'),
(88, 16, '_wc_average_rating', '0'),
(89, 16, '_wc_review_count', '0'),
(90, 16, '_product_version', '6.8.0'),
(92, 17, '_sku', 'woo-belt'),
(93, 17, 'total_sales', '0'),
(94, 17, '_tax_status', 'taxable'),
(95, 17, '_tax_class', ''),
(96, 17, '_manage_stock', 'no'),
(97, 17, '_backorders', 'no'),
(98, 17, '_sold_individually', 'no'),
(99, 17, '_virtual', 'no'),
(100, 17, '_downloadable', 'no'),
(101, 17, '_download_limit', '0'),
(102, 17, '_download_expiry', '0'),
(103, 17, '_stock', NULL),
(104, 17, '_stock_status', 'instock'),
(105, 17, '_wc_average_rating', '0'),
(106, 17, '_wc_review_count', '0'),
(107, 17, '_product_version', '6.8.0'),
(109, 18, '_sku', 'identity-cap'),
(110, 18, 'total_sales', '0'),
(111, 18, '_tax_status', 'taxable'),
(112, 18, '_tax_class', ''),
(113, 18, '_manage_stock', 'no'),
(114, 18, '_backorders', 'no'),
(115, 18, '_sold_individually', 'no'),
(116, 18, '_virtual', 'no'),
(117, 18, '_downloadable', 'no'),
(118, 18, '_download_limit', '0'),
(119, 18, '_download_expiry', '0'),
(120, 18, '_stock', NULL),
(121, 18, '_stock_status', 'instock'),
(122, 18, '_wc_average_rating', '0'),
(123, 18, '_wc_review_count', '0'),
(124, 18, '_product_version', '6.8.0'),
(126, 19, '_sku', 'identity-sunglasses'),
(127, 19, 'total_sales', '0'),
(128, 19, '_tax_status', 'taxable'),
(129, 19, '_tax_class', ''),
(130, 19, '_manage_stock', 'no'),
(131, 19, '_backorders', 'no'),
(132, 19, '_sold_individually', 'no'),
(133, 19, '_virtual', 'no'),
(134, 19, '_downloadable', 'no'),
(135, 19, '_download_limit', '0'),
(136, 19, '_download_expiry', '0'),
(137, 19, '_stock', NULL),
(138, 19, '_stock_status', 'instock'),
(139, 19, '_wc_average_rating', '0'),
(140, 19, '_wc_review_count', '0'),
(141, 19, '_product_version', '6.8.0'),
(143, 20, '_sku', 'identity-hoodie-with-pocket'),
(144, 20, 'total_sales', '0'),
(145, 20, '_tax_status', 'taxable'),
(146, 20, '_tax_class', ''),
(147, 20, '_manage_stock', 'no'),
(148, 20, '_backorders', 'no'),
(149, 20, '_sold_individually', 'no'),
(150, 20, '_virtual', 'no'),
(151, 20, '_downloadable', 'no'),
(152, 20, '_download_limit', '0'),
(153, 20, '_download_expiry', '0'),
(154, 20, '_stock', NULL),
(155, 20, '_stock_status', 'instock'),
(156, 20, '_wc_average_rating', '0'),
(157, 20, '_wc_review_count', '0'),
(158, 20, '_product_version', '6.8.0'),
(160, 21, '_sku', 'woo-hoodie-with-zipper'),
(161, 21, 'total_sales', '0'),
(162, 21, '_tax_status', 'taxable'),
(163, 21, '_tax_class', ''),
(164, 21, '_manage_stock', 'no'),
(165, 21, '_backorders', 'no'),
(166, 21, '_sold_individually', 'no'),
(167, 21, '_virtual', 'no'),
(168, 21, '_downloadable', 'no'),
(169, 21, '_download_limit', '0'),
(170, 21, '_download_expiry', '0'),
(171, 21, '_stock', NULL),
(172, 21, '_stock_status', 'instock'),
(173, 21, '_wc_average_rating', '0'),
(174, 21, '_wc_review_count', '0'),
(175, 21, '_product_version', '6.8.0'),
(177, 22, '_sku', 'identity-long-sleeve-tee'),
(178, 22, 'total_sales', '0'),
(179, 22, '_tax_status', 'taxable'),
(180, 22, '_tax_class', ''),
(181, 22, '_manage_stock', 'no'),
(182, 22, '_backorders', 'no'),
(183, 22, '_sold_individually', 'no'),
(184, 22, '_virtual', 'no'),
(185, 22, '_downloadable', 'no'),
(186, 22, '_download_limit', '0'),
(187, 22, '_download_expiry', '0'),
(188, 22, '_stock', NULL),
(189, 22, '_stock_status', 'instock'),
(190, 22, '_wc_average_rating', '0'),
(191, 22, '_wc_review_count', '0'),
(192, 22, '_product_version', '6.8.0'),
(194, 23, '_sku', 'identity-polo'),
(195, 23, 'total_sales', '0'),
(196, 23, '_tax_status', 'taxable'),
(197, 23, '_tax_class', ''),
(198, 23, '_manage_stock', 'no'),
(199, 23, '_backorders', 'no'),
(200, 23, '_sold_individually', 'no'),
(201, 23, '_virtual', 'no'),
(202, 23, '_downloadable', 'no'),
(203, 23, '_download_limit', '0'),
(204, 23, '_download_expiry', '0'),
(205, 23, '_stock', NULL),
(206, 23, '_stock_status', 'instock'),
(207, 23, '_wc_average_rating', '0'),
(208, 23, '_wc_review_count', '0'),
(209, 23, '_product_version', '6.8.0'),
(211, 24, '_sku', 'woo-album'),
(212, 24, 'total_sales', '5'),
(213, 24, '_tax_status', 'taxable'),
(214, 24, '_tax_class', ''),
(215, 24, '_manage_stock', 'no'),
(216, 24, '_backorders', 'no'),
(217, 24, '_sold_individually', 'no'),
(218, 24, '_virtual', 'yes'),
(219, 24, '_downloadable', 'yes'),
(220, 24, '_download_limit', '1'),
(221, 24, '_download_expiry', '1'),
(222, 24, '_stock', NULL),
(223, 24, '_stock_status', 'instock'),
(224, 24, '_wc_average_rating', '0'),
(225, 24, '_wc_review_count', '0'),
(226, 24, '_product_version', '6.8.0'),
(228, 25, '_sku', 'woo-single'),
(229, 25, 'total_sales', '0'),
(230, 25, '_tax_status', 'taxable'),
(231, 25, '_tax_class', ''),
(232, 25, '_manage_stock', 'no'),
(233, 25, '_backorders', 'no'),
(234, 25, '_sold_individually', 'no'),
(235, 25, '_virtual', 'yes'),
(236, 25, '_downloadable', 'yes'),
(237, 25, '_download_limit', '1'),
(238, 25, '_download_expiry', '1'),
(239, 25, '_stock', NULL),
(240, 25, '_stock_status', 'instock'),
(241, 25, '_wc_average_rating', '0'),
(242, 25, '_wc_review_count', '0'),
(243, 25, '_product_version', '6.8.0'),
(296, 29, '_sku', 'woo-hoodie-red'),
(297, 29, 'total_sales', '0'),
(298, 29, '_tax_status', 'taxable'),
(299, 29, '_tax_class', ''),
(300, 29, '_manage_stock', 'no'),
(301, 29, '_backorders', 'no'),
(302, 29, '_sold_individually', 'no'),
(303, 29, '_virtual', 'no'),
(304, 29, '_downloadable', 'no'),
(305, 29, '_download_limit', '0'),
(306, 29, '_download_expiry', '0'),
(307, 29, '_stock', NULL),
(308, 29, '_stock_status', 'instock'),
(309, 29, '_wc_average_rating', '0'),
(310, 29, '_wc_review_count', '0'),
(311, 29, '_product_version', '6.8.0'),
(313, 30, '_sku', 'woo-hoodie-green'),
(314, 30, 'total_sales', '0'),
(315, 30, '_tax_status', 'taxable'),
(316, 30, '_tax_class', ''),
(317, 30, '_manage_stock', 'no'),
(318, 30, '_backorders', 'no'),
(319, 30, '_sold_individually', 'no'),
(320, 30, '_virtual', 'no'),
(321, 30, '_downloadable', 'no'),
(322, 30, '_download_limit', '0'),
(323, 30, '_download_expiry', '0'),
(324, 30, '_stock', NULL),
(325, 30, '_stock_status', 'instock'),
(326, 30, '_wc_average_rating', '0'),
(327, 30, '_wc_review_count', '0'),
(328, 30, '_product_version', '6.8.0'),
(330, 31, '_sku', 'woo-hoodie-blue'),
(331, 31, 'total_sales', '0'),
(332, 31, '_tax_status', 'taxable'),
(333, 31, '_tax_class', ''),
(334, 31, '_manage_stock', 'no'),
(335, 31, '_backorders', 'no'),
(336, 31, '_sold_individually', 'no'),
(337, 31, '_virtual', 'no'),
(338, 31, '_downloadable', 'no'),
(339, 31, '_download_limit', '0'),
(340, 31, '_download_expiry', '0'),
(341, 31, '_stock', NULL),
(342, 31, '_stock_status', 'instock'),
(343, 31, '_wc_average_rating', '0'),
(344, 31, '_wc_review_count', '0'),
(345, 31, '_product_version', '6.8.0'),
(347, 32, '_sku', 'Woo-tshirt-logo'),
(348, 32, 'total_sales', '0'),
(349, 32, '_tax_status', 'taxable'),
(350, 32, '_tax_class', ''),
(351, 32, '_manage_stock', 'no'),
(352, 32, '_backorders', 'no'),
(353, 32, '_sold_individually', 'no'),
(354, 32, '_virtual', 'no'),
(355, 32, '_downloadable', 'no'),
(356, 32, '_download_limit', '0'),
(357, 32, '_download_expiry', '0'),
(358, 32, '_stock', NULL),
(359, 32, '_stock_status', 'instock'),
(360, 32, '_wc_average_rating', '0'),
(361, 32, '_wc_review_count', '0'),
(362, 32, '_product_version', '6.8.0'),
(364, 33, '_sku', 'identity-beanie'),
(365, 33, 'total_sales', '0'),
(366, 33, '_tax_status', 'taxable'),
(367, 33, '_tax_class', ''),
(368, 33, '_manage_stock', 'no'),
(369, 33, '_backorders', 'no'),
(370, 33, '_sold_individually', 'no'),
(371, 33, '_virtual', 'no'),
(372, 33, '_downloadable', 'no'),
(373, 33, '_download_limit', '0'),
(374, 33, '_download_expiry', '0'),
(375, 33, '_stock', NULL),
(376, 33, '_stock_status', 'instock'),
(377, 33, '_wc_average_rating', '0'),
(378, 33, '_wc_review_count', '0'),
(379, 33, '_product_version', '6.8.0'),
(381, 34, '_sku', 'logo-collection'),
(382, 34, 'total_sales', '0'),
(383, 34, '_tax_status', 'taxable'),
(384, 34, '_tax_class', ''),
(385, 34, '_manage_stock', 'no'),
(386, 34, '_backorders', 'no'),
(387, 34, '_sold_individually', 'no'),
(388, 34, '_virtual', 'no'),
(389, 34, '_downloadable', 'no'),
(390, 34, '_download_limit', '0'),
(391, 34, '_download_expiry', '0'),
(392, 34, '_stock', NULL),
(393, 34, '_stock_status', 'instock'),
(394, 34, '_wc_average_rating', '0'),
(395, 34, '_wc_review_count', '0'),
(396, 34, '_product_version', '6.8.0'),
(398, 35, '_sku', 'wp-pennant'),
(399, 35, 'total_sales', '0'),
(400, 35, '_tax_status', 'taxable'),
(401, 35, '_tax_class', ''),
(402, 35, '_manage_stock', 'no'),
(403, 35, '_backorders', 'no'),
(404, 35, '_sold_individually', 'no'),
(405, 35, '_virtual', 'no'),
(406, 35, '_downloadable', 'no'),
(407, 35, '_download_limit', '0'),
(408, 35, '_download_expiry', '0'),
(409, 35, '_stock', NULL),
(410, 35, '_stock_status', 'instock'),
(411, 35, '_wc_average_rating', '0'),
(412, 35, '_wc_review_count', '0'),
(413, 35, '_product_version', '6.8.0'),
(415, 36, '_sku', 'woo-hoodie-blue-logo'),
(416, 36, 'total_sales', '0'),
(417, 36, '_tax_status', 'taxable'),
(418, 36, '_tax_class', ''),
(419, 36, '_manage_stock', 'no'),
(420, 36, '_backorders', 'no'),
(421, 36, '_sold_individually', 'no'),
(422, 36, '_virtual', 'no'),
(423, 36, '_downloadable', 'no'),
(424, 36, '_download_limit', '0'),
(425, 36, '_download_expiry', '0'),
(426, 36, '_stock', NULL),
(427, 36, '_stock_status', 'instock'),
(428, 36, '_wc_average_rating', '0'),
(429, 36, '_wc_review_count', '0'),
(430, 36, '_product_version', '6.8.0'),
(432, 37, '_wp_attached_file', '2022/08/vneck-tee-2.jpg'),
(433, 37, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:23:\"2022/08/vneck-tee-2.jpg\";s:8:\"filesize\";i:49497;s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:23:\"vneck-tee-2-380x380.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9695;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:23:\"vneck-tee-2-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1896;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:23:\"vneck-tee-2-700x699.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:699;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:22439;}s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"vneck-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6880;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"vneck-tee-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2553;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"vneck-tee-2-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:25630;}s:28:\"gb-block-post-grid-landscape\";a:5:{s:4:\"file\";s:23:\"vneck-tee-2-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17195;}s:25:\"gb-block-post-grid-square\";a:5:{s:4:\"file\";s:23:\"vneck-tee-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18184;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(434, 37, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vneck-tee-2.jpg'),
(435, 38, '_wp_attached_file', '2022/08/vnech-tee-green-1.jpg'),
(436, 38, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:29:\"2022/08/vnech-tee-green-1.jpg\";s:8:\"filesize\";i:102362;s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:29:\"vnech-tee-green-1-380x380.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13149;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:29:\"vnech-tee-green-1-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4235;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:29:\"vnech-tee-green-1-700x700.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:29447;}s:6:\"medium\";a:5:{s:4:\"file\";s:29:\"vnech-tee-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9771;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:29:\"vnech-tee-green-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4944;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:29:\"vnech-tee-green-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:33395;}s:28:\"gb-block-post-grid-landscape\";a:5:{s:4:\"file\";s:29:\"vnech-tee-green-1-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:22054;}s:25:\"gb-block-post-grid-square\";a:5:{s:4:\"file\";s:29:\"vnech-tee-green-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:23810;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(437, 38, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vnech-tee-green-1.jpg'),
(438, 39, '_wp_attached_file', '2022/08/vnech-tee-blue-1.jpg'),
(439, 39, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:28:\"2022/08/vnech-tee-blue-1.jpg\";s:8:\"filesize\";i:120226;s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:28:\"vnech-tee-blue-1-380x380.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14459;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:28:\"vnech-tee-blue-1-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4476;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:28:\"vnech-tee-blue-1-700x700.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:33302;}s:6:\"medium\";a:5:{s:4:\"file\";s:28:\"vnech-tee-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10727;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:28:\"vnech-tee-blue-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5234;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:28:\"vnech-tee-blue-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:37562;}s:28:\"gb-block-post-grid-landscape\";a:5:{s:4:\"file\";s:28:\"vnech-tee-blue-1-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:24914;}s:25:\"gb-block-post-grid-square\";a:5:{s:4:\"file\";s:28:\"vnech-tee-blue-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:26737;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(440, 39, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vnech-tee-blue-1.jpg'),
(441, 12, '_wpcom_is_markdown', '1'),
(442, 12, '_wp_old_slug', 'import-placeholder-for-44'),
(444, 12, '_thumbnail_id', '37'),
(445, 12, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(446, 40, '_wp_attached_file', '2022/08/hoodie-2.jpg'),
(447, 40, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2022/08/hoodie-2.jpg\";s:8:\"filesize\";i:46079;s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:20:\"hoodie-2-380x380.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9714;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:20:\"hoodie-2-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1823;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:20:\"hoodie-2-700x700.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21988;}s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"hoodie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6895;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"hoodie-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2521;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"hoodie-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:25134;}s:28:\"gb-block-post-grid-landscape\";a:5:{s:4:\"file\";s:20:\"hoodie-2-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16844;}s:25:\"gb-block-post-grid-square\";a:5:{s:4:\"file\";s:20:\"hoodie-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17796;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(448, 40, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-2.jpg'),
(449, 41, '_wp_attached_file', '2022/08/hoodie-blue-1.jpg'),
(450, 41, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:25:\"2022/08/hoodie-blue-1.jpg\";s:8:\"filesize\";i:101298;s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:25:\"hoodie-blue-1-380x380.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13759;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:25:\"hoodie-blue-1-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4268;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:25:\"hoodie-blue-1-700x700.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:29948;}s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"hoodie-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10171;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"hoodie-blue-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5036;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"hoodie-blue-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:34101;}s:28:\"gb-block-post-grid-landscape\";a:5:{s:4:\"file\";s:25:\"hoodie-blue-1-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:22599;}s:25:\"gb-block-post-grid-square\";a:5:{s:4:\"file\";s:25:\"hoodie-blue-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:24308;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(451, 41, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-blue-1.jpg'),
(452, 42, '_wp_attached_file', '2022/08/hoodie-green-1.jpg'),
(453, 42, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:26:\"2022/08/hoodie-green-1.jpg\";s:8:\"filesize\";i:98498;s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:26:\"hoodie-green-1-380x380.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13617;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:26:\"hoodie-green-1-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4303;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:26:\"hoodie-green-1-700x700.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:29798;}s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"hoodie-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10090;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"hoodie-green-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5009;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:26:\"hoodie-green-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:33786;}s:28:\"gb-block-post-grid-landscape\";a:5:{s:4:\"file\";s:26:\"hoodie-green-1-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:22615;}s:25:\"gb-block-post-grid-square\";a:5:{s:4:\"file\";s:26:\"hoodie-green-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:24056;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(454, 42, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-green-1.jpg'),
(455, 43, '_wp_attached_file', '2022/08/hoodie-with-logo-2.jpg'),
(456, 43, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:30:\"2022/08/hoodie-with-logo-2.jpg\";s:8:\"filesize\";i:46969;s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:30:\"hoodie-with-logo-2-380x380.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10116;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:30:\"hoodie-with-logo-2-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1823;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:30:\"hoodie-with-logo-2-700x700.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:22794;}s:6:\"medium\";a:5:{s:4:\"file\";s:30:\"hoodie-with-logo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7047;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:30:\"hoodie-with-logo-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2472;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:30:\"hoodie-with-logo-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:25905;}s:28:\"gb-block-post-grid-landscape\";a:5:{s:4:\"file\";s:30:\"hoodie-with-logo-2-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17559;}s:25:\"gb-block-post-grid-square\";a:5:{s:4:\"file\";s:30:\"hoodie-with-logo-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18531;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(457, 43, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-logo-2.jpg'),
(458, 13, '_wpcom_is_markdown', '1'),
(459, 13, '_wp_old_slug', 'import-placeholder-for-45'),
(460, 13, '_product_image_gallery', '41,42,43'),
(461, 13, '_thumbnail_id', '40'),
(462, 13, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:4:\"logo\";a:6:{s:4:\"name\";s:4:\"Logo\";s:5:\"value\";s:8:\"Yes | No\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:0;}}'),
(463, 14, '_wpcom_is_markdown', '1'),
(464, 14, '_wp_old_slug', 'import-placeholder-for-46'),
(465, 14, '_regular_price', '0.01'),
(466, 14, '_thumbnail_id', '43'),
(467, 14, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(468, 14, '_price', '0.01'),
(469, 44, '_wp_attached_file', '2022/08/tshirt-2.jpg'),
(470, 44, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2022/08/tshirt-2.jpg\";s:8:\"filesize\";i:41155;s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:20:\"tshirt-2-380x380.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8472;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:20:\"tshirt-2-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1623;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:20:\"tshirt-2-700x700.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19556;}s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"tshirt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5988;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"tshirt-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2190;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"tshirt-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:22122;}s:28:\"gb-block-post-grid-landscape\";a:5:{s:4:\"file\";s:20:\"tshirt-2-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14768;}s:25:\"gb-block-post-grid-square\";a:5:{s:4:\"file\";s:20:\"tshirt-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15809;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(471, 44, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/tshirt-2.jpg'),
(472, 15, '_wpcom_is_markdown', '1'),
(473, 15, '_wp_old_slug', 'import-placeholder-for-47'),
(474, 15, '_regular_price', '19'),
(475, 15, '_thumbnail_id', '44'),
(476, 15, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(477, 15, '_price', '19'),
(478, 45, '_wp_attached_file', '2022/08/beanie-2.jpg'),
(479, 45, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2022/08/beanie-2.jpg\";s:8:\"filesize\";i:31568;s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:20:\"beanie-2-380x380.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6752;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:20:\"beanie-2-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1482;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:20:\"beanie-2-700x700.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14828;}s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"beanie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4729;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"beanie-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1925;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"beanie-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16885;}s:28:\"gb-block-post-grid-landscape\";a:5:{s:4:\"file\";s:20:\"beanie-2-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11445;}s:25:\"gb-block-post-grid-square\";a:5:{s:4:\"file\";s:20:\"beanie-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12226;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(480, 45, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/beanie-2.jpg'),
(481, 16, '_wpcom_is_markdown', '1'),
(482, 16, '_wp_old_slug', 'import-placeholder-for-48'),
(483, 16, '_regular_price', '0.01'),
(485, 16, '_thumbnail_id', '45'),
(486, 16, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(487, 16, '_price', '0.01'),
(488, 46, '_wp_attached_file', '2022/08/belt-2.jpg'),
(489, 46, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:18:\"2022/08/belt-2.jpg\";s:8:\"filesize\";i:37339;s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:18:\"belt-2-380x380.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7853;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:18:\"belt-2-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1518;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:18:\"belt-2-700x700.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18877;}s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"belt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5653;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"belt-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2128;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"belt-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21502;}s:28:\"gb-block-post-grid-landscape\";a:5:{s:4:\"file\";s:18:\"belt-2-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14058;}s:25:\"gb-block-post-grid-square\";a:5:{s:4:\"file\";s:18:\"belt-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14977;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(490, 46, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/belt-2.jpg'),
(491, 17, '_wpcom_is_markdown', '1'),
(492, 17, '_wp_old_slug', 'import-placeholder-for-58'),
(493, 17, '_regular_price', '0.01'),
(495, 17, '_thumbnail_id', '46'),
(496, 17, '_price', '0.01'),
(497, 47, '_wp_attached_file', '2022/08/cap-2.jpg'),
(498, 47, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:17:\"2022/08/cap-2.jpg\";s:8:\"filesize\";i:37675;s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:17:\"cap-2-380x380.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7959;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:17:\"cap-2-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1480;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:17:\"cap-2-700x700.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18734;}s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"cap-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5570;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"cap-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2004;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"cap-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21299;}s:28:\"gb-block-post-grid-landscape\";a:5:{s:4:\"file\";s:17:\"cap-2-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14030;}s:25:\"gb-block-post-grid-square\";a:5:{s:4:\"file\";s:17:\"cap-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14965;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(499, 47, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/cap-2.jpg'),
(500, 18, '_wpcom_is_markdown', '1'),
(501, 18, '_wp_old_slug', 'import-placeholder-for-60'),
(502, 18, '_regular_price', '10'),
(504, 18, '_thumbnail_id', '47'),
(505, 18, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(506, 18, '_price', '10'),
(507, 48, '_wp_attached_file', '2022/08/sunglasses-2.jpg'),
(508, 48, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:24:\"2022/08/sunglasses-2.jpg\";s:8:\"filesize\";i:24691;s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:24:\"sunglasses-2-380x380.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5894;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:24:\"sunglasses-2-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1201;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:24:\"sunglasses-2-700x700.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13916;}s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"sunglasses-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4204;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"sunglasses-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1639;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"sunglasses-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15831;}s:28:\"gb-block-post-grid-landscape\";a:5:{s:4:\"file\";s:24:\"sunglasses-2-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10373;}s:25:\"gb-block-post-grid-square\";a:5:{s:4:\"file\";s:24:\"sunglasses-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11319;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(509, 48, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/sunglasses-2.jpg'),
(510, 19, '_wpcom_is_markdown', '1'),
(511, 19, '_wp_old_slug', 'import-placeholder-for-62'),
(512, 19, '_regular_price', '8'),
(513, 19, '_thumbnail_id', '48'),
(514, 19, '_price', '8'),
(515, 49, '_wp_attached_file', '2022/08/hoodie-with-pocket-2.jpg'),
(516, 49, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:32:\"2022/08/hoodie-with-pocket-2.jpg\";s:8:\"filesize\";i:43268;s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-380x380.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9477;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1702;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-700x700.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21525;}s:6:\"medium\";a:5:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6778;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2377;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:24666;}s:28:\"gb-block-post-grid-landscape\";a:5:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16717;}s:25:\"gb-block-post-grid-square\";a:5:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17522;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(517, 49, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-pocket-2.jpg'),
(518, 20, '_wpcom_is_markdown', '1'),
(519, 20, '_wp_old_slug', 'import-placeholder-for-64'),
(520, 20, '_regular_price', '40'),
(522, 20, '_thumbnail_id', '49'),
(523, 20, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(524, 20, '_price', '40'),
(525, 50, '_wp_attached_file', '2022/08/hoodie-with-zipper-2.jpg'),
(526, 50, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:32:\"2022/08/hoodie-with-zipper-2.jpg\";s:8:\"filesize\";i:56609;s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-380x380.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11552;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2071;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-700x700.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:26551;}s:6:\"medium\";a:5:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8084;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2941;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:30007;}s:28:\"gb-block-post-grid-landscape\";a:5:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:20409;}s:25:\"gb-block-post-grid-square\";a:5:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21483;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(527, 50, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-zipper-2.jpg'),
(528, 21, '_wpcom_is_markdown', '1'),
(529, 21, '_wp_old_slug', 'import-placeholder-for-66'),
(530, 21, '_regular_price', '0.01'),
(531, 21, '_thumbnail_id', '50'),
(532, 21, '_price', '0.01'),
(533, 51, '_wp_attached_file', '2022/08/long-sleeve-tee-2.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(534, 51, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:29:\"2022/08/long-sleeve-tee-2.jpg\";s:8:\"filesize\";i:51118;s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:29:\"long-sleeve-tee-2-380x380.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9709;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:29:\"long-sleeve-tee-2-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1915;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:29:\"long-sleeve-tee-2-700x700.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:22339;}s:6:\"medium\";a:5:{s:4:\"file\";s:29:\"long-sleeve-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6992;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:29:\"long-sleeve-tee-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2666;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:29:\"long-sleeve-tee-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:25781;}s:28:\"gb-block-post-grid-landscape\";a:5:{s:4:\"file\";s:29:\"long-sleeve-tee-2-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17408;}s:25:\"gb-block-post-grid-square\";a:5:{s:4:\"file\";s:29:\"long-sleeve-tee-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18263;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(535, 51, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/long-sleeve-tee-2.jpg'),
(536, 22, '_wpcom_is_markdown', '1'),
(537, 22, '_wp_old_slug', 'import-placeholder-for-68'),
(538, 22, '_regular_price', '14'),
(539, 22, '_thumbnail_id', '51'),
(540, 22, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(541, 22, '_price', '14'),
(542, 52, '_wp_attached_file', '2022/08/polo-2.jpg'),
(543, 52, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:18:\"2022/08/polo-2.jpg\";s:8:\"filesize\";i:44409;s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:18:\"polo-2-380x380.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8729;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:18:\"polo-2-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1671;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:18:\"polo-2-700x699.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:699;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:20832;}s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"polo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6233;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"polo-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2265;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"polo-2-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:23666;}s:28:\"gb-block-post-grid-landscape\";a:5:{s:4:\"file\";s:18:\"polo-2-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15638;}s:25:\"gb-block-post-grid-square\";a:5:{s:4:\"file\";s:18:\"polo-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16691;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(544, 52, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/polo-2.jpg'),
(545, 23, '_wpcom_is_markdown', '1'),
(546, 23, '_wp_old_slug', 'import-placeholder-for-70'),
(547, 23, '_regular_price', '20'),
(548, 23, '_thumbnail_id', '52'),
(549, 23, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(550, 23, '_price', '20'),
(551, 53, '_wp_attached_file', '2022/08/album-1.jpg'),
(552, 53, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2022/08/album-1.jpg\";s:8:\"filesize\";i:120010;s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:19:\"album-1-380x380.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14004;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:19:\"album-1-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3333;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:19:\"album-1-700x700.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:32428;}s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"album-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10262;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"album-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4130;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:19:\"album-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:36409;}s:28:\"gb-block-post-grid-landscape\";a:5:{s:4:\"file\";s:19:\"album-1-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:24227;}s:25:\"gb-block-post-grid-square\";a:5:{s:4:\"file\";s:19:\"album-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:25764;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(553, 53, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2022/05/album-1.jpg'),
(554, 24, '_wpcom_is_markdown', '1'),
(555, 24, '_wp_old_slug', 'import-placeholder-for-73'),
(556, 24, '_regular_price', '0.01'),
(557, 24, '_thumbnail_id', '53'),
(558, 24, '_downloadable_files', 'a:2:{s:36:\"60ee0613-3a8f-4a77-af52-f7c534d42a1e\";a:4:{s:2:\"id\";s:36:\"60ee0613-3a8f-4a77-af52-f7c534d42a1e\";s:4:\"name\";s:8:\"Single 1\";s:4:\"file\";s:85:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/single.jpg\";s:7:\"enabled\";b:1;}s:36:\"284d197e-c691-4ce8-9b22-cceb64c1ef44\";a:4:{s:2:\"id\";s:36:\"284d197e-c691-4ce8-9b22-cceb64c1ef44\";s:4:\"name\";s:8:\"Single 2\";s:4:\"file\";s:84:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/album.jpg\";s:7:\"enabled\";b:1;}}'),
(559, 24, '_price', '0.01'),
(560, 54, '_wp_attached_file', '2022/08/single-1.jpg'),
(561, 54, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:20:\"2022/08/single-1.jpg\";s:8:\"filesize\";i:124720;s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:20:\"single-1-380x380.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15985;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:20:\"single-1-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4954;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:20:\"single-1-700x700.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:33887;}s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"single-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12049;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"single-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5872;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"single-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:38589;}s:28:\"gb-block-post-grid-landscape\";a:5:{s:4:\"file\";s:20:\"single-1-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:26118;}s:25:\"gb-block-post-grid-square\";a:5:{s:4:\"file\";s:20:\"single-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:27597;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(562, 54, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/single-1.jpg'),
(563, 25, '_wpcom_is_markdown', '1'),
(564, 25, '_wp_old_slug', 'import-placeholder-for-75'),
(565, 25, '_regular_price', '0.01'),
(567, 25, '_thumbnail_id', '54'),
(568, 25, '_downloadable_files', 'a:1:{s:36:\"76b92097-6705-4050-b428-b161e1d2981c\";a:4:{s:2:\"id\";s:36:\"76b92097-6705-4050-b428-b161e1d2981c\";s:4:\"name\";s:6:\"Single\";s:4:\"file\";s:85:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/single.jpg\";s:7:\"enabled\";b:1;}}'),
(569, 25, '_price', '0.01'),
(594, 29, '_wpcom_is_markdown', ''),
(595, 29, '_wp_old_slug', 'import-placeholder-for-79'),
(596, 29, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(597, 29, '_regular_price', '45'),
(598, 29, '_sale_price', '42'),
(599, 29, '_thumbnail_id', '40'),
(600, 29, 'attribute_pa_color', 'red'),
(601, 29, 'attribute_logo', 'No'),
(602, 29, '_price', '42'),
(603, 30, '_wpcom_is_markdown', ''),
(604, 30, '_wp_old_slug', 'import-placeholder-for-80'),
(605, 30, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(606, 30, '_regular_price', '45'),
(607, 30, '_thumbnail_id', '42'),
(608, 30, 'attribute_pa_color', 'green'),
(609, 30, 'attribute_logo', 'No'),
(610, 30, '_price', '45'),
(611, 31, '_wpcom_is_markdown', ''),
(612, 31, '_wp_old_slug', 'import-placeholder-for-81'),
(613, 31, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(614, 31, '_regular_price', '45'),
(615, 31, '_thumbnail_id', '41'),
(616, 31, 'attribute_pa_color', 'blue'),
(617, 31, 'attribute_logo', 'No'),
(618, 31, '_price', '45'),
(619, 55, '_wp_attached_file', '2022/08/t-shirt-with-logo-1.jpg'),
(620, 55, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:31:\"2022/08/t-shirt-with-logo-1.jpg\";s:8:\"filesize\";i:67833;s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-380x380.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10201;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1899;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-700x700.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:23679;}s:6:\"medium\";a:5:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7079;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2606;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:26765;}s:28:\"gb-block-post-grid-landscape\";a:5:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18102;}s:25:\"gb-block-post-grid-square\";a:5:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19065;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(621, 55, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/t-shirt-with-logo-1.jpg'),
(622, 32, '_wpcom_is_markdown', '1'),
(623, 32, '_wp_old_slug', 'import-placeholder-for-83'),
(624, 32, '_regular_price', '0.01'),
(625, 32, '_thumbnail_id', '55'),
(626, 32, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(627, 32, '_price', '0.01'),
(628, 56, '_wp_attached_file', '2022/08/beanie-with-logo-1.jpg'),
(629, 56, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:30:\"2022/08/beanie-with-logo-1.jpg\";s:8:\"filesize\";i:45371;s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:30:\"beanie-with-logo-1-380x380.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6952;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:30:\"beanie-with-logo-1-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1542;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:30:\"beanie-with-logo-1-700x700.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15395;}s:6:\"medium\";a:5:{s:4:\"file\";s:30:\"beanie-with-logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4856;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:30:\"beanie-with-logo-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1905;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:30:\"beanie-with-logo-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17303;}s:28:\"gb-block-post-grid-landscape\";a:5:{s:4:\"file\";s:30:\"beanie-with-logo-1-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11806;}s:25:\"gb-block-post-grid-square\";a:5:{s:4:\"file\";s:30:\"beanie-with-logo-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12512;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(630, 56, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/beanie-with-logo-1.jpg'),
(631, 33, '_wpcom_is_markdown', '1'),
(632, 33, '_wp_old_slug', 'import-placeholder-for-85'),
(633, 33, '_regular_price', '9'),
(635, 33, '_thumbnail_id', '56'),
(636, 33, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(637, 33, '_price', '9'),
(638, 57, '_wp_attached_file', '2022/08/logo-1.jpg'),
(639, 57, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:799;s:4:\"file\";s:18:\"2022/08/logo-1.jpg\";s:8:\"filesize\";i:139907;s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:18:\"logo-1-380x380.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:20725;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:18:\"logo-1-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3582;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:18:\"logo-1-700x699.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:699;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:47744;}s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14763;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"logo-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5188;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:18:\"logo-1-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:54160;}s:28:\"gb-block-post-grid-landscape\";a:5:{s:4:\"file\";s:18:\"logo-1-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:30763;}s:25:\"gb-block-post-grid-square\";a:5:{s:4:\"file\";s:18:\"logo-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:38654;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(640, 57, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/logo-1.jpg'),
(641, 34, '_wpcom_is_markdown', '1'),
(642, 34, '_wp_old_slug', 'import-placeholder-for-87'),
(643, 34, '_children', 'a:3:{i:0;i:14;i:1;i:15;i:2;i:16;}'),
(644, 34, '_product_image_gallery', '56,55,43'),
(645, 34, '_thumbnail_id', '57'),
(646, 34, '_price', '18'),
(647, 34, '_price', '45'),
(648, 12, '_price', '19'),
(649, 12, '_price', '19'),
(652, 58, '_wp_attached_file', '2022/08/pennant-1.jpg'),
(653, 58, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2022/08/pennant-1.jpg\";s:8:\"filesize\";i:56755;s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:21:\"pennant-1-380x380.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8487;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:21:\"pennant-1-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:1535;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:21:\"pennant-1-700x700.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:20786;}s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"pennant-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5834;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"pennant-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2043;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"pennant-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:23774;}s:28:\"gb-block-post-grid-landscape\";a:5:{s:4:\"file\";s:21:\"pennant-1-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15631;}s:25:\"gb-block-post-grid-square\";a:5:{s:4:\"file\";s:21:\"pennant-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16687;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(654, 58, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/pennant-1.jpg'),
(655, 35, '_wpcom_is_markdown', '1'),
(656, 35, '_wp_old_slug', 'import-placeholder-for-89'),
(657, 35, '_regular_price', '0.01'),
(658, 35, '_thumbnail_id', '58'),
(659, 35, '_product_url', 'https://mercantile.wordpress.org/product/wordpress-pennant/'),
(660, 35, '_button_text', 'Buy on the WordPress swag store!'),
(661, 35, '_price', '0.01'),
(662, 36, '_wpcom_is_markdown', ''),
(663, 36, '_wp_old_slug', 'import-placeholder-for-90'),
(664, 36, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(665, 36, '_regular_price', '45'),
(666, 36, '_thumbnail_id', '43'),
(667, 36, 'attribute_pa_color', 'blue'),
(668, 36, 'attribute_logo', 'Yes'),
(669, 36, '_price', '45'),
(670, 13, '_price', '42'),
(671, 13, '_price', '45'),
(672, 35, '_edit_last', '1'),
(673, 34, '_edit_last', '1'),
(674, 33, '_edit_last', '1'),
(675, 32, '_edit_last', '1'),
(676, 25, '_edit_last', '1'),
(677, 21, '_edit_last', '1'),
(678, 24, '_edit_last', '1'),
(679, 23, '_edit_last', '1'),
(680, 22, '_edit_last', '1'),
(681, 20, '_edit_last', '1'),
(682, 19, '_edit_last', '1'),
(683, 18, '_edit_last', '1'),
(684, 12, '_edit_last', '1'),
(685, 17, '_edit_last', '1'),
(686, 16, '_edit_last', '1'),
(687, 15, '_edit_last', '1'),
(688, 14, '_edit_last', '1'),
(689, 13, '_edit_last', '1'),
(690, 59, '_order_key', 'wc_order_s05XuElYc98DF'),
(691, 59, '_customer_user', '1'),
(692, 59, '_payment_method', 'solana_pay_gateway'),
(693, 59, '_payment_method_title', 'Solana Payment Gateway'),
(694, 59, '_customer_ip_address', '41.13.204.180'),
(695, 59, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36'),
(696, 59, '_created_via', 'checkout'),
(697, 59, '_cart_hash', '745e84398d1667ab0e4b98e5df1cd97b'),
(698, 59, '_billing_first_name', 'William'),
(699, 59, '_billing_last_name', 'Brooks'),
(700, 59, '_billing_company', 'Personal'),
(701, 59, '_billing_address_1', '32 Plakkaten Street, Bothasig'),
(702, 59, '_billing_address_2', 'Bothasig'),
(703, 59, '_billing_city', 'Cape Town'),
(704, 59, '_billing_state', 'WC'),
(705, 59, '_billing_postcode', '7441'),
(706, 59, '_billing_country', 'ZA'),
(707, 59, '_billing_email', 'william@explicit.co.za'),
(708, 59, '_billing_phone', '+27829283948'),
(709, 59, '_order_currency', 'USD'),
(710, 59, '_cart_discount', '0'),
(711, 59, '_cart_discount_tax', '0'),
(712, 59, '_order_shipping', '0'),
(713, 59, '_order_shipping_tax', '0'),
(714, 59, '_order_tax', '0'),
(715, 59, '_order_total', '0.01'),
(716, 59, '_order_version', '6.8.0'),
(717, 59, '_prices_include_tax', 'no'),
(718, 59, '_billing_address_index', 'William Brooks Personal 32 Plakkaten Street, Bothasig Bothasig Cape Town WC 7441 ZA william@explicit.co.za +27829283948'),
(719, 59, '_shipping_address_index', '         '),
(720, 59, 'is_vat_exempt', 'no'),
(721, 59, 'solana_reference', 'BwtaYvbNUsMhMsTLMmhNR98QMvUgKni22qXrhCYQKs85'),
(722, 60, '_order_key', 'wc_order_5YCo0bkbk9LaY'),
(723, 60, '_customer_user', '0'),
(724, 60, '_payment_method', 'solana_pay_gateway'),
(725, 60, '_payment_method_title', 'Solana Payment Gateway'),
(726, 60, '_customer_ip_address', '197.229.1.222'),
(727, 60, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36'),
(728, 60, '_created_via', 'checkout'),
(729, 60, '_cart_hash', '745e84398d1667ab0e4b98e5df1cd97b'),
(730, 60, '_billing_first_name', 'William'),
(731, 60, '_billing_last_name', 'Brooks'),
(732, 60, '_billing_company', 'Personal'),
(733, 60, '_billing_address_1', '32 Plakkaten Street, Bothasig, Bothasig'),
(734, 60, '_billing_address_2', 'Bothasig'),
(735, 60, '_billing_city', 'Cape Town'),
(736, 60, '_billing_state', 'WC'),
(737, 60, '_billing_postcode', '7441'),
(738, 60, '_billing_country', 'ZA'),
(739, 60, '_billing_email', 'william@explicit.co.za'),
(740, 60, '_billing_phone', '+27829283948'),
(741, 60, '_order_currency', 'USD'),
(742, 60, '_cart_discount', '0'),
(743, 60, '_cart_discount_tax', '0'),
(744, 60, '_order_shipping', '0'),
(745, 60, '_order_shipping_tax', '0'),
(746, 60, '_order_tax', '0'),
(747, 60, '_order_total', '0.01'),
(748, 60, '_order_version', '6.8.0'),
(749, 60, '_prices_include_tax', 'no'),
(750, 60, '_billing_address_index', 'William Brooks Personal 32 Plakkaten Street, Bothasig, Bothasig Bothasig Cape Town WC 7441 ZA william@explicit.co.za +27829283948'),
(751, 60, '_shipping_address_index', '         '),
(752, 60, 'is_vat_exempt', 'no'),
(753, 60, 'solana_reference', '6JGzsTTe7kY9BM69BStWQoRZ53qRvPFBxz16BLquhGo8'),
(754, 61, '_order_key', 'wc_order_WW096760YhH3m'),
(755, 61, '_customer_user', '0'),
(756, 61, '_payment_method', 'solana_pay_gateway'),
(757, 61, '_payment_method_title', 'Solana Payment Gateway'),
(758, 61, '_customer_ip_address', '197.229.1.180'),
(759, 61, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36'),
(760, 61, '_created_via', 'checkout'),
(761, 61, '_cart_hash', '745e84398d1667ab0e4b98e5df1cd97b'),
(762, 61, '_billing_first_name', 'William'),
(763, 61, '_billing_last_name', 'Brooks'),
(764, 61, '_billing_address_1', 'n.a'),
(765, 61, '_billing_address_2', 'n.a'),
(766, 61, '_billing_city', 'n.a'),
(767, 61, '_billing_state', 'CA'),
(768, 61, '_billing_postcode', '12345'),
(769, 61, '_billing_country', 'US'),
(770, 61, '_billing_email', 'william@explicit.co.za'),
(771, 61, '_billing_phone', '123'),
(772, 61, '_order_currency', 'USD'),
(773, 61, '_cart_discount', '0'),
(774, 61, '_cart_discount_tax', '0'),
(775, 61, '_order_shipping', '0'),
(776, 61, '_order_shipping_tax', '0'),
(777, 61, '_order_tax', '0'),
(778, 61, '_order_total', '0.01'),
(779, 61, '_order_version', '6.8.0'),
(780, 61, '_prices_include_tax', 'no'),
(781, 61, '_billing_address_index', 'William Brooks  n.a n.a n.a CA 12345 US william@explicit.co.za 123'),
(782, 61, '_shipping_address_index', '         '),
(783, 61, 'is_vat_exempt', 'no'),
(784, 61, 'solana_reference', 'AbzGZEwAPhdbKfPKULz6oghojvYnDQj7rU2Eq8krvoNA'),
(785, 62, '_order_key', 'wc_order_yN38GADWJ4bGh'),
(786, 62, '_customer_user', '0'),
(787, 62, '_payment_method', 'solana_pay_gateway'),
(788, 62, '_payment_method_title', 'Solana Payment Gateway'),
(789, 62, '_customer_ip_address', '197.229.1.129'),
(790, 62, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36'),
(791, 62, '_created_via', 'checkout'),
(792, 62, '_cart_hash', '745e84398d1667ab0e4b98e5df1cd97b'),
(793, 62, '_billing_first_name', 'William'),
(794, 62, '_billing_last_name', 'Brooks'),
(795, 62, '_billing_address_1', 'n.a'),
(796, 62, '_billing_address_2', 'n.a'),
(797, 62, '_billing_city', 'n.a'),
(798, 62, '_billing_state', 'CA'),
(799, 62, '_billing_postcode', '12345'),
(800, 62, '_billing_country', 'US'),
(801, 62, '_billing_email', 'william@explicit.co.za'),
(802, 62, '_billing_phone', '123'),
(803, 62, '_order_currency', 'USD'),
(804, 62, '_cart_discount', '0'),
(805, 62, '_cart_discount_tax', '0'),
(806, 62, '_order_shipping', '0'),
(807, 62, '_order_shipping_tax', '0'),
(808, 62, '_order_tax', '0'),
(809, 62, '_order_total', '0.01'),
(810, 62, '_order_version', '6.8.0'),
(811, 62, '_prices_include_tax', 'no'),
(812, 62, '_billing_address_index', 'William Brooks  n.a n.a n.a CA 12345 US william@explicit.co.za 123'),
(813, 62, '_shipping_address_index', '         '),
(814, 62, 'is_vat_exempt', 'no'),
(815, 62, 'solana_reference', 'ErTahURybrzkiE9t7NdgoW4TP686GQnFtrwt9TudvzKq'),
(816, 62, '_transaction_id', '3bSBZYTsmvHu2nTUNFgBZU7GxuZqSZrAJUaDWwa67J2LtJMKTgZ8ykG9QpyeHTG5biFpPMYuo1Jn4o9k7HmAK7Z9'),
(817, 62, '_date_completed', '1663670071'),
(818, 62, '_date_paid', '1663670071'),
(819, 62, '_paid_date', '2022-09-20 10:34:31'),
(820, 62, '_completed_date', '2022-09-20 10:34:31'),
(821, 62, '_download_permissions_granted', 'yes'),
(822, 62, '_recorded_sales', 'yes'),
(823, 62, '_recorded_coupon_usage_counts', 'yes'),
(824, 62, '_order_stock_reduced', 'yes'),
(825, 62, '_new_order_email_sent', 'true'),
(826, 63, '_order_key', 'wc_order_BAqh6IdnPc2aL'),
(827, 63, '_customer_user', '0'),
(828, 63, '_payment_method', 'solana_pay_gateway'),
(829, 63, '_payment_method_title', 'Solana Payment Gateway'),
(830, 63, '_customer_ip_address', '197.229.1.222'),
(831, 63, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36'),
(832, 63, '_created_via', 'checkout'),
(833, 63, '_cart_hash', '745e84398d1667ab0e4b98e5df1cd97b'),
(834, 63, '_billing_first_name', 'William'),
(835, 63, '_billing_last_name', 'Brooks'),
(836, 63, '_billing_address_1', 'n.a'),
(837, 63, '_billing_address_2', 'n.a'),
(838, 63, '_billing_city', 'n.a'),
(839, 63, '_billing_state', 'CA'),
(840, 63, '_billing_postcode', '12345'),
(841, 63, '_billing_country', 'US'),
(842, 63, '_billing_email', 'william@explicit.co.za'),
(843, 63, '_billing_phone', '123'),
(844, 63, '_order_currency', 'USD'),
(845, 63, '_cart_discount', '0'),
(846, 63, '_cart_discount_tax', '0'),
(847, 63, '_order_shipping', '0'),
(848, 63, '_order_shipping_tax', '0'),
(849, 63, '_order_tax', '0'),
(850, 63, '_order_total', '0.01'),
(851, 63, '_order_version', '6.8.0'),
(852, 63, '_prices_include_tax', 'no'),
(853, 63, '_billing_address_index', 'William Brooks  n.a n.a n.a CA 12345 US william@explicit.co.za 123'),
(854, 63, '_shipping_address_index', '         '),
(855, 63, 'is_vat_exempt', 'no'),
(856, 63, 'solana_reference', 'DJ6Za1w78RggBqYg9WTZpUHguBU9Nf656BQdXLdnqnRz'),
(857, 63, '_transaction_id', '5wn1x26iJ5LNKr34TcKsTQnf8S4dupNMDTLqSahDvwghtvUS1P7Fu6xLacFwsLZVFioMMi5M22SX1WGkvK7W31Ey'),
(858, 63, '_date_completed', '1663672227'),
(859, 63, '_date_paid', '1663672227'),
(860, 63, '_paid_date', '2022-09-20 11:10:27'),
(861, 63, '_completed_date', '2022-09-20 11:10:27'),
(862, 63, '_download_permissions_granted', 'yes'),
(863, 63, '_recorded_sales', 'yes'),
(864, 63, '_recorded_coupon_usage_counts', 'yes'),
(865, 63, '_order_stock_reduced', 'yes'),
(866, 63, '_new_order_email_sent', 'true'),
(867, 64, '_order_key', 'wc_order_8i9QBBlA5hTBs'),
(868, 64, '_customer_user', '0'),
(869, 64, '_payment_method', 'solana_pay_gateway'),
(870, 64, '_payment_method_title', 'Solana Payment Gateway'),
(871, 64, '_customer_ip_address', '197.229.1.198'),
(872, 64, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36'),
(873, 64, '_created_via', 'checkout'),
(874, 64, '_cart_hash', '745e84398d1667ab0e4b98e5df1cd97b'),
(875, 64, '_billing_first_name', 'William'),
(876, 64, '_billing_last_name', 'Brooks'),
(877, 64, '_billing_address_1', 'n.a'),
(878, 64, '_billing_address_2', 'n.a'),
(879, 64, '_billing_city', 'n.a'),
(880, 64, '_billing_state', 'CA'),
(881, 64, '_billing_postcode', '12345'),
(882, 64, '_billing_country', 'US'),
(883, 64, '_billing_email', 'william@explicit.co.za'),
(884, 64, '_billing_phone', '123'),
(885, 64, '_order_currency', 'USD'),
(886, 64, '_cart_discount', '0'),
(887, 64, '_cart_discount_tax', '0'),
(888, 64, '_order_shipping', '0'),
(889, 64, '_order_shipping_tax', '0'),
(890, 64, '_order_tax', '0'),
(891, 64, '_order_total', '0.01'),
(892, 64, '_order_version', '6.8.0'),
(893, 64, '_prices_include_tax', 'no'),
(894, 64, '_billing_address_index', 'William Brooks  n.a n.a n.a CA 12345 US william@explicit.co.za 123'),
(895, 64, '_shipping_address_index', '         '),
(896, 64, 'is_vat_exempt', 'no'),
(897, 64, 'solana_reference', '2zdqwQgAoyjoqQTYBu3eLntFt6NsEppHE7QZM3zknwp2'),
(898, 64, '_transaction_id', 'pDMYqhrx4RnpiRzUkT6nSWcU2qCFzRXEQoXmtvQpFJoSyXtsxAv4gPqLcUVSB1HMZExtepCH2krU9gaa1xmtjRR'),
(899, 64, '_date_completed', '1663674312'),
(900, 64, '_date_paid', '1663674312'),
(901, 64, '_paid_date', '2022-09-20 11:45:12'),
(902, 64, '_completed_date', '2022-09-20 11:45:12'),
(903, 64, '_download_permissions_granted', 'yes'),
(904, 64, '_recorded_sales', 'yes'),
(905, 64, '_recorded_coupon_usage_counts', 'yes'),
(906, 64, '_order_stock_reduced', 'yes'),
(907, 64, '_new_order_email_sent', 'true'),
(908, 65, '_order_key', 'wc_order_hAEf2FfNoH9Yl'),
(909, 65, '_customer_user', '0'),
(910, 65, '_payment_method', 'solana_pay_gateway'),
(911, 65, '_payment_method_title', 'Solana Payment Gateway'),
(912, 65, '_customer_ip_address', '197.229.1.180'),
(913, 65, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36'),
(914, 65, '_created_via', 'checkout'),
(915, 65, '_cart_hash', '745e84398d1667ab0e4b98e5df1cd97b'),
(916, 65, '_billing_first_name', 'William'),
(917, 65, '_billing_last_name', 'Brooks'),
(918, 65, '_billing_address_1', 'n.a'),
(919, 65, '_billing_address_2', 'n.a'),
(920, 65, '_billing_city', 'n.a'),
(921, 65, '_billing_state', 'CA'),
(922, 65, '_billing_postcode', '12345'),
(923, 65, '_billing_country', 'US'),
(924, 65, '_billing_email', 'william@explicit.co.za'),
(925, 65, '_billing_phone', '123'),
(926, 65, '_order_currency', 'USD'),
(927, 65, '_cart_discount', '0'),
(928, 65, '_cart_discount_tax', '0'),
(929, 65, '_order_shipping', '0'),
(930, 65, '_order_shipping_tax', '0'),
(931, 65, '_order_tax', '0'),
(932, 65, '_order_total', '0.01'),
(933, 65, '_order_version', '6.8.0'),
(934, 65, '_prices_include_tax', 'no'),
(935, 65, '_billing_address_index', 'William Brooks  n.a n.a n.a CA 12345 US william@explicit.co.za 123'),
(936, 65, '_shipping_address_index', '         '),
(937, 65, 'is_vat_exempt', 'no'),
(938, 65, 'solana_reference', 'EwTYpLffwamMPtu1xaQvppYyCMEuFefesphi1uYmwjS1'),
(939, 65, '_transaction_id', '3DqTZcNKSdx2TT8pfLS46hLndohLYFBnQEJE8fS6DSvqrb9aqK2q518Rh4RurDuGJuZ8SAqd9VCczrKi5m9UTRkf'),
(940, 65, '_date_completed', '1663677545'),
(941, 65, '_date_paid', '1663677545'),
(942, 65, '_paid_date', '2022-09-20 12:39:05'),
(943, 65, '_completed_date', '2022-09-20 12:39:05'),
(944, 65, '_download_permissions_granted', 'yes'),
(945, 65, '_recorded_sales', 'yes'),
(946, 65, '_recorded_coupon_usage_counts', 'yes'),
(947, 65, '_order_stock_reduced', 'yes'),
(948, 65, '_new_order_email_sent', 'true'),
(949, 66, '_order_key', 'wc_order_DF8bb7ktzU1Ow'),
(950, 66, '_customer_user', '0'),
(951, 66, '_payment_method', 'solana_pay_gateway'),
(952, 66, '_payment_method_title', 'Solana Payment Gateway'),
(953, 66, '_customer_ip_address', '197.229.1.198'),
(954, 66, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36'),
(955, 66, '_created_via', 'checkout'),
(956, 66, '_cart_hash', '745e84398d1667ab0e4b98e5df1cd97b'),
(957, 66, '_billing_first_name', 'William'),
(958, 66, '_billing_last_name', 'Brooks'),
(959, 66, '_billing_company', 'Personal'),
(960, 66, '_billing_address_1', '32 Plakkaten Street, Bothasig, Bothasig'),
(961, 66, '_billing_address_2', 'Bothasig'),
(962, 66, '_billing_city', 'Cape Town'),
(963, 66, '_billing_state', 'WC'),
(964, 66, '_billing_postcode', '7441'),
(965, 66, '_billing_country', 'ZA'),
(966, 66, '_billing_email', 'william@explicit.co.za'),
(967, 66, '_billing_phone', '+27829283948'),
(968, 66, '_order_currency', 'USD'),
(969, 66, '_cart_discount', '0'),
(970, 66, '_cart_discount_tax', '0'),
(971, 66, '_order_shipping', '0'),
(972, 66, '_order_shipping_tax', '0'),
(973, 66, '_order_tax', '0'),
(974, 66, '_order_total', '0.01'),
(975, 66, '_order_version', '6.8.0'),
(976, 66, '_prices_include_tax', 'no'),
(977, 66, '_billing_address_index', 'William Brooks Personal 32 Plakkaten Street, Bothasig, Bothasig Bothasig Cape Town WC 7441 ZA william@explicit.co.za +27829283948'),
(978, 66, '_shipping_address_index', '         '),
(979, 66, 'is_vat_exempt', 'no'),
(980, 66, 'solana_reference', '5aYRMFafzq8xfPGJA7FmRsf2PBWo4ju8txsQB43sAq8k'),
(981, 67, '_order_key', 'wc_order_Yc4J7APLbZ9oS'),
(982, 67, '_customer_user', '0'),
(983, 67, '_payment_method', 'solana_pay_gateway'),
(984, 67, '_payment_method_title', 'Solana Payment Gateway'),
(985, 67, '_customer_ip_address', '197.229.1.222'),
(986, 67, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36'),
(987, 67, '_created_via', 'checkout'),
(988, 67, '_cart_hash', '745e84398d1667ab0e4b98e5df1cd97b'),
(989, 67, '_billing_first_name', 'William'),
(990, 67, '_billing_last_name', 'Brooks'),
(991, 67, '_billing_address_1', 'n.a'),
(992, 67, '_billing_address_2', 'n.a'),
(993, 67, '_billing_city', 'n.a'),
(994, 67, '_billing_state', 'CA'),
(995, 67, '_billing_postcode', '12345'),
(996, 67, '_billing_country', 'US'),
(997, 67, '_billing_email', 'william@explicit.co.za'),
(998, 67, '_billing_phone', '123'),
(999, 67, '_order_currency', 'USD'),
(1000, 67, '_cart_discount', '0'),
(1001, 67, '_cart_discount_tax', '0'),
(1002, 67, '_order_shipping', '0'),
(1003, 67, '_order_shipping_tax', '0'),
(1004, 67, '_order_tax', '0'),
(1005, 67, '_order_total', '0.01'),
(1006, 67, '_order_version', '6.8.0'),
(1007, 67, '_prices_include_tax', 'no'),
(1008, 67, '_billing_address_index', 'William Brooks  n.a n.a n.a CA 12345 US william@explicit.co.za 123'),
(1009, 67, '_shipping_address_index', '         '),
(1010, 67, 'is_vat_exempt', 'no'),
(1011, 67, 'solana_reference', '22kopdwFENt4VUmHjaGJafWh3vriNnq19oXXpybsLzGY'),
(1012, 68, '_order_key', 'wc_order_Tx04d3Gh1oukD'),
(1013, 68, '_customer_user', '0'),
(1014, 68, '_payment_method', 'solana_pay_gateway'),
(1015, 68, '_payment_method_title', 'Solana Payment Gateway'),
(1016, 68, '_customer_ip_address', '105.186.160.45'),
(1017, 68, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36'),
(1018, 68, '_created_via', 'checkout'),
(1019, 68, '_cart_hash', '745e84398d1667ab0e4b98e5df1cd97b'),
(1020, 68, '_billing_first_name', 'William'),
(1021, 68, '_billing_last_name', 'Brooks'),
(1022, 68, '_billing_company', 'Personal'),
(1023, 68, '_billing_address_1', '32 Plakkaten Street, Bothasig, Bothasig'),
(1024, 68, '_billing_address_2', 'Bothasig'),
(1025, 68, '_billing_city', 'Cape Town'),
(1026, 68, '_billing_state', 'WC'),
(1027, 68, '_billing_postcode', '7441'),
(1028, 68, '_billing_country', 'ZA'),
(1029, 68, '_billing_email', 'william@explicit.co.za'),
(1030, 68, '_billing_phone', '+27829283948'),
(1031, 68, '_order_currency', 'USD'),
(1032, 68, '_cart_discount', '0'),
(1033, 68, '_cart_discount_tax', '0'),
(1034, 68, '_order_shipping', '0'),
(1035, 68, '_order_shipping_tax', '0'),
(1036, 68, '_order_tax', '0'),
(1037, 68, '_order_total', '0.01'),
(1038, 68, '_order_version', '6.8.0'),
(1039, 68, '_prices_include_tax', 'no'),
(1040, 68, '_billing_address_index', 'William Brooks Personal 32 Plakkaten Street, Bothasig, Bothasig Bothasig Cape Town WC 7441 ZA william@explicit.co.za +27829283948'),
(1041, 68, '_shipping_address_index', '         '),
(1042, 68, 'is_vat_exempt', 'no'),
(1043, 68, 'solana_reference', '8Y7KFEGRo5EwUqz7yhpB39KSbabJwaFqFNqPzYXTfn5W'),
(1044, 69, '_order_key', 'wc_order_LQQOsj1zJPufh'),
(1045, 69, '_customer_user', '0'),
(1046, 69, '_payment_method', 'solana_pay_gateway'),
(1047, 69, '_payment_method_title', 'Solana Payment Gateway'),
(1048, 69, '_customer_ip_address', '105.186.160.45'),
(1049, 69, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36'),
(1050, 69, '_created_via', 'checkout'),
(1051, 69, '_cart_hash', '745e84398d1667ab0e4b98e5df1cd97b'),
(1052, 69, '_billing_first_name', 'William'),
(1053, 69, '_billing_last_name', 'Brooks'),
(1054, 69, '_billing_company', 'Personal'),
(1055, 69, '_billing_address_1', '32 Plakkaten Street, Bothasig, Bothasig'),
(1056, 69, '_billing_address_2', 'Bothasig'),
(1057, 69, '_billing_city', 'Cape Town'),
(1058, 69, '_billing_state', 'WC'),
(1059, 69, '_billing_postcode', '7441'),
(1060, 69, '_billing_country', 'ZA'),
(1061, 69, '_billing_email', 'william@explicit.co.za'),
(1062, 69, '_billing_phone', '+27829283948'),
(1063, 69, '_order_currency', 'USD'),
(1064, 69, '_cart_discount', '0'),
(1065, 69, '_cart_discount_tax', '0'),
(1066, 69, '_order_shipping', '0'),
(1067, 69, '_order_shipping_tax', '0'),
(1068, 69, '_order_tax', '0'),
(1069, 69, '_order_total', '0.01'),
(1070, 69, '_order_version', '6.8.0'),
(1071, 69, '_prices_include_tax', 'no'),
(1072, 69, '_billing_address_index', 'William Brooks Personal 32 Plakkaten Street, Bothasig, Bothasig Bothasig Cape Town WC 7441 ZA william@explicit.co.za +27829283948'),
(1073, 69, '_shipping_address_index', '         '),
(1074, 69, 'is_vat_exempt', 'no'),
(1075, 69, 'solana_reference', '25exWHBmDLECAwktvZYCCTcVTSW4Jkt9QdhRxJKQpe9a'),
(1076, 69, '_transaction_id', '4dhyWoKSf43h1gWfcFWYHbWJMh5R9XHEf7pTRfkN7cann8czrSaBMCGUBHt66HZx7vttjMnzRb7r4Z1nCJ4yRJyN'),
(1077, 69, '_date_completed', '1663686804'),
(1078, 69, '_date_paid', '1663686804'),
(1079, 69, '_paid_date', '2022-09-20 15:13:24'),
(1080, 69, '_completed_date', '2022-09-20 15:13:24'),
(1081, 69, '_download_permissions_granted', 'yes'),
(1082, 69, '_recorded_sales', 'yes'),
(1083, 69, '_recorded_coupon_usage_counts', 'yes'),
(1084, 69, '_order_stock_reduced', 'yes'),
(1085, 69, '_new_order_email_sent', 'true'),
(1086, 71, '_order_key', 'wc_order_bBsErr5dv20GZ'),
(1087, 71, '_customer_user', '0'),
(1088, 71, '_payment_method', 'solana_pay_gateway'),
(1089, 71, '_payment_method_title', 'Solana Payment Gateway'),
(1090, 71, '_customer_ip_address', '41.13.216.219'),
(1091, 71, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36'),
(1092, 71, '_created_via', 'checkout'),
(1093, 71, '_cart_hash', '649654f30843fa04d0408b05f2d22d82'),
(1094, 71, '_billing_first_name', 'William'),
(1095, 71, '_billing_last_name', 'Brooks'),
(1096, 71, '_billing_address_1', 'n.a'),
(1097, 71, '_billing_city', 'n.a'),
(1098, 71, '_billing_state', 'CA'),
(1099, 71, '_billing_postcode', '12345'),
(1100, 71, '_billing_country', 'US'),
(1101, 71, '_billing_email', 'a@b.com'),
(1102, 71, '_billing_phone', '123'),
(1103, 71, '_shipping_first_name', 'William'),
(1104, 71, '_shipping_last_name', 'Brooks'),
(1105, 71, '_shipping_address_1', 'n.a'),
(1106, 71, '_shipping_city', 'n.a'),
(1107, 71, '_shipping_state', 'CA'),
(1108, 71, '_shipping_postcode', '12345'),
(1109, 71, '_shipping_country', 'US'),
(1110, 71, '_order_currency', 'USD'),
(1111, 71, '_cart_discount', '0'),
(1112, 71, '_cart_discount_tax', '0'),
(1113, 71, '_order_shipping', '0'),
(1114, 71, '_order_shipping_tax', '0'),
(1115, 71, '_order_tax', '0'),
(1116, 71, '_order_total', '0.01'),
(1117, 71, '_order_version', '6.8.0'),
(1118, 71, '_prices_include_tax', 'no'),
(1119, 71, '_billing_address_index', 'William Brooks  n.a  n.a CA 12345 US a@b.com 123'),
(1120, 71, '_shipping_address_index', 'William Brooks  n.a  n.a CA 12345 US '),
(1121, 71, 'is_vat_exempt', 'no'),
(1122, 71, 'solana_reference', '7YHqNcvgWS36YB4cNdgsi7C29LqDanS6JY5CSLNnMWcp'),
(1123, 71, '_transaction_id', '62hgaqKKfSvnZHs7wS4mVS13UzfmUn2NXwFLcYv5fv75D2fGSdGjZRiQMdFjUc5V4MPw8zQnEsCEUi1s5CLz4uTd'),
(1124, 71, '_date_paid', '1664180825'),
(1125, 71, '_paid_date', '2022-09-26 08:27:05'),
(1126, 71, '_download_permissions_granted', 'yes'),
(1127, 71, '_recorded_sales', 'yes'),
(1128, 71, '_recorded_coupon_usage_counts', 'yes'),
(1129, 71, '_order_stock_reduced', 'yes'),
(1130, 71, '_new_order_email_sent', 'true'),
(1131, 72, '_order_key', 'wc_order_GR15NahFnSr5w'),
(1132, 72, '_customer_user', '0'),
(1133, 72, '_payment_method', 'solana_pay_gateway'),
(1134, 72, '_payment_method_title', 'Solana Payment Gateway'),
(1135, 72, '_customer_ip_address', '41.76.117.189'),
(1136, 72, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36'),
(1137, 72, '_created_via', 'checkout'),
(1138, 72, '_cart_hash', '649654f30843fa04d0408b05f2d22d82'),
(1139, 72, '_billing_first_name', 'Test'),
(1140, 72, '_billing_last_name', 'Test123'),
(1141, 72, '_billing_address_1', 'Test 133'),
(1142, 72, '_billing_address_2', '145'),
(1143, 72, '_billing_city', 'Portland'),
(1144, 72, '_billing_state', 'OR'),
(1145, 72, '_billing_postcode', '97229'),
(1146, 72, '_billing_country', 'US'),
(1147, 72, '_billing_email', '123@456.com'),
(1148, 72, '_billing_phone', '0123456789'),
(1149, 72, '_shipping_first_name', 'Test'),
(1150, 72, '_shipping_last_name', 'Test123'),
(1151, 72, '_shipping_address_1', 'Test 133'),
(1152, 72, '_shipping_address_2', '145'),
(1153, 72, '_shipping_city', 'Portland'),
(1154, 72, '_shipping_state', 'OR'),
(1155, 72, '_shipping_postcode', '97229'),
(1156, 72, '_shipping_country', 'US'),
(1157, 72, '_order_currency', 'USD'),
(1158, 72, '_cart_discount', '0'),
(1159, 72, '_cart_discount_tax', '0'),
(1160, 72, '_order_shipping', '0'),
(1161, 72, '_order_shipping_tax', '0'),
(1162, 72, '_order_tax', '0'),
(1163, 72, '_order_total', '0.01'),
(1164, 72, '_order_version', '6.8.0'),
(1165, 72, '_prices_include_tax', 'no'),
(1166, 72, '_billing_address_index', 'Test Test123  Test 133 145 Portland OR 97229 US 123@456.com 0123456789'),
(1167, 72, '_shipping_address_index', 'Test Test123  Test 133 145 Portland OR 97229 US '),
(1168, 72, 'is_vat_exempt', 'no'),
(1169, 72, 'solana_reference', 'Ha4bb29AXTQWGhU27hgZJ5pB8UjUB5xLsRHa2w96nfCC'),
(1170, 73, '_order_key', 'wc_order_S6mF9Ovr6XJYF'),
(1171, 73, '_customer_user', '0'),
(1172, 73, '_payment_method', 'solana_pay_gateway'),
(1173, 73, '_payment_method_title', 'Solana Payment Gateway'),
(1174, 73, '_customer_ip_address', '41.76.117.189'),
(1175, 73, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36'),
(1176, 73, '_created_via', 'checkout'),
(1177, 73, '_cart_hash', '649654f30843fa04d0408b05f2d22d82'),
(1178, 73, '_billing_first_name', 'Test'),
(1179, 73, '_billing_last_name', 'Test123'),
(1180, 73, '_billing_address_1', 'Test 133'),
(1181, 73, '_billing_address_2', '145'),
(1182, 73, '_billing_city', 'Portland'),
(1183, 73, '_billing_state', 'OR'),
(1184, 73, '_billing_postcode', '97229'),
(1185, 73, '_billing_country', 'US'),
(1186, 73, '_billing_email', '123@456.com'),
(1187, 73, '_billing_phone', '0123456789'),
(1188, 73, '_shipping_first_name', 'Test'),
(1189, 73, '_shipping_last_name', 'Test123'),
(1190, 73, '_shipping_address_1', 'Test 133'),
(1191, 73, '_shipping_address_2', '145'),
(1192, 73, '_shipping_city', 'Portland'),
(1193, 73, '_shipping_state', 'OR'),
(1194, 73, '_shipping_postcode', '97229'),
(1195, 73, '_shipping_country', 'US'),
(1196, 73, '_order_currency', 'USD'),
(1197, 73, '_cart_discount', '0');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1198, 73, '_cart_discount_tax', '0'),
(1199, 73, '_order_shipping', '0'),
(1200, 73, '_order_shipping_tax', '0'),
(1201, 73, '_order_tax', '0'),
(1202, 73, '_order_total', '0.01'),
(1203, 73, '_order_version', '6.8.0'),
(1204, 73, '_prices_include_tax', 'no'),
(1205, 73, '_billing_address_index', 'Test Test123  Test 133 145 Portland OR 97229 US 123@456.com 0123456789'),
(1206, 73, '_shipping_address_index', 'Test Test123  Test 133 145 Portland OR 97229 US '),
(1207, 73, 'is_vat_exempt', 'no'),
(1208, 73, 'solana_reference', 'HGkp8J2ubd1ZhgfwG6ZgMb9PFTBGFYpXn5q3sqHUYadU'),
(1209, 23, '_edit_lock', '1665575623:1'),
(1210, 1, '_edit_lock', '1664538102:1'),
(1211, 2, '_wp_trash_meta_status', 'publish'),
(1212, 2, '_wp_trash_meta_time', '1664544907'),
(1213, 2, '_wp_desired_post_slug', 'sample-page'),
(1214, 3, '_wp_trash_meta_status', 'draft'),
(1215, 3, '_wp_trash_meta_time', '1664544935'),
(1216, 3, '_wp_desired_post_slug', 'privacy-policy'),
(1217, 10, '_wp_trash_meta_status', 'draft'),
(1218, 10, '_wp_trash_meta_time', '1664544935'),
(1219, 10, '_wp_desired_post_slug', 'refund_returns'),
(1223, 6, '_edit_lock', '1664547710:1'),
(1224, 1, '_wp_trash_meta_status', 'publish'),
(1225, 1, '_wp_trash_meta_time', '1664545021'),
(1226, 1, '_wp_desired_post_slug', 'hello-world'),
(1227, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(1228, 77, '_wp_attached_file', '2022/09/other-small.jpg'),
(1229, 77, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:23:\"2022/09/other-small.jpg\";s:8:\"filesize\";i:75576;s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:23:\"other-small-380x380.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13966;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:23:\"other-small-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2604;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:23:\"other-small-700x467.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:467;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:25016;}s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"other-small-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6901;}s:5:\"large\";a:5:{s:4:\"file\";s:24:\"other-small-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:45808;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"other-small-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3551;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:23:\"other-small-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:28656;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"other-small-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:87225;}s:28:\"gb-block-post-grid-landscape\";a:5:{s:4:\"file\";s:23:\"other-small-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19416;}s:25:\"gb-block-post-grid-square\";a:5:{s:4:\"file\";s:23:\"other-small-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:28638;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1230, 77, '_source_url', 'https://zerodayshopping.identity.com/wp-content/plugins/woocommerce/assets/images/onboarding/other-small.jpg'),
(1231, 76, '_wp_page_template', 'template-fullwidth.php'),
(1232, 35, '_wp_trash_meta_status', 'publish'),
(1233, 35, '_wc_trash_meta_time', '1664545366'),
(1234, 35, '_wp_desired_post_slug', 'wordpress-pennant'),
(1235, 34, '_wp_trash_meta_status', 'publish'),
(1236, 34, '_wc_trash_meta_time', '1664545366'),
(1237, 34, '_wp_desired_post_slug', 'logo-collection'),
(1238, 25, '_wp_trash_meta_status', 'publish'),
(1239, 25, '_wc_trash_meta_time', '1664545366'),
(1240, 25, '_wp_desired_post_slug', 'single'),
(1241, 24, '_wp_trash_meta_status', 'publish'),
(1242, 24, '_wc_trash_meta_time', '1664545366'),
(1243, 24, '_wp_desired_post_slug', 'album'),
(1244, 12, '_edit_lock', '1665575397:1'),
(1245, 78, '_wp_attached_file', '2022/09/image.png'),
(1246, 78, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:430;s:6:\"height\";i:146;s:4:\"file\";s:17:\"2022/09/image.png\";s:8:\"filesize\";i:34327;s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:17:\"image-380x146.png\";s:5:\"width\";i:380;s:6:\"height\";i:146;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7342;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:17:\"image-120x120.png\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:10862;}s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"image-300x102.png\";s:5:\"width\";i:300;s:6:\"height\";i:102;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:20431;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"image-150x146.png\";s:5:\"width\";i:150;s:6:\"height\";i:146;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3153;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:17:\"image-416x141.png\";s:5:\"width\";i:416;s:6:\"height\";i:141;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:28367;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1247, 76, '_edit_lock', '1664546225:1'),
(1251, 80, '_edit_lock', '1664546573:1'),
(1252, 80, '_wp_trash_meta_status', 'publish'),
(1253, 80, '_wp_trash_meta_time', '1664546594'),
(1254, 81, '_wp_trash_meta_status', 'publish'),
(1255, 81, '_wp_trash_meta_time', '1664546703'),
(1256, 82, '_wp_attached_file', '2022/09/cropped-image.png'),
(1257, 82, '_wp_attachment_context', 'custom-logo'),
(1258, 82, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:430;s:6:\"height\";i:72;s:4:\"file\";s:25:\"2022/09/cropped-image.png\";s:8:\"filesize\";i:6791;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"cropped-image-300x50.png\";s:5:\"width\";i:300;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14459;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"cropped-image-150x72.png\";s:5:\"width\";i:150;s:6:\"height\";i:72;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3060;}s:30:\"shoppe_thumbnail_square_mobile\";a:5:{s:4:\"file\";s:24:\"cropped-image-140x72.png\";s:5:\"width\";i:140;s:6:\"height\";i:72;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2947;}s:23:\"shoppe_thumbnail_square\";a:5:{s:4:\"file\";s:24:\"cropped-image-380x72.png\";s:5:\"width\";i:380;s:6:\"height\";i:72;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6883;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:24:\"cropped-image-380x72.png\";s:5:\"width\";i:380;s:6:\"height\";i:72;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6883;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:24:\"cropped-image-120x72.png\";s:5:\"width\";i:120;s:6:\"height\";i:72;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2536;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1259, 83, '_wp_attached_file', '2022/09/cropped-image-1.png'),
(1260, 83, '_wp_attachment_context', 'custom-logo'),
(1261, 83, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:430;s:6:\"height\";i:146;s:4:\"file\";s:27:\"2022/09/cropped-image-1.png\";s:8:\"filesize\";i:7179;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"cropped-image-1-300x102.png\";s:5:\"width\";i:300;s:6:\"height\";i:102;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:18605;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"cropped-image-1-150x146.png\";s:5:\"width\";i:150;s:6:\"height\";i:146;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3153;}s:30:\"shoppe_thumbnail_square_mobile\";a:5:{s:4:\"file\";s:27:\"cropped-image-1-140x140.png\";s:5:\"width\";i:140;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9181;}s:23:\"shoppe_thumbnail_square\";a:5:{s:4:\"file\";s:27:\"cropped-image-1-380x146.png\";s:5:\"width\";i:380;s:6:\"height\";i:146;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7342;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:27:\"cropped-image-1-380x146.png\";s:5:\"width\";i:380;s:6:\"height\";i:146;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7342;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:27:\"cropped-image-1-120x120.png\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:8941;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1262, 84, '_edit_lock', '1664546803:1'),
(1263, 85, '_wp_attached_file', '2022/09/cropped-other-small.jpg'),
(1264, 85, '_wp_attachment_context', 'custom-header'),
(1265, 85, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:1000;s:6:\"height\";i:250;s:4:\"file\";s:31:\"2022/09/cropped-other-small.jpg\";s:8:\"filesize\";i:21502;s:5:\"sizes\";a:12:{s:6:\"medium\";a:5:{s:4:\"file\";s:30:\"cropped-other-small-300x75.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:75;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3362;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:31:\"cropped-other-small-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4391;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:31:\"cropped-other-small-768x192.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13454;}s:28:\"gb-block-post-grid-landscape\";a:5:{s:4:\"file\";s:31:\"cropped-other-small-600x250.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16732;}s:25:\"gb-block-post-grid-square\";a:5:{s:4:\"file\";s:31:\"cropped-other-small-600x250.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16732;}s:30:\"shoppe_thumbnail_square_mobile\";a:5:{s:4:\"file\";s:31:\"cropped-other-small-140x140.jpg\";s:5:\"width\";i:140;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3962;}s:23:\"shoppe_thumbnail_square\";a:5:{s:4:\"file\";s:31:\"cropped-other-small-380x250.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13757;}s:21:\"shoppe_thumbnail_blog\";a:5:{s:4:\"file\";s:31:\"cropped-other-small-450x250.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14920;}s:23:\"shoppe_thumbnail_single\";a:5:{s:4:\"file\";s:31:\"cropped-other-small-700x175.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11756;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:31:\"cropped-other-small-380x250.jpg\";s:5:\"width\";i:380;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13757;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:31:\"cropped-other-small-700x175.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11756;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:31:\"cropped-other-small-120x120.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3116;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:77;}'),
(1266, 85, '_wp_attachment_custom_header_last_used_shoppe', '1664546806'),
(1267, 85, '_wp_attachment_is_custom_header', 'shoppe'),
(1268, 77, '_wp_attachment_is_custom_background', 'shoppe'),
(1269, 84, '_wp_trash_meta_status', 'publish'),
(1270, 84, '_wp_trash_meta_time', '1664546840'),
(1271, 86, '_wp_trash_meta_status', 'publish'),
(1272, 86, '_wp_trash_meta_time', '1664546971'),
(1273, 87, '_edit_lock', '1664547079:1'),
(1274, 87, '_wp_trash_meta_status', 'publish'),
(1275, 87, '_wp_trash_meta_time', '1664547093'),
(1276, 88, '_edit_lock', '1664547199:1'),
(1277, 88, '_wp_trash_meta_status', 'publish'),
(1278, 88, '_wp_trash_meta_time', '1664547245'),
(1279, 32, '_wp_trash_meta_status', 'publish'),
(1280, 32, '_wc_trash_meta_time', '1664547308'),
(1281, 32, '_wp_desired_post_slug', 't-shirt-with-logo'),
(1282, 14, '_wp_trash_meta_status', 'publish'),
(1283, 14, '_wc_trash_meta_time', '1664547308'),
(1284, 14, '_wp_desired_post_slug', 'hoodie-with-logo'),
(1285, 17, '_wp_trash_meta_status', 'publish'),
(1286, 17, '_wc_trash_meta_time', '1664547308'),
(1287, 17, '_wp_desired_post_slug', 'belt'),
(1288, 33, '_edit_lock', '1665575344:1'),
(1289, 16, '_wp_trash_meta_status', 'publish'),
(1290, 16, '_wc_trash_meta_time', '1664547382'),
(1291, 16, '_wp_desired_post_slug', 'beanie'),
(1292, 89, '_wp_trash_meta_status', 'publish'),
(1293, 89, '_wp_trash_meta_time', '1664547636'),
(1294, 90, '_wp_trash_meta_status', 'publish'),
(1295, 90, '_wp_trash_meta_time', '1664547756'),
(1296, 91, '_wp_trash_meta_status', 'publish'),
(1297, 91, '_wp_trash_meta_time', '1664547764'),
(1298, 92, '_wp_trash_meta_status', 'publish'),
(1299, 92, '_wp_trash_meta_time', '1664547781'),
(1300, 93, '_wp_attached_file', '2022/09/cropped-image-2.png'),
(1301, 93, '_wp_attachment_context', 'custom-logo'),
(1302, 93, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:430;s:6:\"height\";i:87;s:4:\"file\";s:27:\"2022/09/cropped-image-2.png\";s:8:\"filesize\";i:6954;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"cropped-image-2-300x61.png\";s:5:\"width\";i:300;s:6:\"height\";i:61;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15664;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"cropped-image-2-150x87.png\";s:5:\"width\";i:150;s:6:\"height\";i:87;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3108;}s:30:\"shoppe_thumbnail_square_mobile\";a:5:{s:4:\"file\";s:26:\"cropped-image-2-140x87.png\";s:5:\"width\";i:140;s:6:\"height\";i:87;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2970;}s:23:\"shoppe_thumbnail_square\";a:5:{s:4:\"file\";s:26:\"cropped-image-2-380x87.png\";s:5:\"width\";i:380;s:6:\"height\";i:87;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7107;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:26:\"cropped-image-2-380x87.png\";s:5:\"width\";i:380;s:6:\"height\";i:87;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7107;s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:26:\"cropped-image-2-120x87.png\";s:5:\"width\";i:120;s:6:\"height\";i:87;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2600;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1303, 94, '_wp_trash_meta_status', 'publish'),
(1304, 94, '_wp_trash_meta_time', '1664547886'),
(1305, 95, '_wp_trash_meta_status', 'publish'),
(1306, 95, '_wp_trash_meta_time', '1664550396'),
(1307, 9, '_edit_lock', '1664552480:1'),
(1308, 7, '_edit_lock', '1664552500:1'),
(1309, 97, '_order_key', 'wc_order_Y2QQ9uqBRCUMP'),
(1310, 97, '_customer_user', '0'),
(1311, 97, '_payment_method', 'solana_pay_gateway'),
(1312, 97, '_payment_method_title', 'Solana Payment Gateway'),
(1313, 97, '_customer_ip_address', '15.158.0.107'),
(1314, 97, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36'),
(1315, 97, '_created_via', 'checkout'),
(1316, 97, '_cart_hash', '44100c1010f948372ce125cb75685441'),
(1317, 97, '_billing_first_name', 'luke'),
(1318, 97, '_billing_last_name', 'song'),
(1319, 97, '_billing_address_1', '470 south 11th st'),
(1320, 97, '_billing_city', 'San jose'),
(1321, 97, '_billing_state', 'CA'),
(1322, 97, '_billing_postcode', '95112'),
(1323, 97, '_billing_country', 'US'),
(1324, 97, '_billing_email', 'luke.song@identity.org'),
(1325, 97, '_billing_phone', '4082185349'),
(1326, 97, '_shipping_first_name', 'luke'),
(1327, 97, '_shipping_last_name', 'song'),
(1328, 97, '_shipping_address_1', '470 south 11th st'),
(1329, 97, '_shipping_city', 'San jose'),
(1330, 97, '_shipping_state', 'CA'),
(1331, 97, '_shipping_postcode', '95112'),
(1332, 97, '_shipping_country', 'US'),
(1333, 97, '_shipping_phone', '4082185349'),
(1334, 97, '_order_currency', 'USD'),
(1335, 97, '_cart_discount', '0'),
(1336, 97, '_cart_discount_tax', '0'),
(1337, 97, '_order_shipping', '0'),
(1338, 97, '_order_shipping_tax', '0'),
(1339, 97, '_order_tax', '0'),
(1340, 97, '_order_total', '0.01'),
(1341, 97, '_order_version', '6.8.0'),
(1342, 97, '_prices_include_tax', 'no'),
(1343, 97, '_billing_address_index', 'luke song  470 south 11th st  San jose CA 95112 US luke.song@identity.org 4082185349'),
(1344, 97, '_shipping_address_index', 'luke song  470 south 11th st  San jose CA 95112 US 4082185349'),
(1345, 97, '_shipping_email', 'luke.song@identity.org'),
(1346, 97, 'is_vat_exempt', 'no'),
(1347, 97, 'solana_reference', 'BheoeQU2NnSqejbxJNk3uzNaMqoKnvy8dy2hUrmxCSLU'),
(1348, 98, '_order_key', 'wc_order_V32gShsu1L9gl'),
(1349, 98, '_customer_user', '0'),
(1350, 98, '_payment_method', 'solana_pay_gateway'),
(1351, 98, '_payment_method_title', 'Solana Payment Gateway'),
(1352, 98, '_customer_ip_address', '70.95.146.108'),
(1353, 98, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36'),
(1354, 98, '_created_via', 'checkout'),
(1355, 98, '_cart_hash', '5a2ebeb844865cf963a691d24d7efa7a'),
(1356, 98, '_billing_first_name', 'phillip'),
(1357, 98, '_billing_last_name', 'shoemaker'),
(1358, 98, '_billing_address_1', '5524 caballos palce'),
(1359, 98, '_billing_city', 'san diego'),
(1360, 98, '_billing_state', 'CA'),
(1361, 98, '_billing_postcode', '92130'),
(1362, 98, '_billing_country', 'US'),
(1363, 98, '_billing_email', 'phillip@identity.com'),
(1364, 98, '_billing_phone', '4088358444'),
(1365, 98, '_shipping_first_name', 'phillip'),
(1366, 98, '_shipping_last_name', 'shoemaker'),
(1367, 98, '_shipping_address_1', '5524 caballos palce'),
(1368, 98, '_shipping_city', 'san diego'),
(1369, 98, '_shipping_state', 'CA'),
(1370, 98, '_shipping_postcode', '92130'),
(1371, 98, '_shipping_country', 'US'),
(1372, 98, '_shipping_phone', '4088358444'),
(1373, 98, '_order_currency', 'USD'),
(1374, 98, '_cart_discount', '0'),
(1375, 98, '_cart_discount_tax', '0'),
(1376, 98, '_order_shipping', '0'),
(1377, 98, '_order_shipping_tax', '0'),
(1378, 98, '_order_tax', '0'),
(1379, 98, '_order_total', '8.00'),
(1380, 98, '_order_version', '6.8.0'),
(1381, 98, '_prices_include_tax', 'no'),
(1382, 98, '_billing_address_index', 'phillip shoemaker  5524 caballos palce  san diego CA 92130 US phillip@identity.com 4088358444'),
(1383, 98, '_shipping_address_index', 'phillip shoemaker  5524 caballos palce  san diego CA 92130 US 4088358444'),
(1384, 98, '_shipping_email', 'phillip@identity.com'),
(1385, 98, 'is_vat_exempt', 'no'),
(1386, 98, 'solana_reference', 'BVZox8H7tDUNXSYndmNdk4U8Tbju2Au73pWhyd7HMKJT'),
(1387, 99, '_order_key', 'wc_order_PRnYORIZJe29a'),
(1388, 99, '_customer_user', '0'),
(1389, 99, '_payment_method', 'solana_pay_gateway'),
(1390, 99, '_payment_method_title', 'Solana Payment Gateway'),
(1391, 99, '_customer_ip_address', '41.76.117.189'),
(1392, 99, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(1393, 99, '_created_via', 'checkout'),
(1394, 99, '_cart_hash', '5a2ebeb844865cf963a691d24d7efa7a'),
(1395, 99, '_billing_first_name', 'XYZ'),
(1396, 99, '_billing_last_name', 'XYZ'),
(1397, 99, '_billing_address_1', '8'),
(1398, 99, '_billing_city', 'Cape Town'),
(1399, 99, '_billing_state', 'CA'),
(1400, 99, '_billing_postcode', '97229'),
(1401, 99, '_billing_country', 'US'),
(1402, 99, '_billing_email', 'xya@gamil.com'),
(1403, 99, '_billing_phone', '123456789'),
(1404, 99, '_shipping_first_name', 'XYZ'),
(1405, 99, '_shipping_last_name', 'XYZ'),
(1406, 99, '_shipping_address_1', '8'),
(1407, 99, '_shipping_city', 'Cape Town'),
(1408, 99, '_shipping_state', 'CA'),
(1409, 99, '_shipping_postcode', '97229'),
(1410, 99, '_shipping_country', 'US'),
(1411, 99, '_shipping_phone', '123456789'),
(1412, 99, '_order_currency', 'USD'),
(1413, 99, '_cart_discount', '0'),
(1414, 99, '_cart_discount_tax', '0'),
(1415, 99, '_order_shipping', '0'),
(1416, 99, '_order_shipping_tax', '0'),
(1417, 99, '_order_tax', '0'),
(1418, 99, '_order_total', '8.00'),
(1419, 99, '_order_version', '6.8.0'),
(1420, 99, '_prices_include_tax', 'no'),
(1421, 99, '_billing_address_index', 'XYZ XYZ  8  Cape Town CA 97229 US xya@gamil.com 123456789'),
(1422, 99, '_shipping_address_index', 'XYZ XYZ  8  Cape Town CA 97229 US 123456789'),
(1423, 99, '_shipping_email', 'xya@gamil.com'),
(1424, 99, 'is_vat_exempt', 'no'),
(1425, 99, 'solana_reference', '7Mz1wQJ273t26WLBc3JW5LCd3d8DN2yX9TPyXF8puY2L'),
(1426, 101, '_menu_item_type', 'post_type'),
(1427, 101, '_menu_item_menu_item_parent', '0'),
(1428, 101, '_menu_item_object_id', '6'),
(1429, 101, '_menu_item_object', 'page'),
(1430, 101, '_menu_item_target', ''),
(1431, 101, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1432, 101, '_menu_item_xfn', ''),
(1433, 101, '_menu_item_url', ''),
(1434, 101, '_menu_item_orphaned', '1665482813'),
(1435, 102, '_menu_item_type', 'post_type'),
(1436, 102, '_menu_item_menu_item_parent', '0'),
(1437, 102, '_menu_item_object_id', '7'),
(1438, 102, '_menu_item_object', 'page'),
(1439, 102, '_menu_item_target', ''),
(1440, 102, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1441, 102, '_menu_item_xfn', ''),
(1442, 102, '_menu_item_url', ''),
(1443, 102, '_menu_item_orphaned', '1665482813'),
(1444, 103, '_menu_item_type', 'post_type'),
(1445, 103, '_menu_item_menu_item_parent', '0'),
(1446, 103, '_menu_item_object_id', '8'),
(1447, 103, '_menu_item_object', 'page'),
(1448, 103, '_menu_item_target', ''),
(1449, 103, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1450, 103, '_menu_item_xfn', ''),
(1451, 103, '_menu_item_url', ''),
(1452, 103, '_menu_item_orphaned', '1665482813'),
(1453, 104, '_menu_item_type', 'post_type'),
(1454, 104, '_menu_item_menu_item_parent', '0'),
(1455, 104, '_menu_item_object_id', '76'),
(1456, 104, '_menu_item_object', 'page'),
(1457, 104, '_menu_item_target', ''),
(1458, 104, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1459, 104, '_menu_item_xfn', ''),
(1460, 104, '_menu_item_url', ''),
(1461, 104, '_menu_item_orphaned', '1665482813'),
(1462, 105, '_menu_item_type', 'post_type'),
(1463, 105, '_menu_item_menu_item_parent', '0'),
(1464, 105, '_menu_item_object_id', '9'),
(1465, 105, '_menu_item_object', 'page'),
(1466, 105, '_menu_item_target', ''),
(1467, 105, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1468, 105, '_menu_item_xfn', ''),
(1469, 105, '_menu_item_url', ''),
(1470, 105, '_menu_item_orphaned', '1665482813'),
(1471, 106, '_order_key', 'wc_order_XIay5EbycOx3Y'),
(1472, 106, '_customer_user', '0'),
(1473, 106, '_payment_method', 'solana_pay_gateway'),
(1474, 106, '_payment_method_title', 'Solana Payment Gateway'),
(1475, 106, '_customer_ip_address', '169.255.78.94'),
(1476, 106, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36'),
(1477, 106, '_created_via', 'checkout'),
(1478, 106, '_cart_hash', '5a2ebeb844865cf963a691d24d7efa7a'),
(1479, 106, '_billing_first_name', 'Satoshi'),
(1480, 106, '_billing_last_name', 'Nakamoto'),
(1481, 106, '_billing_company', 'Bitcoin Palace'),
(1482, 106, '_billing_address_1', '4316 Evergreen Lane'),
(1483, 106, '_billing_city', 'Irvine'),
(1484, 106, '_billing_state', 'CA'),
(1485, 106, '_billing_postcode', '92614'),
(1486, 106, '_billing_country', 'US'),
(1487, 106, '_billing_email', 'satoshi@bitcoin.org'),
(1488, 106, '_billing_phone', '949-748-9989'),
(1489, 106, '_shipping_first_name', 'Satoshi'),
(1490, 106, '_shipping_last_name', 'Nakamoto'),
(1491, 106, '_shipping_company', 'Bitcoin Palace'),
(1492, 106, '_shipping_address_1', '4316 Evergreen Lane'),
(1493, 106, '_shipping_city', 'Irvine'),
(1494, 106, '_shipping_state', 'CA'),
(1495, 106, '_shipping_postcode', '92614'),
(1496, 106, '_shipping_country', 'US'),
(1497, 106, '_shipping_phone', '949-748-9989'),
(1498, 106, '_order_currency', 'USD'),
(1499, 106, '_cart_discount', '0'),
(1500, 106, '_cart_discount_tax', '0'),
(1501, 106, '_order_shipping', '0'),
(1502, 106, '_order_shipping_tax', '0'),
(1503, 106, '_order_tax', '0'),
(1504, 106, '_order_total', '8.00'),
(1505, 106, '_order_version', '6.8.0'),
(1506, 106, '_prices_include_tax', 'no'),
(1507, 106, '_billing_address_index', 'Satoshi Nakamoto Bitcoin Palace 4316 Evergreen Lane  Irvine CA 92614 US satoshi@bitcoin.org 949-748-9989'),
(1508, 106, '_shipping_address_index', 'Satoshi Nakamoto Bitcoin Palace 4316 Evergreen Lane  Irvine CA 92614 US 949-748-9989'),
(1509, 106, '_shipping_email', 'satoshi@bitcoin.org'),
(1510, 106, 'is_vat_exempt', 'no'),
(1511, 106, 'solana_reference', 'BTBuQvhKrs9uLJpGGrGx9Q9rhPdrFjDFScAuNfqyxbFW'),
(1512, 18, '_edit_lock', '1665575355:1'),
(1513, 21, '_wp_trash_meta_status', 'publish'),
(1514, 21, '_wp_trash_meta_time', '1665574983'),
(1515, 21, '_wp_desired_post_slug', 'hoodie-with-zipper'),
(1516, 36, '_wp_trash_meta_status', 'publish'),
(1517, 36, '_wp_trash_meta_time', '1665574992'),
(1518, 36, '_wp_desired_post_slug', 'hoodie-blue-yes'),
(1519, 29, '_wp_trash_meta_status', 'publish'),
(1520, 29, '_wp_trash_meta_time', '1665574992'),
(1521, 29, '_wp_desired_post_slug', 'hoodie-red-no'),
(1522, 30, '_wp_trash_meta_status', 'publish'),
(1523, 30, '_wp_trash_meta_time', '1665574992'),
(1524, 30, '_wp_desired_post_slug', 'hoodie-green-no'),
(1525, 31, '_wp_trash_meta_status', 'publish'),
(1526, 31, '_wp_trash_meta_time', '1665574992'),
(1527, 31, '_wp_desired_post_slug', 'hoodie-blue-no'),
(1528, 13, '_wp_trash_meta_status', 'publish'),
(1529, 13, '_wp_trash_meta_time', '1665574992'),
(1530, 13, '_wp_desired_post_slug', 'hoodie'),
(1531, 19, '_edit_lock', '1665575366:1'),
(1532, 20, '_edit_lock', '1665575833:1'),
(1533, 22, '_edit_lock', '1665575386:1'),
(1534, 12, '_regular_price', '19'),
(1535, 15, '_edit_lock', '1665575467:1'),
(1536, 78, '_edit_lock', '1665576623:1'),
(1537, 78, '_edit_last', '1'),
(1538, 108, '_wp_trash_meta_status', 'publish'),
(1539, 108, '_wp_trash_meta_time', '1665577161'),
(1540, 109, '_wp_trash_meta_status', 'publish'),
(1541, 109, '_wp_trash_meta_time', '1665577269'),
(1542, 110, '_order_key', 'wc_order_2I4sZOPg8OfUx'),
(1543, 110, '_customer_user', '0'),
(1544, 110, '_payment_method', 'solana_pay_gateway'),
(1545, 110, '_payment_method_title', 'Solana Payment Gateway'),
(1546, 110, '_customer_ip_address', '41.76.117.189'),
(1547, 110, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(1548, 110, '_created_via', 'checkout'),
(1549, 110, '_cart_hash', '4842ed7620b7336d0d9ee9072de22434'),
(1550, 110, '_billing_first_name', 'Satoshi'),
(1551, 110, '_billing_last_name', 'Nakamoto'),
(1552, 110, '_billing_company', 'Bitcoin Palace'),
(1553, 110, '_billing_address_1', '4316 Evergreen Lane'),
(1554, 110, '_billing_city', 'Irvine'),
(1555, 110, '_billing_state', 'CA'),
(1556, 110, '_billing_postcode', '92614'),
(1557, 110, '_billing_country', 'US'),
(1558, 110, '_billing_email', 'satoshi@bitcoin.org'),
(1559, 110, '_billing_phone', '949-748-9989'),
(1560, 110, '_shipping_first_name', 'Satoshi'),
(1561, 110, '_shipping_last_name', 'Nakamoto'),
(1562, 110, '_shipping_company', 'Bitcoin Palace'),
(1563, 110, '_shipping_address_1', '4316 Evergreen Lane'),
(1564, 110, '_shipping_city', 'Irvine'),
(1565, 110, '_shipping_state', 'CA'),
(1566, 110, '_shipping_postcode', '92614'),
(1567, 110, '_shipping_country', 'US'),
(1568, 110, '_shipping_phone', '949-748-9989'),
(1569, 110, '_order_currency', 'USD'),
(1570, 110, '_cart_discount', '0'),
(1571, 110, '_cart_discount_tax', '0'),
(1572, 110, '_order_shipping', '0'),
(1573, 110, '_order_shipping_tax', '0'),
(1574, 110, '_order_tax', '0'),
(1575, 110, '_order_total', '10.00'),
(1576, 110, '_order_version', '6.8.0'),
(1577, 110, '_prices_include_tax', 'no'),
(1578, 110, '_billing_address_index', 'Satoshi Nakamoto Bitcoin Palace 4316 Evergreen Lane  Irvine CA 92614 US satoshi@bitcoin.org 949-748-9989'),
(1579, 110, '_shipping_address_index', 'Satoshi Nakamoto Bitcoin Palace 4316 Evergreen Lane  Irvine CA 92614 US 949-748-9989'),
(1580, 110, '_shipping_email', 'satoshi@bitcoin.org'),
(1581, 110, 'is_vat_exempt', 'no'),
(1582, 110, 'solana_reference', '5PrCVf3yn1Up6vu4cTHKVdnhpfgygZW9CoNGYs39saQt'),
(1583, 111, '_order_key', 'wc_order_lMxg3Xtom1syY'),
(1584, 111, '_customer_user', '0'),
(1585, 111, '_payment_method', 'solana_pay_gateway'),
(1586, 111, '_payment_method_title', 'Solana Payment Gateway'),
(1587, 111, '_customer_ip_address', '169.255.78.94'),
(1588, 111, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36'),
(1589, 111, '_created_via', 'checkout'),
(1590, 111, '_cart_hash', '21c1119a4d3ae0db0ec5c2be1c5bd38c'),
(1591, 111, '_billing_first_name', 'Satoshi'),
(1592, 111, '_billing_last_name', 'Nakamoto'),
(1593, 111, '_billing_company', 'Bitcoin Palace'),
(1594, 111, '_billing_address_1', '4316 Evergreen Lane'),
(1595, 111, '_billing_city', 'Irvine'),
(1596, 111, '_billing_state', 'CA'),
(1597, 111, '_billing_postcode', '92614'),
(1598, 111, '_billing_country', 'US'),
(1599, 111, '_billing_email', 'satoshi@bitcoin.org'),
(1600, 111, '_billing_phone', '949-748-9989'),
(1601, 111, '_shipping_first_name', 'Satoshi'),
(1602, 111, '_shipping_last_name', 'Nakamoto'),
(1603, 111, '_shipping_company', 'Bitcoin Palace'),
(1604, 111, '_shipping_address_1', '4316 Evergreen Lane'),
(1605, 111, '_shipping_city', 'Irvine'),
(1606, 111, '_shipping_state', 'CA'),
(1607, 111, '_shipping_postcode', '92614'),
(1608, 111, '_shipping_country', 'US'),
(1609, 111, '_shipping_phone', '949-748-9989'),
(1610, 111, '_order_currency', 'USD'),
(1611, 111, '_cart_discount', '0'),
(1612, 111, '_cart_discount_tax', '0'),
(1613, 111, '_order_shipping', '0'),
(1614, 111, '_order_shipping_tax', '0'),
(1615, 111, '_order_tax', '0'),
(1616, 111, '_order_total', '18.00'),
(1617, 111, '_order_version', '6.8.0'),
(1618, 111, '_prices_include_tax', 'no'),
(1619, 111, '_billing_address_index', 'Satoshi Nakamoto Bitcoin Palace 4316 Evergreen Lane  Irvine CA 92614 US satoshi@bitcoin.org 949-748-9989'),
(1620, 111, '_shipping_address_index', 'Satoshi Nakamoto Bitcoin Palace 4316 Evergreen Lane  Irvine CA 92614 US 949-748-9989'),
(1621, 111, '_shipping_email', 'satoshi@bitcoin.org'),
(1622, 111, 'is_vat_exempt', 'no'),
(1623, 111, 'solana_reference', '8fgZjgL2q5tYrMJBafYin58w7fmYUouLKZWpmUn7sU9c'),
(1624, 112, '_order_key', 'wc_order_r2Ri7Zih5QHp0'),
(1625, 112, '_customer_user', '0'),
(1626, 112, '_payment_method', 'solana_pay_gateway'),
(1627, 112, '_payment_method_title', 'Solana Payment Gateway'),
(1628, 112, '_customer_ip_address', '41.76.117.189'),
(1629, 112, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36'),
(1630, 112, '_created_via', 'checkout'),
(1631, 112, '_cart_hash', '4a829bb7d115bccf065f063837c51768'),
(1632, 112, '_billing_first_name', 'Satoshi'),
(1633, 112, '_billing_last_name', 'Nakamoto'),
(1634, 112, '_billing_company', 'Bitcoin Palace'),
(1635, 112, '_billing_address_1', '4316 Evergreen Lane'),
(1636, 112, '_billing_city', 'Irvine'),
(1637, 112, '_billing_state', 'CA'),
(1638, 112, '_billing_postcode', '92614'),
(1639, 112, '_billing_country', 'US'),
(1640, 112, '_billing_email', 'satoshi@bitcoin.org'),
(1641, 112, '_billing_phone', '949-748-9989'),
(1642, 112, '_shipping_first_name', 'Satoshi'),
(1643, 112, '_shipping_last_name', 'Nakamoto'),
(1644, 112, '_shipping_company', 'Bitcoin Palace'),
(1645, 112, '_shipping_address_1', '4316 Evergreen Lane'),
(1646, 112, '_shipping_city', 'Irvine'),
(1647, 112, '_shipping_state', 'CA'),
(1648, 112, '_shipping_postcode', '92614'),
(1649, 112, '_shipping_country', 'US'),
(1650, 112, '_shipping_phone', '949-748-9989'),
(1651, 112, '_order_currency', 'USD'),
(1652, 112, '_cart_discount', '0'),
(1653, 112, '_cart_discount_tax', '0'),
(1654, 112, '_order_shipping', '0'),
(1655, 112, '_order_shipping_tax', '0'),
(1656, 112, '_order_tax', '0'),
(1657, 112, '_order_total', '8.00'),
(1658, 112, '_order_version', '6.8.0'),
(1659, 112, '_prices_include_tax', 'no'),
(1660, 112, '_billing_address_index', 'Satoshi Nakamoto Bitcoin Palace 4316 Evergreen Lane  Irvine CA 92614 US satoshi@bitcoin.org 949-748-9989'),
(1661, 112, '_shipping_address_index', 'Satoshi Nakamoto Bitcoin Palace 4316 Evergreen Lane  Irvine CA 92614 US 949-748-9989'),
(1662, 112, '_shipping_email', 'satoshi@bitcoin.org'),
(1663, 112, 'is_vat_exempt', 'no'),
(1664, 112, 'solana_reference', 'BCYyLLKCHvGRVcEU4U9ecsFWunL5PUUiGiecCtfXbMra');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-08-12 15:33:22', '2022-08-12 15:33:22', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2022-09-30 13:37:01', '2022-09-30 13:37:01', '', 0, 'https://socurepoc.wpengine.com/?p=1', 0, 'post', '', 1),
(2, 1, '2022-08-12 15:33:22', '2022-08-12 15:33:22', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://socurepoc.wpengine.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2022-09-30 13:35:07', '2022-09-30 13:35:07', '', 0, 'https://socurepoc.wpengine.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-08-12 15:33:22', '2022-08-12 15:33:22', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: https://socurepoc.wpengine.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2022-09-30 13:35:35', '2022-09-30 13:35:35', '', 0, 'https://socurepoc.wpengine.com/?page_id=3', 0, 'page', '', 0),
(5, 1, '2022-08-16 13:02:53', '2022-08-16 13:02:53', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2022-08-16 13:02:53', '2022-08-16 13:02:53', '', 0, 'https://socurepoc.wpengine.com/wp-content/uploads/2022/08/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2022-08-16 13:02:54', '2022-08-16 13:02:54', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2022-09-30 14:24:07', '2022-09-30 14:24:07', '', 0, 'https://socurepoc.wpengine.com/?page_id=6', 0, 'page', '', 0),
(7, 1, '2022-08-16 13:02:54', '2022-08-16 13:02:54', '<!-- wp:shortcode -->\n[woocommerce_cart]\n<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2022-09-30 15:43:59', '2022-09-30 15:43:59', '', 0, 'https://socurepoc.wpengine.com/?page_id=7', 0, 'page', '', 0),
(8, 1, '2022-08-16 13:02:55', '2022-08-16 13:02:55', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2022-08-16 13:02:55', '2022-08-16 13:02:55', '', 0, 'https://socurepoc.wpengine.com/?page_id=8', 0, 'page', '', 0),
(9, 1, '2022-08-16 13:02:55', '2022-08-16 13:02:55', '<!-- wp:shortcode -->\n[woocommerce_my_account]\n<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2022-09-30 15:43:40', '2022-09-30 15:43:40', '', 0, 'https://socurepoc.wpengine.com/?page_id=9', 0, 'page', '', 0),
(10, 1, '2022-09-30 13:35:35', '2022-09-30 13:35:35', '<!-- wp:paragraph -->\n<p><b>This is a sample page.</b></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h3>Overview</h3>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Our refund and returns policy lasts 30 days. If 30 days have passed since your purchase, we can’t offer you a full refund or exchange.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. It must also be in the original packaging.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Several types of goods are exempt from being returned. Perishable goods such as food, flowers, newspapers or magazines cannot be returned. We also do not accept products that are intimate or sanitary goods, hazardous materials, or flammable liquids or gases.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Additional non-returnable items:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Gift cards</li>\n<li>Downloadable software products</li>\n<li>Some health and personal care items</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>To complete your return, we require a receipt or proof of purchase.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Please do not send your purchase back to the manufacturer.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>There are certain situations where only partial refunds are granted:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Book with obvious signs of use</li>\n<li>CD, DVD, VHS tape, software, video game, cassette tape, or vinyl record that has been opened.</li>\n<li>Any item not in its original condition, is damaged or missing parts for reasons not due to our error.</li>\n<li>Any item that is returned more than 30 days after delivery</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<h2>Refunds</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Once your return is received and inspected, we will send you an email to notify you that we have received your returned item. We will also notify you of the approval or rejection of your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are approved, then your refund will be processed, and a credit will automatically be applied to your credit card or original method of payment, within a certain amount of days.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<b>Late or missing refunds</b>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you haven’t received a refund yet, first check your bank account again.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Then contact your credit card company, it may take some time before your refund is officially posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Next contact your bank. There is often some processing time before a refund is posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you’ve done all of this and you still have not received your refund yet, please contact us at {email address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<b>Sale items</b>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Only regular priced items may be refunded. Sale items cannot be refunded.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Exchanges</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We only replace items if they are defective or damaged. If you need to exchange it for the same item, send us an email at {email address} and send your item to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Gifts</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item was marked as a gift when purchased and shipped directly to you, you’ll receive a gift credit for the value of your return. Once the returned item is received, a gift certificate will be mailed to you.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item wasn’t marked as a gift when purchased, or the gift giver had the order shipped to themselves to give to you later, we will send a refund to the gift giver and they will find out about your return.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Shipping returns</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To return your product, you should mail your product to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are non-refundable. If you receive a refund, the cost of return shipping will be deducted from your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Depending on where you live, the time it may take for your exchanged product to reach you may vary.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are returning more expensive items, you may consider using a trackable shipping service or purchasing shipping insurance. We don’t guarantee that we will receive your returned item.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Need help?</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contact us at {email} for questions related to refunds and returns.</p>\n<!-- /wp:paragraph -->', 'Refund and Returns Policy', '', 'trash', 'closed', 'closed', '', 'refund_returns__trashed', '', '', '2022-09-30 13:35:35', '2022-09-30 13:35:35', '', 0, 'https://socurepoc.wpengine.com/?page_id=10', 0, 'page', '', 0),
(12, 1, '2022-08-16 13:07:43', '2022-08-16 13:07:43', 'Deep V for those that like that look.', 'V-Neck T-Shirt', '', 'publish', 'open', 'closed', '', 'v-neck-t-shirt', '', '', '2022-10-12 11:52:06', '2022-10-12 11:52:06', '', 0, 'https://socurepoc.wpengine.com/?post_type=product&#038;p=12', 10, 'product', '', 0),
(13, 1, '2022-08-16 13:07:43', '2022-08-16 13:07:43', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie', 'This is a variable product.', 'trash', 'open', 'closed', '', 'hoodie__trashed', '', '', '2022-10-12 11:43:12', '2022-10-12 11:43:12', '', 0, 'https://socurepoc.wpengine.com/?post_type=product&#038;p=13', 6, 'product', '', 0),
(14, 1, '2022-08-16 13:07:43', '2022-08-16 13:07:43', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie with Logo', 'This is a simple product.', 'trash', 'open', 'closed', '', 'hoodie-with-logo__trashed', '', '', '2022-09-30 14:15:08', '2022-09-30 14:15:08', '', 0, 'https://socurepoc.wpengine.com/?post_type=product&#038;p=14', 11, 'product', '', 0),
(15, 1, '2022-08-16 13:07:43', '2022-08-16 13:07:43', 'Normie shirt.', 'T-Shirt', '', 'publish', 'open', 'closed', '', 't-shirt', '', '', '2022-10-12 11:53:04', '2022-10-12 11:53:04', '', 0, 'https://socurepoc.wpengine.com/?post_type=product&#038;p=15', 9, 'product', '', 0),
(16, 1, '2022-08-16 13:07:43', '2022-08-16 13:07:43', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Beanie', 'This is a simple product.', 'trash', 'open', 'closed', '', 'beanie__trashed', '', '', '2022-09-30 14:16:22', '2022-09-30 14:16:22', '', 0, 'https://socurepoc.wpengine.com/?post_type=product&#038;p=16', 2, 'product', '', 0),
(17, 1, '2022-08-16 13:07:43', '2022-08-16 13:07:43', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Belt', 'This is a simple product.', 'trash', 'open', 'closed', '', 'belt__trashed', '', '', '2022-09-30 14:15:08', '2022-09-30 14:15:08', '', 0, 'https://socurepoc.wpengine.com/?post_type=product&#038;p=17', 4, 'product', '', 0),
(18, 1, '2022-08-16 13:07:44', '2022-08-16 13:07:44', 'A nice enough cap.', 'Cap', '', 'publish', 'open', 'closed', '', 'cap', '', '', '2022-10-12 11:49:15', '2022-10-12 11:49:15', '', 0, 'https://socurepoc.wpengine.com/?post_type=product&#038;p=18', 5, 'product', '', 0),
(19, 1, '2022-08-16 13:07:44', '2022-08-16 13:07:44', '', 'Sunglasses', 'Tom Cruise did not wear these.', 'publish', 'open', 'closed', '', 'sunglasses', '', '', '2022-10-12 11:49:26', '2022-10-12 11:49:26', '', 0, 'https://socurepoc.wpengine.com/?post_type=product&#038;p=19', 7, 'product', '', 0),
(20, 1, '2022-08-16 13:07:44', '2022-08-16 13:07:44', 'It\'s a hoodie with a pocket. Nothing surprising here.', 'Hoodie with Pocket', '', 'publish', 'open', 'closed', '', 'hoodie-with-pocket', '', '', '2022-10-12 11:57:13', '2022-10-12 11:57:13', '', 0, 'https://socurepoc.wpengine.com/?post_type=product&#038;p=20', 8, 'product', '', 0),
(21, 1, '2022-08-16 13:07:44', '2022-08-16 13:07:44', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie with Zipper', 'This is a simple product.', 'trash', 'open', 'closed', '', 'hoodie-with-zipper__trashed', '', '', '2022-10-12 11:43:03', '2022-10-12 11:43:03', '', 0, 'https://socurepoc.wpengine.com/?post_type=product&#038;p=21', 14, 'product', '', 0),
(22, 1, '2022-08-16 13:07:44', '2022-08-16 13:07:44', 'Long sleeves for those allergic to the sun or cold.', 'Long Sleeve Tee', '', 'publish', 'open', 'closed', '', 'long-sleeve-tee', '', '', '2022-10-12 11:49:46', '2022-10-12 11:49:46', '', 0, 'https://socurepoc.wpengine.com/?post_type=product&#038;p=22', 13, 'product', '', 0),
(23, 1, '2022-08-16 13:07:44', '2022-08-16 13:07:44', 'For golf days.', 'Polo', '', 'publish', 'open', 'closed', '', 'polo', '', '', '2022-10-12 11:53:43', '2022-10-12 11:53:43', '', 0, 'https://socurepoc.wpengine.com/?post_type=product&#038;p=23', 12, 'product', '', 0),
(24, 1, '2022-08-16 13:07:44', '2022-08-16 13:07:44', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.', 'Album', 'This is a simple, virtual product.', 'trash', 'open', 'closed', '', 'album__trashed', '', '', '2022-09-30 13:42:46', '2022-09-30 13:42:46', '', 0, 'https://socurepoc.wpengine.com/?post_type=product&#038;p=24', 1, 'product', '', 0),
(25, 1, '2022-08-16 13:07:45', '2022-08-16 13:07:45', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.', 'Single', 'This is a simple, virtual product.', 'trash', 'open', 'closed', '', 'single__trashed', '', '', '2022-09-30 13:42:46', '2022-09-30 13:42:46', '', 0, 'https://socurepoc.wpengine.com/?post_type=product&#038;p=25', 16, 'product', '', 0),
(29, 1, '2022-08-16 13:07:45', '2022-08-16 13:07:45', '', 'Hoodie - Red, No', 'Color: Red, Logo: No', 'trash', 'closed', 'closed', '', 'hoodie-red-no__trashed', '', '', '2022-10-12 11:43:12', '2022-10-12 11:43:12', '', 13, 'https://socurepoc.wpengine.com/?post_type=product&#038;p=29', 1, 'product_variation', '', 0),
(30, 1, '2022-08-16 13:07:45', '2022-08-16 13:07:45', '', 'Hoodie - Green, No', 'Color: Green, Logo: No', 'trash', 'closed', 'closed', '', 'hoodie-green-no__trashed', '', '', '2022-10-12 11:43:12', '2022-10-12 11:43:12', '', 13, 'https://socurepoc.wpengine.com/?post_type=product&#038;p=30', 2, 'product_variation', '', 0),
(31, 1, '2022-08-16 13:07:45', '2022-08-16 13:07:45', '', 'Hoodie - Blue, No', 'Color: Blue, Logo: No', 'trash', 'closed', 'closed', '', 'hoodie-blue-no__trashed', '', '', '2022-10-12 11:43:12', '2022-10-12 11:43:12', '', 13, 'https://socurepoc.wpengine.com/?post_type=product&#038;p=31', 3, 'product_variation', '', 0),
(32, 1, '2022-08-16 13:07:45', '2022-08-16 13:07:45', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'T-Shirt with Logo', 'This is a simple product.', 'trash', 'open', 'closed', '', 't-shirt-with-logo__trashed', '', '', '2022-09-30 14:15:08', '2022-09-30 14:15:08', '', 0, 'https://socurepoc.wpengine.com/?post_type=product&#038;p=32', 17, 'product', '', 0),
(33, 1, '2022-08-16 13:07:46', '2022-08-16 13:07:46', 'A nice beanie.', 'Beanie', 'This is a simple product.', 'publish', 'open', 'closed', '', 'beanie-with-logo', '', '', '2022-10-12 11:49:04', '2022-10-12 11:49:04', '', 0, 'https://socurepoc.wpengine.com/?post_type=product&#038;p=33', 3, 'product', '', 0),
(34, 1, '2022-08-16 13:07:46', '2022-08-16 13:07:46', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Logo Collection', 'This is a grouped product.', 'trash', 'open', 'closed', '', 'logo-collection__trashed', '', '', '2022-09-30 13:42:46', '2022-09-30 13:42:46', '', 0, 'https://socurepoc.wpengine.com/?post_type=product&#038;p=34', 15, 'product', '', 0),
(35, 1, '2022-08-16 13:07:46', '2022-08-16 13:07:46', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'WordPress Pennant', 'This is an external product.', 'trash', 'open', 'closed', '', 'wordpress-pennant__trashed', '', '', '2022-09-30 13:42:46', '2022-09-30 13:42:46', '', 0, 'https://socurepoc.wpengine.com/?post_type=product&#038;p=35', 18, 'product', '', 0),
(36, 1, '2022-08-16 13:07:46', '2022-08-16 13:07:46', '', 'Hoodie - Blue, Yes', 'Color: Blue, Logo: Yes', 'trash', 'closed', 'closed', '', 'hoodie-blue-yes__trashed', '', '', '2022-10-12 11:43:12', '2022-10-12 11:43:12', '', 13, 'https://socurepoc.wpengine.com/?post_type=product&#038;p=36', 0, 'product_variation', '', 0),
(37, 1, '2022-08-16 13:07:46', '2022-08-16 13:07:46', '', 'vneck-tee-2.jpg', '', 'inherit', 'open', 'closed', '', 'vneck-tee-2-jpg', '', '', '2022-08-16 13:07:46', '2022-08-16 13:07:46', '', 12, 'https://socurepoc.wpengine.com/wp-content/uploads/2022/08/vneck-tee-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2022-08-16 13:07:47', '2022-08-16 13:07:47', '', 'vnech-tee-green-1.jpg', '', 'inherit', 'open', 'closed', '', 'vnech-tee-green-1-jpg', '', '', '2022-08-16 13:07:47', '2022-08-16 13:07:47', '', 12, 'https://socurepoc.wpengine.com/wp-content/uploads/2022/08/vnech-tee-green-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2022-08-16 13:07:48', '2022-08-16 13:07:48', '', 'vnech-tee-blue-1.jpg', '', 'inherit', 'open', 'closed', '', 'vnech-tee-blue-1-jpg', '', '', '2022-08-16 13:07:48', '2022-08-16 13:07:48', '', 12, 'https://socurepoc.wpengine.com/wp-content/uploads/2022/08/vnech-tee-blue-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2022-08-16 13:07:49', '2022-08-16 13:07:49', '', 'hoodie-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-2-jpg', '', '', '2022-08-16 13:07:49', '2022-08-16 13:07:49', '', 13, 'https://socurepoc.wpengine.com/wp-content/uploads/2022/08/hoodie-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2022-08-16 13:07:50', '2022-08-16 13:07:50', '', 'hoodie-blue-1.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-blue-1-jpg', '', '', '2022-08-16 13:07:50', '2022-08-16 13:07:50', '', 13, 'https://socurepoc.wpengine.com/wp-content/uploads/2022/08/hoodie-blue-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2022-08-16 13:07:51', '2022-08-16 13:07:51', '', 'hoodie-green-1.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-green-1-jpg', '', '', '2022-08-16 13:07:51', '2022-08-16 13:07:51', '', 13, 'https://socurepoc.wpengine.com/wp-content/uploads/2022/08/hoodie-green-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2022-08-16 13:07:51', '2022-08-16 13:07:51', '', 'hoodie-with-logo-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-with-logo-2-jpg', '', '', '2022-08-16 13:07:51', '2022-08-16 13:07:51', '', 13, 'https://socurepoc.wpengine.com/wp-content/uploads/2022/08/hoodie-with-logo-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2022-08-16 13:07:52', '2022-08-16 13:07:52', '', 'tshirt-2.jpg', '', 'inherit', 'open', 'closed', '', 'tshirt-2-jpg', '', '', '2022-08-16 13:07:52', '2022-08-16 13:07:52', '', 15, 'https://socurepoc.wpengine.com/wp-content/uploads/2022/08/tshirt-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2022-08-16 13:07:53', '2022-08-16 13:07:53', '', 'beanie-2.jpg', '', 'inherit', 'open', 'closed', '', 'beanie-2-jpg', '', '', '2022-08-16 13:07:53', '2022-08-16 13:07:53', '', 16, 'https://socurepoc.wpengine.com/wp-content/uploads/2022/08/beanie-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2022-08-16 13:07:54', '2022-08-16 13:07:54', '', 'belt-2.jpg', '', 'inherit', 'open', 'closed', '', 'belt-2-jpg', '', '', '2022-08-16 13:07:54', '2022-08-16 13:07:54', '', 17, 'https://socurepoc.wpengine.com/wp-content/uploads/2022/08/belt-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2022-08-16 13:07:55', '2022-08-16 13:07:55', '', 'cap-2.jpg', '', 'inherit', 'open', 'closed', '', 'cap-2-jpg', '', '', '2022-08-16 13:07:55', '2022-08-16 13:07:55', '', 18, 'https://socurepoc.wpengine.com/wp-content/uploads/2022/08/cap-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2022-08-16 13:07:56', '2022-08-16 13:07:56', '', 'sunglasses-2.jpg', '', 'inherit', 'open', 'closed', '', 'sunglasses-2-jpg', '', '', '2022-08-16 13:07:56', '2022-08-16 13:07:56', '', 19, 'https://socurepoc.wpengine.com/wp-content/uploads/2022/08/sunglasses-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2022-08-16 13:07:57', '2022-08-16 13:07:57', '', 'hoodie-with-pocket-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-with-pocket-2-jpg', '', '', '2022-08-16 13:07:57', '2022-08-16 13:07:57', '', 20, 'https://socurepoc.wpengine.com/wp-content/uploads/2022/08/hoodie-with-pocket-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2022-08-16 13:07:58', '2022-08-16 13:07:58', '', 'hoodie-with-zipper-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-with-zipper-2-jpg', '', '', '2022-08-16 13:07:58', '2022-08-16 13:07:58', '', 21, 'https://socurepoc.wpengine.com/wp-content/uploads/2022/08/hoodie-with-zipper-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2022-08-16 13:07:59', '2022-08-16 13:07:59', '', 'long-sleeve-tee-2.jpg', '', 'inherit', 'open', 'closed', '', 'long-sleeve-tee-2-jpg', '', '', '2022-08-16 13:07:59', '2022-08-16 13:07:59', '', 22, 'https://socurepoc.wpengine.com/wp-content/uploads/2022/08/long-sleeve-tee-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2022-08-16 13:07:59', '2022-08-16 13:07:59', '', 'polo-2.jpg', '', 'inherit', 'open', 'closed', '', 'polo-2-jpg', '', '', '2022-08-16 13:07:59', '2022-08-16 13:07:59', '', 23, 'https://socurepoc.wpengine.com/wp-content/uploads/2022/08/polo-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2022-08-16 13:08:00', '2022-08-16 13:08:00', '', 'album-1.jpg', '', 'inherit', 'open', 'closed', '', 'album-1-jpg', '', '', '2022-08-16 13:08:00', '2022-08-16 13:08:00', '', 24, 'https://socurepoc.wpengine.com/wp-content/uploads/2022/08/album-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2022-08-16 13:08:02', '2022-08-16 13:08:02', '', 'single-1.jpg', '', 'inherit', 'open', 'closed', '', 'single-1-jpg', '', '', '2022-08-16 13:08:02', '2022-08-16 13:08:02', '', 25, 'https://socurepoc.wpengine.com/wp-content/uploads/2022/08/single-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2022-08-16 13:08:03', '2022-08-16 13:08:03', '', 't-shirt-with-logo-1.jpg', '', 'inherit', 'open', 'closed', '', 't-shirt-with-logo-1-jpg', '', '', '2022-08-16 13:08:03', '2022-08-16 13:08:03', '', 32, 'https://socurepoc.wpengine.com/wp-content/uploads/2022/08/t-shirt-with-logo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2022-08-16 13:08:04', '2022-08-16 13:08:04', '', 'beanie-with-logo-1.jpg', '', 'inherit', 'open', 'closed', '', 'beanie-with-logo-1-jpg', '', '', '2022-08-16 13:08:04', '2022-08-16 13:08:04', '', 33, 'https://socurepoc.wpengine.com/wp-content/uploads/2022/08/beanie-with-logo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2022-08-16 13:08:05', '2022-08-16 13:08:05', '', 'logo-1.jpg', '', 'inherit', 'open', 'closed', '', 'logo-1-jpg', '', '', '2022-08-16 13:08:05', '2022-08-16 13:08:05', '', 34, 'https://socurepoc.wpengine.com/wp-content/uploads/2022/08/logo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2022-08-16 13:08:08', '2022-08-16 13:08:08', '', 'pennant-1.jpg', '', 'inherit', 'open', 'closed', '', 'pennant-1-jpg', '', '', '2022-08-16 13:08:08', '2022-08-16 13:08:08', '', 35, 'https://socurepoc.wpengine.com/wp-content/uploads/2022/08/pennant-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2022-08-16 13:12:25', '2022-08-16 13:12:25', '', 'Order &ndash; August 16, 2022 @ 01:12 PM', '', 'wc-cancelled', 'open', 'closed', 'wc_order_s05XuElYc98DF', 'order-aug-16-2022-0112-pm', '', '', '2022-08-30 08:10:35', '2022-08-30 08:10:35', '', 0, 'https://socurepoc.wpengine.com/?post_type=shop_order&#038;p=59', 0, 'shop_order', '', 1),
(60, 1, '2022-09-20 10:06:43', '2022-09-20 10:06:43', '', 'Order &ndash; September 20, 2022 @ 10:06 AM', '', 'wc-cancelled', 'open', 'closed', 'wc_order_5YCo0bkbk9LaY', 'order-sep-20-2022-1006-am', '', '', '2022-10-11 10:06:08', '2022-10-11 10:06:08', '', 0, 'https://socurepoc.wpengine.com/?post_type=shop_order&#038;p=60', 0, 'shop_order', '', 1),
(61, 1, '2022-09-20 10:15:04', '2022-09-20 10:15:04', '', 'Order &ndash; September 20, 2022 @ 10:15 AM', '', 'wc-cancelled', 'open', 'closed', 'wc_order_WW096760YhH3m', 'order-sep-20-2022-1015-am', '', '', '2022-10-11 10:06:09', '2022-10-11 10:06:09', '', 0, 'https://socurepoc.wpengine.com/?post_type=shop_order&#038;p=61', 0, 'shop_order', '', 1),
(62, 1, '2022-09-20 10:34:17', '2022-09-20 10:34:17', '', 'Order &ndash; September 20, 2022 @ 10:34 AM', '', 'wc-completed', 'open', 'closed', 'wc_order_yN38GADWJ4bGh', 'order-sep-20-2022-1034-am', '', '', '2022-09-20 10:34:31', '2022-09-20 10:34:31', '', 0, 'https://socurepoc.wpengine.com/?post_type=shop_order&#038;p=62', 0, 'shop_order', '', 1),
(63, 1, '2022-09-20 11:08:19', '2022-09-20 11:08:19', '', 'Order &ndash; September 20, 2022 @ 11:08 AM', '', 'wc-completed', 'open', 'closed', 'wc_order_BAqh6IdnPc2aL', 'order-sep-20-2022-1108-am', '', '', '2022-09-20 11:10:27', '2022-09-20 11:10:27', '', 0, 'https://socurepoc.wpengine.com/?post_type=shop_order&#038;p=63', 0, 'shop_order', '', 1),
(64, 1, '2022-09-20 11:42:24', '2022-09-20 11:42:24', '', 'Order &ndash; September 20, 2022 @ 11:42 AM', '', 'wc-completed', 'open', 'closed', 'wc_order_8i9QBBlA5hTBs', 'order-sep-20-2022-1142-am', '', '', '2022-09-20 11:45:12', '2022-09-20 11:45:12', '', 0, 'https://socurepoc.wpengine.com/?post_type=shop_order&#038;p=64', 0, 'shop_order', '', 1),
(65, 1, '2022-09-20 12:36:35', '2022-09-20 12:36:35', '', 'Order &ndash; September 20, 2022 @ 12:36 PM', '', 'wc-completed', 'open', 'closed', 'wc_order_hAEf2FfNoH9Yl', 'order-sep-20-2022-1236-pm', '', '', '2022-09-20 12:39:05', '2022-09-20 12:39:05', '', 0, 'https://socurepoc.wpengine.com/?post_type=shop_order&#038;p=65', 0, 'shop_order', '', 1),
(66, 1, '2022-09-20 13:00:07', '2022-09-20 13:00:07', '', 'Order &ndash; September 20, 2022 @ 01:00 PM', '', 'wc-cancelled', 'open', 'closed', 'wc_order_DF8bb7ktzU1Ow', 'order-sep-20-2022-0100-pm', '', '', '2022-10-11 10:06:09', '2022-10-11 10:06:09', '', 0, 'https://socurepoc.wpengine.com/?post_type=shop_order&#038;p=66', 0, 'shop_order', '', 1),
(67, 1, '2022-09-20 13:00:44', '2022-09-20 13:00:44', '', 'Order &ndash; September 20, 2022 @ 01:00 PM', '', 'wc-cancelled', 'open', 'closed', 'wc_order_Yc4J7APLbZ9oS', 'order-sep-20-2022-0100-pm-2', '', '', '2022-10-11 10:06:09', '2022-10-11 10:06:09', '', 0, 'https://socurepoc.wpengine.com/?post_type=shop_order&#038;p=67', 0, 'shop_order', '', 1),
(68, 1, '2022-09-20 15:07:03', '2022-09-20 15:07:03', '', 'Order &ndash; September 20, 2022 @ 03:07 PM', '', 'wc-cancelled', 'open', 'closed', 'wc_order_Tx04d3Gh1oukD', 'order-sep-20-2022-0307-pm', '', '', '2022-10-11 10:06:09', '2022-10-11 10:06:09', '', 0, 'https://socurepoc.wpengine.com/?post_type=shop_order&#038;p=68', 0, 'shop_order', '', 1),
(69, 1, '2022-09-20 15:08:26', '2022-09-20 15:08:26', '', 'Order &ndash; September 20, 2022 @ 03:08 PM', '', 'wc-completed', 'open', 'closed', 'wc_order_LQQOsj1zJPufh', 'order-sep-20-2022-0308-pm', '', '', '2022-09-20 15:13:24', '2022-09-20 15:13:24', '', 0, 'https://socurepoc.wpengine.com/?post_type=shop_order&#038;p=69', 0, 'shop_order', '', 1),
(71, 1, '2022-09-26 08:24:46', '2022-09-26 08:24:46', '', 'Order &ndash; September 26, 2022 @ 08:24 AM', '', 'wc-processing', 'open', 'closed', 'wc_order_bBsErr5dv20GZ', 'order-sep-26-2022-0824-am', '', '', '2022-09-26 08:27:05', '2022-09-26 08:27:05', '', 0, 'https://socurepoc.wpengine.com/?post_type=shop_order&#038;p=71', 0, 'shop_order', '', 1),
(72, 1, '2022-09-29 13:48:12', '2022-09-29 13:48:12', '', 'Order &ndash; September 29, 2022 @ 01:48 PM', 'Testing', 'wc-cancelled', 'open', 'closed', 'wc_order_GR15NahFnSr5w', 'order-sep-29-2022-0148-pm', '', '', '2022-10-11 10:06:09', '2022-10-11 10:06:09', '', 0, 'https://zerodayshopping.identity.com/?post_type=shop_order&#038;p=72', 0, 'shop_order', '', 1),
(73, 1, '2022-09-29 14:12:45', '2022-09-29 14:12:45', '', 'Order &ndash; September 29, 2022 @ 02:12 PM', 'testing', 'wc-cancelled', 'open', 'closed', 'wc_order_S6mF9Ovr6XJYF', 'order-sep-29-2022-0212-pm', '', '', '2022-10-11 10:06:09', '2022-10-11 10:06:09', '', 0, 'https://zerodayshopping.identity.com/?post_type=shop_order&#038;p=73', 0, 'shop_order', '', 1),
(75, 1, '2022-09-30 11:37:37', '2022-09-30 11:37:37', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-storefront', '', '', '2022-09-30 11:37:37', '2022-09-30 11:37:37', '', 0, 'https://zerodayshopping.identity.com/?p=75', 0, 'wp_global_styles', '', 0),
(76, 1, '2022-09-30 13:38:13', '2022-09-30 13:38:13', '<!-- wp:cover {\"url\":\"https://zerodayshopping.identity.com/wp-content/uploads/2022/09/other-small.jpg\",\"id\":77,\"dimRatio\":0} -->\n<div class=\"wp-block-cover\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-0 has-background-dim\"></span><img class=\"wp-block-cover__image-background wp-image-77\" alt=\"\" src=\"https://zerodayshopping.identity.com/wp-content/uploads/2022/09/other-small.jpg\" data-object-fit=\"cover\"/><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\",\"gbResponsiveSettings\":{}} -->\n<p class=\"has-text-align-center has-white-color has-text-color has-large-font-size\"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\",\"gbResponsiveSettings\":{}} -->\n<p class=\"has-text-align-center has-white-color has-text-color\"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://zerodayshopping.identity.com/?page_id=6\">Go shopping!</a></div>\n<!-- /wp:button --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:heading {\"textAlign\":\"center\",\"gbResponsiveSettings\":{}} -->\n<h2 class=\"has-text-align-center\">New In</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-new {\"columns\":4} /-->\n\n<!-- wp:heading {\"textAlign\":\"center\",\"gbResponsiveSettings\":{}} -->\n<h2 class=\"has-text-align-center\">Fan Favorites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-best-sellers {\"columns\":4} /-->', 'Homepage', '', 'publish', 'closed', 'closed', '', 'homepage', '', '', '2022-09-30 13:59:25', '2022-09-30 13:59:25', '', 0, 'https://zerodayshopping.identity.com/?page_id=76', 0, 'page', '', 0),
(77, 1, '2022-09-30 13:38:14', '2022-09-30 13:38:14', '', 'other-small', 'Welcome to our shop!', 'inherit', 'open', 'closed', '', 'other-small', '', '', '2022-09-30 14:06:39', '2022-09-30 14:06:39', '', 76, 'https://zerodayshopping.identity.com/wp-content/uploads/2022/09/other-small.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2022-09-30 13:47:03', '2022-09-30 13:47:03', '', 'image', '', 'inherit', 'open', 'closed', '', 'image', '', '', '2022-10-12 12:08:50', '2022-10-12 12:08:50', '', 0, 'https://zerodayshopping.identity.com/wp-content/uploads/2022/09/image.png', 0, 'attachment', 'image/png', 0),
(80, 1, '2022-09-30 14:03:14', '2022-09-30 14:03:14', '{\n    \"woocommerce_checkout_company_field\": {\n        \"value\": \"hidden\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-30 14:02:38\"\n    },\n    \"woocommerce_checkout_address_2_field\": {\n        \"value\": \"hidden\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-30 14:02:38\"\n    },\n    \"woocommerce_checkout_phone_field\": {\n        \"value\": \"hidden\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-30 14:02:38\"\n    },\n    \"wp_page_for_privacy_policy\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-30 14:02:38\"\n    },\n    \"storefront::storefront_layout\": {\n        \"value\": \"right\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-30 14:02:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'aa6e49cd-1af9-4169-80b1-9dcd87c63244', '', '', '2022-09-30 14:03:14', '2022-09-30 14:03:14', '', 0, 'https://zerodayshopping.identity.com/?p=80', 0, 'customize_changeset', '', 0),
(81, 1, '2022-09-30 14:05:03', '2022-09-30 14:05:03', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"block-2\",\n                \"block-3\",\n                \"block-4\",\n                \"block-5\",\n                \"block-6\"\n            ],\n            \"sidebar-1\": [],\n            \"header-1\": [],\n            \"footer-1\": [],\n            \"footer-2\": [],\n            \"footer-3\": [],\n            \"footer-4\": []\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-30 14:05:03\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4f0808b5-cefe-4205-ace6-af7e58db58fd', '', '', '2022-09-30 14:05:03', '2022-09-30 14:05:03', '', 0, 'https://zerodayshopping.identity.com/?p=81', 0, 'customize_changeset', '', 0),
(82, 1, '2022-09-30 14:05:33', '2022-09-30 14:05:33', 'https://zerodayshopping.identity.com/wp-content/uploads/2022/09/cropped-image.png', 'cropped-image.png', '', 'inherit', 'open', 'closed', '', 'cropped-image-png', '', '', '2022-09-30 14:05:33', '2022-09-30 14:05:33', '', 0, 'https://zerodayshopping.identity.com/wp-content/uploads/2022/09/cropped-image.png', 0, 'attachment', 'image/png', 0),
(83, 1, '2022-09-30 14:06:05', '2022-09-30 14:06:05', 'https://zerodayshopping.identity.com/wp-content/uploads/2022/09/cropped-image-1.png', 'cropped-image-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-image-1-png', '', '', '2022-09-30 14:06:05', '2022-09-30 14:06:05', '', 0, 'https://zerodayshopping.identity.com/wp-content/uploads/2022/09/cropped-image-1.png', 0, 'attachment', 'image/png', 0),
(84, 1, '2022-09-30 14:07:20', '2022-09-30 14:07:20', '{\n    \"shoppe::custom_logo\": {\n        \"value\": 83,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-30 14:06:35\"\n    },\n    \"shoppe::header_image\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-30 14:07:20\"\n    },\n    \"shoppe::header_image_data\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-30 14:07:20\"\n    },\n    \"shoppe::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-30 14:07:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '23e25579-e0b2-4e75-8c8a-fc53c4e40cee', '', '', '2022-09-30 14:07:20', '2022-09-30 14:07:20', '', 0, 'https://zerodayshopping.identity.com/?p=84', 0, 'customize_changeset', '', 0),
(85, 1, '2022-09-30 14:06:45', '2022-09-30 14:06:45', '', 'cropped-other-small.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-other-small-jpg', '', '', '2022-09-30 14:06:45', '2022-09-30 14:06:45', '', 0, 'https://zerodayshopping.identity.com/wp-content/uploads/2022/09/cropped-other-small.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2022-09-30 14:09:31', '2022-09-30 14:09:31', '{\n    \"page_on_front\": {\n        \"value\": \"6\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-30 14:09:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b7a2f306-0514-486d-8d81-e8173e8dd004', '', '', '2022-09-30 14:09:31', '2022-09-30 14:09:31', '', 0, 'https://zerodayshopping.identity.com/?p=86', 0, 'customize_changeset', '', 0),
(87, 1, '2022-09-30 14:11:33', '2022-09-30 14:11:33', '{\n    \"site_icon\": {\n        \"value\": 78,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-30 14:10:33\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '86416157-2609-4a61-bc2e-443f692fcb8f', '', '', '2022-09-30 14:11:33', '2022-09-30 14:11:33', '', 0, 'https://zerodayshopping.identity.com/?p=87', 0, 'customize_changeset', '', 0),
(88, 1, '2022-09-30 14:14:05', '2022-09-30 14:14:05', '{\n    \"blogname\": {\n        \"value\": \"Identity.com Shop\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-30 14:12:35\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-30 14:12:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3a0167b2-75f0-4d42-b688-4300f7aee85f', '', '', '2022-09-30 14:14:05', '2022-09-30 14:14:05', '', 0, 'https://zerodayshopping.identity.com/?p=88', 0, 'customize_changeset', '', 0),
(89, 1, '2022-09-30 14:20:36', '2022-09-30 14:20:36', '{\n    \"shoppe::header_textcolor\": {\n        \"value\": \"blank\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-30 14:20:36\"\n    },\n    \"shoppe::background_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-30 14:20:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '42ec5c04-45b3-4a79-b7e1-2bd05398dd91', '', '', '2022-09-30 14:20:36', '2022-09-30 14:20:36', '', 0, 'https://zerodayshopping.identity.com/?p=89', 0, 'customize_changeset', '', 0),
(90, 1, '2022-09-30 14:22:36', '2022-09-30 14:22:36', '{\n    \"blogname\": {\n        \"value\": \"Identity.com Shop powered by Solana Pay!\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-30 14:22:36\"\n    },\n    \"shoppe::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-30 14:22:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '45ed23d1-a48e-4f28-b2e9-860851c675c0', '', '', '2022-09-30 14:22:36', '2022-09-30 14:22:36', '', 0, 'https://zerodayshopping.identity.com/?p=90', 0, 'customize_changeset', '', 0),
(91, 1, '2022-09-30 14:22:44', '2022-09-30 14:22:44', '{\n    \"shoppe::header_textcolor\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-30 14:22:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '04498520-3751-4f5e-9d76-7f5465c7ab29', '', '', '2022-09-30 14:22:44', '2022-09-30 14:22:44', '', 0, 'https://zerodayshopping.identity.com/?p=91', 0, 'customize_changeset', '', 0),
(92, 1, '2022-09-30 14:23:01', '2022-09-30 14:23:01', '{\n    \"shoppe::header_textcolor\": {\n        \"value\": \"blank\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-30 14:23:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1ee8b814-d5f0-42c8-a49a-34a8684f946a', '', '', '2022-09-30 14:23:01', '2022-09-30 14:23:01', '', 0, 'https://zerodayshopping.identity.com/?p=92', 0, 'customize_changeset', '', 0),
(93, 1, '2022-09-30 14:24:42', '2022-09-30 14:24:42', 'https://zerodayshopping.identity.com/wp-content/uploads/2022/09/cropped-image-2.png', 'cropped-image-2.png', '', 'inherit', 'open', 'closed', '', 'cropped-image-2-png', '', '', '2022-09-30 14:24:42', '2022-09-30 14:24:42', '', 0, 'https://zerodayshopping.identity.com/wp-content/uploads/2022/09/cropped-image-2.png', 0, 'attachment', 'image/png', 0),
(94, 1, '2022-09-30 14:24:46', '2022-09-30 14:24:46', '{\n    \"shoppe::custom_logo\": {\n        \"value\": 93,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-30 14:24:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '041f573c-75f2-4b49-b81f-98b5c788dae2', '', '', '2022-09-30 14:24:46', '2022-09-30 14:24:46', '', 0, 'https://zerodayshopping.identity.com/?p=94', 0, 'customize_changeset', '', 0),
(95, 1, '2022-09-30 15:06:36', '2022-09-30 15:06:36', '{\n    \"blogname\": {\n        \"value\": \"Identity.com shop powered by Solana Pay!\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-09-30 15:06:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd43642fa-a51b-4081-a993-2d7859d39db1', '', '', '2022-09-30 15:06:36', '2022-09-30 15:06:36', '', 0, 'https://zerodayshopping.identity.com/?p=95', 0, 'customize_changeset', '', 0),
(96, 1, '2022-09-30 15:43:39', '2022-09-30 15:43:39', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-shoppe', '', '', '2022-09-30 15:43:39', '2022-09-30 15:43:39', '', 0, 'https://zerodayshopping.identity.com/?p=96', 0, 'wp_global_styles', '', 0),
(97, 1, '2022-09-30 16:31:49', '2022-09-30 16:31:49', '', 'Order &ndash; September 30, 2022 @ 04:31 PM', '', 'wc-cancelled', 'open', 'closed', 'wc_order_Y2QQ9uqBRCUMP', 'order-sep-30-2022-0431-pm', '', '', '2022-10-11 10:06:09', '2022-10-11 10:06:09', '', 0, 'https://zerodayshopping.identity.com/?post_type=shop_order&#038;p=97', 0, 'shop_order', '', 1);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(98, 1, '2022-10-03 04:36:51', '2022-10-03 04:36:51', '', 'Order &ndash; October 3, 2022 @ 04:36 AM', '', 'wc-cancelled', 'open', 'closed', 'wc_order_V32gShsu1L9gl', 'order-oct-03-2022-0436-am', '', '', '2022-10-11 10:06:09', '2022-10-11 10:06:09', '', 0, 'https://zerodayshopping.identity.com/?post_type=shop_order&#038;p=98', 0, 'shop_order', '', 1),
(99, 1, '2022-10-06 15:19:35', '2022-10-06 15:19:35', '', 'Order &ndash; October 6, 2022 @ 03:19 PM', '', 'wc-pending', 'open', 'closed', 'wc_order_PRnYORIZJe29a', 'order-oct-06-2022-0319-pm', '', '', '2022-10-06 15:19:35', '2022-10-06 15:19:35', '', 0, 'https://zerodayshopping.identity.com/?post_type=shop_order&p=99', 0, 'shop_order', '', 0),
(100, 1, '2022-10-11 10:06:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-10-11 10:06:36', '0000-00-00 00:00:00', '', 0, 'https://zerodayshopping.identity.com/?p=100', 0, 'post', '', 0),
(101, 1, '2022-10-11 10:06:53', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-10-11 10:06:53', '0000-00-00 00:00:00', '', 0, 'https://zerodayshopping.identity.com/?p=101', 1, 'nav_menu_item', '', 0),
(102, 1, '2022-10-11 10:06:53', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-10-11 10:06:53', '0000-00-00 00:00:00', '', 0, 'https://zerodayshopping.identity.com/?p=102', 1, 'nav_menu_item', '', 0),
(103, 1, '2022-10-11 10:06:53', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-10-11 10:06:53', '0000-00-00 00:00:00', '', 0, 'https://zerodayshopping.identity.com/?p=103', 1, 'nav_menu_item', '', 0),
(104, 1, '2022-10-11 10:06:53', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-10-11 10:06:53', '0000-00-00 00:00:00', '', 0, 'https://zerodayshopping.identity.com/?p=104', 1, 'nav_menu_item', '', 0),
(105, 1, '2022-10-11 10:06:53', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-10-11 10:06:53', '0000-00-00 00:00:00', '', 0, 'https://zerodayshopping.identity.com/?p=105', 1, 'nav_menu_item', '', 0),
(106, 1, '2022-10-11 11:29:13', '2022-10-11 11:29:13', '', 'Order &ndash; October 11, 2022 @ 11:29 AM', '', 'wc-pending', 'open', 'closed', 'wc_order_XIay5EbycOx3Y', 'order-oct-11-2022-1129-am', '', '', '2022-10-11 11:29:13', '2022-10-11 11:29:13', '', 0, 'https://zerodayshopping.identity.com/?post_type=shop_order&p=106', 0, 'shop_order', '', 0),
(107, 1, '2022-10-12 11:39:34', '2022-10-12 11:39:34', '', 'Beanie', 'This is a simple product.', 'inherit', 'closed', 'closed', '', '33-autosave-v1', '', '', '2022-10-12 11:39:34', '2022-10-12 11:39:34', '', 33, 'https://zerodayshopping.identity.com/?p=107', 0, 'revision', '', 0),
(108, 1, '2022-10-12 12:19:20', '2022-10-12 12:19:20', '{\n    \"blogname\": {\n        \"value\": \"A shop from the future.\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-10-12 12:19:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7224c3b5-62e7-4e98-b95f-e657f9c60dde', '', '', '2022-10-12 12:19:20', '2022-10-12 12:19:20', '', 0, 'https://zerodayshopping.identity.com/?p=108', 0, 'customize_changeset', '', 0),
(109, 1, '2022-10-12 12:21:09', '2022-10-12 12:21:09', '{\n    \"blogname\": {\n        \"value\": \"A shop from the future\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-10-12 12:21:09\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e14a1809-339e-47f4-b1ff-ddc5e62d32db', '', '', '2022-10-12 12:21:09', '2022-10-12 12:21:09', '', 0, 'https://zerodayshopping.identity.com/?p=109', 0, 'customize_changeset', '', 0),
(110, 1, '2022-10-12 12:29:53', '2022-10-12 12:29:53', '', 'Order &ndash; October 12, 2022 @ 12:29 PM', '', 'wc-pending', 'open', 'closed', 'wc_order_2I4sZOPg8OfUx', 'order-oct-12-2022-1229-pm', '', '', '2022-10-12 12:29:53', '2022-10-12 12:29:53', '', 0, 'https://zerodayshopping.identity.com/?post_type=shop_order&p=110', 0, 'shop_order', '', 0),
(111, 1, '2022-10-12 12:32:18', '2022-10-12 12:32:18', '', 'Order &ndash; October 12, 2022 @ 12:32 PM', '', 'wc-pending', 'open', 'closed', 'wc_order_lMxg3Xtom1syY', 'order-oct-12-2022-1232-pm', '', '', '2022-10-12 12:32:18', '2022-10-12 12:32:18', '', 0, 'https://zerodayshopping.identity.com/?post_type=shop_order&p=111', 0, 'shop_order', '', 0),
(112, 1, '2022-10-12 12:38:50', '2022-10-12 12:38:50', '', 'Order &ndash; October 12, 2022 @ 12:38 PM', '', 'wc-pending', 'open', 'closed', 'wc_order_r2Ri7Zih5QHp0', 'order-oct-12-2022-1238-pm', '', '', '2022-10-12 12:38:50', '2022-10-12 12:38:50', '', 0, 'https://zerodayshopping.identity.com/?post_type=shop_order&p=112', 0, 'shop_order', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'product_count_product_cat', '0'),
(2, 16, 'order', '0'),
(3, 17, 'order', '0'),
(4, 18, 'order', '0'),
(5, 19, 'order', '0'),
(6, 20, 'order', '0'),
(7, 21, 'order', '0'),
(8, 17, 'product_count_product_cat', '4'),
(9, 16, 'product_count_product_cat', '8'),
(10, 22, 'order_pa_color', '0'),
(11, 23, 'order_pa_color', '0'),
(12, 24, 'order_pa_color', '0'),
(13, 25, 'order_pa_size', '0'),
(14, 26, 'order_pa_size', '0'),
(15, 27, 'order_pa_size', '0'),
(16, 18, 'product_count_product_cat', '1'),
(17, 28, 'order_pa_color', '0'),
(18, 19, 'product_count_product_cat', '3'),
(19, 29, 'order_pa_color', '0'),
(20, 20, 'product_count_product_cat', '0'),
(21, 21, 'product_count_product_cat', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(16, 'Clothing', 'clothing', 0),
(17, 'Tshirts', 'tshirts', 0),
(18, 'Hoodies', 'hoodies', 0),
(19, 'Accessories', 'accessories', 0),
(20, 'Music', 'music', 0),
(21, 'Decor', 'decor', 0),
(22, 'Blue', 'blue', 0),
(23, 'Green', 'green', 0),
(24, 'Red', 'red', 0),
(25, 'Large', 'large', 0),
(26, 'Medium', 'medium', 0),
(27, 'Small', 'small', 0),
(28, 'Gray', 'gray', 0),
(29, 'Yellow', 'yellow', 0),
(30, 'subscription', 'subscription', 0),
(31, 'Variable Subscription', 'variable-subscription', 0),
(32, 'storefront', 'storefront', 0),
(33, 'shoppe', 'shoppe', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(12, 2, 0),
(12, 17, 0),
(12, 24, 0),
(12, 26, 0),
(13, 4, 0),
(13, 18, 0),
(13, 22, 0),
(13, 23, 0),
(13, 24, 0),
(14, 2, 0),
(14, 18, 0),
(14, 22, 0),
(15, 2, 0),
(15, 17, 0),
(15, 28, 0),
(16, 2, 0),
(16, 19, 0),
(16, 24, 0),
(17, 2, 0),
(17, 19, 0),
(18, 2, 0),
(18, 19, 0),
(18, 29, 0),
(19, 2, 0),
(19, 19, 0),
(20, 2, 0),
(20, 18, 0),
(20, 28, 0),
(21, 2, 0),
(21, 18, 0),
(22, 2, 0),
(22, 17, 0),
(22, 23, 0),
(23, 2, 0),
(23, 17, 0),
(23, 22, 0),
(24, 2, 0),
(24, 20, 0),
(25, 2, 0),
(25, 20, 0),
(26, 15, 0),
(27, 15, 0),
(28, 15, 0),
(29, 15, 0),
(30, 15, 0),
(31, 15, 0),
(32, 2, 0),
(32, 17, 0),
(32, 28, 0),
(33, 2, 0),
(33, 19, 0),
(33, 22, 0),
(34, 3, 0),
(34, 16, 0),
(35, 5, 0),
(35, 21, 0),
(36, 15, 0),
(75, 32, 0),
(96, 33, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'product_type', '', 0, 8),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'product_cat', '', 0, 0),
(17, 17, 'product_cat', '', 16, 4),
(18, 18, 'product_cat', '', 16, 1),
(19, 19, 'product_cat', '', 16, 3),
(20, 20, 'product_cat', '', 0, 0),
(21, 21, 'product_cat', '', 0, 0),
(22, 22, 'pa_color', '', 0, 2),
(23, 23, 'pa_color', '', 0, 1),
(24, 24, 'pa_color', '', 0, 1),
(25, 25, 'pa_size', '', 0, 0),
(26, 26, 'pa_size', '', 0, 1),
(27, 27, 'pa_size', '', 0, 0),
(28, 28, 'pa_color', '', 0, 2),
(29, 29, 'pa_color', '', 0, 1),
(30, 30, 'product_type', '', 0, 0),
(31, 31, 'product_type', '', 0, 0),
(32, 32, 'wp_theme', '', 0, 1),
(33, 33, 'wp_theme', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'socurepocdev'),
(2, 1, 'first_name', 'William'),
(3, 1, 'last_name', 'Brooks'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '100'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"41.76.117.0\";}'),
(19, 1, '_woocommerce_tracks_anon_id', 'woo:y0ASnUf2yu8djaBz9Ahb6wC1'),
(20, 1, 'wc_last_active', '1665532800'),
(21, 1, 'last_update', '1664545588'),
(22, 1, 'woocommerce_admin_task_list_tracked_started_tasks', '{\"products\":1,\"payments\":1,\"appearance\":3}'),
(23, 1, 'wp_woocommerce_product_import_mapping', 'a:51:{i:0;s:2:\"id\";i:1;s:4:\"type\";i:2;s:3:\"sku\";i:3;s:4:\"name\";i:4;s:9:\"published\";i:5;s:8:\"featured\";i:6;s:18:\"catalog_visibility\";i:7;s:17:\"short_description\";i:8;s:11:\"description\";i:9;s:17:\"date_on_sale_from\";i:10;s:15:\"date_on_sale_to\";i:11;s:10:\"tax_status\";i:12;s:9:\"tax_class\";i:13;s:12:\"stock_status\";i:14;s:14:\"stock_quantity\";i:15;s:10:\"backorders\";i:16;s:17:\"sold_individually\";i:17;s:0:\"\";i:18;s:0:\"\";i:19;s:0:\"\";i:20;s:0:\"\";i:21;s:15:\"reviews_allowed\";i:22;s:13:\"purchase_note\";i:23;s:10:\"sale_price\";i:24;s:13:\"regular_price\";i:25;s:12:\"category_ids\";i:26;s:7:\"tag_ids\";i:27;s:17:\"shipping_class_id\";i:28;s:6:\"images\";i:29;s:14:\"download_limit\";i:30;s:15:\"download_expiry\";i:31;s:9:\"parent_id\";i:32;s:16:\"grouped_products\";i:33;s:10:\"upsell_ids\";i:34;s:14:\"cross_sell_ids\";i:35;s:11:\"product_url\";i:36;s:11:\"button_text\";i:37;s:10:\"menu_order\";i:38;s:16:\"attributes:name1\";i:39;s:17:\"attributes:value1\";i:40;s:19:\"attributes:visible1\";i:41;s:20:\"attributes:taxonomy1\";i:42;s:16:\"attributes:name2\";i:43;s:17:\"attributes:value2\";i:44;s:19:\"attributes:visible2\";i:45;s:20:\"attributes:taxonomy2\";i:46;s:23:\"meta:_wpcom_is_markdown\";i:47;s:15:\"downloads:name1\";i:48;s:14:\"downloads:url1\";i:49;s:15:\"downloads:name2\";i:50;s:14:\"downloads:url2\";}'),
(24, 1, 'wp_product_import_error_log', 'a:0:{}'),
(26, 1, 'billing_first_name', 'William'),
(27, 1, 'billing_last_name', 'Brooks'),
(28, 1, 'billing_company', 'Personal'),
(29, 1, 'billing_address_1', '32 Plakkaten Street, Bothasig'),
(30, 1, 'billing_address_2', 'Bothasig'),
(31, 1, 'billing_city', 'Cape Town'),
(32, 1, 'billing_state', 'WC'),
(33, 1, 'billing_postcode', '7441'),
(34, 1, 'billing_country', 'ZA'),
(35, 1, 'billing_email', 'william@explicit.co.za'),
(36, 1, 'billing_phone', '+27829283948'),
(37, 1, 'shipping_method', ''),
(39, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(45, 1, 'meta-box-order_product', 'a:3:{s:4:\"side\";s:84:\"submitdiv,postimagediv,woocommerce-product-images,product_catdiv,tagsdiv-product_tag\";s:6:\"normal\";s:55:\"woocommerce-product-data,postcustom,slugdiv,postexcerpt\";s:8:\"advanced\";s:0:\"\";}'),
(46, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(47, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-product_cat\";i:3;s:15:\"add-product_tag\";}'),
(48, 1, 'woocommerce_admin_help_panel_highlight_shown', '\"yes\"'),
(49, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(50, 1, 'wp_user-settings-time', '1665577358'),
(51, 1, '_wcs_subscription_ids_cache', 'a:0:{}'),
(54, 1, 'session_tokens', 'a:1:{s:64:\"c31dca5e2a313c1ea5fb817298633dd5a2a594b861b53506e72adbc002a316e9\";a:4:{s:10:\"expiration\";i:1665655593;s:2:\"ip\";s:13:\"169.255.78.94\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36\";s:5:\"login\";i:1665482793;}}'),
(58, 1, 'closedpostboxes_product', 'a:0:{}'),
(59, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'socurepocdev', '$P$B9Z2.flNlJbvfs4u5.33RcOC1sA5S11', 'socurepocdev', 'william@identity.org', 'https://socurepoc.wpengine.com', '2022-08-12 15:33:21', '', 0, 'socurepocdev');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_admin_notes`
--

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_520_ci,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT '0',
  `layout` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'info'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wc_admin_notes`
--

INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`, `is_read`, `icon`) VALUES
(1, 'wc-admin-complete-store-details', 'info', 'en_US', 'Add your store details to complete store setup', 'Complete your store details with important information for setup such as your store’s base address', '{}', 'unactioned', 'woocommerce-admin', '2022-08-16 13:02:56', NULL, 0, 'plain', '', 1, 0, 'info'),
(2, 'new_in_app_marketplace_2021', 'info', 'en_US', 'Customize your store with extensions', 'Check out our NEW Extensions tab to see our favorite extensions for customizing your store, and discover the most popular extensions in the WooCommerce Marketplace.', '{}', 'unactioned', 'woocommerce.com', '2022-08-16 13:02:56', NULL, 0, 'plain', '', 1, 0, 'info'),
(3, 'wayflyer_bnpl_q4_2021', 'marketing', 'en_US', 'Grow your business with funding through Wayflyer', 'Fast, flexible financing to boost cash flow and help your business grow – one fee, no interest rates, penalties, equity, or personal guarantees. Based on your store’s performance, Wayflyer provides funding and analytical insights to invest in your business.', '{}', 'pending', 'woocommerce.com', '2022-08-16 13:02:56', NULL, 0, 'plain', '', 0, 0, 'info'),
(4, 'wc_shipping_mobile_app_usps_q4_2021', 'marketing', 'en_US', 'Print and manage your shipping labels with WooCommerce Shipping and the WooCommerce Mobile App', 'Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!', '{}', 'pending', 'woocommerce.com', '2022-08-16 13:02:56', NULL, 0, 'plain', '', 0, 0, 'info'),
(5, 'wc_shipping_mobile_app_q4_2021', 'marketing', 'en_US', 'Print and manage your shipping labels with the WooCommerce Mobile App', 'Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href=\"https://woocommerce.com/woocommerce-shipping/\">WooCommerce Shipping</a> – all directly from your mobile device!', '{}', 'pending', 'woocommerce.com', '2022-08-16 13:02:56', NULL, 0, 'plain', '', 0, 0, 'info'),
(6, 'ecomm-need-help-setting-up-your-store', 'info', 'en_US', 'Need help setting up your Store?', 'Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.', '{}', 'pending', 'woocommerce.com', '2022-08-16 13:02:56', NULL, 0, 'plain', '', 0, 0, 'info'),
(7, 'woocommerce-services', 'info', 'en_US', 'WooCommerce Shipping & Tax', 'WooCommerce Shipping &amp; Tax helps get your store \"ready to sell\" as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.', '{}', 'pending', 'woocommerce.com', '2022-08-16 13:02:56', NULL, 0, 'plain', '', 0, 0, 'info'),
(8, 'ecomm-unique-shopping-experience', 'info', 'en_US', 'For a shopping experience as unique as your customers', 'Product Add-Ons allow your customers to personalize products while they\'re shopping on your online store. No more follow-up email requests—customers get what they want, before they\'re done checking out. Learn more about this extension that comes included in your plan.', '{}', 'pending', 'woocommerce.com', '2022-08-16 13:02:56', NULL, 0, 'plain', '', 0, 0, 'info'),
(9, 'wc-admin-getting-started-in-ecommerce', 'info', 'en_US', 'Getting Started in eCommerce - webinar', 'We want to make eCommerce and this process of getting started as easy as possible for you. Watch this webinar to get tips on how to have our store up and running in a breeze.', '{}', 'pending', 'woocommerce.com', '2022-08-16 13:02:56', NULL, 0, 'plain', '', 0, 0, 'info'),
(10, 'your-first-product', 'info', 'en_US', 'Your first product', 'That’s huge! You’re well on your way to building a successful online store — now it’s time to think about how you’ll fulfill your orders.<br /><br />Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.', '{}', 'unactioned', 'woocommerce.com', '2022-08-16 13:10:53', NULL, 0, 'plain', '', 1, 0, 'info'),
(11, 'wc-admin-optimizing-the-checkout-flow', 'info', 'en_US', 'Optimizing the checkout flow', 'It’s crucial to get your store’s checkout as smooth as possible to avoid losing sales. Let’s take a look at how you can optimize the checkout experience for your shoppers.', '{}', 'unactioned', 'woocommerce.com', '2022-08-20 09:01:33', NULL, 0, 'plain', '', 1, 0, 'info'),
(12, 'wc-admin-first-five-things-to-customize', 'info', 'en_US', 'The first 5 things to customize in your store', 'Deciding what to start with first is tricky. To help you properly prioritize, we’ve put together this short list of the first few things you should customize in WooCommerce.', '{}', 'unactioned', 'woocommerce.com', '2022-08-18 18:59:03', NULL, 0, 'plain', '', 1, 0, 'info'),
(13, 'wc-payments-qualitative-feedback', 'info', 'en_US', 'WooCommerce Payments setup - let us know what you think', 'Congrats on enabling WooCommerce Payments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.', '{}', 'pending', 'woocommerce.com', '2022-08-16 13:02:56', NULL, 0, 'plain', '', 0, 0, 'info'),
(14, 'share-your-feedback-on-paypal', 'info', 'en_US', 'Share your feedback on PayPal', 'Share your feedback in this 2 minute survey about how we can make the process of accepting payments more useful for your store.', '{}', 'pending', 'woocommerce.com', '2022-08-16 13:02:56', NULL, 0, 'plain', '', 0, 0, 'info'),
(15, 'google_listings_and_ads_install', 'marketing', 'en_US', 'Drive traffic and sales with Google', 'Reach online shoppers to drive traffic and sales for your store by showcasing products across Google, for free or with ads.', '{}', 'unactioned', 'woocommerce.com', '2022-09-27 05:29:34', NULL, 0, 'plain', '', 1, 0, 'info'),
(16, 'wc-subscriptions-security-update-3-0-15', 'info', 'en_US', 'WooCommerce Subscriptions security update!', 'We recently released an important security update to WooCommerce Subscriptions. To ensure your site’s data is protected, please upgrade <strong>WooCommerce Subscriptions to version 3.0.15</strong> or later.<br /><br />Click the button below to view and update to the latest Subscriptions version, or log in to <a href=\"https://woocommerce.com/my-dashboard\">WooCommerce.com Dashboard</a> and navigate to your <strong>Downloads</strong> page.<br /><br />We recommend always using the latest version of WooCommerce Subscriptions, and other software running on your site, to ensure maximum security.<br /><br />If you have any questions we are here to help — just <a href=\"https://woocommerce.com/my-account/create-a-ticket/\">open a ticket</a>.', '{}', 'pending', 'woocommerce.com', '2022-08-16 13:02:56', NULL, 0, 'plain', '', 0, 0, 'info'),
(17, 'woocommerce-core-update-5-4-0', 'info', 'en_US', 'Update to WooCommerce 5.4.1 now', 'WooCommerce 5.4.1 addresses a checkout issue discovered in WooCommerce 5.4. We recommend upgrading to WooCommerce 5.4.1 as soon as possible.', '{}', 'pending', 'woocommerce.com', '2022-08-16 13:02:56', NULL, 0, 'plain', '', 0, 0, 'info'),
(18, 'wcpay-promo-2020-11', 'marketing', 'en_US', 'wcpay-promo-2020-11', 'wcpay-promo-2020-11', '{}', 'pending', 'woocommerce.com', '2022-08-16 13:02:56', NULL, 0, 'plain', '', 0, 0, 'info'),
(19, 'wcpay-promo-2020-12', 'marketing', 'en_US', 'wcpay-promo-2020-12', 'wcpay-promo-2020-12', '{}', 'pending', 'woocommerce.com', '2022-08-16 13:02:56', NULL, 0, 'plain', '', 0, 0, 'info'),
(20, 'ppxo-pps-upgrade-paypal-payments-1', 'info', 'en_US', 'Get the latest PayPal extension for WooCommerce', 'Heads up! There’s a new PayPal on the block!<br /><br />Now is a great time to upgrade to our latest <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal extension</a> to continue to receive support and updates with PayPal.<br /><br />Get access to a full suite of PayPal payment methods, extensive currency and country coverage, and pay later options with the all-new PayPal extension for WooCommerce.', '{}', 'pending', 'woocommerce.com', '2022-08-16 13:02:56', NULL, 0, 'plain', '', 0, 0, 'info'),
(21, 'ppxo-pps-upgrade-paypal-payments-2', 'info', 'en_US', 'Upgrade your PayPal experience!', 'Get access to a full suite of PayPal payment methods, extensive currency and country coverage, offer subscription and recurring payments, and the new PayPal pay later options.<br /><br />Start using our <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">latest PayPal today</a> to continue to receive support and updates.', '{}', 'pending', 'woocommerce.com', '2022-08-16 13:02:56', NULL, 0, 'plain', '', 0, 0, 'info'),
(22, 'woocommerce-core-sqli-july-2021-need-to-update', 'update', 'en_US', 'Action required: Critical vulnerabilities in WooCommerce', 'In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2022-08-16 13:02:56', NULL, 0, 'plain', '', 0, 0, 'info'),
(23, 'woocommerce-blocks-sqli-july-2021-need-to-update', 'update', 'en_US', 'Action required: Critical vulnerabilities in WooCommerce Blocks', 'In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2022-08-16 13:02:56', NULL, 0, 'plain', '', 0, 0, 'info'),
(24, 'woocommerce-core-sqli-july-2021-store-patched', 'update', 'en_US', 'Solved: Critical vulnerabilities patched in WooCommerce', 'In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br /><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2022-08-16 13:02:56', NULL, 0, 'plain', '', 0, 0, 'info'),
(25, 'woocommerce-blocks-sqli-july-2021-store-patched', 'update', 'en_US', 'Solved: Critical vulnerabilities patched in WooCommerce Blocks', 'In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br /><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2022-08-16 13:02:56', NULL, 0, 'plain', '', 0, 0, 'info'),
(26, 'habit-moment-survey', 'marketing', 'en_US', 'We’re all ears! Share your experience so far with WooCommerce', 'We’d love your input to shape the future of WooCommerce together. Feel free to share any feedback, ideas or suggestions that you have.', '{}', 'pending', 'woocommerce.com', '2022-08-16 13:02:56', NULL, 0, 'plain', '', 0, 0, 'info'),
(27, 'ecomm-wc-navigation-survey', 'info', 'en_US', 'We’d like your feedback on the WooCommerce navigation', 'We’re making improvements to the WooCommerce navigation and would love your feedback. Share your experience in this 2 minute survey.', '{}', 'pending', 'woocommerce.com', '2022-08-16 13:02:56', NULL, 0, 'plain', '', 0, 0, 'info'),
(28, 'woocommerce-core-paypal-march-2022-updated', 'update', 'en_US', 'Security auto-update of WooCommerce', '<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy PayPal Standard security updates for stores running WooCommerce (version 3.5 to 6.3). It’s recommended to disable PayPal Standard, and use <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal Payments</a> to accept PayPal.', '{}', 'pending', 'woocommerce.com', '2022-08-16 13:02:56', NULL, 0, 'plain', '', 0, 0, 'info'),
(29, 'woocommerce-core-paypal-march-2022-updated-nopp', 'update', 'en_US', 'Security auto-update of WooCommerce', '<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy security updates related to PayPal Standard payment gateway for stores running WooCommerce (version 3.5 to 6.3).', '{}', 'pending', 'woocommerce.com', '2022-08-16 13:02:56', NULL, 0, 'plain', '', 0, 0, 'info'),
(30, 'pinterest_03_2022_update', 'marketing', 'en_US', 'Your Pinterest for WooCommerce plugin is out of date!', 'Update to the latest version of Pinterest for WooCommerce to continue using this plugin and keep your store connected with Pinterest. To update, visit <strong>Plugins &gt; Installed Plugins</strong>, and click on “update now” under Pinterest for WooCommerce.', '{}', 'pending', 'woocommerce.com', '2022-08-16 13:02:56', NULL, 0, 'plain', '', 0, 0, 'info'),
(31, 'store_setup_survey_survey_q2_2022', 'survey', 'en_US', 'How is your store setup going?', 'Our goal is to make sure you have all the right tools to start setting up your store in the smoothest way possible.\r\nWe’d love to know if we hit our mark and how we can improve. To collect your thoughts, we made a 2-minute survey.', '{}', 'unactioned', 'woocommerce.com', '2022-08-23 13:03:50', NULL, 0, 'plain', '', 1, 0, 'info'),
(32, 'wc-admin-wisepad3', 'marketing', 'en_US', 'Take your business on the go in Canada with WooCommerce In-Person Payments', 'Quickly create new orders, accept payment in person for orders placed online, and automatically sync your inventory – no matter where your business takes you. With WooCommerce In-Person Payments and the WisePad 3 card reader, you can bring the power of your store anywhere.', '{}', 'pending', 'woocommerce.com', '2022-08-16 13:02:56', NULL, 0, 'plain', '', 0, 0, 'info'),
(33, 'mercado_pago_q3_2022', 'marketing', 'en_US', 'Get paid with Mercado Pago Checkout', 'Give your customers a checkout they can trust with Latin America\'s leading payment processor. Securely accept debit and credit cards, cash, bank transfers, and installment payments – backed by exclusive fraud prevention tools.', '{}', 'pending', 'woocommerce.com', '2022-08-16 13:02:56', NULL, 0, 'plain', '', 0, 0, 'info'),
(34, 'klarna_q3_2022', 'marketing', 'en_US', 'Meet Klarna – your ultimate growth partner', 'Increase conversions by offering secure, flexible payment solutions – including buy now, pay later – all through a one-click checkout experience. Plus, you’ll tap into a whole new market of the world’s most engaged shoppers.', '{}', 'unactioned', 'woocommerce.com', '2022-08-16 13:02:56', NULL, 0, 'plain', '', 1, 0, 'info'),
(35, 'woocommerce-payments-august-2022-need-to-update', 'update', 'en_US', 'Action required: Please update WooCommerce Payments', 'An updated secure version of WooCommerce Payments is available – please ensure that you’re using the latest patch version. For more information on what action you need to take, please review the article below.', '{}', 'pending', 'woocommerce.com', '2022-08-16 13:02:56', NULL, 0, 'plain', '', 0, 0, 'info'),
(36, 'woocommerce-payments-august-2022-store-patched', 'update', 'en_US', 'WooCommerce Payments has been automatically updated', 'You’re now running the latest secure version of WooCommerce Payments. We’ve worked with the WordPress Plugins team to deploy a security update to stores running WooCommerce Payments (version 3.9 to 4.5). For further information, please review the article below.', '{}', 'actioned', 'woocommerce.com', '2022-08-16 13:10:54', NULL, 0, 'plain', '', 0, 1, 'info'),
(37, 'wc-refund-returns-page', 'info', 'en_US', 'Setup a Refund and Returns Policy page to boost your store\'s credibility.', 'We have created a sample draft Refund and Returns Policy page for you. Please have a look and update it to fit your store.', '{}', 'unactioned', 'woocommerce-core', '2022-08-16 13:02:58', NULL, 0, 'plain', '', 1, 0, 'info'),
(38, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', '{}', 'unactioned', 'woocommerce-admin', '2022-08-16 13:02:59', NULL, 0, 'plain', '', 1, 0, 'info'),
(39, 'surface_cart_checkout', 'info', 'en_US', 'Introducing the Cart and Checkout blocks!', 'Increase your store\'s revenue with the conversion optimized Cart &amp; Checkout WooCommerce blocks available in the WooCommerce Blocks extension.', '{}', 'unactioned', 'woo-gutenberg-products-block', '2022-08-16 13:02:59', NULL, 0, 'plain', '', 1, 0, 'info'),
(40, 'storefront-customize', 'info', 'en_US', 'Design your store with Storefront 🎨', 'Visit the Storefront settings page to start setup and customization of your shop.', '{}', 'unactioned', 'storefront', '2022-08-16 13:05:24', NULL, 0, 'plain', '', 1, 0, 'info'),
(41, 'wc-payments-notes-set-up-refund-policy', 'info', 'en_US', 'Set up refund policy', 'Protect your merchant account from fraudulent disputes by defining the policy and making it accessible to customers.', '{}', 'unactioned', 'woocommerce-payments', '2022-08-16 13:09:44', NULL, 0, 'plain', '', 1, 0, 'info'),
(43, 'wc-admin-mobile-app', 'info', 'en_US', 'Install Woo mobile app', 'Install the WooCommerce mobile app to manage orders, receive sales notifications, and view key metrics — wherever you are.', '{}', 'unactioned', 'woocommerce-admin', '2022-08-18 18:59:02', NULL, 0, 'plain', '', 1, 0, 'info'),
(44, 'wc-admin-launch-checklist', 'info', 'en_US', 'Ready to launch your store?', 'To make sure you never get that sinking \"what did I forget\" feeling, we\'ve put together the essential pre-launch checklist.', '{}', 'unactioned', 'woocommerce-admin', '2022-08-18 18:59:02', NULL, 0, 'plain', '', 1, 0, 'info'),
(45, 'wc-admin-choosing-a-theme', 'marketing', 'en_US', 'Choosing a theme?', 'Check out the themes that are compatible with WooCommerce and choose one aligned with your brand and business needs.', '{}', 'unactioned', 'woocommerce-admin', '2022-08-18 18:59:03', NULL, 0, 'plain', '', 1, 0, 'info'),
(46, 'wc-admin-insight-first-product-and-payment', 'survey', 'en_US', 'Insight', 'More than 80% of new merchants add the first product and have at least one payment method set up during the first week.<br><br>Do you find this type of insight useful?', '{}', 'unactioned', 'woocommerce-admin', '2022-08-18 18:59:03', NULL, 0, 'plain', '', 1, 0, 'info'),
(47, 'wc-admin-customizing-product-catalog', 'info', 'en_US', 'How to customize your product catalog', 'You want your product catalog and images to look great and align with your brand. This guide will give you all the tips you need to get your products looking great in your store.', '{}', 'unactioned', 'woocommerce-admin', '2022-08-18 18:59:03', NULL, 0, 'plain', '', 1, 0, 'info'),
(48, 'wc-admin-first-downloadable-product', 'info', 'en_US', 'Learn more about digital/downloadable products', 'Congrats on adding your first digital product! You can learn more about how to handle digital or downloadable products in our documentation.', '{}', 'unactioned', 'woocommerce-admin', '2022-08-18 18:59:03', NULL, 0, 'plain', '', 1, 0, 'info'),
(49, 'mobile_app_order_management_q3_2022', 'marketing', 'en_US', 'Take order management on the go', 'The WooCommerce Mobile App continues to get better with added order management functionality! Add or remove products, edit fees, or change the shipping options in any existing order – all from within the app.', '{}', 'unactioned', 'woocommerce.com', '2022-08-18 18:59:04', NULL, 0, 'plain', '', 1, 0, 'info'),
(50, 'wc-admin-usage-tracking-opt-in', 'info', 'en_US', 'Help WooCommerce improve with usage tracking', 'Gathering usage data allows us to improve WooCommerce. Your store will be considered as we evaluate new features, judge the quality of an update, or determine if an improvement makes sense. You can always visit the <a href=\"https://socurepoc.wpengine.com/wp-admin/admin.php?page=wc-settings&#038;tab=advanced&#038;section=woocommerce_com\" target=\"_blank\">Settings</a> and choose to stop sharing data. <a href=\"https://woocommerce.com/usage-tracking?utm_medium=product\" target=\"_blank\">Read more</a> about what data we collect.', '{}', 'unactioned', 'woocommerce-admin', '2022-08-23 13:03:49', NULL, 0, 'plain', '', 1, 0, 'info'),
(51, 'wc-admin-woocommerce-payments', 'marketing', 'en_US', 'Try the new way to get paid', 'Securely accept credit and debit cards on your site. Manage transactions without leaving your WordPress dashboard. Only with <strong>WooCommerce Payments</strong>.<br><br>By clicking \"Get started\", you agree to our <a href=\"https://wordpress.com/tos/\" target=\"_blank\">Terms of Service</a>', '{}', 'actioned', 'woocommerce-admin', '2022-08-23 13:03:50', NULL, 0, 'plain', '', 0, 0, 'info'),
(52, 'wc-admin-insight-first-sale', 'survey', 'en_US', 'Did you know?', 'A WooCommerce powered store needs on average 31 days to get the first sale. You\'re on the right track! Do you find this type of insight useful?', '{}', 'unactioned', 'woocommerce-admin', '2022-08-23 13:03:50', NULL, 0, 'plain', '', 1, 0, 'info'),
(53, 'product_creation_usability_test_6_months', 'survey', 'en_US', 'Try the new product edit form prototype', 'Take an early look at the future of editing products in WooCommerce. Share your thoughts (~5 minutes) and help shape the experience for yourself and other merchants.', '{}', 'pending', 'woocommerce.com', '2022-08-30 08:10:33', NULL, 0, 'plain', '', 0, 0, 'info'),
(54, 'product_creation_usability_test_3_months', 'survey', 'en_US', 'Have a say in the future of WooCommerce', 'Take an early look at the future of editing products in WooCommerce. Share your thoughts (~5 minutes) and help shape the experience for yourself and other merchants.', '{}', 'unactioned', 'woocommerce.com', '2022-08-30 08:10:33', NULL, 0, 'plain', '', 1, 0, 'info'),
(55, 'product_creation_usability_test_12_months', 'survey', 'en_US', 'Try the new product edit form prototype', 'Take an early look at the future of editing products in WooCommerce. Share your thoughts (~5 minutes) and help shape the experience for yourself and other merchants.', '{}', 'pending', 'woocommerce.com', '2022-09-08 01:38:28', NULL, 0, 'plain', '', 0, 0, 'info'),
(56, 'custom_deposit_schedules_inbox', 'marketing', 'en_US', 'Customize your deposit schedule', 'Receive your funds according to your own business needs with custom deposit schedules from WooCommerce Payments. You’ll have the flexibility to deposit funds into your bank account daily, weekly, monthly, or even on-demand – you’ve done the work, now get paid on your terms.', '{}', 'unactioned', 'woocommerce.com', '2022-09-15 04:05:20', NULL, 0, 'plain', '', 1, 0, 'info'),
(57, 'wc-admin-orders-milestone', 'info', 'en_US', 'Congratulations on processing 10 orders!', 'You\'ve hit the 10 orders milestone! Look at you go. Browse some WooCommerce success stories for inspiration.', '{}', 'unactioned', 'woocommerce-admin', '2022-09-20 16:39:06', NULL, 0, 'plain', '', 1, 0, 'info'),
(58, 'googlelistings_signals2022_hasGLA', 'marketing', 'en_US', 'Show off your products with Ads on Google', 'You’re ready to grow with ads. Google optimizes for performance across your products; you only pay for results. If you’re new to Google, you can earn up to $500 in ad credits (T&amp;Cs apply). <a href=\"https://woocommerce.com/my-account/create-a-ticket/\">Contact support</a> if you need guidance with Google Listings &amp; Ads.', '{}', 'pending', 'woocommerce.com', '2022-09-26 08:24:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(59, 'googlelistings_signals2022_noGLA', 'marketing', 'en_US', 'Show off your products with Ads on Google', 'You’re ready to grow with ads. Google optimizes for performance across your products; you only pay for results. If you’re new to Google, you can earn up to $500 in ad credits (T&amp;Cs apply). <a href=\"https://woocommerce.com/my-account/create-a-ticket/\">Contact support</a> if you need guidance with Google Listings &amp; Ads.', '{}', 'pending', 'woocommerce.com', '2022-09-26 08:24:11', NULL, 0, 'plain', '', 0, 0, 'info'),
(60, 'wc-admin-coupon-page-moved', 'update', 'en_US', 'Coupon management has moved!', 'Coupons can now be managed from Marketing &gt; Coupons. Click the button below to remove the legacy WooCommerce &gt; Coupons menu item.', '{}', 'unactioned', 'woocommerce-admin', '2022-09-30 13:52:49', NULL, 0, 'plain', '', 0, 0, 'info'),
(61, 'wc-admin-new-sales-record', 'info', 'en_US', 'New sales record!', 'Woohoo, October 3rd was your record day for sales! Net sales was $8.00 beating the previous record of $0.10 set on September 20th.', '{\"old_record_date\":\"2022-09-20\",\"old_record_amt\":0.1,\"new_record_date\":\"2022-10-03\",\"new_record_amt\":8}', 'unactioned', 'woocommerce-admin', '2022-10-04 22:42:34', NULL, 0, 'plain', '', 0, 0, 'info'),
(62, 'pre-black-friday-sale-2022-announcement', 'marketing', 'en_US', 'Surprise! We’re offering 40% off everything at WooCommerce.com', 'Just in time to get your store Black Friday ready. Sale ends 7 October, 2pm UTC.', '{}', 'unactioned', 'woocommerce.com', '2022-10-04 22:42:35', NULL, 0, 'plain', '', 0, 0, 'info');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_admin_note_actions`
--

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonce_action` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `nonce_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wc_admin_note_actions`
--

INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `actioned_text`, `nonce_action`, `nonce_name`) VALUES
(1, 1, 'add-store-details', 'Add store details', 'https://socurepoc.wpengine.com/wp-admin/admin.php?page=wc-admin&path=/setup-wizard', 'actioned', '', NULL, NULL),
(43, 37, 'notify-refund-returns-page', 'Edit page', 'https://socurepoc.wpengine.com/wp-admin/post.php?post=10&action=edit', 'actioned', '', NULL, NULL),
(85, 38, 'connect', 'Connect', '?page=wc-addons&section=helper', 'unactioned', '', NULL, NULL),
(86, 39, 'learn_more', 'Learn More', 'https://woocommerce.com/checkout-blocks/', 'actioned', '', NULL, NULL),
(169, 40, 'customize-store-with-storefront', 'Let\'s go!', 'https://socurepoc.wpengine.com/wp-admin/themes.php?page=storefront-welcome', 'actioned', '', NULL, NULL),
(170, 41, 'wc-payments-notes-set-up-refund-policy', 'Read more', 'https://woocommerce.com/document/woocommerce-refunds#refund-policy-howto', 'unactioned', '', NULL, NULL),
(213, 43, 'learn-more', 'Learn more', 'https://woocommerce.com/mobile/?utm_medium=product', 'actioned', '', NULL, NULL),
(214, 44, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/pre-launch-checklist-the-essentials/?utm_source=inbox&utm_medium=product', 'actioned', '', NULL, NULL),
(215, 45, 'visit-the-theme-marketplace', 'Visit the theme marketplace', 'https://woocommerce.com/product-category/themes/?utm_source=inbox&utm_medium=product', 'actioned', '', NULL, NULL),
(216, 46, 'affirm-insight-first-product-and-payment', 'Yes', '', 'actioned', 'Thanks for your feedback', NULL, NULL),
(217, 46, 'affirm-insight-first-product-and-payment', 'No', '', 'actioned', 'Thanks for your feedback', NULL, NULL),
(218, 47, 'day-after-first-product', 'Learn more', 'https://woocommerce.com/document/woocommerce-customizer/?utm_source=inbox&utm_medium=product', 'actioned', '', NULL, NULL),
(219, 48, 'first-downloadable-product-handling', 'Learn more', 'https://woocommerce.com/document/digital-downloadable-product-handling/?utm_source=inbox&utm_medium=product', 'actioned', '', NULL, NULL),
(298, 34, 'klarna_q3_2022', 'Grow with Klarna', 'https://woocommerce.com/products/klarna-payments?utm_source=inbox_note&utm_medium=product&utm_campaign=klarna_q3_2022', 'unactioned', '', NULL, NULL),
(304, 50, 'tracking-opt-in', 'Activate usage tracking', '', 'actioned', '', NULL, NULL),
(307, 52, 'affirm-insight-first-sale', 'Yes', '', 'actioned', 'Thanks for your feedback', NULL, NULL),
(308, 52, 'deny-insight-first-sale', 'No', '', 'actioned', 'Thanks for your feedback', NULL, NULL),
(469, 33, 'mercado_pago_q3_2022', 'Free download', 'https://woocommerce.com/products/mercado-pago-checkout/?utm_source=inbox_note&utm_medium=product&utm_campaign=mercado_pago_q3_2022', 'unactioned', '', NULL, NULL),
(475, 49, 'mobile_app_order_management_q3_2022', 'Get the WooCommerce Mobile App', 'https://woocommerce.com/mobile/?utm_source=inbox_note&utm_medium=product&utm_campaign=mobile_app_order_management_q3_2022', 'actioned', '', NULL, NULL),
(770, 53, 'product_creation_usability_test_6_months_take_a_look', 'Try it now', 'https://t.maze.co/103446424', 'unactioned', '', NULL, NULL),
(771, 55, 'product_creation_usability_test_12_months_take_a_look', 'Try it now', 'https://t.maze.co/103446424', 'unactioned', '', NULL, NULL),
(772, 54, 'product_creation_usability_test_3_months_take_a_look', 'Try it now', 'https://t.maze.co/103446424', 'unactioned', '', NULL, NULL),
(852, 56, 'cta_customize_your_deposits', 'Customize your deposits', 'https://woocommerce.com/payments/?utm_source=inbox_note&utm_medium=product&utm_campaign=cta_customize_your_deposits', 'actioned', '', NULL, NULL),
(853, 56, 'dismiss_customize_your_deposits', 'Dismiss', '', 'actioned', '', NULL, NULL),
(934, 57, 'browse', 'Browse', 'https://woocommerce.com/success-stories/?utm_source=inbox&utm_medium=product', 'actioned', '', NULL, NULL),
(1105, 51, 'learn-more', 'Learn more', 'https://woocommerce.com/payments/?utm_medium=product', 'unactioned', '', NULL, NULL),
(1106, 51, 'get-started', 'Get started', 'https://zerodayshopping.identity.com/wp-admin/admin.php?page=wc-admin&action=setup-woocommerce-payments', 'actioned', '', 'setup-woocommerce-payments', ''),
(1189, 60, 'remove-legacy-coupon-menu', 'Remove legacy coupon menu', 'https://zerodayshopping.identity.com/wp-admin/admin.php?page=wc-admin&action=remove-coupon-menu', 'actioned', '', NULL, NULL),
(1231, 61, 'view-report', 'View report', '?page=wc-admin&path=/analytics/revenue&period=custom&compare=previous_year&after=2022-10-03&before=2022-10-03', 'actioned', '', NULL, NULL),
(1357, 62, 'pre-black-friday-sale-2022-announcement', 'Shop the sale', 'https://woocommerce.com/marketplace-sale/?utm_source=inbox_note&utm_medium=product&utm_campaign=pre-black-friday-sale-2022-announcement', 'actioned', '', NULL, NULL),
(1440, 2, 'browse_extensions', 'Browse extensions', 'https://zerodayshopping.identity.com/wp-admin/admin.php?page=wc-addons', 'unactioned', '', NULL, NULL),
(1441, 3, 'wayflyer_bnpl_q4_2021', 'Level up with funding', 'https://woocommerce.com/products/wayflyer/?utm_source=inbox_note&utm_medium=product&utm_campaign=wayflyer_bnpl_q4_2021', 'actioned', '', NULL, NULL),
(1442, 4, 'wc_shipping_mobile_app_usps_q4_2021', 'Get WooCommerce Shipping', 'https://woocommerce.com/woocommerce-shipping/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc_shipping_mobile_app_usps_q4_2021', 'actioned', '', NULL, NULL),
(1443, 5, 'wc_shipping_mobile_app_q4_2021', 'Get the WooCommerce Mobile App', 'https://woocommerce.com/mobile/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc_shipping_mobile_app_q4_2021', 'actioned', '', NULL, NULL),
(1444, 6, 'set-up-concierge', 'Schedule free session', 'https://wordpress.com/me/concierge', 'actioned', '', NULL, NULL),
(1445, 7, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox', 'unactioned', '', NULL, NULL),
(1446, 8, 'learn-more-ecomm-unique-shopping-experience', 'Learn more', 'https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox', 'actioned', '', NULL, NULL),
(1447, 9, 'watch-the-webinar', 'Watch the webinar', 'https://youtu.be/V_2XtCOyZ7o', 'actioned', '', NULL, NULL),
(1448, 10, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'actioned', '', NULL, NULL),
(1449, 11, 'optimizing-the-checkout-flow', 'Learn more', 'https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox_note&utm_medium=product&utm_campaign=optimizing-the-checkout-flow', 'actioned', '', NULL, NULL),
(1450, 12, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/first-things-customize-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(1451, 13, 'qualitative-feedback-from-new-users', 'Share feedback', 'https://automattic.survey.fm/wc-pay-new', 'actioned', '', NULL, NULL),
(1452, 14, 'share-feedback', 'Share feedback', 'http://automattic.survey.fm/paypal-feedback', 'unactioned', '', NULL, NULL),
(1453, 15, 'get-started', 'Get started', 'https://woocommerce.com/products/google-listings-and-ads?utm_source=inbox_note&utm_medium=product&utm_campaign=get-started', 'actioned', '', NULL, NULL),
(1454, 16, 'update-wc-subscriptions-3-0-15', 'View latest version', 'https://zerodayshopping.identity.com/wp-admin/&page=wc-addons&section=helper', 'actioned', '', NULL, NULL),
(1455, 17, 'update-wc-core-5-4-0', 'How to update WooCommerce', 'https://docs.woocommerce.com/document/how-to-update-woocommerce/', 'actioned', '', NULL, NULL),
(1456, 20, 'ppxo-pps-install-paypal-payments-1', 'View upgrade guide', 'https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/', 'actioned', '', NULL, NULL),
(1457, 21, 'ppxo-pps-install-paypal-payments-2', 'View upgrade guide', 'https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/', 'actioned', '', NULL, NULL),
(1458, 22, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(1459, 22, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(1460, 23, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(1461, 23, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(1462, 24, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(1463, 24, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(1464, 25, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(1465, 25, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(1466, 26, 'share-feedback', 'Share feedback', 'https://automattic.survey.fm/store-management', 'unactioned', '', NULL, NULL),
(1467, 27, 'share-navigation-survey-feedback', 'Share feedback', 'https://automattic.survey.fm/feedback-on-woocommerce-navigation', 'actioned', '', NULL, NULL),
(1468, 28, 'learn-more', 'Learn more', 'https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/', 'unactioned', '', NULL, NULL),
(1469, 28, 'woocommerce-core-paypal-march-2022-dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(1470, 29, 'learn-more', 'Learn more', 'https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/', 'unactioned', '', NULL, NULL),
(1471, 29, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(1472, 30, 'pinterest_03_2022_update', 'Update Instructions', 'https://woocommerce.com/document/pinterest-for-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=pinterest_03_2022_update#section-3', 'actioned', '', NULL, NULL),
(1473, 31, 'store_setup_survey_survey_q2_2022_share_your_thoughts', 'Tell us how it’s going', 'https://automattic.survey.fm/store-setup-survey-2022', 'actioned', '', NULL, NULL),
(1474, 32, 'wc-admin-wisepad3', 'Grow my business offline', 'https://woocommerce.com/products/wisepad3-card-reader/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wisepad3', 'actioned', '', NULL, NULL),
(1475, 35, 'learn-more', 'Find out more', 'https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/', 'unactioned', '', NULL, NULL),
(1476, 35, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(1477, 36, 'learn-more', 'Find out more', 'https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/', 'unactioned', '', NULL, NULL),
(1478, 36, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(1479, 58, 'googlelistings_signals2022_hasGLA_click', 'Connect Google Listings & Ads', 'https://zerodayshopping.identity.com/wp-admin/admin.php?page=wc-admin&path=marketing', 'unactioned', '', NULL, NULL),
(1480, 59, 'googlelistings_signals2022_noGLA', 'Connect Google Listings & Ads', 'https://woocommerce.com/products/google-listings-and-ads/?utm_medium=product&utm_source=inbox_note&utm_campaign=googlelistings_signals2022_noGLA', 'unactioned', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_category_lookup`
--

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wc_category_lookup`
--

INSERT INTO `wp_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(15, 15),
(16, 16),
(16, 17),
(16, 18),
(16, 19),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_customer_lookup`
--

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wc_customer_lookup`
--

INSERT INTO `wp_wc_customer_lookup` (`customer_id`, `user_id`, `username`, `first_name`, `last_name`, `email`, `date_last_active`, `date_registered`, `country`, `postcode`, `city`, `state`) VALUES
(1, 1, 'socurepocdev', 'William', 'Brooks', 'william@explicit.co.za', '2022-08-16 13:12:25', '2022-08-12 15:33:21', 'ZA', '7441', 'Cape Town', 'WC'),
(2, NULL, '', 'William', 'Brooks', 'william@explicit.co.za', '2022-09-20 15:08:26', NULL, 'ZA', '7441', 'Cape Town', 'WC'),
(3, NULL, '', 'William', 'Brooks', 'a@b.com', '2022-09-26 08:24:46', NULL, 'US', '12345', 'n.a', 'CA'),
(4, NULL, '', 'Test', 'Test123', '123@456.com', '2022-09-29 14:12:45', NULL, 'US', '97229', 'Portland', 'OR'),
(5, NULL, '', 'luke', 'song', 'luke.song@identity.org', '2022-09-30 16:31:49', NULL, 'US', '95112', 'San jose', 'CA'),
(6, NULL, '', 'phillip', 'shoemaker', 'phillip@identity.com', '2022-10-03 04:36:51', NULL, 'US', '92130', 'san diego', 'CA'),
(7, NULL, '', 'XYZ', 'XYZ', 'xya@gamil.com', '2022-10-06 15:19:35', NULL, 'US', '97229', 'Cape Town', 'CA'),
(8, NULL, '', 'Satoshi', 'Nakamoto', 'satoshi@bitcoin.org', '2022-10-12 12:32:18', NULL, 'US', '92614', 'Irvine', 'CA');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_coupon_lookup`
--

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_product_lookup`
--

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT '0',
  `product_gross_revenue` double NOT NULL DEFAULT '0',
  `coupon_amount` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `shipping_amount` double NOT NULL DEFAULT '0',
  `shipping_tax_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wc_order_product_lookup`
--

INSERT INTO `wp_wc_order_product_lookup` (`order_item_id`, `order_id`, `product_id`, `variation_id`, `customer_id`, `date_created`, `product_qty`, `product_net_revenue`, `product_gross_revenue`, `coupon_amount`, `tax_amount`, `shipping_amount`, `shipping_tax_amount`) VALUES
(1, 59, 24, 0, 1, '2022-08-16 13:12:25', 1, 0.01, 0.01, 0, 0, 0, 0),
(2, 60, 24, 0, 2, '2022-09-20 10:06:43', 1, 0.01, 0.01, 0, 0, 0, 0),
(3, 61, 24, 0, 2, '2022-09-20 10:15:04', 1, 0.01, 0.01, 0, 0, 0, 0),
(4, 62, 24, 0, 2, '2022-09-20 10:34:17', 1, 0.01, 0.01, 0, 0, 0, 0),
(5, 63, 24, 0, 2, '2022-09-20 11:08:19', 1, 0.01, 0.01, 0, 0, 0, 0),
(6, 64, 24, 0, 2, '2022-09-20 11:42:24', 1, 0.01, 0.01, 0, 0, 0, 0),
(7, 65, 24, 0, 2, '2022-09-20 12:36:35', 1, 0.01, 0.01, 0, 0, 0, 0),
(8, 66, 24, 0, 2, '2022-09-20 13:00:07', 1, 0.01, 0.01, 0, 0, 0, 0),
(9, 67, 24, 0, 2, '2022-09-20 13:00:44', 1, 0.01, 0.01, 0, 0, 0, 0),
(10, 68, 24, 0, 2, '2022-09-20 15:07:03', 1, 0.01, 0.01, 0, 0, 0, 0),
(11, 69, 24, 0, 2, '2022-09-20 15:08:26', 1, 0.01, 0.01, 0, 0, 0, 0),
(12, 71, 16, 0, 3, '2022-09-26 08:24:46', 1, 0.01, 0.01, 0, 0, 0, 0),
(14, 72, 16, 0, 4, '2022-09-29 13:48:12', 1, 0.01, 0.01, 0, 0, 0, 0),
(16, 73, 16, 0, 4, '2022-09-29 14:12:45', 1, 0.01, 0.01, 0, 0, 0, 0),
(18, 97, 18, 0, 5, '2022-09-30 16:31:49', 1, 0.01, 0.01, 0, 0, 0, 0),
(20, 98, 33, 0, 6, '2022-10-03 04:36:51', 1, 8, 8, 0, 0, 0, 0),
(22, 99, 33, 0, 7, '2022-10-06 15:19:35', 1, 8, 8, 0, 0, 0, 0),
(24, 106, 33, 0, 8, '2022-10-11 11:29:13', 1, 8, 8, 0, 0, 0, 0),
(26, 110, 18, 0, 8, '2022-10-12 12:29:53', 1, 10, 10, 0, 0, 0, 0),
(28, 111, 33, 0, 8, '2022-10-12 12:32:18', 2, 18, 18, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_stats`
--

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT '0',
  `total_sales` double NOT NULL DEFAULT '0',
  `tax_total` double NOT NULL DEFAULT '0',
  `shipping_total` double NOT NULL DEFAULT '0',
  `net_total` double NOT NULL DEFAULT '0',
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wc_order_stats`
--

INSERT INTO `wp_wc_order_stats` (`order_id`, `parent_id`, `date_created`, `date_created_gmt`, `num_items_sold`, `total_sales`, `tax_total`, `shipping_total`, `net_total`, `returning_customer`, `status`, `customer_id`) VALUES
(59, 0, '2022-08-16 13:12:25', '2022-08-16 13:12:25', 1, 0.01, 0, 0, 0.01, 0, 'wc-cancelled', 1),
(60, 0, '2022-09-20 10:06:43', '2022-09-20 10:06:43', 1, 0.01, 0, 0, 0.01, 1, 'wc-cancelled', 2),
(61, 0, '2022-09-20 10:15:04', '2022-09-20 10:15:04', 1, 0.01, 0, 0, 0.01, 1, 'wc-cancelled', 2),
(62, 0, '2022-09-20 10:34:17', '2022-09-20 10:34:17', 1, 0.01, 0, 0, 0.01, 0, 'wc-completed', 2),
(63, 0, '2022-09-20 11:08:19', '2022-09-20 11:08:19', 1, 0.01, 0, 0, 0.01, 1, 'wc-completed', 2),
(64, 0, '2022-09-20 11:42:24', '2022-09-20 11:42:24', 1, 0.01, 0, 0, 0.01, 1, 'wc-completed', 2),
(65, 0, '2022-09-20 12:36:35', '2022-09-20 12:36:35', 1, 0.01, 0, 0, 0.01, 1, 'wc-completed', 2),
(66, 0, '2022-09-20 13:00:07', '2022-09-20 13:00:07', 1, 0.01, 0, 0, 0.01, 1, 'wc-cancelled', 2),
(67, 0, '2022-09-20 13:00:44', '2022-09-20 13:00:44', 1, 0.01, 0, 0, 0.01, 1, 'wc-cancelled', 2),
(68, 0, '2022-09-20 15:07:03', '2022-09-20 15:07:03', 1, 0.01, 0, 0, 0.01, 1, 'wc-cancelled', 2),
(69, 0, '2022-09-20 15:08:26', '2022-09-20 15:08:26', 1, 0.01, 0, 0, 0.01, 1, 'wc-completed', 2),
(71, 0, '2022-09-26 08:24:46', '2022-09-26 08:24:46', 1, 0.01, 0, 0, 0.01, 0, 'wc-processing', 3),
(72, 0, '2022-09-29 13:48:12', '2022-09-29 13:48:12', 1, 0.01, 0, 0, 0.01, 0, 'wc-cancelled', 4),
(73, 0, '2022-09-29 14:12:45', '2022-09-29 14:12:45', 1, 0.01, 0, 0, 0.01, 0, 'wc-cancelled', 4),
(97, 0, '2022-09-30 16:31:49', '2022-09-30 16:31:49', 1, 0.01, 0, 0, 0.01, 0, 'wc-cancelled', 5),
(98, 0, '2022-10-03 04:36:51', '2022-10-03 04:36:51', 1, 8, 0, 0, 8, 0, 'wc-cancelled', 6),
(99, 0, '2022-10-06 15:19:35', '2022-10-06 15:19:35', 1, 8, 0, 0, 8, 0, 'wc-pending', 7),
(106, 0, '2022-10-11 11:29:13', '2022-10-11 11:29:13', 1, 8, 0, 0, 8, 0, 'wc-pending', 8),
(110, 0, '2022-10-12 12:29:53', '2022-10-12 12:29:53', 1, 10, 0, 0, 10, 0, 'wc-pending', 8),
(111, 0, '2022-10-12 12:32:18', '2022-10-12 12:32:18', 2, 18, 0, 0, 18, 0, 'wc-pending', 8);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_tax_lookup`
--

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT '0',
  `order_tax` double NOT NULL DEFAULT '0',
  `total_tax` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_product_attributes_lookup`
--

CREATE TABLE `wp_wc_product_attributes_lookup` (
  `product_id` bigint(20) NOT NULL,
  `product_or_parent_id` bigint(20) NOT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `term_id` bigint(20) NOT NULL,
  `is_variation_attribute` tinyint(1) NOT NULL,
  `in_stock` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wc_product_attributes_lookup`
--

INSERT INTO `wp_wc_product_attributes_lookup` (`product_id`, `product_or_parent_id`, `taxonomy`, `term_id`, `is_variation_attribute`, `in_stock`) VALUES
(12, 12, 'pa_color', 24, 0, 1),
(12, 12, 'pa_size', 26, 0, 1),
(15, 15, 'pa_color', 28, 0, 1),
(18, 18, 'pa_color', 29, 0, 1),
(20, 20, 'pa_color', 28, 0, 1),
(22, 22, 'pa_color', 23, 0, 1),
(23, 23, 'pa_color', 22, 0, 1),
(33, 33, 'pa_color', 22, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_product_download_directories`
--

CREATE TABLE `wp_wc_product_download_directories` (
  `url_id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(256) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wc_product_download_directories`
--

INSERT INTO `wp_wc_product_download_directories` (`url_id`, `url`, `enabled`) VALUES
(1, 'file:///nas/content/live/socurepocdev/wp-content/uploads/woocommerce_uploads/', 1),
(2, 'https://socurepoc.wpengine.com/wp-content/uploads/woocommerce_uploads/', 1),
(3, 'https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0',
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(12, 'identity-vneck-tee', 0, 0, '19.0000', '19.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(13, 'woo-hoodie', 0, 0, '42.0000', '45.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(14, 'woo-hoodie-with-logo', 0, 0, '0.0100', '0.0100', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(15, 'identity-tshirt', 0, 0, '19.0000', '19.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(16, 'woo-beanie', 0, 0, '0.0100', '0.0100', 0, NULL, 'instock', 0, '0.00', 1, 'taxable', ''),
(17, 'woo-belt', 0, 0, '0.0100', '0.0100', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(18, 'identity-cap', 0, 0, '10.0000', '10.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(19, 'identity-sunglasses', 0, 0, '8.0000', '8.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(20, 'identity-hoodie-with-pocket', 0, 0, '40.0000', '40.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(21, 'woo-hoodie-with-zipper', 0, 0, '0.0100', '0.0100', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(22, 'identity-long-sleeve-tee', 0, 0, '14.0000', '14.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(23, 'identity-polo', 0, 0, '20.0000', '20.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(24, 'woo-album', 1, 1, '0.0100', '0.0100', 0, NULL, 'instock', 0, '0.00', 5, 'taxable', ''),
(25, 'woo-single', 1, 1, '0.0100', '0.0100', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(29, 'woo-hoodie-red', 0, 0, '42.0000', '42.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(30, 'woo-hoodie-green', 0, 0, '45.0000', '45.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(31, 'woo-hoodie-blue', 0, 0, '45.0000', '45.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(32, 'Woo-tshirt-logo', 0, 0, '0.0100', '0.0100', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(33, 'identity-beanie', 0, 0, '9.0000', '9.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(34, 'logo-collection', 0, 0, '18.0000', '45.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(35, 'wp-pennant', 0, 0, '0.0100', '0.0100', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(36, 'woo-hoodie-blue-logo', 0, 0, '45.0000', '45.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_rate_limits`
--

CREATE TABLE `wp_wc_rate_limits` (
  `rate_limit_id` bigint(20) UNSIGNED NOT NULL,
  `rate_limit_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `rate_limit_expiry` bigint(20) UNSIGNED NOT NULL,
  `rate_limit_remaining` smallint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_reserved_stock`
--

CREATE TABLE `wp_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT '0',
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'color', 'Color', 'select', 'menu_order', 0),
(2, 'size', 'Size', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_downloadable_product_permissions`
--

INSERT INTO `wp_woocommerce_downloadable_product_permissions` (`permission_id`, `download_id`, `product_id`, `order_id`, `order_key`, `user_email`, `user_id`, `downloads_remaining`, `access_granted`, `access_expires`, `download_count`) VALUES
(1, '60ee0613-3a8f-4a77-af52-f7c534d42a1e', 24, 62, 'wc_order_yN38GADWJ4bGh', 'william@explicit.co.za', 0, '1', '2022-09-20 00:00:00', '2022-09-21 00:00:00', 0),
(2, '284d197e-c691-4ce8-9b22-cceb64c1ef44', 24, 62, 'wc_order_yN38GADWJ4bGh', 'william@explicit.co.za', 0, '1', '2022-09-20 00:00:00', '2022-09-21 00:00:00', 0),
(3, '60ee0613-3a8f-4a77-af52-f7c534d42a1e', 24, 63, 'wc_order_BAqh6IdnPc2aL', 'william@explicit.co.za', 0, '1', '2022-09-20 00:00:00', '2022-09-21 00:00:00', 0),
(4, '284d197e-c691-4ce8-9b22-cceb64c1ef44', 24, 63, 'wc_order_BAqh6IdnPc2aL', 'william@explicit.co.za', 0, '1', '2022-09-20 00:00:00', '2022-09-21 00:00:00', 0),
(5, '60ee0613-3a8f-4a77-af52-f7c534d42a1e', 24, 64, 'wc_order_8i9QBBlA5hTBs', 'william@explicit.co.za', 0, '1', '2022-09-20 00:00:00', '2022-09-21 00:00:00', 0),
(6, '284d197e-c691-4ce8-9b22-cceb64c1ef44', 24, 64, 'wc_order_8i9QBBlA5hTBs', 'william@explicit.co.za', 0, '1', '2022-09-20 00:00:00', '2022-09-21 00:00:00', 0),
(7, '60ee0613-3a8f-4a77-af52-f7c534d42a1e', 24, 65, 'wc_order_hAEf2FfNoH9Yl', 'william@explicit.co.za', 0, '1', '2022-09-20 00:00:00', '2022-09-21 00:00:00', 0),
(8, '284d197e-c691-4ce8-9b22-cceb64c1ef44', 24, 65, 'wc_order_hAEf2FfNoH9Yl', 'william@explicit.co.za', 0, '1', '2022-09-20 00:00:00', '2022-09-21 00:00:00', 0),
(9, '60ee0613-3a8f-4a77-af52-f7c534d42a1e', 24, 69, 'wc_order_LQQOsj1zJPufh', 'william@explicit.co.za', 0, '1', '2022-09-20 00:00:00', '2022-09-21 00:00:00', 0),
(10, '284d197e-c691-4ce8-9b22-cceb64c1ef44', 24, 69, 'wc_order_LQQOsj1zJPufh', 'william@explicit.co.za', 0, '1', '2022-09-20 00:00:00', '2022-09-21 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '24'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '0.01'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '0.01'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(10, 2, '_product_id', '24'),
(11, 2, '_variation_id', '0'),
(12, 2, '_qty', '1'),
(13, 2, '_tax_class', ''),
(14, 2, '_line_subtotal', '0.01'),
(15, 2, '_line_subtotal_tax', '0'),
(16, 2, '_line_total', '0.01'),
(17, 2, '_line_tax', '0'),
(18, 2, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(19, 3, '_product_id', '24'),
(20, 3, '_variation_id', '0'),
(21, 3, '_qty', '1'),
(22, 3, '_tax_class', ''),
(23, 3, '_line_subtotal', '0.01'),
(24, 3, '_line_subtotal_tax', '0'),
(25, 3, '_line_total', '0.01'),
(26, 3, '_line_tax', '0'),
(27, 3, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(28, 4, '_product_id', '24'),
(29, 4, '_variation_id', '0'),
(30, 4, '_qty', '1'),
(31, 4, '_tax_class', ''),
(32, 4, '_line_subtotal', '0.01'),
(33, 4, '_line_subtotal_tax', '0'),
(34, 4, '_line_total', '0.01'),
(35, 4, '_line_tax', '0'),
(36, 4, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(37, 5, '_product_id', '24'),
(38, 5, '_variation_id', '0'),
(39, 5, '_qty', '1'),
(40, 5, '_tax_class', ''),
(41, 5, '_line_subtotal', '0.01'),
(42, 5, '_line_subtotal_tax', '0'),
(43, 5, '_line_total', '0.01'),
(44, 5, '_line_tax', '0'),
(45, 5, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(46, 6, '_product_id', '24'),
(47, 6, '_variation_id', '0'),
(48, 6, '_qty', '1'),
(49, 6, '_tax_class', ''),
(50, 6, '_line_subtotal', '0.01'),
(51, 6, '_line_subtotal_tax', '0'),
(52, 6, '_line_total', '0.01'),
(53, 6, '_line_tax', '0'),
(54, 6, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(55, 7, '_product_id', '24'),
(56, 7, '_variation_id', '0'),
(57, 7, '_qty', '1'),
(58, 7, '_tax_class', ''),
(59, 7, '_line_subtotal', '0.01'),
(60, 7, '_line_subtotal_tax', '0'),
(61, 7, '_line_total', '0.01'),
(62, 7, '_line_tax', '0'),
(63, 7, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(64, 8, '_product_id', '24'),
(65, 8, '_variation_id', '0'),
(66, 8, '_qty', '1'),
(67, 8, '_tax_class', ''),
(68, 8, '_line_subtotal', '0.01'),
(69, 8, '_line_subtotal_tax', '0'),
(70, 8, '_line_total', '0.01'),
(71, 8, '_line_tax', '0'),
(72, 8, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(73, 9, '_product_id', '24'),
(74, 9, '_variation_id', '0'),
(75, 9, '_qty', '1'),
(76, 9, '_tax_class', ''),
(77, 9, '_line_subtotal', '0.01'),
(78, 9, '_line_subtotal_tax', '0'),
(79, 9, '_line_total', '0.01'),
(80, 9, '_line_tax', '0'),
(81, 9, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(82, 10, '_product_id', '24'),
(83, 10, '_variation_id', '0'),
(84, 10, '_qty', '1'),
(85, 10, '_tax_class', ''),
(86, 10, '_line_subtotal', '0.01'),
(87, 10, '_line_subtotal_tax', '0'),
(88, 10, '_line_total', '0.01'),
(89, 10, '_line_tax', '0'),
(90, 10, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(91, 11, '_product_id', '24'),
(92, 11, '_variation_id', '0'),
(93, 11, '_qty', '1'),
(94, 11, '_tax_class', ''),
(95, 11, '_line_subtotal', '0.01'),
(96, 11, '_line_subtotal_tax', '0'),
(97, 11, '_line_total', '0.01'),
(98, 11, '_line_tax', '0'),
(99, 11, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(100, 12, '_product_id', '16'),
(101, 12, '_variation_id', '0'),
(102, 12, '_qty', '1'),
(103, 12, '_tax_class', ''),
(104, 12, '_line_subtotal', '0.01'),
(105, 12, '_line_subtotal_tax', '0'),
(106, 12, '_line_total', '0.01'),
(107, 12, '_line_tax', '0'),
(108, 12, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(109, 13, 'method_id', 'free_shipping'),
(110, 13, 'instance_id', '1'),
(111, 13, 'cost', '0.00'),
(112, 13, 'total_tax', '0'),
(113, 13, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(114, 13, 'Items', 'Beanie &times; 1'),
(115, 14, '_product_id', '16'),
(116, 14, '_variation_id', '0'),
(117, 14, '_qty', '1'),
(118, 14, '_tax_class', ''),
(119, 14, '_line_subtotal', '0.01'),
(120, 14, '_line_subtotal_tax', '0'),
(121, 14, '_line_total', '0.01'),
(122, 14, '_line_tax', '0'),
(123, 14, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(124, 15, 'method_id', 'free_shipping'),
(125, 15, 'instance_id', '1'),
(126, 15, 'cost', '0.00'),
(127, 15, 'total_tax', '0'),
(128, 15, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(129, 15, 'Items', 'Beanie &times; 1'),
(130, 16, '_product_id', '16'),
(131, 16, '_variation_id', '0'),
(132, 16, '_qty', '1'),
(133, 16, '_tax_class', ''),
(134, 16, '_line_subtotal', '0.01'),
(135, 16, '_line_subtotal_tax', '0'),
(136, 16, '_line_total', '0.01'),
(137, 16, '_line_tax', '0'),
(138, 16, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(139, 17, 'method_id', 'free_shipping'),
(140, 17, 'instance_id', '1'),
(141, 17, 'cost', '0.00'),
(142, 17, 'total_tax', '0'),
(143, 17, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(144, 17, 'Items', 'Beanie &times; 1'),
(145, 18, '_product_id', '18'),
(146, 18, '_variation_id', '0'),
(147, 18, '_qty', '1'),
(148, 18, '_tax_class', ''),
(149, 18, '_line_subtotal', '0.01'),
(150, 18, '_line_subtotal_tax', '0'),
(151, 18, '_line_total', '0.01'),
(152, 18, '_line_tax', '0'),
(153, 18, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(154, 19, 'method_id', 'free_shipping'),
(155, 19, 'instance_id', '1'),
(156, 19, 'cost', '0.00'),
(157, 19, 'total_tax', '0'),
(158, 19, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(159, 19, 'Items', 'Cap &times; 1'),
(160, 20, '_product_id', '33'),
(161, 20, '_variation_id', '0'),
(162, 20, '_qty', '1'),
(163, 20, '_tax_class', ''),
(164, 20, '_line_subtotal', '8'),
(165, 20, '_line_subtotal_tax', '0'),
(166, 20, '_line_total', '8'),
(167, 20, '_line_tax', '0'),
(168, 20, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(169, 21, 'method_id', 'free_shipping'),
(170, 21, 'instance_id', '1'),
(171, 21, 'cost', '0.00'),
(172, 21, 'total_tax', '0'),
(173, 21, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(174, 21, 'Items', 'Beanie &times; 1'),
(175, 22, '_product_id', '33'),
(176, 22, '_variation_id', '0'),
(177, 22, '_qty', '1'),
(178, 22, '_tax_class', ''),
(179, 22, '_line_subtotal', '8'),
(180, 22, '_line_subtotal_tax', '0'),
(181, 22, '_line_total', '8'),
(182, 22, '_line_tax', '0'),
(183, 22, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(184, 23, 'method_id', 'free_shipping'),
(185, 23, 'instance_id', '1'),
(186, 23, 'cost', '0.00'),
(187, 23, 'total_tax', '0'),
(188, 23, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(189, 23, 'Items', 'Beanie &times; 1'),
(190, 24, '_product_id', '33'),
(191, 24, '_variation_id', '0'),
(192, 24, '_qty', '1'),
(193, 24, '_tax_class', ''),
(194, 24, '_line_subtotal', '8'),
(195, 24, '_line_subtotal_tax', '0'),
(196, 24, '_line_total', '8'),
(197, 24, '_line_tax', '0'),
(198, 24, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(199, 25, 'method_id', 'free_shipping'),
(200, 25, 'instance_id', '1'),
(201, 25, 'cost', '0.00'),
(202, 25, 'total_tax', '0'),
(203, 25, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(204, 25, 'Items', 'Beanie &times; 1'),
(205, 26, '_product_id', '18'),
(206, 26, '_variation_id', '0'),
(207, 26, '_qty', '1'),
(208, 26, '_tax_class', ''),
(209, 26, '_line_subtotal', '10'),
(210, 26, '_line_subtotal_tax', '0'),
(211, 26, '_line_total', '10'),
(212, 26, '_line_tax', '0'),
(213, 26, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(214, 27, 'method_id', 'free_shipping'),
(215, 27, 'instance_id', '1'),
(216, 27, 'cost', '0.00'),
(217, 27, 'total_tax', '0'),
(218, 27, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(219, 27, 'Items', 'Cap &times; 1'),
(220, 28, '_product_id', '33'),
(221, 28, '_variation_id', '0'),
(222, 28, '_qty', '2'),
(223, 28, '_tax_class', ''),
(224, 28, '_line_subtotal', '18'),
(225, 28, '_line_subtotal_tax', '0'),
(226, 28, '_line_total', '18'),
(227, 28, '_line_tax', '0'),
(228, 28, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(229, 29, 'method_id', 'free_shipping'),
(230, 29, 'instance_id', '1'),
(231, 29, 'cost', '0.00'),
(232, 29, 'total_tax', '0'),
(233, 29, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(234, 29, 'Items', 'Beanie &times; 2'),
(235, 30, '_product_id', '19'),
(236, 30, '_variation_id', '0'),
(237, 30, '_qty', '1'),
(238, 30, '_tax_class', ''),
(239, 30, '_line_subtotal', '8'),
(240, 30, '_line_subtotal_tax', '0'),
(241, 30, '_line_total', '8'),
(242, 30, '_line_tax', '0'),
(243, 30, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(244, 31, 'method_id', 'free_shipping'),
(245, 31, 'instance_id', '1'),
(246, 31, 'cost', '0.00'),
(247, 31, 'total_tax', '0'),
(248, 31, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(249, 31, 'Items', 'Sunglasses &times; 1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Album', 'line_item', 59),
(2, 'Album', 'line_item', 60),
(3, 'Album', 'line_item', 61),
(4, 'Album', 'line_item', 62),
(5, 'Album', 'line_item', 63),
(6, 'Album', 'line_item', 64),
(7, 'Album', 'line_item', 65),
(8, 'Album', 'line_item', 66),
(9, 'Album', 'line_item', 67),
(10, 'Album', 'line_item', 68),
(11, 'Album', 'line_item', 69),
(12, 'Beanie', 'line_item', 71),
(13, 'Free shipping', 'shipping', 71),
(14, 'Beanie', 'line_item', 72),
(15, 'Free shipping', 'shipping', 72),
(16, 'Beanie', 'line_item', 73),
(17, 'Free shipping', 'shipping', 73),
(18, 'Cap', 'line_item', 97),
(19, 'Free shipping', 'shipping', 97),
(20, 'Beanie', 'line_item', 98),
(21, 'Free shipping', 'shipping', 98),
(22, 'Beanie', 'line_item', 99),
(23, 'Free shipping', 'shipping', 99),
(24, 'Beanie', 'line_item', 106),
(25, 'Free shipping', 'shipping', 106),
(26, 'Cap', 'line_item', 110),
(27, 'Free shipping', 'shipping', 110),
(28, 'Beanie', 'line_item', 111),
(29, 'Free shipping', 'shipping', 111),
(30, 'Sunglasses', 'line_item', 112),
(31, 'Free shipping', 'shipping', 112);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(230, 't_6b64e3247617012f41444e263454ec', 'a:15:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:22:\"shipping_for_package_0\";s:390:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_b6d39cfa1c301132cf8659098dc1d0d4\";s:5:\"rates\";a:1:{s:15:\"free_shipping:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:15:\"free_shipping:1\";s:9:\"method_id\";s:13:\"free_shipping\";s:11:\"instance_id\";i:1;s:5:\"label\";s:13:\"Free shipping\";s:4:\"cost\";s:4:\"0.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:5:\"Items\";s:16:\"Beanie &times; 2\";}}}}\";s:25:\"previous_shipping_methods\";s:43:\"a:1:{i:0;a:1:{i:0;s:15:\"free_shipping:1\";}}\";s:23:\"chosen_shipping_methods\";s:33:\"a:1:{i:0;s:15:\"free_shipping:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:10:\"wc_notices\";N;s:8:\"customer\";s:929:\"a:27:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:5:\"92614\";s:4:\"city\";s:6:\"Irvine\";s:9:\"address_1\";s:19:\"4316 Evergreen Lane\";s:7:\"address\";s:19:\"4316 Evergreen Lane\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"CA\";s:7:\"country\";s:2:\"US\";s:17:\"shipping_postcode\";s:5:\"92614\";s:13:\"shipping_city\";s:6:\"Irvine\";s:18:\"shipping_address_1\";s:19:\"4316 Evergreen Lane\";s:16:\"shipping_address\";s:19:\"4316 Evergreen Lane\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"CA\";s:16:\"shipping_country\";s:2:\"US\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:1:\"1\";s:10:\"first_name\";s:7:\"Satoshi\";s:9:\"last_name\";s:8:\"Nakamoto\";s:7:\"company\";s:14:\"Bitcoin Palace\";s:5:\"phone\";s:12:\"949-748-9989\";s:5:\"email\";s:19:\"satoshi@bitcoin.org\";s:19:\"shipping_first_name\";s:7:\"Satoshi\";s:18:\"shipping_last_name\";s:8:\"Nakamoto\";s:16:\"shipping_company\";s:14:\"Bitcoin Palace\";s:14:\"shipping_phone\";s:12:\"949-748-9989\";}\";s:21:\"chosen_payment_method\";s:18:\"solana_pay_gateway\";s:22:\"order_awaiting_payment\";N;s:19:\"wcs_renewal_coupons\";s:6:\"a:0:{}\";}', 1665660535),
(248, 't_78e566d8bd79504093a66c2595eff8', 'a:1:{s:8:\"customer\";s:966:\"a:27:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2022-09-30T13:46:28+00:00\";s:8:\"postcode\";s:4:\"7441\";s:4:\"city\";s:9:\"Cape Town\";s:9:\"address_1\";s:29:\"32 Plakkaten Street, Bothasig\";s:7:\"address\";s:29:\"32 Plakkaten Street, Bothasig\";s:9:\"address_2\";s:8:\"Bothasig\";s:5:\"state\";s:2:\"WC\";s:7:\"country\";s:2:\"ZA\";s:17:\"shipping_postcode\";s:4:\"7441\";s:13:\"shipping_city\";s:9:\"Cape Town\";s:18:\"shipping_address_1\";s:29:\"32 Plakkaten Street, Bothasig\";s:16:\"shipping_address\";s:29:\"32 Plakkaten Street, Bothasig\";s:18:\"shipping_address_2\";s:8:\"Bothasig\";s:14:\"shipping_state\";s:2:\"WC\";s:16:\"shipping_country\";s:2:\"ZA\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:1:\"1\";s:10:\"first_name\";s:7:\"William\";s:9:\"last_name\";s:6:\"Brooks\";s:7:\"company\";s:8:\"Personal\";s:5:\"phone\";s:12:\"+27829283948\";s:5:\"email\";s:22:\"william@explicit.co.za\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";}\";}', 1665747380),
(252, 't_d0ce4d0e4dd406b5eeb41fd1e7d1f9', 'a:13:{s:4:\"cart\";s:408:\"a:1:{s:32:\"182be0c5cdcd5072bb1864cdee4d3d6e\";a:11:{s:3:\"key\";s:32:\"182be0c5cdcd5072bb1864cdee4d3d6e\";s:10:\"product_id\";i:33;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:9;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:9;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:390:\"a:15:{s:8:\"subtotal\";s:1:\"9\";s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";s:1:\"0\";s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";s:1:\"9\";s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:1:\"0\";s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:4:\"9.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:22:\"shipping_for_package_0\";s:390:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_91f6e390a81c7c949a998c59dbd5850a\";s:5:\"rates\";a:1:{s:15:\"free_shipping:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:15:\"free_shipping:1\";s:9:\"method_id\";s:13:\"free_shipping\";s:11:\"instance_id\";i:1;s:5:\"label\";s:13:\"Free shipping\";s:4:\"cost\";s:4:\"0.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:5:\"Items\";s:16:\"Beanie &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:43:\"a:1:{i:0;a:1:{i:0;s:15:\"free_shipping:1\";}}\";s:23:\"chosen_shipping_methods\";s:33:\"a:1:{i:0;s:15:\"free_shipping:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:10:\"wc_notices\";N;s:8:\"customer\";s:823:\"a:27:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:5:\"92614\";s:4:\"city\";s:6:\"Irvine\";s:9:\"address_1\";s:19:\"4316 Evergreen Lane\";s:7:\"address\";s:19:\"4316 Evergreen Lane\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"CA\";s:7:\"country\";s:2:\"US\";s:17:\"shipping_postcode\";s:5:\"92614\";s:13:\"shipping_city\";s:6:\"Irvine\";s:18:\"shipping_address_1\";s:19:\"4316 Evergreen Lane\";s:16:\"shipping_address\";s:19:\"4316 Evergreen Lane\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"CA\";s:16:\"shipping_country\";s:2:\"US\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:1:\"1\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";}\";s:21:\"chosen_payment_method\";s:18:\"solana_pay_gateway\";}', 1665750138),
(255, 't_ee949887c72104b2f4a647f1cb4a8e', 'a:15:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:22:\"shipping_for_package_0\";s:394:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_85da6bc0182b613188b0bd80794b2ff5\";s:5:\"rates\";a:1:{s:15:\"free_shipping:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:15:\"free_shipping:1\";s:9:\"method_id\";s:13:\"free_shipping\";s:11:\"instance_id\";i:1;s:5:\"label\";s:13:\"Free shipping\";s:4:\"cost\";s:4:\"0.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:5:\"Items\";s:20:\"Sunglasses &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:43:\"a:1:{i:0;a:1:{i:0;s:15:\"free_shipping:1\";}}\";s:23:\"chosen_shipping_methods\";s:33:\"a:1:{i:0;s:15:\"free_shipping:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:10:\"wc_notices\";N;s:8:\"customer\";s:929:\"a:27:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:5:\"92614\";s:4:\"city\";s:6:\"Irvine\";s:9:\"address_1\";s:19:\"4316 Evergreen Lane\";s:7:\"address\";s:19:\"4316 Evergreen Lane\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"CA\";s:7:\"country\";s:2:\"US\";s:17:\"shipping_postcode\";s:5:\"92614\";s:13:\"shipping_city\";s:6:\"Irvine\";s:18:\"shipping_address_1\";s:19:\"4316 Evergreen Lane\";s:16:\"shipping_address\";s:19:\"4316 Evergreen Lane\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"CA\";s:16:\"shipping_country\";s:2:\"US\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:1:\"1\";s:10:\"first_name\";s:7:\"Satoshi\";s:9:\"last_name\";s:8:\"Nakamoto\";s:7:\"company\";s:14:\"Bitcoin Palace\";s:5:\"phone\";s:12:\"949-748-9989\";s:5:\"email\";s:19:\"satoshi@bitcoin.org\";s:19:\"shipping_first_name\";s:7:\"Satoshi\";s:18:\"shipping_last_name\";s:8:\"Nakamoto\";s:16:\"shipping_company\";s:14:\"Bitcoin Palace\";s:14:\"shipping_phone\";s:12:\"949-748-9989\";}\";s:21:\"chosen_payment_method\";s:18:\"solana_pay_gateway\";s:22:\"order_awaiting_payment\";N;s:19:\"wcs_renewal_coupons\";s:6:\"a:0:{}\";}', 1665750258);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'United States (US)', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'US', 'country');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'free_shipping', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`);

--
-- Indexes for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Indexes for table `wp_wc_category_lookup`
--
ALTER TABLE `wp_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Indexes for table `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_order_coupon_lookup`
--
ALTER TABLE `wp_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_order_product_lookup`
--
ALTER TABLE `wp_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_order_stats`
--
ALTER TABLE `wp_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Indexes for table `wp_wc_order_tax_lookup`
--
ALTER TABLE `wp_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_product_attributes_lookup`
--
ALTER TABLE `wp_wc_product_attributes_lookup`
  ADD PRIMARY KEY (`product_or_parent_id`,`term_id`,`product_id`,`taxonomy`),
  ADD KEY `is_variation_attribute_term_id` (`is_variation_attribute`,`term_id`);

--
-- Indexes for table `wp_wc_product_download_directories`
--
ALTER TABLE `wp_wc_product_download_directories`
  ADD PRIMARY KEY (`url_id`),
  ADD KEY `url` (`url`(191));

--
-- Indexes for table `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Indexes for table `wp_wc_rate_limits`
--
ALTER TABLE `wp_wc_rate_limits`
  ADD PRIMARY KEY (`rate_limit_id`),
  ADD UNIQUE KEY `rate_limit_key` (`rate_limit_key`(191));

--
-- Indexes for table `wp_wc_reserved_stock`
--
ALTER TABLE `wp_wc_reserved_stock`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Indexes for table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=472;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=515;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=927;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1665;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1481;

--
-- AUTO_INCREMENT for table `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_product_download_directories`
--
ALTER TABLE `wp_wc_product_download_directories`
  MODIFY `url_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_wc_rate_limits`
--
ALTER TABLE `wp_wc_rate_limits`
  MODIFY `rate_limit_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
