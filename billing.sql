-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 24, 2021 at 09:13 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `billing`
--

-- --------------------------------------------------------

--
-- Table structure for table `actives`
--

CREATE TABLE `actives` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `actives`
--

INSERT INTO `actives` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Active', NULL, NULL),
(2, 'Inactive', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `add_line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_line3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postalcode` int(10) UNSIGNED DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `state_id` int(10) UNSIGNED DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `saletax` decimal(9,4) DEFAULT NULL,
  `masterclient_id` int(10) UNSIGNED DEFAULT NULL,
  `NTN` blob DEFAULT NULL,
  `defaultbtn` tinyint(1) DEFAULT NULL,
  `auth_status` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_status` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `add_line1`, `add_line2`, `add_line3`, `postalcode`, `country_id`, `state_id`, `city_id`, `saletax`, `masterclient_id`, `NTN`, `defaultbtn`, `auth_status`, `verify_status`, `created_at`, `updated_at`) VALUES
(103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 156, NULL, 0, '', 'Y', '2021-05-19 18:50:48', '2021-05-19 18:50:48'),
(105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 158, NULL, 0, '', 'Y', '2021-05-19 18:57:59', '2021-05-19 18:57:59'),
(107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 160, NULL, 0, '', 'Y', '2021-05-20 14:22:00', '2021-05-20 14:22:00'),
(108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 161, NULL, 0, '', 'Y', '2021-05-20 16:58:58', '2021-05-20 16:58:58'),
(109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 162, NULL, 0, '', 'Y', '2021-05-20 17:00:39', '2021-05-20 17:00:39'),
(110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 164, NULL, 0, '', 'Y', '2021-05-20 17:14:03', '2021-05-20 17:14:03'),
(111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 165, NULL, 0, '', 'Y', '2021-05-20 17:14:16', '2021-05-20 17:14:16'),
(112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 166, NULL, 0, '', 'Y', '2021-05-20 18:13:48', '2021-05-20 18:13:48'),
(116, 'Karachi', 'G Area', 'House 345', 74900, 1, 3, 2, '23.5400', 159, NULL, 1, '', 'Y', '2021-05-21 19:30:18', '2021-05-21 19:30:18'),
(117, 'Karachi', 'bnas', 'asd', 9836, 1, 1, 1, '34.6700', 159, NULL, 0, '', 'Y', '2021-05-21 19:30:18', '2021-05-21 19:30:18'),
(126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 168, NULL, 0, '', 'Y', '2021-05-22 10:45:11', '2021-05-22 10:45:11'),
(127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 169, NULL, 0, '', 'Y', '2021-05-22 10:46:22', '2021-05-22 10:46:22'),
(129, 'Islamabad', 'G Area', 'House 345', 74900, 1, 3, 2, '23.5400', 167, NULL, 1, '', 'Y', '2021-05-22 12:04:54', '2021-05-22 12:04:54'),
(130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 170, NULL, 0, '', 'Y', '2021-05-22 12:09:48', '2021-05-22 12:09:48'),
(132, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 171, NULL, 0, '', 'Y', '2021-05-22 12:24:28', '2021-05-22 12:24:28'),
(136, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 173, NULL, 0, '', 'Y', '2021-05-23 01:08:59', '2021-05-23 01:08:59'),
(140, 'One', 'Two', 'Three', 74900, 1, 1, 1, '13.0000', 175, NULL, 0, '', 'Y', '2021-05-23 01:58:14', '2021-05-23 01:58:14'),
(141, 'One', 'Two', 'Three', 74900, 1, 3, 2, '13.0000', 175, NULL, 0, '', 'Y', '2021-05-23 01:58:14', '2021-05-23 01:58:14'),
(147, 'Address one', 'Address two', 'Address three', 74900, 1, 1, 1, '12.0000', 176, NULL, 1, '', 'Y', '2021-05-23 06:51:32', '2021-05-23 06:51:32'),
(148, 'Address four', 'Address Five', 'Address Six', 74900, 1, 1, 1, '12.0000', 176, NULL, 0, '', 'Y', '2021-05-23 06:51:32', '2021-05-23 06:51:32'),
(162, 'Karachi', 'Address four', 'Address Five', 74900, 1, 1, 1, '12.0000', 177, 0x7075626c69632f313632313737313438382e53637265656e73686f742066726f6d20323032312d30352d31342031332d31312d30312e706e67, 1, '', 'Y', '2021-05-23 07:04:48', '2021-05-23 07:04:48'),
(163, 'Address one', 'Address two', 'Address three', 74900, 1, 1, 1, '12.0000', 177, 0x7075626c69632f313632313737313438382e53637265656e73686f742066726f6d20323032312d30352d31392031362d32372d31302e706e67, 0, '', 'Y', '2021-05-23 07:04:48', '2021-05-23 07:04:48'),
(164, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 172, NULL, 0, 'A', 'E', '2021-05-23 09:04:12', '2021-05-23 09:04:12'),
(171, 'Address one', 'Address two', 'Address three', 74900, 1, 1, 1, '12.0000', 178, NULL, 1, '', 'Y', '2021-05-23 10:57:01', '2021-05-23 10:57:01'),
(173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 179, NULL, 0, '', 'Y', '2021-05-23 13:56:53', '2021-05-23 13:56:53'),
(174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 180, NULL, 0, '', 'Y', '2021-05-23 14:49:50', '2021-05-23 14:49:50'),
(175, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 189, NULL, 0, '', 'Y', '2021-05-23 16:01:51', '2021-05-23 16:01:51'),
(177, 'Karachi', 'Address one', 'Address two', 74900, 1, 1, 1, '12.0000', 194, NULL, 0, '', 'Y', '2021-05-23 16:15:36', '2021-05-23 16:15:36'),
(178, 'Karachi', 'Address one', 'Address two', 74900, 1, 1, 1, '12.0000', 196, NULL, 0, '', 'Y', '2021-05-23 16:41:30', '2021-05-23 16:41:30');

-- --------------------------------------------------------

--
-- Table structure for table `assqdescs`
--

CREATE TABLE `assqdescs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assq_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assqdescs`
--

INSERT INTO `assqdescs` (`id`, `name`, `assq_id`, `created_at`, `updated_at`) VALUES
(1, 'First Assq Desc', 1, NULL, NULL),
(2, 'Second Assq Desc', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assqs`
--

CREATE TABLE `assqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assqs`
--

INSERT INTO `assqs` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'First assq', NULL, NULL),
(2, 'Second Assq', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `billing_forms`
--

CREATE TABLE `billing_forms` (
  `id` bigint(20) NOT NULL,
  `billing_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `engagement_client` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ntn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bill_no` bigint(20) UNSIGNED NOT NULL,
  `bill_date` date NOT NULL,
  `credit_day` int(11) NOT NULL,
  `currency` decimal(8,2) NOT NULL,
  `rate` decimal(8,2) NOT NULL,
  `pace_id` bigint(20) UNSIGNED NOT NULL,
  `assq_id` bigint(20) UNSIGNED NOT NULL,
  `assqdesc_id` bigint(20) UNSIGNED NOT NULL,
  `branches_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billing_forms`
--

INSERT INTO `billing_forms` (`id`, `billing_to`, `engagement_client`, `ntn`, `description`, `address`, `bill_no`, `bill_date`, `credit_day`, `currency`, `rate`, `pace_id`, `assq_id`, `assqdesc_id`, `branches_id`, `created_at`, `updated_at`) VALUES
(1, 'Habib Bank', 'Tahmeer', '23576-9', 'This is first Check', 'G Area', 12457872325, '2021-05-18', 26, '3.00', '160.00', 1, 1, 2, 3, '2021-05-18 13:11:26', '2021-05-18 13:11:26'),
(2, 'Meezan Bank', 'Farzan', '124-965', 'This is second Check', 'SOldier Bazaar', 1245787225, '2021-05-20', 27, '9.00', '200.00', 2, 2, 2, 3, '2021-05-18 18:27:20', '2021-05-18 18:27:20');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phnNumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `isDeleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `Address`, `phnNumber`, `created_at`, `updated_at`, `isDeleted`) VALUES
(1, 'karachi', 'khalid bin waleed', '03920392', '2021-03-30 10:14:54', '2021-05-04 16:22:02', 0),
(3, 'islamabad', 'islamabad street:2', '039283222', '2021-04-01 09:40:32', '2021-04-01 09:40:32', 0),
(4, 'Lahore', 'Lahore', NULL, '2021-05-03 18:42:01', '2021-05-03 18:42:01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `branches_users`
--

CREATE TABLE `branches_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branches_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches_users`
--

INSERT INTO `branches_users` (`id`, `branches_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(2, 1, 3, NULL, NULL),
(3, 1, 4, NULL, NULL),
(4, 1, 5, NULL, NULL),
(5, 3, 5, NULL, NULL),
(6, 4, 6, NULL, NULL),
(7, 4, 7, NULL, NULL),
(8, 3, 8, NULL, NULL),
(9, 4, 8, NULL, NULL),
(10, 3, 4, NULL, NULL),
(11, 4, 9, NULL, NULL),
(12, 3, 10, NULL, NULL),
(13, 3, 11, NULL, NULL),
(14, 4, 11, NULL, NULL),
(15, 3, 12, NULL, NULL),
(16, 1, 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `branch_client`
--

CREATE TABLE `branch_client` (
  `id` bigint(20) NOT NULL,
  `branches_id` bigint(20) UNSIGNED DEFAULT NULL,
  `masterclient_id` int(11) UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch_client`
--

INSERT INTO `branch_client` (`id`, `branches_id`, `masterclient_id`, `updated_at`, `created_at`) VALUES
(103, 3, 159, '2021-05-21 19:30:18', '2021-05-21 19:30:18'),
(114, 1, 167, '2021-05-22 12:04:54', '2021-05-22 12:04:54'),
(115, 3, 175, '2021-05-23 01:58:14', '2021-05-23 01:58:14'),
(116, 4, 175, '2021-05-23 01:58:14', '2021-05-23 01:58:14'),
(120, 1, 176, '2021-05-23 06:51:32', '2021-05-23 06:51:32'),
(121, 3, 176, '2021-05-23 06:51:32', '2021-05-23 06:51:32'),
(135, 1, 177, '2021-05-23 07:04:48', '2021-05-23 07:04:48'),
(136, 3, 177, '2021-05-23 07:04:48', '2021-05-23 07:04:48'),
(141, 3, 178, '2021-05-23 10:57:01', '2021-05-23 10:57:01'),
(142, 4, 178, '2021-05-23 10:57:01', '2021-05-23 10:57:01'),
(143, 3, 189, '2021-05-23 16:01:51', '2021-05-23 16:01:51'),
(144, 4, 189, '2021-05-23 16:01:51', '2021-05-23 16:01:51'),
(147, 3, 194, '2021-05-23 16:15:36', '2021-05-23 16:15:36'),
(148, 4, 194, '2021-05-23 16:15:36', '2021-05-23 16:15:36'),
(149, 1, 196, '2021-05-23 16:41:30', '2021-05-23 16:41:30'),
(150, 4, 196, '2021-05-23 16:41:30', '2021-05-23 16:41:30');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Karachi', 1, 1, NULL, NULL),
(2, 'Islamabad', 3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `client_attachments`
--

CREATE TABLE `client_attachments` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_attachments`
--

INSERT INTO `client_attachments` (`id`, `client_id`, `file_path`) VALUES
(1, 194, 'public/1621761241_Screenshot from 2021-05-22 22-16-13.png'),
(2, 194, 'public/1621761241_Screenshot from 2021-05-19 16-27-10.png'),
(3, 175, 'public/1621761241_Screenshot from 2021-05-14 13-11-01.png'),
(4, 175, 'public/1621761241_Screenshot from 2021-05-11 11-18-26.png'),
(5, 196, 'public/attachments/1621762890_Screenshot from 2021-05-22 22-16-13.png'),
(6, 196, 'public/attachments/1621762890_Screenshot from 2021-05-19 16-27-10.png'),
(7, 196, 'public/attachments/1621762890_Screenshot from 2021-05-14 13-11-01.png'),
(8, 196, 'public/attachments/1621762890_Screenshot from 2021-05-11 11-18-26.png');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `state_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pakistan', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Symbol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rate` decimal(8,2) NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `Name`, `Symbol`, `Rate`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Rupees', 'PKR.', '19.00', 0, '2021-05-07 03:50:58', '2021-05-07 03:58:04'),
(2, 'Dollars', '$', '100.00', 0, '2021-05-07 03:52:37', '2021-05-07 03:56:56'),
(3, 'Dollars', '$', '160.00', 1, '2021-05-07 03:57:44', '2021-05-07 04:03:52'),
(4, 'Rupees', 'PKR', '5.00', 0, '2021-05-07 04:04:08', '2021-05-07 04:04:13'),
(5, 'Rupees', 'PKR', '14.00', 0, '2021-05-07 04:11:15', '2021-05-07 04:11:27'),
(6, 'Rupees', 'PKR', '50.00', 0, '2021-05-07 04:25:58', '2021-05-07 04:26:17'),
(7, 'Rupees', 'PKR', '23.00', 0, '2021-05-07 04:38:40', '2021-05-07 04:38:52'),
(8, 'Rupees', 'PKR', '34.00', 0, '2021-05-08 13:41:22', '2021-05-08 13:42:38'),
(9, 'Euro', 'EUR', '300.00', 1, '2021-05-08 13:42:33', '2021-05-08 13:42:33');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d__addresses`
--

CREATE TABLE `d__addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `add_line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_line3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postalcode` int(10) DEFAULT NULL,
  `country_id` int(10) DEFAULT NULL,
  `state_id` int(10) DEFAULT NULL,
  `city_id` int(10) DEFAULT NULL,
  `saletax` decimal(9,4) DEFAULT NULL,
  `masterclient_id` int(10) DEFAULT NULL,
  `NTN` blob DEFAULT NULL,
  `defaultbtn` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d__addresses`
--

INSERT INTO `d__addresses` (`id`, `add_line1`, `add_line2`, `add_line3`, `postalcode`, `country_id`, `state_id`, `city_id`, `saletax`, `masterclient_id`, `NTN`, `defaultbtn`, `created_at`, `updated_at`) VALUES
(1, 'sdfzc', 'cvx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-05-10 14:01:59', '2021-05-10 14:01:59'),
(2, NULL, 'asddX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-05-10 14:04:41', '2021-05-10 14:04:41'),
(3, NULL, 'dfcs', NULL, 55432, NULL, NULL, NULL, NULL, 4, NULL, 0, '2021-05-10 14:12:48', '2021-05-10 14:12:48'),
(8, 'Karachi', 'G Area', 'House 345', 74900, 1, 3, 2, NULL, 27, NULL, 1, '2021-05-12 01:45:55', '2021-05-12 01:45:55'),
(9, 'G Area', 'House 345', 'j kl', 54678, 1, 1, 1, '34.0000', 27, 0x7075626c69632f313632303735383735352e42696c6c696e675f5461736b732e747874, 0, '2021-05-12 01:45:55', '2021-05-12 01:45:55'),
(10, 'Karachi', 'G Area', 'House 345', 74900, 1, 3, 2, NULL, 28, NULL, 1, '2021-05-12 01:48:18', '2021-05-12 01:48:18'),
(11, 'G Area', 'House 345', 'j kl', NULL, 1, 1, 1, '34.0000', 28, 0x7075626c69632f313632303735383839382e42696c6c696e675f5461736b732e747874, 0, '2021-05-12 01:48:18', '2021-05-12 01:48:18'),
(12, 'Karachi', 'G Area', 'House 345', 74900, 1, 3, 2, NULL, 29, NULL, 1, '2021-05-12 01:52:59', '2021-05-12 01:52:59'),
(13, 'G Area', 'House 345', 'j kl', NULL, 1, 1, 1, '34.0000', 29, 0x7075626c69632f313632303735393137392e42696c6c696e675f5461736b732e747874, 0, '2021-05-12 01:52:59', '2021-05-12 01:52:59'),
(17, 'Islamabad', 'G Area', 'House 345', 74900, 1, 3, 2, '56.7800', 31, 0x7075626c69632f313632313134363934352e42696c6c696e675f5461736b732e747874, 1, '2021-05-16 13:35:46', '2021-05-16 13:35:46'),
(18, 'G Area', 'House 345', 'j kl', 74900, 1, 1, 1, '26.9800', 31, 0x7075626c69632f313632313134363934362e636f64652e747874, 0, '2021-05-16 13:35:46', '2021-05-16 13:35:46'),
(19, 'Islamabad', 'G Area', 'House 345', 74900, 1, 1, 1, '12.5400', 32, 0x7075626c69632f313632313134383239392e62617369632d696e666f2e6a7067, 0, '2021-05-16 13:58:20', '2021-05-16 13:58:20'),
(20, 'G Area', 'House 345', 'j kl', 74900, 1, 3, 2, '543.0000', 32, 0x7075626c69632f313632313134383330302e636f64652e747874, 1, '2021-05-16 13:58:20', '2021-05-16 13:58:20'),
(21, 'Islamabad', 'G Area', 'House 345', 74900, 1, 1, 1, NULL, 44, 0x7075626c69632f313632313233303739322e62617369632d696e666f2e6a7067, 0, '2021-05-17 12:53:12', '2021-05-17 12:53:12'),
(22, 'Islamabad', 'G Area', 'House 345', 74900, 1, 3, 2, '876.0000', 45, 0x7075626c69632f313632313430333634342e62696c6c696e67666f726d7461736b2e747874, 0, '2021-05-19 12:54:04', '2021-05-19 12:54:04'),
(23, 'Islamabad', 'G Area', 'House 345', 74900, 1, 3, 2, '34.0000', 48, 0x7075626c69632f313632313430343439332e62696c6c696e67666f726d7461736b2e747874, 0, '2021-05-19 13:08:13', '2021-05-19 13:08:13');

-- --------------------------------------------------------

--
-- Table structure for table `d__branches`
--

CREATE TABLE `d__branches` (
  `id` bigint(20) DEFAULT NULL,
  `branches_id` bigint(20) DEFAULT NULL,
  `masterclient_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d__branches`
--

INSERT INTO `d__branches` (`id`, `branches_id`, `masterclient_id`, `created_at`, `updated_at`) VALUES
(NULL, 2, 27, '2021-05-12 01:45:56', '2021-05-12 01:45:56'),
(NULL, 2, 28, '2021-05-12 01:48:18', '2021-05-12 01:48:18'),
(NULL, 2, 29, '2021-05-12 01:52:59', '2021-05-12 01:52:59'),
(NULL, 2, 31, '2021-05-16 13:35:46', '2021-05-16 13:35:46'),
(NULL, 3, 31, '2021-05-16 13:35:46', '2021-05-16 13:35:46'),
(NULL, 3, 32, '2021-05-16 13:58:20', '2021-05-16 13:58:20'),
(NULL, 4, 32, '2021-05-16 13:58:20', '2021-05-16 13:58:20');

-- --------------------------------------------------------

--
-- Table structure for table `d__master_clients`
--

CREATE TABLE `d__master_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `clientcode` int(10) UNSIGNED DEFAULT NULL,
  `clientname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_client_id` int(10) UNSIGNED DEFAULT NULL,
  `sector_id` int(10) UNSIGNED DEFAULT NULL,
  `subsector_id` int(10) UNSIGNED DEFAULT NULL,
  `subsecdes_id` int(10) UNSIGNED DEFAULT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `status_id` int(10) UNSIGNED DEFAULT NULL,
  `active_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d__master_clients`
--

INSERT INTO `d__master_clients` (`id`, `clientcode`, `clientname`, `shortname`, `type_client_id`, `sector_id`, `subsector_id`, `subsecdes_id`, `group_id`, `entity_id`, `branch_id`, `status_id`, `active_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Shoaib Ahmed', 'Arsalan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-09 23:25:13', '2021-05-09 23:25:13'),
(2, NULL, 'Arsalan Faiz', NULL, 5, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-09 23:29:19', '2021-05-09 23:29:19'),
(3, NULL, 'yg', 'sdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, NULL, '2021-05-10 14:04:41', '2021-05-10 14:04:41'),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 2, NULL, 7, 1, NULL, '2021-05-10 14:12:48', '2021-05-10 14:12:48'),
(5, NULL, 'Usman Qadir', 'Usman', NULL, NULL, 1, 1, 4, 2, NULL, 7, NULL, 4, '2021-05-10 14:16:02', '2021-05-11 20:31:32'),
(7, NULL, 'Faheem', 'Ashraf', NULL, 2, 1, 1, NULL, NULL, NULL, NULL, NULL, 4, '2021-05-11 12:51:01', '2021-05-11 18:02:52'),
(8, NULL, 'Arsalan Faiz', 'Ali', 5, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-11 22:02:05', '2021-05-11 22:02:05'),
(9, NULL, 'Arsalan Faiz', 'Ali', 5, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-11 22:02:06', '2021-05-11 22:02:06'),
(10, NULL, 'Arsalan Faiz', 'Ali', 5, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-11 22:02:07', '2021-05-11 22:02:07'),
(11, NULL, 'Arsalan Faiz', 'Ali', 5, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-11 22:02:07', '2021-05-11 22:02:07'),
(12, NULL, 'Arsalan Faiz', 'Arsalan', 5, 1, 1, 1, 4, 2, NULL, 7, 1, NULL, '2021-05-12 01:15:32', '2021-05-12 01:15:32'),
(13, NULL, 'Arsalan Faiz', 'Arsalan', 5, 1, 1, 1, 4, 2, NULL, 7, 1, NULL, '2021-05-12 01:16:02', '2021-05-12 01:16:02'),
(14, NULL, 'Arsalan Faiz', 'Arsalan', 5, 1, 1, 1, 4, 2, NULL, 7, 1, NULL, '2021-05-12 01:16:18', '2021-05-12 01:16:18'),
(15, NULL, 'Arsalan Faiz', 'Arsalan', 5, 1, 1, 1, 4, 2, NULL, 7, 1, NULL, '2021-05-12 01:16:47', '2021-05-12 01:16:47'),
(16, NULL, 'Arsalan Faiz', 'Arsalan', 5, 1, 1, 1, 4, 2, NULL, 7, 1, NULL, '2021-05-12 01:19:06', '2021-05-12 01:19:06'),
(17, NULL, 'Arsalan Faiz', 'Arsalan', 5, 1, 1, 1, 4, 2, NULL, 7, 1, NULL, '2021-05-12 01:19:26', '2021-05-12 01:19:26'),
(18, NULL, 'Arsalan Faiz', 'Arsalan', 5, 1, 1, 1, 4, 2, NULL, 7, 1, NULL, '2021-05-12 01:21:42', '2021-05-12 01:21:42'),
(19, NULL, 'Fariz Shah', 'Ali', 5, 1, 1, 1, 4, 2, NULL, 7, 1, NULL, '2021-05-12 01:31:30', '2021-05-12 01:31:30'),
(20, NULL, 'Fariz Ali', 'Ali', 5, 1, 1, 1, 4, 2, NULL, 7, 1, NULL, '2021-05-12 01:36:46', '2021-05-12 01:36:46'),
(21, NULL, 'Fariz Ali', 'Ali', 5, 1, 1, 1, 4, 2, NULL, 7, 1, NULL, '2021-05-12 01:36:58', '2021-05-12 01:36:58'),
(22, NULL, 'faris Shah', 'Shah', 5, 1, 1, 1, 4, 2, NULL, 7, 1, NULL, '2021-05-12 01:39:35', '2021-05-12 01:39:35'),
(23, NULL, 'faris Shah', 'Shah', 5, 1, 1, 1, 4, 2, NULL, 7, 1, NULL, '2021-05-12 01:40:39', '2021-05-12 01:40:39'),
(24, NULL, 'faris Shah', 'Shah', 5, 1, 1, 1, 4, 2, NULL, 7, 1, NULL, '2021-05-12 01:42:20', '2021-05-12 01:42:20'),
(25, NULL, 'faris Shah', 'Shah', 5, 1, 1, 1, 4, 2, NULL, 7, 1, NULL, '2021-05-12 01:42:43', '2021-05-12 01:42:43'),
(26, NULL, 'faris Shah', 'Shah', 5, 1, 1, 1, 4, 2, NULL, 7, 1, NULL, '2021-05-12 01:43:35', '2021-05-12 01:43:35'),
(27, NULL, 'faris Shah', 'Shah', 5, 1, 1, 1, 4, 2, NULL, 7, 1, NULL, '2021-05-12 01:45:55', '2021-05-12 01:45:55'),
(28, NULL, 'faris Shah', 'Shah', 5, 1, 1, 1, 4, 2, NULL, 7, 1, NULL, '2021-05-12 01:48:18', '2021-05-12 01:48:18'),
(29, NULL, 'faris Shah', 'Shah', 5, 1, 1, 1, 4, 2, NULL, 7, 1, 4, '2021-05-12 01:52:59', '2021-05-12 01:52:59'),
(31, NULL, 'asim mehmood', 'Mehmood', 5, 1, 1, 1, 4, 2, NULL, 7, 1, 4, '2021-05-16 13:35:45', '2021-05-16 13:35:45'),
(32, NULL, 'Faiza Khan', 'Khan', 7, 1, 5, 5, 4, 1, NULL, 7, 1, 4, '2021-05-16 13:58:19', '2021-05-16 13:58:19'),
(33, NULL, 'Faisal', NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2021-05-16 14:05:46', '2021-05-16 14:05:46'),
(34, NULL, 'Faisal', NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2021-05-16 14:05:51', '2021-05-16 14:05:51'),
(35, NULL, 'Faisal', NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2021-05-16 14:06:19', '2021-05-16 14:06:19'),
(36, NULL, 'Faisal', NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2021-05-16 14:06:20', '2021-05-16 14:06:20'),
(37, NULL, 'faisal', NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2021-05-16 14:07:37', '2021-05-16 14:07:37'),
(38, NULL, 'Faisal', NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-16 14:24:40', '2021-05-16 14:24:40'),
(39, NULL, 'faisal', NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2021-05-16 16:45:41', '2021-05-16 16:45:41'),
(40, NULL, 'faisal', NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-16 16:47:43', '2021-05-16 16:47:43'),
(41, NULL, 'faisal', NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-16 17:09:28', '2021-05-16 17:09:28'),
(42, NULL, 'faisal', NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-16 17:14:35', '2021-05-16 17:14:35'),
(43, NULL, 'Faisal', 'Khan', 5, 1, 1, 1, 4, NULL, NULL, NULL, NULL, NULL, '2021-05-17 12:47:22', '2021-05-17 12:47:22'),
(44, NULL, 'Faisal', 'Khan', 5, 1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-17 12:53:12', '2021-05-17 12:53:12'),
(45, NULL, 'Shaul Charles', 'Shaul', 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2021-05-19 12:54:04', '2021-05-19 12:54:04'),
(46, NULL, 'Abc', 'Bakar', 5, 1, 1, 1, 4, 1, NULL, 7, 1, NULL, '2021-05-19 13:06:37', '2021-05-19 13:06:37'),
(47, NULL, 'Abc', 'Bakar', 5, 1, 1, 1, 4, 1, NULL, 7, 1, NULL, '2021-05-19 13:06:51', '2021-05-19 13:06:51'),
(48, NULL, 'Kazim Ali', 'Ali', 5, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, '2021-05-19 13:08:13', '2021-05-19 13:08:13'),
(49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-19 13:29:40', '2021-05-19 13:29:40');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` bigint(10) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Group One 56 jkjk', 0, NULL, '2021-05-07 04:13:38'),
(2, 'Group Two  ewrew', 0, NULL, '2021-05-08 13:54:44'),
(4, 'New Group', 1, '2021-05-04 16:13:09', '2021-05-07 04:13:33'),
(5, 'laksdjflsadkjf', 0, '2021-05-04 16:13:09', '2021-05-04 16:47:55');

-- --------------------------------------------------------

--
-- Table structure for table `legal_statuses`
--

CREATE TABLE `legal_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `legal_statuses`
--

INSERT INTO `legal_statuses` (`id`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'First Legal Status', 0, NULL, '2021-05-07 04:05:43'),
(2, 'Second Legal', 0, NULL, '2021-05-07 04:03:08'),
(6, 'Legal Status 2', 0, '2021-05-07 04:05:22', '2021-05-07 04:12:24'),
(7, 'New Legal Status 3', 1, '2021-05-07 04:12:11', '2021-05-07 04:12:19'),
(8, 'This is new', 0, '2021-05-07 04:39:36', '2021-05-07 04:39:49'),
(9, 'This is also new', 0, '2021-05-08 13:55:08', '2021-05-08 13:55:23');

-- --------------------------------------------------------

--
-- Table structure for table `linkentities`
--

CREATE TABLE `linkentities` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `linkentities`
--

INSERT INTO `linkentities` (`id`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, '1st Link', 1, NULL, NULL),
(2, '2nd Link', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `masterclients`
--

CREATE TABLE `masterclients` (
  `id` int(10) UNSIGNED NOT NULL,
  `clientcode` int(255) UNSIGNED DEFAULT NULL,
  `clientname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_client_id` int(10) UNSIGNED DEFAULT NULL,
  `sector_id` int(10) UNSIGNED DEFAULT NULL,
  `subsector_id` int(10) UNSIGNED DEFAULT NULL,
  `subsecdes_id` int(10) UNSIGNED DEFAULT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `status_id` int(10) UNSIGNED DEFAULT NULL,
  `active_id` int(10) UNSIGNED DEFAULT NULL,
  `verify_status` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_status` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `client_status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ntn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `masterclients`
--

INSERT INTO `masterclients` (`id`, `clientcode`, `clientname`, `shortname`, `type_client_id`, `sector_id`, `subsector_id`, `subsecdes_id`, `group_id`, `entity_id`, `status_id`, `active_id`, `verify_status`, `auth_status`, `status`, `created_by`, `created_at`, `updated_at`, `client_status`, `ntn`) VALUES
(171, NULL, 'Test Sufyan', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 'Y', '', NULL, NULL, '2021-05-22 12:22:40', '2021-05-22 12:24:28', 'Rejected', NULL),
(172, NULL, 'Test Draft', 'teeest', 5, 1, 1, NULL, NULL, NULL, NULL, NULL, 'E', 'A', NULL, NULL, '2021-05-23 00:14:28', '2021-05-23 09:04:12', 'draft', NULL),
(175, NULL, 'a;fdsjaklfjlkasdjflkasdfalsdfajsd', 'shortname', 5, 1, 5, 5, 4, 1, 7, 1, 'Y', '', NULL, NULL, '2021-05-23 01:56:54', '2021-05-23 06:38:09', 'rejected', NULL),
(176, NULL, 'a;fdsjaklfjlkasdjflkasdfalsdfajsd asdfdsa', 'shortname', 5, 1, 5, 5, 4, 1, 7, 1, 'Y', '', NULL, NULL, '2021-05-23 06:48:16', '2021-05-23 06:50:47', NULL, NULL),
(177, NULL, 'new one', 'NO', 7, 1, 1, 1, 4, 2, 7, 1, 'Y', '', NULL, NULL, '2021-05-23 06:52:58', '2021-05-23 08:27:52', 'verified', NULL),
(178, NULL, 'cbrgbdvcvscasx', 'asZ', 7, 1, 1, 1, 4, 1, 7, 1, 'Y', '', NULL, NULL, '2021-05-23 09:35:01', '2021-05-23 10:23:50', 'draft', '23425'),
(179, NULL, 'tahmeer', 'hsidiads', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, 'Y', '', NULL, NULL, '2021-05-23 13:56:29', '2021-05-23 13:56:53', 'draft', NULL),
(180, NULL, 'a;fdsjaklfjlkasdjflkas89898', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', '', NULL, NULL, '2021-05-23 14:49:50', '2021-05-23 14:49:50', 'draft', NULL),
(181, NULL, 'a;fdsjaklfjlkasdjflkasdfalsdfajsdlklklk', 'NO', NULL, 1, 1, 1, 4, 1, 7, 1, 'Y', '', NULL, NULL, '2021-05-23 15:25:09', '2021-05-23 15:25:09', 'draft', NULL),
(182, NULL, 'a;fdsjaklfjlkasdjflkasdfalsdfajsd asdfdsa mnnbm', 'shortname', 7, 1, 1, 1, 4, 1, 7, 1, 'Y', '', NULL, NULL, '2021-05-23 15:32:07', '2021-05-23 15:32:07', 'draft', NULL),
(183, NULL, 'a;fdsjaklfjlkasdjflkas 1243', 'shortname', 7, 1, 1, 1, 4, 1, 7, 1, 'Y', '', NULL, NULL, '2021-05-23 15:36:46', '2021-05-23 15:36:46', 'draft', NULL),
(184, NULL, 'a;fdsjaklfjlkasdjflkas1234', 'shortname', 5, 1, 1, 1, 4, 1, 7, 1, 'Y', '', NULL, NULL, '2021-05-23 15:41:59', '2021-05-23 15:41:59', 'draft', NULL),
(185, NULL, 'tehmeer', 'th', 5, 1, 1, 1, 4, 1, 7, 1, 'Y', '', NULL, NULL, '2021-05-23 15:46:42', '2021-05-23 15:46:42', 'draft', NULL),
(186, NULL, 'test one', 'to', 5, 1, 1, 1, 4, 1, 7, 1, 'Y', '', NULL, NULL, '2021-05-23 15:52:11', '2021-05-23 15:52:11', 'draft', NULL),
(187, NULL, 'tahmeer test', 'shortname', 5, 1, 1, 1, 4, 1, 7, 1, 'Y', '', NULL, NULL, '2021-05-23 15:55:36', '2021-05-23 15:55:36', 'draft', NULL),
(188, NULL, 'abc', 'ab', 5, 1, 1, 1, 4, 1, 7, 1, 'Y', '', NULL, NULL, '2021-05-23 15:57:16', '2021-05-23 15:57:16', 'draft', NULL),
(189, NULL, 'a;fdsjaklfjlkasdjflkasdfalsdfajsd asdfdsa564', 'teeest', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', '', NULL, NULL, '2021-05-23 16:01:51', '2021-05-23 16:01:51', 'draft', NULL),
(190, NULL, 'a;fdsjaklfjlkasdjflkas8989----', 'shortname', 5, 1, 1, 1, 4, 1, 7, 1, 'Y', '', NULL, NULL, '2021-05-23 16:04:19', '2021-05-23 16:04:19', 'draft', NULL),
(191, NULL, 'Sufi Shehzad', 'SS', 5, 1, 1, 1, 4, 1, 7, 1, 'Y', '', NULL, NULL, '2021-05-23 16:07:20', '2021-05-23 16:07:20', 'draft', NULL),
(192, NULL, 'new two', 'NT', 5, 1, 1, 1, 4, 1, 7, 1, 'Y', '', NULL, NULL, '2021-05-23 16:09:27', '2021-05-23 16:09:27', 'draft', NULL),
(193, NULL, 'new one nn', 'shortname', 7, 1, 1, 1, 4, 1, 7, 1, 'Y', '', NULL, NULL, '2021-05-23 16:11:47', '2021-05-23 16:11:47', 'draft', NULL),
(194, NULL, 'a;fdsjaklfjlkasdjflkaskkk', 'shortname', 7, 1, 1, 1, 4, 1, 7, 1, 'Y', '', NULL, NULL, '2021-05-23 16:14:01', '2021-05-23 16:15:36', 'draft', '23425'),
(195, NULL, 'test tehmeer one', 'tto', 5, 1, 1, 1, 4, 1, 7, 1, 'Y', '', NULL, NULL, '2021-05-23 16:39:16', '2021-05-23 16:39:16', 'draft', NULL),
(196, NULL, 'new one hj', 'shortname', 5, 1, 1, 1, 4, 1, 7, 1, 'Y', '', NULL, NULL, '2021-05-23 16:41:30', '2021-05-23 16:41:30', 'draft', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_19_110330_create_modules_table', 1),
(5, '2021_03_19_110402_create_pages_table', 1),
(6, '2021_03_19_110507_create_roles_table', 1),
(7, '2021_03_19_110654_create_role_permissions_table', 1),
(8, '2021_03_20_041051_role_users', 1),
(9, '2021_03_20_043455_create_branches_table', 1),
(10, '2021_03_20_043808_create_branches_users_table', 1),
(11, '2021_03_20_052247_create_students_table', 1),
(12, '2021_03_31_053609_create_t_clients_table', 2),
(14, '2021_03_31_063357_create_t_clients_auth_table', 3),
(15, '2021_04_17_070716_create_products_table', 4),
(16, '2021_04_19_125434_create_sectors_table', 4),
(17, '2021_04_19_125758_create_sub_sectors_table', 4),
(18, '2021_04_19_130253_create_sub_sector_descriptions_table', 4),
(19, '2021_04_20_052321_create_groups_table', 4),
(20, '2021_04_20_052505_create_legal_statuses_table', 4),
(21, '2021_04_20_152035_create_type_clients_table', 4),
(22, '2021_04_27_063852_create_linkentities_table', 4),
(23, '2021_04_27_064115_create_designations_table', 4),
(24, '2021_04_27_064434_create_cities_table', 4),
(25, '2021_04_27_064513_create_states_table', 4),
(26, '2021_04_27_065158_create_countries_table', 4),
(28, '2021_04_27_074355_create_actives_table', 4),
(29, '2021_04_27_084513_create_masterclients_table', 4),
(30, '2021_04_27_070524_create_addresses_table', 5),
(31, '2021_05_03_064511_create_service_lines_table', 6),
(32, '2021_05_03_070305_create_sub_service_lines_table', 7),
(33, '2021_05_03_190003_create_services_table', 8),
(36, '2021_05_05_063014_create_t_masterclients_table', 9),
(37, '2021_05_05_063235_create_t_addresses_table', 9),
(39, '2021_05_06_175216_create_t_branches_clients_table', 10),
(40, '2021_05_06_201915_create_currencies_table', 11),
(44, '2021_05_09_104616_create_d__master_clients_table', 12),
(45, '2021_05_09_105025_create_d__addresses_table', 12),
(46, '2021_05_09_122701_create_d__branches_table', 12),
(47, '2021_05_17_075615_create_paces_table', 13),
(50, '2021_05_17_120550_create_assqs_table', 14),
(51, '2021_05_17_120735_create_assqdescs_table', 15),
(52, '2021_05_17_121118_create_billing_forms_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `moduleName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IsActive` tinyint(1) DEFAULT 1,
  `ModuleOrder` int(11) NOT NULL DEFAULT 1,
  `ModuleIcon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `moduleName`, `IsActive`, `ModuleOrder`, `ModuleIcon`, `parentId`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 1, 1, NULL, NULL, NULL, NULL),
(2, 'Branch', 1, 2, NULL, NULL, NULL, NULL),
(3, 'Client', 1, 3, NULL, NULL, NULL, NULL),
(4, 'Static Maintenance', 1, 4, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `paces`
--

CREATE TABLE `paces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paces`
--

INSERT INTO `paces` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'pace 1', NULL, NULL),
(2, 'Pcae 2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `PageName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `pageUrl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PageOrder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IsActive` tinyint(1) DEFAULT NULL,
  `pageIcon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `showOnMenu` tinyint(1) NOT NULL DEFAULT 1,
  `ControllerName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `PageName`, `module_id`, `pageUrl`, `PageOrder`, `IsActive`, `pageIcon`, `showOnMenu`, `ControllerName`, `created_at`, `updated_at`) VALUES
(1, 'Role', 1, 'role', '1', 1, NULL, 1, 'Role', NULL, NULL),
(2, 'User', 1, 'User', '2', 1, NULL, 1, 'Home', NULL, NULL),
(3, 'Welcome', 1, 'Home', '3', 0, NULL, 0, 'Home', NULL, NULL),
(4, 'RolePermissions', 1, 'role.perm', '4', 1, NULL, 0, 'RolePermissions', NULL, NULL),
(5, 'Student', 2, 'student', '5', 0, NULL, 0, 'Student', NULL, NULL),
(6, 'Branch', 2, 'branches', '6', 1, NULL, 1, 'Branches', NULL, NULL),
(8, 'Register', 1, 'register', '7', 1, NULL, 1, 'Register', NULL, NULL),
(9, 'Client', 3, 'client', '8', 1, NULL, 0, 'TClient', NULL, NULL),
(10, 'Client Onboarding', 1, 'onboard', '9', 1, NULL, 1, 'ClientOnboarding', NULL, NULL),
(11, 'Sector', 4, 'sector', '10', 1, NULL, 1, 'Sector', NULL, NULL),
(12, 'Sub Sector', 4, 'subsector', '11', 1, NULL, 1, 'SubSector', NULL, NULL),
(13, 'Sub Sector Description', 4, 'secdescription', '12', 1, NULL, 1, 'SectorDescription', NULL, NULL),
(14, 'Legal Status', 4, 'legal', '13', 1, NULL, 1, 'LegalStatus', NULL, NULL),
(15, 'Group', 4, 'group', '14', 1, NULL, 1, 'Group', NULL, NULL),
(16, 'Client Type', 4, 'clienttype', '15', 1, NULL, 1, 'Client', NULL, NULL),
(17, 'Service Line', 4, 'serviceline', '16', 1, NULL, 1, 'ServiceLine', NULL, NULL),
(18, 'Sub Service Line', 4, 'subserviceline', '17', 1, NULL, 1, 'SubServiceLine', NULL, NULL),
(19, 'Services', 4, 'service', '18', 1, NULL, 1, 'Service', NULL, NULL),
(20, 'Currency', 4, 'currency', '19', 1, NULL, 1, 'Currency', NULL, NULL),
(21, 'Client Drafting', 1, 'draftpage', '20', 1, NULL, 0, 'ClientOnboarding', NULL, NULL),
(22, 'Billing Form', 1, 'billing', '21', 1, NULL, 1, 'Billing', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rolepermissions`
--

CREATE TABLE `rolepermissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Page_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `isEdit` tinyint(1) DEFAULT 0,
  `isView` tinyint(1) DEFAULT 0,
  `isDelete` tinyint(1) DEFAULT 0,
  `isAuthorize` tinyint(1) DEFAULT 0,
  `isVerify` tinyint(1) DEFAULT 0,
  `AuthorizeLimit` decimal(8,2) DEFAULT NULL,
  `VerifyLimit` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `isDeleted` tinyint(1) DEFAULT NULL,
  `isAdd` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rolepermissions`
--

INSERT INTO `rolepermissions` (`id`, `Page_id`, `role_id`, `isEdit`, `isView`, `isDelete`, `isAuthorize`, `isVerify`, `AuthorizeLimit`, `VerifyLimit`, `created_at`, `updated_at`, `isDeleted`, `isAdd`) VALUES
(22, 1, 4, 1, 1, 1, 1, 1, '1.00', '1.00', NULL, '2021-05-16 17:31:53', 0, 1),
(23, 2, 4, 1, 1, 1, 1, 1, '1.00', '1.00', NULL, '2021-05-16 17:31:53', NULL, 1),
(24, 3, 4, 1, 1, 1, 1, 1, '1.00', '1.00', NULL, '2021-05-16 17:31:53', NULL, 1),
(25, 4, 4, 1, 1, 1, 1, 1, '1.00', NULL, NULL, '2021-05-16 17:31:53', NULL, 1),
(26, 5, 4, 1, 1, 1, 1, 1, '1.00', NULL, NULL, '2021-05-16 17:31:53', NULL, 1),
(27, 6, 4, 1, 1, 1, 1, 1, '1.00', '1.00', NULL, '2021-05-16 17:31:53', NULL, 1),
(28, 8, 4, 1, 1, 1, 1, 1, NULL, NULL, '2021-03-30 09:39:08', '2021-05-16 17:31:53', NULL, 1),
(29, 9, 4, 1, 1, 1, 1, 1, '11.00', '1111.00', NULL, '2021-05-16 17:31:53', NULL, 1),
(30, 1, 5, 0, 0, 0, 0, 0, NULL, NULL, '2021-03-31 05:50:34', '2021-05-21 19:57:17', NULL, 0),
(31, 2, 5, 0, 0, 0, 0, 0, NULL, NULL, '2021-03-31 05:50:34', '2021-05-21 19:57:17', NULL, 0),
(32, 3, 5, 0, 0, 0, 0, 0, NULL, NULL, '2021-03-31 05:50:34', '2021-05-21 19:57:17', NULL, 0),
(33, 4, 5, 0, 0, 0, 0, 0, NULL, NULL, '2021-03-31 05:50:34', '2021-05-21 19:57:17', NULL, 0),
(34, 5, 5, 0, 0, 0, 0, 0, NULL, NULL, '2021-03-31 05:50:34', '2021-05-21 19:57:17', NULL, 0),
(35, 6, 5, 1, 1, 1, 0, 0, NULL, NULL, '2021-03-31 05:50:34', '2021-05-21 19:57:17', NULL, 1),
(36, 8, 5, 0, 0, 0, 0, 0, NULL, NULL, '2021-03-31 05:50:34', '2021-05-21 19:57:17', NULL, 0),
(37, 9, 5, 0, 1, 0, 0, 1, NULL, '100.00', '2021-03-31 05:50:34', '2021-05-21 19:57:17', NULL, 0),
(38, 1, 6, 1, 1, 1, 1, 1, NULL, NULL, '2021-04-01 01:58:03', '2021-05-10 16:10:28', NULL, 1),
(39, 2, 6, 0, 0, 0, 0, 0, NULL, NULL, '2021-04-01 01:58:03', '2021-05-10 16:10:28', NULL, 0),
(40, 3, 6, 0, 0, 0, 0, 0, NULL, NULL, '2021-04-01 01:58:03', '2021-05-10 16:10:28', NULL, 0),
(41, 4, 6, 0, 0, 0, 0, 0, NULL, NULL, '2021-04-01 01:58:03', '2021-05-10 16:10:28', NULL, 0),
(42, 5, 6, 0, 0, 0, 0, 0, NULL, NULL, '2021-04-01 01:58:03', '2021-05-10 16:10:28', NULL, 0),
(43, 6, 6, 0, 0, 0, 0, 0, NULL, NULL, '2021-04-01 01:58:03', '2021-05-10 16:10:28', NULL, 0),
(44, 8, 6, 0, 0, 0, 0, 0, NULL, NULL, '2021-04-01 01:58:03', '2021-05-10 16:10:28', NULL, 0),
(45, 9, 6, 1, 1, 1, 0, 0, '11.00', '16.00', '2021-04-01 01:58:03', '2021-05-10 16:10:28', NULL, 1),
(46, 10, 4, 1, 1, 1, 1, 1, NULL, NULL, '2021-04-27 16:57:35', '2021-05-16 17:31:53', NULL, 1),
(47, 11, 4, 1, 1, 1, 1, 1, NULL, NULL, '2021-05-03 12:28:01', '2021-05-16 17:31:53', NULL, 1),
(48, 12, 4, 1, 1, 1, 1, 1, NULL, NULL, '2021-05-03 12:28:01', '2021-05-16 17:31:53', NULL, 1),
(49, 13, 4, 1, 1, 1, 1, 1, NULL, NULL, '2021-05-03 12:28:01', '2021-05-16 17:31:53', NULL, 1),
(50, 14, 4, 1, 1, 1, 1, 1, NULL, NULL, '2021-05-03 12:28:01', '2021-05-16 17:31:53', NULL, 1),
(51, 15, 4, 1, 1, 1, 1, 1, NULL, NULL, '2021-05-03 12:28:01', '2021-05-16 17:31:53', NULL, 1),
(52, 16, 4, 1, 1, 1, 1, 1, NULL, NULL, '2021-05-03 12:46:02', '2021-05-16 17:31:53', NULL, 1),
(53, 17, 4, 1, 1, 1, 1, 1, NULL, NULL, '2021-05-03 13:59:01', '2021-05-16 17:31:54', NULL, 1),
(54, 18, 4, 1, 1, 1, 1, 1, NULL, NULL, '2021-05-03 14:23:02', '2021-05-16 17:31:54', NULL, 1),
(55, 19, 4, 1, 1, 1, 1, 1, NULL, NULL, '2021-05-04 13:05:49', '2021-05-16 17:31:54', NULL, 1),
(56, 10, 6, 1, 1, 1, 0, 0, NULL, NULL, '2021-05-04 16:24:34', '2021-05-10 16:10:28', NULL, 0),
(57, 11, 6, 0, 0, 0, 0, 0, NULL, NULL, '2021-05-04 16:24:34', '2021-05-10 16:10:28', NULL, 0),
(58, 12, 6, 0, 0, 0, 0, 0, NULL, NULL, '2021-05-04 16:24:34', '2021-05-10 16:10:28', NULL, 0),
(59, 13, 6, 0, 0, 0, 0, 0, NULL, NULL, '2021-05-04 16:24:34', '2021-05-10 16:10:28', NULL, 0),
(60, 14, 6, 0, 0, 0, 0, 0, NULL, NULL, '2021-05-04 16:24:34', '2021-05-10 16:10:28', NULL, 0),
(61, 15, 6, 0, 0, 0, 0, 0, NULL, NULL, '2021-05-04 16:24:34', '2021-05-10 16:10:28', NULL, 0),
(62, 16, 6, 0, 0, 0, 0, 0, NULL, NULL, '2021-05-04 16:24:34', '2021-05-10 16:10:28', NULL, 0),
(63, 17, 6, 0, 0, 0, 0, 0, NULL, NULL, '2021-05-04 16:24:34', '2021-05-10 16:10:28', NULL, 0),
(64, 18, 6, 0, 0, 0, 0, 0, NULL, NULL, '2021-05-04 16:24:34', '2021-05-10 16:10:28', NULL, 0),
(65, 19, 6, 0, 0, 0, 0, 0, NULL, NULL, '2021-05-04 16:24:34', '2021-05-10 16:10:28', NULL, 0),
(66, 20, 4, 1, 1, 1, 1, 1, NULL, NULL, '2021-05-07 03:48:01', '2021-05-16 17:31:54', NULL, 1),
(67, 20, 6, 0, 0, 0, 0, 0, NULL, NULL, '2021-05-10 16:10:28', '2021-05-10 16:10:28', NULL, 0),
(68, 21, 4, 1, 1, 1, 0, 0, NULL, NULL, '2021-05-10 17:27:20', '2021-05-16 17:31:54', NULL, 1),
(69, 22, 4, 1, 1, 1, 1, 1, NULL, NULL, '2021-05-16 17:31:54', '2021-05-16 17:31:54', NULL, 1),
(70, 10, 5, 1, 1, 1, 0, 0, NULL, NULL, '2021-05-21 19:56:47', '2021-05-21 19:57:17', NULL, 1),
(71, 11, 5, 0, 0, 0, 0, 0, NULL, NULL, '2021-05-21 19:56:47', '2021-05-21 19:57:17', NULL, 0),
(72, 12, 5, 0, 0, 0, 0, 0, NULL, NULL, '2021-05-21 19:56:47', '2021-05-21 19:57:17', NULL, 0),
(73, 13, 5, 0, 0, 0, 0, 0, NULL, NULL, '2021-05-21 19:56:47', '2021-05-21 19:57:17', NULL, 0),
(74, 14, 5, 0, 0, 0, 0, 0, NULL, NULL, '2021-05-21 19:56:47', '2021-05-21 19:57:17', NULL, 0),
(75, 15, 5, 0, 0, 0, 0, 0, NULL, NULL, '2021-05-21 19:56:47', '2021-05-21 19:57:17', NULL, 0),
(76, 16, 5, 0, 0, 0, 0, 0, NULL, NULL, '2021-05-21 19:56:47', '2021-05-21 19:57:17', NULL, 0),
(77, 17, 5, 0, 0, 0, 0, 0, NULL, NULL, '2021-05-21 19:56:47', '2021-05-21 19:57:17', NULL, 0),
(78, 18, 5, 0, 0, 0, 0, 0, NULL, NULL, '2021-05-21 19:56:47', '2021-05-21 19:57:17', NULL, 0),
(79, 19, 5, 0, 0, 0, 0, 0, NULL, NULL, '2021-05-21 19:56:47', '2021-05-21 19:57:17', NULL, 0),
(80, 20, 5, 0, 0, 0, 0, 0, NULL, NULL, '2021-05-21 19:56:47', '2021-05-21 19:57:17', NULL, 0),
(81, 21, 5, 0, 0, 0, 0, 0, NULL, NULL, '2021-05-21 19:56:47', '2021-05-21 19:57:17', NULL, 0),
(82, 22, 5, 0, 0, 0, 0, 0, NULL, NULL, '2021-05-21 19:56:47', '2021-05-21 19:57:17', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `RoleName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `created_By` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_By` bigint(20) UNSIGNED DEFAULT NULL,
  `status` bigint(10) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `RoleName`, `isActive`, `created_By`, `updated_By`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Admin', 1, NULL, NULL, 1, NULL, NULL),
(5, 'Supervisor', 1, 1, NULL, 1, '2021-03-31 00:30:22', '2021-03-31 00:30:22'),
(6, 'Employee', 1, 1, NULL, 1, '2021-04-01 01:55:41', '2021-04-01 01:55:41');

-- --------------------------------------------------------

--
-- Table structure for table `roleusers`
--

CREATE TABLE `roleusers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roleusers`
--

INSERT INTO `roleusers` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 4, 1, NULL, NULL),
(2, 5, 2, '2021-03-31 05:51:46', '2021-03-31 05:51:46'),
(3, 6, 3, '2021-04-01 01:59:30', '2021-04-01 01:59:30'),
(4, 4, 4, '2021-04-27 16:53:44', '2021-04-27 16:53:44'),
(5, 5, 5, '2021-04-29 22:36:41', '2021-04-29 22:36:41'),
(6, 6, 6, '2021-05-03 18:42:39', '2021-05-03 18:42:39'),
(7, 4, 7, '2021-05-03 20:12:12', '2021-05-03 20:12:12'),
(8, 4, 8, '2021-05-03 20:14:31', '2021-05-03 20:14:31'),
(9, 5, 9, '2021-05-04 16:25:26', '2021-05-04 16:25:26'),
(10, 6, 10, '2021-05-05 15:48:52', '2021-05-05 15:48:52'),
(11, 4, 11, '2021-05-09 03:08:44', '2021-05-09 03:08:44'),
(12, 6, 12, '2021-05-23 08:07:40', '2021-05-23 08:07:40'),
(13, 5, 13, '2021-05-23 08:42:09', '2021-05-23 08:42:09');

-- --------------------------------------------------------

--
-- Table structure for table `sectors`
--

CREATE TABLE `sectors` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` bigint(10) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sectors`
--

INSERT INTO `sectors` (`id`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sector one', 1, NULL, NULL),
(2, 'Sector Two', 1, NULL, '2021-05-07 04:40:02'),
(7, 'Sector Three', 1, '2021-05-08 14:02:31', '2021-05-08 14:02:31');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serviceline_id` bigint(20) UNSIGNED NOT NULL,
  `subserviceline_id` bigint(20) UNSIGNED NOT NULL,
  `status` bigint(10) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `description`, `serviceline_id`, `subserviceline_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'thiss isna', 1, 3, 0, '2021-05-04 13:19:41', '2021-05-07 03:58:29'),
(2, 'adfadsf456', 3, 7, 1, '2021-05-04 13:23:17', '2021-05-07 06:28:39'),
(3, 'asfcX', 1, 2, 0, '2021-05-04 13:29:15', '2021-05-04 13:29:19'),
(4, 'fred', 1, 2, 0, '2021-05-04 14:59:00', '2021-05-04 14:59:05'),
(5, 'test one two', 1, 2, 0, '2021-05-04 16:08:00', '2021-05-04 16:08:25'),
(6, 'Sub Service Under First', 1, 3, 0, '2021-05-07 04:04:54', '2021-05-07 04:05:02'),
(7, 'This Is New', 1, 3, 0, '2021-05-08 13:52:25', '2021-05-08 13:52:45');

-- --------------------------------------------------------

--
-- Table structure for table `service_lines`
--

CREATE TABLE `service_lines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_lines`
--

INSERT INTO `service_lines` (`id`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'First', 1, '2021-05-03 14:00:19', '2021-05-03 14:00:19'),
(2, 'adsfadsfads', 1, '2021-05-03 18:43:40', '2021-05-03 18:43:40'),
(3, 'ljlksdf', 1, '2021-05-04 16:11:13', '2021-05-08 13:50:44'),
(4, 'Sub Service Under First', 1, '2021-05-07 13:06:56', '2021-05-07 13:06:56');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `city_id`, `country_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sindh', 1, 1, 1, NULL, NULL),
(3, 'Punjab', 2, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `address`, `email`, `created_at`, `updated_at`) VALUES
(1, 'shahrukh', 'jna?aks', 'shahrukh@gmail.com', '2021-03-30 23:50:49', '2021-03-30 23:50:49');

-- --------------------------------------------------------

--
-- Table structure for table `sub_sectors`
--

CREATE TABLE `sub_sectors` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sector_id` int(10) UNSIGNED NOT NULL,
  `status` bigint(10) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_sectors`
--

INSERT INTO `sub_sectors` (`id`, `description`, `sector_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sub Sector One 1!!', 1, 1, NULL, '2021-05-04 13:28:18'),
(2, 'Sub Sector 2 asdfasdf', 2, 0, NULL, '2021-05-03 20:23:54'),
(4, 'Sub Sector 2 g', 2, 0, '2021-05-04 13:28:40', '2021-05-04 16:20:22'),
(5, 'asdfadsf', 1, 1, '2021-05-04 16:20:37', '2021-05-04 16:48:23'),
(6, 'New One', 1, 0, '2021-05-07 04:41:13', '2021-05-07 04:41:19'),
(7, 'Sub Service First', 1, 1, '2021-05-08 14:01:33', '2021-05-08 14:01:46');

-- --------------------------------------------------------

--
-- Table structure for table `sub_sector_descriptions`
--

CREATE TABLE `sub_sector_descriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `sector_id` int(10) UNSIGNED NOT NULL,
  `subsector_id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` bigint(10) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_sector_descriptions`
--

INSERT INTO `sub_sector_descriptions` (`id`, `sector_id`, `subsector_id`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'This is An Awesome', 1, NULL, '2021-05-03 20:39:43'),
(2, 2, 1, 'This is Wonderfull', 0, NULL, '2021-05-04 16:20:53'),
(3, 2, 2, 'adfadsfads', 0, '2021-05-03 18:45:22', '2021-05-03 20:30:52'),
(4, 1, 1, 'This is for test', 0, '2021-05-03 20:35:14', '2021-05-03 20:37:12'),
(5, 1, 5, 'This for Abu Bakar', 1, '2021-05-04 16:21:12', '2021-05-04 16:21:26'),
(6, 1, 5, 'Third', 0, '2021-05-07 04:06:09', '2021-05-07 04:40:53'),
(7, 2, 2, 'Forth', 0, '2021-05-07 04:12:54', '2021-05-07 04:13:11');

-- --------------------------------------------------------

--
-- Table structure for table `sub_service_lines`
--

CREATE TABLE `sub_service_lines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serviceline_id` bigint(20) UNSIGNED NOT NULL,
  `status` bigint(10) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_service_lines`
--

INSERT INTO `sub_service_lines` (`id`, `description`, `serviceline_id`, `status`, `created_at`, `updated_at`) VALUES
(2, 'adfadsf34', 1, 1, '2021-05-03 18:44:06', '2021-05-03 20:40:24'),
(3, 'dsakfjadskl', 1, 1, '2021-05-04 16:10:28', '2021-05-04 16:10:28'),
(4, 'dsakfjadskl', 1, 1, '2021-05-04 16:10:28', '2021-05-04 16:10:28'),
(5, 'asdkljfalksdjflkasdj', 1, 1, '2021-05-04 16:10:48', '2021-05-04 16:10:48'),
(6, 'Awesome', 2, 1, '2021-05-07 03:59:05', '2021-05-07 04:14:08'),
(7, 'Again', 3, 1, '2021-05-07 04:27:14', '2021-05-07 04:27:14'),
(8, 'Next', 1, 1, '2021-05-07 05:14:22', '2021-05-07 05:14:22');

-- --------------------------------------------------------

--
-- Table structure for table `type_clients`
--

CREATE TABLE `type_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` bigint(10) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `type_clients`
--

INSERT INTO `type_clients` (`id`, `Type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'International jlkjlk', 0, NULL, '2021-05-04 16:47:06'),
(2, 'Local', 0, NULL, '2021-05-07 04:11:50'),
(4, 'aslkdjfalsdkf', 0, '2021-05-04 16:12:09', '2021-05-04 22:42:36'),
(5, 'International', 1, '2021-05-07 04:11:45', '2021-05-07 04:11:45'),
(6, 'Local', 0, '2021-05-07 04:39:05', '2021-05-07 04:39:18'),
(7, 'Local', 1, '2021-05-08 13:54:00', '2021-05-08 13:54:09'),
(8, 'Provisional', 0, '2021-05-08 13:54:33', '2021-05-08 13:54:35');

-- --------------------------------------------------------

--
-- Table structure for table `t_addresses`
--

CREATE TABLE `t_addresses` (
  `id` int(11) NOT NULL,
  `add_line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_line3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postalcode` int(10) UNSIGNED DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `state_id` int(10) UNSIGNED DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `saletax` decimal(9,4) DEFAULT NULL,
  `masterclient_id` int(10) UNSIGNED DEFAULT NULL,
  `NTN` blob DEFAULT NULL,
  `defaultbtn` tinyint(4) DEFAULT NULL,
  `auth_status` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_status` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_addresses`
--

INSERT INTO `t_addresses` (`id`, `add_line1`, `add_line2`, `add_line3`, `postalcode`, `country_id`, `state_id`, `city_id`, `saletax`, `masterclient_id`, `NTN`, `defaultbtn`, `auth_status`, `verify_status`, `created_at`, `updated_at`) VALUES
(31, 'Karachi', 'G Area', 'House 345', 74900, 1, 1, 1, '34.6700', 110, 0x433a5c78616d70705c746d705c706870373139312e746d70, 0, '', 'E', '2021-05-06 15:48:01', '2021-05-06 16:28:09'),
(32, 'asdfasd', 'adsfasd', 'j kl', 74900, 1, 3, 2, '87.0000', 110, 0x433a5c78616d70705c746d705c706870373139322e746d70, 1, '', 'E', '2021-05-06 15:48:01', '2021-05-06 16:28:09'),
(62, 'Karachi', 'G Area', 'House 345', 74900, 1, 3, 2, '23.5400', 113, 0x433a5c78616d70705c746d705c706870423934312e746d70, 0, '', 'Y', '2021-05-06 22:41:31', '2021-05-06 22:41:31'),
(63, 'G Area', 'House 345', 'j kl', 74900, 1, 3, 2, '87.0000', 113, 0x433a5c78616d70705c746d705c706870423934322e746d70, 1, '', 'Y', '2021-05-06 22:41:31', '2021-05-06 22:41:31');

-- --------------------------------------------------------

--
-- Table structure for table `t_branches_clients`
--

CREATE TABLE `t_branches_clients` (
  `id` bigint(20) DEFAULT NULL,
  `branches_id` bigint(20) UNSIGNED DEFAULT NULL,
  `masterclient_id` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_clients`
--

CREATE TABLE `t_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billAmount` decimal(8,2) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `supervise_time` datetime DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `supervise_by` bigint(20) UNSIGNED DEFAULT NULL,
  `auth_status` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_status` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_clients`
--

INSERT INTO `t_clients` (`id`, `name`, `billAmount`, `created_by`, `supervise_time`, `updated_by`, `supervise_by`, `auth_status`, `verify_status`, `created_at`, `updated_at`) VALUES
(12, 'Umer', '12.00', 3, '2021-04-01 10:31:40', NULL, 1, NULL, 'Y', '2021-04-01 05:54:30', '2021-04-01 05:31:40'),
(13, 'Bamsi Alp', '13.00', 3, '2021-04-01 14:41:36', 3, 1, NULL, 'Y', '2021-04-01 03:57:42', '2021-04-01 09:41:36'),
(14, 'Dogan', '88.00', 3, '2021-04-01 11:16:50', NULL, 1, NULL, 'Y', '2021-04-01 06:11:13', '2021-04-01 06:16:50'),
(15, 'checking', '2112.00', 3, NULL, NULL, NULL, 'A', '', '2021-04-01 06:11:54', NULL),
(16, 'eidabali', '33.00', 3, '2021-04-01 11:53:37', NULL, 1, NULL, 'Y', '2021-04-01 06:13:59', '2021-04-01 06:53:37'),
(17, 'frhann', '93.00', 3, NULL, 3, NULL, 'D', '', '2021-04-01 06:15:39', '2021-04-01 06:54:41'),
(18, 'Abdur Rehman', '9922.00', 3, '2021-04-01 14:42:52', NULL, 2, 'A', 'Y', '2021-04-01 09:42:38', '2021-04-01 09:42:52');

-- --------------------------------------------------------

--
-- Table structure for table `t_clients_auths`
--

CREATE TABLE `t_clients_auths` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billAmount` decimal(8,2) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `supervise_time` datetime DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `supervise_by` bigint(20) UNSIGNED DEFAULT NULL,
  `auth_status` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_status` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_clients_auths`
--

INSERT INTO `t_clients_auths` (`id`, `name`, `billAmount`, `created_by`, `supervise_time`, `updated_by`, `supervise_by`, `auth_status`, `verify_status`, `created_at`, `updated_at`) VALUES
(10, 'Abdur Rehman', '3140.00', 3, '2021-04-01 07:51:38', 3, 2, 'E', '', '2021-04-01 03:23:56', '2021-04-01 03:45:10'),
(15, 'checking', '2112.00', 3, NULL, NULL, NULL, 'A', '', '2021-04-01 06:11:54', NULL),
(17, 'frhann', '93.00', 3, NULL, NULL, NULL, 'A', '', '2021-04-01 06:15:39', NULL),
(18, 'Abdur Rehman', '9922.00', 3, NULL, NULL, NULL, 'A', '', '2021-04-01 09:42:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_masterclients`
--

CREATE TABLE `t_masterclients` (
  `id` int(11) DEFAULT NULL,
  `clientcode` int(10) UNSIGNED DEFAULT NULL,
  `clientname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_client_id` int(10) UNSIGNED DEFAULT NULL,
  `sector_id` int(10) UNSIGNED DEFAULT NULL,
  `subsector_id` int(10) UNSIGNED DEFAULT NULL,
  `subsecdes_id` int(10) UNSIGNED DEFAULT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `status_id` int(10) UNSIGNED DEFAULT NULL,
  `active_id` int(10) UNSIGNED DEFAULT NULL,
  `auth_status` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_status` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_masterclients`
--

INSERT INTO `t_masterclients` (`id`, `clientcode`, `clientname`, `shortname`, `type_client_id`, `sector_id`, `subsector_id`, `subsecdes_id`, `group_id`, `entity_id`, `branch_id`, `status_id`, `active_id`, `auth_status`, `verify_status`, `created_at`, `updated_at`) VALUES
(110, NULL, 'Ubaid Alam', 'Alam gfvh', 1, 1, 5, 5, 2, 1, NULL, 1, 1, '', 'Y', '2021-05-06 02:09:27', '2021-05-06 16:28:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picGuide` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picPath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT 1,
  `isDeleted` tinyint(1) DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` bigint(10) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Name`, `email`, `email_verified_at`, `password`, `picName`, `picGuide`, `picPath`, `isActive`, `isDeleted`, `created_by`, `updated_by`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Shoaib Ahmed', 'mr.shoaibmuneer.ahmed@gmail.com', NULL, '$2y$10$E3ymZKRtiet4nVRJPTkNyuPOW8ZJJ9MxZpejIOxNUsd2XpHc0i0qe', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 1, '2021-03-30 08:15:51', '2021-03-30 08:15:51'),
(2, 'Zahid Tunio shair', 'zahid@gmail.com', NULL, '1234', NULL, NULL, NULL, 1, 0, 1, NULL, NULL, 1, '2021-03-31 05:51:46', '2021-05-04 14:06:11'),
(3, 'Shoaib Employee', 'shoaib@gmail.com', NULL, '$2y$10$folsMSYkjoQD7Lc3U6/hxeIyMwFz6dJIlYdrIZJmORGZQL7Y0kU4y', NULL, NULL, NULL, 1, 0, 1, NULL, NULL, 1, '2021-04-01 01:59:30', '2021-04-01 01:59:30'),
(4, 'Tahmeer', 'tahmeer@gmail.com', NULL, '$2y$10$TiDJl9PiGIOahyBhRuRIEuApAnFxIF5mElcPyP0cKFMVBNOZwz0vC', NULL, NULL, NULL, 1, 0, 1, NULL, NULL, 1, '2021-04-27 16:53:44', '2021-04-27 16:53:44'),
(5, 'Faizan', 'faizan@gmail.com', NULL, '$2y$10$mcuJTZb0EfIsJ7n.EH0sjuM56cniE0uUyZ4Pryrl6YYi5P.nDh1rq', NULL, NULL, NULL, 1, 0, 4, NULL, NULL, 0, '2021-04-29 22:36:41', '2021-05-04 14:17:55'),
(6, 'Abu Bakar', 'tahmeerhussain1@gmail.com', NULL, '$2y$10$uLEtYz4T3R8Ag.4HRxk10.QR.H6nAiyrhWW9HTWgguBi5eveuoOjS', NULL, NULL, NULL, 1, 0, 4, NULL, NULL, 0, '2021-05-03 18:42:39', '2021-05-04 14:14:39'),
(7, 'Sufyan', 'sufyan@gmail.com', NULL, '$2y$10$rigeU3PriaGfDyA1QK.tx.fwhzw8/RF8Y2/C74eJfBVwyVeLnCDG.', NULL, NULL, NULL, 1, 0, 4, NULL, NULL, 1, '2021-05-03 20:12:12', '2021-05-03 20:12:12'),
(8, 'Adan jkfjdkf', 'adan@gmail.com', NULL, '123456', NULL, NULL, NULL, 1, 0, 4, NULL, NULL, 0, '2021-05-03 20:14:31', '2021-05-04 16:23:47'),
(9, 'sufyan', 'sufyan@yahoo.com', NULL, '$2y$10$KKek/V022HzDleGQhsg7pOX9/TET82qHfRR/WdacWj6ypQpgeXshm', NULL, NULL, NULL, 1, 0, 4, NULL, NULL, 1, '2021-05-04 16:25:26', '2021-05-04 16:25:26'),
(10, 'shayan', 'shayan@gmail.com', NULL, '$2y$10$hLqnq8Ytjvf8AK/kpk.WzubNDBDYPGQZynRKIL6j8DYnk9/gR4Ety', NULL, NULL, NULL, 1, 0, 4, NULL, NULL, 1, '2021-05-05 15:48:52', '2021-05-05 15:48:52'),
(11, 'EY Admin', 'admin@pk.ey.com', NULL, '$2y$10$oHA1vNv9xudeJnrlhhWms.y9zka3dUZvabLeD0w5HAIm6zcq8ddPO', NULL, NULL, NULL, 1, 0, 4, NULL, NULL, 1, '2021-05-09 03:08:44', '2021-05-09 03:08:44'),
(12, 'Asad', 'asad@gmail.com', NULL, '$2y$10$h9EpqgbMl9eXdd4ad/c47OBdeVZvZODl96eBozORWputmewN9AHxO', NULL, NULL, NULL, 1, 0, 4, NULL, NULL, 1, '2021-05-23 08:07:40', '2021-05-23 08:07:40'),
(13, 'Arsalan', 'arsalan@gmail.com', NULL, '$2y$10$Yv6Rr0Ez.1sJWCIuh/7uiO2AE0t7AF7fcN7angqUs6EVPD6IvcCAS', NULL, NULL, NULL, 1, 0, 4, NULL, NULL, 1, '2021-05-23 08:42:09', '2021-05-23 08:42:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actives`
--
ALTER TABLE `actives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_country_id_foreign` (`country_id`),
  ADD KEY `addresses_state_id_foreign` (`state_id`),
  ADD KEY `addresses_city_id_foreign` (`city_id`),
  ADD KEY `addresses_masterclient_id_foreign` (`masterclient_id`);

--
-- Indexes for table `assqdescs`
--
ALTER TABLE `assqdescs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assqdescs_assq_id_foreign` (`assq_id`);

--
-- Indexes for table `assqs`
--
ALTER TABLE `assqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing_forms`
--
ALTER TABLE `billing_forms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `billing_forms_pace_id_foreign` (`pace_id`),
  ADD KEY `billing_forms_assq_id_foreign` (`assq_id`),
  ADD KEY `billing_forms_assqdesc_id_foreign` (`assqdesc_id`),
  ADD KEY `billing_forms_branches_id_foreign` (`branches_id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches_users`
--
ALTER TABLE `branches_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branches_users_branches_id_foreign` (`branches_id`),
  ADD KEY `branches_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `branch_client`
--
ALTER TABLE `branch_client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branches_id` (`branches_id`),
  ADD KEY `masterclient_id` (`masterclient_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `client_attachments`
--
ALTER TABLE `client_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_state_id_foreign` (`state_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d__addresses`
--
ALTER TABLE `d__addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d__master_clients`
--
ALTER TABLE `d__master_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `legal_statuses`
--
ALTER TABLE `legal_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `linkentities`
--
ALTER TABLE `linkentities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masterclients`
--
ALTER TABLE `masterclients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clientcode` (`clientcode`),
  ADD UNIQUE KEY `clientname` (`clientname`),
  ADD KEY `masterclients_type_client_id_foreign` (`type_client_id`),
  ADD KEY `masterclients_sector_id_foreign` (`sector_id`),
  ADD KEY `masterclients_subsector_id_foreign` (`subsector_id`),
  ADD KEY `masterclients_subsecdes_id_foreign` (`subsecdes_id`),
  ADD KEY `masterclients_group_id_foreign` (`group_id`),
  ADD KEY `masterclients_entity_id_foreign` (`entity_id`),
  ADD KEY `masterclients_status_id_foreign` (`status_id`),
  ADD KEY `masterclients_active_id_foreign` (`active_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paces`
--
ALTER TABLE `paces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_moduleid_foreign` (`module_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rolepermissions`
--
ALTER TABLE `rolepermissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rolepermissions_page_id_foreign` (`Page_id`),
  ADD KEY `rolepermissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_created_by_foreign` (`created_By`),
  ADD KEY `roles_updated_by_foreign` (`updated_By`);

--
-- Indexes for table `roleusers`
--
ALTER TABLE `roleusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roleusers_role_id_foreign` (`role_id`),
  ADD KEY `roleusers_user_id_foreign` (`user_id`);

--
-- Indexes for table `sectors`
--
ALTER TABLE `sectors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_serviceline_id_foreign` (`serviceline_id`),
  ADD KEY `services_subserviceline_id_foreign` (`subserviceline_id`);

--
-- Indexes for table `service_lines`
--
ALTER TABLE `service_lines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_sectors`
--
ALTER TABLE `sub_sectors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_sectors_sector_id_foreign` (`sector_id`);

--
-- Indexes for table `sub_sector_descriptions`
--
ALTER TABLE `sub_sector_descriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_sector_descriptions_sector_id_foreign` (`sector_id`),
  ADD KEY `sub_sector_descriptions_subsector_id_foreign` (`subsector_id`);

--
-- Indexes for table `sub_service_lines`
--
ALTER TABLE `sub_service_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_service_lines_serviceline_id_foreign` (`serviceline_id`);

--
-- Indexes for table `type_clients`
--
ALTER TABLE `type_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_addresses`
--
ALTER TABLE `t_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_clients`
--
ALTER TABLE `t_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `t_clients_created_by_foreign` (`created_by`),
  ADD KEY `t_clients_updated_by_foreign` (`updated_by`),
  ADD KEY `t_clients_supervise_by_foreign` (`supervise_by`);

--
-- Indexes for table `t_clients_auths`
--
ALTER TABLE `t_clients_auths`
  ADD PRIMARY KEY (`id`),
  ADD KEY `t_clients_auths_created_by_foreign` (`created_by`),
  ADD KEY `t_clients_auths_updated_by_foreign` (`updated_by`),
  ADD KEY `t_clients_auths_supervise_by_foreign` (`supervise_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actives`
--
ALTER TABLE `actives`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `assqdescs`
--
ALTER TABLE `assqdescs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assqs`
--
ALTER TABLE `assqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `billing_forms`
--
ALTER TABLE `billing_forms`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `branches_users`
--
ALTER TABLE `branches_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `branch_client`
--
ALTER TABLE `branch_client`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `client_attachments`
--
ALTER TABLE `client_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d__addresses`
--
ALTER TABLE `d__addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `d__master_clients`
--
ALTER TABLE `d__master_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `legal_statuses`
--
ALTER TABLE `legal_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `linkentities`
--
ALTER TABLE `linkentities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `masterclients`
--
ALTER TABLE `masterclients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `paces`
--
ALTER TABLE `paces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rolepermissions`
--
ALTER TABLE `rolepermissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roleusers`
--
ALTER TABLE `roleusers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sectors`
--
ALTER TABLE `sectors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `service_lines`
--
ALTER TABLE `service_lines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_sectors`
--
ALTER TABLE `sub_sectors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sub_sector_descriptions`
--
ALTER TABLE `sub_sector_descriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sub_service_lines`
--
ALTER TABLE `sub_service_lines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `type_clients`
--
ALTER TABLE `type_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `t_clients`
--
ALTER TABLE `t_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `addresses_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `addresses_masterclient_id_foreign` FOREIGN KEY (`masterclient_id`) REFERENCES `masterclients` (`id`),
  ADD CONSTRAINT `addresses_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`);

--
-- Constraints for table `assqdescs`
--
ALTER TABLE `assqdescs`
  ADD CONSTRAINT `assqdescs_assq_id_foreign` FOREIGN KEY (`assq_id`) REFERENCES `assqs` (`id`);

--
-- Constraints for table `billing_forms`
--
ALTER TABLE `billing_forms`
  ADD CONSTRAINT `billing_forms_assq_id_foreign` FOREIGN KEY (`assq_id`) REFERENCES `assqs` (`id`),
  ADD CONSTRAINT `billing_forms_assqdesc_id_foreign` FOREIGN KEY (`assqdesc_id`) REFERENCES `assqdescs` (`id`),
  ADD CONSTRAINT `billing_forms_branches_id_foreign` FOREIGN KEY (`branches_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `billing_forms_pace_id_foreign` FOREIGN KEY (`pace_id`) REFERENCES `paces` (`id`);

--
-- Constraints for table `branches_users`
--
ALTER TABLE `branches_users`
  ADD CONSTRAINT `branches_users_branches_id_foreign` FOREIGN KEY (`branches_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `branches_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `branch_client`
--
ALTER TABLE `branch_client`
  ADD CONSTRAINT `branch_client_ibfk_1` FOREIGN KEY (`branches_id`) REFERENCES `branches` (`id`),
  ADD CONSTRAINT `branch_client_ibfk_2` FOREIGN KEY (`masterclient_id`) REFERENCES `masterclients` (`id`);

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`);

--
-- Constraints for table `countries`
--
ALTER TABLE `countries`
  ADD CONSTRAINT `countries_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`);

--
-- Constraints for table `masterclients`
--
ALTER TABLE `masterclients`
  ADD CONSTRAINT `masterclients_active_id_foreign` FOREIGN KEY (`active_id`) REFERENCES `actives` (`id`),
  ADD CONSTRAINT `masterclients_entity_id_foreign` FOREIGN KEY (`entity_id`) REFERENCES `linkentities` (`id`),
  ADD CONSTRAINT `masterclients_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`),
  ADD CONSTRAINT `masterclients_sector_id_foreign` FOREIGN KEY (`sector_id`) REFERENCES `sectors` (`id`),
  ADD CONSTRAINT `masterclients_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `legal_statuses` (`id`),
  ADD CONSTRAINT `masterclients_subsecdes_id_foreign` FOREIGN KEY (`subsecdes_id`) REFERENCES `sub_sector_descriptions` (`id`),
  ADD CONSTRAINT `masterclients_subsector_id_foreign` FOREIGN KEY (`subsector_id`) REFERENCES `sub_sectors` (`id`),
  ADD CONSTRAINT `masterclients_type_client_id_foreign` FOREIGN KEY (`type_client_id`) REFERENCES `type_clients` (`id`);

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_moduleid_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`);

--
-- Constraints for table `rolepermissions`
--
ALTER TABLE `rolepermissions`
  ADD CONSTRAINT `rolepermissions_page_id_foreign` FOREIGN KEY (`Page_id`) REFERENCES `pages` (`id`),
  ADD CONSTRAINT `rolepermissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_created_by_foreign` FOREIGN KEY (`created_By`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `roles_updated_by_foreign` FOREIGN KEY (`updated_By`) REFERENCES `users` (`id`);

--
-- Constraints for table `roleusers`
--
ALTER TABLE `roleusers`
  ADD CONSTRAINT `roleusers_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `roleusers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_serviceline_id_foreign` FOREIGN KEY (`serviceline_id`) REFERENCES `service_lines` (`id`),
  ADD CONSTRAINT `services_subserviceline_id_foreign` FOREIGN KEY (`subserviceline_id`) REFERENCES `sub_service_lines` (`id`);

--
-- Constraints for table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `states_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `states_ibfk_2` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`);

--
-- Constraints for table `sub_sectors`
--
ALTER TABLE `sub_sectors`
  ADD CONSTRAINT `sub_sectors_sector_id_foreign` FOREIGN KEY (`sector_id`) REFERENCES `sectors` (`id`);

--
-- Constraints for table `sub_sector_descriptions`
--
ALTER TABLE `sub_sector_descriptions`
  ADD CONSTRAINT `sub_sector_descriptions_sector_id_foreign` FOREIGN KEY (`sector_id`) REFERENCES `sectors` (`id`),
  ADD CONSTRAINT `sub_sector_descriptions_subsector_id_foreign` FOREIGN KEY (`subsector_id`) REFERENCES `sub_sectors` (`id`);

--
-- Constraints for table `sub_service_lines`
--
ALTER TABLE `sub_service_lines`
  ADD CONSTRAINT `sub_service_lines_serviceline_id_foreign` FOREIGN KEY (`serviceline_id`) REFERENCES `service_lines` (`id`);

--
-- Constraints for table `t_clients`
--
ALTER TABLE `t_clients`
  ADD CONSTRAINT `t_clients_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `t_clients_supervise_by_foreign` FOREIGN KEY (`supervise_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `t_clients_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `t_clients_auths`
--
ALTER TABLE `t_clients_auths`
  ADD CONSTRAINT `t_clients_auths_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `t_clients_auths_supervise_by_foreign` FOREIGN KEY (`supervise_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `t_clients_auths_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
