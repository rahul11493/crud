-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 17, 2022 at 10:57 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) NOT NULL,
  `country_name` varchar(191) DEFAULT NULL,
  `country_code` varchar(5) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_name`, `country_code`, `created_by`, `created_at`, `updated_by`, `updated_at`, `is_deleted`) VALUES
(1, 'Afghanistan', 'AF', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(2, 'Albania', 'AL', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(3, 'Algeria', 'DZ', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(4, 'American Samoa', 'AS', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(5, 'Andorra', 'AD', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(6, 'Angola', 'AO', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(7, 'Anguilla', 'AI', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(8, 'Antarctica', 'AQ', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(9, 'Antigua and Barbuda', 'AG', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(10, 'Argentina', 'AR', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(11, 'Armenia', 'AM', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(12, 'Aruba', 'AW', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(13, 'Australia', 'AU', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(14, 'Austria', 'AT', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(15, 'Azerbaijan', 'AZ', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(16, 'Bahamas', 'BS', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(17, 'Bahrain', 'BH', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(18, 'Bangladesh', 'BD', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(19, 'Barbados', 'BB', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(20, 'Belarus', 'BY', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(21, 'Belgium', 'BE', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(22, 'Belize', 'BZ', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(23, 'Benin', 'BJ', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(24, 'Bermuda', 'BM', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(25, 'Bhutan', 'BT', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(26, 'Bolivia', 'BO', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(27, 'Bosnia and Herzegovina', 'BA', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(28, 'Botswana', 'BW', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(29, 'Brazil', 'BR', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(30, 'British Indian Ocean Territory', 'IO', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(31, 'British Virgin Islands', 'VG', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(32, 'Brunei', 'BN', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(33, 'Bulgaria', 'BG', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(34, 'Burkina Faso', 'BF', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(35, 'Burundi', 'BI', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(36, 'Cambodia', 'KH', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(37, 'Cameroon', 'CM', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(38, 'Canada', 'CA', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(39, 'Cape Verde', 'CV', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(40, 'Cayman Islands', 'KY', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(41, 'Central African Republic', 'CF', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(42, 'Chad', 'TD', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(43, 'Chile', 'CL', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(44, 'China', 'CN', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(45, 'Christmas Island', 'CX', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(46, 'Cocos Islands', 'CC', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(47, 'Colombia', 'CO', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(48, 'Comoros', 'KM', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(49, 'Cook Islands', 'CK', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(50, 'Costa Rica', 'CR', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(51, 'Croatia', 'HR', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(52, 'Cuba', 'CU', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(53, 'Curacao', 'CW', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(54, 'Cyprus', 'CY', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(55, 'Czech Republic', 'CZ', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(56, 'Democratic Republic of the Congo', 'CD', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(57, 'Denmark', 'DK', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(58, 'Djibouti', 'DJ', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(59, 'Dominica', 'DM', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(60, 'Dominican Republic', 'DO', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(61, 'East Timor', 'TL', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(62, 'Ecuador', 'EC', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(63, 'Egypt', 'EG', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(64, 'El Salvador', 'SV', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(65, 'Equatorial Guinea', 'GQ', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(66, 'Eritrea', 'ER', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(67, 'Estonia', 'EE', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(68, 'Ethiopia', 'ET', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(69, 'Falkland Islands', 'FK', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(70, 'Faroe Islands', 'FO', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(71, 'Fiji', 'FJ', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(72, 'Finland', 'FI', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(73, 'France', 'FR', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(74, 'French Polynesia', 'PF', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(75, 'Gabon', 'GA', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(76, 'Gambia', 'GM', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(77, 'Georgia', 'GE', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(78, 'Germany', 'DE', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(79, 'Ghana', 'GH', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(80, 'Gibraltar', 'GI', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(81, 'Greece', 'GR', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(82, 'Greenland', 'GL', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(83, 'Grenada', 'GD', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(84, 'Guam', 'GU', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(85, 'Guatemala', 'GT', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(86, 'Guernsey', 'GG', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(87, 'Guinea', 'GN', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(88, 'Guinea-Bissau', 'GW', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(89, 'Guyana', 'GY', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(90, 'Haiti', 'HT', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(91, 'Honduras', 'HN', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(92, 'Hong Kong', 'HK', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(93, 'Hungary', 'HU', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(94, 'Iceland', 'IS', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(95, 'India', 'IN', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(96, 'Indonesia', 'ID', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(97, 'Iran', 'IR', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(98, 'Iraq', 'IQ', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(99, 'Ireland', 'IE', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(100, 'Isle of Man', 'IM', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(101, 'Israel', 'IL', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(102, 'Italy', 'IT', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(103, 'Ivory Coast', 'CI', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(104, 'Jamaica', 'JM', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(105, 'Japan', 'JP', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(106, 'Jersey', 'JE', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(107, 'Jordan', 'JO', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(108, 'Kazakhstan', 'KZ', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(109, 'Kenya', 'KE', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(110, 'Kiribati', 'KI', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(111, 'Kosovo', 'XK', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(112, 'Kuwait', 'KW', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(113, 'Kyrgyzstan', 'KG', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(114, 'Laos', 'LA', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(115, 'Latvia', 'LV', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(116, 'Lebanon', 'LB', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(117, 'Lesotho', 'LS', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(118, 'Liberia', 'LR', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(119, 'Libya', 'LY', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(120, 'Liechtenstein', 'LI', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(121, 'Lithuania', 'LT', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(122, 'Luxembourg', 'LU', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(123, 'Macau', 'MO', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(124, 'Macedonia', 'MK', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(125, 'Madagascar', 'MG', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(126, 'Malawi', 'MW', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(127, 'Malaysia', 'MY', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(128, 'Maldives', 'MV', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(129, 'Mali', 'ML', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(130, 'Malta', 'MT', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(131, 'Marshall Islands', 'MH', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(132, 'Mauritania', 'MR', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(133, 'Mauritius', 'MU', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(134, 'Mayotte', 'YT', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(135, 'Mexico', 'MX', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(136, 'Micronesia', 'FM', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(137, 'Moldova', 'MD', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(138, 'Monaco', 'MC', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(139, 'Mongolia', 'MN', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(140, 'Montenegro', 'ME', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(141, 'Montserrat', 'MS', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(142, 'Morocco', 'MA', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(143, 'Mozambique', 'MZ', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(144, 'Myanmar', 'MM', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(145, 'Namibia', 'NA', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(146, 'Nauru', 'NR', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(147, 'Nepal', 'NP', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(148, 'Netherlands', 'NL', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(149, 'Netherlands Antilles', 'AN', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(150, 'New Caledonia', 'NC', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(151, 'New Zealand', 'NZ', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(152, 'Nicaragua', 'NI', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(153, 'Niger', 'NE', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(154, 'Nigeria', 'NG', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(155, 'Niue', 'NU', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(156, 'North Korea', 'KP', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(157, 'Northern Mariana Islands', 'MP', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(158, 'Norway', 'NO', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(159, 'Oman', 'OM', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(160, 'Pakistan', 'PK', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(161, 'Palau', 'PW', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(162, 'Palestine', 'PS', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(163, 'Panama', 'PA', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(164, 'Papua New Guinea', 'PG', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(165, 'Paraguay', 'PY', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(166, 'Peru', 'PE', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(167, 'Philippines', 'PH', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(168, 'Pitcairn', 'PN', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(169, 'Poland', 'PL', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(170, 'Portugal', 'PT', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(171, 'Puerto Rico', 'PR', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(172, 'Qatar', 'QA', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(173, 'Republic of the Congo', 'CG', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(174, 'Reunion', 'RE', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(175, 'Romania', 'RO', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(176, 'Russia', 'RU', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(177, 'Rwanda', 'RW', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(178, 'Saint Barthelemy', 'BL', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(179, 'Saint Helena', 'SH', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(180, 'Saint Kitts and Nevis', 'KN', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(181, 'Saint Lucia', 'LC', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(182, 'Saint Martin', 'MF', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(183, 'Saint Pierre and Miquelon', 'PM', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(184, 'Saint Vincent and the Grenadines', 'VC', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(185, 'Samoa', 'WS', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(186, 'San Marino', 'SM', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(187, 'Sao Tome and Principe', 'ST', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(188, 'Saudi Arabia', 'SA', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(189, 'Senegal', 'SN', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(190, 'Serbia', 'RS', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(191, 'Seychelles', 'SC', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(192, 'Sierra Leone', 'SL', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(193, 'Singapore', 'SG', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(194, 'Sint Maarten', 'SX', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(195, 'Slovakia', 'SK', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(196, 'Slovenia', 'SI', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(197, 'Solomon Islands', 'SB', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(198, 'Somalia', 'SO', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(199, 'South Africa', 'ZA', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(200, 'South Korea', 'KR', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(201, 'South Sudan', 'SS', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(202, 'Spain', 'ES', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(203, 'Sri Lanka', 'LK', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(204, 'Sudan', 'SD', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(205, 'Suriname', 'SR', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(206, 'Svalbard and Jan Mayen', 'SJ', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(207, 'Swaziland', 'SZ', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(208, 'Sweden', 'SE', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(209, 'Switzerland', 'CH', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(210, 'Syria', 'SY', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(211, 'Taiwan', 'TW', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(212, 'Tajikistan', 'TJ', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(213, 'Tanzania', 'TZ', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(214, 'Thailand', 'TH', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(215, 'Togo', 'TG', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(216, 'Tokelau', 'TK', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(217, 'Tonga', 'TO', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(218, 'Trinidad and Tobago', 'TT', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(219, 'Tunisia', 'TN', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(220, 'Turkey', 'TR', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(221, 'Turkmenistan', 'TM', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(222, 'Turks and Caicos Islands', 'TC', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(223, 'Tuvalu', 'TV', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(224, 'U.S. Virgin Islands', 'VI', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(225, 'Uganda', 'UG', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(226, 'Ukraine', 'UA', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(227, 'United Arab Emirates', 'AE', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(228, 'United Kingdom', 'GB', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(229, 'United States', 'US', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(230, 'Uruguay', 'UY', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(231, 'Uzbekistan', 'UZ', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(232, 'Vanuatu', 'VU', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(233, 'Vatican', 'VA', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(234, 'Venezuela', 'VE', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(235, 'Vietnam', 'VN', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(236, 'Wallis and Futuna', 'WF', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(237, 'Western Sahara', 'EH', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(238, 'Yemen', 'YE', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(239, 'Zambia', 'ZM', 1, '2022-05-22 23:49:56', NULL, NULL, 0),
(240, 'Zimbabwe', 'ZW', 1, '2022-05-22 23:49:56', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(11) NOT NULL,
  `first_name` varchar(200) DEFAULT NULL,
  `last_name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `state` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `terms_condition` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `country_id`, `state`, `city`, `terms_condition`, `created_at`, `created_by`, `updated_at`, `updated_by`, `is_deleted`) VALUES
(1, 'Testing', 'Testing', 'testing@gmail.com', 'sfsf', 95, 'UP', 'Noida', 1, '2022-08-17 09:50:20', 0, '2022-08-17 08:48:56', 1, 0),
(2, 'Test', 'Testing', 'test@gmail.com', 'sfsf', 95, 'UP', 'Noida', 1, '2022-08-17 09:50:20', 0, '2022-08-17 08:53:22', 1, 0),
(3, 'jgjhgh', 'gjhgj', 'jgjg@gjh.ghjg', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 95, 'hgjg', 'hgjhg', 1, '2022-08-17 04:06:51', NULL, '2022-08-17 08:46:54', 1, 1),
(4, 'hhkjh', 'hkjhjh', 'hkjh@hhk.gjhg', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 3, 'gghf', 'hhf', 1, '2022-08-17 04:07:33', NULL, '2022-08-17 08:46:51', 1, 1),
(5, 'hgjhg', 'gjhg', 'jgjg@ghjg.gjhg', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 95, 'hgjhg', 'hgjhg', 1, '2022-08-17 04:09:21', NULL, '2022-08-17 08:15:05', 1, 1),
(6, 'ghjgh', 'gjhgg', 'hjgjhg@gjh.hgjh', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 30, 'hjgjh', 'jhgjg', 1, '2022-08-17 04:10:37', NULL, '2022-08-17 08:15:03', 1, 1),
(7, 'feeer', 'tey', 'hgjhg@gh.gg', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 8, 'safdsfs', 'dgsg', 1, '2022-08-17 08:07:24', NULL, '2022-08-17 08:15:00', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
