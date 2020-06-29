-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 29, 2020 at 03:51 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `Status`, `PostingDate`, `ToDate`, `message`) VALUES
(10, 'axq0267@gmail.com', 9, '06/28/2020', 0, '2020-06-29 01:20:34', NULL, '6:30pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(2, 'BMW', '2020-06-27 16:24:50', '2020-06-28 01:22:31'),
(3, 'Audi', '2020-06-27 16:25:03', '2020-06-28 01:22:56'),
(4, 'Nissan', '2020-06-27 16:25:13', '2020-06-28 01:23:17'),
(5, 'Toyota', '2020-06-27 16:25:24', '2020-06-28 01:23:38'),
(8, 'Ford', '2020-06-28 17:19:07', '2020-06-28 12:19:18');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, '200-Carpenter Street, Warrensburg, MO																							', 'axq0267@gmail.com', '6602235795');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(2, 'Ahmed Ali', 'axq0267@gmail.com', '6602235795', 'Hi, I need some information. Can you guys contact me soon please. Thanks', '2020-06-28 00:53:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <A href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</A>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>'),
(3, 'About Us ', 'aboutus', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Saphura Long, a member of Long Automotive of Chattanooga has acquired the previously known Don Ledford AutoPark of Athens. Saphura is an entrepreneur who has for many years owned technology companies which have served the automotive industry. For that matter her present company Gratis Technologies, serves many dealerships across the nation in the realm of customer management. Saphura believes that all successful companies have one thing primarily in common, and that is to value customers most of all and to assure their experience at the dealership exceeds their expectations. Saphura, the wife of Nelson Long of Long Automotive of Chattanooga is an engineer by education and has a masters in Nuclear Physics. And, upon moving to Chattanooga her first position was that of a research engineer at Combustion Engineering.\r\n\r\nSaphura believes that being active in one\'s community is a matter of paying one\'s \"community dues\". In doing so she has served on numerous boards. Some of those positions are past chairman of the Advocacy Public Affairs of Junior League of Chattanooga, where she and her team successfully advocated for instating the seat belt law in the state of Tennessee.\r\n\r\nLong Chevrolet Buick GMC of Athens, would like to be a place where both co-workers and customers feel like they belong. We realize that there are many long-term dealership customers who would like to work with us and we are honored for that and will do all that we can to earn and retain their trust.\r\n\r\nWe are a new company, yes, we have retained some of the great \"old employees\" that fit our philosophy of proper and fair treatment of customers. But most of us are new and we have a new attitude and a new agenda and that is to earn the trust of this community and to serve them in their automotive needs second to none. Please come see us, have a cup of coffee with us and let us introduce ourselves.</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(5, 'Ahmed Ali', 'axq0267@gmail.com', '537c72867430a0e770c81dd8091315f7', '6602235795', NULL, NULL, NULL, NULL, '2020-06-27 22:33:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, '5 Series', 2, 'For decades, the 5 Series has been a standard-bearer for midsize sport luxury sedans. But as cars have gotten bigger, heavier and packed with more technology, there\'s been pressure to provide more efficiency, more comfort and more performance all at the same time. It\'s fair to say the BMW 5 Series\' talents have been stretched a bit thin by the pressure of meeting so many different demands.\r\n\r\n', 53900, 'Gasoline', 2020, 5, 'featured-img-9.jpg', NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-06-29 00:43:06', '2020-06-29 00:46:28'),
(6, 'Mustang', 8, 'Exterior:\r\nAutolamp Fully Automatic Projector Beam Led Low/High Beam Daytime Running Headlamps w/Delay-Off\r\nBlack Grille\r\nBlack Side Windows Trim\r\nBody-Colored Door Handles\r\nBody-Colored Front Bumper\r\nBody-Colored Power Side Mirrors w/Convex Spotter and Manual Folding\r\nBody-Colored Rear Bumper\r\nClearcoat Paint\r\nFixed Rear Window w/Defroster\r\nGalvanized Steel/Aluminum Panels\r\nLED Brakelights\r\nLight Tinted Glass\r\nPerimeter/Approach Lights\r\nSpare Tire Mobility Kit\r\nSpeed Sensitive Variable Intermittent Wipers\r\nTires: P235/55R17 BSW AS\r\nTrunk Rear Cargo Access\r\nWheels w/Locks\r\nWheels: 17\" Sparkle Silver-Painted Aluminum\r\n\r\nInterior:\r\n2 12V DC Power Outlets\r\n2 LCD Monitors In The Front\r\n4-Way Passenger Seat -inc: Manual Rear Seat Easy Entry\r\n50-50 Folding Bench Front Facing Fold Forward Seatback Cloth Rear Seat\r\n6-Way Driver Seat\r\nAdjustable Rear Head Restraints\r\nAir Filtration\r\nAnalog Display\r\nCargo Features -inc: Spare Tire Mobility Kit\r\nCargo Space Lights\r\nCarpet Floor Trim and Carpet Trunk Lid/Rear Cargo Door Trim\r\nCloth Bucket Seats -inc: 4-way manual driver and 2-way manual passenger, driver memory recline and 4-way adjustable front head restraints\r\nCompass\r\nCruise Control w/Steering Wheel Controls\r\nDay-Night Auto-Dimming Rearview Mirror\r\nDelayed Accessory Power\r\nDriver And Passenger Door Bins\r\nDriver And Passenger Visor Vanity Mirrors w/Driver And Passenger Illumination\r\nDriver Foot Rest\r\nFade-To-Off Interior Lighting\r\nFixed Antenna\r\nFixed Rear Windows\r\nFront Center Armrest\r\nFront Cupholder\r\nFront Map Lights\r\nFull Carpet Floor Covering -inc: Carpet Front Floor Mats\r\nFull Cloth Headliner\r\nFull Floor Console w/Covered Storage, Mini Overhead Console w/Storage and 2 12V DC Power Outlets\r\nIlluminated Locking Glove Box\r\nInterior Trim -inc: Simulated Carbon Fiber Instrument Panel Insert and Chrome Interior Accents\r\nLeather/Aluminum Gear Shifter Material', 35000, '2.3L EcoBoost® Engine', 2020, 4, 'featured-img-4.jpg', NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, '2020-06-28 17:23:12', '2020-06-28 18:31:43'),
(7, 'Fusion', 8, 'Rotary Gear Shift Dial\r\nFloor Mats (1st Row)\r\nFront Center Console with Fixed Armrest and Two Cupholders\r\nRear Center Armrest with Two Cupholders\r\nIntegrated Front Door Storage\r\nPower Door Locks\r\nIntermittent/Speed Sensitive Wipers\r\nRain-Sensing Wipers\r\nBLIS® (Blind Spot Information System) with Cross-Traffic Alert\r\nLane-Keeping System\r\nHill Start Assist\r\nRemote Decklid Release\r\nDual Illuminated Visor Mirrors\r\nDome Lamp and Map Lights', 32000, 'Gasoline', 2020, 5, 'featured-img-5.jpg', NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, '2020-06-29 00:07:24', '2020-06-29 00:18:17'),
(8, 'A4 Sedan', 3, 'The design of the Audi A4 Sedan delivers more than a powerful response—it shows your deep desire to give intelligence a smart look.\r\n\r\n', 34700, 'Gasoline', 2020, 5, 'featured-img-6.jpg', NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-06-29 00:16:54', '2020-06-29 00:17:48'),
(9, 'Q3 Sportback, Jaguar XE SV', 3, 'The new Audi Q3 Sportback is the sleeker \"coupe\" version of the regular Q3. It has a lower roofline with a raked rear hatch and is around half an inch longer than the standard Q3.', 34700, 'Gasoline', 2020, 5, 'featured-img-7.jpg', NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-06-29 00:23:32', '2020-06-29 01:46:40'),
(10, '3 Series', 2, 'An exceptional 2.0-liter four-cylinder engine powers the 2020 BMW 330i. It\'s remarkably smooth, fitted with a single turbocharger, and it makes 255 horsepower. ... Instead, every 2020 BMW 3-series gets an eight-speed automatic transmission with Sport mode as well as Manual mode.', 40750, 'Gasoline', 2020, 5, 'featured-img-8.jpg', NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-06-29 00:31:32', '2020-06-29 01:40:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
