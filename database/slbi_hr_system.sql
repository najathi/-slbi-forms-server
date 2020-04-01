-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2020 at 01:01 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slbi_hr_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `dist_name` varchar(255) NOT NULL,
  `short_code` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `dist_name`, `short_code`) VALUES
(1, 'Ampara', 'AMP'),
(2, 'Anuradhapura', 'APR'),
(3, 'Badulla', 'BDL'),
(4, 'Batticaloa', 'BAT'),
(5, 'Colombo', 'CMB'),
(6, 'Galle', 'GLE'),
(7, 'Gampaha', 'GMP'),
(8, 'Hambantota', 'HBT'),
(9, 'Jaffna', 'JFN'),
(10, 'Kalutara', 'KLT'),
(11, 'Kandy', 'KDY'),
(12, 'Kegalle', 'KGL'),
(13, 'Kilinochchi', 'KLN'),
(14, 'Kurunegala', 'KRN'),
(15, 'Mannar', 'MNR'),
(16, 'Matale', 'MTL'),
(17, 'Matara', 'MTR'),
(18, 'Moneragala', 'MNG'),
(19, 'Mullaitivu', 'MLT'),
(20, 'Nuwara Eliya', 'NWR'),
(21, 'Polonnaruwa', 'PLN'),
(22, 'Puttalam', 'PTM'),
(23, 'Ratnapura', 'RTP'),
(24, 'Trincomalee', 'TRM'),
(25, 'Vavuniya', 'VVN');

-- --------------------------------------------------------

--
-- Table structure for table `ds_divisions`
--

CREATE TABLE `ds_divisions` (
  `id` int(3) NOT NULL,
  `ds_div_name` varchar(255) NOT NULL,
  `short_code` varchar(3) NOT NULL,
  `dist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ds_divisions`
--

INSERT INTO `ds_divisions` (`id`, `ds_div_name`, `short_code`, `dist_id`) VALUES
(1, 'Akurana', 'AAB', 11),
(2, 'Delthota', 'AAC', 11),
(3, 'Doluwa', 'AAD', 11),
(4, 'Ganga Ihala Korale', 'AAE', 11),
(5, 'Harispattuwa', 'AAF', 11),
(6, 'Hatharaliyadda', 'AAG', 11),
(7, 'Kandy', 'AAH', 11),
(8, 'Kundasale', 'AAI', 11),
(9, 'Medadumbara', 'AAJ', 11),
(10, 'Minipe', 'ABA', 11),
(11, 'Panvila', 'ABB', 11),
(12, 'Pasbage Korale', 'ABC', 11),
(13, 'Pathadumbara', 'ABD', 11),
(14, 'Pathahewaheta', 'ABE', 11),
(15, 'Poojapitiya', 'ABF', 11),
(16, 'Thumpane', 'ABG', 11),
(17, 'Udadumbara', 'ABH', 11),
(18, 'Udapalatha', 'ABI', 11),
(19, 'Udunuwara', 'ABJ', 11),
(20, 'Yatinuwara', 'ACA', 11),
(21, 'Ambanganga-Korale', 'ACB', 16),
(22, 'Dambulla', 'ACC', 16),
(23, 'Galewela', 'ACD', 16),
(24, 'Laggala-Pallegama', 'ACE', 16),
(25, 'Matale', 'ACF', 16),
(26, 'Naula', 'ACG', 16),
(27, 'Pallepola', 'ACH', 16),
(28, 'Rattota', 'ACI', 16),
(29, 'Ukuwela', 'ACJ', 16),
(30, 'Wilgamuwa', 'ADA', 16),
(31, 'Yatawatta', 'ADB', 16),
(32, 'Ambagamuwa', 'ADC', 20),
(33, 'Hanguranketha', 'ADD', 20),
(34, 'Kothmale', 'ADE', 20),
(35, 'Nuwara Eliya', 'ADF', 20),
(36, 'Walapane', 'ADG', 20),
(37, 'Addalachchenai', 'ADH', 1),
(38, 'Akkaraipattu', 'ADI', 1),
(39, 'Alayadiwembu', 'ADJ', 1),
(40, 'Ampara', 'AEA', 1),
(41, 'Damana', 'AEB', 1),
(42, 'Dehiattakandiya', 'AEC', 1),
(43, 'Eragama', 'AED', 1),
(44, 'Kalmunai-Muslim', 'AEE', 1),
(45, 'Kalmunai-Tamil', 'AEF', 1),
(46, 'Karaitivu', 'AEG', 1),
(47, 'Lahugala', 'AEH', 1),
(48, 'Mahaoya', 'AEI', 1),
(49, 'Navithanveli', 'AEJ', 1),
(50, 'Ninthavur', 'AFA', 1),
(51, 'Padiyathalawa', 'AFB', 1),
(52, 'Pothuvil', 'AFC', 1),
(53, 'Sainthamarathu', 'AFD', 1),
(54, 'Samanthurai', 'AFE', 1),
(55, 'Thirukkovil', 'AFF', 1),
(56, 'Uhana', 'AFG', 1),
(57, 'Eravur-Pattu', 'AFH', 4),
(58, 'Eravur-Town', 'AFI', 4),
(59, 'Kattankudy', 'AFJ', 4),
(60, 'Koralai-Pattu', 'AGA', 4),
(61, 'Koralai-Pattu-Central', 'AGB', 4),
(62, 'Koralai-Pattu-North', 'AGC', 4),
(63, 'Koralai-Pattu-South', 'AGD', 4),
(64, 'Koralai-Pattu-West', 'AGE', 4),
(65, 'Manmunai-North', 'AGF', 4),
(66, 'Manmunai-Pattu', 'AGG', 4),
(67, 'Manmunai-S-and-Eruvil-Pattu', 'AGH', 4),
(68, 'Manmunai-South-West', 'AGI', 4),
(69, 'Manmunai-West', 'AGJ', 4),
(70, 'Porativu-Pattu', 'AHA', 4),
(71, 'Gomarankadawala', 'AHB', 24),
(72, 'Kantalai', 'AHC', 24),
(73, 'Kinniya', 'AHD', 24),
(74, 'Kuchchaveli', 'AHE', 24),
(75, 'Morawewa', 'AHF', 24),
(76, 'Muttur', 'AHG', 24),
(77, 'Padavi-Sri-Pura', 'AHH', 24),
(78, 'Seruvila', 'AHI', 24),
(79, 'Thambalagamuwa', 'AHJ', 24),
(80, 'Trincomalee', 'AIA', 24),
(81, 'Verugal', 'AIB', 24),
(82, 'Galnewa', 'AIC', 2),
(83, 'Galenbindunuwewa', 'AID', 2),
(84, 'Horowpothana', 'AIE', 2),
(85, 'Ipalogama', 'AIF', 2),
(86, 'Kahatagasdigiliya', 'AIG', 2),
(87, 'Kebithigollewa', 'AIH', 2),
(88, 'Kekirawa', 'AII', 2),
(89, 'Mahavilachchiya', 'AIJ', 2),
(90, 'Medawachchiya', 'AJA', 2),
(91, 'Mihinthale', 'AJB', 2),
(92, 'Nachchadoowa', 'AJC', 2),
(93, 'Nochchiyagama', 'AJD', 2),
(94, 'Nuwaragam Palatha Central', 'AJE', 2),
(95, 'Nuwaragam Palatha East', 'AJF', 2),
(96, 'Padaviya', 'AJG', 2),
(97, 'Palagala', 'AJH', 2),
(98, 'Palugaswewa', 'AJI', 2),
(99, 'Rajanganaya', 'AJJ', 2),
(100, 'Rambewa', 'BAA', 2),
(101, 'Thalawa', 'BAB', 2),
(102, 'Thambuttegama', 'BAC', 2),
(103, 'Thirappane', 'BAD', 2),
(104, 'Dimbulagala', 'BAE', 21),
(105, 'Elahera', 'BAF', 21),
(106, 'Hingurakgoda', 'BAG', 21),
(107, 'Lankapura', 'BAH', 21),
(108, 'Medirigiriya', 'BAI', 21),
(109, 'Thamankaduwa', 'BAJ', 21),
(110, 'Welikanda', 'BBA', 21),
(111, 'Delft', 'BBB', 9),
(112, 'Island-North', 'BBC', 9),
(113, 'Island-South', 'BBD', 9),
(114, 'Jaffna', 'BBE', 9),
(115, 'Karainagar', 'BBF', 9),
(116, 'Nallur', 'BBG', 9),
(117, 'Thenmaradchi', 'BBH', 9),
(118, 'Vadamaradchi-East', 'BBI', 9),
(119, 'Vadamaradchi-North', 'BBJ', 9),
(120, 'Vadamaradchi-South-West', 'BCA', 9),
(121, 'Valikamam-East', 'BCB', 9),
(122, 'Valikamam-North', 'BCC', 9),
(123, 'Valikamam-South', 'BCD', 9),
(124, 'Valikamam-South-West', 'BCE', 9),
(125, 'Valikamam-West', 'BCF', 9),
(126, 'Kandavalai', 'BCG', 13),
(127, 'Karachchi', 'BCH', 13),
(128, 'Pachchilaipalli', 'BCI', 13),
(129, 'Poonakary', 'BCJ', 13),
(130, 'Madhu', 'BDA', 15),
(131, 'Mannar', 'BDB', 15),
(132, 'Manthai West', 'BDC', 15),
(133, 'Musalai', 'BDD', 15),
(134, 'Nanaddan', 'BDE', 15),
(135, 'Manthai East', 'BDF', 19),
(136, 'Maritimepattu', 'BDG', 19),
(137, 'Oddusuddan', 'BDH', 19),
(138, 'Puthukudiyiruppu', 'BDI', 19),
(139, 'Thunukkai', 'BDJ', 19),
(140, 'Welioya', 'BEA', 19),
(141, 'Vavuniya', 'BEB', 25),
(142, 'Vavuniya North', 'BEC', 25),
(143, 'Vavuniya South', 'BED', 25),
(144, 'Vengalacheddikulam', 'BEE', 25),
(145, 'Alawwa', 'BEF', 14),
(146, 'Ambanpola', 'BEG', 14),
(147, 'Bamunakotuwa', 'BEH', 14),
(148, 'Bingiriya', 'BEI', 14),
(149, 'Ehetuwewa', 'BEJ', 14),
(150, 'Galgamuwa', 'BFA', 14),
(151, 'Ganewatta', 'BFB', 14),
(152, 'Giribawa', 'BFC', 14),
(153, 'Ibbagamuwa', 'BFD', 14),
(154, 'Katupotha', 'BFE', 14),
(155, 'Kobeigane', 'BFF', 14),
(156, 'Kotavehera', 'BFG', 14),
(157, 'Kuliyapitiya East', 'BFH', 14),
(158, 'Kuliyapitiya West', 'BFI', 14),
(159, 'Kurunegala', 'BFJ', 14),
(160, 'Mahawa', 'BGA', 14),
(161, 'Mallawapitiya', 'BGB', 14),
(162, 'Maspotha', 'BGC', 14),
(163, 'Mawathagama', 'BGD', 14),
(164, 'Narammala', 'BGE', 14),
(165, 'Nikaweratiya', 'BGF', 14),
(166, 'Panduwasnuwara', 'BGG', 14),
(167, 'Pannala', 'BGH', 14),
(168, 'Polgahawela', 'BGI', 14),
(169, 'Polpithigama', 'BGJ', 14),
(170, 'Rasnayakapura', 'BHA', 14),
(171, 'Rideegama', 'BHB', 14),
(172, 'Udubaddawa', 'BHC', 14),
(173, 'Wariyapola', 'BHD', 14),
(174, 'Weerambugedara', 'BHE', 14),
(175, 'Anamaduwa', 'BHF', 22),
(176, 'Arachchikattuwa', 'BHG', 22),
(177, 'Chilaw', 'BHH', 22),
(178, 'Dankotuwa', 'BHI', 22),
(179, 'Kalpitiya', 'BHJ', 22),
(180, 'Karuwalagaswewa', 'BIA', 22),
(181, 'Madampe', 'BIB', 22),
(182, 'Mahakumbukkadawala', 'BIC', 22),
(183, 'Mahawewa', 'BID', 22),
(184, 'Mundalama', 'BIE', 22),
(185, 'Nattandiya', 'BIF', 22),
(186, 'Nawagattegama', 'BIG', 22),
(187, 'Pallama', 'BIH', 22),
(188, 'Puttalam', 'BII', 22),
(189, 'Vanathavilluwa', 'BIJ', 22),
(190, 'Wennappuwa', 'BJA', 22),
(191, 'Aranayaka', 'BJB', 12),
(192, 'Bulathkohupitiya', 'BJC', 12),
(193, 'Dehiovita', 'BJD', 12),
(194, 'Deraniyagala', 'BJE', 12),
(195, 'Galigamuwa', 'BJF', 12),
(196, 'Kegalle', 'BJG', 12),
(197, 'Mawanella', 'BJH', 12),
(198, 'Rambukkana', 'BJI', 12),
(199, 'Ruwanwella', 'BJJ', 12),
(200, 'Warakapola', 'CAA', 12),
(201, 'Yatiyanthota', 'CAB', 12),
(202, 'Ayagama', 'CAC', 23),
(203, 'Balangoda', 'CAD', 23),
(204, 'Eheliyagoda', 'CAE', 23),
(205, 'Elapattha', 'CAF', 23),
(206, 'Embilipitiya', 'CAG', 23),
(207, 'Godakawela', 'CAH', 23),
(208, 'Imbulpe', 'CAI', 23),
(209, 'Kahawatta', 'CAJ', 23),
(210, 'Kalawana', 'CBA', 23),
(211, 'Kiriella', 'CBB', 23),
(212, 'Kolonna', 'CBC', 23),
(213, 'Kuruvita', 'CBD', 23),
(214, 'Nivithigala', 'CBE', 23),
(215, 'Opanayaka', 'CBF', 23),
(216, 'Pelmadulla', 'CBG', 23),
(217, 'Ratnapura', 'CBH', 23),
(218, 'Weligepola', 'CBI', 23),
(219, 'Akmeemana', 'CBJ', 6),
(220, 'Ambalangoda', 'CCA', 6),
(221, 'Baddegama', 'CCB', 6),
(222, 'Balapitiya', 'CCC', 6),
(223, 'Benthota', 'CCD', 6),
(224, 'Bope-Poddala', 'CCE', 6),
(225, 'Elpitiya', 'CCF', 6),
(226, 'Galle', 'CCG', 6),
(227, 'Gonapinuwala', 'CCH', 6),
(228, 'Habaraduwa', 'CCI', 6),
(229, 'Hikkaduwa', 'CCJ', 6),
(230, 'Imaduwa', 'CDA', 6),
(231, 'Karandeniya', 'CDB', 6),
(232, 'Nagoda', 'CDC', 6),
(233, 'Neluwa', 'CDD', 6),
(234, 'Niyagama', 'CDE', 6),
(235, 'Thawalama', 'CDF', 6),
(236, 'Welivitiya-Divithura', 'CDG', 6),
(237, 'Yakkalamulla', 'CDH', 6),
(238, 'Akuressa', 'CDI', 17),
(239, 'Athuraliya', 'CDJ', 17),
(240, 'Devinuwara', 'CEA', 17),
(241, 'Dickwella', 'CEB', 17),
(242, 'Hakmana', 'CEC', 17),
(243, 'Kamburupitiya', 'CED', 17),
(244, 'Kirinda Puhulwella', 'CEE', 17),
(245, 'Kotapola', 'CEF', 17),
(246, 'Malimbada', 'CEG', 17),
(247, 'Matara', 'CEH', 17),
(248, 'Mulatiyana', 'CEI', 17),
(249, 'Pasgoda', 'CEJ', 17),
(250, 'Pitabeddara', 'CFA', 17),
(251, 'Thihagoda', 'CFB', 17),
(252, 'Weligama', 'CFC', 17),
(253, 'Welipitiya', 'CFD', 17),
(254, 'Badulla', 'CFE', 3),
(255, 'Bandarawela', 'CFF', 3),
(256, 'Ella', 'CFG', 3),
(257, 'Haldummulla', 'CFH', 3),
(258, 'Hali-Ela', 'CFI', 3),
(259, 'Haputale', 'CFJ', 3),
(260, 'Kandaketiya', 'CGA', 3),
(261, 'Lunugala', 'CGB', 3),
(262, 'Mahiyanganaya', 'CGC', 3),
(263, 'Meegahakivula', 'CGD', 3),
(264, 'Passara', 'CGE', 3),
(265, 'Rideemaliyadda', 'CGF', 3),
(266, 'Soranathota', 'CGG', 3),
(267, 'Uva-Paranagama', 'CGH', 3),
(268, 'Welimada', 'CGI', 3),
(269, 'Badalkumbura', 'CGJ', 18),
(270, 'Bibile', 'CHA', 18),
(271, 'Buttala', 'CHB', 18),
(272, 'Katharagama', 'CHC', 18),
(273, 'Madulla', 'CHD', 18),
(274, 'Medagama', 'CHE', 18),
(275, 'Moneragala', 'CHF', 18),
(276, 'Sevanagala', 'CHG', 18),
(277, 'Siyambalanduwa', 'CHH', 18),
(278, 'Thanamalvila', 'CHI', 18),
(279, 'Wellawaya', 'CHJ', 18),
(280, 'Colombo', 'CIA', 5),
(281, 'Dehiwala', 'CIB', 5),
(282, 'Homagama', 'CIC', 5),
(283, 'Kaduwela', 'CID', 5),
(284, 'Kesbewa', 'CIE', 5),
(285, 'Kolonnawa', 'CIF', 5),
(286, 'Kotte', 'CIG', 5),
(287, 'Maharagama', 'CIH', 5),
(288, 'Moratuwa', 'CII', 5),
(289, 'Padukka', 'CIJ', 5),
(290, 'Ratmalana', 'CJA', 5),
(291, 'Seethawaka', 'CJB', 5),
(292, 'Thimbirigasyaya', 'CJC', 5),
(293, 'Attanagalla', 'CJD', 7),
(294, 'Biyagama', 'CJE', 7),
(295, 'Divulapitiya', 'CJF', 7),
(296, 'Dompe', 'CJG', 7),
(297, 'Gampaha', 'CJH', 7),
(298, 'Ja-Ela', 'CJI', 7),
(299, 'Katana', 'CJJ', 7),
(300, 'Kelaniya', 'DAA', 7),
(301, 'Mahara', 'DAB', 7),
(302, 'Minuwangoda', 'DAC', 7),
(303, 'Mirigama', 'DAD', 7),
(304, 'Negombo', 'DAE', 7),
(305, 'Wattala', 'DAF', 7),
(306, 'Agalawatta', 'DAG', 10),
(307, 'Bandaragama', 'DAH', 10),
(308, 'Beruwala', 'DAI', 10),
(309, 'Bulathsinhala', 'DAJ', 10),
(310, 'Dodangoda', 'DBA', 10),
(311, 'Horana', 'DBB', 10),
(312, 'Ingiriya', 'DBC', 10),
(313, 'Kalutara', 'DBD', 10),
(314, 'Madurawela', 'DBE', 10),
(315, 'Mathugama', 'DBF', 10),
(316, 'Millaniya', 'DBG', 10),
(317, 'Palindanuwara', 'DBH', 10),
(318, 'Panadura', 'DBI', 10),
(319, 'Walallavita', 'DBJ', 10),
(320, 'Ambalantota', 'DCA', 8),
(321, 'Angunakolapelessa', 'DCB', 8),
(322, 'Beliatta', 'DCC', 8),
(323, 'Hambantota', 'DCD', 8),
(324, 'Katuwana', 'DCE', 8),
(325, 'Lunugamvehera', 'DCF', 8),
(326, 'Okewela', 'DCG', 8),
(327, 'Sooriyawewa', 'DCH', 8),
(328, 'Tangalle', 'DCI', 8),
(329, 'Thissamaharama', 'DCJ', 8),
(330, 'Walasmulla', 'DDA', 8),
(331, 'Weeraketiya', 'DDB', 8);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` varchar(255) NOT NULL,
  `namee` text NOT NULL,
  `gender` varchar(255) NOT NULL,
  `cstatus` varchar(255) NOT NULL,
  `address_l_one` text NOT NULL,
  `address_l_two` text NOT NULL,
  `nic_no` varchar(255) NOT NULL,
  `pass_img` varchar(255) NOT NULL,
  `m_no` varchar(255) NOT NULL,
  `designation` int(11) NOT NULL,
  `gn_div` varchar(255) NOT NULL,
  `ds_div` int(3) NOT NULL,
  `district` int(11) NOT NULL,
  `nic_f_img` varchar(255) NOT NULL,
  `nic_b_img` varchar(255) NOT NULL,
  `email_add` varchar(255) NOT NULL,
  `sim_no` varchar(255) NOT NULL,
  `sim_s_no` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `emp_designation`
--

CREATE TABLE `emp_designation` (
  `id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp_designation`
--

INSERT INTO `emp_designation` (`id`, `role_name`) VALUES
(1, 'Director'),
(2, 'Associate Director'),
(3, 'District Manager'),
(4, 'Associate District Manager'),
(5, 'Area Manager'),
(6, 'Associate Manager'),
(7, 'Seller / Product Introducer');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `types_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users_acc`
--

CREATE TABLE `users_acc` (
  `U_ID` int(11) NOT NULL,
  `Firstname` varchar(255) NOT NULL,
  `Lastname` varchar(255) NOT NULL,
  `U_Email` varchar(255) NOT NULL,
  `U_Password` varchar(255) NOT NULL,
  `PhNo` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `DTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `U_updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `U_Address` varchar(255) DEFAULT NULL,
  `Designation` varchar(255) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `user_role_id` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_acc`
--

INSERT INTO `users_acc` (`U_ID`, `Firstname`, `Lastname`, `U_Email`, `U_Password`, `PhNo`, `Gender`, `DTime`, `U_updated_at`, `U_Address`, `Designation`, `Image`, `user_role_id`) VALUES
(1, 'Mohamed', 'Najathi', 'najathi.cf@slbi.lk', '$2y$10$eIf3Q9VWYbGePLcf31/rluEHR2sQofWZNgZCG9H/0KN.OasHZLmGq', '0754141331', 'Male', '2019-07-21 06:34:10', '2020-02-23 06:03:01', 'Kattankudy', 'Software Developer', '1582437781.png', 1),
(30, 'Mohamed ', 'Nahaarni', 'nahaar.cf@slbi.lk', '$2y$10$4NQh4pEx385CJdu1VTt1KuPFYIqX1XM0MUu1QnbZbpA7/NNncMwn2', '', 'Male', '2020-02-23 05:30:34', '2020-02-23 05:30:34', NULL, NULL, NULL, 1),
(31, 'Mr.', 'Muzammil', 'muzammil.cf@slbi.lk', '$2y$10$V9G8lbuZ4rFgCWy4snrsY.pgmWFatP1ZzDp.iuIC5zJfU1j44lWh2', '', 'Male', '2020-02-24 11:38:28', '2020-02-24 11:38:28', NULL, NULL, NULL, 1),
(35, 'Rifaideen', 'Naidu', 'founder@slbi.lk', '$2y$10$7jtaot/2jJAOMvB2yIvzkOkQBUYBQyADBpTVDcxCrg0ufUPyx2NYq', '', 'Male', '2020-03-08 18:07:52', '2020-03-08 18:07:52', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `role_id` int(1) NOT NULL,
  `role_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`role_id`, `role_name`) VALUES
(0, 'user'),
(1, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ds_divisions`
--
ALTER TABLE `ds_divisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dist_id` (`dist_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `district` (`district`),
  ADD KEY `ds_div` (`ds_div`);

--
-- Indexes for table `emp_designation`
--
ALTER TABLE `emp_designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_acc`
--
ALTER TABLE `users_acc`
  ADD PRIMARY KEY (`U_ID`),
  ADD KEY `user_role_id` (`user_role_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `ds_divisions`
--
ALTER TABLE `ds_divisions`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=332;

--
-- AUTO_INCREMENT for table `emp_designation`
--
ALTER TABLE `emp_designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_acc`
--
ALTER TABLE `users_acc`
  MODIFY `U_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ds_divisions`
--
ALTER TABLE `ds_divisions`
  ADD CONSTRAINT `ds_divisions_ibfk_1` FOREIGN KEY (`dist_id`) REFERENCES `districts` (`id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`designation`) REFERENCES `emp_designation` (`id`),
  ADD CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`district`) REFERENCES `districts` (`id`),
  ADD CONSTRAINT `employees_ibfk_3` FOREIGN KEY (`ds_div`) REFERENCES `ds_divisions` (`id`);

--
-- Constraints for table `users_acc`
--
ALTER TABLE `users_acc`
  ADD CONSTRAINT `users_acc_ibfk_1` FOREIGN KEY (`user_role_id`) REFERENCES `user_role` (`role_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
