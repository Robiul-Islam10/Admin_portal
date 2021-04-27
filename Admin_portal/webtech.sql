-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2019 at 06:16 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webtech`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `aid` int(1) NOT NULL,
  `us` varchar(65000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`aid`, `us`) VALUES
(0, 'International School is an international and co-educational day school, founded in 1999, that was built to accommodate students from Playgroup to Grade 12. The school provides a high-quality international education for both the local and the international community. We are determined to maintain a high quality of teaching and learning, as well as set the highest standards in everything we do.<br>\r\n\r\nWe are an International Baccalaureate World School offering a well-established, successful and an internationally recognized curriculum for children aged 2-19. This includes the IB Primary Years Programme (PYP), IB Middle Years Programme (MYP) and IB Diploma Programme (DP). Our broad and balanced international curriculum reflects the importance of understanding academic discipline, community service, the performing arts and good health.<br>\r\n\r\nThe school is recognized by the Bangladesh Ministry of Education and is accredited by the Council of International Schools (CIS) and the New England Association of Schools and Colleges (NEASC). We are authorized by the International Baccalaureate Organization (IBO).');

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

CREATE TABLE `admission` (
  `instructions` varchar(65000) NOT NULL,
  `adid` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admission`
--

INSERT INTO `admission` (`instructions`, `adid`) VALUES
('gyudasy saduysyagduy', 0);

-- --------------------------------------------------------

--
-- Table structure for table `assign`
--

CREATE TABLE `assign` (
  `sid` int(4) DEFAULT NULL,
  `cid` int(4) NOT NULL,
  `tid` int(4) DEFAULT NULL,
  `timing` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assign`
--

INSERT INTO `assign` (`sid`, `cid`, `tid`, `timing`) VALUES
(NULL, 1001, 1704, '8-9'),
(1705, 1001, NULL, ''),
(1705, 1002, NULL, ''),
(1705, 1003, NULL, ''),
(1705, 1004, NULL, ''),
(NULL, 1002, 1712, '9-10'),
(1723, 1001, NULL, ''),
(1723, 1002, NULL, ''),
(1723, 1003, NULL, ''),
(1723, 1004, NULL, ''),
(NULL, 1001, 1716, '8-9');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `conid` int(1) NOT NULL,
  `contact` varchar(65000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`conid`, `contact`) VALUES
(0, 'House#10, Road#06, Gulshan-1, Dhaka-1212<br>\r\nPhone= 019999999');

-- --------------------------------------------------------

--
-- Table structure for table `deleterequest`
--

CREATE TABLE `deleterequest` (
  `tid` int(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deleterequest`
--

INSERT INTO `deleterequest` (`tid`, `sid`) VALUES
(1704, NULL),
(NULL, 1705),
(1709, NULL),
(NULL, 1711);

-- --------------------------------------------------------

--
-- Table structure for table `featured`
--

CREATE TABLE `featured` (
  `serial` int(1) NOT NULL,
  `tid` int(4) NOT NULL,
  `quote` varchar(60000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `featured`
--

INSERT INTO `featured` (`serial`, `tid`, `quote`) VALUES
(1, 1710, 'dtrftff ytf yt'),
(2, 1709, 'Do not run after marks, learn and enrich yourselves');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `grade` int(1) NOT NULL,
  `amount` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`grade`, `amount`) VALUES
(1, 100),
(2, 2000),
(3, 3000),
(4, 4000),
(5, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `issuefine`
--

CREATE TABLE `issuefine` (
  `tid` int(4) NOT NULL,
  `sid` int(4) NOT NULL,
  `amount` int(4) DEFAULT NULL,
  `ground` varchar(20) DEFAULT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issuefine`
--

INSERT INTO `issuefine` (`tid`, `sid`, `amount`, `ground`, `status`) VALUES
(1705, 1709, 100, 'Late Payment', 1),
(1705, 1719, 100, 'Late Payment', 1);

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `book_id` int(2) NOT NULL,
  `book_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`book_id`, `book_name`) VALUES
(1, 'Kangaroo'),
(2, 'Shaap'),
(3, 'Munshi'),
(4, 'hip millennials fash'),
(5, 'Gigi Hadid');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `pid` int(4) NOT NULL,
  `isRespond` int(1) NOT NULL,
  `msg` varchar(10000) NOT NULL,
  `response` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`pid`, `isRespond`, `msg`, `response`) VALUES
(1709, 1, 'uygug uygu y ygug', 'Thank you for your feedback, We will look into the issue'),
(1719, 0, 'bbbb bbbb bbbb', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `noid` int(4) NOT NULL,
  `type` varchar(2) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `status` varchar(2) NOT NULL,
  `date/time` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`noid`, `type`, `title`, `content`, `status`, `date/time`) VALUES
(1, 'a', 'Check', 'check check check', 'c', 'NULL'),
(2, 'a', 'Extra Class', 'Extra class has been scheduled on 28.08.2018', 'c', 'NULL'),
(3, 'a', 'Class suspended', 'All classes of today, 16.08.2019 has been suspended due to heavy rain', 'c', 'NULL'),
(4, 'e', 'Yearly Cultural Day', 'Yearly cultural Day will be held on 12.12.2019', 'c', '12 12 2019'),
(5, 'a', 'No ID, No Entry', 'All students and teachers are requested to show their ID while entering the campus. No ID, no entry policies will be followed strictly.', 'c', 'NULL'),
(6, 'e', 'Yearly sports day', 'Yearly sports day will be held on 30. 08. 2019', 'c', '30 08 2019'),
(7, 'a', 'new notice', 'dabsadu asdsd', 'c', 'NULL'),
(8, 'e', 'new event', 'jnasdhiusand', 'c', '12 12 2019');

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `pid` int(4) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `child` int(4) NOT NULL,
  `nid` varchar(11) NOT NULL,
  `contact` varchar(11) NOT NULL,
  `pphoto` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`pid`, `pname`, `child`, `nid`, `contact`, `pphoto`) VALUES
(1707, 'par2', 1705, '34123213', '199999', '../upload/1707.jpg'),
(1717, 'fp', 1715, '34123213', '199999', '../upload/1717.jpg'),
(1720, 'final', 1719, '34123213', '199999', '../upload/1720.jpg'),
(1724, 'par', 1723, '34123213', '199999', '../upload/1724.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

CREATE TABLE `pictures` (
  `serial` int(1) NOT NULL,
  `filepath` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pictures`
--

INSERT INTO `pictures` (`serial`, `filepath`) VALUES
(1, '../upload/1.jpg'),
(2, '../upload/2.jpg'),
(3, '../upload/3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sid` int(4) NOT NULL,
  `sname` varchar(20) NOT NULL,
  `sgender` varchar(11) NOT NULL,
  `sclass` int(1) NOT NULL,
  `sphoto` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sid`, `sname`, `sgender`, `sclass`, `sphoto`) VALUES
(1705, 'hvjvjh', 'Male', 1, '../upload/1705.jpg'),
(1711, 'rafi', 'Male', 2, '../upload/1711.jpg'),
(1715, 'ft', 'Male', 3, '../upload/1715.jpg'),
(1718, 'raf', 'Female', 1, '../upload/1718.jpg'),
(1719, 'Finalstu', 'Male', 2, '../upload/1719.jpg'),
(1722, 'sadsa', 'Male', 3, '../upload/1722.jpg'),
(1723, 'sadsa', 'Male', 2, '../upload/1723.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `tid` int(4) NOT NULL,
  `tname` varchar(20) NOT NULL,
  `tcontact` varchar(11) NOT NULL,
  `tgender` varchar(11) NOT NULL,
  `education` varchar(30) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `tphoto` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`tid`, `tname`, `tcontact`, `tgender`, `education`, `subject`, `tphoto`) VALUES
(1704, 'teachdsdad', '199999', 'Male', 'Bachelors', 'Bangla', '../upload/1704.jpg'),
(1709, 'teach1', '199999', 'Male', 'Bachelors', 'Bangla', '../upload/1709.jpg'),
(1710, 'teach2', '199999', 'Male', 'Bachelors', 'English', '../upload/1710.jpg'),
(1712, 'buhvb', '199999', 'Male', 'Bachelors', 'English', '../upload/1712.jpg'),
(1716, 'ft11', '199999', 'Male', 'Bachelors', 'Bangla', '../upload/1716.jpg'),
(1721, 'final', '199999', 'Female', 'Bachelors', 'Mathematics', '../upload/1721.jpg'),
(1725, 'sdad', '0199999', 'Male', 'Bachelors', 'English', '../upload/1725.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(4) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` int(4) NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `type`) VALUES
(1701, 'admin1', 1234, 1),
(1704, 'teach', 1234, 3),
(1705, 'raf', 1234, 2),
(1707, 'par', 12345, 4),
(1709, 'teach1', 1234, 3),
(1710, 'teach2', 1234, 3),
(1711, 'eeed', 1234, 2),
(1712, 'buhvb', 1234, 3),
(1715, 'ft', 1234, 2),
(1716, 'ft11', 1234, 3),
(1717, 'fp', 1234, 4),
(1718, 'raf', 1234, 2),
(1719, 'Finalstu', 1234, 2),
(1720, 'final par', 1234, 4),
(1721, 'final teach', 1234, 3),
(1722, 'sadsa', 1234, 2),
(1723, 'sadsa', 1234, 2),
(1724, 'par', 1234, 4),
(1725, 'sdad', 1234, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`noid`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `noid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
