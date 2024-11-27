-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2024 at 05:33 AM
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
-- Table structure for table `delivery_t`
--

CREATE TABLE `delivery_t` (
  `DeliveryID` varchar(20) NOT NULL,
  `Barcode` varchar(20) NOT NULL,
  `CustomerID` varchar(20) NOT NULL,
  `SupplierID` varchar(20) NOT NULL,
  `DriverID` varchar(20) NOT NULL
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
  `ContactNumber` varchar(15) NOT NULL,
  `VehicleID` varchar(20) DEFAULT NULL,
  `DeliveryID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `driver_t`
--

INSERT INTO `driver_t` (`DriverID`, `FName`, `LName`, `AreaName`, `District`, `ContactNumber`, `VehicleID`, `DeliveryID`) VALUES
('1234567', 'Nahian', 'Noureen', 'Bashundhara R/A', 'Dhaka', '1234567890', 'DHK Metro-BA 14-7776', NULL);

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
  `ContactNumber` varchar(15) DEFAULT NULL,
  `FarmID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `farmer_t`
--

INSERT INTO `farmer_t` (`FarmerID`, `FName`, `LName`, `AreaName`, `District`, `ContactNumber`, `FarmID`) VALUES
('1122334', 'Nahian', 'Noureen', 'Bashundhara R/A', 'Dhaka', '1234567890', '123456');

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
('123456', 'ABC Farm', 'Bashundhara R/A', 'Dhaka', '1800', '1122334');

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
  `WorkingLocation` varchar(50) DEFAULT NULL,
  `EmployeeType` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `GrowingSeason` varchar(15) DEFAULT NULL,
  `ExpiryDate` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produce_t`
--

CREATE TABLE `produce_t` (
  `ProductID` varchar(20) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `ProduceType` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_t`
--

CREATE TABLE `supplier_t` (
  `SupplierID` varchar(20) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `AreaName` varchar(50) DEFAULT NULL,
  `District` varchar(20) DEFAULT NULL,
  `GradeRequirement` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier_t`
--

INSERT INTO `supplier_t` (`SupplierID`, `Name`, `AreaName`, `District`, `GradeRequirement`) VALUES
('3344556', 'Nahian Noureen', 'Bashundhara R/A', 'Dhaka', 'A');

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
('2320608', 'Nahian Noureen', '12345', 'Admin'),
('3344556', 'Nahian Noureen', '12345', 'Supplier');

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
  `ContactNumber` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_t`
--
ALTER TABLE `customer_t`
  ADD PRIMARY KEY (`CustomerID`);

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
-- Indexes for table `produce_t`
--
ALTER TABLE `produce_t`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `supplier_t`
--
ALTER TABLE `supplier_t`
  ADD PRIMARY KEY (`SupplierID`);

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
  ADD CONSTRAINT `Farm_FK` FOREIGN KEY (`FarmerID`) REFERENCES `farmer_t` (`FarmerID`);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
