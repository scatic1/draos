-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 22, 2019 at 10:57 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ums`
--

-- --------------------------------------------------------

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
CREATE TABLE IF NOT EXISTS `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2017-11-09 14:40:02', '2017-11-09 14:40:02');

-- --------------------------------------------------------

--
-- Table structure for table `confirmations`
--

DROP TABLE IF EXISTS `confirmations`;
CREATE TABLE IF NOT EXISTS `confirmations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `svrha` varchar(255) DEFAULT NULL,
  `ime` varchar(255) DEFAULT NULL,
  `prezime` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `confirmations`
--

INSERT INTO `confirmations` (`id`, `svrha`, `ime`, `prezime`, `created_at`, `updated_at`) VALUES
(1, 'znanje', 'amina', 'mah', '2017-12-01 00:00:00', '2017-12-27 00:00:00'),
(2, 'zdravlje', 'delila', 'halilovic', '2017-12-01 00:00:00', '2017-12-27 00:00:00'),
(3, 'Regulisanje stipendije', 'Amina', 'Mahmutovic', '2018-01-02 15:38:28', '2018-01-02 15:38:28'),
(5, 'Za isplatu', 'Huse', 'Fatkic', '2018-01-02 17:20:49', '2018-01-02 17:20:49'),
(6, 'Za isplatu', 'Delila', 'Halilovic', '2018-01-02 17:30:55', '2018-01-02 17:30:55'),
(8, 'Za regulisanje zdravstvenog osiguranja', 'Selsebil', 'Catic', '2018-01-02 18:03:58', '2018-01-02 18:03:58');

-- --------------------------------------------------------

--
-- Table structure for table `job_advertisements`
--

DROP TABLE IF EXISTS `job_advertisements`;
CREATE TABLE IF NOT EXISTS `job_advertisements` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `work_position` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_advertisements`
--

INSERT INTO `job_advertisements` (`id`, `work_position`, `created_at`, `updated_at`) VALUES
(1, 'nastavnik matematike 2', '2017-11-12 11:17:58', '2017-12-27 21:31:42'),
(2, 'nastavnik biologije', '2017-11-12 11:18:25', '2017-11-12 11:18:52'),
(7, 'nastavnik baza', '2017-12-10 15:16:53', '2017-12-10 15:16:53');

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

DROP TABLE IF EXISTS `job_applications`;
CREATE TABLE IF NOT EXISTS `job_applications` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `JBMG` int(11) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `place_of_birth` varchar(255) DEFAULT NULL,
  `telephone_number` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `CV` text,
  `motivation_letter` text,
  `job_advertisements_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_job_applications_on_job_advertisements_id` (`job_advertisements_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_applications`
--

INSERT INTO `job_applications` (`id`, `name`, `surname`, `JBMG`, `date_of_birth`, `place_of_birth`, `telephone_number`, `email`, `gender`, `CV`, `motivation_letter`, `job_advertisements_id`, `created_at`, `updated_at`) VALUES
(19, 'Delila', 'Halilovic', 12345, '2017-12-10', 'Sarajevo', 62134456, 'delila@gmail.com', 'zensko', 'haha', 'blabla', 1, '2017-12-10 15:17:37', '2017-12-10 20:48:26'),
(20, 'Amina', 'Mahmutovic', 12324, '2017-12-10', 'Konjic', 1234567, 'amina@gmail.com', 'zensko', 'haah', 'bla', 7, '2017-12-10 15:44:45', '2017-12-10 15:44:45');

-- --------------------------------------------------------

--
-- Table structure for table `professors`
--

DROP TABLE IF EXISTS `professors`;
CREATE TABLE IF NOT EXISTS `professors` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `courses` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `publications` text,
  `cv` varchar(255) DEFAULT NULL,
  `academic_history` text,
  `career_history` text,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `professors`
--

INSERT INTO `professors` (`id`, `name`, `surname`, `phone`, `date_of_birth`, `email`, `courses`, `department`, `publications`, `cv`, `academic_history`, `career_history`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Betsey ', 'Stevenson', 62123456, '2019-09-04', 'betsey@gmail.com', 'Organic Chemistry,\r\nMaterial Chemistry,\r\nPolymers of Intrinsic Microporosity (PIMs),\r\nGas Separation,\r\nMixed Matrix Membranes (MMMs),\r\nHeterogeneous Catalysis', '1', 'Yin, Huajie., Yang, Bin., Chua, Yeong Zen., Szymoniak, Paulina., Carta, Mariolino., Malpass-Evans, Richard., McKeown, Neil B.., Harrison, Wayne J.., Budd, Peter M.., Schick, Christoph., Böhning, Martin. & Schönhals, Andreas. (2019). Effect of Backbone Rigidity on the Glass Transition of Polymers of Intrinsic Microporosity Probed by Fast Scanning Calorimetry. ACS Macro Letters 8(8), 1022-1028.\r\nhttps://cronfa.swan.ac.uk/Record/cronfa51966 doi:10.1021/acsmacrolett.9b00482\r\nLau, Cher Hon., Lu, Tian-dan., Sun, Shi-Peng., Chen, Xianfeng., Carta, Mariolino. & Dawson, Daniel M.. (2019). Continuous flow knitting of a triptycene hypercrosslinked polymer. Chemical Communications 55(59), 8571-8574.\r\nhttps://cronfa.swan.ac.uk/Record/cronfa51373 doi:10.1039/c9cc03731d', '', 'I graduated in Organic Chemistry in Italy in 2004 and then moved to Cardiff University to obtain a PhD in Organic Material Chemistry in 2008, with a project based on the synthesis and characterisation of novel Polymers of Intrinsic Microporosity (PIMs) under the supervision of Prof Neil B. McKeown.', 'After the PhD I worked as a Post-Doctoral Research Associate at Cardiff University (2008-2013) and the University of Edinburgh (2014-2017). In October 2017, I have been appointed Lecturer in Chemistry at Swansea University.\r\n\r\nIn 2017 I have successfully finished the Postgraduate Certificate Academic Practice (PgCAP) at the University of Edinburgh for which I have become a Fellow of the Higher Education Academy (HEA).\r\n\r\nI am also a member of the Royal Society of Chemistry (MRSC) and a STEM Ambassador.', 'https://www.professorwatchlist.org/images/betseystevenson_0.jpg', '2019-09-03 00:00:00', '2019-09-22 15:15:50'),
(2, 'Bob', ' Laramee', 60260987, '1956-08-19', 'r.s.laramee@swansea.ac.uk', 'Data visualization,\r\nFlow visualization,\r\nInformation visualization,\r\nVisual analytics,\r\nBig data visualization', '3', 'McNabb, Liam., Laramee, Robert S. & Fry, Richard. (2018). Dynamic Choropleth Maps – Using Amalgamation to Increase Area Perceivability. Presented at 2018 22nd International Conference Information Visualisation (IV),, 284-293. Fisciano, Italy: doi:10.1109/iV.2018.00056\r\nhttps://cronfa.swan.ac.uk/Record/cronfa48655\r\nRees, D.. & Laramee, R. S.. (2019). A Survey of Information Visualization Books. Computer Graphics Forum\r\nhttps://cronfa.swan.ac.uk/Record/cronfa48247 doi:10.1111/cgf.13595\r\nLaramee, Robert S.., Turkay, Cagatay. & Joshi, Alark. (2018). Visualization for Smart City Applications. IEEE Computer Graphics and Applications 38(5), 36-37.\r\nhttps://cronfa.swan.ac.uk/Record/cronfa45221 doi:10.1109/MCG.2018.053491729', NULL, 'I graduated in Organic Chemistry in Italy in 2004 and then moved to Cardiff University to obtain a PhD in Organic Material Chemistry in 2008, with a project based on the synthesis and characterisation of novel Polymers of Intrinsic Microporosity (PIMs) under the supervision of Prof Neil B. McKeown.', 'After the PhD I worked as a Post-Doctoral Research Associate at Cardiff University (2008-2013) and the University of Edinburgh (2014-2017). In October 2017, I have been appointed Lecturer in Chemistry at Swansea University.\r\n\r\nIn 2017 I have successfully finished the Postgraduate Certificate Academic Practice (PgCAP) at the University of Edinburgh for which I have become a Fellow of the Higher Education Academy (HEA).\r\n\r\nI am also a member of the Royal Society of Chemistry (MRSC) and a STEM Ambassador.', 'https://www.sciencegallery.org/sites/default/files/styles/large/public/Andrea_portrait_staff.jpg?itok=FZY10KpP', '2019-09-22 00:00:00', '2019-09-22 00:00:00'),
(4, 'Bertie', ' Muller', 60452412, '1940-09-12', 'berndt.muller@swansea.ac.uk', 'Artificial Intelligence,\r\nTechnology Ethics,\r\nFormal Languages,\r\nMathematical Logic,\r\nModels of Concurrency,\r\nFormal Verification', '4', 'Williams, Steve., Ware, J. Mark. & Müller, Berndt. (2019). Ethical Surveillance: Applying Deep Learning and Contextual Awareness for the Benefit of Persons Living with Dementia. Presented at Artificial Intelligence in Health,-47.Springer Nature Switzerland AG. doi:10.1007/978-3-030-12738-1_3\r\nhttps://cronfa.swan.ac.uk/Record/cronfa48681\r\nWilliams, Steve., Ware, J Mark. & Muller, Bertie. Preserving safety, privacy and mobility of persons living with Dementia by recognising uncharacteristic out-door movement using Recurrent Neural Networks with low computing capacity. Presented at Proceedings of the First Joint Workshop on AI in Health organized as part of the Federated AI Meeting (FAIM 2018), co-located with AAMAS 2018, ICML 2018, IJCAI 2018 and ICCBR 2018,(01.01.2018)AIH 2018 - Joint Workshop on AI in Health.\r\nhttp://ceur-ws.org/Vol-2142/\r\nhttps://cronfa.swan.ac.uk/Record/cronfa43607', NULL, 'I graduated in Organic Chemistry in Italy in 2004 and then moved to Cardiff University to obtain a PhD in Organic Material Chemistry in 2008, with a project based on the synthesis and characterisation of novel Polymers of Intrinsic Microporosity (PIMs) under the supervision of Prof Neil B. McKeown.', 'After the PhD I worked as a Post-Doctoral Research Associate at Cardiff University (2008-2013) and the University of Edinburgh (2014-2017). In October 2017, I have been appointed Lecturer in Chemistry at Swansea University.\r\n\r\nIn 2017 I have successfully finished the Postgraduate Certificate Academic Practice (PgCAP) at the University of Edinburgh for which I have become a Fellow of the Higher Education Academy (HEA).\r\n\r\nI am also a member of the Royal Society of Chemistry (MRSC) and a STEM Ambassador.', 'https://bertiemuller.files.wordpress.com/2012/01/img_0961-4-e1523358943203.jpg?w=246&h=328', '2019-09-22 22:42:34', '2019-09-22 22:42:34');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
CREATE TABLE IF NOT EXISTS `results` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `jmbg` int(11) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `placebirth` varchar(255) DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `index` int(11) DEFAULT NULL,
  `ects` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `points` float DEFAULT NULL,
  `mark` int(11) DEFAULT NULL,
  `subject_id` bigint(20) DEFAULT NULL,
  `proba` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_results_on_subject_id` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20171109150306'),
('20171109220934'),
('20171111123053'),
('20171112111541'),
('20171112121553'),
('20171211015822'),
('20171215221535'),
('20171215223836'),
('20171215235454'),
('20171222203300'),
('20171224210845'),
('20171224210922'),
('20171226161248'),
('20171227234605'),
('20171228140419'),
('20171228232209'),
('20171228232320'),
('20190125123837'),
('20190708173113');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
CREATE TABLE IF NOT EXISTS `subjects` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `ECTS` int(11) DEFAULT NULL,
  `cycle` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `title`, `ECTS`, `cycle`, `semester`, `subject_type`, `created_at`, `updated_at`) VALUES
(1, 'PRS', 5, 1, 1, 'obavezni', '2017-12-17 16:03:38', '2017-12-17 16:05:30'),
(2, 'TP', 6, 1, 1, 'Obavezni', '2017-12-28 23:28:59', '2017-12-28 23:28:59'),
(3, 'OR', 5, 1, 1, 'Obavezni', '2017-12-28 23:33:04', '2017-12-28 23:33:04');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD CONSTRAINT `fk_rails_50734fd3c1` FOREIGN KEY (`job_advertisements_id`) REFERENCES `job_advertisements` (`id`);

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `fk_rails_a6f81d1959` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
