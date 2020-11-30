-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2020 at 12:27 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ams`
--

-- --------------------------------------------------------

--
-- Table structure for table `portals`
--

CREATE TABLE `portals` (
  `id` int(11) NOT NULL,
  `portal_user` varchar(128) NOT NULL,
  `link` varchar(120) NOT NULL,
  `access` int(11) NOT NULL DEFAULT 0,
  `image` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portals`
--

INSERT INTO `portals` (`id`, `portal_user`, `link`, `access`, `image`) VALUES
(1, 'Tech_ADMIN', 'links/TECH_ADMIN/ApplicationMonitoring.html', 0, 'images/appmonitor.jpg'),
(2, 'Tech_ADMIN', 'links/TECH_ADMIN/TechSupport.html', 0, 'images/techsupport.jpg'),
(3, 'Tech_ADMIN', 'links/TECH_ADMIN/AppDevelopment.html', 0, 'images/appdev.jpg'),
(4, 'Tech_ADMIN', 'links/TECH_ADMIN/AppAdmin.html', 0, 'images/appadmin.jpg'),
(5, 'Tech_ADMIN', 'links/TECH_ADMIN/ReleaseManagement.html', 0, 'images/releasemanage.jpg'),
(6, 'ADMIN', 'links/ADMIN/ManageUserAccounts.html', 0, 'images/manageusers.jpg'),
(7, 'ADMIN', 'links/ADMIN/AssignRoles.html', 0, 'images/assignroles.jpg'),
(8, 'ADMIN', 'links/ADMIN/HelpDesk.html', 0, 'images/helpdesk.jpg'),
(9, 'Finance_ADMIN', 'links/FINANCE_ADMIN/FinanceReports.html', 0, 'images/financerep.jpg'),
(10, 'Finance_ADMIN', 'links/FINANCE_ADMIN/AccountsPayable.html', 0, 'images/accountspay.jpg'),
(11, 'Finance_ADMIN', 'links/FINANCE_ADMIN/AccountsReceivable.html', 0, 'images/accountsrec.jpg'),
(12, 'Finance_ADMIN', 'links/FINANCE_ADMIN/Tax.html', 0, 'images/tax.jpg'),
(13, 'Sales_ADMIN', 'links/SALES_ADMIN/SalesReports.html', 0, 'images/salesrep.jpg'),
(14, 'Sales_ADMIN', 'links/SALES_ADMIN/SalesLeads.html', 0, 'images/salesleads.jpg'),
(15, 'Sales_ADMIN', 'links/SALES_ADMIN/SalesDemo.html', 0, 'images/salesdemo.jpg'),
(16, 'HR_ADMIN', 'links/HR_ADMIN/NewHireOn-boarding.html', 0, 'images/newhire.jpg'),
(17, 'HR_ADMIN', 'links/HR_ADMIN/Benefits.html', 0, 'images/benefits.jpg'),
(18, 'HR_ADMIN', 'links/HR_ADMIN/Payroll.html', 0, 'images/payroll.jpg'),
(19, 'HR_ADMIN', 'links/HR_ADMIN/Off-boarding.html', 0, 'images/offboard.jpg'),
(20, 'HR_ADMIN', 'links/HR_ADMIN/HRReports.html', 0, 'images/hrreport.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Username`, `Password`, `Role`) VALUES
('Andrew', '123', 'ADMIN'),
('Steven', '123', 'Hr_ADMIN');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `portals`
--
ALTER TABLE `portals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `portals`
--
ALTER TABLE `portals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
