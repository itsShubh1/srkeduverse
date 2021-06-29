-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2021 at 07:34 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `admin_email` varchar(255) COLLATE utf8_bin NOT NULL,
  `admin_pass` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`) VALUES
(0, 'admin', 'admin@gmail.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` text COLLATE utf8_bin NOT NULL,
  `course_desc` text COLLATE utf8_bin NOT NULL,
  `course_author` varchar(255) COLLATE utf8_bin NOT NULL,
  `course_img` text COLLATE utf8_bin NOT NULL,
  `course_duration` text COLLATE utf8_bin NOT NULL,
  `course_price` int(11) NOT NULL,
  `course_original_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_desc`, `course_author`, `course_img`, `course_duration`, `course_price`, `course_original_price`) VALUES
(6, 'Learn Guitar in Easy way', 'hye! I am Raj, Wanted to learn guitar to impress your senorita then Enroll.\r\nHeavy discount.', 'Raj', '../image/courseimg/Guitarr.jpg', '30 days', 1599, 3000),
(7, 'Do Yoga in correct way', 'edfed I am dfaj, dfdfnfdar to imdfss your sdfrita then Endfl.\r\nHdfvy discoudft. fdffdfdfdfdf fd', 'Sonam', '../image/courseimg/yoga.jpg', '15 days', 455, 3000),
(8, 'Learn Piano', 'fd! Idfm Rdff Wadfed to dfsfdfar to impdfsdfsdfsdfsfsdfita thensfsdfd\r\nHeafdsfunt.dfgvgds', 'Pablo', '../image/courseimg/piano.jpg', '14 days', 499, 5000),
(9, 'Learn Python from beginning', 'sdfjdsfnsdj fdnfudfnsdufhndfsd uhdfuisdjfdisfjdsofhsdfsdf efgeftgfgdgdfgfdsfg', 'rohan', '../image/courseimg/Python.jpg', '4 month', 300, 4000),
(10, 'Learn C++ from beginning', 'wdfgrg htryht hgfrhfgdfg gfdgdgf fgdgdfgdfg dfgfdgdfgfggfdgdfgdfgfdgfg ggfgdgdgdfgdg', 'Rahul', '../image/courseimg/cplus.jpg', '2 month', 699, 4500),
(11, 'Learn PHP', 'data base jkodfjgvigj igfjig hfhghfh jdhfvgscufghgufhg  dfgdfgdfgfdg gdgdfgggfg fgdg', 'piyush', '../image/courseimg/php.jpg', '1 month', 587, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `courseorder`
--

CREATE TABLE `courseorder` (
  `co_id` int(11) NOT NULL,
  `order_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_email` varchar(255) COLLATE utf8_bin NOT NULL,
  `course_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8_bin NOT NULL,
  `respmsg` text COLLATE utf8_bin NOT NULL,
  `amount` int(11) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `courseorder`
--

INSERT INTO `courseorder` (`co_id`, `order_id`, `stu_email`, `course_id`, `status`, `respmsg`, `amount`, `order_date`) VALUES
(1, 'ORDS22615283', 'Raj@gmail.com', 7, 'Success', 'Done', 455, '2026-03-21'),
(2, 'ORDS98925297', 'Raj@gmail.com', 10, 'Success', 'Done', 699, '2027-03-21'),
(3, 'ORDS78502060', 'Raj@gmail.com', 6, 'Success', 'Done', 1599, '2027-03-21'),
(4, 'ORDS9286658', 'Raj@gmail.com', 8, 'Success', 'Done', 499, '2027-03-21');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `f_content` text COLLATE utf8_bin NOT NULL,
  `stu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `f_content`, `stu_id`) VALUES
(3, 'This is fantastic site to learn and explore', 12),
(6, 'great course and teaching skill is commendable. My son is enjoying the course', 13),
(7, 'khush hogayi aaj...saare concept clear hai ab', 14),
(9, 'loving to learn new skills from the fantastic teachers.', 15),
(10, 'He realises daily that humanity is still alive...through his videos..i mean  seriously no one is teach in paid course with this dedication and he is providing for freee...you are a  hero for many students', 16),
(11, ' the amount of effort you are putting to make us understand is just remarkable. Thanks a lot for making this video....', 12),
(12, 'saw this chapter (pointers) 3 times .\r\n1st time samaj to a gaya but i was not able to do it myself.\r\nsecond time dekhne , aur clear ho gaya and i was able to solve after hints.', 15),
(13, 'You don\'t realise what you are doing. Educational videos like this can change someone\'s life. Amazing work', 17),
(14, 'Me and My Senorita really really grateful to you. I just want to learn it to tell children enjoy the life. Thank you very much! Nice C tutorial! ', 13);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `lesson_id` int(11) NOT NULL,
  `lesson_name` text COLLATE utf8_bin NOT NULL,
  `lesson_desc` text COLLATE utf8_bin NOT NULL,
  `lesson_link` text COLLATE utf8_bin NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_name` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`lesson_id`, `lesson_name`, `lesson_desc`, `lesson_link`, `course_id`, `course_name`) VALUES
(1, 'king byjus', 'king shah rukh khan', '../lessonvid/Best motivational story ( by sandeep maheshwari )_low.mp4', 5, 'srk motigve'),
(2, 'ch-1', 'learn basic how to operate', '../lessonvid/', 6, 'Piano'),
(3, 'ch-2', 'lets start first line', '../lessonvid/', 6, 'Piano'),
(4, 'ch-3', 'lets revise', '../lessonvid/', 6, 'Piano'),
(5, 'ch-1', 'basic start kare', '../lessonvid/', 7, 'Guitar'),
(6, 'ch-2', 'start the first line guitar play', '../lessonvid/', 7, 'Guitar'),
(7, 'ch-3', 'revise guitar', '../lessonvid/', 7, 'Guitar'),
(8, 'ch-1', 'sdddsdsdsdsd', '../lessonvid/', 8, 'Dance'),
(9, 'ch-2', 'sdsdsaddsd', '../lessonvid/', 8, 'Dance'),
(10, 'ch-3', 'sdasdsdsdsdsad', '../lessonvid/', 8, 'Dance'),
(11, 'ch-1', 'dfgdfgfgdfg', '../lessonvid/', 9, 'Learn Python from beginning'),
(12, 'ch-2', 'dfgdfgfdgdf', '../lessonvid/', 9, 'Learn Python from beginning'),
(13, 'ch-1', 'gdfgfgfgdfg', '../lessonvid/', 10, 'Learn C++ from beginning'),
(14, 'ch-2', 'dfgdfgdfgfg', '../lessonvid/', 10, 'Learn C++ from beginning');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stu_id` int(11) NOT NULL,
  `stu_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_email` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_pass` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_occ` varchar(255) COLLATE utf8_bin NOT NULL,
  `stu_img` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_id`, `stu_name`, `stu_email`, `stu_pass`, `stu_occ`, `stu_img`) VALUES
(12, ' Shirley Setia', 'Shirley@gmail.com', 'shirley123', ' Singer', '../image/stu/Shirley-Setia-1.jpg'),
(13, ' Raj Malhotra', 'Raj@gmail.com', 'raj123', ' ', '../image/stu/download (1).jpg'),
(16, ' Rahul Khanna', 'rahul@gmail.com', 'rahul123', ' St. Xavier Popular Student', '../image/stu/shah-rukh-khan-1493195189.jpg'),
(18, ' Gaurav Chandana', 'gaurav@gmail.com', 'gaurav123', 'How to make app.??..jise Train ki ticket mil jaye direct...pichle bday gaya tha Mannat bohot jhol ho gaye the train mai. please make a video on that', '../image/stu/FAN.jpg'),
(19, 'Shivangi Joshi', 'shivangi@gmail.com', 'shivangi790', '', ''),
(20, 'shubham', 'shubham@gmail.com', 'shubham', '', ''),
(21, 'shubham Gupta', 'shubh@gmail.com', 'shubham123', '', ''),
(22, 'shubham Gupta', 'shubh.official.edu@gmail.com', 'shubham790', '', ''),
(23, 's', 'shubh1@gmail.com', 'shubham123', '', ''),
(24, 'ssds', 'shubh2@gmail.com', 'shubham', '', ''),
(25, 'pradeep', 'p@gmail.com', 'p123', '', ''),
(26, 'Raj Aryan', 'rajaryan@gmail.com', 'raj123', '', ''),
(27, 'shubham', 'katrinaji@gmail.com', 'katrina790', '', ''),
(28, 'simran', 'simran@gmail.com', 'simran123', '', ''),
(29, 'jeevan', 'jeevan@gmail.com', 'jeevan123', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `courseorder`
--
ALTER TABLE `courseorder`
  ADD PRIMARY KEY (`co_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`lesson_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `courseorder`
--
ALTER TABLE `courseorder`
  MODIFY `co_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
