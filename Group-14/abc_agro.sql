-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2024 at 06:56 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abc_agro`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_t`
--

CREATE TABLE `customer_t` (
  `CustomerID` varchar(20) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Location` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_progress_t`
--

CREATE TABLE `delivery_progress_t` (
  `PackagingID` varchar(20) NOT NULL,
  `LotID` varchar(20) NOT NULL,
  `LotName` varchar(50) NOT NULL,
  `Source` varchar(100) NOT NULL,
  `Destination` varchar(100) NOT NULL,
  `PackagingUnit` varchar(100) NOT NULL,
  `DeliveryStatus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_progress_t`
--

INSERT INTO `delivery_progress_t` (`PackagingID`, `LotID`, `LotName`, `Source`, `Destination`, `PackagingUnit`, `DeliveryStatus`) VALUES
('P001', 'L0001', 'Himshagor1', 'Chapai Nawabgonj', 'Shwapno, Bashundhara R/A, Dhaka', 'Talaimari, Rajshahi', 'Being shipped.'),
('P002', 'L0002', 'Fazli1', 'Rohonpur, Rajshahi', 'Agora, Mirpur-12, Dhaka', 'Bonpara, Natore', 'Packaging On Progress');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_t`
--

CREATE TABLE `delivery_t` (
  `DeliveryID` varchar(20) NOT NULL,
  `Barcode` varchar(20) NOT NULL,
  `CustomerID` varchar(20) NOT NULL,
  `SupplierID` varchar(20) NOT NULL,
  `DriverID` varchar(20) NOT NULL,
  `DeliveryStatus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_t`
--

CREATE TABLE `driver_t` (
  `DriverID` varchar(20) NOT NULL,
  `FName` varchar(50) NOT NULL,
  `LName` varchar(50) NOT NULL,
  `AreaName` varchar(50) NOT NULL,
  `District` varchar(50) NOT NULL,
  `Division` varchar(20) DEFAULT NULL,
  `ContactNumber` varchar(15) NOT NULL,
  `VehicleID` varchar(20) DEFAULT NULL,
  `DeliveryID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `driver_t`
--

INSERT INTO `driver_t` (`DriverID`, `FName`, `LName`, `AreaName`, `District`, `Division`, `ContactNumber`, `VehicleID`, `DeliveryID`) VALUES
('1234567', 'Nahian', 'Noureen', 'Bashundhara R/A', 'Dhaka', NULL, '1234567890', 'DHK Metro-BA 14-7776', NULL),
('D12345', 'Nishat', 'Noureen', 'Mirpur 14', 'Dhaka', 'Dhaka', '0123456789', NULL, NULL),
('D12348', 'Habibullah', 'Sirat', 'Bashundhara R/A', 'Dhaka', 'Dhaka', '0117894662', NULL, NULL),
('D7890', 'Nishat', 'Noureen', 'Pabna Sadar', 'Pabna', 'Rajshahi', '123456789', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `farmer_t`
--

CREATE TABLE `farmer_t` (
  `FarmerID` varchar(20) NOT NULL,
  `FName` varchar(50) DEFAULT NULL,
  `LName` varchar(50) DEFAULT NULL,
  `AreaName` varchar(50) DEFAULT NULL,
  `District` varchar(50) DEFAULT NULL,
  `Division` varchar(20) DEFAULT NULL,
  `ContactNumber` varchar(15) DEFAULT NULL,
  `FarmID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `farmer_t`
--

INSERT INTO `farmer_t` (`FarmerID`, `FName`, `LName`, `AreaName`, `District`, `Division`, `ContactNumber`, `FarmID`) VALUES
('1122334', 'Nahian', 'Noureen', 'Bashundhara R/A', 'Dhaka', 'Dhaka', '1234567890', NULL),
('F12347', 'Nishat', 'Noureen', 'Mirpur 14', 'Dhaka', 'Dhaka012345678901', NULL, NULL),
('F12348', 'Nishat', 'Noureen', 'Mirpur 14', 'Dhaka', 'Dhaka0123456789', 'NULL', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `farm_t`
--

CREATE TABLE `farm_t` (
  `FarmID` varchar(20) NOT NULL,
  `FarmName` varchar(50) DEFAULT NULL,
  `AreaName` varchar(50) DEFAULT NULL,
  `District` varchar(50) DEFAULT NULL,
  `AreaSize` varchar(15) DEFAULT NULL,
  `FarmerID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `farm_t`
--

INSERT INTO `farm_t` (`FarmID`, `FarmName`, `AreaName`, `District`, `AreaSize`, `FarmerID`) VALUES
('234567', 'BCD Farm', 'Pabna Sadar', 'Pabna', '1800', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `field_officer_t`
--

CREATE TABLE `field_officer_t` (
  `FEmployeeID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `government_staff_certificate_t`
--

CREATE TABLE `government_staff_certificate_t` (
  `EmployeeID` varchar(20) NOT NULL,
  `CertificateName` varchar(50) DEFAULT NULL,
  `CertifyingInstitute` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `government_staff_t`
--

CREATE TABLE `government_staff_t` (
  `EmployeeID` varchar(20) NOT NULL,
  `EmployeeName` varchar(50) DEFAULT NULL,
  `WorkingLocation` varchar(50) DEFAULT NULL,
  `EmployeeType` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `government_staff_t`
--

INSERT INTO `government_staff_t` (`EmployeeID`, `EmployeeName`, `WorkingLocation`, `EmployeeType`) VALUES
('199719981278', 'Sadia', '', 'Nutritionist'),
('19997625513000008', 'Sadia', '', 'Nutritionist'),
('19997625513000009', 'Sadia', '', 'Grading Unit Manager');

-- --------------------------------------------------------

--
-- Table structure for table `graded_crop_t`
--

CREATE TABLE `graded_crop_t` (
  `GradeID` int(4) NOT NULL,
  `CropName` varchar(50) NOT NULL,
  `WarehouseName` varchar(50) NOT NULL,
  `CropType` varchar(50) NOT NULL,
  `Grade` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `graded_crop_t`
--

INSERT INTO `graded_crop_t` (`GradeID`, `CropName`, `WarehouseName`, `CropType`, `Grade`) VALUES
(1, 'mango', 'Chittagong', 'Fruits', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `grading_criteria_t`
--

CREATE TABLE `grading_criteria_t` (
  `Type` varchar(30) NOT NULL,
  `Grade` varchar(20) NOT NULL,
  `Criteria` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grading_criteria_t`
--

INSERT INTO `grading_criteria_t` (`Type`, `Grade`, `Criteria`) VALUES
('Cash Crops', 'A', 'Long staple length, uniform fiber, and no discoloration.'),
('Cash Crops', 'B', 'Slight discoloration or minor fiber uniformity issues.'),
('Cash Crops', 'C', 'Short staple length or more pronounced discoloration.'),
('Fruits', 'A', 'Uniform size, free from blemishes, bright color typical of the variety, and no signs of pest damage.'),
('Fruits', 'B', 'Slight size or color variations, minor blemishes, but no major defects.'),
('Fruits', 'C', 'Noticeable blemishes, minor deformities, or slight pest damage.'),
('Grains', 'A', 'Large, uniform size, free from broken grains, foreign matter less than 0.5%, and moisture content below 12%.'),
('Grains', 'B', 'Medium-sized grains with minimal broken grains and foreign matter under 1%.'),
('Grains', 'C', 'May have up to 3% foreign matter and higher broken grain percentage (5–10%).'),
('Oilseeds', 'A', 'Clean, uniform size, free from foreign matter, moisture content < 8%.'),
('Oilseeds', 'B', 'Up to 1% foreign matter and minor size differences.'),
('Oilseeds', 'C', '2–3% foreign matter and irregular sizes.'),
('Pulses', 'A', 'Uniform size and color, no splits or foreign matter, moisture content below 10%.'),
('Pulses', 'B', 'Minor color or size differences, small percentage (2%) of splits.'),
('Pulses', 'C', 'More significant variations and higher foreign matter (5%).'),
('Vegetables', 'A', 'Firm, uniformly shaped, free from cuts, bruises, or decay.'),
('Vegetables', 'B', 'Slight size or shape variations, minor surface cuts, or scars.'),
('Vegetables', 'C', 'Irregular shape, minor bruising, or some discoloration.');

-- --------------------------------------------------------

--
-- Table structure for table `harvest_lot_t`
--

CREATE TABLE `harvest_lot_t` (
  `LotID` varchar(20) NOT NULL,
  `LotName` varchar(50) DEFAULT NULL,
  `Quantity` varchar(50) DEFAULT NULL,
  `HarvestDate` date DEFAULT curdate(),
  `SnowingDate` date DEFAULT curdate(),
  `GrowthStage` varchar(20) DEFAULT NULL,
  `PestAndDiseasePresence` varchar(50) DEFAULT NULL,
  `Fibre` varchar(20) DEFAULT NULL,
  `Sugar` varchar(20) DEFAULT NULL,
  `Carbohydrate` varchar(20) DEFAULT NULL,
  `Protein` varchar(20) DEFAULT NULL,
  `Fat` varchar(20) DEFAULT NULL,
  `Moisture` varchar(20) DEFAULT NULL,
  `Ripeness` varchar(20) DEFAULT NULL,
  `FarmID` varchar(20) DEFAULT NULL,
  `ProductID` varchar(20) DEFAULT NULL,
  `NutrionistID` varchar(20) DEFAULT NULL,
  `FieldOfficerID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `non_perishable_t`
--

CREATE TABLE `non_perishable_t` (
  `NProductID` varchar(20) NOT NULL,
  `Temperature` varchar(5) DEFAULT NULL,
  `Humidity` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nutrionist_t`
--

CREATE TABLE `nutrionist_t` (
  `NEmployeeID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packaged_batch_t`
--

CREATE TABLE `packaged_batch_t` (
  `Barcode` varchar(20) NOT NULL,
  `PackagingIntegrity` varchar(20) DEFAULT NULL,
  `Quantity` varchar(20) DEFAULT NULL,
  `FieldOfficerID` varchar(20) DEFAULT NULL,
  `RegistrationNumber` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packaging_unit_t`
--

CREATE TABLE `packaging_unit_t` (
  `RegistrationNumber` varchar(20) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `AreaName` varchar(50) DEFAULT NULL,
  `District` varchar(50) DEFAULT NULL,
  `Capacity` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `perishable_t`
--

CREATE TABLE `perishable_t` (
  `PProductID` varchar(20) NOT NULL,
  `harvest_season` varchar(30) DEFAULT NULL,
  `ExpiryDate` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `problem_areas_t`
--

CREATE TABLE `problem_areas_t` (
  `ProblemID` bigint(10) NOT NULL,
  `ProductID` varchar(20) NOT NULL,
  `CropName` varchar(50) NOT NULL,
  `Problem` varchar(200) NOT NULL,
  `Year` varchar(10) DEFAULT NULL,
  `Quantity` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `problem_areas_t`
--

INSERT INTO `problem_areas_t` (`ProblemID`, `ProductID`, `CropName`, `Problem`, `Year`, `Quantity`) VALUES
(1, 'P0001', 'Mango', 'Heavy rainfall', '2022', '100'),
(2, 'P0002', 'Rice', 'Maintenance problem', '2023', '300'),
(3, 'P0044', 'Mango', 'Heavy rainfall', '2023', '1200'),
(4, 'P0005', 'Mango', 'Insect attack', '2022', '800'),
(5, 'P0006', 'Mango', 'Overdose of pesticide', '2021', '600'),
(6, 'P0007', 'Banana', 'Heavy rainfall', '2023', '1500'),
(7, 'P0008', 'Banana', 'Maintenance problem', '2022', '900'),
(8, 'P0009', 'Banana', 'Drought', '2021', '1200'),
(9, 'P00010', 'Litchi', 'Insect attack', '2023', '400'),
(10, 'P00011', 'Litchi', 'Heavy rainfall', '2022', '700'),
(11, 'P00012', 'Litchi', 'Drought', '2021', '500'),
(12, 'P00013', 'Guava', 'Overdose of pesticide', '2023', '300'),
(13, 'P00014', 'Guava', 'Insect attack', '2022', '450'),
(14, 'P00015', 'Guava', 'Heavy rainfall', '2021', '800'),
(15, 'P00016', 'Potato', 'Flooding', '2023', '2000'),
(16, 'P00017', 'Potato', 'Maintenance problem', '2022', '1200'),
(17, 'P00018', 'Potato', 'Drought', '2021', '1500'),
(18, 'P00019', 'Tomato', 'Heavy rainfall', '2023', '1100'),
(19, 'P0020', 'Tomato', 'Overdose of pesticide', '2022', '800'),
(20, 'P0021', 'Tomato', 'Insect attack', '2021', '1000'),
(21, 'P0022', 'Brinjal', 'Heavy rainfall', '2023', '500'),
(22, 'P0023', 'Brinjal', 'Maintenance problem', '2022', '400'),
(23, 'P0024', 'Brinjal', 'Drought', '2021', '300'),
(24, 'P0025', 'Pumpkin', 'Flooding', '2023', '1800'),
(25, 'P0026', 'Pumpkin', 'Insect attack', '2022', '1000'),
(26, 'P0027', 'Pumpkin', 'Heavy rainfall', '2021', '1200'),
(27, 'P0028', 'Cucumber', 'Heavy rainfall', '2023', '800'),
(28, 'P0029', 'Cucumber', 'Drought', '2022', '600'),
(29, 'P0030', 'Cucumber', 'Overdose of pesticide', '2021', '700'),
(30, 'P0031', 'Watermelon', 'Flooding', '2023', '1500'),
(31, 'P0032', 'Watermelon', 'Heavy rainfall', '2022', '1200'),
(32, 'P0033', 'Watermelon', 'Insect attack', '2021', '1000'),
(33, 'P0034', 'Jackfruit', 'Heavy rainfall', '2023', '2000'),
(34, 'P0035', 'Jackfruit', 'Maintenance problem', '2022', '1800'),
(35, 'P0036', 'Jackfruit', 'Insect attack', '2021', '1200'),
(36, 'P0037', 'Green Chili', 'Drought', '2023', '500'),
(37, 'P0038', 'Green Chili', 'Heavy rainfall', '2022', '800'),
(38, 'P0039', 'Green Chili', 'Overdose of pesticide', '2021', '400'),
(39, 'P0040', 'Cabbage', 'Overdose of pesticide', '2023', '1000'),
(40, 'P0050', 'Papaya', 'Heavy rainfall', '2023', '1000'),
(41, 'P0051', 'Papaya', 'Drought', '2022', '800'),
(42, 'P0052', 'Papaya', 'Overdose of pesticide', '2021', '500'),
(43, 'P0053', 'Jute', 'Flooding', '2023', '2500'),
(44, 'P0054', 'Jute', 'Insect attack', '2022', '1800'),
(45, 'P0055', 'Jute', 'Heavy rainfall', '2021', '2000'),
(46, 'P0056', 'Mustard', 'Drought', '2023', '1200'),
(47, 'P0057', 'Mustard', 'Heavy rainfall', '2022', '900'),
(48, 'P0058', 'Mustard', 'Overdose of pesticide', '2021', '700'),
(49, 'P0059', 'Bitter Gourd', 'Heavy rainfall', '2023', '600'),
(50, 'P0060', 'Bitter Gourd', 'Insect attack', '2022', '400'),
(51, 'P0061', 'Bitter Gourd', 'Maintenance problem', '2021', '300'),
(52, 'P0062', 'Bottle Gourd', 'Heavy rainfall', '2023', '700'),
(53, 'P0063', 'Bottle Gourd', 'Drought', '2022', '600'),
(54, 'P0064', 'Bottle Gourd', 'Flooding', '2021', '800'),
(55, 'P0065', 'Coriander', 'Heavy rainfall', '2023', '200'),
(56, 'P0066', 'Coriander', 'Drought', '2022', '150'),
(57, 'P0067', 'Coriander', 'Insect attack', '2021', '120'),
(58, 'P0068', 'Turmeric', 'Flooding', '2023', '1800'),
(59, 'P0069', 'Turmeric', 'Heavy rainfall', '2022', '1200'),
(60, 'P0070', 'Turmeric', 'Overdose of pesticide', '2021', '1000'),
(61, 'P0071', 'Garlic', 'Heavy rainfall', '2023', '1500'),
(62, 'P0072', 'Garlic', 'Drought', '2022', '1200'),
(63, 'P0073', 'Garlic', 'Maintenance problem', '2021', '1000'),
(64, 'P0074', 'Lentil', 'Flooding', '2023', '1200'),
(65, 'P0075', 'Lentil', 'Drought', '2022', '900'),
(66, 'P0076', 'Lentil', 'Insect attack', '2021', '800'),
(67, 'P0077', 'Peas', 'Heavy rainfall', '2023', '1100'),
(68, 'P0078', 'Peas', 'Overdose of pesticide', '2022', '900'),
(69, 'P0079', 'Peas', 'Drought', '2021', '700'),
(70, 'P0080', 'Radish', 'Heavy rainfall', '2023', '1200'),
(71, 'P0081', 'Radish', 'Maintenance problem', '2022', '900'),
(72, 'P0082', 'Radish', 'Insect attack', '2021', '800'),
(73, 'P0083', 'Sesame', 'Drought', '2023', '1000'),
(74, 'P0084', 'Sesame', 'Flooding', '2022', '1200'),
(75, 'P0085', 'Sesame', 'Heavy rainfall', '2021', '900'),
(76, 'P0086', 'Sweet Pumpkin', 'Overdose of pesticide', '2023', '');

-- --------------------------------------------------------

--
-- Table structure for table `produce_t`
--

CREATE TABLE `produce_t` (
  `ProductID` varchar(20) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `SpecialName` varchar(50) DEFAULT NULL,
  `ProduceType` varchar(50) DEFAULT NULL,
  `EntryDate` datetime DEFAULT curdate(),
  `FarmerID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produce_t`
--

INSERT INTO `produce_t` (`ProductID`, `Name`, `SpecialName`, `ProduceType`, `EntryDate`, `FarmerID`) VALUES
('F41941', 'mango', 'himsagor', 'Fruits', '2024-12-20 00:00:00', '1122334'),
('F50640', 'Mango', 'Himshagor', 'Fruits', '2024-12-10 00:00:00', '1122334');

-- --------------------------------------------------------

--
-- Table structure for table `quality_reports_t`
--

CREATE TABLE `quality_reports_t` (
  `LotID` varchar(20) NOT NULL,
  `LotName` varchar(50) NOT NULL,
  `Quantity` varchar(30) NOT NULL,
  `CropName` varchar(50) NOT NULL,
  `Grade` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quality_reports_t`
--

INSERT INTO `quality_reports_t` (`LotID`, `LotName`, `Quantity`, `CropName`, `Grade`) VALUES
('L0001', 'Himashagor1', '5 Ton', 'Mango', 'A'),
('L0002', 'Fazli1', '6 Ton', 'Mango', 'B'),
('L0003', 'Rice1', '10 Ton', 'Rice', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_t`
--

CREATE TABLE `supplier_t` (
  `SupplierID` varchar(20) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `AreaName` varchar(50) DEFAULT NULL,
  `District` varchar(20) DEFAULT NULL,
  `Division` varchar(20) DEFAULT NULL,
  `GradeRequirement` varchar(50) DEFAULT 'Not Yet Graded'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier_t`
--

INSERT INTO `supplier_t` (`SupplierID`, `Name`, `AreaName`, `District`, `Division`, `GradeRequirement`) VALUES
('3344556', 'Nahian Noureen', 'Bashundhara R/A', 'Dhaka', NULL, ''),
('S12345', 'Subaitah Noureen', 'Bashundhara R/A', 'Dhaka', 'Dhaka', '0123456789'),
('S12346', 'Subaitah Nishat', 'Bashundhara R/A', 'Dhaka', 'Dhaka', '0117894662');

-- --------------------------------------------------------

--
-- Table structure for table `tracking_product_t`
--

CREATE TABLE `tracking_product_t` (
  `LotID` varchar(20) NOT NULL,
  `LotName` varchar(50) NOT NULL,
  `StorageLocation` varchar(50) DEFAULT NULL,
  `StorageLatitude` varchar(50) NOT NULL,
  `StorageLongitude` varchar(50) NOT NULL,
  `Destination` varchar(50) DEFAULT NULL,
  `DestinationLatitude` varchar(50) NOT NULL,
  `DestinationLongitude` varchar(50) NOT NULL,
  `Quantity` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tracking_product_t`
--

INSERT INTO `tracking_product_t` (`LotID`, `LotName`, `StorageLocation`, `StorageLatitude`, `StorageLongitude`, `Destination`, `DestinationLatitude`, `DestinationLongitude`, `Quantity`) VALUES
('L0001', 'Himashagor1', 'Rajshahi', '24.363365', '88.588698', 'Dhaka', '23.815631', '90.427676', '5 Ton'),
('L0002', 'Fazli1', 'Rajshahi', '24.363365', '88.588698', 'Dhaka', '23.815528', '90.427676', '6 Ton'),
('L003', 'Rice1', ' Chapai Nawabganj', '24.5925', '88.2705', 'Pabna', '24.0122', '89.2468', '10 Ton');

-- --------------------------------------------------------

--
-- Table structure for table `transportation_t`
--

CREATE TABLE `transportation_t` (
  `VehicleID` varchar(20) NOT NULL,
  `RegistrationNumber` varchar(20) NOT NULL,
  `LotID` varchar(20) NOT NULL,
  `EnrouteFrom` varchar(50) DEFAULT NULL,
  `EnrouteTo` varchar(50) DEFAULT NULL,
  `MapCoOrdinate` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_login_t`
--

CREATE TABLE `user_login_t` (
  `userid` varchar(20) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_login_t`
--

INSERT INTO `user_login_t` (`userid`, `user_name`, `password`, `user_type`) VALUES
('1122334', 'Nahian Noureen', '12345', 'Farmer'),
('1234567', 'Nahian Noureen', '12345', 'Driver'),
('199719981278', 'Sadia', '12345', 'Nutritionist'),
('19997625513000008', 'Sadia', '12345', 'Nutritionist'),
('19997625513000009', 'Sadia', '12345', 'Grading Unit Manager'),
('2320608', 'Nahian Noureen', '12345', 'Admin'),
('2580', 'Nahian Noureen', '12345', 'Warehouse Manager'),
('3344556', 'Nahian Noureen', '12345', 'Supplier'),
('D12345', 'Nishat Noureen', '12345', 'Driver'),
('D12348', 'Habibullah Sirat', '12345', 'Driver'),
('D7890', 'Nishat Noureen', '12345', 'Driver'),
('F12346', 'Habibullah Sirat', '12345', 'Farmer'),
('F12347', 'Nishat Noureen', '12345', 'Farmer'),
('F12348', 'Nishat Noureen', '12345', 'Farmer'),
('S12345', 'Subaitah Noureen', '12345', 'Supplier'),
('S12346', 'Subaitah Nishat', '12345', 'Supplier'),
('WM12340', 'Habibullah Sirat', '12345', 'Warehouse Manager'),
('WM12345', 'Nahian Noureen', '12345', 'Warehouse Manager'),
('WM12346', 'Habibullah Sirat', '12345', 'Warehouse Manager'),
('WM12356', 'Subaitah Nishat', '12345', 'warehouse manager');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_t`
--

CREATE TABLE `vehicle_t` (
  `VehicleID` varchar(20) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Capacity` varchar(20) DEFAULT NULL,
  `DriverID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle_t`
--

INSERT INTO `vehicle_t` (`VehicleID`, `Name`, `Capacity`, `DriverID`) VALUES
('DHK Metro-BA 14-7776', 'Crystal Group', '10 Ton', '1234567');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_manager_t`
--

CREATE TABLE `warehouse_manager_t` (
  `WHManagerID` varchar(20) NOT NULL,
  `FName` varchar(50) NOT NULL,
  `LName` varchar(50) NOT NULL,
  `AreaName` varchar(50) NOT NULL,
  `District` varchar(50) NOT NULL,
  `Division` varchar(20) DEFAULT NULL,
  `ContactNumber` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `warehouse_manager_t`
--

INSERT INTO `warehouse_manager_t` (`WHManagerID`, `FName`, `LName`, `AreaName`, `District`, `Division`, `ContactNumber`) VALUES
('2580', 'Nahian', 'Noureen', 'Madrasa Mor', 'Natore', 'Rajshahi', '1234567890'),
('WM12345', 'Nahain', 'Nishat', 'Bashundhara R/A', 'Dhaka', 'Dhaka', '0123456789'),
('WM12356', 'Subaitah', 'Nishat', 'Mirpur 10', 'Dhaka', 'Dhaka', '0123456789');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_t`
--

CREATE TABLE `warehouse_t` (
  `WarehouseID` varchar(20) NOT NULL,
  `AreaName` varchar(50) NOT NULL,
  `District` varchar(20) NOT NULL,
  `Division` varchar(20) DEFAULT NULL,
  `WHManagerID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `warehouse_t`
--

INSERT INTO `warehouse_t` (`WarehouseID`, `AreaName`, `District`, `Division`, `WHManagerID`) VALUES
('3200', 'Natore Sadar', 'Natore', 'Rajshahi', '2580'),
('WH5678', 'Mirpur 14', 'Dhaka', 'Dhaka', '2580');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_t`
--
ALTER TABLE `customer_t`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `delivery_progress_t`
--
ALTER TABLE `delivery_progress_t`
  ADD PRIMARY KEY (`PackagingID`);

--
-- Indexes for table `delivery_t`
--
ALTER TABLE `delivery_t`
  ADD PRIMARY KEY (`DeliveryID`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `SupplierID` (`SupplierID`),
  ADD KEY `DriverID` (`DriverID`);

--
-- Indexes for table `driver_t`
--
ALTER TABLE `driver_t`
  ADD PRIMARY KEY (`DriverID`),
  ADD KEY `VehicleID` (`VehicleID`),
  ADD KEY `DeliveryID` (`DeliveryID`);

--
-- Indexes for table `farmer_t`
--
ALTER TABLE `farmer_t`
  ADD PRIMARY KEY (`FarmerID`),
  ADD KEY `FarmID` (`FarmID`);

--
-- Indexes for table `farm_t`
--
ALTER TABLE `farm_t`
  ADD PRIMARY KEY (`FarmID`),
  ADD KEY `Farm_FK` (`FarmerID`);

--
-- Indexes for table `field_officer_t`
--
ALTER TABLE `field_officer_t`
  ADD PRIMARY KEY (`FEmployeeID`);

--
-- Indexes for table `government_staff_certificate_t`
--
ALTER TABLE `government_staff_certificate_t`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `government_staff_t`
--
ALTER TABLE `government_staff_t`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `graded_crop_t`
--
ALTER TABLE `graded_crop_t`
  ADD PRIMARY KEY (`GradeID`);

--
-- Indexes for table `grading_criteria_t`
--
ALTER TABLE `grading_criteria_t`
  ADD PRIMARY KEY (`Type`,`Grade`);

--
-- Indexes for table `harvest_lot_t`
--
ALTER TABLE `harvest_lot_t`
  ADD PRIMARY KEY (`LotID`),
  ADD KEY `Harvest_Lot_FK1` (`FarmID`),
  ADD KEY `Harvest_Lot_FK2` (`NutrionistID`),
  ADD KEY `Harvest_Lot_FK3` (`ProductID`),
  ADD KEY `Harvest_Lot_FK4` (`FieldOfficerID`);

--
-- Indexes for table `non_perishable_t`
--
ALTER TABLE `non_perishable_t`
  ADD PRIMARY KEY (`NProductID`);

--
-- Indexes for table `nutrionist_t`
--
ALTER TABLE `nutrionist_t`
  ADD PRIMARY KEY (`NEmployeeID`);

--
-- Indexes for table `packaged_batch_t`
--
ALTER TABLE `packaged_batch_t`
  ADD PRIMARY KEY (`Barcode`),
  ADD KEY `Packaged_Batch_FK1` (`FieldOfficerID`),
  ADD KEY `Packaged_Batch_FK2` (`RegistrationNumber`);

--
-- Indexes for table `packaging_unit_t`
--
ALTER TABLE `packaging_unit_t`
  ADD PRIMARY KEY (`RegistrationNumber`);

--
-- Indexes for table `perishable_t`
--
ALTER TABLE `perishable_t`
  ADD PRIMARY KEY (`PProductID`);

--
-- Indexes for table `problem_areas_t`
--
ALTER TABLE `problem_areas_t`
  ADD PRIMARY KEY (`ProblemID`);

--
-- Indexes for table `produce_t`
--
ALTER TABLE `produce_t`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `produce_FK` (`FarmerID`);

--
-- Indexes for table `quality_reports_t`
--
ALTER TABLE `quality_reports_t`
  ADD PRIMARY KEY (`LotID`);

--
-- Indexes for table `supplier_t`
--
ALTER TABLE `supplier_t`
  ADD PRIMARY KEY (`SupplierID`);

--
-- Indexes for table `tracking_product_t`
--
ALTER TABLE `tracking_product_t`
  ADD PRIMARY KEY (`LotID`,`LotName`);

--
-- Indexes for table `transportation_t`
--
ALTER TABLE `transportation_t`
  ADD PRIMARY KEY (`VehicleID`,`RegistrationNumber`,`LotID`),
  ADD KEY `Transportation_FK2` (`RegistrationNumber`),
  ADD KEY `Transportation_FK3` (`LotID`);

--
-- Indexes for table `user_login_t`
--
ALTER TABLE `user_login_t`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `vehicle_t`
--
ALTER TABLE `vehicle_t`
  ADD PRIMARY KEY (`VehicleID`),
  ADD KEY `DriverID` (`DriverID`);

--
-- Indexes for table `warehouse_manager_t`
--
ALTER TABLE `warehouse_manager_t`
  ADD PRIMARY KEY (`WHManagerID`);

--
-- Indexes for table `warehouse_t`
--
ALTER TABLE `warehouse_t`
  ADD PRIMARY KEY (`WarehouseID`),
  ADD KEY `warehouse_FK` (`WHManagerID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `graded_crop_t`
--
ALTER TABLE `graded_crop_t`
  MODIFY `GradeID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `problem_areas_t`
--
ALTER TABLE `problem_areas_t`
  MODIFY `ProblemID` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `delivery_t`
--
ALTER TABLE `delivery_t`
  ADD CONSTRAINT `delivery_t_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer_t` (`CustomerID`),
  ADD CONSTRAINT `delivery_t_ibfk_2` FOREIGN KEY (`SupplierID`) REFERENCES `supplier_t` (`SupplierID`),
  ADD CONSTRAINT `delivery_t_ibfk_3` FOREIGN KEY (`DriverID`) REFERENCES `driver_t` (`DriverID`);

--
-- Constraints for table `driver_t`
--
ALTER TABLE `driver_t`
  ADD CONSTRAINT `driver_t_ibfk_1` FOREIGN KEY (`VehicleID`) REFERENCES `vehicle_t` (`VehicleID`),
  ADD CONSTRAINT `driver_t_ibfk_2` FOREIGN KEY (`DeliveryID`) REFERENCES `delivery_t` (`DeliveryID`);

--
-- Constraints for table `farmer_t`
--
ALTER TABLE `farmer_t`
  ADD CONSTRAINT `farmer_t_ibfk_1` FOREIGN KEY (`FarmID`) REFERENCES `farm_t` (`FarmID`);

--
-- Constraints for table `farm_t`
--
ALTER TABLE `farm_t`
  ADD CONSTRAINT `Farm_FK` FOREIGN KEY (`FarmerID`) REFERENCES `farmer_t` (`FarmerID`) ON DELETE CASCADE;

--
-- Constraints for table `field_officer_t`
--
ALTER TABLE `field_officer_t`
  ADD CONSTRAINT `Field_Officer_FK` FOREIGN KEY (`FEmployeeID`) REFERENCES `government_staff_t` (`EmployeeID`);

--
-- Constraints for table `government_staff_certificate_t`
--
ALTER TABLE `government_staff_certificate_t`
  ADD CONSTRAINT `Government_Staff_Certificate_FK` FOREIGN KEY (`EmployeeID`) REFERENCES `government_staff_t` (`EmployeeID`);

--
-- Constraints for table `harvest_lot_t`
--
ALTER TABLE `harvest_lot_t`
  ADD CONSTRAINT `Harvest_Lot_FK1` FOREIGN KEY (`FarmID`) REFERENCES `farm_t` (`FarmID`),
  ADD CONSTRAINT `Harvest_Lot_FK2` FOREIGN KEY (`NutrionistID`) REFERENCES `nutrionist_t` (`NEmployeeID`),
  ADD CONSTRAINT `Harvest_Lot_FK3` FOREIGN KEY (`ProductID`) REFERENCES `produce_t` (`ProductID`),
  ADD CONSTRAINT `Harvest_Lot_FK4` FOREIGN KEY (`FieldOfficerID`) REFERENCES `field_officer_t` (`FEmployeeID`);

--
-- Constraints for table `non_perishable_t`
--
ALTER TABLE `non_perishable_t`
  ADD CONSTRAINT `Non_Perishable_FK` FOREIGN KEY (`NProductID`) REFERENCES `produce_t` (`ProductID`);

--
-- Constraints for table `nutrionist_t`
--
ALTER TABLE `nutrionist_t`
  ADD CONSTRAINT `Nutrionist_FK` FOREIGN KEY (`NEmployeeID`) REFERENCES `government_staff_t` (`EmployeeID`);

--
-- Constraints for table `packaged_batch_t`
--
ALTER TABLE `packaged_batch_t`
  ADD CONSTRAINT `Packaged_Batch_FK1` FOREIGN KEY (`FieldOfficerID`) REFERENCES `field_officer_t` (`FEmployeeID`),
  ADD CONSTRAINT `Packaged_Batch_FK2` FOREIGN KEY (`RegistrationNumber`) REFERENCES `packaging_unit_t` (`RegistrationNumber`);

--
-- Constraints for table `perishable_t`
--
ALTER TABLE `perishable_t`
  ADD CONSTRAINT `Perishable_FK` FOREIGN KEY (`PProductID`) REFERENCES `produce_t` (`ProductID`);

--
-- Constraints for table `produce_t`
--
ALTER TABLE `produce_t`
  ADD CONSTRAINT `produce_FK` FOREIGN KEY (`FarmerID`) REFERENCES `farmer_t` (`FarmerID`);

--
-- Constraints for table `transportation_t`
--
ALTER TABLE `transportation_t`
  ADD CONSTRAINT `Transportation_FK1` FOREIGN KEY (`VehicleID`) REFERENCES `vehicle_t` (`VehicleID`),
  ADD CONSTRAINT `Transportation_FK2` FOREIGN KEY (`RegistrationNumber`) REFERENCES `packaging_unit_t` (`RegistrationNumber`),
  ADD CONSTRAINT `Transportation_FK3` FOREIGN KEY (`LotID`) REFERENCES `harvest_lot_t` (`LotID`);

--
-- Constraints for table `vehicle_t`
--
ALTER TABLE `vehicle_t`
  ADD CONSTRAINT `vehicle_t_ibfk_1` FOREIGN KEY (`DriverID`) REFERENCES `driver_t` (`DriverID`);

--
-- Constraints for table `warehouse_t`
--
ALTER TABLE `warehouse_t`
  ADD CONSTRAINT `warehouse_FK` FOREIGN KEY (`WHManagerID`) REFERENCES `warehouse_manager_t` (`WHManagerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
