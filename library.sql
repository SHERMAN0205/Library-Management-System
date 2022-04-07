-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2021 at 01:32 AM
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
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookid` varchar(5) NOT NULL,
  `booktitle` varchar(225) NOT NULL,
  `edition` varchar(100) NOT NULL,
  `publisher` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookid`, `booktitle`, `edition`, `publisher`, `status`) VALUES
('14042', 'sherman', '2', 'kk', 'unavailable'),
('14424', 'v bc', 'bvcb', 'vcbc', 'unavailable'),
('20130', 'df', 'fds', 'fsd', 'available'),
('20243', 'world book', '3', 'sherman', 'available'),
('20410', 'word book ii', '2', 'bricks', 'available'),
('21221', 'dsf', 'fs', 'fsff', 'unavailable'),
('2222', 'surgery of the alimentary tract', '2', 'shackelford', 'available'),
('22410', 'hgh', 'fghfg', 'hfg', 'available'),
('22420', 'world book 2', '2', 'sherman mavhungu', 'available'),
('24013', 'software engineering ', '5', 'tompson', 'available'),
('30234', 'msic ', '1', 'john', 'unavailable'),
('31232', 'world book', '2', 'wiipedia', 'available'),
('31433', 'the book', '5', 'sherman mavhvungu', 'available'),
('32444', 'tshivenda', '8', 'magodi', 'unavailable'),
('33032', 'chemistry', '5', 'alen', 'available'),
('34311', 'english first additonal language', '2', 'phethani', 'available'),
('34443', 'dfgdfg', 'dfgdf', 'gfdg', 'available'),
('40230', 'gfdg', 'dfgdf', 'gdfg', 'available'),
('40443', 'natural science', '4', 'dakalo mavhungu', 'available'),
('42402', 'geography', '1', 'education', 'available'),
('43212', 'history', '1', 'hittler', 'available'),
('44004', 'busness marketing', '3', 'shehrman mavhungu', 'unavailable');

-- --------------------------------------------------------

--
-- Table structure for table `count`
--

CREATE TABLE `count` (
  `count_book` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `count`
--

INSERT INTO `count` (`count_book`) VALUES
(22);

-- --------------------------------------------------------

--
-- Table structure for table `counti`
--

CREATE TABLE `counti` (
  `count_issued` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `counti`
--

INSERT INTO `counti` (`count_issued`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `bookid` varchar(5) NOT NULL,
  `studentid` varchar(8) NOT NULL,
  `studentname` varchar(225) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `booktitle` varchar(225) NOT NULL,
  `issuedate` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`bookid`, `studentid`, `studentname`, `phone`, `booktitle`, `issuedate`) VALUES
('30234', '17006544', 'sherman', '0767660962', 'msic ', 'Jul 21, 2021'),
('32444', '17006544', 'sherman', '0767660962', 'tshivenda', 'Jul 21, 2021'),
('44004', '17006544', 'sherman', '0767660962', 'busness marketing', 'Jul 21, 2021');

-- --------------------------------------------------------

--
-- Table structure for table `returnbook`
--

CREATE TABLE `returnbook` (
  `bookid` varchar(5) NOT NULL,
  `booktitle` varchar(225) NOT NULL,
  `returndate` varchar(225) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `studentname` varchar(225) NOT NULL,
  `studentid` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `returnbook`
--

INSERT INTO `returnbook` (`bookid`, `booktitle`, `returndate`, `phone`, `studentname`, `studentid`) VALUES
('24013', 'software engineering ', 'Jul 22, 2021', '0767660962', 'sherman', '17006544'),
('43212', 'history', 'Jul 22, 2021', '0767660962', 'sherman', '17006544');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `studentid` varchar(8) NOT NULL,
  `name` varchar(225) NOT NULL,
  `surname` varchar(225) NOT NULL,
  `degree` varchar(225) NOT NULL,
  `phonenumber` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`studentid`, `name`, `surname`, `degree`, `phonenumber`) VALUES
('17006544', 'sherman', 'mavhungu', 'computer science', '0767660962');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `email` varchar(225) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `cellno` varchar(10) NOT NULL,
  `securtyq` varchar(225) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `answear` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`email`, `name`, `cellno`, `securtyq`, `password`, `answear`) VALUES
('admin@gmail.com', 'sherman', '0767660962', 'what is your favourate singer', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookid`);

--
-- Indexes for table `count`
--
ALTER TABLE `count`
  ADD PRIMARY KEY (`count_book`);

--
-- Indexes for table `counti`
--
ALTER TABLE `counti`
  ADD PRIMARY KEY (`count_issued`);

--
-- Indexes for table `issue`
--
ALTER TABLE `issue`
  ADD PRIMARY KEY (`bookid`);

--
-- Indexes for table `returnbook`
--
ALTER TABLE `returnbook`
  ADD PRIMARY KEY (`bookid`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`studentid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
