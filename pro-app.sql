-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2024 at 08:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pro-app`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'AF', '2024-10-29 04:21:56', '2024-10-29 04:21:56'),
(2, 'Åland Islands', 'AX', '2024-10-29 04:21:56', '2024-10-29 04:21:56'),
(3, 'Albania', 'AL', '2024-10-29 04:21:56', '2024-10-29 04:21:56'),
(4, 'Algeria', 'DZ', '2024-10-29 04:21:56', '2024-10-29 04:21:56'),
(5, 'American Samoa', 'AS', '2024-10-29 04:21:56', '2024-10-29 04:21:56'),
(6, 'Andorra', 'AD', '2024-10-29 04:21:56', '2024-10-29 04:21:56'),
(7, 'Angola', 'AO', '2024-10-29 04:21:56', '2024-10-29 04:21:56'),
(8, 'Anguilla', 'AI', '2024-10-29 04:21:56', '2024-10-29 04:21:56'),
(9, 'Antarctica', 'AQ', '2024-10-29 04:21:57', '2024-10-29 04:21:57'),
(10, 'Antigua and Barbuda', 'AG', '2024-10-29 04:21:57', '2024-10-29 04:21:57'),
(11, 'Argentina', 'AR', '2024-10-29 04:21:57', '2024-10-29 04:21:57'),
(12, 'Armenia', 'AM', '2024-10-29 04:21:57', '2024-10-29 04:21:57'),
(13, 'Aruba', 'AW', '2024-10-29 04:21:57', '2024-10-29 04:21:57'),
(14, 'Australia', 'AU', '2024-10-29 04:21:57', '2024-10-29 04:21:57'),
(15, 'Austria', 'AT', '2024-10-29 04:21:57', '2024-10-29 04:21:57'),
(16, 'Azerbaijan', 'AZ', '2024-10-29 04:21:57', '2024-10-29 04:21:57'),
(17, 'Bahamas', 'BS', '2024-10-29 04:21:57', '2024-10-29 04:21:57'),
(18, 'Bahrain', 'BH', '2024-10-29 04:21:57', '2024-10-29 04:21:57'),
(19, 'Bangladesh', 'BD', '2024-10-29 04:21:57', '2024-10-29 04:21:57'),
(20, 'Barbados', 'BB', '2024-10-29 04:21:57', '2024-10-29 04:21:57'),
(21, 'Belarus', 'BY', '2024-10-29 04:21:57', '2024-10-29 04:21:57'),
(22, 'Belgium', 'BE', '2024-10-29 04:21:57', '2024-10-29 04:21:57'),
(23, 'Belize', 'BZ', '2024-10-29 04:21:57', '2024-10-29 04:21:57'),
(24, 'Benin', 'BJ', '2024-10-29 04:21:57', '2024-10-29 04:21:57'),
(25, 'Bermuda', 'BM', '2024-10-29 04:21:57', '2024-10-29 04:21:57'),
(26, 'Bhutan', 'BT', '2024-10-29 04:21:57', '2024-10-29 04:21:57'),
(27, 'Bolivia, Plurinational State of', 'BO', '2024-10-29 04:21:57', '2024-10-29 04:21:57'),
(28, 'Bonaire, Sint Eustatius and Saba', 'BQ', '2024-10-29 04:21:57', '2024-10-29 04:21:57'),
(29, 'Bosnia and Herzegovina', 'BA', '2024-10-29 04:21:57', '2024-10-29 04:21:57'),
(30, 'Botswana', 'BW', '2024-10-29 04:21:57', '2024-10-29 04:21:57'),
(31, 'Bouvet Island', 'BV', '2024-10-29 04:21:57', '2024-10-29 04:21:57'),
(32, 'Brazil', 'BR', '2024-10-29 04:21:57', '2024-10-29 04:21:57'),
(33, 'British Indian Ocean Territory', 'IO', '2024-10-29 04:21:58', '2024-10-29 04:21:58'),
(34, 'Brunei Darussalam', 'BN', '2024-10-29 04:21:58', '2024-10-29 04:21:58'),
(35, 'Bulgaria', 'BG', '2024-10-29 04:21:58', '2024-10-29 04:21:58'),
(36, 'Burkina Faso', 'BF', '2024-10-29 04:21:58', '2024-10-29 04:21:58'),
(37, 'Burundi', 'BI', '2024-10-29 04:21:58', '2024-10-29 04:21:58'),
(38, 'Cambodia', 'KH', '2024-10-29 04:21:58', '2024-10-29 04:21:58'),
(39, 'Cameroon', 'CM', '2024-10-29 04:21:58', '2024-10-29 04:21:58'),
(40, 'Canada', 'CA', '2024-10-29 04:21:58', '2024-10-29 04:21:58'),
(41, 'Cape Verde', 'CV', '2024-10-29 04:21:58', '2024-10-29 04:21:58'),
(42, 'Cayman Islands', 'KY', '2024-10-29 04:21:58', '2024-10-29 04:21:58'),
(43, 'Central African Republic', 'CF', '2024-10-29 04:21:58', '2024-10-29 04:21:58'),
(44, 'Chad', 'TD', '2024-10-29 04:21:58', '2024-10-29 04:21:58'),
(45, 'Chile', 'CL', '2024-10-29 04:21:58', '2024-10-29 04:21:58'),
(46, 'China', 'CN', '2024-10-29 04:21:58', '2024-10-29 04:21:58'),
(47, 'Christmas Island', 'CX', '2024-10-29 04:21:58', '2024-10-29 04:21:58'),
(48, 'Cocos (Keeling) Islands', 'CC', '2024-10-29 04:21:58', '2024-10-29 04:21:58'),
(49, 'Colombia', 'CO', '2024-10-29 04:21:58', '2024-10-29 04:21:58'),
(50, 'Comoros', 'KM', '2024-10-29 04:21:58', '2024-10-29 04:21:58'),
(51, 'Congo', 'CG', '2024-10-29 04:21:58', '2024-10-29 04:21:58'),
(52, 'Congo, the Democratic Republic of the', 'CD', '2024-10-29 04:21:58', '2024-10-29 04:21:58'),
(53, 'Cook Islands', 'CK', '2024-10-29 04:21:58', '2024-10-29 04:21:58'),
(54, 'Costa Rica', 'CR', '2024-10-29 04:21:58', '2024-10-29 04:21:58'),
(55, 'Côte d\'Ivoire', 'CI', '2024-10-29 04:21:58', '2024-10-29 04:21:58'),
(56, 'Croatia', 'HR', '2024-10-29 04:21:58', '2024-10-29 04:21:58'),
(57, 'Cuba', 'CU', '2024-10-29 04:21:58', '2024-10-29 04:21:58'),
(58, 'Curaçao', 'CW', '2024-10-29 04:21:59', '2024-10-29 04:21:59'),
(59, 'Cyprus', 'CY', '2024-10-29 04:21:59', '2024-10-29 04:21:59'),
(60, 'Czech Republic', 'CZ', '2024-10-29 04:21:59', '2024-10-29 04:21:59'),
(61, 'Denmark', 'DK', '2024-10-29 04:21:59', '2024-10-29 04:21:59'),
(62, 'Djibouti', 'DJ', '2024-10-29 04:21:59', '2024-10-29 04:21:59'),
(63, 'Dominica', 'DM', '2024-10-29 04:21:59', '2024-10-29 04:21:59'),
(64, 'Dominican Republic', 'DO', '2024-10-29 04:21:59', '2024-10-29 04:21:59'),
(65, 'Ecuador', 'EC', '2024-10-29 04:21:59', '2024-10-29 04:21:59'),
(66, 'Egypt', 'EG', '2024-10-29 04:21:59', '2024-10-29 04:21:59'),
(67, 'El Salvador', 'SV', '2024-10-29 04:21:59', '2024-10-29 04:21:59'),
(68, 'Equatorial Guinea', 'GQ', '2024-10-29 04:21:59', '2024-10-29 04:21:59'),
(69, 'Eritrea', 'ER', '2024-10-29 04:21:59', '2024-10-29 04:21:59'),
(70, 'Estonia', 'EE', '2024-10-29 04:21:59', '2024-10-29 04:21:59'),
(71, 'Ethiopia', 'ET', '2024-10-29 04:21:59', '2024-10-29 04:21:59'),
(72, 'Falkland Islands (Malvinas)', 'FK', '2024-10-29 04:21:59', '2024-10-29 04:21:59'),
(73, 'Faroe Islands', 'FO', '2024-10-29 04:21:59', '2024-10-29 04:21:59'),
(74, 'Fiji', 'FJ', '2024-10-29 04:21:59', '2024-10-29 04:21:59'),
(75, 'Finland', 'FI', '2024-10-29 04:21:59', '2024-10-29 04:21:59'),
(76, 'France', 'FR', '2024-10-29 04:21:59', '2024-10-29 04:21:59'),
(77, 'French Guiana', 'GF', '2024-10-29 04:21:59', '2024-10-29 04:21:59'),
(78, 'French Polynesia', 'PF', '2024-10-29 04:21:59', '2024-10-29 04:21:59'),
(79, 'French Southern Territories', 'TF', '2024-10-29 04:21:59', '2024-10-29 04:21:59'),
(80, 'Gabon', 'GA', '2024-10-29 04:21:59', '2024-10-29 04:21:59'),
(81, 'Gambia', 'GM', '2024-10-29 04:21:59', '2024-10-29 04:21:59'),
(82, 'Georgia', 'GE', '2024-10-29 04:22:00', '2024-10-29 04:22:00'),
(83, 'Germany', 'DE', '2024-10-29 04:22:00', '2024-10-29 04:22:00'),
(84, 'Ghana', 'GH', '2024-10-29 04:22:00', '2024-10-29 04:22:00'),
(85, 'Gibraltar', 'GI', '2024-10-29 04:22:00', '2024-10-29 04:22:00'),
(86, 'Greece', 'GR', '2024-10-29 04:22:00', '2024-10-29 04:22:00'),
(87, 'Greenland', 'GL', '2024-10-29 04:22:00', '2024-10-29 04:22:00'),
(88, 'Grenada', 'GD', '2024-10-29 04:22:00', '2024-10-29 04:22:00'),
(89, 'Guadeloupe', 'GP', '2024-10-29 04:22:00', '2024-10-29 04:22:00'),
(90, 'Guam', 'GU', '2024-10-29 04:22:00', '2024-10-29 04:22:00'),
(91, 'Guatemala', 'GT', '2024-10-29 04:22:00', '2024-10-29 04:22:00'),
(92, 'Guernsey', 'GG', '2024-10-29 04:22:00', '2024-10-29 04:22:00'),
(93, 'Guinea', 'GN', '2024-10-29 04:22:00', '2024-10-29 04:22:00'),
(94, 'Guinea-Bissau', 'GW', '2024-10-29 04:22:00', '2024-10-29 04:22:00'),
(95, 'Guyana', 'GY', '2024-10-29 04:22:00', '2024-10-29 04:22:00'),
(96, 'Haiti', 'HT', '2024-10-29 04:22:00', '2024-10-29 04:22:00'),
(97, 'Heard Island and McDonald Mcdonald Islands', 'HM', '2024-10-29 04:22:00', '2024-10-29 04:22:00'),
(98, 'Holy See (Vatican City State)', 'VA', '2024-10-29 04:22:00', '2024-10-29 04:22:00'),
(99, 'Honduras', 'HN', '2024-10-29 04:22:00', '2024-10-29 04:22:00'),
(100, 'Hong Kong', 'HK', '2024-10-29 04:22:00', '2024-10-29 04:22:00'),
(101, 'Hungary', 'HU', '2024-10-29 04:22:00', '2024-10-29 04:22:00'),
(102, 'Iceland', 'IS', '2024-10-29 04:22:00', '2024-10-29 04:22:00'),
(103, 'India', 'IN', '2024-10-29 04:22:01', '2024-10-29 04:22:01'),
(104, 'Indonesia', 'ID', '2024-10-29 04:22:01', '2024-10-29 04:22:01'),
(105, 'Iran, Islamic Republic of', 'IR', '2024-10-29 04:22:01', '2024-10-29 04:22:01'),
(106, 'Iraq', 'IQ', '2024-10-29 04:22:01', '2024-10-29 04:22:01'),
(107, 'Ireland', 'IE', '2024-10-29 04:22:01', '2024-10-29 04:22:01'),
(108, 'Isle of Man', 'IM', '2024-10-29 04:22:01', '2024-10-29 04:22:01'),
(109, 'Israel', 'IL', '2024-10-29 04:22:01', '2024-10-29 04:22:01'),
(110, 'Italy', 'IT', '2024-10-29 04:22:03', '2024-10-29 04:22:03'),
(111, 'Jamaica', 'JM', '2024-10-29 04:22:03', '2024-10-29 04:22:03'),
(112, 'Japan', 'JP', '2024-10-29 04:22:04', '2024-10-29 04:22:04'),
(113, 'Jersey', 'JE', '2024-10-29 04:22:04', '2024-10-29 04:22:04'),
(114, 'Jordan', 'JO', '2024-10-29 04:22:05', '2024-10-29 04:22:05'),
(115, 'Kazakhstan', 'KZ', '2024-10-29 04:22:05', '2024-10-29 04:22:05'),
(116, 'Kenya', 'KE', '2024-10-29 04:22:05', '2024-10-29 04:22:05'),
(117, 'Kiribati', 'KI', '2024-10-29 04:22:05', '2024-10-29 04:22:05'),
(118, 'Korea, Democratic People\'s Republic of', 'KP', '2024-10-29 04:22:05', '2024-10-29 04:22:05'),
(119, 'Korea, Republic of', 'KR', '2024-10-29 04:22:05', '2024-10-29 04:22:05'),
(120, 'Kuwait', 'KW', '2024-10-29 04:22:05', '2024-10-29 04:22:05'),
(121, 'Kyrgyzstan', 'KG', '2024-10-29 04:22:05', '2024-10-29 04:22:05'),
(122, 'Lao People\'s Democratic Republic', 'LA', '2024-10-29 04:22:05', '2024-10-29 04:22:05'),
(123, 'Latvia', 'LV', '2024-10-29 04:22:05', '2024-10-29 04:22:05'),
(124, 'Lebanon', 'LB', '2024-10-29 04:22:06', '2024-10-29 04:22:06'),
(125, 'Lesotho', 'LS', '2024-10-29 04:22:06', '2024-10-29 04:22:06'),
(126, 'Liberia', 'LR', '2024-10-29 04:22:06', '2024-10-29 04:22:06'),
(127, 'Libya', 'LY', '2024-10-29 04:22:06', '2024-10-29 04:22:06'),
(128, 'Liechtenstein', 'LI', '2024-10-29 04:22:06', '2024-10-29 04:22:06'),
(129, 'Lithuania', 'LT', '2024-10-29 04:22:06', '2024-10-29 04:22:06'),
(130, 'Luxembourg', 'LU', '2024-10-29 04:22:06', '2024-10-29 04:22:06'),
(131, 'Macao', 'MO', '2024-10-29 04:22:06', '2024-10-29 04:22:06'),
(132, 'Macedonia, the Former Yugoslav Republic of', 'MK', '2024-10-29 04:22:06', '2024-10-29 04:22:06'),
(133, 'Madagascar', 'MG', '2024-10-29 04:22:06', '2024-10-29 04:22:06'),
(134, 'Malawi', 'MW', '2024-10-29 04:22:07', '2024-10-29 04:22:07'),
(135, 'Malaysia', 'MY', '2024-10-29 04:22:07', '2024-10-29 04:22:07'),
(136, 'Maldives', 'MV', '2024-10-29 04:22:07', '2024-10-29 04:22:07'),
(137, 'Mali', 'ML', '2024-10-29 04:22:07', '2024-10-29 04:22:07'),
(138, 'Malta', 'MT', '2024-10-29 04:22:07', '2024-10-29 04:22:07'),
(139, 'Marshall Islands', 'MH', '2024-10-29 04:22:08', '2024-10-29 04:22:08'),
(140, 'Martinique', 'MQ', '2024-10-29 04:22:08', '2024-10-29 04:22:08'),
(141, 'Mauritania', 'MR', '2024-10-29 04:22:08', '2024-10-29 04:22:08'),
(142, 'Mauritius', 'MU', '2024-10-29 04:22:09', '2024-10-29 04:22:09'),
(143, 'Mayotte', 'YT', '2024-10-29 04:22:09', '2024-10-29 04:22:09'),
(144, 'Mexico', 'MX', '2024-10-29 04:22:09', '2024-10-29 04:22:09'),
(145, 'Micronesia, Federated States of', 'FM', '2024-10-29 04:22:09', '2024-10-29 04:22:09'),
(146, 'Moldova, Republic of', 'MD', '2024-10-29 04:22:10', '2024-10-29 04:22:10'),
(147, 'Monaco', 'MC', '2024-10-29 04:22:10', '2024-10-29 04:22:10'),
(148, 'Mongolia', 'MN', '2024-10-29 04:22:10', '2024-10-29 04:22:10'),
(149, 'Montenegro', 'ME', '2024-10-29 04:22:10', '2024-10-29 04:22:10'),
(150, 'Montserrat', 'MS', '2024-10-29 04:22:10', '2024-10-29 04:22:10'),
(151, 'Morocco', 'MA', '2024-10-29 04:22:11', '2024-10-29 04:22:11'),
(152, 'Mozambique', 'MZ', '2024-10-29 04:22:11', '2024-10-29 04:22:11'),
(153, 'Myanmar', 'MM', '2024-10-29 04:22:11', '2024-10-29 04:22:11'),
(154, 'Namibia', 'NA', '2024-10-29 04:22:11', '2024-10-29 04:22:11'),
(155, 'Nauru', 'NR', '2024-10-29 04:22:11', '2024-10-29 04:22:11'),
(156, 'Nepal', 'NP', '2024-10-29 04:22:11', '2024-10-29 04:22:11'),
(157, 'Netherlands', 'NL', '2024-10-29 04:22:11', '2024-10-29 04:22:11'),
(158, 'New Caledonia', 'NC', '2024-10-29 04:22:11', '2024-10-29 04:22:11'),
(159, 'New Zealand', 'NZ', '2024-10-29 04:22:11', '2024-10-29 04:22:11'),
(160, 'Nicaragua', 'NI', '2024-10-29 04:22:11', '2024-10-29 04:22:11'),
(161, 'Niger', 'NE', '2024-10-29 04:22:12', '2024-10-29 04:22:12'),
(162, 'Nigeria', 'NG', '2024-10-29 04:22:12', '2024-10-29 04:22:12'),
(163, 'Niue', 'NU', '2024-10-29 04:22:12', '2024-10-29 04:22:12'),
(164, 'Norfolk Island', 'NF', '2024-10-29 04:22:12', '2024-10-29 04:22:12'),
(165, 'Northern Mariana Islands', 'MP', '2024-10-29 04:22:12', '2024-10-29 04:22:12'),
(166, 'Norway', 'NO', '2024-10-29 04:22:12', '2024-10-29 04:22:12'),
(167, 'Oman', 'OM', '2024-10-29 04:22:13', '2024-10-29 04:22:13'),
(168, 'Pakistan', 'PK', '2024-10-29 04:22:13', '2024-10-29 04:22:13'),
(169, 'Palau', 'PW', '2024-10-29 04:22:13', '2024-10-29 04:22:13'),
(170, 'Palestine, State of', 'PS', '2024-10-29 04:22:14', '2024-10-29 04:22:14'),
(171, 'Panama', 'PA', '2024-10-29 04:22:15', '2024-10-29 04:22:15'),
(172, 'Papua New Guinea', 'PG', '2024-10-29 04:22:15', '2024-10-29 04:22:15'),
(173, 'Paraguay', 'PY', '2024-10-29 04:22:16', '2024-10-29 04:22:16'),
(174, 'Peru', 'PE', '2024-10-29 04:22:16', '2024-10-29 04:22:16'),
(175, 'Philippines', 'PH', '2024-10-29 04:22:16', '2024-10-29 04:22:16'),
(176, 'Pitcairn', 'PN', '2024-10-29 04:22:16', '2024-10-29 04:22:16'),
(177, 'Poland', 'PL', '2024-10-29 04:22:16', '2024-10-29 04:22:16'),
(178, 'Portugal', 'PT', '2024-10-29 04:22:16', '2024-10-29 04:22:16'),
(179, 'Puerto Rico', 'PR', '2024-10-29 04:22:16', '2024-10-29 04:22:16'),
(180, 'Qatar', 'QA', '2024-10-29 04:22:16', '2024-10-29 04:22:16'),
(181, 'Réunion', 'RE', '2024-10-29 04:22:16', '2024-10-29 04:22:16'),
(182, 'Romania', 'RO', '2024-10-29 04:22:17', '2024-10-29 04:22:17'),
(183, 'Russian Federation', 'RU', '2024-10-29 04:22:17', '2024-10-29 04:22:17'),
(184, 'Rwanda', 'RW', '2024-10-29 04:22:17', '2024-10-29 04:22:17'),
(185, 'Saint Barthélemy', 'BL', '2024-10-29 04:22:17', '2024-10-29 04:22:17'),
(186, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', '2024-10-29 04:22:17', '2024-10-29 04:22:17'),
(187, 'Saint Kitts and Nevis', 'KN', '2024-10-29 04:22:18', '2024-10-29 04:22:18'),
(188, 'Saint Lucia', 'LC', '2024-10-29 04:22:18', '2024-10-29 04:22:18'),
(189, 'Saint Martin (French part)', 'MF', '2024-10-29 04:22:18', '2024-10-29 04:22:18'),
(190, 'Saint Pierre and Miquelon', 'PM', '2024-10-29 04:22:18', '2024-10-29 04:22:18'),
(191, 'Saint Vincent and the Grenadines', 'VC', '2024-10-29 04:22:18', '2024-10-29 04:22:18'),
(192, 'Samoa', 'WS', '2024-10-29 04:22:19', '2024-10-29 04:22:19'),
(193, 'San Marino', 'SM', '2024-10-29 04:22:19', '2024-10-29 04:22:19'),
(194, 'Sao Tome and Principe', 'ST', '2024-10-29 04:22:19', '2024-10-29 04:22:19'),
(195, 'Saudi Arabia', 'SA', '2024-10-29 04:22:19', '2024-10-29 04:22:19'),
(196, 'Senegal', 'SN', '2024-10-29 04:22:19', '2024-10-29 04:22:19'),
(197, 'Serbia', 'RS', '2024-10-29 04:22:20', '2024-10-29 04:22:20'),
(198, 'Seychelles', 'SC', '2024-10-29 04:22:20', '2024-10-29 04:22:20'),
(199, 'Sierra Leone', 'SL', '2024-10-29 04:22:20', '2024-10-29 04:22:20'),
(200, 'Singapore', 'SG', '2024-10-29 04:22:20', '2024-10-29 04:22:20'),
(201, 'Sint Maarten (Dutch part)', 'SX', '2024-10-29 04:22:20', '2024-10-29 04:22:20'),
(202, 'Slovakia', 'SK', '2024-10-29 04:22:20', '2024-10-29 04:22:20'),
(203, 'Slovenia', 'SI', '2024-10-29 04:22:20', '2024-10-29 04:22:20'),
(204, 'Solomon Islands', 'SB', '2024-10-29 04:22:21', '2024-10-29 04:22:21'),
(205, 'Somalia', 'SO', '2024-10-29 04:22:21', '2024-10-29 04:22:21'),
(206, 'South Africa', 'ZA', '2024-10-29 04:22:21', '2024-10-29 04:22:21'),
(207, 'South Georgia and the South Sandwich Islands', 'GS', '2024-10-29 04:22:21', '2024-10-29 04:22:21'),
(208, 'South Sudan', 'SS', '2024-10-29 04:22:21', '2024-10-29 04:22:21'),
(209, 'Spain', 'ES', '2024-10-29 04:22:22', '2024-10-29 04:22:22'),
(210, 'Sri Lanka', 'LK', '2024-10-29 04:22:22', '2024-10-29 04:22:22'),
(211, 'Sudan', 'SD', '2024-10-29 04:22:22', '2024-10-29 04:22:22'),
(212, 'Suriname', 'SR', '2024-10-29 04:22:22', '2024-10-29 04:22:22'),
(213, 'Svalbard and Jan Mayen', 'SJ', '2024-10-29 04:22:22', '2024-10-29 04:22:22'),
(214, 'Swaziland', 'SZ', '2024-10-29 04:22:22', '2024-10-29 04:22:22'),
(215, 'Sweden', 'SE', '2024-10-29 04:22:23', '2024-10-29 04:22:23'),
(216, 'Switzerland', 'CH', '2024-10-29 04:22:23', '2024-10-29 04:22:23'),
(217, 'Syrian Arab Republic', 'SY', '2024-10-29 04:22:23', '2024-10-29 04:22:23'),
(218, 'Taiwan', 'TW', '2024-10-29 04:22:23', '2024-10-29 04:22:23'),
(219, 'Tajikistan', 'TJ', '2024-10-29 04:22:23', '2024-10-29 04:22:23'),
(220, 'Tanzania, United Republic of', 'TZ', '2024-10-29 04:22:23', '2024-10-29 04:22:23'),
(221, 'Thailand', 'TH', '2024-10-29 04:22:23', '2024-10-29 04:22:23'),
(222, 'Timor-Leste', 'TL', '2024-10-29 04:22:23', '2024-10-29 04:22:23'),
(223, 'Togo', 'TG', '2024-10-29 04:22:23', '2024-10-29 04:22:23'),
(224, 'Tokelau', 'TK', '2024-10-29 04:22:23', '2024-10-29 04:22:23'),
(225, 'Tonga', 'TO', '2024-10-29 04:22:24', '2024-10-29 04:22:24'),
(226, 'Trinidad and Tobago', 'TT', '2024-10-29 04:22:24', '2024-10-29 04:22:24'),
(227, 'Tunisia', 'TN', '2024-10-29 04:22:24', '2024-10-29 04:22:24'),
(228, 'Turkey', 'TR', '2024-10-29 04:22:24', '2024-10-29 04:22:24'),
(229, 'Turkmenistan', 'TM', '2024-10-29 04:22:24', '2024-10-29 04:22:24'),
(230, 'Turks and Caicos Islands', 'TC', '2024-10-29 04:22:24', '2024-10-29 04:22:24'),
(231, 'Tuvalu', 'TV', '2024-10-29 04:22:24', '2024-10-29 04:22:24'),
(232, 'Uganda', 'UG', '2024-10-29 04:22:24', '2024-10-29 04:22:24'),
(233, 'Ukraine', 'UA', '2024-10-29 04:22:25', '2024-10-29 04:22:25'),
(234, 'United Arab Emirates', 'AE', '2024-10-29 04:22:25', '2024-10-29 04:22:25'),
(235, 'United Kingdom', 'GB', '2024-10-29 04:22:25', '2024-10-29 04:22:25'),
(236, 'United States', 'US', '2024-10-29 04:22:25', '2024-10-29 04:22:25'),
(237, 'United States Minor Outlying Islands', 'UM', '2024-10-29 04:22:25', '2024-10-29 04:22:25'),
(238, 'Uruguay', 'UY', '2024-10-29 04:22:25', '2024-10-29 04:22:25'),
(239, 'Uzbekistan', 'UZ', '2024-10-29 04:22:25', '2024-10-29 04:22:25'),
(240, 'Vanuatu', 'VU', '2024-10-29 04:22:25', '2024-10-29 04:22:25'),
(241, 'Venezuela, Bolivarian Republic of', 'VE', '2024-10-29 04:22:25', '2024-10-29 04:22:25'),
(242, 'Viet Nam', 'VN', '2024-10-29 04:22:25', '2024-10-29 04:22:25'),
(243, 'Virgin Islands, British', 'VG', '2024-10-29 04:22:25', '2024-10-29 04:22:25'),
(244, 'Virgin Islands, U.S.', 'VI', '2024-10-29 04:22:25', '2024-10-29 04:22:25'),
(245, 'Wallis and Futuna', 'WF', '2024-10-29 04:22:25', '2024-10-29 04:22:25'),
(246, 'Western Sahara', 'EH', '2024-10-29 04:22:26', '2024-10-29 04:22:26'),
(247, 'Yemen', 'YE', '2024-10-29 04:22:26', '2024-10-29 04:22:26'),
(248, 'Zambia', 'ZM', '2024-10-29 04:22:26', '2024-10-29 04:22:26'),
(249, 'Zimbabwe', 'ZW', '2024-10-29 04:22:26', '2024-10-29 04:22:26');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_no` varchar(255) NOT NULL,
  `inventory_location` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `stock_unit` varchar(255) NOT NULL,
  `unit_price` varchar(255) NOT NULL,
  `status` enum('enabled','disabled') NOT NULL DEFAULT 'enabled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `supplier_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_name`, `item_no`, `inventory_location`, `brand`, `category`, `stock_unit`, `unit_price`, `status`, `created_at`, `updated_at`, `supplier_id`) VALUES
(5, 'Mobile', 'ITEM 01', 'Kochi', 'Redmi', 'Redmi', '2', '15000', 'enabled', '2024-10-30 05:53:44', '2024-10-30 05:53:44', 'Supplier');

-- --------------------------------------------------------

--
-- Table structure for table `item_images`
--

CREATE TABLE `item_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_images`
--

INSERT INTO `item_images` (`id`, `item_id`, `image`, `created_at`, `updated_at`) VALUES
(1, '1', 'images/tXRAwHU6zswrdjbQlalbyGvWt4SJsETHBKWuSJgw.jpg', '2024-10-28 14:46:50', '2024-10-29 05:39:31'),
(2, '2', 'images/jtLMggrbkxaeNcQnH1n6sjLFumf4Vd3P7QD2Rvuw.jpg', '2024-10-28 14:47:25', '2024-10-28 14:47:25'),
(3, '2', 'images/dsetyh1JYJd7r3FrG0oJTgebjR3frLVS4Yjer87p.jpg', '2024-10-28 14:47:25', '2024-10-28 14:47:25'),
(4, '3', 'images/8QWiilVbuKlVNv3PhVUNORIAH73GOafY8Q3V0Azp.jpg', '2024-10-29 05:24:55', '2024-10-29 05:24:55'),
(5, '3', 'images/XEHMXFHbYjMKSu7dvLG4TDOHU7XZ5NxFrkj4B7V0.jpg', '2024-10-29 05:24:55', '2024-10-29 05:24:55'),
(6, '4', 'images/XQ4zk4zaJcTYUlXryPUPfIVj5DMgN6xD5KLA7FoC.jpg', '2024-10-29 05:28:45', '2024-10-29 05:28:45'),
(7, '1', 'images/Koku0liP5zJL1Y9vpLs6WXYlczgCZhdV42B2Wo9A.jpg', '2024-10-29 05:40:25', '2024-10-29 05:40:25'),
(8, '5', 'images/uQcGsQQmv53KxsD7DqsJoCnSZHaBtCRNYAi0nESn.jpg', '2024-10-30 05:53:47', '2024-10-30 05:53:47');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_10_27_084615_create_suppliers_table', 2),
(6, '2024_10_27_092048_create_items_table', 3),
(8, '2024_10_27_095452_create_item_images_table', 4),
(9, '2024_10_27_095656_create_item_images_table', 5),
(10, '2024_10_27_175636_create_suppliers_table', 5),
(11, '2024_10_29_094341_create_countries_table', 6),
(12, '2024_10_29_194824_create_purchase_orders_table', 7),
(13, '2024_10_30_095537_create_order_items_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_order_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `order_qty` int(11) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `item_amount` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `net_amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `purchase_order_id`, `item_id`, `order_qty`, `unit_price`, `item_amount`, `discount`, `net_amount`, `created_at`, `updated_at`) VALUES
(1, 3, 3, 4, 20.00, 80.00, 0.00, 80.00, '2024-10-30 04:57:56', '2024-10-30 04:57:56'),
(2, 3, 4, 1, 50.00, 50.00, 0.00, 50.00, '2024-10-30 04:57:56', '2024-10-30 04:57:56'),
(3, 4, 4, 33, 50.00, 1650.00, 0.00, 1650.00, '2024-10-30 05:04:37', '2024-10-30 05:04:37'),
(4, 4, 3, 1, 20.00, 20.00, 33.00, -13.00, '2024-10-30 05:04:37', '2024-10-30 05:04:37'),
(5, 4, 3, 3, 20.00, 60.00, 3.00, 57.00, '2024-10-30 05:04:37', '2024-10-30 05:04:37'),
(6, 1, 5, 2, 15000.00, 30000.00, 0.00, 30000.00, '2024-10-30 05:54:03', '2024-10-30 05:54:03');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_no` varchar(255) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `item_total` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_orders`
--

INSERT INTO `purchase_orders` (`id`, `order_no`, `order_date`, `supplier_id`, `item_total`, `discount`, `net_amount`, `created_at`, `updated_at`) VALUES
(1, 'ORDER 01', '2024-10-30', 6, '30000', '0', '30000', '2024-10-30 05:54:03', '2024-10-30 05:54:03');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_items_details`
--

CREATE TABLE `purchase_order_items_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_order_item_id` bigint(20) UNSIGNED NOT NULL,
  `packing_unit` varchar(255) DEFAULT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `order_qty` decimal(10,2) NOT NULL,
  `item_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `net_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_no` varchar(255) NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` enum('active','inactive','blocked') NOT NULL DEFAULT 'active',
  `country` varchar(255) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tax_no` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `supplier_no`, `supplier_name`, `address`, `status`, `country`, `mobile_no`, `email`, `created_at`, `updated_at`, `tax_no`) VALUES
(6, 'SUP 01', 'Supplier', 'Kochi', 'active', 'India', '9588455555', 'supplier@gmail.com', '2024-10-30 05:52:32', '2024-10-30 05:52:32', 'Tax234');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_images`
--
ALTER TABLE `item_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_order_items_details`
--
ALTER TABLE `purchase_order_items_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_supplier_no_unique` (`supplier_no`);

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
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `item_images`
--
ALTER TABLE `item_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchase_order_items_details`
--
ALTER TABLE `purchase_order_items_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
