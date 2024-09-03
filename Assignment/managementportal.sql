-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2018 at 01:28 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `managementportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `coursereg`
--

CREATE DATABASE `managementportal`;

CREATE TABLE `coursereg` (
  `id` int(11) NOT NULL,
  `studentName` varchar(50) NOT NULL,
  `course1` varchar(50) NOT NULL,
  `course2` varchar(50) NOT NULL,
  `course3` varchar(50) NOT NULL,
  `course4` varchar(50) NOT NULL,
  `course5` varchar(50) NOT NULL,
  `course6` varchar(50) NOT NULL,
  `course7` varchar(50) NOT NULL,
  `course8` varchar(50) NOT NULL,
  `course9` varchar(50) NOT NULL,
  `course10` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coursereg`
--

INSERT INTO `coursereg` (`id`, `studentName`, `course1`, `course2`, `course3`, `course4`, `course5`, `course6`, `course7`, `course8`, `course9`, `course10`) VALUES
(16, 'prosper_faith', 'svg331', 'svg322', 'csc333', 'bdt456', 'mth333', 'gns644', 'htu444', 'ens899', 'ens444', 'ght443'),
(17, 'prosper_faith', 'svg331', 'svg322', 'csc333', 'bdt456', 'mth333', 'gns644', 'htu444', 'ens899', 'ens444', 'ght443'),
(18, 'Olisakwe_Nnwana', 'svg331', 'svg322', 'csc333', 'bdt456', 'mth333', 'gns644', 'htu444', 'ens899', 'ens444', 'ght443'),
(19, 'prosper_Afe', 'svg331', 'gns644', 'csc211', 'bdt456', 'mth201', 'mth211', 'csc245', 'csc114', 'csc244', 'csc278');

-- --------------------------------------------------------

--
-- Table structure for table `deadline`
--

CREATE TABLE `deadline` (
  `id` int(11) NOT NULL,
  `lecturerName` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deadline`
--

INSERT INTO `deadline` (`id`, `lecturerName`, `date`) VALUES
(1, 'Olisakwe_Nnwana', '2018-10-16');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `id` int(11) NOT NULL,
  `firstName` varchar(200) NOT NULL,
  `lastName` varchar(200) NOT NULL,
  `IDNumber` varchar(30) NOT NULL,
  `faculty` varchar(150) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`id`, `firstName`, `lastName`, `IDNumber`, `faculty`, `username`, `email`, `password`) VALUES
(1, 'Anthony', 'Chukwocha', '564545', 'SOES', 'AC_CHUKWOCHA', 'jamesBond@gmail.com', 'thiurgntg'),
(2, 'Richard', 'Njoku', '419', 'SOES', 'njoku@richard', 'kalurichard@gmail.com', 'njoku'),
(3, 'olisakwe', 'ogu', '+2345', 'SOES', 'Olisakwe_Nnwana', 'olisakwe@gmail.com', 'olisakwe'),
(4, 'cosmos', 'alaba', '2342018', 'SMAT', 'cosmos_alaba', 'cosmosalaba@gmail.com', 'cosmos');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer_coursereg`
--

CREATE TABLE `lecturer_coursereg` (
  `id` int(11) NOT NULL,
  `lecturerName` varchar(150) NOT NULL,
  `course1` varchar(100) NOT NULL,
  `course2` varchar(100) NOT NULL,
  `course3` varchar(100) NOT NULL,
  `course4` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturer_coursereg`
--

INSERT INTO `lecturer_coursereg` (`id`, `lecturerName`, `course1`, `course2`, `course3`, `course4`) VALUES
(2, 'njoku@richard', 'mth201', 'csc245', 'csc201', 'csc222'),
(3, 'njoku@richard', 'htu444', 'gns644', 'mth333', 'ens899'),
(4, 'njoku@richard', 'svg331', 'svg322', 'csc333', 'bdt456'),
(5, 'Olisakwe_Nnwana', 'svg331', 'gns644', 'csc211', 'bdt456');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer_upload`
--

CREATE TABLE `lecturer_upload` (
  `id` int(11) NOT NULL,
  `lecturerName` varchar(100) NOT NULL,
  `file_name` varchar(150) NOT NULL,
  `file_type` varchar(50) NOT NULL,
  `file_size` varchar(100) NOT NULL,
  `file_path` varchar(200) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturer_upload`
--

INSERT INTO `lecturer_upload` (`id`, `lecturerName`, `file_name`, `file_type`, `file_size`, `file_path`, `date`) VALUES
(3, 'njoku@richard', 'avatar.jpg', 'image/jpeg', '136193', 'lecturer_uploads/5bba175de2ded2.31494042.jpg', '2018-10-07 15:25:33'),
(4, 'Olisakwe_Nnwana', 'github-space.jpeg', 'image/jpeg', '292242', 'lecturer_uploads/5bba451a3d74f2.83888455.jpeg', '2018-10-07 18:40:42');

-- --------------------------------------------------------

--
-- Table structure for table `profile_photo`
--

CREATE TABLE `profile_photo` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `file_name` varchar(150) NOT NULL,
  `file_type` varchar(50) NOT NULL,
  `file_size` varchar(100) NOT NULL,
  `file_path` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile_photo`
--

INSERT INTO `profile_photo` (`id`, `username`, `file_name`, `file_type`, `file_size`, `file_path`) VALUES
(9, 'Olisakwe_Nnwana', 'schoolfee.PNG', 'image/png', '83596', 'profile_photo/5bba0018469721.57852622.png'),
(10, 'prosper_Afe', 'avatar.jpg', 'image/jpeg', '136193', 'profile_photo/5bba06b8184703.52534137.jpg'),
(11, 'prosper_Afe', 'avatar.jpg', 'image/jpeg', '136193', 'profile_photo/5bba07a4223f50.92521883.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `firstName` varchar(200) NOT NULL,
  `lastName` varchar(200) NOT NULL,
  `regNumber` varchar(30) NOT NULL,
  `faculty` varchar(150) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `firstName`, `lastName`, `regNumber`, `faculty`, `username`, `email`, `password`) VALUES
(1, 'prosper', 'Afahaene', '20151010011', 'SEET', 'prosper_Afe', 'oparaprosper79@gmail.com', 'thisboy'),
(2, 'prosper', 'faith', '57565656565', 'SAAT', 'prosper_faith', 'kalurichard@gmail.com', 'prosper');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(11) NOT NULL,
  `studentName` varchar(100) NOT NULL,
  `file_name` varchar(50) NOT NULL,
  `file_type` varchar(10) NOT NULL,
  `file_size` varchar(10) NOT NULL,
  `file_path` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `studentName`, `file_name`, `file_type`, `file_size`, `file_path`, `date`) VALUES
(43, 'Olisakwe_Nnwana', 'schoolfee.PNG', 'image/png', '83596', 'uploads/5bb708015639c6.21065001.png', '2018-10-05'),
(44, 'prosper_Afe', 'student.jpg', 'image/jpeg', '174088', 'uploads/5bb8eba635b4a5.65751513.jpg', '2018-10-06'),
(45, 'prosper_Afe', 'badnetwork.PNG', 'image/png', '28796', 'uploads/5bb8ec0c8e24e6.63263025.png', '2018-10-06'),
(46, 'prosper_Afe', 'student.jpg', 'image/jpeg', '174088', 'uploads/5bb909d7168f31.46868125.jpg', '2018-10-06'),
(47, 'prosper_Afe', 'opara.png', 'image/png', '535139', 'uploads/5bb90a18a51de2.93363325.png', '2018-10-06'),
(48, 'prosper_Afe', 'hngBot.png', 'image/png', '3774', 'uploads/5bb91b88b72784.71338633.png', '2018-10-06'),
(50, 'Olisakwe_Nnwana', 'sam.jpg', 'image/jpeg', '202417', 'uploads/5bba0188e925c2.92331724.jpg', '2018-10-07'),
(51, 'Olisakwe_Nnwana', 'badnetwork.PNG', 'image/png', '28796', 'uploads/5bba01aa1e3656.72187186.png', '2018-10-07'),
(52, 'Olisakwe_Nnwana', 'badnetwork.PNG', 'image/png', '28796', 'uploads/5bba01f8686639.73354483.png', '2018-10-07'),
(53, 'Olisakwe_Nnwana', 'badnetwork.PNG', 'image/png', '28796', 'uploads/5bba01f9d4a426.23892641.png', '2018-10-07'),
(54, 'prosper_Afe', 'Andela-Learning-Community.jpg', 'image/jpeg', '111602', 'uploads/5bba05f8244c46.52682980.jpg', '2018-10-07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coursereg`
--
ALTER TABLE `coursereg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deadline`
--
ALTER TABLE `deadline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lecturer_coursereg`
--
ALTER TABLE `lecturer_coursereg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lecturer_upload`
--
ALTER TABLE `lecturer_upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_photo`
--
ALTER TABLE `profile_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coursereg`
--
ALTER TABLE `coursereg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `deadline`
--
ALTER TABLE `deadline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lecturer`
--
ALTER TABLE `lecturer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `lecturer_coursereg`
--
ALTER TABLE `lecturer_coursereg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `lecturer_upload`
--
ALTER TABLE `lecturer_upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `profile_photo`
--
ALTER TABLE `profile_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
