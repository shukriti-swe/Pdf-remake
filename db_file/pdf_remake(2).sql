-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 25, 2023 at 12:33 PM
-- Server version: 10.1.47-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pdf_remake`
--

-- --------------------------------------------------------

--
-- Table structure for table `pdf_info`
--

CREATE TABLE `pdf_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `relation_id` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `policy_holder` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `insured_name` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `birth_date` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `policy_number` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `policy_issue` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4,
  `mobile_number` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `business_code` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `insurance_period` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `pdf_name` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `insurance_plan` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `co_pay` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `select_name` varchar(128) CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `policy_status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pdf_info`
--

INSERT INTO `pdf_info` (`id`, `user_id`, `template_id`, `relation_id`, `policy_holder`, `insured_name`, `birth_date`, `policy_number`, `policy_issue`, `address`, `mobile_number`, `business_code`, `insurance_period`, `pdf_name`, `insurance_plan`, `co_pay`, `select_name`, `status`, `policy_status`, `created_at`, `updated_at`) VALUES
(1, 18, 1, 'Husband - الزوج', 'SUBORNA ABUL HOSSAIN BEPARY', 'SUBORNA ABUL HOSSAIN BEPARY', '01-04-1996', '58/58070815/0', '14-12-2022', 'Ajman, UAE', '0555998360', '8579442/0', '14/12/2022  -  13/12/2023', 'hayah_simple_life_58070815.pdf', NULL, NULL, 'SHAHJALAL MOFAZZEL,HOSSAIN TATI', 1, 1, '2022-12-14 12:45:00', '2022-12-14 12:45:00'),
(2, 18, 1, 'Father - الأب', 'GABER HAIAN MBARAK', 'GABER HAIAN MBARAK', '15-06-2014', '58/58070816/0', '14-12-2022', 'Ajman, UAE', '0507680705', '8579442/0', '14/12/2022  -  13/12/2023', 'hayah_simple_life_58070816.pdf', NULL, NULL, 'HAIAN ABDULBASET,MBARAK', 1, 1, '2022-12-14 15:43:12', '2022-12-14 15:43:12'),
(3, 20, 1, 'Father - الأب', 'AMNA RASHID MUHAMMAD RASHID KHAN', 'AMNA RASHID MUHAMMAD RASHID KHAN', '07-02-1996', '58/58070817/0', '15-12-2022', 'Ajman, UAE', '0504819801', '8579442/0', '15/12/2022  -  14/12/2023', 'hayah_simple_life_58070817.pdf', NULL, NULL, 'MOHAMMAD RASHID KHAN,SULTAN MUHAMMAD KHAN', 1, 1, '2022-12-15 07:39:46', '2022-12-15 07:39:46'),
(4, 20, 1, 'Father - الأب', 'omer muhammad rashid khan', 'omer muhammad rashid khan', '28-08-2007', '58/58070818/0', '15-12-2022', 'Ajman, UAE', '0504819801', '8579442/0', '15/12/2022  -  14/12/2023', 'hayah_simple_life_58070818.pdf', NULL, NULL, 'MOHAMMAD RASHID KHAN,SULTAN MUHAMMAD KHAN', 1, 1, '2022-12-15 07:40:43', '2022-12-15 07:40:43'),
(5, 20, 1, 'Husband - الزوج', 'kousar begum muhammad rasheed khan', 'kousar begum muhammad rasheed khan', '27-08-1972', '58/58070819/0', '15-12-2022', 'Ajman, UAE', '0504819801', '8579442/0', '15/12/2022  -  14/12/2023', 'hayah_simple_life_58070819.pdf', NULL, NULL, 'MOHAMMAD RASHID KHAN,SULTAN MUHAMMAD KHAN', 1, 1, '2022-12-15 07:45:07', '2022-12-15 07:45:07'),
(6, 20, 1, 'Father - الأب', 'umair muhammad rashid khan', 'umair muhammad rashid khan', '23-10-2011', '58/58070820/0', '15-12-2022', 'Ajman, UAE', '0504819801', '8579442/0', '15/12/2022  -  14/12/2023', 'hayah_simple_life_58070820.pdf', NULL, NULL, 'MOHAMMAD RASHID KHAN,SULTAN MUHAMMAD KHAN', 1, 1, '2022-12-15 07:45:50', '2022-12-15 07:45:50'),
(7, 20, 1, 'Father - الأب', 'Nawaf abdulmajid muzahem salem', 'Nawaf abdulmajid muzahem salem', '21-02-2003', '58/58070821/0', '15-12-2022', 'Ajman, UAE', '0507470075', '8579442/0', '15/12/2022  -  14/12/2023', 'hayah_simple_life_58070821.pdf', NULL, NULL, 'Abdulmajid muzahem,Salem omar', 1, 1, '2022-12-15 09:27:51', '2022-12-15 09:27:51'),
(8, 22, 1, 'Daughter - الإبنة', 'Fatima ahmed basa mian ', 'Fatima ahmed basa mian ', '22-02-2016', '58/58070822/0', '15-12-2022', 'Ajman, UAE', '0544431710', '8579442/0', '15/12/2022  -  14/12/2023', 'hayah_simple_life_58070822.pdf', NULL, NULL, 'Ahmed ,Basa mian ', 1, 1, '2022-12-15 11:49:31', '2022-12-15 11:49:31'),
(9, 22, 1, 'Father - الأب', 'FATMA AHMED BASA MIAN ', 'FATMA AHMED BASA MIAN ', '22-02-2016', '58/58070823/0', '15-12-2022', 'Ajman, UAE', '0544431710', '8579442/0', '15/12/2022  -  14/12/2023', 'hayah_simple_life_58070823.pdf', NULL, NULL, 'Ahmed ,Basa mian ', 1, 1, '2022-12-15 12:17:44', '2022-12-15 12:17:44'),
(10, 22, 1, 'Father - الأب', 'NAHYAN AHMED ', 'NAHYAN AHMED ', '28-10-2018', '58/58070824/0', '15-12-2022', 'Ajman, UAE', '0544431710', '8579442/0', '15/12/2022  -  14/12/2023', 'hayah_simple_life_58070824.pdf', NULL, NULL, 'Ahmed ,Basa mian ', 1, 1, '2022-12-15 12:33:18', '2022-12-15 12:33:18'),
(11, 24, 1, 'Mother - الأم', 'tamsal shariff usman shariff', 'tamsal shariff usman shariff', '06-03-2010', '58/58070825/0', '16-12-2022', 'Ajman, UAE', '0562303761', '8579442/0', '16/12/2022  -  15/12/2023', 'hayah_simple_life_58070825.pdf', NULL, NULL, 'MAHRUKH MOONA,SHARIFF', 1, 1, '2022-12-16 06:53:37', '2022-12-16 06:53:37'),
(12, 24, 1, 'Father - الأب', 'NOOR HATEM ABDELMONEIM ABDELSALAM ABDELRAZEK', 'NOOR HATEM ABDELMONEIM ABDELSALAM ABDELRAZEK', '17-11-2021', '58/58070826/0', '16-12-2022', 'Ajman, UAE', '0501748116', '8579442/0', '16/12/2022  -  15/12/2023', 'hayah_simple_life_58070826.pdf', NULL, NULL, 'HATEM ABDELMONIEM ABDELSALAM ,ABDELRAZEK', 1, 1, '2022-12-16 10:34:40', '2022-12-16 10:34:40'),
(13, 24, 1, 'Father - الأب', 'MARIAM HATEM ABDELMONIEM ABDELSALAM', 'MARIAM HATEM ABDELMONIEM ABDELSALAM', '20-08-2020', '58/58070827/0', '16-12-2022', 'Ajman, UAE', '0501748116', '8579442/0', '16/12/2022  -  15/12/2023', 'hayah_simple_life_58070827.pdf', NULL, NULL, 'HATEM ABDELMONIEM ABDELSALAM ,ABDELRAZEK', 1, 1, '2022-12-16 10:37:17', '2022-12-16 10:37:17'),
(14, 24, 1, 'Father - الأب', 'EYAD HATEM ABDELMONEIM ABDELSALAM ABDELRAZEK', 'EYAD HATEM ABDELMONEIM ABDELSALAM ABDELRAZEK', '26-08-2013', '58/58070828/0', '16-12-2022', 'Ajman, UAE', '0501748116', '8579442/0', '16/12/2022  -  15/12/2023', 'hayah_simple_life_58070828.pdf', NULL, NULL, 'HATEM ABDELMONIEM ABDELSALAM ,ABDELRAZEK', 1, 1, '2022-12-16 10:41:47', '2022-12-16 10:41:47'),
(15, 24, 1, 'Father - الأب', 'LINA HATEM ABDELMONEM ABDELSALAM ABDELRAZEK', 'LINA HATEM ABDELMONEM ABDELSALAM ABDELRAZEK', '25-11-2016', '58/58070829/0', '16-12-2022', 'Ajman, UAE', '0501748116', '8579442/0', '16/12/2022  -  15/12/2023', 'hayah_simple_life_58070829.pdf', NULL, NULL, 'HATEM ABDELMONIEM ABDELSALAM ,ABDELRAZEK', 1, 1, '2022-12-16 10:44:18', '2022-12-16 10:44:18'),
(16, 23, 1, 'Husband - الزوج', 'BUSHRA DINAR LAIH LAIH', 'BUSHRA DINAR LAIH LAIH', '01-07-1965', '58/58070830/0', '16-12-2022', 'Ajman, UAE', '0501540447', '8579442/0', '16/12/2022  -  15/12/2023', 'hayah_simple_life_58070830.pdf', NULL, NULL, 'TARIK AHMED SHALAN SHALAN,SHALAN', 1, 1, '2022-12-16 11:56:00', '2022-12-16 11:56:00'),
(17, 18, 1, 'Father - الأب', 'HALA BILAL CHAABAN', 'HALA BILAL CHAABAN', '14-03-2003', '58/58070831/0', '19-12-2022', 'Ajman, UAE', '0504811363', '8579442/0', '19/12/2022  -  18/12/2023', 'hayah_simple_life_58070831.pdf', NULL, NULL, 'BILAL HUSSEIN ,CHAABAN', 1, 1, '2022-12-19 05:56:14', '2022-12-19 05:56:14'),
(18, 18, 1, 'Father - الأب', 'MOHAMAD CHAABAN', 'MOHAMAD CHAABAN', '11-06-2001', '58/58070832/0', '19-12-2022', 'Ajman, UAE', '0504811363', '8579442/0', '19/12/2022  -  18/12/2023', 'hayah_simple_life_58070832.pdf', NULL, NULL, 'BILAL HUSSEIN ,CHAABAN', 1, 1, '2022-12-19 06:01:27', '2022-12-19 06:01:27'),
(19, 18, 1, 'Father - الأب', 'SAJITH GANGADHARAN NAIR', 'SAJITH GANGADHARAN NAIR', '18-10-2004', '58/58070833/0', '19-12-2022', 'Ajman, UAE', '0506326738', '8579442/0', '19/12/2022  -  18/12/2023', 'hayah_simple_life_58070833.pdf', NULL, NULL, 'GANGADHARAN NAIR,CHUKKINADUKKAM RAGHAVAN', 1, 1, '2022-12-19 06:14:56', '2022-12-19 06:14:56'),
(20, 24, 1, 'Mother - الأم', 'YAHYA MIKAIL BENGTSSON', 'YAHYA MIKAIL BENGTSSON', '19-10-2012', '58/58070834/0', '19-12-2022', 'Ajman, UAE', '0509464905', '8579442/0', '19/12/2022  -  18/12/2023', 'hayah_simple_life_58070834.pdf', NULL, NULL, 'DEQA SHIRE,JAMA', 1, 1, '2022-12-19 07:00:39', '2022-12-19 07:00:39'),
(21, 18, 1, 'Husband - الزوج', 'KHADIJA ELAHI MUHAMMAD MUNIR QAMAR', 'KHADIJA ELAHI MUHAMMAD MUNIR QAMAR', '01-01-1993', '58/58070835/0', '19-12-2022', 'Ajman, UAE', '0506314447', '8579442/0', '19/12/2022  -  18/12/2023', 'hayah_simple_life_58070835.pdf', NULL, NULL, 'KHALID MAHMOOD,MUHAMMAD BASHIR', 1, 1, '2022-12-19 08:31:07', '2022-12-19 08:31:07'),
(22, 24, 1, 'Daughter - الإبنة', 'ABDELRAZIK MOUSSA ELMOWAFI ELMOWAFI', 'ABDELRAZIK MOUSSA ELMOWAFI ELMOWAFI', '01-04-1944', '58/58070836/0', '19-12-2022', 'Ajman, UAE', '0505535212', '8579442/0', '19/12/2022  -  18/12/2023', 'hayah_simple_life_58070836.pdf', NULL, NULL, 'SOUAD ABDELRAZIK,MOUSSA ELMOWAFI', 1, 1, '2022-12-19 10:06:22', '2022-12-19 10:06:22'),
(23, 24, 1, 'Daughter - الإبنة', 'RAHIMA MOHAMED MOHAMED IBRAHIM SHAHIN', 'RAHIMA MOHAMED MOHAMED IBRAHIM SHAHIN', '20-09-1947', '58/58070837/0', '19-12-2022', 'Ajman, UAE', '0505535212', '8579442/0', '19/12/2022  -  18/12/2023', 'hayah_simple_life_58070837.pdf', NULL, NULL, 'SOUAD ABDELRAZIK,MOUSSA ELMOWAFI', 1, 1, '2022-12-19 10:08:08', '2022-12-19 10:08:08'),
(24, 20, 1, 'Mother - الأم', 'Juman Jamal Salim Al najjar', 'Juman Jamal Salim Al najjar', '28-01-2015', '58/58070838/0', '19-12-2022', 'Ajman, UAE', '0558898822', '8579442/0', '19/12/2022  -  18/12/2023', 'hayah_simple_life_58070838.pdf', NULL, NULL, 'Kareena ISSA Yousef ,Abu ryaleh', 1, 1, '2022-12-19 11:13:54', '2022-12-19 11:13:54'),
(25, 24, 1, 'Mother - الأم', 'HABIBA RAMY ALI ISMAILALI HASSAN', 'HABIBA RAMY ALI ISMAILALI HASSAN', '25-03-2017', '58/58070839/0', '20-12-2022', 'Ajman, UAE', '0506747148', '8579442/0', '20/12/2022  -  19/12/2023', 'hayah_simple_life_58070839.pdf', NULL, NULL, 'DOAA TAHA ABDELRAHMAN,ELSEIDI', 1, 1, '2022-12-20 06:13:27', '2022-12-20 06:13:27'),
(26, 20, 1, 'Mother - الأم', 'JUMAN JAMAL SALIM AL NAJJAR', 'JUMAN JAMAL SALIM AL NAJJAR', '28-01-2015', '58/58070840/0', '20-12-2022', 'Ajman, UAE', '0564427566', '8579442/0', '20/12/2022  -  19/12/2023', 'hayah_simple_life_58070840.pdf', NULL, NULL, 'KAREEMA ISSA YOUSEF ,ABU RYALEH', 1, 1, '2022-12-20 09:16:00', '2022-12-20 09:16:00'),
(27, 21, 1, 'Husband - الزوج', 'Rula Fayez Karisha', 'Rula Fayez Karisha', '10-03-1997', '58/58070841/0', '20-12-2022', 'Ajman, UAE', '0552542499', '8579442/0', '20/12/2022  -  19/12/2023', 'hayah_simple_life_58070841.pdf', NULL, NULL, 'Mhd Abd Karem,Bahadin Alhalwe', 1, 1, '2022-12-20 09:31:01', '2022-12-20 09:31:01'),
(28, 21, 1, 'Father - الأب', 'BAHAA EDDIN MHD ABDULKARIM AL HALAWI', 'BAHAA EDDIN MHD ABDULKARIM AL HALAWI', '22-07-2017', '58/58070842/0', '20-12-2022', 'Ajman, UAE', '0552542499', '8579442/0', '20/12/2022  -  19/12/2023', 'hayah_simple_life_58070842.pdf', NULL, NULL, 'Mhd Abd Karem,Bahadin Alhalwe', 1, 1, '2022-12-20 09:38:06', '2022-12-20 09:38:06'),
(29, 21, 1, 'Father - الأب', 'JUDY MHD ABD KAREM ALHLAIWI', 'JUDY MHD ABD KAREM ALHLAIWI', '01-01-2020', '58/58070843/0', '20-12-2022', 'Ajman, UAE', '0552542499', '8579442/0', '20/12/2022  -  19/12/2023', 'hayah_simple_life_58070843.pdf', NULL, NULL, 'Mhd Abd Karem,Bahadin Alhalwe', 1, 1, '2022-12-20 09:40:46', '2022-12-20 09:40:46'),
(30, 20, 1, 'Father - الأب', 'Zakaria rabih alfares', 'Zakaria rabih alfares', '02-01-1998', '58/58070844/0', '20-12-2022', 'Ajman, UAE', '0505875739', '8579442/0', '20/12/2022  -  19/12/2023', 'hayah_simple_life_58070844.pdf', NULL, NULL, 'Rabih abdulrahman,Alfares', 1, 1, '2022-12-20 12:22:52', '2022-12-20 12:22:52'),
(31, 21, 1, 'Son - الإبن', 'NAIMA NOUR', 'NAIMA NOUR', '15-09-1958', '58/58070845/0', '20-12-2022', 'Ajman, UAE', '0521454858', '8579442/0', '20/12/2022  -  19/12/2023', 'hayah_simple_life_58070845.pdf', NULL, NULL, 'YASSINE,BOUBEKRI', 1, 1, '2022-12-20 12:36:11', '2022-12-20 12:36:11'),
(32, 21, 1, 'Son - الإبن', 'MOHAMED BOUBEKRI', 'MOHAMED BOUBEKRI', '01-01-1945', '58/58070846/0', '20-12-2022', 'Ajman, UAE', '0521454858', '8579442/0', '20/12/2022  -  19/12/2023', 'hayah_simple_life_58070846.pdf', NULL, NULL, 'YASSINE,BOUBEKRI', 1, 1, '2022-12-20 12:38:30', '2022-12-20 12:38:30'),
(33, 20, 1, 'Husband - الزوج', 'Mohammad sadek sultan Al ahmed', 'Mohammad sadek sultan Al ahmed', '14-11-1979', '58/58070847/0', '20-12-2022', 'Ajman, UAE', '0507229204', '8579442/0', '20/12/2022  -  19/12/2023', 'hayah_simple_life_58070847.pdf', NULL, NULL, 'Samar Mohamed ali,Saif Al helaly', 1, 1, '2022-12-20 12:41:01', '2022-12-20 12:41:01'),
(34, 20, 1, 'Wife - الزوجة', 'Mohammd sadek sultan Al ahmed', 'Mohammd sadek sultan Al ahmed', '14-11-1979', '58/58070848/0', '20-12-2022', 'Ajman, UAE', '0567104119', '8579442/0', '20/12/2022  -  19/12/2023', 'hayah_simple_life_58070848.pdf', NULL, NULL, 'Samar Mohamed ali,Saif Al helaly', 1, 1, '2022-12-20 13:19:50', '2022-12-20 13:19:50'),
(35, 24, 1, 'Mother - الأم', 'ZOHA SHARIFF USSMAN SHARIFF', 'ZOHA SHARIFF USSMAN SHARIFF', '31-08-2013', '58/58070849/0', '20-12-2022', 'Ajman, UAE', '0562303761', '8579442/0', '20/12/2022  -  19/12/2023', 'hayah_simple_life_58070849.pdf', NULL, NULL, 'MAHRUKH MOONA,SHARIFF', 1, 1, '2022-12-20 14:53:13', '2022-12-20 14:53:13'),
(36, 18, 1, 'Other Family Relationship', 'GANGADHARAN NAIR CHUKKINADUKKAM RAGHAVAN', 'GANGADHARAN NAIR CHUKKINADUKKAM RAGHAVAN', '01-05-1969', '58/58070850/0', '20-12-2022', 'Ajman, UAE', '0506326738', '8579442/0', '20/12/2022  -  19/12/2023', 'hayah_simple_life_58070850.pdf', NULL, NULL, NULL, 1, 1, '2022-12-20 19:33:27', '2022-12-20 19:33:27'),
(37, 22, 1, 'Father - الأب', 'FAJAR YOUSUF YOUSUF', 'FAJAR YOUSUF YOUSUF', '26-07-2017', '58/58070851/0', '21-12-2022', 'Ajman, UAE', '0559374887', '8579442/0', '21/12/2022  -  20/12/2023', 'hayah_simple_life_58070851.pdf', NULL, NULL, 'YOUSUF ABDUL HAMEED ,ABDUL HAMEED ', 1, 1, '2022-12-21 04:46:46', '2022-12-21 04:46:46'),
(38, 24, 1, 'Father - الأب', 'SAMIR MEDHAT ELSAYD HUSSEIN SAYED AHMED', 'SAMIR MEDHAT ELSAYD HUSSEIN SAYED AHMED', '01-02-2015', '58/58070852/0', '21-12-2022', 'Ajman, UAE', '0501460109', '8579442/0', '21/12/2022  -  20/12/2023', 'hayah_simple_life_58070852.pdf', NULL, NULL, 'MEDHAT ELSAYED HUSSEIN SAYED,AHMED', 1, 1, '2022-12-21 08:14:28', '2022-12-21 08:14:28'),
(39, 24, 1, 'Father - الأب', 'ROKAIA MEDHAT ELSAYED HUSSEIN SAYED AHMED', 'ROKAIA MEDHAT ELSAYED HUSSEIN SAYED AHMED', '21-12-2016', '58/58070853/0', '21-12-2022', 'Ajman, UAE', '0501460109', '8579442/0', '21/12/2022  -  20/12/2023', 'hayah_simple_life_58070853.pdf', NULL, NULL, 'MEDHAT ELSAYED HUSSEIN SAYED,AHMED', 1, 1, '2022-12-21 08:20:38', '2022-12-21 08:20:38'),
(40, 21, 1, 'Son - الإبن', 'AMAL R.A.ALYAZOURI', 'AMAL R.A.ALYAZOURI', '10-05-1960', '58/58070854/0', '21-12-2022', 'Ajman, UAE', '0509965499', '8579442/0', '21/12/2022  -  20/12/2023', 'hayah_simple_life_58070854.pdf', NULL, NULL, 'YASER A.F,ALYAZOURI', 1, 1, '2022-12-21 08:44:13', '2022-12-21 08:44:13'),
(41, 18, 1, 'Father - الأب', 'mahra rashid hassan ali', 'mahra rashid hassan ali', '25-02-2017', '58/58070855/0', '21-12-2022', 'Ajman, UAE', '0506771221', '8579442/0', '21/12/2022  -  20/12/2023', 'hayah_simple_life_58070855.pdf', NULL, NULL, 'RASHED HASAN ,ALI ', 1, 1, '2022-12-21 10:40:59', '2022-12-21 10:40:59'),
(42, 20, 1, 'Husband - الزوج', 'Seems Aamir sheikh sheikh Muhammad aamir', 'Seems Aamir sheikh sheikh Muhammad aamir', '10-09-1994', '58/58070856/0', '21-12-2022', 'Ajman, UAE', '0501567727', '8579442/0', '21/12/2022  -  20/12/2023', 'hayah_simple_life_58070856.pdf', NULL, NULL, 'Yeasin kamal,Ahmed noor', 1, 1, '2022-12-21 14:37:21', '2022-12-21 14:37:21'),
(43, 20, 1, 'Husband - الزوج', 'Seema Aamir sheikh sheikh Muhammad aamir', 'Seema Aamir sheikh sheikh Muhammad aamir', '10-09-1994', '58/58070857/0', '21-12-2022', 'Ajman, UAE', '0501567727', '8579442/0', '21/12/2022  -  20/12/2023', 'hayah_simple_life_58070857.pdf', NULL, NULL, 'Yeasin kamal,Ahmed noor', 1, 1, '2022-12-21 14:40:58', '2022-12-21 14:40:58'),
(44, 24, 1, 'Husband - الزوج', 'ASMAA BAKR ABDELALIM MOHAMED REZK', 'ASMAA BAKR ABDELALIM MOHAMED REZK', '01-08-1985', '58/58070858/0', '21-12-2022', 'Ajman, UAE', '0501230493', '8579442/0', '21/12/2022  -  20/12/2023', 'hayah_simple_life_58070858.pdf', NULL, NULL, 'SAMIR ABOU BAKR,ABDEL RAZEK ALI', 1, 1, '2022-12-21 15:37:11', '2022-12-21 15:37:11'),
(45, 24, 1, 'Father - الأب', 'AHMED SAMIR ABOUBAKR ABDELRAZEK ALI', 'AHMED SAMIR ABOUBAKR ABDELRAZEK ALI', '01-10-2008', '58/58070859/0', '21-12-2022', 'Ajman, UAE', '0501230493', '8579442/0', '21/12/2022  -  20/12/2023', 'hayah_simple_life_58070859.pdf', NULL, NULL, 'SAMIR ABOU BAKR,ABDEL RAZEK ALI', 1, 1, '2022-12-21 15:39:26', '2022-12-21 15:39:26'),
(46, 24, 1, 'Father - الأب', 'ADHAM SAMIR ABOUBAKR ABDELRAZEK ALI', 'ADHAM SAMIR ABOUBAKR ABDELRAZEK ALI', '23-04-2017', '58/58070860/0', '21-12-2022', 'Ajman, UAE', '0501230493', '8579442/0', '21/12/2022  -  20/12/2023', 'hayah_simple_life_58070860.pdf', NULL, NULL, 'SAMIR ABOU BAKR,ABDEL RAZEK ALI', 1, 1, '2022-12-21 15:41:07', '2022-12-21 15:41:07'),
(47, 24, 1, 'Father - الأب', 'OMAR SAMIR ABOUBAKR ABDELRAZEK ALI', 'OMAR SAMIR ABOUBAKR ABDELRAZEK ALI', '25-07-2014', '58/58070861/0', '21-12-2022', 'Ajman, UAE', '0501230493', '8579442/0', '21/12/2022  -  20/12/2023', 'hayah_simple_life_58070861.pdf', NULL, NULL, 'SAMIR ABOU BAKR,ABDEL RAZEK ALI', 1, 1, '2022-12-21 15:42:40', '2022-12-21 15:42:40'),
(48, 23, 1, 'Wife - الزوجة', 'MARZOUK MOSTAFA HASSANEIN ELRAZAHY', 'MARZOUK MOSTAFA HASSANEIN ELRAZAHY', '02-07-1941', '58/58070862/0', '22-12-2022', 'Ajman, UAE', '0502080587', '8579442/0', '22/12/2022  -  21/12/2023', 'hayah_simple_life_58070862.pdf', NULL, NULL, 'AZIZA AHMED ABBAS GALK ,GALK ', 1, 1, '2022-12-22 07:43:55', '2022-12-22 07:43:55'),
(49, 23, 1, 'Father - الأب', 'MOHAMED AHMED MOHAMED ELKOT ', 'MOHAMED AHMED MOHAMED ELKOT ', '10-11-2000', '58/58070863/0', '22-12-2022', 'Ajman, UAE', '0543223966', '8579442/0', '22/12/2022  -  21/12/2023', 'hayah_simple_life_58070863.pdf', NULL, NULL, 'AHMED MOHAMED KAMEL ELKOT ,ELKOT ', 1, 1, '2022-12-22 08:18:27', '2022-12-22 08:18:27'),
(50, 21, 1, 'Father - الأب', 'ABDALRAHMAN NADER ZALOUKH', 'ABDALRAHMAN NADER ZALOUKH', '27-04-2016', '58/58070864/0', '22-12-2022', 'Ajman, UAE', '0501036360', '8579442/0', '22/12/2022  -  21/12/2023', 'hayah_simple_life_58070864.pdf', NULL, NULL, 'NADER ISLAM ,ZALOUKH', 1, 1, '2022-12-22 11:46:55', '2022-12-22 11:46:55'),
(51, 21, 1, 'Father - الأب', 'ESLAM NADER ZALOUKH', 'ESLAM NADER ZALOUKH', '27-02-2014', '58/58070865/0', '22-12-2022', 'Ajman, UAE', '0501036360', '8579442/0', '22/12/2022  -  21/12/2023', 'hayah_simple_life_58070865.pdf', NULL, NULL, 'NADER ISLAM ,ZALOUKH', 1, 1, '2022-12-22 11:48:48', '2022-12-22 11:48:48'),
(52, 23, 1, 'Father - الأب', 'Mohamed ahmed mohamed elkot', 'Mohamed ahmed mohamed elkot', '10-11-2000', '58/58070866/0', '23-12-2022', 'Ajman, UAE', '0543233966', '8579442/0', '23/12/2022  -  22/12/2023', 'hayah_simple_life_58070866.pdf', NULL, NULL, 'Ahmed mohamed kamel elkot,Elkot', 1, 1, '2022-12-23 10:26:19', '2022-12-23 10:26:19'),
(53, 20, 1, 'Husband - الزوج', 'Noor bano jalal ahmed', 'Noor bano jalal ahmed', '01-01-1964', '58/58070867/0', '23-12-2022', 'Ajman, UAE', '0553549111', '8579442/0', '23/12/2022  -  22/12/2023', 'hayah_simple_life_58070867.pdf', NULL, NULL, 'Abdullah ,Jalal ahamed ', 1, 1, '2022-12-23 14:28:10', '2022-12-23 14:28:10'),
(54, 24, 1, 'Husband - الزوج', 'SHAIMAA MOHAMED MOHAMED IBRAHIM ELSHENBABY', 'SHAIMAA MOHAMED MOHAMED IBRAHIM ELSHENBABY', '16-10-1993', '58/58070868/0', '24-12-2022', 'Ajman, UAE', '0556490991', '8579442/0', '24/12/2022  -  23/12/2023', 'hayah_simple_life_58070868.pdf', NULL, NULL, 'ALY IBRAHIM ALY ,KANDIEL', 1, 1, '2022-12-24 07:52:55', '2022-12-24 07:52:55'),
(55, 24, 1, 'Other Family Relationship', 'ABDELHADY IBRAHIM KHALIL ABOUHAIBA ', 'ABDELHADY IBRAHIM KHALIL ABOUHAIBA ', '06-04-1950', '58/58070869/0', '24-12-2022', 'Ajman, UAE', '0507568616', '8579442/0', '24/12/2022  -  23/12/2023', 'hayah_simple_life_58070869.pdf', NULL, NULL, NULL, 1, 1, '2022-12-24 07:58:26', '2022-12-24 07:58:26'),
(56, 21, 1, 'Husband - الزوج', 'KARIMAN RAMADAN ABDELBASET RAMADAN', 'KARIMAN RAMADAN ABDELBASET RAMADAN', '07-12-1996', '58/58070870/0', '24-12-2022', 'Ajman, UAE', '0582278799', '8579442/0', '24/12/2022  -  23/12/2023', 'hayah_simple_life_58070870.pdf', NULL, NULL, 'AHMED MOHAMED ,FATHI HASAN', 1, 1, '2022-12-24 12:14:07', '2022-12-24 12:14:07'),
(57, 18, 1, 'Husband - الزوج', 'JAYAKODI ARACHCHILAGE NILUKA PUSHPAKUMARI', 'JAYAKODI ARACHCHILAGE NILUKA PUSHPAKUMARI', '16-08-1986', '58/58070871/0', '24-12-2022', 'Ajman, UAE', '0527245957', '8579442/0', '24/12/2022  -  23/12/2023', 'hayah_simple_life_58070871.pdf', NULL, NULL, 'DILRUK PRABASH,SENARTH KARUNARATHNA', 1, 1, '2022-12-24 12:30:39', '2022-12-24 12:30:39'),
(58, 24, 1, 'Father - الأب', 'ALAA T AHMED', 'ALAA T AHMED', '19-03-1989', '58/58070872/0', '26-12-2022', 'Ajman, UAE', '0501540447', '8579442/0', '26/12/2022  -  25/12/2023', 'hayah_simple_life_58070872.pdf', NULL, NULL, 'TARIK AHMED SHALAN SHALAN,SHALAN', 1, 1, '2022-12-26 07:24:34', '2022-12-26 07:24:34'),
(59, 18, 1, 'Father - الأب', 'JAWAD HAMAD YOUSEF ALRAWAJBEH', 'JAWAD HAMAD YOUSEF ALRAWAJBEH', '23-10-2007', '58/58070873/0', '26-12-2022', 'Ajman, UAE', '0561971968', '8579442/0', '26/12/2022  -  25/12/2023', 'hayah_simple_life_58070873.pdf', NULL, NULL, 'HAMAD YOUSEF FALEH,ALRAWAJBEH', 1, 1, '2022-12-26 08:18:29', '2022-12-26 08:18:29'),
(60, 21, 1, 'Son - الإبن', 'RAHMAT BEGUM BARKAT ALI', 'RAHMAT BEGUM BARKAT ALI', '01-01-1950', '58/58070874/0', '26-12-2022', 'Ajman, UAE', '0564061197', '8579442/0', '26/12/2022  -  25/12/2023', 'hayah_simple_life_58070874.pdf', NULL, NULL, 'SKINDAR AZAM,BARKAT ALI', 1, 1, '2022-12-26 08:25:49', '2022-12-26 08:25:49'),
(61, 24, 1, 'Husband - الزوج', 'NOURAN M Y ALHADDAD', 'NOURAN M Y ALHADDAD', '03-07-1992', '58/58070875/0', '26-12-2022', 'Ajman, UAE', '0526763111', '8579442/0', '26/12/2022  -  25/12/2023', 'hayah_simple_life_58070875.pdf', NULL, NULL, 'MUSTAFA M N ,ALHADDAD', 1, 1, '2022-12-26 09:19:27', '2022-12-26 09:19:27'),
(62, 21, 1, 'Husband - الزوج', 'HEBA ISSAM SHBAT', 'HEBA ISSAM SHBAT', '01-01-2000', '58/58070876/0', '26-12-2022', 'Ajman, UAE', '0565685078', '8579442/0', '26/12/2022  -  25/12/2023', 'hayah_simple_life_58070876.pdf', NULL, NULL, 'ABDALRHMAN,KHALID ALDERI', 1, 1, '2022-12-26 10:32:02', '2022-12-26 10:32:02'),
(63, 18, 1, 'Father - الأب', 'reem yassir elzubair ahmed', 'reem yassir elzubair ahmed', '25-07-2022', '58/58070877/0', '27-12-2022', 'Ajman, UAE', '0566611366', '8579442/0', '27/12/2022  -  26/12/2023', 'hayah_simple_life_58070877.pdf', NULL, NULL, 'yassir elzubair ,ahmed omer', 1, 1, '2022-12-27 10:40:08', '2022-12-27 10:40:08'),
(64, 23, 1, 'Father - الأب', 'UMM E HANI AMANULLAH MEMON', 'UMM E HANI AMANULLAH MEMON', '21-06-2008', '58/58070878/0', '27-12-2022', 'Ajman, UAE', '0528273898', '8579442/0', '27/12/2022  -  26/12/2023', 'hayah_simple_life_58070878.pdf', NULL, NULL, 'AMANULLAH MEMON MUHAMMAD  ,usman ', 1, 1, '2022-12-27 11:18:32', '2022-12-27 11:18:32'),
(65, 18, 1, 'Husband - الزوج', 'HALA DAOUD ABDEL LATIF ALFAR', 'HALA DAOUD ABDEL LATIF ALFAR', '01-01-1985', '58/58070879/0', '27-12-2022', 'Ajman, UAE', '0567774413', '8579442/0', '27/12/2022  -  26/12/2023', 'hayah_simple_life_58070879.pdf', NULL, NULL, 'AHMAD MOHAMMAD,AHMAD OWEIDAT', 1, 1, '2022-12-27 11:20:00', '2022-12-27 11:20:00'),
(66, 21, 1, 'Daughter - الإبنة', 'AMINA MOHAMED JAMA', 'AMINA MOHAMED JAMA', '01-01-1953', '58/58070880/0', '28-12-2022', 'Ajman, UAE', '0505824824', '8579442/0', '28/12/2022  -  27/12/2023', 'hayah_simple_life_58070880.pdf', NULL, NULL, 'AYAN HASSAN,OSMAN', 1, 1, '2022-12-28 09:43:39', '2022-12-28 09:43:39'),
(67, 20, 1, 'Father - الأب', 'Ahmed eslam Mohamed abdellatef abdelkhalek', 'Ahmed eslam Mohamed abdellatef abdelkhalek', '16-09-2022', '58/58070881/0', '28-12-2022', 'Ajman, UAE', '0564161381', '8579442/0', '28/12/2022  -  27/12/2023', 'hayah_simple_life_58070881.pdf', NULL, NULL, 'Eslam Mohamed abdellatef,Abdelkhalek', 1, 1, '2022-12-28 12:07:44', '2022-12-28 12:07:44'),
(68, 23, 1, 'Husband - الزوج', 'AYAT BASSAM FEHMY ABU HADBA', 'AYAT BASSAM FEHMY ABU HADBA', '12-12-1990', '58/58070882/0', '28-12-2022', 'Ajman, UAE', '0503077257', '8579442/0', '28/12/2022  -  27/12/2023', 'hayah_simple_life_58070882.pdf', NULL, NULL, 'DIYA HANI YAHIA ,NUWAYHI', 1, 1, '2022-12-28 15:59:04', '2022-12-28 15:59:04'),
(69, 23, 1, 'Father - الأب', 'KARAM DIYA HANI NUWAYHI', 'KARAM DIYA HANI NUWAYHI', '25-03-2022', '58/58070883/0', '28-12-2022', 'Ajman, UAE', '0503077257', '8579442/0', '28/12/2022  -  27/12/2023', 'hayah_simple_life_58070883.pdf', NULL, NULL, 'DIYA HANI YAHIA ,NUWAYHI', 1, 1, '2022-12-28 16:10:09', '2022-12-28 16:10:09'),
(70, 23, 1, 'Father - الأب', 'HANI DIYA HANI NUWAYHI', 'HANI DIYA HANI NUWAYHI', '29-10-2017', '58/58070884/0', '28-12-2022', 'Ajman, UAE', '0503077257', '8579442/0', '28/12/2022  -  27/12/2023', 'hayah_simple_life_58070884.pdf', NULL, NULL, 'DIYA HANI YAHIA ,NUWAYHI', 1, 1, '2022-12-28 16:23:25', '2022-12-28 16:23:25'),
(71, 24, 1, 'Father - الأب', 'AHMED MOTWAKIL FADLASID AKASHA ', 'AHMED MOTWAKIL FADLASID AKASHA ', '02-10-2021', '58/58070885/0', '29-12-2022', 'Ajman, UAE', '0521227378', '8579442/0', '29/12/2022  -  28/12/2023', 'hayah_simple_life_58070885.pdf', NULL, NULL, 'MOTWAKIL FADLASID AKASHA,BABEKER', 0, 1, '2022-12-29 07:25:01', '2022-12-29 07:25:01'),
(72, 24, 1, 'Husband - الزوج', 'MURAM AHMED ABDELRAHMAN HAMID ', 'MURAM AHMED ABDELRAHMAN HAMID ', '15-09-1992', '58/58070886/0', '29-12-2022', 'Ajman, UAE', '0521227378', '8579442/0', '29/12/2022  -  28/12/2023', 'hayah_simple_life_58070886.pdf', NULL, NULL, 'MOTWAKIL FADLASID AKASHA,BABEKER', 0, 1, '2022-12-29 07:27:20', '2022-12-29 07:27:20'),
(73, 21, 1, 'Husband - الزوج', 'NADIA NAHRI', 'NADIA NAHRI', '25-01-1986', '58/58070887/0', '29-12-2022', 'Ajman, UAE', '0504634432', '8579442/0', '29/12/2022  -  28/12/2023', 'hayah_simple_life_58070887.pdf', NULL, NULL, 'ABDULLA YOUSEF OBAID,ALNOON ALMATROOSHI', 1, 1, '2022-12-29 09:52:43', '2022-12-29 09:52:43'),
(74, 21, 1, 'Father - الأب', 'MUHAMMAD HASHIR BARI', 'MUHAMMAD HASHIR BARI', '30-11-2022', '58/58070888/0', '29-12-2022', 'Ajman, UAE', '0555520403', '8579442/0', '29/12/2022  -  28/12/2023', 'hayah_simple_life_58070888.pdf', NULL, NULL, 'AHSAN BARI,ABDUL BARI', 1, 1, '2022-12-29 12:28:27', '2022-12-29 12:28:27'),
(75, 20, 1, 'Wife - الزوجة', 'ramzi salhi', 'ramzi salhi', '13-09-1986', '58/58070889/0', '29-12-2022', 'Ajman, UAE', '0568341744', '8579442/0', '29/12/2022  -  28/12/2023', 'hayah_simple_life_58070889.pdf', NULL, NULL, 'FEDIA ,HLAILI', 1, 1, '2022-12-29 14:56:05', '2022-12-29 14:56:05'),
(76, 20, 1, 'Daughter - الإبنة', 'Sheba raj varghese', 'Sheba raj varghese', '02-04-1964', '58/58070890/0', '30-12-2022', 'Ajman, UAE', '0547595395', '8579442/0', '30/12/2022  -  29/12/2023', 'hayah_simple_life_58070890.pdf', NULL, NULL, 'Jiby raj pulikkottil raju,Pulikkottil chacko raju', 1, 1, '2022-12-30 07:45:57', '2022-12-30 07:45:57'),
(77, 21, 1, 'Husband - الزوج', 'LUMA ABDULHASAN M.JAWAD ALSARRAF', 'LUMA ABDULHASAN M.JAWAD ALSARRAF', '26-08-1973', '58/58070891/0', '30-12-2022', 'Ajman, UAE', '0509809759', '8579442/0', '30/12/2022  -  29/12/2023', 'hayah_simple_life_58070891.pdf', NULL, NULL, 'QUSSAY HAIKEL,RIADH AL TOUKY', 1, 1, '2022-12-30 08:29:46', '2022-12-30 08:29:46'),
(78, 21, 1, 'Father - الأب', 'ZAID QUSSAY HAIKEL AL TOUKY', 'ZAID QUSSAY HAIKEL AL TOUKY', '28-03-2016', '58/58070892/0', '30-12-2022', 'Ajman, UAE', '0509809759', '8579442/0', '30/12/2022  -  29/12/2023', 'hayah_simple_life_58070892.pdf', NULL, NULL, 'QUSSAY HAIKEL,RIADH AL TOUKY', 1, 1, '2022-12-30 08:31:49', '2022-12-30 08:31:49'),
(79, 21, 1, 'Other Family Relationship', 'ARSHAD MEHMOOD MUHAMMAD ASHRAF', 'ARSHAD MEHMOOD MUHAMMAD ASHRAF', '02-04-1960', '58/58070893/0', '30-12-2022', 'Ajman, UAE', '0522170599', '8579442/0', '30/12/2022  -  29/12/2023', 'hayah_simple_life_58070893.pdf', NULL, NULL, NULL, 1, 1, '2022-12-30 08:46:51', '2022-12-30 08:46:51'),
(80, 20, 1, 'Father - الأب', 'Abdulkader rabih alfares', 'Abdulkader rabih alfares', '01-01-1999', '58/58070894/0', '30-12-2022', 'Ajman, UAE', '0503669701', '8579442/0', '30/12/2022  -  29/12/2023', 'hayah_simple_life_58070894.pdf', NULL, NULL, 'Rahib abdulrahman ,Alfares', 1, 1, '2022-12-30 10:09:13', '2022-12-30 10:09:13'),
(81, 20, 1, 'Father - الأب', 'Abdulkader rabih alfares ', 'Abdulkader rabih alfares ', '01-01-1999', '58/58070895/0', '30-12-2022', 'Ajman, UAE', '0505875739', '8579442/0', '30/12/2022  -  29/12/2023', 'hayah_simple_life_58070895.pdf', NULL, NULL, 'Rabih abdulrahman,Alfares', 1, 1, '2022-12-30 10:15:32', '2022-12-30 10:15:32'),
(82, 23, 1, 'Other Family Relationship', 'ZOHRA NOUSHAD TALAL ', 'ZOHRA NOUSHAD TALAL ', '21-09-1995', '58/58070896/0', '30-12-2022', 'Ajman, UAE', '0562056841', '8579442/0', '30/12/2022  -  29/12/2023', 'hayah_simple_life_58070896.pdf', NULL, NULL, 'SPONSOR OF INVESTORS E,ENTERPRENEURS SPECIALZED ', 1, 1, '2022-12-30 13:42:00', '2022-12-30 13:42:00'),
(83, 18, 1, 'Son - الإبن', 'NABILA ABDULRAHIM ABU NOURI', 'NABILA ABDULRAHIM ABU NOURI', '27-05-1961', '58/58070897/0', '31-12-2022', 'Ajman, UAE', '0506300612', '8579442/0', '31/12/2022  -  30/12/2023', 'hayah_simple_life_58070897.pdf', NULL, NULL, 'FADI SHAFIK,IBRAHIM BASHA', 1, 1, '2022-12-31 19:35:20', '2022-12-31 19:35:20'),
(84, 18, 1, 'Son - الإبن', 'SHAFIQ HASAN IBRAHIM BASHA', 'SHAFIQ HASAN IBRAHIM BASHA', '11-03-1958', '58/58070898/0', '31-12-2022', 'Ajman, UAE', '0506300612', '8579442/0', '31/12/2022  -  30/12/2023', 'hayah_simple_life_58070898.pdf', NULL, NULL, 'FADI SHAFIK,IBRAHIM BASHA', 1, 1, '2022-12-31 19:44:06', '2022-12-31 19:44:06'),
(85, 20, 1, 'Father - الأب', 'Tarek ahmed kamel abdelmawla elsayed elsayed e', 'Tarek ahmed kamel abdelmawla elsayed elsayed e', '27-12-2000', '58/58070899/0', '02-01-2023', 'Ajman, UAE', '0567173296', '8579442/0', '02/01/2023  -  01/01/2024', 'hayah_simple_life_58070899.pdf', NULL, NULL, 'Ahmed kamel abdelmoula,Elsayed elsayed', 1, 1, '2023-01-02 13:09:28', '2023-01-02 13:09:28'),
(86, 21, 1, 'Husband - الزوج', 'RABAB ETTAM', 'RABAB ETTAM', '12-10-1992', '58/58070900/0', '03-01-2023', 'Ajman, UAE', '0543111325', '8579442/0', '03/01/2023  -  02/01/2024', 'hayah_simple_life_58070900.pdf', NULL, NULL, 'AMEER LOUAY HASEEP,QASIM AGHA', 1, 1, '2023-01-03 06:40:09', '2023-01-03 06:40:09'),
(87, 22, 1, 'Father - الأب', 'JEWEL JUDY KATE CARTA ARANAL ', 'JEWEL JUDY KATE CARTA ARANAL ', '23-08-2007', '58/58070901/0', '03-01-2023', 'Ajman, UAE', '0504925762', '8579442/0', '03/01/2023  -  02/01/2024', 'hayah_simple_life_58070901.pdf', NULL, NULL, 'JULIUS ,MEJICA ARANAL ', 1, 1, '2023-01-03 10:18:37', '2023-01-03 10:18:37'),
(88, 21, 1, 'Daughter - الإبنة', 'FADIA REDA DAHER', 'FADIA REDA DAHER', '01-01-1967', '58/58070902/0', '03-01-2023', 'Ajman, UAE', '0504404979', '8579442/0', '03/01/2023  -  02/01/2024', 'hayah_simple_life_58070902.pdf', NULL, NULL, 'YASSMIN RIKAD,RENNAWI', 1, 1, '2023-01-03 12:53:52', '2023-01-03 12:53:52'),
(89, 21, 1, 'Wife - الزوجة', 'TEWODROS ALEFE MELES', 'TEWODROS ALEFE MELES', '28-07-1978', '58/58070903/0', '04-01-2023', 'Ajman, UAE', '0505802941', '8579442/0', '04/01/2023  -  03/01/2024', 'hayah_simple_life_58070903.pdf', NULL, NULL, 'TIEGST GERENSEA,GEBREGERGS', 1, 1, '2023-01-04 07:10:07', '2023-01-04 07:10:07'),
(90, 21, 1, 'Father - الأب', 'MOHAMAD MOWAFAK YASSIN', 'MOHAMAD MOWAFAK YASSIN', '15-10-2012', '58/58070904/0', '04-01-2023', 'Ajman, UAE', '0564551255', '8579442/0', '04/01/2023  -  03/01/2024', 'hayah_simple_life_58070904.pdf', NULL, NULL, 'MOWAFAK SAID ,YASSIN', 1, 1, '2023-01-04 07:13:59', '2023-01-04 07:13:59'),
(91, 21, 1, 'Father - الأب', 'SHAM MOWAFAK YASSIN', 'SHAM MOWAFAK YASSIN', '10-07-2016', '58/58070905/0', '04-01-2023', 'Ajman, UAE', '0564551255', '8579442/0', '04/01/2023  -  03/01/2024', 'hayah_simple_life_58070905.pdf', NULL, NULL, 'MOWAFAK SAID ,YASSIN', 1, 1, '2023-01-04 07:33:14', '2023-01-04 07:33:14'),
(92, 21, 1, 'Husband - الزوج', 'ALZAHRAA MOHAMAD ALBAGHDADI', 'ALZAHRAA MOHAMAD ALBAGHDADI', '03-01-1992', '58/58070906/0', '04-01-2023', 'Ajman, UAE', '0564551255', '8579442/0', '04/01/2023  -  03/01/2024', 'hayah_simple_life_58070906.pdf', NULL, NULL, 'MOWAFAK SAID ,YASSIN', 1, 1, '2023-01-04 07:37:04', '2023-01-04 07:37:04'),
(93, 20, 1, 'Wife - الزوجة', 'Sami Salim sadig mohamed', 'Sami Salim sadig mohamed', '09-05-1966', '58/58070907/0', '04-01-2023', 'Ajman, UAE', '0544504783', '8579442/0', '04/01/2023  -  03/01/2024', 'hayah_simple_life_58070907.pdf', NULL, NULL, 'Selma shiekhidris mohamed,Mohamed ahmed', 1, 1, '2023-01-04 09:24:45', '2023-01-04 09:24:45'),
(94, 20, 1, 'Husband - الزوج', 'Paras asma ezzeuddine alayari ezzeuddine ', 'Paras asma ezzeuddine alayari ezzeuddine ', '03-07-1949', '58/58070908/0', '04-01-2023', 'Ajman, UAE', '0503671641', '8579442/0', '04/01/2023  -  03/01/2024', 'hayah_simple_life_58070908.pdf', NULL, NULL, 'Ezzeuddine alayari,Hattab alayari', 1, 1, '2023-01-04 13:15:11', '2023-01-04 13:15:11'),
(95, 18, 1, 'Husband - الزوج', 'IBTISSAM MOUJIB', 'IBTISSAM MOUJIB', '09-05-1986', '58/58070909/0', '04-01-2023', 'Ajman, UAE', '0589250080', '8579442/0', '04/01/2023  -  03/01/2024', 'hayah_simple_life_58070909.pdf', NULL, NULL, 'HUSSEIN NAGAH,WEFKI MOHAMED', 1, 1, '2023-01-04 17:12:19', '2023-01-04 17:12:19'),
(96, 18, 1, 'Father - الأب', 'TAHA HUSSEIN NAGAH WAFKI MOHAMED', 'TAHA HUSSEIN NAGAH WAFKI MOHAMED', '09-06-2020', '58/58070910/0', '04-01-2023', 'Ajman, UAE', '0589250080', '8579442/0', '04/01/2023  -  03/01/2024', 'hayah_simple_life_58070910.pdf', NULL, NULL, 'HUSSEIN NAGAH,WEFKI MOHAMED', 1, 1, '2023-01-04 17:22:38', '2023-01-04 17:22:38'),
(97, 18, 1, 'Father - الأب', 'MUSTAFA HUSSEIN NAGAH WEFKI MOHAMED', 'MUSTAFA HUSSEIN NAGAH WEFKI MOHAMED', '01-07-2017', '58/58070911/0', '04-01-2023', 'Ajman, UAE', '0589250080', '8579442/0', '04/01/2023  -  03/01/2024', 'hayah_simple_life_58070911.pdf', NULL, NULL, 'HUSSEIN NAGAH,WEFKI MOHAMED', 1, 1, '2023-01-04 17:28:10', '2023-01-04 17:28:10'),
(98, 20, 1, 'Husband - الزوج', 'Seham Salem ahmed Al yafeal', 'Seham Salem ahmed Al yafeal', '06-11-1986', '58/58070912/0', '05-01-2023', 'Ajman, UAE', '0507700580', '8579442/0', '05/01/2023  -  04/01/2024', 'hayah_simple_life_58070912.pdf', NULL, NULL, 'Naser ahmed zain ,Fadhel', 1, 1, '2023-01-05 08:17:53', '2023-01-05 08:17:53'),
(99, 22, 1, 'Other Family Relationship', 'aliya abdul aziz ', 'aliya abdul aziz ', '14-03-2009', '58/58070913/0', '05-01-2023', 'Ajman, UAE', '0566388873', '8579442/0', '05/01/2023  -  04/01/2024', 'hayah_simple_life_58070913.pdf', NULL, NULL, 'humaid abbas ,karmak juma alblooshi ', 1, 1, '2023-01-05 08:48:23', '2023-01-05 08:48:23'),
(100, 22, 1, 'Other Family Relationship', 'MAHA ABDUL AZIZ ', 'MAHA ABDUL AZIZ ', '31-10-2016', '58/58070914/0', '05-01-2023', 'Ajman, UAE', '0566388873', '8579442/0', '05/01/2023  -  04/01/2024', 'hayah_simple_life_58070914.pdf', NULL, NULL, 'humaid abbas ,karmak juma alblooshi ', 1, 1, '2023-01-05 09:20:00', '2023-01-05 09:20:00'),
(101, 22, 1, 'Other Family Relationship', 'MAHA ABDUL AZIZ ', 'MAHA ABDUL AZIZ ', '18-01-2015', '58/58070915/0', '05-01-2023', 'Ajman, UAE', '0566388873', '8579442/0', '05/01/2023  -  04/01/2024', 'hayah_simple_life_58070915.pdf', NULL, NULL, 'humaid abbas ,karmak juma alblooshi ', 1, 1, '2023-01-05 09:41:51', '2023-01-05 09:41:51'),
(102, 22, 1, 'Other Family Relationship', 'MANAL ABDUL AZIZ ', 'MANAL ABDUL AZIZ ', '18-01-2015', '58/58070916/0', '05-01-2023', 'Ajman, UAE', '0566388873', '8579442/0', '05/01/2023  -  04/01/2024', 'hayah_simple_life_58070916.pdf', NULL, NULL, 'humaid abbas ,karmak juma alblooshi ', 1, 1, '2023-01-05 09:44:35', '2023-01-05 09:44:35'),
(103, 18, 1, 'Father - الأب', 'Amir Mohammed Salem Batwaih Al Kendi', 'Amir Mohammed Salem Batwaih Al Kendi', '12-12-2022', '58/58070917/0', '05-01-2023', 'Ajman, UAE', '0502015577', '8579442/0', '05/01/2023  -  04/01/2024', 'hayah_simple_life_58070917.pdf', NULL, NULL, 'MOHAMMED SALEM SAEED,BATWAIH AL KENDI', 1, 1, '2023-01-05 12:17:59', '2023-01-05 12:17:59'),
(104, 20, 1, 'Husband - الزوج', 'Fatima alzahraa anas okla', 'Fatima alzahraa anas okla', '01-01-1998', '58/58070918/0', '05-01-2023', 'Ajman, UAE', '0505521075', '8579442/0', '05/01/2023  -  04/01/2024', 'hayah_simple_life_58070918.pdf', NULL, NULL, 'Mohamad Walid ,Marzouk ', 1, 1, '2023-01-05 15:07:04', '2023-01-05 15:07:04'),
(105, 20, 1, 'Husband - الزوج', 'Seham Salem ahmed Al yafeai', 'Seham Salem ahmed Al yafeai', '06-11-1986', '58/58070919/0', '05-01-2023', 'Ajman, UAE', '0507700580', '8579442/0', '05/01/2023  -  04/01/2024', 'hayah_simple_life_58070919.pdf', NULL, NULL, 'Naser ahmed zain ,Fadhel', 1, 1, '2023-01-05 15:47:41', '2023-01-05 15:47:41'),
(106, 18, 1, 'Husband - الزوج', 'DIALA HASSAN HACHEM OMAR HACHEM', 'DIALA HASSAN HACHEM OMAR HACHEM', '25-06-1983', '58/58070920/0', '05-01-2023', 'Ajman, UAE', '0502430695', '8579442/0', '05/01/2023  -  04/01/2024', 'hayah_simple_life_58070920.pdf', NULL, NULL, 'OMAR IBRAHIM ,HACHEM', 1, 1, '2023-01-05 16:59:50', '2023-01-05 16:59:50'),
(107, 18, 1, 'Father - الأب', 'NOOR OMER HACEM', 'NOOR OMER HACEM', '09-03-2005', '58/58070921/0', '05-01-2023', 'Ajman, UAE', '0502430695', '8579442/0', '05/01/2023  -  04/01/2024', 'hayah_simple_life_58070921.pdf', NULL, NULL, 'OMAR IBRAHIM ,HACHEM', 1, 1, '2023-01-05 17:10:31', '2023-01-05 17:10:31'),
(108, 18, 1, 'Father - الأب', 'AHMED OMER HACHEM', 'AHMED OMER HACHEM', '01-03-2003', '58/58070922/0', '05-01-2023', 'Ajman, UAE', '0502430695', '8579442/0', '05/01/2023  -  04/01/2024', 'hayah_simple_life_58070922.pdf', NULL, NULL, 'OMAR IBRAHIM ,HACHEM', 1, 1, '2023-01-05 17:18:33', '2023-01-05 17:18:33'),
(109, 21, 1, 'Father - الأب', 'AMINA MUBARAK OSMAN SULIMAN', 'AMINA MUBARAK OSMAN SULIMAN', '28-02-2000', '58/58070923/0', '07-01-2023', 'Ajman, UAE', '0555057507', '8579442/0', '07/01/2023  -  06/01/2024', 'hayah_simple_life_58070923.pdf', NULL, NULL, 'MUBARAK OSMAN,SULIMAN ELSHIEKH', 1, 1, '2023-01-07 07:49:58', '2023-01-07 07:49:58'),
(110, 21, 1, 'Father - الأب', 'ELAF MUBARAK OSMAN SULIMAN', 'ELAF MUBARAK OSMAN SULIMAN', '09-05-2001', '58/58070924/0', '07-01-2023', 'Ajman, UAE', '0555057507', '8579442/0', '07/01/2023  -  06/01/2024', 'hayah_simple_life_58070924.pdf', NULL, NULL, 'MUBARAK OSMAN,SULIMAN ELSHIEKH', 1, 1, '2023-01-07 07:51:44', '2023-01-07 07:51:44'),
(111, 21, 1, 'Other Family Relationship', 'AHMED ARAFAT', 'AHMED ARAFAT', '25-07-1972', '58/58070925/0', '07-01-2023', 'Ajman, UAE', '0568733686', '8579442/0', '07/01/2023  -  06/01/2024', 'hayah_simple_life_58070925.pdf', NULL, NULL, NULL, 1, 1, '2023-01-07 15:01:29', '2023-01-07 15:01:29'),
(112, 21, 1, 'Husband - الزوج', 'SHAREN ABOU JEMEZA', 'SHAREN ABOU JEMEZA', '12-07-1978', '58/58070926/0', '07-01-2023', 'Ajman, UAE', '0568733686', '8579442/0', '07/01/2023  -  06/01/2024', 'hayah_simple_life_58070926.pdf', NULL, NULL, 'AHMEF,ARAFAT', 1, 1, '2023-01-07 15:05:24', '2023-01-07 15:05:24'),
(113, 21, 1, 'Father - الأب', 'MAJED FOAD FAZLI', 'MAJED FOAD FAZLI', '25-01-2010', '58/58070927/0', '09-01-2023', 'Ajman, UAE', '0502114440', '8579442/0', '09/01/2023  -  08/01/2024', 'hayah_simple_life_58070927.pdf', NULL, NULL, 'FOAD ABDOLKAZEM ,FAZLI', 1, 1, '2023-01-09 10:23:53', '2023-01-09 10:23:53'),
(114, 21, 1, 'Father - الأب', 'MARYAM FOAD FAZLI', 'MARYAM FOAD FAZLI', '28-06-2001', '58/58070928/0', '09-01-2023', 'Ajman, UAE', '0502114440', '8579442/0', '09/01/2023  -  08/01/2024', 'hayah_simple_life_58070928.pdf', NULL, NULL, 'FOAD ABDOLKAZEM ,FAZLI', 1, 1, '2023-01-09 10:25:20', '2023-01-09 10:25:20'),
(115, 21, 1, 'Father - الأب', 'MOHAMMAD FOAD FAZLI', 'MOHAMMAD FOAD FAZLI', '13-05-2003', '58/58070929/0', '09-01-2023', 'Ajman, UAE', '0502114440', '8579442/0', '09/01/2023  -  08/01/2024', 'hayah_simple_life_58070929.pdf', NULL, NULL, 'FOAD ABDOLKAZEM ,FAZLI', 1, 1, '2023-01-09 10:27:07', '2023-01-09 10:27:07'),
(116, 21, 1, 'Husband - الزوج', 'HAMIDEH ZEIDOUN HAYAVIEH', 'HAMIDEH ZEIDOUN HAYAVIEH', '18-07-1975', '58/58070930/0', '09-01-2023', 'Ajman, UAE', '0502114440', '8579442/0', '09/01/2023  -  08/01/2024', 'hayah_simple_life_58070930.pdf', NULL, NULL, 'FOAD ABDOLKAZEM ,FAZLI', 1, 1, '2023-01-09 10:28:56', '2023-01-09 10:28:56'),
(117, 20, 1, 'Father - الأب', 'Muhammad Abdul basit Abdul basit ', 'Muhammad Abdul basit Abdul basit ', '31-05-2018', '58/58070931/0', '09-01-2023', 'Ajman, UAE', '0559985353', '8579442/0', '09/01/2023  -  08/01/2024', 'hayah_simple_life_58070931.pdf', NULL, NULL, 'Abdul basit noor muhammad,Noor muhammad', 1, 1, '2023-01-09 10:41:20', '2023-01-09 10:41:20'),
(118, 20, 1, 'Father - الأب', 'Mohammed Abdul basit Abdul basit ', 'Mohammed Abdul basit Abdul basit ', '31-05-2018', '58/58070932/0', '09-01-2023', 'Ajman, UAE', '0559985353', '8579442/0', '09/01/2023  -  08/01/2024', 'hayah_simple_life_58070932.pdf', NULL, NULL, 'Abdul basit noor muhammad,Noor muhammad', 1, 1, '2023-01-09 10:45:41', '2023-01-09 10:45:41'),
(119, 20, 1, 'Father - الأب', 'Hyra amrin karat Abdul jaleel karat ', 'Hyra amrin karat Abdul jaleel karat ', '24-09-2022', '58/58070933/0', '09-01-2023', 'Ajman, UAE', '0508983599', '8579442/0', '09/01/2023  -  08/01/2024', 'hayah_simple_life_58070933.pdf', NULL, NULL, 'Abdul jaleel karat,Mohamed kutty haji karat', 1, 1, '2023-01-09 17:44:03', '2023-01-09 17:44:03'),
(120, 23, 1, 'Other Family Relationship', 'MUHAMMAD BASHIR SULTAN MUHAMMAD KHAN', 'MUHAMMAD BASHIR SULTAN MUHAMMAD KHAN', '25-12-1950', '58/58070934/0', '10-01-2023', 'Ajman, UAE', '0506334579', '8579442/0', '10/01/2023  -  09/01/2024', 'hayah_simple_life_58070934.pdf', NULL, NULL, NULL, 1, 1, '2023-01-10 07:25:44', '2023-01-10 07:25:44'),
(121, 21, 1, 'Husband - الزوج', 'RAMA IBRAHIM ALMASALMEH', 'RAMA IBRAHIM ALMASALMEH', '20-01-1999', '58/58070935/0', '10-01-2023', 'Ajman, UAE', '0501036368', '8579442/0', '10/01/2023  -  09/01/2024', 'hayah_simple_life_58070935.pdf', NULL, NULL, 'TAMER QASIM,MOHAMMAD SHAMASNEH', 1, 1, '2023-01-10 08:22:54', '2023-01-10 08:22:54'),
(122, 20, 1, 'Other Family Relationship', 'Arshad irfani sher Mohammad ', 'Arshad irfani sher Mohammad ', '01-01-1989', '58/58070936/0', '10-01-2023', 'Ajman, UAE', '0525367014', '8579442/0', '10/01/2023  -  09/01/2024', 'hayah_simple_life_58070936.pdf', NULL, NULL, NULL, 1, 1, '2023-01-10 10:32:40', '2023-01-10 10:32:40'),
(123, 20, 1, 'Husband - الزوج', 'Parwana haji Mahmood ', 'Parwana haji Mahmood ', '05-05-2000', '58/58070937/0', '10-01-2023', 'Ajman, UAE', '0542211993', '8579442/0', '10/01/2023  -  09/01/2024', 'hayah_simple_life_58070937.pdf', NULL, NULL, 'Usman Syed Jamal ,Syed jamal', 1, 1, '2023-01-10 10:51:13', '2023-01-10 10:51:13'),
(124, 23, 1, 'Husband - الزوج', 'HADEEL MOHAMMED ABDALLA MOHAMMED ', 'HADEEL MOHAMMED ABDALLA MOHAMMED ', '26-07-1988', '58/58070938/0', '10-01-2023', 'Ajman, UAE', '0545683956', '8579442/0', '10/01/2023  -  09/01/2024', 'hayah_simple_life_58070938.pdf', NULL, NULL, 'HAFIZ ELTOM ABDO ,FANGOUL ', 1, 1, '2023-01-10 14:34:18', '2023-01-10 14:34:18'),
(125, 21, 1, 'Father - الأب', 'AHMED A.A.ABUTAHA', 'AHMED A.A.ABUTAHA', '31-01-2011', '58/58070939/0', '11-01-2023', 'Ajman, UAE', '0505284440', '8579442/0', '11/01/2023  -  10/01/2024', 'hayah_simple_life_58070939.pdf', NULL, NULL, 'ASHRAF A.M.,ABUTAHA', 1, 1, '2023-01-11 09:30:54', '2023-01-11 09:30:54'),
(126, 21, 1, 'Father - الأب', 'LAMA A.A.ABUTAHA', 'LAMA A.A.ABUTAHA', '23-02-2013', '58/58070940/0', '11-01-2023', 'Ajman, UAE', '0505284440', '8579442/0', '11/01/2023  -  10/01/2024', 'hayah_simple_life_58070940.pdf', NULL, NULL, 'ASHRAF A.M.,ABUTAHA', 1, 1, '2023-01-11 09:33:10', '2023-01-11 09:33:10'),
(127, 21, 1, 'Father - الأب', 'IMAD A.A.ABUTAHA', 'IMAD A.A.ABUTAHA', '16-09-2015', '58/58070941/0', '11-01-2023', 'Ajman, UAE', '0505284440', '8579442/0', '11/01/2023  -  10/01/2024', 'hayah_simple_life_58070941.pdf', NULL, NULL, 'ASHRAF A.M.,ABUTAHA', 1, 1, '2023-01-11 09:34:46', '2023-01-11 09:34:46'),
(128, 21, 1, 'Husband - الزوج', 'SALWA I. H. ABUTAHA', 'SALWA I. H. ABUTAHA', '28-12-1992', '58/58070942/0', '11-01-2023', 'Ajman, UAE', '0505284440', '8579442/0', '11/01/2023  -  10/01/2024', 'hayah_simple_life_58070942.pdf', NULL, NULL, 'ASHRAF A.M.,ABUTAHA', 1, 1, '2023-01-11 09:36:50', '2023-01-11 09:36:50'),
(129, 23, 1, 'Father - الأب', 'FADL AHMED ALI AL HILO', 'FADL AHMED ALI AL HILO', '25-11-2021', '58/58070943/0', '12-01-2023', 'Ajman, UAE', '0554485882', '8579442/0', '12/01/2023  -  11/01/2024', 'hayah_simple_life_58070943.pdf', NULL, NULL, 'AHMAD ALI MEER ,ALI ', 1, 1, '2023-01-12 09:39:42', '2023-01-12 09:39:42'),
(130, 23, 1, 'Father - الأب', 'SYED HAMDAN MAAZ SYED MAAZ AHMED ', 'SYED HAMDAN MAAZ SYED MAAZ AHMED ', '18-10-2018', '58/58070944/0', '12-01-2023', 'Ajman, UAE', '0509809920', '8579442/0', '12/01/2023  -  11/01/2024', 'hayah_simple_life_58070944.pdf', NULL, NULL, 'SYED MAAZ AHMED SYED RIAZ ,AHMED ', 1, 1, '2023-01-12 11:36:45', '2023-01-12 11:36:45'),
(131, 23, 1, 'Father - الأب', 'AFRAH SHAH MUHAMMAD ', 'AFRAH SHAH MUHAMMAD ', '07-05-2005', '58/58070945/0', '12-01-2023', 'Ajman, UAE', '0555909907', '8579442/0', '12/01/2023  -  11/01/2024', 'hayah_simple_life_58070945.pdf', NULL, NULL, 'SHAH MUHAMMAD MUHAMMAD ,HAJI ', 1, 1, '2023-01-12 15:33:52', '2023-01-12 15:33:52'),
(132, 22, 1, 'Husband - الزوج', 'BIBI KHADEJA AKTER', 'BIBI KHADEJA AKTER', '04-09-1999', '58/58070946/0', '13-01-2023', 'Ajman, UAE', '0586597799', '8579442/0', '13/01/2023  -  12/01/2024', 'hayah_simple_life_58070946.pdf', NULL, NULL, 'TAREK AZIZ ,MD HABIBULLAH ', 1, 1, '2023-01-13 05:32:03', '2023-01-13 05:32:03'),
(133, 22, 1, 'Father - الأب', 'MD TAHSIN AHAMED ', 'MD TAHSIN AHAMED ', '26-08-2019', '58/58070947/0', '13-01-2023', 'Ajman, UAE', '0586597799', '8579442/0', '13/01/2023  -  12/01/2024', 'hayah_simple_life_58070947.pdf', NULL, NULL, 'TAREK AZIZ ,MD HABIBULLAH ', 1, 1, '2023-01-13 06:41:51', '2023-01-13 06:41:51'),
(134, 21, 1, 'Father - الأب', 'AYA SAAD KHALID AL-JANABI', 'AYA SAAD KHALID AL-JANABI', '04-03-1996', '58/58070948/0', '13-01-2023', 'Ajman, UAE', '0503095851', '8579442/0', '13/01/2023  -  12/01/2024', 'hayah_simple_life_58070948.pdf', NULL, NULL, 'SAAD KHALID,JAMEEL AL-JANABI', 1, 1, '2023-01-13 08:27:43', '2023-01-13 08:27:43'),
(135, 18, 1, 'Husband - الزوج', 'sahira banu karayil d o hassan haji', 'sahira banu karayil d o hassan haji', '30-05-1967', '58/58070949/0', '13-01-2023', 'Ajman, UAE', '0545862424', '8579442/0', '13/01/2023  -  12/01/2024', 'hayah_simple_life_58070949.pdf', NULL, NULL, 'cholakkal hamza ,hassan', 1, 1, '2023-01-13 08:43:09', '2023-01-13 08:43:09'),
(136, 21, 1, 'Father - الأب', 'HAYFA MOHAMMED THAER AL-RUBAYE', 'HAYFA MOHAMMED THAER AL-RUBAYE', '17-10-2022', '58/58070950/0', '13-01-2023', 'Ajman, UAE', '0501036388', '8579442/0', '13/01/2023  -  12/01/2024', 'hayah_simple_life_58070950.pdf', NULL, NULL, 'MOHAMMED THAER,FADHIL AL-RUBAYE', 1, 1, '2023-01-13 12:08:47', '2023-01-13 12:08:47'),
(137, 23, 1, 'Other Family Relationship', 'MUHAMMAD AZEEM GHULAM RASOOL', 'MUHAMMAD AZEEM GHULAM RASOOL', '01-01-1956', '58/58070951/0', '13-01-2023', 'Ajman, UAE', '0506265093', '8579442/0', '13/01/2023  -  12/01/2024', 'hayah_simple_life_58070951.pdf', NULL, NULL, NULL, 1, 1, '2023-01-13 14:50:47', '2023-01-13 14:50:47'),
(138, 24, 1, 'Husband - الزوج', 'Zehra Ali Rehan Ahmed Khan', 'Zehra Ali Rehan Ahmed Khan', '05-06-1984', '58/58070952/0', '14-01-2023', 'Ajman, UAE', '0508918483', '8579442/0', '14/01/2023  -  13/01/2024', 'hayah_simple_life_58070952.pdf', NULL, NULL, 'Rehan Ahmed khan Zia ,Ahmed Khan', 0, 1, '2023-01-14 12:58:12', '2023-01-14 12:58:12'),
(139, 22, 1, 'Husband - الزوج', 'YOUSRIA AWAD MUSA MOHAMMED AHMED ', 'YOUSRIA AWAD MUSA MOHAMMED AHMED ', '01-01-1993', '58/58070953/0', '16-01-2023', 'Ajman, UAE', '0561213110', '8579442/0', '16/01/2023  -  15/01/2024', 'hayah_simple_life_58070953.pdf', NULL, NULL, 'ABDALLA ELTAYEB ,HAGO TAIALLA ', 0, 1, '2023-01-16 06:32:23', '2023-01-16 06:32:23'),
(140, 21, 1, 'Father - الأب', 'MHD KHIR M.EID BARH', 'MHD KHIR M.EID BARH', '18-01-1999', '58/58070954/0', '16-01-2023', 'Ajman, UAE', '0506464468', '8579442/0', '16/01/2023  -  15/01/2024', 'hayah_simple_life_58070954.pdf', NULL, NULL, 'MOHAMED EID,MOHAMED KHAIR BARAH', 1, 1, '2023-01-16 08:36:06', '2023-01-16 08:36:06'),
(141, 18, 1, 'Husband - الزوج', 'AMNA M A FOQAHAA', 'AMNA M A FOQAHAA', '24-04-1989', '58/58070955/0', '16-01-2023', 'Ajman, UAE', '0529190666', '8579442/0', '16/01/2023  -  15/01/2024', 'hayah_simple_life_58070955.pdf', NULL, NULL, 'HASSAN MOHAMMED RIAD,HASSAN ABU ODEH', 1, 1, '2023-01-16 09:03:37', '2023-01-16 09:03:37'),
(142, 18, 1, 'Father - الأب', 'SARA HASSAN ABU ODEH', 'SARA HASSAN ABU ODEH', '14-08-2006', '58/58070956/0', '16-01-2023', 'Ajman, UAE', '0529190666', '8579442/0', '16/01/2023  -  15/01/2024', 'hayah_simple_life_58070956.pdf', NULL, NULL, 'HASSAN MOHAMMED RIAD,HASSAN ABU ODEH', 1, 1, '2023-01-16 09:12:13', '2023-01-16 09:12:13'),
(143, 18, 1, 'Father - الأب', 'MOHAMED HASSAN ABU ODEH', 'MOHAMED HASSAN ABU ODEH', '12-10-2009', '58/58070957/0', '16-01-2023', 'Ajman, UAE', '0529190666', '8579442/0', '16/01/2023  -  15/01/2024', 'hayah_simple_life_58070957.pdf', NULL, NULL, 'HASSAN MOHAMMED RIAD,HASSAN ABU ODEH', 1, 1, '2023-01-16 09:22:19', '2023-01-16 09:22:19'),
(144, 21, 1, 'Husband - الزوج', 'RAGHAD METHAQ SALIM', 'RAGHAD METHAQ SALIM', '25-02-2003', '58/58070958/0', '16-01-2023', 'Ajman, UAE', '0543111325', '8579442/0', '16/01/2023  -  15/01/2024', 'hayah_simple_life_58070958.pdf', NULL, NULL, 'AMEER LOUAY HASEEP,QASIM AGHA', 1, 1, '2023-01-16 10:30:05', '2023-01-16 10:30:05'),
(145, 22, 1, 'Mother - الأم', 'SARA SAMEH ABDALLA MABROUK MOHAMED ', 'SARA SAMEH ABDALLA MABROUK MOHAMED ', '08-06-2012', '58/58070959/0', '24-01-2023', 'Ajman, UAE', '0566325325', '8579442/0', '24/01/2023  -  23/01/2024', 'hayah_simple_life_58070959.pdf', NULL, NULL, 'SAFAA OTHMAN ABD ELMAGID ,HASSAN AHMED HABIB ', 0, 1, '2023-01-24 15:39:17', '2023-01-24 15:39:17'),
(146, 24, 1, 'Mother - الأم', 'Mariam Ahmed Farouk Soliman', 'Mariam Ahmed Farouk Soliman', '09-06-2004', '58/58070960/0', '30-01-2023', 'Ajman, UAE', '0509696215', '8579442/0', '30/01/2023  -  29/01/2024', 'hayah_simple_life_58070960.pdf', NULL, NULL, 'Nagwa Ahmed Kamal,Nabih', 0, 1, '2023-01-30 10:18:24', '2023-01-30 10:18:24'),
(147, 24, 1, 'Mother - الأم', 'Omar Ahmed Farouk Soliman', 'Omar Ahmed Farouk Soliman', '11-08-2008', '58/58070961/0', '30-01-2023', 'Ajman, UAE', '0509696215', '8579442/0', '30/01/2023  -  29/01/2024', 'hayah_simple_life_58070961.pdf', NULL, NULL, 'Nagwa Ahmed Kamal,Nabih', 0, 1, '2023-01-30 10:20:19', '2023-01-30 10:20:19'),
(148, 24, 1, 'Husband - الزوج', 'Hoda Ali Fouad Mohamed Seddik', 'Hoda Ali Fouad Mohamed Seddik', '01-04-1984', '58/58070962/0', '01-02-2023', 'Ajman, UAE', '0552273648', '8579442/0', '01/02/2023  -  31/01/2024', 'hayah_simple_life_58070962.pdf', NULL, NULL, 'Ameer Ahmed Mohamed,Montaser', 0, 1, '2023-02-01 08:01:54', '2023-02-01 08:01:54');
INSERT INTO `pdf_info` (`id`, `user_id`, `template_id`, `relation_id`, `policy_holder`, `insured_name`, `birth_date`, `policy_number`, `policy_issue`, `address`, `mobile_number`, `business_code`, `insurance_period`, `pdf_name`, `insurance_plan`, `co_pay`, `select_name`, `status`, `policy_status`, `created_at`, `updated_at`) VALUES
(149, 24, 1, 'Son - الإبن', 'Mohammednajib H S Alagha', 'Mohammednajib H S Alagha', '03-10-1952', '58/58070963/0', '14-02-2023', 'Ajman, UAE', '0503430443', '8579442/0', '14/02/2023  -  13/02/2024', 'hayah_simple_life_58070963.pdf', NULL, NULL, 'Belal M,H Alagha', 0, 1, '2023-02-14 09:20:03', '2023-02-14 09:20:03'),
(150, 24, 1, 'Son - الإبن', 'Samia M N Elagha ', 'Samia M N Elagha ', '19-01-1960', '58/58070964/0', '14-02-2023', 'Ajman, UAE', '0503430443', '8579442/0', '14/02/2023  -  13/02/2024', 'hayah_simple_life_58070964.pdf', NULL, NULL, 'Belal M,H Alagha', 0, 1, '2023-02-14 09:24:08', '2023-02-14 09:24:08'),
(151, 22, 1, 'Son - الإبن', 'SHAJAHAN BEGAM ABDULGAFOUR ', 'SHAJAHAN BEGAM ABDULGAFOUR ', '20-10-1971', '58/58070965/0', '14-02-2023', 'Ajman, UAE', '0507370622', '8579442/0', '14/02/2023  -  13/02/2024', 'hayah_simple_life_58070965.pdf', NULL, NULL, 'SAEED DARWISH ,MOHAMED SALIM ASHTAILI ', 0, 1, '2023-02-14 11:08:01', '2023-02-14 11:08:01'),
(152, 22, 1, 'Mother - الأم', 'HAZAROT IBRAHIM NUR ALAM ', 'HAZAROT IBRAHIM NUR ALAM ', '27-04-2018', '58/58070966/0', '23-02-2023', 'Ajman, UAE', '0582528554', '8579442/0', '23/02/2023  -  22/02/2024', 'hayah_simple_life_58070966.pdf', NULL, NULL, 'MST KULSUMA BEGUM ,MD SHOFIQUR RAHMAN ', 0, 1, '2023-02-23 09:23:02', '2023-02-23 09:23:02'),
(153, 22, 1, 'Mother - الأم', 'MD JIHAD NUR ALAM', 'MD JIHAD NUR ALAM', '27-04-2015', '58/58070967/0', '23-02-2023', 'Ajman, UAE', '0582528554', '8579442/0', '23/02/2023  -  22/02/2024', 'hayah_simple_life_58070967.pdf', NULL, NULL, 'MST KULSUMA BEGUM ,MD SHOFIQUR RAHMAN ', 0, 1, '2023-02-23 11:39:56', '2023-02-23 11:39:56'),
(154, 24, 1, 'Other Family Relationship', 'Huda M O ALAGHA', 'Huda M O ALAGHA', '19-02-1949', '58/58070968/0', '24-02-2023', 'Ajman, UAE', '0509704156', '8579442/0', '24/02/2023  -  23/02/2024', 'hayah_simple_life_58070968.pdf', NULL, NULL, NULL, 0, 1, '2023-02-24 11:46:52', '2023-02-24 11:46:52');

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

CREATE TABLE `relations` (
  `id` int(11) NOT NULL,
  `template_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `relation_ar` varchar(128) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `relations`
--

INSERT INTO `relations` (`id`, `template_id`, `name`, `relation_ar`, `created_at`, `updated_at`) VALUES
(12, 1, 'Father', 'الأب', '2022-11-24 14:47:57', '2022-11-24 14:47:57'),
(14, 1, 'Mother', 'الأم', '2022-11-24 14:47:57', '2022-11-24 14:47:57'),
(17, 1, 'Husband', 'الزوج', '2022-12-12 11:52:25', '2022-12-12 11:52:25'),
(18, 1, 'Wife', 'الزوجة', '2022-12-12 11:52:32', '2022-12-12 11:52:32'),
(19, 1, 'Son', 'الإبن', '2022-12-12 11:52:54', '2022-12-12 11:52:54'),
(20, 1, 'Daughter', 'الإبنة', '2022-12-12 11:53:05', '2022-12-12 11:53:05'),
(21, 1, 'Other Family Relationship', '', '2022-12-12 11:53:19', '2022-12-12 11:53:19');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `template_id` int(11) DEFAULT NULL,
  `health_policy` varchar(128) DEFAULT NULL,
  `insurance_policy` varchar(128) DEFAULT NULL,
  `ref_no` varchar(128) DEFAULT NULL,
  `business_code` varchar(128) DEFAULT NULL,
  `insurance_plan` varchar(128) DEFAULT NULL,
  `co_pay` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `address` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `template_id`, `health_policy`, `insurance_policy`, `ref_no`, `business_code`, `insurance_plan`, `co_pay`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '58/58070814/0', NULL, '8579442/0', NULL, NULL, NULL, 'Ajman, UAE', '2022-11-10 05:08:22', '2022-11-10 05:08:22'),
(2, 2, 'M17UT/36501', NULL, NULL, NULL, 'Silver Worldwide (Except USA)', '20 % Max AED50', 'alraheeqtrvl@gmail.com', NULL, '2022-11-10 05:08:22', '2022-11-10 05:08:22'),
(3, 3, '', '', '5567746701', NULL, NULL, NULL, NULL, NULL, '2022-11-10 05:08:22', '2022-11-10 05:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `sponsor_info`
--

CREATE TABLE `sponsor_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sponsor_name` varchar(100) DEFAULT NULL,
  `mobile_number` varchar(30) NOT NULL,
  `type` int(11) DEFAULT NULL COMMENT 'normal = 1, golden = 2',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sponsor_info`
--

INSERT INTO `sponsor_info` (`id`, `user_id`, `sponsor_name`, `mobile_number`, `type`, `created_at`, `updated_at`) VALUES
(1, 9, 'First Name,Last Name', '0198765431', 1, '2022-11-27 10:03:56', '2022-11-27 10:03:56'),
(2, 9, 'SPONSOR OF INVESTORS,ENTERPRENEURS ,SPECIALIZED', '0198765431', 2, '2022-11-27 10:09:29', '2022-11-27 10:09:29'),
(3, 9, 'Sumaiya Qayyum Ghole', '0198765432', 1, '2022-11-27 10:11:24', '2022-11-27 10:11:24'),
(4, 8, 'SPONSOR OF INVESTORS,ENTERPRENEURS ,SPECIALIZED', '0501234567', 2, '2022-11-27 14:58:41', '2022-11-27 14:58:41'),
(5, 8, 'asda,asda', '0501234567', 1, '2022-11-27 15:00:27', '2022-11-27 15:00:27'),
(6, 11, 'Saleh mahmoud,Al aswad', '0502122833', 1, '2022-11-27 17:56:39', '2022-11-27 17:56:39'),
(7, 11, 'ABUDAM AHMED ,ELSIDDIG OMER', '0502482999', 1, '2022-12-12 10:43:57', '2022-12-12 10:43:57'),
(8, 11, 'ALAA BABIKER HASSAN ,IBRAHIM', '0529737788', 1, '2022-12-12 11:19:50', '2022-12-12 11:19:50'),
(9, 8, 'test,abcd', '0501234566', 1, '2022-12-12 11:56:54', '2022-12-12 11:56:54'),
(10, 8, 'SPONSOR OF INVESTORS,ENTERPRENEURS ,SPECIALIZED', '0501234566', 2, '2022-12-12 11:59:57', '2022-12-12 11:59:57'),
(11, 12, 'SPONSOR OF INVESTORS,ENTERPRENEURS ,SPECIALIZED', '0543268996', 2, '2022-12-12 12:28:11', '2022-12-12 12:28:11'),
(12, 11, 'IFTIKHAR AHMED EJAZ ,AHMED', '0582353709', 1, '2022-12-12 13:19:53', '2022-12-12 13:19:53'),
(13, 9, 'Abdul,Alim', '0198765441', 1, '2022-12-12 13:30:55', '2022-12-12 13:30:55'),
(14, 8, 'test,test', '0557592235', 1, '2022-12-12 18:10:42', '2022-12-12 18:10:42'),
(15, 11, 'SPONSOR OF INVESTORS,ENTERPRENEURS ,SPECIALIZED', '0558928153', 2, '2022-12-13 04:08:35', '2022-12-13 04:08:35'),
(16, 11, 'wael ahmed eldesouky ,abdelhamid mohamed', '0501746473', 1, '2022-12-13 05:07:46', '2022-12-13 05:07:46'),
(17, 12, 'SPONSOR OF INVESTORS,ENTERPRENEURS ,SPECIALIZED', '0505776379', 2, '2022-12-13 06:49:10', '2022-12-13 06:49:10'),
(18, 12, 'SPONSOR OF INVESTORS,ENTERPRENEURS ,SPECIALIZED', '0529278075', 2, '2022-12-13 06:50:34', '2022-12-13 06:50:34'),
(19, 12, 'Hussein Saad,Abdulwahab Alhafeth', '0529278075', 1, '2022-12-13 06:57:32', '2022-12-13 06:57:32'),
(20, 9, 'Rahim,Miaa', '0198765491', 1, '2022-12-13 07:05:03', '2022-12-13 07:05:03'),
(21, 8, 'ZIARAT KHAN,HAJI MUAMBAR', '0505341700', 1, '2022-12-13 07:33:08', '2022-12-13 07:33:08'),
(22, 9, 'Rasel,Miaa', '0198765492', 1, '2022-12-13 07:35:14', '2022-12-13 07:35:14'),
(23, 8, 'AHMED NOOR,HUSSAIN', '0588802099', 1, '2022-12-13 08:07:00', '2022-12-13 08:07:00'),
(24, 13, 'Nihal Salem lubbad,Al akhrass', '0502868629', 1, '2022-12-13 08:22:46', '2022-12-13 08:22:46'),
(25, 11, 'SANAA M,DEEB HALLAK', '0558031366', 1, '2022-12-13 10:34:03', '2022-12-13 10:34:03'),
(26, 13, 'Junidh ,Abdul vahab', '0505179146', 1, '2022-12-13 10:34:11', '2022-12-13 10:34:11'),
(27, 13, 'Abdul jaleel karat,Mohamed kutty haji karat', '0508983599', 1, '2022-12-13 11:55:05', '2022-12-13 11:55:05'),
(28, 13, 'Syed Javed bari ,Syed Abdul bari', '0503081860', 1, '2022-12-13 14:42:25', '2022-12-13 14:42:25'),
(29, 15, 'Mohammad rashid khan sultan ,Muhammad khan ', '0504819802', 1, '2022-12-13 15:37:43', '2022-12-13 15:37:43'),
(30, 8, 'SHAHJALAL MOFAZZEL,HOSSAIN TATI', '0555998360', 1, '2022-12-13 18:36:39', '2022-12-13 18:36:39'),
(31, 18, 'HAIAN ABDULBASET,MBARAK', '0507680705', 1, '2022-12-14 15:43:12', '2022-12-14 15:43:12'),
(32, 20, 'SPONSOR OF INVESTORS,ENTERPRENEURS ,SPECIALIZED', '0504819801', 2, '2022-12-15 07:29:30', '2022-12-15 07:29:30'),
(33, 20, 'MOHAMMAD RASHID KHAN,SULTAN MUHAMMAD KHAN', '0504819801', 1, '2022-12-15 07:39:45', '2022-12-15 07:39:45'),
(34, 20, 'Abdulmajid muzahem,Salem omar', '0507470075', 1, '2022-12-15 09:27:51', '2022-12-15 09:27:51'),
(35, 22, 'Ahmed ,Basa mian ', '0544431710', 1, '2022-12-15 11:49:31', '2022-12-15 11:49:31'),
(36, 24, 'MAHRUKH MOONA,SHARIFF', '0562303761', 1, '2022-12-16 06:53:37', '2022-12-16 06:53:37'),
(37, 24, 'HATEM ABDELMONIEM ABDELSALAM ,ABDELRAZEK', '0501748116', 1, '2022-12-16 10:34:39', '2022-12-16 10:34:39'),
(38, 23, 'TARIK AHMED SHALAN SHALAN,SHALAN', '0501540447', 1, '2022-12-16 11:56:00', '2022-12-16 11:56:00'),
(39, 18, 'BILAL HUSSEIN ,CHAABAN', '0504811363', 1, '2022-12-19 05:56:14', '2022-12-19 05:56:14'),
(40, 18, 'GANGADHARAN NAIR,CHUKKINADUKKAM RAGHAVAN', '0506326738', 1, '2022-12-19 06:14:56', '2022-12-19 06:14:56'),
(41, 24, 'DEQA SHIRE,JAMA', '0509464905', 1, '2022-12-19 07:00:39', '2022-12-19 07:00:39'),
(42, 18, 'KHALID MAHMOOD,MUHAMMAD BASHIR', '0506314447', 1, '2022-12-19 08:31:07', '2022-12-19 08:31:07'),
(43, 24, 'SOUAD ABDELRAZIK,MOUSSA ELMOWAFI', '0505535212', 1, '2022-12-19 10:06:22', '2022-12-19 10:06:22'),
(44, 20, 'Kareena ISSA Yousef ,Abu ryaleh', '0558898822', 1, '2022-12-19 11:13:54', '2022-12-19 11:13:54'),
(45, 24, 'DOAA TAHA ABDELRAHMAN,ELSEIDI', '0506747148', 1, '2022-12-20 06:13:27', '2022-12-20 06:13:27'),
(46, 20, 'KAREEMA ISSA YOUSEF ,ABU RYALEH', '0564427566', 1, '2022-12-20 09:15:59', '2022-12-20 09:15:59'),
(47, 21, 'Mhd Abd Karem,Bahadin Alhalwe', '0552542499', 1, '2022-12-20 09:31:01', '2022-12-20 09:31:01'),
(48, 20, 'Rabih abdulrahman,Alfares', '0505875739', 1, '2022-12-20 12:22:52', '2022-12-20 12:22:52'),
(49, 21, 'YASSINE,BOUBEKRI', '0521454858', 1, '2022-12-20 12:36:11', '2022-12-20 12:36:11'),
(50, 20, 'Samar Mohamed ali,Saif Al helaly', '0507229204', 1, '2022-12-20 12:41:01', '2022-12-20 12:41:01'),
(51, 20, 'Samar Mohamed ali,Saif Al helaly', '0567104119', 1, '2022-12-20 13:19:50', '2022-12-20 13:19:50'),
(52, 18, 'SPONSOR OF INVESTORS,ENTERPRENEURS ,SPECIALIZED', '0506326738', 2, '2022-12-20 19:32:29', '2022-12-20 19:32:29'),
(53, 22, 'YOUSUF ABDUL HAMEED ,ABDUL HAMEED ', '0559374887', 1, '2022-12-21 04:46:46', '2022-12-21 04:46:46'),
(54, 24, 'MEDHAT ELSAYED HUSSEIN SAYED,AHMED', '0501460109', 1, '2022-12-21 08:14:28', '2022-12-21 08:14:28'),
(55, 21, 'SPONSOR OF INVESTORS,ENTERPRENEURS ,SPECIALIZED', '0509965499', 2, '2022-12-21 08:38:12', '2022-12-21 08:38:12'),
(56, 21, 'YASER A.F,ALYAZOURI', '0509965499', 1, '2022-12-21 08:44:13', '2022-12-21 08:44:13'),
(57, 18, 'RASHED HASAN ,ALI ', '0506771221', 1, '2022-12-21 10:40:58', '2022-12-21 10:40:58'),
(58, 20, 'Yeasin kamal,Ahmed noor', '0501567727', 1, '2022-12-21 14:37:21', '2022-12-21 14:37:21'),
(59, 24, 'SAMIR ABOU BAKR,ABDEL RAZEK ALI', '0501230493', 1, '2022-12-21 15:37:11', '2022-12-21 15:37:11'),
(60, 23, 'AZIZA AHMED ABBAS GALK ,GALK ', '0502080587', 1, '2022-12-22 07:43:55', '2022-12-22 07:43:55'),
(61, 23, 'AHMED MOHAMED KAMEL ELKOT ,ELKOT ', '0543223966', 1, '2022-12-22 08:18:27', '2022-12-22 08:18:27'),
(62, 21, 'NADER ISLAM ,ZALOUKH', '0501036360', 1, '2022-12-22 11:46:55', '2022-12-22 11:46:55'),
(63, 23, 'Ahmed mohamed kamel elkot,Elkot', '0543233966', 1, '2022-12-23 10:26:19', '2022-12-23 10:26:19'),
(64, 20, 'Abdullah ,Jalal ahamed ', '0553549111', 1, '2022-12-23 14:28:10', '2022-12-23 14:28:10'),
(65, 24, 'ALY IBRAHIM ALY ,KANDIEL', '0556490991', 1, '2022-12-24 07:52:55', '2022-12-24 07:52:55'),
(66, 24, 'SPONSOR OF INVESTORS,ENTERPRENEURS ,SPECIALIZED', '0507568616', 2, '2022-12-24 07:55:35', '2022-12-24 07:55:35'),
(67, 21, 'AHMED MOHAMED ,FATHI HASAN', '0582278799', 1, '2022-12-24 12:14:06', '2022-12-24 12:14:06'),
(68, 18, 'DILRUK PRABASH,SENARTH KARUNARATHNA', '0527245957', 1, '2022-12-24 12:30:39', '2022-12-24 12:30:39'),
(69, 18, 'HAMAD YOUSEF FALEH,ALRAWAJBEH', '0561971968', 1, '2022-12-26 08:18:29', '2022-12-26 08:18:29'),
(70, 21, 'SKINDAR AZAM,BARKAT ALI', '0564061197', 1, '2022-12-26 08:25:49', '2022-12-26 08:25:49'),
(71, 24, 'MUSTAFA M N ,ALHADDAD', '0526763111', 1, '2022-12-26 09:19:27', '2022-12-26 09:19:27'),
(72, 21, 'ABDALRHMAN,KHALID ALDERI', '0565685078', 1, '2022-12-26 10:32:02', '2022-12-26 10:32:02'),
(73, 18, 'yassir elzubair ,ahmed omer', '0566611366', 1, '2022-12-27 10:40:08', '2022-12-27 10:40:08'),
(74, 23, 'AMANULLAH MEMON MUHAMMAD  ,usman ', '0528273898', 1, '2022-12-27 11:18:32', '2022-12-27 11:18:32'),
(75, 18, 'AHMAD MOHAMMAD,AHMAD OWEIDAT', '0567774413', 1, '2022-12-27 11:20:00', '2022-12-27 11:20:00'),
(76, 21, 'AYAN HASSAN,OSMAN', '0505824824', 1, '2022-12-28 09:43:39', '2022-12-28 09:43:39'),
(77, 20, 'Eslam Mohamed abdellatef,Abdelkhalek', '0564161381', 1, '2022-12-28 12:07:44', '2022-12-28 12:07:44'),
(78, 23, 'DIYA HANI YAHIA ,NUWAYHI', '0503077257', 1, '2022-12-28 15:59:04', '2022-12-28 15:59:04'),
(79, 24, 'MOTWAKIL FADLASID AKASHA,BABEKER', '0521227378', 1, '2022-12-29 07:25:01', '2022-12-29 07:25:01'),
(80, 21, 'ABDULLA YOUSEF OBAID,ALNOON ALMATROOSHI', '0504634432', 1, '2022-12-29 09:52:43', '2022-12-29 09:52:43'),
(81, 21, 'AHSAN BARI,ABDUL BARI', '0555520403', 1, '2022-12-29 12:28:27', '2022-12-29 12:28:27'),
(82, 20, 'FEDIA ,HLAILI', '0568341744', 1, '2022-12-29 14:56:05', '2022-12-29 14:56:05'),
(83, 20, 'Jiby raj pulikkottil raju,Pulikkottil chacko raju', '0547595395', 1, '2022-12-30 07:45:57', '2022-12-30 07:45:57'),
(84, 21, 'QUSSAY HAIKEL,RIADH AL TOUKY', '0509809759', 1, '2022-12-30 08:29:46', '2022-12-30 08:29:46'),
(85, 21, 'SPONSOR OF INVESTORS,ENTERPRENEURS ,SPECIALIZED', '0522170599', 2, '2022-12-30 08:45:39', '2022-12-30 08:45:39'),
(86, 20, 'Rahib abdulrahman ,Alfares', '0503669701', 1, '2022-12-30 10:09:13', '2022-12-30 10:09:13'),
(87, 23, 'SPONSOR OF INVESTORS E,ENTERPRENEURS SPECIALZED ', '0562056841', 1, '2022-12-30 13:42:00', '2022-12-30 13:42:00'),
(88, 18, 'FADI SHAFIK,IBRAHIM BASHA', '0506300612', 1, '2022-12-31 19:35:20', '2022-12-31 19:35:20'),
(89, 20, 'Ahmed kamel abdelmoula,Elsayed elsayed', '0567173296', 1, '2023-01-02 13:09:27', '2023-01-02 13:09:27'),
(90, 21, 'AMEER LOUAY HASEEP,QASIM AGHA', '0543111325', 1, '2023-01-03 06:40:09', '2023-01-03 06:40:09'),
(91, 22, 'JULIUS ,MEJICA ARANAL ', '0504925762', 1, '2023-01-03 10:18:37', '2023-01-03 10:18:37'),
(92, 21, 'YASSMIN RIKAD,RENNAWI', '0504404979', 1, '2023-01-03 12:53:52', '2023-01-03 12:53:52'),
(93, 21, 'TIEGST GERENSEA,GEBREGERGS', '0505802941', 1, '2023-01-04 07:10:06', '2023-01-04 07:10:06'),
(94, 21, 'MOWAFAK SAID ,YASSIN', '0564551255', 1, '2023-01-04 07:13:59', '2023-01-04 07:13:59'),
(95, 20, 'Selma shiekhidris mohamed,Mohamed ahmed', '0544504783', 1, '2023-01-04 09:24:45', '2023-01-04 09:24:45'),
(96, 20, 'Ezzeuddine alayari,Hattab alayari', '0503671641', 1, '2023-01-04 13:15:11', '2023-01-04 13:15:11'),
(97, 18, 'HUSSEIN NAGAH,WEFKI MOHAMED', '0589250080', 1, '2023-01-04 17:12:19', '2023-01-04 17:12:19'),
(98, 20, 'Naser ahmed zain ,Fadhel', '0507700580', 1, '2023-01-05 08:17:53', '2023-01-05 08:17:53'),
(99, 22, 'humaid abbas ,karmak juma alblooshi ', '0566388873', 1, '2023-01-05 08:48:22', '2023-01-05 08:48:22'),
(100, 18, 'MOHAMMED SALEM SAEED,BATWAIH AL KENDI', '0502015577', 1, '2023-01-05 12:17:59', '2023-01-05 12:17:59'),
(101, 20, 'Mohamad Walid ,Marzouk ', '0505521075', 1, '2023-01-05 15:07:04', '2023-01-05 15:07:04'),
(102, 18, 'OMAR IBRAHIM ,HACHEM', '0502430695', 1, '2023-01-05 16:59:50', '2023-01-05 16:59:50'),
(103, 21, 'MUBARAK OSMAN,SULIMAN ELSHIEKH', '0555057507', 1, '2023-01-07 07:49:58', '2023-01-07 07:49:58'),
(104, 21, 'SPONSOR OF INVESTORS,ENTERPRENEURS ,SPECIALIZED', '0568733686', 2, '2023-01-07 14:58:08', '2023-01-07 14:58:08'),
(105, 21, 'AHMEF,ARAFAT', '0568733686', 1, '2023-01-07 15:05:24', '2023-01-07 15:05:24'),
(106, 21, 'FOAD ABDOLKAZEM ,FAZLI', '0502114440', 1, '2023-01-09 10:23:53', '2023-01-09 10:23:53'),
(107, 20, 'Abdul basit noor muhammad,Noor muhammad', '0559985353', 1, '2023-01-09 10:41:20', '2023-01-09 10:41:20'),
(108, 20, 'SPONSOR OF INVESTORS,ENTERPRENEURS ,SPECIALIZED', '0525367014', 2, '2023-01-10 04:16:40', '2023-01-10 04:16:40'),
(109, 23, 'SPONSOR OF INVESTORS,ENTERPRENEURS ,SPECIALIZED', '0506334579', 2, '2023-01-10 07:24:10', '2023-01-10 07:24:10'),
(110, 21, 'TAMER QASIM,MOHAMMAD SHAMASNEH', '0501036368', 1, '2023-01-10 08:22:54', '2023-01-10 08:22:54'),
(111, 20, 'Usman Syed Jamal ,Syed jamal', '0542211993', 1, '2023-01-10 10:51:12', '2023-01-10 10:51:12'),
(112, 23, 'HAFIZ ELTOM ABDO ,FANGOUL ', '0545683956', 1, '2023-01-10 14:34:18', '2023-01-10 14:34:18'),
(113, 21, 'ASHRAF A.M.,ABUTAHA', '0505284440', 1, '2023-01-11 09:30:53', '2023-01-11 09:30:53'),
(114, 23, 'AHMAD ALI MEER ,ALI ', '0554485882', 1, '2023-01-12 09:39:41', '2023-01-12 09:39:41'),
(115, 23, 'SYED MAAZ AHMED SYED RIAZ ,AHMED ', '0509809920', 1, '2023-01-12 11:36:45', '2023-01-12 11:36:45'),
(116, 23, 'SHAH MUHAMMAD MUHAMMAD ,HAJI ', '0555909907', 1, '2023-01-12 15:33:52', '2023-01-12 15:33:52'),
(117, 22, 'TAREK AZIZ ,MD HABIBULLAH ', '0586597799', 1, '2023-01-13 05:32:03', '2023-01-13 05:32:03'),
(118, 21, 'SAAD KHALID,JAMEEL AL-JANABI', '0503095851', 1, '2023-01-13 08:27:43', '2023-01-13 08:27:43'),
(119, 18, 'cholakkal hamza ,hassan', '0545862424', 1, '2023-01-13 08:43:09', '2023-01-13 08:43:09'),
(120, 21, 'MOHAMMED THAER,FADHIL AL-RUBAYE', '0501036388', 1, '2023-01-13 12:08:47', '2023-01-13 12:08:47'),
(121, 23, 'SPONSOR OF INVESTORS,ENTERPRENEURS ,SPECIALIZED', '0506265093', 2, '2023-01-13 14:49:58', '2023-01-13 14:49:58'),
(122, 24, 'Rehan Ahmed khan Zia ,Ahmed Khan', '0508918483', 1, '2023-01-14 12:58:12', '2023-01-14 12:58:12'),
(123, 22, 'ABDALLA ELTAYEB ,HAGO TAIALLA ', '0561213110', 1, '2023-01-16 06:32:23', '2023-01-16 06:32:23'),
(124, 21, 'MOHAMED EID,MOHAMED KHAIR BARAH', '0506464468', 1, '2023-01-16 08:36:06', '2023-01-16 08:36:06'),
(125, 18, 'HASSAN MOHAMMED RIAD,HASSAN ABU ODEH', '0529190666', 1, '2023-01-16 09:03:37', '2023-01-16 09:03:37'),
(126, 22, 'SAFAA OTHMAN ABD ELMAGID ,HASSAN AHMED HABIB ', '0566325325', 1, '2023-01-24 15:39:16', '2023-01-24 15:39:16'),
(127, 24, 'Nagwa Ahmed Kamal,Nabih', '0509696215', 1, '2023-01-30 10:18:23', '2023-01-30 10:18:23'),
(128, 24, 'Ameer Ahmed Mohamed,Montaser', '0552273648', 1, '2023-02-01 08:01:54', '2023-02-01 08:01:54'),
(129, 24, 'Belal M,H Alagha', '0503430443', 1, '2023-02-14 09:20:02', '2023-02-14 09:20:02'),
(130, 22, 'SAEED DARWISH ,MOHAMED SALIM ASHTAILI ', '0507370622', 1, '2023-02-14 11:08:01', '2023-02-14 11:08:01'),
(131, 22, 'MST KULSUMA BEGUM ,MD SHOFIQUR RAHMAN ', '0582528554', 1, '2023-02-23 09:23:01', '2023-02-23 09:23:01'),
(132, 24, 'SPONSOR OF INVESTORS,ENTERPRENEURS ,SPECIALIZED', '0509704156', 2, '2023-02-24 11:45:30', '2023-02-24 11:45:30');

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id` int(11) NOT NULL,
  `template_name` varchar(128) DEFAULT NULL,
  `is_checked` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id`, `template_name`, `is_checked`, `created_at`, `updated_at`) VALUES
(1, 'Hayah Simple Life', 1, '2022-11-12 04:59:31', '2022-11-12 04:59:31'),
(2, 'AIG insurance', 0, '2022-11-12 04:59:31', '2022-11-12 04:59:31'),
(3, 'Takaful Emarat', 0, '2022-11-12 04:59:31', '2022-11-12 04:59:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `first_name` varchar(128) DEFAULT NULL,
  `last_name` varchar(128) DEFAULT NULL,
  `eid_number` varchar(128) DEFAULT NULL,
  `picture` varchar(128) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `suspend` int(11) NOT NULL DEFAULT '1' COMMENT 'suspend = 2, unsuspend = 1	',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `first_name`, `last_name`, `eid_number`, `picture`, `role_id`, `suspend`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', 'Admin', 'Admin', NULL, NULL, 1, 1, '2022-11-06 12:06:41', '2022-11-06 12:06:41'),
(18, 'rafi1234', 'rafi@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', 'Rafi', 'Hossain', '82738682768-93778278-0', '1671001931_8dcd248811462991fc3f.jpg', 2, 1, '2022-12-14 07:12:11', '2022-12-14 07:12:11'),
(19, 'nazmul1234', 'nazmul@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', 'Nazmul', 'Hossain', '686986-8968976', '1671001986_6dfe1afaa323e9fb8f35.jpg', 2, 2, '2022-12-14 07:13:06', '2022-12-14 07:13:06'),
(20, 'MOHAMMEDALY ', 'sanviya.ali@gmail.com', '13e3ec7b399d72ff483ce81328b63fb9f52489af', 'Mohammedaly Kattuthotthil', 'Mammadutty Kattuthottil', '784-1977-5184909-8', '1671088656_65d06741c60e4a8da11d.jpg', 2, 2, '2022-12-15 07:13:57', '2022-12-15 07:13:57'),
(21, 'Bushra Mhd', 'bkananne92@gmail.com', '4d8e84cf1b3134e88afb27f07816ff054cae5ea3', 'Bushra Mhd', 'Bashir Alaza', '784-1992-0431492-8', '1671088881_4372d9c6b752126206d9.jpg', 2, 2, '2022-12-15 07:21:21', '2022-12-15 07:21:21'),
(22, 'Yousuf Photo Khan', 'Yousufmiadaad@gmail.com', '5139afd6b7130a2176f6bb5f9ee18f65c45c55c2', 'Yousuf Photo Khan', 'Baloch Photo Khan Baloch', '784-1996-9814658-8', '1671104666_84e23bf90f973592d2e3.jpg', 2, 1, '2022-12-15 11:44:26', '2022-12-15 11:44:26'),
(23, 'Abubakkar ', 'Siddiqamani@gmail.com', '42fa3a731792c35789d08b439e9e216ef7bb76ec', 'Abubakkar Siddiq Kudthamugeru', 'Ibrahi Beary', '784-1984-6364254-0', '1671130012_cbe3f196d238598ef3c5.jpg', 2, 2, '2022-12-15 18:46:52', '2022-12-15 18:46:52'),
(24, 'Ahmed', 'Am.alblooshi11@gmail.com', '16c419b66e5e5f4a875c2ba01cb61ff74eaf0eb2', 'Ahmed Mohammad Abdullah ', 'M Albalushi', '784-1990-9294813-4', '1671130302_0c61a8c9dfad4a4bc88c.jpg', 2, 1, '2022-12-15 18:50:14', '2022-12-15 18:50:14');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `role_name` varchar(128) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `role_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2022-11-06 12:03:37', '2022-11-06 12:03:37'),
(2, 'User', '2022-11-06 12:03:37', '2022-11-06 12:03:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pdf_info`
--
ALTER TABLE `pdf_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relations`
--
ALTER TABLE `relations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sponsor_info`
--
ALTER TABLE `sponsor_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pdf_info`
--
ALTER TABLE `pdf_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `relations`
--
ALTER TABLE `relations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sponsor_info`
--
ALTER TABLE `sponsor_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
