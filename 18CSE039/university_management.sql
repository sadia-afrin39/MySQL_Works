-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2019 at 06:08 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `university management`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `C_id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Dept_id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Location` varchar(40) NOT NULL,
  `Facul_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dept offers programs`
--

CREATE TABLE `dept offers programs` (
  `Id` int(11) NOT NULL,
  `Dept_id` int(11) NOT NULL,
  `Prog_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `enrolls`
--

CREATE TABLE `enrolls` (
  `id` int(11) NOT NULL,
  `stu_id` int(11) NOT NULL,
  `C_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `Facul_id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prog contains courses`
--

CREATE TABLE `prog contains courses` (
  `id` int(11) NOT NULL,
  `Prog_id` int(11) NOT NULL,
  `C_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `Prog__id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `Stu_id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Roll_no` int(11) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Phone_no` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teach1`
--

CREATE TABLE `teach1` (
  `id` int(11) NOT NULL,
  `T_id` int(11) NOT NULL,
  `C_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teach2`
--

CREATE TABLE `teach2` (
  `id` int(11) NOT NULL,
  `T_id` int(11) NOT NULL,
  `Stu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `T-id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Phone_no` varchar(15) NOT NULL,
  `Salary` decimal(10,2) NOT NULL,
  `email` varchar(40) NOT NULL,
  `Address` varchar(49) NOT NULL,
  `Dept_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`C_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Dept_id`),
  ADD KEY `Facul_id` (`Facul_id`);

--
-- Indexes for table `dept offers programs`
--
ALTER TABLE `dept offers programs`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Dept_id` (`Dept_id`),
  ADD KEY `Prog_id` (`Prog_id`);

--
-- Indexes for table `enrolls`
--
ALTER TABLE `enrolls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `C_id` (`C_id`),
  ADD KEY `stu_id` (`stu_id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`Facul_id`);

--
-- Indexes for table `prog contains courses`
--
ALTER TABLE `prog contains courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `C_id` (`C_id`),
  ADD KEY `Prog_id` (`Prog_id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`Prog__id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`Stu_id`);

--
-- Indexes for table `teach1`
--
ALTER TABLE `teach1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `T_id` (`T_id`),
  ADD KEY `C_id` (`C_id`);

--
-- Indexes for table `teach2`
--
ALTER TABLE `teach2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Stu_id` (`Stu_id`),
  ADD KEY `T_id` (`T_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`T-id`),
  ADD KEY `Dept_id` (`Dept_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `C_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `Dept_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dept offers programs`
--
ALTER TABLE `dept offers programs`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enrolls`
--
ALTER TABLE `enrolls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `Facul_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prog contains courses`
--
ALTER TABLE `prog contains courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `Prog__id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `Stu_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teach1`
--
ALTER TABLE `teach1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teach2`
--
ALTER TABLE `teach2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `T-id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`Facul_id`) REFERENCES `faculties` (`Facul_id`);

--
-- Constraints for table `dept offers programs`
--
ALTER TABLE `dept offers programs`
  ADD CONSTRAINT `dept offers programs_ibfk_1` FOREIGN KEY (`Dept_id`) REFERENCES `department` (`Dept_id`),
  ADD CONSTRAINT `dept offers programs_ibfk_2` FOREIGN KEY (`Prog_id`) REFERENCES `programs` (`Prog__id`);

--
-- Constraints for table `enrolls`
--
ALTER TABLE `enrolls`
  ADD CONSTRAINT `enrolls_ibfk_1` FOREIGN KEY (`C_id`) REFERENCES `courses` (`C_id`),
  ADD CONSTRAINT `enrolls_ibfk_2` FOREIGN KEY (`stu_id`) REFERENCES `students` (`Stu_id`);

--
-- Constraints for table `prog contains courses`
--
ALTER TABLE `prog contains courses`
  ADD CONSTRAINT `prog contains courses_ibfk_1` FOREIGN KEY (`C_id`) REFERENCES `courses` (`C_id`),
  ADD CONSTRAINT `prog contains courses_ibfk_2` FOREIGN KEY (`Prog_id`) REFERENCES `programs` (`Prog__id`);

--
-- Constraints for table `teach1`
--
ALTER TABLE `teach1`
  ADD CONSTRAINT `teach1_ibfk_1` FOREIGN KEY (`T_id`) REFERENCES `teachers` (`T-id`),
  ADD CONSTRAINT `teach1_ibfk_2` FOREIGN KEY (`C_id`) REFERENCES `courses` (`C_id`);

--
-- Constraints for table `teach2`
--
ALTER TABLE `teach2`
  ADD CONSTRAINT `teach2_ibfk_1` FOREIGN KEY (`Stu_id`) REFERENCES `students` (`Stu_id`),
  ADD CONSTRAINT `teach2_ibfk_2` FOREIGN KEY (`T_id`) REFERENCES `teachers` (`T-id`);

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_ibfk_1` FOREIGN KEY (`Dept_id`) REFERENCES `department` (`Dept_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
