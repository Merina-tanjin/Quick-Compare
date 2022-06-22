-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2022 at 07:41 AM
-- Server version: 5.6.26
-- PHP Version: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thesis_quick_compare`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

CREATE TABLE IF NOT EXISTS `tbl_countries` (
  `id` int(11) NOT NULL,
  `country` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_countries`
--

INSERT INTO `tbl_countries` (`id`, `country`) VALUES
(1, 'Bangladesh'),
(2, 'Pakistan'),
(3, 'United Kingdom'),
(4, 'United States of America'),
(5, 'India'),
(6, 'Canada');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_websites`
--

CREATE TABLE IF NOT EXISTS `tbl_websites` (
  `id` int(11) NOT NULL,
  `website_name` varchar(300) NOT NULL,
  `website_URL` varchar(300) NOT NULL,
  `password_authentication_on_guidelines_f1` tinyint(1) NOT NULL,
  `password_recovery_f2` tinyint(1) NOT NULL,
  `captcha_f3` tinyint(1) NOT NULL,
  `security_question_f4` tinyint(1) NOT NULL,
  `HTTPS_channels_f5` tinyint(1) NOT NULL,
  `password_strength_meter_f6` tinyint(1) NOT NULL,
  `privacy_third_party_f7` tinyint(1) NOT NULL,
  `privacy_policy_law_f8` tinyint(1) NOT NULL,
  `SSL_certificate_f9` tinyint(1) NOT NULL,
  `cookies_used_f10` tinyint(1) NOT NULL,
  `HTTPS_protocol_status_f11` tinyint(1) NOT NULL,
  `XSS_attack_f12` tinyint(1) NOT NULL,
  `SQL_injection_f13` tinyint(1) NOT NULL,
  `phising_attack_f14` tinyint(1) NOT NULL,
  `country_id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT 'govt=1,private=0'
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_websites`
--

INSERT INTO `tbl_websites` (`id`, `website_name`, `website_URL`, `password_authentication_on_guidelines_f1`, `password_recovery_f2`, `captcha_f3`, `security_question_f4`, `HTTPS_channels_f5`, `password_strength_meter_f6`, `privacy_third_party_f7`, `privacy_policy_law_f8`, `SSL_certificate_f9`, `cookies_used_f10`, `HTTPS_protocol_status_f11`, `XSS_attack_f12`, `SQL_injection_f13`, `phising_attack_f14`, `country_id`, `type`) VALUES
(1, 'Passport Bangladesh', 'http://www.dip.gov.bd/', 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 1),
(2, 'National University', 'https://www.nu.ac.bd/', 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1),
(3, 'Income Tax', 'https://nbr.gov.bd/publications/income-tax/eng', 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1),
(4, 'Bangladesh Police', ' https://www.police.gov.bd/', 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1),
(5, 'Teletalk', 'https://www.teletalk.com.bd/bn/', 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(6, 'Daraz BD', 'https://www.daraz.com.bd/', 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(7, 'Prothom alo', 'https://www.prothomalo.com/', 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(8, 'Food panda', 'https://www.foodpanda.com.bd/', 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(9, 'BD jobs', ' https://www.bdjobs.com/', 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(10, 'Dutch Bangla Bank', ' https://www.dutchbanglabank.com/', 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(11, 'E Challan', 'http://echallan.gov.bd/login', 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1),
(12, 'Travel Agency Management System', 'https://regtravelagency.gov.bd/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(13, 'Police Clearance', 'http://pcc.police.gov.bd/', 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(14, 'eRecruitment System', 'https://erecruitment.bcc.gov.bd/', 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(15, 'Bangladesh Investment Development Authority', 'https://osspid.org/user/create', 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(16, 'Bangladesh Scouts', 'http://service.scouts.gov.bd/login', 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1),
(17, 'Dhaka Power Distribution Company Limited', 'https://dpdc.org.bd/career/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(18, 'NBR e Learning', 'http://nbrelearning.gov.bd/page/', 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1),
(19, 'National e-Government Procurement', 'https://www.eprocure.gov.bd/', 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(20, 'Biman Bangladesh Airlines', 'https://www.biman-airlines.com/', 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1),
(21, 'bangladesh Telecommunication Regulatory commision', 'https://naid.btrc.gov.bd/', 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(22, 'Bangladesh Customs', 'http://103.48.18.166/signup', 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(23, 'eTrade License', 'http://www.etradelicense.gov.bd/', 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1),
(24, 'eFire License', 'http://efirelicense.gov.bd/apply-license-renew', 0, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(25, 'Chief Controller of Imports & Exports(CCI&E)', 'https://olm.ccie.gov.bd/login', 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(26, 'Mukhtopaath ', 'http://www.muktopaath.gov.bd/', 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(27, 'BCC-CA(Bangladesh Computer Council)', 'https://www.bcc-ca.gov.bd/login', 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(28, 'National Intelligence for Skills, Employment and Entrepreneurship', 'http://skills.gov.bd/loginn', 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(29, 'Bangladesh Road Transport Authority', 'https://www.ipaybrta.cnsbd.com/', 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1),
(30, 'Shikkhok batayon', 'https://www.teachers.gov.bd/', 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1),
(31, 'NID', 'https://services.nidw.gov.bd/nid-pub/citizen-home/', 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(32, 'Amar Sorkar', 'https://www.mygov.bd/', 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(33, 'Ekpay', 'https://ekpay.gov.bd/#/home', 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(34, 'Public Procurement ', 'https://citizen.cptu.gov.bd/', 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(35, 'Bangladesh Toursim Board', 'https://beautifulbangladesh.gov.bd/', 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(36, 'BKKB', 'http://eservice.bkkb.gov.bd/', 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1),
(37, 'Local Government Engineering Department', 'http://sso.lged.gov.bd/Account/Login?ReturnUrl=%2f', 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1),
(38, 'Bangladesh National Authority for Chemical Weapons Convention', 'http://www.bnacwcafd.gov.bd/', 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1),
(39, 'BRTA service potal', 'https://bsp.brta.gov.bd/', 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(40, 'Rajdhani Unnayan Kartripakkha (RAJUK)', 'http://cp.rajukdhaka.gov.bd/', 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1),
(41, 'Intregrated Budget and Accounting System', 'https://ibas.finance.gov.bd/ibas2/Security/Login?ReturnUrl=%2fibas2%2fIntegrated_Budget_and_Accounting_System%2f/', 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1),
(42, 'Online Recruitment System', '  https://rms.bwdb.gov.bd/orms/', 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1),
(43, 'Bangladesh Parliament', 'http://www.parliament.gov.bd/', 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1),
(44, 'BDRIS', 'https://bdris.gov.bd/br/application', 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(45, 'BD Airforce', 'https://joinairforce.baf.mil.bd/', 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(46, 'Bangladesh Computer Council', 'https://www.bcc-ca.gov.bd:8443/', 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1),
(47, 'Chaldal', 'https://chaldal.com/', 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(48, 'Shawapno', 'https://www.shwapno.com/', 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(49, 'Othoba', 'https://www.othoba.com/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(50, 'Ajkerdeal', 'https://ajkerdeal.com/', 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(51, 'Sheba.xyz', 'https://www.sheba.xyz/', 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(52, 'Rokomari', 'https://www.rokomari.com/book', 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0),
(53, 'Pickaboo', 'https://www.pickaboo.com/', 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(54, 'Bikroy.com', 'Bikroy.com', 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(55, 'Foodpanda ', 'https://www.foodpanda.com.bd/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(56, 'Khaasfood.com', 'Khaasfood.com', 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(57, 'Banglashoppers', 'BanglaShoppers.com', 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0),
(58, 'Hungrynaki', 'https://hungrynaki.com/', 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(59, 'PriyoShop', 'https://priyoshop.com/', 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(60, 'Kludio Asia', 'http://kludioasia.com/', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 0),
(61, 'Uber', 'https://www.uber.com/bd/en/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(62, 'Shopping24bd', 'https://www.shopping24bd.com/', 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(63, 'BDShopping.net', 'https://www.bdshop.com/', 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(64, 'Jadroo', 'https://www.jadroo.com/', 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(65, 'Iferi', 'https://www.iferi.com/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(66, 'Buy Mobile', 'https://www.buymobile.com.bd/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(67, 'Cellcii', 'https://www.cellsii.com/steering-wheel-covers/', 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0),
(68, 'Shoparu.com', 'https://bdbusinessfinder.com/listing/shoparu-com/', 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 0),
(69, 'standard chartered bank ', 'https://www.sc.com/bd/', 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(70, 'Robi', 'https://www.robi.com.bd/en', 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(71, 'ITBazaar', 'https://www.itbazar.net/', 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(72, 'ShadMart', 'https://www.shadmart.com/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(73, 'Agora', 'https://agorasuperstores.com/', 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0),
(74, 'Shajgoj', 'https://shop.shajgoj.com/ ', 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(75, 'The MallBD', 'https://www.themallbd.com/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(76, 'Carnesia', 'https://carnesia.com/', 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(77, 'alljobsBD', 'https://www.alljobsbd.com/', 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(78, 'Thousand career', 'https://thousand.careers/', 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(79, 'TechLand', 'https://www.techlandbd.com/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(80, 'bdbusinessfinder', 'https://bdbusinessfinder.com/', 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(81, 'addressbazar', 'https://www.addressbazar.com//', 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(82, 'TradeBangla', 'http://www.tradebangla.com.bd/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(83, 'bdquery', 'http://www.bdquery.com//', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(84, 'Unimart', 'https://www.unimart.online/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(85, 'MeenaBazar', 'https://www.meenaclick.com/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(86, 'Studypress', 'https://studypress.org/', 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(87, 'amarpathshala', 'https://amarpathshala.com/', 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(88, 'E-shikhon', 'https://www.eshikhon.com/', 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(89, 'DocTime', 'https://app.doctime.com.bd/login', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(90, 'Kaykraft', 'https://www.kaykraft.com/', 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(91, 'foodpeon', 'https://foodpeon.com/', 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(92, 'UpoharBd', 'https://www.upoharbd.com/food-court', 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(93, 'yellow', 'https://yellowclothing.net/', 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(94, 'Aarong', 'https://www.aarong.com/', 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(95, 'Ecstasy', 'https://ecstasybd.com/', 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(96, 'Tedfo', 'https://tedfo.com/', 1, 1, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(97, 'Sindabad', 'https://sindabad.com/', 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(98, 'Brac', 'https://careers.brac.net/', 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(99, 'khanidani', 'https://khanidani.com/signup', 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(100, 'the basket BD', 'https://www.thebasketbd.com/', 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(101, 'Official Gateway to the Government of Pakistan', 'https://pakistan.gov.pk', 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 2, 1),
(102, 'Public Procurement Regulatory Authority', 'https://www.ppra.org.pk/', 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 2, 0),
(103, 'Goto', 'https://www.goto.com.pk/', 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 0),
(104, 'Telemart', 'https://www.telemart.pk/', 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 2, 0),
(105, 'Shopon', 'https://shopon.pk/', 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 2, 0),
(106, 'Ishopping', 'https://www.ishopping.pk/', 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 2, 0),
(107, 'Yayvo', 'http://yayvo.com/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 2, 0),
(108, 'All pakistan news', 'https://www.allpakistaninews.com/wp-login.php', 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 2, 0),
(109, 'Fiverr', 'https://www.fiverr.com/', 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 2, 0),
(110, 'Symbios', 'https://www.symbios.pk/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 2, 0),
(111, 'Vmart', 'https://vmart.pk/', 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 2, 0),
(112, 'Naseeb', 'http://www.naseeb.com/', 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1, 1, 2, 0),
(113, 'Campus pk', 'https://www.campus.pk/', 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 2, 0),
(114, 'Blogger.com', 'https://www.blogger.com/about/', 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 2, 0),
(115, 'Shophive', 'https://www.shophive.com/', 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 2, 0),
(116, 'ibucket', 'https://www.ibucket.pk/', 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 2, 0),
(117, 'Sehat', 'https://sehat.com.pk/', 0, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 2, 0),
(118, 'Deershop', 'http://deershop.com.pk/', 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1, 1, 2, 0),
(119, 'ethnic', 'https://ethnic.pk/', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 2, 0),
(120, 'Brandsondiscuount', 'https://brandsondiscount.pk/', 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 2, 0),
(121, 'Alkaramstudio', 'https://www.alkaramstudio.com/', 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 2, 0),
(122, 'Naheed', 'https://www.naheed.pk/', 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 2, 0),
(123, 'Rajah', 'https://rajahs.com.pk/', 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 2, 0),
(124, 'Autox', 'https://autox.pk/', 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 2, 0),
(125, 'Agahnoor', 'https://aghanoorofficial.com/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 2, 0),
(126, 'Ebay', 'https://www.ebay.co.uk/', 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 3, 0),
(127, 'Currys', 'https://www.currys.co.uk/gbuk/index.html', 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 3, 0),
(128, 'Gumtree', 'https://www.gumtree.com/', 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 3, 0),
(129, 'Argos', 'https://www.argos.co.uk/', 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 3, 0),
(130, 'Johnlewis', 'https://www.johnlewis.com/', 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 3, 0),
(131, 'Tesco', 'https://www.tesco.com/', 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 3, 0),
(132, 'M&S', 'https://www.marksandspencer.com/', 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 3, 0),
(133, 'Asda', 'https://www.asda.com/', 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 3, 0),
(134, 'Asos', 'https://www.asos.com/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 3, 0),
(135, 'GOV.UK', 'https://www.gov.uk/log-in-register-hmrc-online-services', 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 3, 0),
(136, 'Booking.com', 'https://www.booking.com/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 3, 0),
(137, 'Farnell', 'https://uk.farnell.com/', 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 3, 0),
(138, 'RS', 'https://uk.rs-online.com/web/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 3, 0),
(139, 'deliveroo', 'https://deliveroo.co.uk/', 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 3, 0),
(140, 'Toolstation', 'https://www.toolstation.com/', 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 3, 0),
(141, 'BT', 'https://www.bt.com/', 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 3, 0),
(142, 'Vistaprint', 'https://www.vistaprint.co.uk/', 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 3, 0),
(143, 'Expedia', 'https://www.expedia.co.uk/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 3, 0),
(144, 'Parcelforce', 'https://www.parcelforce.com/', 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 3, 0),
(145, 'Becketts', 'https://beckettsfs.co.uk/savings-and-investments/', 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 3, 0),
(146, 'Boohoo', 'https://www.boohoo.com/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 3, 0),
(147, 'Brandalley', 'https://www.brandalley.co.uk/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 3, 0),
(148, 'Debenhams', 'https://www.debenhams.com/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 3, 0),
(149, 'Dorothy perkins', 'https://www.dorothyperkins.com/eu', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 3, 0),
(150, 'Pretty little things', 'https://www.prettylittlething.com/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 3, 0),
(151, 'US Federal Courts', ' https://www.uscourts.gov/', 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 4, 1),
(152, 'Securities and Exchange Commission', 'https://www.sec.gov/.', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 4, 1),
(153, 'Department of Defense', 'https://www.defense.gov/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 4, 1),
(154, 'Department of Education', 'https://www.ed.gov/', 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 4, 1),
(155, 'The White House', ' https://www.whitehouse.gov/', 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 4, 1),
(156, 'Facebook', ' https://www.facebook.com/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 4, 0),
(157, 'Amazon', ' https://www.amazon.com/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 4, 0),
(158, 'Quora', 'https://www.quora.com', 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 4, 0),
(159, 'Paypal', 'https://www.paypal.com/', 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 4, 0),
(160, 'Netflix', ' https://www.netflix.com', 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 4, 0),
(161, 'CNN', 'https://edition.cnn.com/2021/11/06/us/houston-astroworld-festival/index.html', 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 4, 0),
(162, 'BBC News', 'https://www.bbc.com/news', 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 4, 0),
(163, 'USA Today', 'https://www.usatoday.com/', 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 4, 0),
(164, 'The New York Times', 'https://www.nytimes.com/', 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 4, 0),
(165, 'eBay', 'https://www.ebay.com/', 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 4, 0),
(166, 'Walmart', 'https://www.walmart.com/', 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 4, 0),
(167, 'Target', 'https://www.target.com/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 4, 0),
(168, 'ESPN', 'https://www.espn.in/', 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 4, 0),
(169, 'Microsoft', 'https://www.microsoft.com/en-us/', 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 4, 0),
(170, 'Fox News', 'https://www.foxnews.com/', 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 4, 0),
(171, 'IMdb', 'https://www.imdb.com/', 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 4, 0),
(172, 'Pinterest', 'https://www.pinterest.com/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 4, 0),
(173, 'Stack Overflow', 'https://stackoverflow.com/', 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 4, 0),
(174, 'FlipKart', 'https://www.flipkart.com/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 5, 0),
(175, 'Myntra', 'https://www.myntra.com/', 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 5, 0),
(176, 'IndiaMART', 'https://www.indiamart.com/', 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 5, 0),
(177, 'Nykaa', 'https://www.nykaa.com/', 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 5, 0),
(178, 'Passport Seva', 'https://www.passportindia.gov.in/AppOnlineProject/welcomeLink#', 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5, 1),
(179, 'ICICI Bank', 'https://www.icicibank.com/?ITM=nli_cms_HP_logo_personal_topnavigation', 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 5, 0),
(180, 'Axis Bank', 'https://www.axisbank.com/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 5, 0),
(181, 'IDBI Bank', 'https://www.idbibank.in/', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5, 0),
(182, 'Vodafone', 'https://www.myvi.in/', 0, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 5, 0),
(183, 'FreeBitcoin', 'https://freebitco.in/?op=signup_page', 0, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 5, 0),
(184, 'GrabOn', 'https://www.grabon.in/', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5, 0),
(185, 'Shopify', 'https://www.shopify.com/', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5, 0),
(186, 'Shaadi.com', 'https://www.shaadi.com/', 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 5, 0),
(187, 'Kalki fashion', 'https://www.kalkifashion.com/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 5, 0),
(188, 'Utsav Fashion', 'https://www.utsavfashion.com/designer', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 5, 0),
(189, 'Indiatimes', 'https://www.indiatimes.com/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 5, 0),
(190, 'Naukri.com', 'https://www.naukri.com/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 5, 0),
(191, 'Zomato', 'https://www.zomato.com/', 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 5, 0),
(192, 'BookMyShow', 'https://in.bookmyshow.com/', 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 5, 0),
(193, 'MakeMyTrip', 'https://www.makemytrip.com/', 1, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 5, 0),
(194, 'Amazon.in', 'https://www.amazon.in/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 5, 0),
(195, 'Prime Video', 'https://www.primevideo.com/region/eu/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 5, 0),
(196, 'Quikr', 'https://www.quikr.com/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 5, 0),
(197, 'Boohoo Canada', 'https://ca.boohoo.com/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 6, 0),
(198, 'Frank & Oak.', 'https://ca.frankandoak.com/?skipRedirect=yes', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 6, 0),
(199, 'Best Buy', 'https://www.bestbuy.ca/en-ca', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 6, 0),
(200, 'Canadian Tire', 'https://www.canadiantire.ca/en.html', 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 6, 0),
(201, 'Hudson’s Bay', 'https://www.thebay.com/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 6, 0),
(202, 'Kijiji', 'https://www.kijiji.ca/', 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 6, 0),
(203, 'Metro', 'https://www.metro.ca/en/online-grocery', 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 6, 0),
(204, 'Toronto Star', 'https://www.thestar.com/?redirect=true', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 6, 0),
(205, 'National Post', 'https://nationalpost.com/category/news/canada/', 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 6, 0),
(206, 'Canadian Munch', 'https://canadianmunch.com/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 6, 0),
(207, 'Ssence', 'https://www.ssense.com/en-ca', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 6, 0),
(208, 'Nordstorm', 'https://www.nordstrom.com/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 6, 0),
(209, 'Royal bank', 'https://www.rbcroyalbank.com/personal.html', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 6, 0),
(210, 'National Bank', 'https://www.nbc.ca/', 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 6, 0),
(211, 'Tim Horton', 'https://www.timhortons.com/', 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 6, 0),
(212, 'doordash', 'https://www.doordash.com/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 6, 0),
(213, 'Pop a Ride', 'https://www.poparide.com/account/login/', 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 6, 0),
(214, 'Roots Canada', 'https://www.roots.com/ca/en/homepage', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 6, 0),
(215, 'Liberty clothing', 'https://www.libertyclothing.com/', 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 6, 0),
(216, 'Okakie', 'https://okakie.com/', 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 6, 0),
(217, 'Vitae Apparel', 'https://vitaeapparel.com/', 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 6, 0),
(218, 'Made For The People ', 'https://madeforthepeople.ca/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 6, 0),
(219, 'Walmart', 'https://www.walmart.ca/cp/grocery', 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 6, 0),
(220, 'Longos', 'https://www.longos.com/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 6, 0),
(221, 'Next Canada', 'https://www.nextdirect.com/ca/en', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 6, 0),
(222, 'Indian FRRO', 'https://indianfrro.gov.in/eservices/userlogin.jsp?disclaimer=1', 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 5, 1),
(223, 'COWIN', 'https://www.cowin.gov.in/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 5, 1),
(224, 'Startup india', 'https://www.startupindia.gov.in/content/sih/en/registration.html', 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 5, 1),
(225, 'Gov.in', 'https://registry.gov.in/', 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 5, 1),
(226, 'Supplier registration', 'https://supplierregistration.cabinetoffice.gov.uk/login', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 3, 1),
(227, 'Digital business academy', 'https://digitalbusinessacademy.technation.io/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 3, 1),
(228, 'Acas', 'https://www.acas.org.uk/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 3, 1),
(229, 'Civil service faststream', 'https://www.faststream.gov.uk/', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 3, 1),
(230, 'Pak identity', 'https://id.nadra.gov.pk/e-id/authenticate.PAK', 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 2, 1),
(231, 'Pakistan banao certificates', 'https://pakistanbanaocertificates.gov.pk/login', 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 2, 1),
(232, ' FBR pakistan', 'https://iiris.fbr.gov.pk/public/txplogin.xhtml', 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 2, 1),
(233, 'AGPR', 'http://www.agpr.gov.pk/User/Login', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 2, 1),
(234, 'ACOA Direct', 'https://direct.acoa-apeca.gc.ca/bam/login-connexion.aspx', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 6, 1),
(235, 'CARM Client portal', 'https://ccp-pcc.cbsa-asfc.cloud-nuage.canada.ca/en/homepage', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 6, 1),
(236, 'Public health agency', 'https://www.canada.ca/en/public-health/services/diseases/coronavirus-disease-covid-19/arrivecan.html', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 6, 1),
(237, 'Public Services and Procurement Canada (PSPC)', 'https://srisupplier.contractscanada.gc.ca/index-eng.cfm?af=ZnVzZWFjdGlvbj1yZWdpc3Rlci5pbnRybyZpZD03', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 6, 1),
(238, 'Gccampus', 'https://idp.csps-efpc.gc.ca/idp/Authn/UserPassword', 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 6, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_websites`
--
ALTER TABLE `tbl_websites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_websites`
--
ALTER TABLE `tbl_websites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=239;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
