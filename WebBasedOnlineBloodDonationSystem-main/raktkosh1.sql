-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2021 at 07:57 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `raktkosh1`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_verif`
--

CREATE TABLE `bank_verif` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `country` varchar(20) NOT NULL,
  `contact` bigint(20) DEFAULT NULL,
  `verification_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bank_verif`
--

INSERT INTO `bank_verif` (`ID`, `name`, `email`, `password`, `address`, `city`, `state`, `pincode`, `country`, `contact`, `verification_status`) VALUES
(0, 'Apollo Blood bank', 'apollohospital@apo.ac.in', 'apollo', 'Pachpakadhi, near upvan lake', 'Thane', 'Maharashtra', '400602', '', 9820339607, 1),
(1, 'Jupiter Hospital', 'jupiterhospital@jup.org', 'jupiter', 'Eastern Express Highway, Service Road,\r\nNext to Viviana Mall', 'Thane', 'Maharashtra', '400610', '', 7506102915, 1),
(2, 'Poonam Medical Relief & REsearch Foundation', 'ponnammedicals@poonam.org', 'poonam4566', 'Poona Serological Institute, Raksha Peth', 'Pune', 'Maharashtra', '400567', '', 9764831853, 1),
(3, 'Fortis Hospital', 'fortishospital@for.ac.in', 'fortis01', '730, Eastern Metropolitan Bypass, Anandapur, East Kolkata Twp', 'Kolkata', 'West Bengal', '700107', '', 9427321754, 1),
(4, 'Lilavati Hospital', 'lilavati@gmail.com', 'lila87', ' Lilavati Hospital, A-791, Bandra Reclamation Rd, Bandra West', 'Mumbai', 'Maharashtra', '400050', '', 8512964532, 1),
(5, 'Christian Medical College', 'Christian@ch.ac.in', 'christian@medical', 'IDA Scudder Rd', 'Vellore', 'Tamil Nadu', '632004', '', 9527642874, 1),
(6, 'Jawaharlal Institute of Postgraduate Medical Education and Research', 'JawaharlalInst@gmail.com', 'harlal@897', 'Jipmer Campus Rd, Gorimedu, Dhanvantari Nagar', 'Dhanvantari Nagar', 'Puducherry', '605006', '', 8295639164, 1),
(7, 'Tata Memorial Hospital', 'tatamemo@ma.org', 'memotata@111', 'Dr.E,Dr Ernest Borges Rd, Parel', 'Mumbai', 'Maharashtra ', '400012', '', 8254985617, 1),
(8, 'Postgraduate Institute of Medical Education and Research', 'postresearch@gmail.com', 'post%64', 'Madhya Marg, Sector 12', 'Chandigarh', 'Chandigarh', '160012', '', 8452745628, 1),
(9, 'Sankara Netralaya', 'sankaranetralaya@sa.in', 'SankaNetra&yr', 'No. 41, Old 18, College Rd, Thousand Lights West, Nungambakkam', 'Chennai', 'Tamil Nadu', '600006', '', 91547385673, 1),
(10, 'Kokilaben Hospital', 'kokilabenhospital@ko.in', 'Kokila@54', ' Rao Saheb, Achutrao Patwardhan Marg, Four Bungalows, Andheri West', 'Mumbai', 'Maharashtra ', '400053', '', 7385647391, 1),
(11, 'Manipal Hospital', 'manipalhospital@man.org', 'Manipal@1001', '45/1, 45th Cross Rd, KSRTC Layout, Jayanagara 9th Block, Jayanagar', 'Bengaluru', 'Karnataka ', '560069', '', 8254673856, 1),
(12, 'Apollo Hospitals', 'apolloo@apo.org', 'Apollo000@we46', '154/11, Opp IIM, Bannerghatta Road', 'Bengaluru ', 'Karnataka', '560 076', '', 8734518748, 1),
(13, 'Hiranandani Hospital', 'hiranandanihospital@hira.org', 'HIraaaa@46y7', 'Hillside Rd, Hiranandani Gardens, IIT Area, Powai', 'Mumbai', 'Maharshtra', '400076', '', 9672468356, 1),
(14, 'Aditya Birla Memorial', 'adityabirlamemorial@ad.org', 'AdityaBirla@233', 'Aditya Birla Hospital Marg, Thergaon, Pimpri-Chinchwad', 'Pune', 'Maharashtra ', '411033', '', 9823456729, 1),
(15, 'BLK Super Specialty Hospital', 'blksupspe@bl.org', 'BLK@56@Super@67', 'Pusa Rd, Radha Soami Satsang, Rajendra Place', 'New Delhi', 'Delhi', '110005', '', 7396539563, 1),
(16, 'Billroth Hospital', 'billrothhospital@bil.in', 'billroth$90', '43, Lakshmi Talkies Rd, Shenoy Nagar', 'Chennai', 'Tamil Nadu', '600030', '', 7509639573, 1),
(17, 'Columbia Asia Hospital', 'columbiasiahospital@co.org', 'Columbia@783h8', 'IB-193, Broadway Rd, Sector III, Bidhannagar', 'Kolkata', 'West Bengal', '700091', '', 9354826489, 1),
(18, 'Sir Ganga Ram Hospital', 'Gangaram@gara.org', 'GangaRam^&%$yht768', 'Sarhadi Gandhi Marg, Old Rajinder Nagar, Rajinder Nagar', ' New Delhi', 'Delhi ', '110060', '', 9465828489, 1),
(19, 'Kamineni Hospitals', 'kaminenihospitals@kam.ac.in', 'Kamineni@tuy898', 'Kamineni Hospital – King Koti', 'Hyderabad ', 'Hyderabad ', '500 001', '', 9782846273, 1),
(20, 'Fortis Malar Hospital', 'malarfortis@for.ac.in', 'Fortis#malar', 'No. 52, 1st Main Rd, Gandhi Nagar, Adyar', 'Chennai', 'Tamil Nadu ', '600020', '', 6239265364, 1),
(21, 'Sri Ramachandra Medical Centre (SRMC),', 'ramchandra@785', 'Ramchandra@878', 'No.1, Ramachandra Nagar, Sri Ramachandra Nagar', 'Chennai', 'Tamil Nadu', '600116', '', 8452945293, 1);

-- --------------------------------------------------------

--
-- Table structure for table `blood_bank`
--

CREATE TABLE `blood_bank` (
  `bank_id` int(11) NOT NULL,
  `blood_units` int(11) NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `expiry` timestamp NOT NULL DEFAULT current_timestamp(),
  `blood_group` int(11) DEFAULT NULL,
  `b_h_id` int(11) DEFAULT 0,
  `componentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blood_bank`
--

INSERT INTO `blood_bank` (`bank_id`, `blood_units`, `entry_date`, `expiry`, `blood_group`, `b_h_id`, `componentID`) VALUES
(34, 100, '2021-03-30 17:22:52', '2021-05-15 09:19:28', 1, 1, 1),
(35, 45, '2021-03-30 17:23:10', '2021-06-18 09:19:51', 1, 1, 1),
(36, 142, '2021-03-30 18:16:42', '2021-06-11 09:20:05', 3, 1, 1),
(37, 23, '2021-03-30 18:16:49', '2021-06-10 09:20:14', 3, 1, 1),
(38, 75, '2021-03-30 18:16:55', '2021-07-15 09:20:28', 4, 1, 1),
(39, 179, '2021-03-30 18:17:01', '2021-08-26 09:20:44', 5, 1, 1),
(40, 89, '2021-03-30 18:17:06', '2021-07-14 09:20:55', 6, 1, 1),
(41, 62, '2021-03-30 18:17:11', '2021-07-15 09:21:19', 2, 1, 1),
(44, 89, '2021-03-30 18:17:16', '2021-06-21 09:22:10', 1, 1, 2),
(45, 50, '2021-03-30 18:17:20', '2021-06-10 09:22:18', 2, 1, 2),
(46, 96, '2021-03-30 18:17:25', '2021-07-02 09:22:27', 3, 1, 2),
(47, 60, '2021-03-30 18:17:29', '2021-06-17 09:22:48', 4, 1, 2),
(48, 74, '2021-03-30 18:17:33', '2021-07-15 09:22:59', 5, 1, 2),
(49, 80, '2021-03-30 18:17:39', '2021-08-27 09:23:21', 6, 1, 2),
(50, 97, '2021-03-30 18:17:43', '2021-07-09 09:23:31', 7, 1, 2),
(51, 45, '2021-03-30 18:17:48', '2022-08-12 09:23:43', 1, 1, 3),
(52, 125, '2021-03-30 18:17:53', '2021-08-20 09:24:03', 1, 1, 4),
(53, 46, '2021-03-30 18:17:56', '2022-08-12 09:24:13', 2, 1, 3),
(54, 90, '2021-03-30 18:18:01', '2022-09-15 09:24:24', 3, 1, 3),
(55, 75, '2021-03-30 18:18:07', '2022-08-18 09:24:45', 4, 1, 3),
(56, 65, '2021-03-30 18:18:12', '2022-07-15 09:24:55', 5, 1, 3),
(57, 35, '2021-03-30 18:18:17', '2022-06-10 09:25:17', 6, 1, 3),
(58, 63, '2021-03-30 18:18:26', '2022-09-10 09:25:28', 7, 1, 3),
(59, 15, '2021-03-30 18:18:31', '2022-09-16 09:25:48', 8, 1, 3),
(60, 65, '2021-03-30 18:18:34', '2021-07-16 09:25:58', 1, 1, 4),
(61, 56, '2021-03-30 18:18:38', '2021-08-13 09:26:07', 2, 1, 4),
(62, 36, '2021-03-30 18:18:43', '2021-09-03 09:26:16', 3, 1, 4),
(63, 30, '2021-03-30 18:18:48', '2021-11-06 09:26:26', 4, 1, 4),
(64, 67, '2021-03-30 18:18:54', '2021-11-19 09:26:36', 5, 1, 4),
(65, 60, '2021-03-30 18:19:01', '2021-10-07 09:26:47', 6, 1, 4),
(66, 65, '2021-03-30 18:19:06', '2021-12-16 09:27:22', 7, 1, 4),
(67, 28, '2021-03-30 18:19:11', '2022-02-11 09:27:36', 8, 1, 4),
(68, 78, '2021-03-30 18:19:15', '2021-11-19 09:27:54', 8, 1, 2),
(70, 15, '2021-03-30 18:19:19', '2021-10-08 06:32:45', 5, 1, 2),
(73, 1, '2021-03-23 08:30:51', '2021-04-27 08:30:51', 1, 0, 1),
(75, 45, '2021-03-30 13:33:26', '2021-05-04 13:33:26', 4, 0, 1),
(76, 4, '2021-03-30 13:33:53', '2021-04-04 13:33:53', 2, 0, 4),
(77, 10, '2021-03-30 18:50:07', '2021-05-04 18:50:07', 3, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `blood_type`
--

CREATE TABLE `blood_type` (
  `group_id` int(11) NOT NULL,
  `blood_group` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blood_type`
--

INSERT INTO `blood_type` (`group_id`, `blood_group`) VALUES
(1, 'A+'),
(2, 'A-'),
(3, 'B+'),
(4, 'B-'),
(5, 'AB+'),
(6, 'AB-'),
(7, 'O+'),
(8, 'O-');

-- --------------------------------------------------------

--
-- Table structure for table `camps`
--

CREATE TABLE `camps` (
  `camp_id` int(11) NOT NULL,
  `Camp_n` varchar(256) NOT NULL,
  `Organizer_n` varchar(256) NOT NULL,
  `Organization_n` varchar(256) NOT NULL,
  `email_id` varchar(256) NOT NULL,
  `Start_date` date NOT NULL,
  `End_date` date NOT NULL,
  `Address` varchar(256) NOT NULL,
  `City` varchar(256) NOT NULL,
  `State` varchar(256) NOT NULL,
  `Pincode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `camps`
--

INSERT INTO `camps` (`camp_id`, `Camp_n`, `Organizer_n`, `Organization_n`, `email_id`, `Start_date`, `End_date`, `Address`, `City`, `State`, `Pincode`) VALUES
(1, 'Rotary Blood Bank', 'Rashmi', 'RCBVDU', 'rcbvdu.rc@gmail.com', '2020-10-10', '2021-11-16', 'add1', 'Kalyan', 'Maharashtra', 421301),
(2, 'The Blood Association', 'Madhavi', 'VESIT', 'vesit.ac@gmail.com', '2021-02-10', '2021-02-25', 'add2', 'Thane', 'Maharashtra', 405601),
(3, 'Blood Cross Society', 'Dhruvisha', 'Hogwarts', 'hoggy.ac@gmail.com', '2020-01-01', '2020-02-02', 'add3', 'Navi mumbai', 'Maharashtra', 405601),
(5, 'Shubhangi', 'Shubhangi Zope', 'Shubhangi', '2019shubhangi.zope@ves.ac.in', '0000-00-00', '0000-00-00', 'C-704, Happy Valley, Manpada', 'Thane', 'Maharashtra', 400610),
(6, 'Hello World', 'Hrithika Singh', 'Vesit ', 'hrithikasingh2501@gmail.com', '2021-04-07', '2021-04-09', 'Vihang Gardens', 'Thane', 'Maharashtra', 400606);

-- --------------------------------------------------------

--
-- Table structure for table `camp_donor`
--

CREATE TABLE `camp_donor` (
  `D_id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `blood_group` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `pincode` int(11) NOT NULL,
  `state` varchar(255) NOT NULL,
  `mobile_no` bigint(10) NOT NULL,
  `camp_n` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `camp_donor`
--

INSERT INTO `camp_donor` (`D_id`, `f_name`, `l_name`, `email_id`, `gender`, `age`, `blood_group`, `address`, `city`, `pincode`, `state`, `mobile_no`, `camp_n`) VALUES
(1, 'Martin', 'Kim', 'martin.kim@gmail.com', 'F', 23, 1, 'add1', 'seoul', 905432, 'korea', 9024356781, 2),
(2, 'Mark', 'Tuan', 'mark.tuan@gmail.com', 'M', 26, 2, 'add2', 'seoul', 905432, 'korea', 7024356781, 1),
(3, 'Jackson', 'Wang', 'jswang.jsw@gmail.com', 'M', 26, 2, 'add3', 'seoul', 905432, 'korea', 8724356781, 2),
(4, 'Jabeom', 'Lim', 'beomah.jb@gmail.com', 'M', 26, 5, 'add4', 'seoul', 905432, 'korea', 9724356781, 2),
(5, 'Jinyoung', 'Park', 'junior.jyp@gmail.com', 'M', 26, 4, 'add4', 'seoul', 905432, 'korea', 9060356781, 3),
(6, 'Jinyoung', 'Park', 'junior.jyp@gmail.com', 'M', 26, 4, 'add4', 'seoul', 905432, 'korea', 9060356781, 3),
(7, 'Jinyoung', 'Park', 'junior.jyp@gmail.com', 'M', 26, 4, 'add4', 'seoul', 905432, 'korea', 9060356781, 3),
(8, 'Yugyeom', 'Lee', 'yug.aomg@gmail.com', 'M', 26, 2, 'add5', 'seoul', 905432, 'korea', 8974356781, 1),
(9, 'Bambam', 'BB', 'double.b@gmail.com', 'M', 26, 2, 'add6', 'seoul', 905432, 'korea', 7724356781, 3),
(12, 'Hrithika', 'Singh', 'hrithikasingh2501@gmail.com', '', 0, 1, 'Vihang Gardens', 'Thane', 400606, 'Maharashtra', 7045953233, 6),
(13, 'Hrithika', 'Singh', 'hrithikasingh2501@gmail.com', 'F', 20, 1, 'Vihang Gardens', 'Thane', 400606, 'Maharashtra', 7045953233, 6),
(14, 'Hrithika', 'Singh', 'hrithikasingh2501@gmail.com', 'F', 5, 1, 'Vihang Gardens', 'Thane', 400606, 'Maharashtra', 7045953233, 6);

-- --------------------------------------------------------

--
-- Table structure for table `camp_volunteer`
--

CREATE TABLE `camp_volunteer` (
  `V_id` int(11) NOT NULL,
  `fName` varchar(255) NOT NULL,
  `lName` varchar(255) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Age` int(11) NOT NULL,
  `Camp` int(11) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `Pincode` int(11) NOT NULL,
  `State` varchar(255) NOT NULL,
  `Mobile_No` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `camp_volunteer`
--

INSERT INTO `camp_volunteer` (`V_id`, `fName`, `lName`, `email_id`, `Gender`, `Age`, `Camp`, `Address`, `City`, `Pincode`, `State`, `Mobile_No`) VALUES
(1, 'Sehun', 'Oh', 'maknae.ttmh@gmail.com', 'M', 26, 3, 'add1', 'Imphal', 921345, 'Tripura', 8762340091),
(2, 'Kai', 'Nini', 'kai.mhmm@gmail.com', 'M', 26, 2, 'add2', 'Agartala', 911345, 'Tripura', 7002340091),
(3, 'Suho', 'Lee', 'leader.suho@gmail.com', 'M', 28, 3, 'add3', 'imphal', 921345, 'Tripura', 7006340091),
(4, 'Chanyeol', 'Chan', 'yeol.chan@gmail.com', 'M', 27, 3, 'add4', 'bangalore', 321345, 'Karnataka', 9000340091),
(5, 'Jeongdae', 'Kim', 'chen.dae@gmail.com', 'M', 28, 1, 'add5', 'Mumbai', 412345, 'Maharashtra', 9762340091),
(6, 'Hrithika', 'Singh', 'hrithikasingh2501@gmail.com', 'F', 20, 5, 'Vihang Gardens', 'Thane', 400606, 'Maharashtra', 7045953233);

-- --------------------------------------------------------

--
-- Table structure for table `component`
--

CREATE TABLE `component` (
  `componentID` int(11) NOT NULL,
  `componemts` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `component`
--

INSERT INTO `component` (`componentID`, `componemts`) VALUES
(1, 'whole_blood'),
(2, 'red_cells'),
(3, 'plasma'),
(4, 'platelets');

-- --------------------------------------------------------

--
-- Table structure for table `cummulative`
--

CREATE TABLE `cummulative` (
  `b_h_id` int(11) NOT NULL,
  `blood_group` int(11) DEFAULT NULL,
  `componentID` int(255) DEFAULT NULL,
  `bags` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cummulative`
--

INSERT INTO `cummulative` (`b_h_id`, `blood_group`, `componentID`, `bags`) VALUES
(1, 1, 1, 146),
(1, 1, 2, 89),
(1, 1, 3, 45),
(1, 1, 4, 190),
(1, 2, 1, 62),
(1, 2, 2, 50),
(1, 2, 3, 46),
(1, 2, 4, 60),
(1, 3, 1, 175),
(1, 3, 2, 96),
(1, 3, 3, 100),
(1, 3, 4, 36),
(1, 4, 1, 120),
(1, 4, 2, 60),
(1, 4, 3, 75),
(1, 4, 4, 30),
(1, 5, 1, 179),
(1, 5, 2, 74),
(1, 5, 3, 65),
(1, 5, 4, 67),
(1, 6, 1, 89),
(1, 6, 2, 80),
(1, 6, 3, 35),
(1, 6, 4, 60),
(1, 7, 1, 80),
(1, 7, 2, 97),
(1, 7, 3, 73),
(1, 7, 4, 65),
(1, 8, 1, 125),
(1, 8, 2, 78),
(1, 8, 3, 115),
(1, 8, 4, 28);

-- --------------------------------------------------------

--
-- Table structure for table `user-verif`
--

CREATE TABLE `user-verif` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `age` mediumint(9) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `bloodtype` int(11) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `aadhar` bigint(9) DEFAULT NULL,
  `verification_status` varchar(255) DEFAULT NULL,
  `verification_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user-verif`
--

INSERT INTO `user-verif` (`id`, `fname`, `lname`, `email`, `password`, `gender`, `age`, `address`, `city`, `pincode`, `state`, `country`, `bloodtype`, `phone`, `aadhar`, `verification_status`, `verification_id`) VALUES
(1, 'Neelam', 'Pate', 'In@Utsagittis.co.uk', 'NBE31JKH3LM', 'M', 56, 'P.O. Box 175, 7812 Rutrum Road', 'Agartala', '706644', 'Tripura', 'India', 2, '6332959903', 123456789123, '1', 8388607),
(4, 'Anunay', 'Ismail', 'vitae.dolor@vitaerisus.net', 'NJI77UQH9OE', 'M', 56, 'P.O. Box 723, 9532 Sapien. Road', 'Daman', '850530', 'DD', 'India', 6, '+91 8847657856', 8388607, '0', 8388607),
(5, 'Ekanthika', 'Khan', 'molestie@mieleifend.edu', 'TMF14ZWX8QY', 'M', 36, '638-4479 Risus. St.', 'Jamshedpur', '730696', 'Jharkhand', 'India', 2, '+91 8166474607', 8388607, '0', 8388607),
(6, 'Rajanya', 'Raj', 'ac.turpis.egestas@maurissit.edu', 'SEF88JKE6YL', 'F', 28, 'Ap #214-873 Eget Road', 'Panjim', '712460', 'GA', 'India', 2, '+91 9074514365', 8388607, '0', 8388607),
(7, 'Raj', 'Kumar', 'euismod.ac.fermentum@necurnasuscipit.edu', 'NEZ26DYL9OZ', 'M', 40, '8968 Tristique Road', 'Morvi', '170091', 'GJ', 'India', 5, '+91 9472035407', 8388607, '0', 8388607),
(8, 'Sukrit', 'Singh', 'Morbi@malesuada.edu', 'VEF70NHZ5UQ', 'F', 18, 'P.O. Box 346, 3939 Lacinia Av.', 'Silvassa', '847095', 'Dadra and Nagar Haveli', 'India', 7, '+91 5072673918', 8388607, '0', 8388607),
(9, 'Sheil', 'Kumar', 'ipsum.primis.in@faucibuslectusa.edu', 'CPX19NGU0BN', 'F', 21, 'P.O. Box 976, 7519 Nonummy St.', 'Siliguri', '854380', 'WB', 'India', 2, '+91 8049102064', 8388607, '0', 8388607),
(10, 'Dwijendra', 'Ismail', 'non@Vestibulumanteipsum.net', 'OXF34XSC6FP', 'M', 28, 'P.O. Box 364, 1510 Ultricies St.', 'Wah', '108841', 'Punjab', 'India', 8, '+91 5977877599', 8388607, '0', 8388607),
(11, 'Ratna', 'Jain', 'litora.torquent@a.edu', 'USV96YUN3DE', 'F', 23, 'Ap #966-4908 Arcu Rd.', 'Karnal', '985212', 'HR', 'India', 2, '+91 3963473568', 8388607, '0', 8388607),
(12, 'Vendan', 'Patel', 'urna@convallisligulaDonec.co.uk', 'RSQ50UVT3FZ', 'M', 57, 'Ap #533-657 Elementum, Av.', 'New Bombay', '481491', 'MH', 'India', 5, '+91 7628419782', 8388607, '0', 8388607),
(13, 'Nityanand', 'Kumar', 'leo.in.lobortis@egestasblanditNam.net', 'DQI94GJN2OF', 'M', 28, '337 Imperdiet Rd.', 'Panjim', '259719', 'GA', 'India', 6, '+91 8442994016', 8388607, '0', 8388607),
(14, 'Govind', 'Raj', 'Mauris.vel.turpis@elementumpurusaccumsan.org', 'FZN32BEY0QI', 'M', 37, '790-6254 Ornare St.', 'Kavaratti', '566039', 'Lakshadweep', 'India', 3, '+91 1140216611', 8388607, '0', 8388607),
(15, 'Ramkumar', 'Khan', 'ut.ipsum.ac@Suspendisse.org', 'HIC88EOH6IP', 'M', 29, 'Ap #781-3226 Sed Av.', 'Firozabad', '458396', 'Uttar Pradesh', 'India', 6, '+91 6605842806', 8388607, '0', 8388607),
(16, 'Madhula', 'Raj', 'Vestibulum.ante.ipsum@eu.net', 'DCC73OSU7BB', 'M', 28, 'P.O. Box 555, 8576 Semper St.', 'Itanagar', '833431', 'AR', 'India', 2, '+91 2372029681', 8388607, '0', 8388607),
(17, 'Devajyoti', 'Jain', 'et.magnis@sagittissemperNam.ca', 'POE04LYA1HE', 'F', 56, 'P.O. Box 354, 6206 Vel Road', 'Chandigarh', '615784', 'Chandigarh', 'India', 8, '+91 3274726974', 8388607, '0', 8388607),
(18, 'Meghashyam', 'Singh', 'feugiat.nec@mollisvitae.ca', 'XKR46HBH9PI', 'F', 31, 'Ap #193-5539 Facilisis Rd.', 'Vellore', '616778', 'Tamil Nadu', 'India', 1, '+91 5396292058', 8388607, '0', 8388607),
(19, 'Titir', 'Ismail', 'Donec@rhoncusDonecest.ca', 'EYR32ECR0PA', 'M', 32, '3719 Habitant St.', 'Silvassa', '189831', 'DN', 'India', 7, '+91 3732065588', 8388607, '0', 8388607),
(20, 'Rituraj', 'Ismail', 'ipsum@nonummyipsumnon.edu', 'BUP25UKG2NV', 'M', 41, 'P.O. Box 463, 9779 Tellus Rd.', 'Nadiad', '879872', 'Gujarat', 'India', 2, '+91 4689379488', 8388607, '0', 8388607),
(21, 'Mani', 'Kumar', 'sit@nibhDonecest.org', 'SKU86EHT0BG', 'M', 35, '271-6272 Egestas Av.', 'Sambalpur', '812940', 'OR', 'India', 6, '+91 6962925746', 8388607, '0', 8388607),
(22, 'Gyandev', 'Raj', 'non.dapibus@ipsum.org', 'PAO81VTS1EZ', 'M', 51, 'Ap #708-6693 Dui. Road', 'Hisar', '955538', 'HR', 'India', 4, '+91 6581045728', 8388607, '0', 8388607),
(23, 'Mayil', 'Khan', 'convallis@ultriciessemmagna.net', 'IMU61QOE8II', 'F', 27, 'Ap #190-4940 Duis Street', 'Shimla', '748305', 'Himachal Pradesh', 'India', 2, '+91 6664243896', 8388607, '0', 8388607),
(24, 'Madhubala', 'Kumar', 'Cras@nonbibendum.org', 'GSW80JVS5PA', 'M', 47, '6123 A Av.', 'Purnea', '439649', 'Jharkhand', 'India', 2, '+91 2511713256', 8388607, '0', 8388607),
(25, 'Shripati', 'Singh', 'luctus.aliquet.odio@Suspendissealiquet.net', 'DFM36SLP3GY', 'F', 52, '8434 Posuere Avenue', 'Serampore', '114798', 'WB', 'India', 3, '+91 9033840067', 8388607, '0', 8388607),
(26, 'Ecchumati', 'Khan', 'elit.elit.fermentum@eget.net', 'ZKW74LQH7OQ', 'F', 42, 'P.O. Box 979, 624 Sagittis Av.', 'Chandigarh', '588344', 'Chandigarh', 'India', 1, '+91 2772021586', 8388607, '0', 8388607),
(27, 'Nadir', 'Patel', 'magna.Nam.ligula@ornareplaceratorci.co.uk', 'YDE29FLK1HB', 'F', 48, 'P.O. Box 616, 6625 Sit Ave', 'Chandigarh', '381208', 'CH', 'India', 6, '+91 3241683571', 8388607, '0', 8388607),
(28, 'Oojam', 'Ismail', 'Pellentesque@aliquetnec.ca', 'CDY89VKU7JV', 'F', 35, 'Ap #600-149 Malesuada St.', 'Gangtok', '819292', 'SK', 'India', 4, '+91 3391352666', 8388607, '0', 8388607),
(29, 'Satyavan', 'Singh', 'lacinia@egestas.net', 'QRL06AAN9EO', 'F', 53, 'Ap #181-4029 Arcu. Rd.', 'Uttarpara-Kotrung', '571169', 'West Bengal', 'India', 5, '+91 4739490335', 8388607, '0', 8388607),
(30, 'Gajagamini', 'Ismail', 'ultricies@sit.org', 'EXD54KKB4AZ', 'M', 37, '8527 Aliquam St.', 'Gangtok', '844947', 'SK', 'India', 2, '+91 4082955884', 8388607, '0', 8388607),
(31, 'Madhuchhanda', 'Jain', 'Integer.urna@scelerisqueloremipsum.org', 'RHL44LWO2GL', 'F', 32, 'P.O. Box 199, 4677 Leo. Ave', 'Raigarh', '956708', 'CT', 'India', 5, '+91 6274604943', 8388607, '0', 8388607),
(32, 'Surotama', 'Khan', 'arcu.Curabitur.ut@arcuAliquam.net', 'YBK51EPP9YC', 'F', 18, '827-248 Semper Av.', 'Jabalpur', '930662', 'Madhya Pradesh', 'India', 4, '+91 1337794371', 8388607, '0', 8388607),
(33, 'Dharmaditya', 'Patel', 'gravida@orciluctuset.net', 'TMZ32SRR9RW', 'F', 46, '998-3992 Egestas Street', 'Silvassa', '721025', 'Dadra and Nagar Haveli', 'India', 4, '+91 0707652222', 8388607, '0', 8388607),
(34, 'Prachur', 'Raj', 'auctor.quis.tristique@ullamcorperDuis.org', 'JAK13KNY9WZ', 'F', 27, '444-9313 Sollicitudin St.', 'Firozabad', '468869', 'UP', 'India', 4, '+91 8179514046', 8388607, '0', 8388607),
(35, 'Eshita', 'Ismail', 'sit@Nuncmauris.net', 'ABC05JXI0NZ', 'M', 50, 'P.O. Box 585, 9713 Nulla. Avenue', 'Madurai', '831085', 'Tamil Nadu', 'India', 8, '+91 0571959666', 8388607, '0', 8388607),
(36, 'Harshvardhan', 'Patel', 'Duis@consequat.net', 'GBY62AXR4BC', 'M', 28, 'Ap #306-8535 Curabitur St.', 'Port Blair', '801130', 'AN', 'India', 3, '+91 3530040225', 8388607, '0', 8388607),
(37, 'Anshumat', 'Kumar', 'libero.mauris.aliquam@nibhvulputate.co.uk', 'WBV89PHT5TN', 'M', 22, 'P.O. Box 666, 381 Turpis. St.', 'Jammu', '253324', 'Jammu and Kashmir', 'India', 3, '+91 8456225684', 8388607, '0', 8388607),
(38, 'Aditya', 'Kumar', 'Etiam@euaugue.ca', 'WLO81JER8FA', 'F', 56, '5530 Suspendisse Avenue', 'Gangtok', '198992', 'Sikkim', 'India', 2, '+91 9938681720', 8388607, '0', 8388607),
(39, 'Chidambar', 'Jain', 'enim.Curabitur@nullaante.org', 'PHU39YCS0OE', 'F', 33, 'P.O. Box 424, 7839 Quis Ave', 'Silvassa', '783347', 'Dadra and Nagar Haveli', 'India', 2, '+91 5136096673', 8388607, '0', 8388607),
(40, 'Pratiti', 'Patel', 'parturient.montes@rutrumeu.ca', 'HWK38SKY2MH', 'F', 51, '206-9190 Torquent Rd.', 'Purnea', '636985', 'JH', 'India', 8, '+91 0134002420', 8388607, '0', 8388607),
(41, 'Ilavalagi', 'Khan', 'posuere.cubilia.Curae@nullaatsem.com', 'KFX86EMD2CW', 'F', 24, 'Ap #780-9839 Enim. Rd.', 'Malkajgiri', '319377', 'AP', 'India', 3, '+91 8303795227', 8388607, '0', 8388607),
(42, 'Bhupen', 'Khan', 'rutrum@vitaediam.com', 'XVM84KAB3KX', 'M', 18, 'Ap #626-2709 Vitae Avenue', 'Sikar', '620999', 'Rajasthan', 'India', 7, '+91 3562444560', 8388607, '0', 8388607),
(43, 'Jayitri', 'Kumar', 'Aenean.egestas@ac.co.uk', 'WFG28TIR3ME', 'F', 36, 'P.O. Box 215, 3552 Arcu. Rd.', 'Aizwal', '385027', 'MZ', 'India', 1, '+91 4933787935', 8388607, '0', 8388607),
(44, 'Aadi', 'Patel', 'eros@utodio.ca', 'GLR47IOU7PC', 'M', 63, '5476 Vulputate, Rd.', 'Sasaram', '781715', 'BR', 'India', 2, '+91 8347035270', 8388607, '0', 8388607),
(45, 'Jenya', 'Kumar', 'libero.Morbi.accumsan@Fusce.org', 'XXR34ZSA4JD', 'F', 22, '952-4619 Etiam St.', 'Port Blair', '366701', 'AN', 'India', 7, '+91 2423647824', 8388607, '0', 8388607),
(46, 'Tabassum', 'Patel', 'Aenean@sitamet.ca', 'SXX88VYF7BT', 'F', 37, '8012 Purus. Rd.', 'Gangtok', '544649', 'SK', 'India', 7, '+91 7287399133', 8388607, '0', 8388607),
(47, 'Jaya', 'Ismail', 'cursus@ascelerisque.ca', 'PFF45CSO0LA', 'F', 22, '670-6128 Amet St.', 'Silvassa', '217977', 'DN', 'India', 2, '+91 5418108909', 8388607, '0', 8388607),
(48, 'Alhad', 'Ismail', 'magna.Suspendisse.tristique@Curabitur.co.uk', 'ILK93WJB1QX', 'M', 18, '4299 In, Rd.', 'Kohima', '507816', 'NL', 'India', 6, '+91 1854997525', 8388607, '0', 8388607),
(49, 'Devabrata', 'Raj', 'malesuada.vel.convallis@elementum.ca', 'VOZ55MHU1BB', 'M', 64, 'Ap #873-5040 Luctus St.', 'Chapra', '476319', 'BR', 'India', 1, '+91 6385963358', 8388607, '0', 8388607),
(50, 'Sheil', 'Singh', 'enim@sedorcilobortis.org', 'RUB25DRQ9QH', 'M', 25, '7680 Sociis St.', 'Agartala', '341983', 'Tripura', 'India', 2, '+91 3307960650', 8388607, '0', 8388607),
(51, 'Meenakshi', 'Singh', 'Duis.gravida.Praesent@laciniaatiaculis.org', 'ALJ35ZJP5PU', 'F', 23, '653-1627 Sed, Road', 'Vidisha', '373078', 'Madhya Pradesh', 'India', 1, '+91 2481301420', 8388607, '0', 8388607),
(52, 'Divya', 'Ismail', 'placerat.velit.Quisque@vestibulummassa.co.uk', 'DGP43KKB1FU', 'M', 37, 'P.O. Box 465, 2932 Sed Street', 'Cuttack', '869348', 'Odisha', 'India', 8, '+91 3877335517', 8388607, '0', 8388607),
(53, 'Jayashree', 'Kumar', 'lobortis@SeddictumProin.ca', 'IZX91MUI1PG', 'M', 56, '2706 Donec St.', 'Hassan', '790407', 'KA', 'India', 3, '+91 7379746457', 8388607, '0', 8388607),
(54, 'Sukriti', 'Jain', 'ut.sem@non.org', 'DKW43ULG4MS', 'M', 37, '455-9543 Ac Avenue', 'Alwar', '314082', 'RJ', 'India', 5, '+91 7626457594', 8388607, '0', 8388607),
(55, 'Vipul', 'Ismail', 'nec.ligula.consectetuer@euismodmauriseu.edu', 'ZKA10HSE8FO', 'F', 26, '238-5278 Nibh St.', 'Porbandar', '505918', 'Gujarat', 'India', 4, '+91 3030318042', 8388607, '0', 8388607),
(56, 'Ambu', 'Kumar', 'ac.orci@Praesent.ca', 'VFB15KYS3WF', 'F', 52, '5311 Ridiculus St.', 'Korba', '507373', 'CT', 'India', 2, '+91 6631812853', 8388607, '0', 8388607),
(57, 'Yuktha', 'Singh', 'egestas.a.dui@lectus.ca', 'LFJ38NZR8AR', 'F', 64, '217-1887 Condimentum. St.', 'Chandigarh', '352843', 'Chandigarh', 'India', 7, '+91 1644457034', 8388607, '0', 8388607),
(58, 'Chiranjeev', 'Kumar', 'adipiscing@DonectinciduntDonec.ca', 'WTH83NRB9IX', 'M', 25, 'P.O. Box 507, 5840 Et Road', 'Imphal', '768432', 'Manipur', 'India', 6, '+91 2675599146', 8388607, '0', 8388607),
(59, 'Valli', 'Patel', 'velit.Cras@quam.co.uk', 'VQH04EWL0WN', 'F', 57, '4267 Lacus St.', 'Kavaratti', '840427', 'Lakshadweep', 'India', 1, '+91 5473353034', 8388607, '0', 8388607),
(60, 'Subhadra', 'Singh', 'ac.sem@nullaat.org', 'VVU10EQE3SY', 'F', 62, '708-4479 Quisque Street', 'Agartala', '703841', 'TR', 'India', 6, '+91 8365685910', 8388607, '0', 8388607),
(61, 'Minnoli', 'Singh', 'sed.consequat.auctor@tellusimperdiet.org', 'UYC21VWV8OY', 'M', 58, '1603 Per St.', 'Itanagar', '504385', 'AR', 'India', 4, '+91 6776322967', 8388607, '0', 8388607),
(62, 'Janani', 'Kumar', 'ligula.Nullam.enim@taciti.com', 'DUD33NNQ2DW', 'F', 51, 'P.O. Box 348, 139 Faucibus Street', 'Silvassa', '877553', 'Dadra and Nagar Haveli', 'India', 5, '+91 0518042799', 8388607, '0', 8388607),
(63, 'Ashritha', 'Kumar', 'interdum.libero.dui@malesuadaaugue.edu', 'QGZ34LUO6IU', 'F', 53, '518-2794 Et Av.', 'Vishakapatnam', '956551', 'AP', 'India', 7, '+91 3619947305', 8388607, '0', 8388607),
(64, 'Tamal', 'Khan', 'ac.libero.nec@viverra.net', 'QGC43GRA5EF', 'M', 48, '999-3218 Eget, Avenue', 'Puri', '390033', 'OR', 'India', 7, '+91 7571932916', 8388607, '0', 8388607),
(65, 'Radhana', 'Jain', 'massa.Suspendisse@massaIntegervitae.org', 'CAN10NZV2HH', 'F', 26, '764-6207 Magna. Rd.', 'Kollam', '595709', 'Kerala', 'India', 2, '+91 2038778042', 8388607, '0', 8388607),
(66, 'Naaz', 'Singh', 'nibh.Phasellus@Duiscursusdiam.net', 'EZI49JCT5KG', 'M', 27, '361-9882 Quis Road', 'Silvassa', '713297', 'Dadra and Nagar Haveli', 'India', 6, '+91 2067602840', 8388607, '0', 8388607),
(67, 'Chellamuthu', 'Patel', 'cursus.in.hendrerit@gravidamaurisut.com', 'RJA36MGT0JS', 'M', 18, '949-1542 Proin Ave', 'Munger', '412904', 'Bihar', 'India', 6, '+91 2712848823', 8388607, '0', 8388607),
(68, 'Dakshi', 'Jain', 'nisl@convallis.org', 'CNF90BHJ0OK', 'F', 65, '344-4014 Tellus, Rd.', 'Shimla', '803794', 'Himachal Pradesh', 'India', 7, '+91 2326560171', 8388607, '0', 8388607),
(69, 'Preetish', 'Singh', 'non.bibendum.sed@enim.ca', 'AQO22XPR0LD', 'M', 58, 'Ap #982-3044 Tempor Avenue', 'Yamuna Nagar', '898505', 'Haryana', 'India', 8, '+91 3187387570', 8388607, '0', 8388607),
(70, 'Acaryanandana', 'Khan', 'tristique.senectus@adipiscing.com', 'SYW89CRN3GK', 'F', 53, 'P.O. Box 605, 2714 Class Avenue', 'Srinagar', '484781', 'JK', 'India', 2, '+91 3089782969', 8388607, '0', 8388607),
(71, 'Faarooq', 'Singh', 'nisl@sodaleseliterat.org', 'BTZ37MUO6KN', 'F', 31, '816 Rutrum Street', 'Silvassa', '286724', 'DN', 'India', 7, '+91 6076304447', 8388607, '0', 8388607),
(72, 'Khazana', 'Raj', 'ullamcorper.Duis@idliberoDonec.edu', 'VGK69MHX5OV', 'F', 19, 'P.O. Box 166, 212 At Rd.', 'Chandigarh', '397043', 'Chandigarh', 'India', 7, '+91 3588052637', 8388607, '0', 8388607),
(73, 'Abhithi', 'Ismail', 'Quisque@sociisnatoquepenatibus.ca', 'GTQ49UWM9YV', 'F', 36, 'P.O. Box 162, 222 Tincidunt Av.', 'Shillong', '977725', 'ML', 'India', 1, '+91 0518821635', 8388607, '0', 8388607),
(74, 'Khazana', 'Ismail', 'ullamcorper@PraesentluctusCurabitur.co.uk', 'APO40INM7EI', 'F', 22, '682-8237 Risus, Avenue', 'Rohtak', '711356', 'HR', 'India', 8, '+91 0820585370', 8388607, '0', 8388607),
(75, 'Brahmabrata', 'Singh', 'ligula@nunc.ca', 'ZTV99ATU8CR', 'M', 52, 'P.O. Box 241, 1134 Eros Road', 'Agartala', '577311', 'Tripura', 'India', 1, '+91 5179006224', 8388607, '0', 8388607),
(76, 'Teerth', 'Khan', 'montes.nascetur@felis.co.uk', 'QGV29TVY2AI', 'M', 24, 'Ap #205-5218 Porttitor St.', 'Allappuzha', '582443', 'KL', 'India', 6, '+91 4569538199', 8388607, '0', 8388607),
(77, 'Vivekananda', 'Ismail', 'tellus.Suspendisse.sed@non.com', 'XZL88HIS9IS', 'F', 65, 'P.O. Box 161, 9651 Odio St.', 'Tirupati', '649055', 'AP', 'India', 1, '+91 8241502529', 8388607, '0', 8388607),
(78, 'Suhasini', 'Ismail', 'in.lobortis.tellus@arcu.co.uk', 'MFL51FXI5IL', 'M', 32, 'Ap #419-884 Nec St.', 'Daman', '306503', 'DD', 'India', 8, '+91 8519003833', 8388607, '0', 8388607),
(79, 'Kamakshi', 'Raj', 'consequat.auctor@ut.ca', 'SXJ84WML1SK', 'M', 40, 'Ap #153-7406 Sem Ave', 'Kavaratti', '705244', 'Lakshadweep', 'India', 5, '+91 7628608382', 8388607, '0', 8388607),
(80, 'Sejal', 'Ismail', 'vel.convallis@elitpellentesque.com', 'OSB08NOX5KR', 'M', 25, '555-8474 Ante. Road', 'Vishakapatnam', '494771', 'AP', 'India', 7, '+91 8560428891', 8388607, '0', 8388607),
(81, 'Induhasan', 'Raj', 'lectus@at.edu', 'ZKL53VCE0OR', 'M', 21, 'P.O. Box 382, 7110 Pharetra Ave', 'Kohima', '947326', 'NL', 'India', 3, '+91 7666230845', 8388607, '0', 8388607),
(82, 'Salma', 'Kumar', 'nascetur.ridiculus.mus@congue.co.uk', 'LYN90IAW8XE', 'F', 18, '2475 Nisl. Ave', 'Gangtok', '839226', 'SK', 'India', 2, '+91 4847616310', 8388607, '0', 8388607),
(83, 'Raghunandan', 'Raj', 'per@Proinvelnisl.co.uk', 'LGZ49WDM8EM', 'F', 23, '4193 Convallis Avenue', 'Vidisha', '733891', 'MP', 'India', 3, '+91 2963104323', 8388607, '0', 8388607),
(84, 'Sapan', 'Singh', 'vestibulum.neque@lobortis.edu', 'JOP55JGU5OP', 'M', 39, '8386 Lacinia Road', 'Tiruppur', '791868', 'Tamil Nadu', 'India', 2, '+91 5920308066', 8388607, '0', 8388607),
(85, 'Chitrabhanu', 'Kumar', 'non.luctus@libero.ca', 'DFE60ISK1EL', 'F', 43, '125-7340 Nunc Road', 'Purulia', '462574', 'Jharkhand', 'India', 3, '+91 8247759079', 8388607, '0', 8388607),
(86, 'Kanchi', 'Jain', 'ut.mi@ipsumdolorsit.com', 'EHO72CXQ2ZW', 'M', 21, '839-1352 Risus. Ave', 'Port Blair', '406262', 'AN', 'India', 1, '+91 1314084622', 8388607, '0', 8388607),
(87, 'Fravash', 'Jain', 'nisi.sem@lectusa.ca', 'ZPA32RUR8IQ', 'M', 52, 'P.O. Box 436, 9192 Feugiat Street', 'Bhavnagar', '602090', 'Gujarat', 'India', 3, '+91 0988899155', 8388607, '0', 8388607),
(88, 'Indrasena', 'Patel', 'auctor.velit@libero.com', 'EWS83SEW2AX', 'M', 49, '4610 Etiam Avenue', 'Morena', '320147', 'MP', 'India', 3, '+91 4961505045', 8388607, '0', 8388607),
(89, 'Yajnadhar', 'Kumar', 'Sed@Vestibulum.org', 'VWE49WTF2NM', 'M', 37, '254 Hendrerit Av.', 'Kavaratti', '847301', 'Lakshadweep', 'India', 5, '+91 8803799637', 8388607, '0', 8388607),
(90, 'Dinapati', 'Patel', 'ipsum.Curabitur@quisturpis.com', 'MBM78FAF5CR', 'M', 28, 'Ap #234-8792 Convallis Avenue', 'Cochin', '632165', 'Kerala', 'India', 6, '+91 2958253805', 8388607, '0', 8388607),
(91, 'Manjusha', 'Jain', 'vulputate.ullamcorper@ultricesDuis.edu', 'HLU66GSK9GJ', 'F', 65, 'Ap #173-5527 A, St.', 'Vishakapatnam', '169101', 'AP', 'India', 7, '+91 1332454975', 8388607, '0', 8388607),
(92, 'Jayanti', 'Kumar', 'Praesent.interdum.ligula@semvitaealiquam.ca', 'MIC71DGI2UH', 'F', 48, 'Ap #334-6036 Egestas Ave', 'Kollam', '364033', 'Kerala', 'India', 7, '+91 0816985465', 8388607, '0', 8388607),
(93, 'Dasharath', 'Singh', 'diam.Pellentesque@tellusfaucibusleo.co.uk', 'RWF15SSR4ML', 'F', 58, 'P.O. Box 460, 3827 Id St.', 'Surat', '485773', 'Gujarat', 'India', 1, '+91 0644041553', 8388607, '0', 8388607),
(94, 'Ganendra', 'Raj', 'ante.Nunc@est.org', 'ENQ02GJO4OS', 'M', 30, '465-930 Odio, Street', 'Port Blair', '447016', 'Andaman and Nicobar Islands', 'India', 4, '+91 1303767422', 8388607, '0', 8388607),
(95, 'Ambarish', 'Jain', 'sed.libero@nuncrisus.ca', 'XQK12RLZ6RL', 'F', 21, '5995 Nullam Road', 'Vishakapatnam', '976800', 'AP', 'India', 1, '+91 0588785720', 8388607, '0', 8388607),
(96, 'Champamalini', 'Singh', 'sodales.elit@arcuimperdiet.org', 'VIE55HEY2BT', 'M', 62, 'Ap #387-505 Sapien, Rd.', 'Shillong', '460186', 'ML', 'India', 3, '+91 3473382991', 8388607, '0', 8388607),
(97, 'Akalka', 'Jain', 'augue.scelerisque.mollis@sapienNuncpulvinar.ca', 'JJI84XYK8ZZ', 'M', 60, '247-3423 Lacus. Avenue', 'Thalassery', '240565', 'KL', 'India', 6, '+91 5962385632', 8388607, '0', 8388607),
(98, 'Urshita', 'Khan', 'sit.amet.massa@tellusPhaselluselit.edu', 'SXY78RMY0WM', 'F', 26, '550-9160 Lorem St.', 'Kavaratti', '207885', 'Lakshadweep', 'India', 8, '+91 1495103644', 8388607, '0', 8388607),
(99, 'Faisal', 'Raj', 'Duis@ornareelitelit.edu', 'IPF63YPE9BU', 'M', 38, '9987 Consectetuer St.', 'Aizwal', '335459', 'MZ', 'India', 6, '+91 9501557317', 8388607, '0', 8388607),
(100, 'Vanca', 'Jain', 'gravida.molestie.arcu@orciUt.ca', 'EGX01PHV0EL', 'M', 24, 'P.O. Box 951, 9729 Phasellus Ave', 'Silvassa', '194333', 'DN', 'India', 8, '+91 8351763054', 8388607, '0', 8388607),
(103, 'Rashmi', 'Singh', 'rashmisingh1001@gmail.com', 'pass@word', 'F', 23, 'A-5,Paradise', 'Mumbai', '421301', 'MH', 'India', 4, '3333333333', 675534552876, '1', 475480578),
(105, 'Madhavi', 'Singh', 'madhavi.singh1001@gmail.com', '56743', 'F', 19, 'Home', 'Earth', '0000000', 'Milky way', 'Galaxy', 1, '9999999999', 999999999999, '1', 781407262),
(106, 'Rachna', 'Singh', 'rashmiiingh1001@gmail.com', 'rashmi', 'F', 18, 'redwood', 'Thane', '400030', 'Maharashtra', 'India', 3, '9324045176', 234567890122, '1', 244943524),
(107, 'Rashmi ', 'Singh ', 'rashmiii.singh1001@gmail.com', 'rash', 'F', 18, 'Paradise apt', 'Kalyan', '421301', 'Maharashtra', 'India', 3, '9324040843', 123456789012, '1', 486633007),
(243, 'undefined', 'undefined', 'sonuda2001@gmail.com', 'sonu@2001', 'on', 19, 'Chitalsar', 'Thane', '400003', 'Maharashtra', 'India', 5, '9889362514', 657845637856, '1', NULL),
(248, 'Hrithika', 'Singh', 'hrithikasingh2501@gmail.com', 'helloworld', 'F', 20, 'Vihang Gardens', 'Thane', '400606', 'Maharashtra', 'India', 1, '7045953233', 333344445555, '1', NULL),
(249, 'Hrithika', 'Singh', 'hrithikasingh2501@gmail.com', 'helloworld', 'F', 20, 'Vihang Gardens', 'Thane', '400606', 'Maharashtra', 'India', 1, '7045953233', 333344445555, '1', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_verif`
--
ALTER TABLE `bank_verif`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `blood_bank`
--
ALTER TABLE `blood_bank`
  ADD PRIMARY KEY (`bank_id`),
  ADD KEY `blood_bank_ibfk_1` (`b_h_id`),
  ADD KEY `blood_bank_ibfk_2` (`componentID`);

--
-- Indexes for table `blood_type`
--
ALTER TABLE `blood_type`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `camps`
--
ALTER TABLE `camps`
  ADD PRIMARY KEY (`camp_id`);

--
-- Indexes for table `camp_donor`
--
ALTER TABLE `camp_donor`
  ADD PRIMARY KEY (`D_id`),
  ADD KEY `camp_n` (`camp_n`),
  ADD KEY `blood_group` (`blood_group`);

--
-- Indexes for table `camp_volunteer`
--
ALTER TABLE `camp_volunteer`
  ADD PRIMARY KEY (`V_id`),
  ADD KEY `Camp` (`Camp`);

--
-- Indexes for table `component`
--
ALTER TABLE `component`
  ADD PRIMARY KEY (`componentID`);

--
-- Indexes for table `cummulative`
--
ALTER TABLE `cummulative`
  ADD KEY `cummulative_ibfk_1` (`componentID`),
  ADD KEY `cummulative_ibfk_2` (`blood_group`),
  ADD KEY `cummulative_ibfk_3` (`b_h_id`);

--
-- Indexes for table `user-verif`
--
ALTER TABLE `user-verif`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bloodtype` (`bloodtype`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_verif`
--
ALTER TABLE `bank_verif`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `blood_bank`
--
ALTER TABLE `blood_bank`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `blood_type`
--
ALTER TABLE `blood_type`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `camps`
--
ALTER TABLE `camps`
  MODIFY `camp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `camp_donor`
--
ALTER TABLE `camp_donor`
  MODIFY `D_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `camp_volunteer`
--
ALTER TABLE `camp_volunteer`
  MODIFY `V_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user-verif`
--
ALTER TABLE `user-verif`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blood_bank`
--
ALTER TABLE `blood_bank`
  ADD CONSTRAINT `blood_bank_ibfk_1` FOREIGN KEY (`b_h_id`) REFERENCES `bank_verif` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blood_bank_ibfk_2` FOREIGN KEY (`componentID`) REFERENCES `component` (`componentID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `camp_donor`
--
ALTER TABLE `camp_donor`
  ADD CONSTRAINT `camp_donor_ibfk_1` FOREIGN KEY (`camp_n`) REFERENCES `camps` (`camp_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `camp_donor_ibfk_2` FOREIGN KEY (`blood_group`) REFERENCES `blood_type` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `camp_volunteer`
--
ALTER TABLE `camp_volunteer`
  ADD CONSTRAINT `camp_volunteer_ibfk_1` FOREIGN KEY (`Camp`) REFERENCES `camps` (`camp_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cummulative`
--
ALTER TABLE `cummulative`
  ADD CONSTRAINT `cummulative_ibfk_1` FOREIGN KEY (`componentID`) REFERENCES `component` (`componentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cummulative_ibfk_2` FOREIGN KEY (`blood_group`) REFERENCES `blood_type` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cummulative_ibfk_3` FOREIGN KEY (`b_h_id`) REFERENCES `bank_verif` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user-verif`
--
ALTER TABLE `user-verif`
  ADD CONSTRAINT `user-verif_ibfk_1` FOREIGN KEY (`bloodtype`) REFERENCES `blood_type` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
