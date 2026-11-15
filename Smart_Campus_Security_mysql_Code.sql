CREATE DATABASE smart_campus_security3;
USE `smart_campus_security3`;

DROP TABLE IF EXISTS access_log;
CREATE TABLE access_log (
  `Log_ID` int NOT NULL,
  `Card_ID` int DEFAULT NULL,
  `Pass_ID` int DEFAULT NULL,
  `Access_Point_ID` int NOT NULL,
  `Security_Staff_ID` int DEFAULT NULL,
  `Event_Type` varchar(20) DEFAULT NULL,
  `Event_Date` date DEFAULT NULL,
  `Event_Time` time DEFAULT NULL,
  `Access_Result` varchar(20) DEFAULT NULL,
  `Denial_Reason` varchar(255) DEFAULT NULL,
  `Remarks` text DEFAULT NULL
);


INSERT INTO `access_log` (`Log_ID`, `Card_ID`, `Pass_ID`, `Access_Point_ID`, `Security_Staff_ID`, `Event_Type`, `Event_Date`, `Event_Time`, `Access_Result`, `Denial_Reason`, `Remarks`) VALUES
(1, 1, NULL, 1, 1, 'Entry', '2026-11-15', '00:29:30', 'Approved', NULL, 'Student entered campus'),
(2, NULL, 1, 1, 1, 'Entry', '2026-11-15', '00:29:30', 'Approved', NULL, 'Visitor entered campus'),
(3, 2, NULL, 3, 2, 'Exit', '2026-11-15', '00:29:30', 'Denied', 'Unauthorized access attempt', 'Access rejected'),
(4, NULL, 4, 4, 4, 'Entry', '2026-11-15', '12:20:00', 'Granted', NULL, 'Sample visitor access log 4'),
(5, NULL, 5, 5, 5, 'Exit', '2026-11-15', '13:25:00', 'Denied', 'Invalid Pass', 'Sample visitor access log 5'),
(6, NULL, 6, 6, 6, 'Entry', '2026-11-15', '14:30:00', 'Granted', NULL, 'Sample visitor access log 6'),
(7, NULL, 7, 7, 7, 'Exit', '2026-11-15', '15:35:00', 'Granted', NULL, 'Sample visitor access log 7'),
(8, NULL, 8, 8, 8, 'Entry', '2026-11-15', '16:40:00', 'Granted', NULL, 'Sample visitor access log 8'),
(9, NULL, 9, 9, 9, 'Exit', '2026-11-15', '17:45:00', 'Granted', NULL, 'Sample visitor access log 9'),
(10, NULL, 10, 10, 10, 'Entry', '2026-11-15', '08:50:00', 'Denied', 'Invalid Pass', 'Sample visitor access log 10'),
(11, NULL, 11, 11, 11, 'Exit', '2026-11-15', '09:55:00', 'Granted', NULL, 'Sample visitor access log 11'),
(12, NULL, 12, 12, 12, 'Entry', '2026-11-15', '10:00:00', 'Granted', NULL, 'Sample visitor access log 12'),
(13, NULL, 13, 13, 13, 'Exit', '2026-11-15', '11:05:00', 'Granted', NULL, 'Sample visitor access log 13'),
(14, NULL, 14, 14, 14, 'Entry', '2026-11-15', '12:10:00', 'Granted', NULL, 'Sample visitor access log 14'),
(15, NULL, 15, 15, 15, 'Exit', '2026-11-15', '13:15:00', 'Denied', 'Invalid Pass', 'Sample visitor access log 15'),
(16, NULL, 16, 16, 16, 'Entry', '2026-11-15', '14:20:00', 'Granted', NULL, 'Sample visitor access log 16'),
(17, NULL, 17, 17, 17, 'Exit', '2026-11-15', '15:25:00', 'Granted', NULL, 'Sample visitor access log 17'),
(18, NULL, 18, 18, 18, 'Entry', '2026-11-15', '16:30:00', 'Granted', NULL, 'Sample visitor access log 18'),
(19, NULL, 19, 19, 19, 'Exit', '2026-11-15', '17:35:00', 'Granted', NULL, 'Sample visitor access log 19'),
(20, NULL, 20, 20, 20, 'Entry', '2026-11-15', '08:40:00', 'Denied', 'Invalid Pass', 'Sample visitor access log 20'),
(21, NULL, 21, 21, 21, 'Exit', '2026-11-15', '09:45:00', 'Granted', NULL, 'Sample visitor access log 21'),
(22, NULL, 22, 22, 22, 'Entry', '2026-11-15', '10:50:00', 'Granted', NULL, 'Sample visitor access log 22'),
(23, NULL, 23, 23, 23, 'Exit', '2026-11-15', '11:55:00', 'Granted', NULL, 'Sample visitor access log 23'),
(24, NULL, 24, 24, 24, 'Entry', '2026-11-15', '12:00:00', 'Granted', NULL, 'Sample visitor access log 24'),
(25, NULL, 25, 25, 25, 'Exit', '2026-11-15', '13:05:00', 'Denied', 'Invalid Pass', 'Sample visitor access log 25'),
(26, NULL, 26, 26, 26, 'Entry', '2026-11-15', '14:10:00', 'Granted', NULL, 'Sample visitor access log 26'),
(27, NULL, 27, 27, 27, 'Exit', '2026-11-15', '15:15:00', 'Granted', NULL, 'Sample visitor access log 27'),
(28, NULL, 28, 28, 28, 'Entry', '2026-11-15', '16:20:00', 'Granted', NULL, 'Sample visitor access log 28'),
(29, NULL, 29, 29, 29, 'Exit', '2026-11-15', '17:25:00', 'Granted', NULL, 'Sample visitor access log 29'),
(30, NULL, 30, 30, 30, 'Entry', '2026-11-15', '08:30:00', 'Denied', 'Invalid Pass', 'Sample visitor access log 30');



CREATE TABLE `access_permission` (
  `Permission_ID`  int NOT NULL,
  `Person_ID` int NOT NULL,
  `Access_Point_ID` int NOT NULL,
  `Authorized_By_Staff_ID` int NOT NULL,
  `Valid_From` datetime DEFAULT NULL,
  `Valid_Until` datetime DEFAULT NULL,
  `Permission_Type` varchar(50) DEFAULT NULL,
  `Permission_Status` varchar(30) DEFAULT NULL
);



INSERT INTO `access_permission` (`Permission_ID`, `Person_ID`, `Access_Point_ID`, `Authorized_By_Staff_ID`, `Valid_From`, `Valid_Until`, `Permission_Type`, `Permission_Status`) VALUES
(1, 1, 2, 1, '2026-01-01 08:00:00', '2027-12-31 23:59:59', 'Student Access', 'Active'),
(2, 3, 3, 1, '2026-01-01 08:00:00', '2027-12-31 23:59:59', 'Faculty Access', 'Active'),
(3, 2, 1, 2, '2026-01-01 08:00:00', '2027-12-31 23:59:59', 'Student Access', 'Active'),
(4, 16, 4, 4, '2026-01-01 08:00:00', '2027-12-31 23:59:59', 'Full Access', 'Active'),
(5, 19, 5, 5, '2026-01-01 08:00:00', '2027-12-31 23:59:59', 'Entry Only', 'Active'),
(6, 22, 6, 6, '2026-01-01 08:00:00', '2027-12-31 23:59:59', 'Restricted Access', 'Active'),
(7, 25, 7, 7, '2026-01-01 08:00:00', '2027-12-31 23:59:59', 'Full Access', 'Active'),
(8, 28, 8, 8, '2026-01-01 08:00:00', '2027-12-31 23:59:59', 'Entry Only', 'Active'),
(9, 6, 9, 9, '2026-01-01 08:00:00', '2027-12-31 23:59:59', 'Restricted Access', 'Active'),
(10, 8, 10, 10, '2026-01-01 08:00:00', '2027-12-31 23:59:59', 'Full Access', 'Active'),
(11, 10, 11, 11, '2026-01-01 08:00:00', '2027-12-31 23:59:59', 'Entry Only', 'Active'),
(12, 12, 12, 12, '2026-01-01 08:00:00', '2027-12-31 23:59:59', 'Restricted Access', 'Active'),
(13, 14, 13, 13, '2026-01-01 08:00:00', '2027-12-31 23:59:59', 'Full Access', 'Active'),
(14, 17, 14, 14, '2026-01-01 08:00:00', '2027-12-31 23:59:59', 'Entry Only', 'Active'),
(15, 20, 15, 15, '2026-01-01 08:00:00', '2027-12-31 23:59:59', 'Restricted Access', 'Active'),
(16, 23, 16, 16, '2026-01-01 08:00:00', '2027-12-31 23:59:59', 'Full Access', 'Active'),
(17, 26, 17, 17, '2026-01-01 08:00:00', '2027-12-31 23:59:59', 'Entry Only', 'Active'),
(18, 29, 18, 18, '2026-01-01 08:00:00', '2027-12-31 23:59:59', 'Restricted Access', 'Active'),
(19, 7, 19, 19, '2026-01-01 08:00:00', '2027-12-31 23:59:59', 'Full Access', 'Active'),
(20, 9, 20, 20, '2026-01-01 08:00:00', '2027-12-31 23:59:59', 'Entry Only', 'Active'),
(21, 11, 21, 21, '2026-01-01 08:00:00', '2027-12-31 23:59:59', 'Restricted Access', 'Active'),
(22, 13, 22, 22, '2026-01-01 08:00:00', '2027-12-31 23:59:59', 'Full Access', 'Active'),
(23, 15, 23, 23, '2026-01-01 08:00:00', '2027-12-31 23:59:59', 'Entry Only', 'Active'),
(24, 18, 24, 24, '2026-01-01 08:00:00', '2027-12-31 23:59:59', 'Restricted Access', 'Active'),
(25, 21, 25, 25, '2026-01-01 08:00:00', '2027-12-31 23:59:59', 'Full Access', 'Active'),
(26, 24, 26, 26, '2026-01-01 08:00:00', '2027-12-31 23:59:59', 'Entry Only', 'Active'),
(27, 27, 27, 27, '2026-01-01 08:00:00', '2027-12-31 23:59:59', 'Restricted Access', 'Active'),
(28, 30, 28, 28, '2026-01-01 08:00:00', '2027-12-31 23:59:59', 'Full Access', 'Active'),
(29, 37, 29, 29, '2026-01-01 08:00:00', '2027-12-31 23:59:59', 'Entry Only', 'Active'),
(30, 38, 30, 30, '2026-01-01 08:00:00', '2027-12-31 23:59:59', 'Restricted Access', 'Active');


CREATE TABLE `access_point` (
  `Access_Point_ID` int NOT NULL,
  `Point_Name` varchar(100) NOT NULL,
  `Building_Name` varchar(100) DEFAULT NULL,
  `Location_Description` varchar(255) DEFAULT NULL,
  `Point_Type` varchar(50) DEFAULT NULL,
  `Device_Serial_No` varchar(100) DEFAULT NULL,
  `Installation_Date` date DEFAULT NULL,
  `Operational_Status` varchar(30) DEFAULT NULL,
  `Entry_Direction` varchar(20) DEFAULT NULL,
  `Last_Maintenance` date DEFAULT NULL
);


INSERT INTO `access_point` (`Access_Point_ID`, `Point_Name`, `Building_Name`, `Location_Description`, `Point_Type`, `Device_Serial_No`, `Installation_Date`, `Operational_Status`, `Entry_Direction`, `Last_Maintenance`) VALUES
(1, 'Main Gate', 'Main Campus', 'University Main Entrance', 'Gate', 'DEV-001', '2025-01-01', 'Active', 'Both', '2026-10-01'),
(2, 'Library Entrance', 'Library Block', 'Library Main Door', 'Library', 'DEV-002', '2025-02-01', 'Active', 'Both', '2026-10-02'),
(3, 'Computer Lab', 'Block A', 'CS Computer Laboratory', 'Laboratory', 'DEV-003', '2025-03-01', 'Active', 'Entry', '2026-10-03'),
(4, 'Parking Gate', 'Parking Area', 'University Parking Entrance', 'Parking', 'DEV-004', '2025-04-01', 'Active', 'Both', '2026-10-04'),
(5, 'Access Point 5', 'Library Block', 'Floor 2, Gate 5', 'Electronic Door', 'DEV-005', '2025-01-15', 'Operational', 'Both', '2026-06-01'),
(6, 'Access Point 6', 'Academic Block', 'Floor 3, Gate 6', 'Turnstile', 'DEV-006', '2025-01-15', 'Operational', 'Entry', '2026-06-01'),
(7, 'Access Point 7', 'Administration Block', 'Floor 4, Gate 7', 'Electronic Door', 'DEV-007', '2025-01-15', 'Operational', 'Both', '2026-06-01'),
(8, 'Access Point 8', 'Library Block', 'Floor 1, Gate 8', 'Turnstile', 'DEV-008', '2025-01-15', 'Operational', 'Entry', '2026-06-01'),
(9, 'Access Point 9', 'Academic Block', 'Floor 2, Gate 9', 'Electronic Door', 'DEV-009', '2025-01-15', 'Operational', 'Both', '2026-06-01'),
(10, 'Access Point 10', 'Administration Block', 'Floor 3, Gate 10', 'Turnstile', 'DEV-010', '2025-01-15', 'Operational', 'Entry', '2026-06-01'),
(11, 'Access Point 11', 'Library Block', 'Floor 4, Gate 11', 'Electronic Door', 'DEV-011', '2025-01-15', 'Operational', 'Both', '2026-06-01'),
(12, 'Access Point 12', 'Academic Block', 'Floor 1, Gate 12', 'Turnstile', 'DEV-012', '2025-01-15', 'Operational', 'Entry', '2026-06-01'),
(13, 'Access Point 13', 'Administration Block', 'Floor 2, Gate 13', 'Electronic Door', 'DEV-013', '2025-01-15', 'Operational', 'Both', '2026-06-01'),
(14, 'Access Point 14', 'Library Block', 'Floor 3, Gate 14', 'Turnstile', 'DEV-014', '2025-01-15', 'Operational', 'Entry', '2026-06-01'),
(15, 'Access Point 15', 'Academic Block', 'Floor 4, Gate 15', 'Electronic Door', 'DEV-015', '2025-01-15', 'Operational', 'Both', '2026-06-01'),
(16, 'Access Point 16', 'Administration Block', 'Floor 1, Gate 16', 'Turnstile', 'DEV-016', '2025-01-15', 'Operational', 'Entry', '2026-06-01'),
(17, 'Access Point 17', 'Library Block', 'Floor 2, Gate 17', 'Electronic Door', 'DEV-017', '2025-01-15', 'Operational', 'Both', '2026-06-01'),
(18, 'Access Point 18', 'Academic Block', 'Floor 3, Gate 18', 'Turnstile', 'DEV-018', '2025-01-15', 'Operational', 'Entry', '2026-06-01'),
(19, 'Access Point 19', 'Administration Block', 'Floor 4, Gate 19', 'Electronic Door', 'DEV-019', '2025-01-15', 'Operational', 'Both', '2026-06-01'),
(20, 'Access Point 20', 'Library Block', 'Floor 1, Gate 20', 'Turnstile', 'DEV-020', '2025-01-15', 'Operational', 'Entry', '2026-06-01'),
(21, 'Access Point 21', 'Academic Block', 'Floor 2, Gate 21', 'Electronic Door', 'DEV-021', '2025-01-15', 'Operational', 'Both', '2026-06-01'),
(22, 'Access Point 22', 'Administration Block', 'Floor 3, Gate 22', 'Turnstile', 'DEV-022', '2025-01-15', 'Operational', 'Entry', '2026-06-01'),
(23, 'Access Point 23', 'Library Block', 'Floor 4, Gate 23', 'Electronic Door', 'DEV-023', '2025-01-15', 'Operational', 'Both', '2026-06-01'),
(24, 'Access Point 24', 'Academic Block', 'Floor 1, Gate 24', 'Turnstile', 'DEV-024', '2025-01-15', 'Operational', 'Entry', '2026-06-01'),
(25, 'Access Point 25', 'Administration Block', 'Floor 2, Gate 25', 'Electronic Door', 'DEV-025', '2025-01-15', 'Operational', 'Both', '2026-06-01'),
(26, 'Access Point 26', 'Library Block', 'Floor 3, Gate 26', 'Turnstile', 'DEV-026', '2025-01-15', 'Operational', 'Entry', '2026-06-01'),
(27, 'Access Point 27', 'Academic Block', 'Floor 4, Gate 27', 'Electronic Door', 'DEV-027', '2025-01-15', 'Operational', 'Both', '2026-06-01'),
(28, 'Access Point 28', 'Administration Block', 'Floor 1, Gate 28', 'Turnstile', 'DEV-028', '2025-01-15', 'Operational', 'Entry', '2026-06-01'),
(29, 'Access Point 29', 'Library Block', 'Floor 2, Gate 29', 'Electronic Door', 'DEV-029', '2025-01-15', 'Operational', 'Both', '2026-06-01'),
(30, 'Access Point 30', 'Academic Block', 'Floor 3, Gate 30', 'Turnstile', 'DEV-030', '2025-01-15', 'Operational', 'Entry', '2026-06-01');


CREATE TABLE `department` (
  `Department_ID` int NOT NULL,
  `Department_Name` varchar(100) NOT NULL,
  `Department_Code` varchar(20) DEFAULT NULL,
  `Building_Name` varchar(100) DEFAULT NULL,
  `Floor_Number` int DEFAULT NULL,
  `Office_Phone` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `HOD_Name` varchar(100) DEFAULT NULL,
  `Established_Date` date DEFAULT NULL,
  `Department_Status` varchar(20) DEFAULT NULL
);

INSERT INTO `department` (`Department_ID`, `Department_Name`, `Department_Code`, `Building_Name`, `Floor_Number`, `Office_Phone`, `Email`, `HOD_Name`, `Established_Date`, `Department_Status`) VALUES
(1, 'Computer Science', 'CS', 'Block A', 2, NULL, 'cs@university.edu', 'Dr. Ahmed', NULL, 'Active'),
(2, 'Software Engineering', 'SE', 'Block B', 1, NULL, 'se@university.edu', 'Dr. Ali', NULL, 'Active'),
(3, 'Electrical Engineering', 'EE', 'Block C', 3, NULL, 'ee@university.edu', 'Dr. Sara', NULL, 'Inactive'),
(7, 'Department 4', 'D04', 'Block 4', 5, '04210000004', 'department4@uol.edu.pk', 'HOD 4', '2015-01-01', 'Active'),
(8, 'Department 14', 'D14', 'Block 14', 5, '04210000014', 'department14@uol.edu.pk', 'HOD 14', '2015-01-01', 'Active'),
(9, 'Department 24', 'D24', 'Block 24', 5, '04210000024', 'department24@uol.edu.pk', 'HOD 24', '2015-01-01', 'Active'),
(10, 'Department 5', 'D05', 'Block 5', 1, '04210000005', 'department5@uol.edu.pk', 'HOD 5', '2015-01-01', 'Active'),
(11, 'Department 15', 'D15', 'Block 15', 1, '04210000015', 'department15@uol.edu.pk', 'HOD 15', '2015-01-01', 'Active'),
(12, 'Department 25', 'D25', 'Block 25', 1, '04210000025', 'department25@uol.edu.pk', 'HOD 25', '2015-01-01', 'Active'),
(13, 'Department 6', 'D06', 'Block 6', 2, '04210000006', 'department6@uol.edu.pk', 'HOD 6', '2015-01-01', 'Active'),
(14, 'Department 16', 'D16', 'Block 16', 2, '04210000016', 'department16@uol.edu.pk', 'HOD 16', '2015-01-01', 'Active'),
(15, 'Department 26', 'D26', 'Block 26', 2, '04210000026', 'department26@uol.edu.pk', 'HOD 26', '2015-01-01', 'Active'),
(16, 'Department 7', 'D07', 'Block 7', 3, '04210000007', 'department7@uol.edu.pk', 'HOD 7', '2015-01-01', 'Active'),
(17, 'Department 17', 'D17', 'Block 17', 3, '04210000017', 'department17@uol.edu.pk', 'HOD 17', '2015-01-01', 'Active'),
(18, 'Department 27', 'D27', 'Block 27', 3, '04210000027', 'department27@uol.edu.pk', 'HOD 27', '2015-01-01', 'Active'),
(19, 'Department 8', 'D08', 'Block 8', 4, '04210000008', 'department8@uol.edu.pk', 'HOD 8', '2015-01-01', 'Active'),
(20, 'Department 18', 'D18', 'Block 18', 4, '04210000018', 'department18@uol.edu.pk', 'HOD 18', '2015-01-01', 'Active'),
(21, 'Department 28', 'D28', 'Block 28', 4, '04210000028', 'department28@uol.edu.pk', 'HOD 28', '2015-01-01', 'Active'),
(22, 'Department 9', 'D09', 'Block 9', 5, '04210000009', 'department9@uol.edu.pk', 'HOD 9', '2015-01-01', 'Active'),
(23, 'Department 19', 'D19', 'Block 19', 5, '04210000019', 'department19@uol.edu.pk', 'HOD 19', '2015-01-01', 'Active'),
(24, 'Department 29', 'D29', 'Block 29', 5, '04210000029', 'department29@uol.edu.pk', 'HOD 29', '2015-01-01', 'Active'),
(25, 'Department 10', 'D10', 'Block 10', 1, '04210000010', 'department10@uol.edu.pk', 'HOD 10', '2015-01-01', 'Active'),
(26, 'Department 20', 'D20', 'Block 20', 1, '04210000020', 'department20@uol.edu.pk', 'HOD 20', '2015-01-01', 'Active'),
(27, 'Department 30', 'D30', 'Block 30', 1, '04210000030', 'department30@uol.edu.pk', 'HOD 30', '2015-01-01', 'Active'),
(28, 'Department 11', 'D11', 'Block 11', 2, '04210000011', 'department11@uol.edu.pk', 'HOD 11', '2015-01-01', 'Active'),
(29, 'Department 21', 'D21', 'Block 21', 2, '04210000021', 'department21@uol.edu.pk', 'HOD 21', '2015-01-01', 'Active'),
(30, 'Department 12', 'D12', 'Block 12', 3, '04210000012', 'department12@uol.edu.pk', 'HOD 12', '2015-01-01', 'Active'),
(31, 'Department 22', 'D22', 'Block 22', 3, '04210000022', 'department22@uol.edu.pk', 'HOD 22', '2015-01-01', 'Active'),
(32, 'Department 13', 'D13', 'Block 13', 4, '04210000013', 'department13@uol.edu.pk', 'HOD 13', '2015-01-01', 'Active'),
(33, 'Department 23', 'D23', 'Block 23', 4, '04210000023', 'department23@uol.edu.pk', 'HOD 23', '2015-01-01', 'Active');


CREATE TABLE `faculty` (
  `Person_ID` int NOT NULL,
  `Employee_No` varchar(30) NOT NULL,
  `Designation` varchar(100) DEFAULT NULL,
  `Qualification` varchar(100) DEFAULT NULL,
  `Department_ID` int DEFAULT NULL,
  `Employment_Type` varchar(50) DEFAULT NULL,
  `Joining_Date` date DEFAULT NULL,
  `Office_Number` varchar(20) DEFAULT NULL,
  `Faculty_Status` varchar(20) DEFAULT NULL,
  `Extension_No` varchar(20) DEFAULT NULL
);


INSERT INTO `faculty` (`Person_ID`, `Employee_No`, `Designation`, `Qualification`, `Department_ID`, `Employment_Type`, `Joining_Date`, `Office_Number`, `Faculty_Status`, `Extension_No`) VALUES
(3, 'EMP-001', 'Lecturer', 'MS Computer Science', 1, 'Permanent', '2023-01-10', 'A-201', 'Active', '101'),
(5, 'EMP-002', 'Assistant Professor', 'PhD', 3, 'Permanent', '2022-02-15', 'C-301', 'Active', '102'),
(39, 'FAC-033', 'Professor', 'MS / PhD', 1, 'Permanent', '2024-01-15', 'A-33', 'Active', 'EXT-33'),
(40, 'FAC-034', 'Assistant Professor', 'MS / PhD', 1, 'Permanent', '2024-01-15', 'A-34', 'Active', 'EXT-34'),
(41, 'FAC-035', 'Lecturer', 'MS / PhD', 1, 'Permanent', '2024-01-15', 'A-35', 'Active', 'EXT-35'),
(42, 'FAC-036', 'Professor', 'MS / PhD', 1, 'Permanent', '2024-01-15', 'A-36', 'Active', 'EXT-36'),
(43, 'FAC-037', 'Assistant Professor', 'MS / PhD', 1, 'Permanent', '2024-01-15', 'A-37', 'Active', 'EXT-37'),
(44, 'FAC-038', 'Lecturer', 'MS / PhD', 1, 'Permanent', '2024-01-15', 'A-38', 'Active', 'EXT-38'),
(45, 'FAC-039', 'Professor', 'MS / PhD', 1, 'Permanent', '2024-01-15', 'A-39', 'Active', 'EXT-39'),
(46, 'FAC-040', 'Assistant Professor', 'MS / PhD', 1, 'Permanent', '2024-01-15', 'A-40', 'Active', 'EXT-40'),
(47, 'FAC-041', 'Lecturer', 'MS / PhD', 1, 'Permanent', '2024-01-15', 'A-41', 'Active', 'EXT-41'),
(48, 'FAC-042', 'Professor', 'MS / PhD', 1, 'Permanent', '2024-01-15', 'A-42', 'Active', 'EXT-42'),
(49, 'FAC-043', 'Assistant Professor', 'MS / PhD', 1, 'Permanent', '2024-01-15', 'A-43', 'Active', 'EXT-43'),
(50, 'FAC-044', 'Lecturer', 'MS / PhD', 1, 'Permanent', '2024-01-15', 'A-44', 'Active', 'EXT-44'),
(51, 'FAC-045', 'Professor', 'MS / PhD', 1, 'Permanent', '2024-01-15', 'A-45', 'Active', 'EXT-45'),
(52, 'FAC-046', 'Assistant Professor', 'MS / PhD', 1, 'Permanent', '2024-01-15', 'A-46', 'Active', 'EXT-46'),
(53, 'FAC-047', 'Lecturer', 'MS / PhD', 1, 'Permanent', '2024-01-15', 'A-47', 'Active', 'EXT-47'),
(54, 'FAC-048', 'Professor', 'MS / PhD', 1, 'Permanent', '2024-01-15', 'A-48', 'Active', 'EXT-48'),
(55, 'FAC-049', 'Assistant Professor', 'MS / PhD', 1, 'Permanent', '2024-01-15', 'A-49', 'Active', 'EXT-49'),
(56, 'FAC-050', 'Lecturer', 'MS / PhD', 1, 'Permanent', '2024-01-15', 'A-50', 'Active', 'EXT-50'),
(57, 'FAC-051', 'Professor', 'MS / PhD', 1, 'Permanent', '2024-01-15', 'A-51', 'Active', 'EXT-51'),
(58, 'FAC-052', 'Assistant Professor', 'MS / PhD', 1, 'Permanent', '2024-01-15', 'A-52', 'Active', 'EXT-52'),
(59, 'FAC-053', 'Lecturer', 'MS / PhD', 1, 'Permanent', '2024-01-15', 'A-53', 'Active', 'EXT-53'),
(60, 'FAC-054', 'Professor', 'MS / PhD', 1, 'Permanent', '2024-01-15', 'A-54', 'Active', 'EXT-54'),
(61, 'FAC-055', 'Assistant Professor', 'MS / PhD', 1, 'Permanent', '2024-01-15', 'A-55', 'Active', 'EXT-55'),
(62, 'FAC-056', 'Lecturer', 'MS / PhD', 1, 'Permanent', '2024-01-15', 'A-56', 'Active', 'EXT-56'),
(63, 'FAC-057', 'Professor', 'MS / PhD', 1, 'Permanent', '2024-01-15', 'A-57', 'Active', 'EXT-57'),
(64, 'FAC-058', 'Assistant Professor', 'MS / PhD', 1, 'Permanent', '2024-01-15', 'A-58', 'Active', 'EXT-58'),
(65, 'FAC-059', 'Lecturer', 'MS / PhD', 1, 'Permanent', '2024-01-15', 'A-59', 'Active', 'EXT-59'),
(66, 'FAC-060', 'Professor', 'MS / PhD', 1, 'Permanent', '2024-01-15', 'A-60', 'Active', 'EXT-60');

CREATE TABLE `id_card` (
  `Card_ID` int NOT NULL,
  `Person_ID` int NOT NULL,
  `Card_Number` varchar(50) NOT NULL,
  `Issue_Date` date DEFAULT NULL,
  `Expiry_Date` date DEFAULT NULL,
  `Card_Type` varchar(30) DEFAULT NULL,
  `Card_Status` varchar(30) DEFAULT NULL,
  `RFID_UID` varchar(100) DEFAULT NULL,
  `Photo_Reference` varchar(255) DEFAULT NULL,
  `Last_Updated` datetime DEFAULT NULL
);

INSERT INTO `id_card` (`Card_ID`, `Person_ID`, `Card_Number`, `Issue_Date`, `Expiry_Date`, `Card_Type`, `Card_Status`, `RFID_UID`, `Photo_Reference`, `Last_Updated`) VALUES
(1, 1, 'CARD-001', '2026-01-01', '2027-12-31', 'Student', 'Active', 'RFID-001', 'ali.jpg', '2026-11-15 00:25:48'),
(2, 2, 'CARD-002', '2026-01-01', '2027-12-31', 'Student', 'Active', 'RFID-002', 'sara.jpg', '2026-11-15 00:25:48'),
(3, 3, 'CARD-003', '2026-01-01', '2027-12-31', 'Faculty', 'Active', 'RFID-003', 'usman.jpg', '2026-11-15 00:25:48'),
(4, 4, 'CARD-004', '2026-01-01', '2027-12-31', 'Student', 'Active', 'RFID-004', 'ayesha.jpg', '2026-11-15 00:25:48'),
(5, 5, 'CARD-005', '2026-01-01', '2027-12-31', 'Faculty', 'Active', 'RFID-005', 'hamza.jpg', '2026-11-15 00:25:48'),
(8, 16, 'CARD-006', '2026-01-01', '2030-12-31', 'Student', 'Active', 'RFID-006', 'photos/student-6.jpg', '2026-11-15 01:28:59'),
(9, 19, 'CARD-007', '2026-01-01', '2030-12-31', 'Student', 'Active', 'RFID-007', 'photos/student-7.jpg', '2026-11-15 01:28:59'),
(10, 22, 'CARD-008', '2026-01-01', '2030-12-31', 'Student', 'Active', 'RFID-008', 'photos/student-8.jpg', '2026-11-15 01:28:59'),
(11, 25, 'CARD-009', '2026-01-01', '2030-12-31', 'Student', 'Active', 'RFID-009', 'photos/student-9.jpg', '2026-11-15 01:28:59'),
(12, 28, 'CARD-010', '2026-01-01', '2030-12-31', 'Student', 'Active', 'RFID-010', 'photos/student-10.jpg', '2026-11-15 01:28:59'),
(13, 6, 'CARD-011', '2026-01-01', '2030-12-31', 'Student', 'Active', 'RFID-011', 'photos/student-11.jpg', '2026-11-15 01:28:59'),
(14, 8, 'CARD-012', '2026-01-01', '2030-12-31', 'Student', 'Active', 'RFID-012', 'photos/student-12.jpg', '2026-11-15 01:28:59'),
(15, 10, 'CARD-013', '2026-01-01', '2030-12-31', 'Student', 'Active', 'RFID-013', 'photos/student-13.jpg', '2026-11-15 01:28:59'),
(16, 12, 'CARD-014', '2026-01-01', '2030-12-31', 'Student', 'Active', 'RFID-014', 'photos/student-14.jpg', '2026-11-15 01:28:59'),
(17, 14, 'CARD-015', '2026-01-01', '2030-12-31', 'Student', 'Active', 'RFID-015', 'photos/student-15.jpg', '2026-11-15 01:28:59'),
(18, 17, 'CARD-016', '2026-01-01', '2030-12-31', 'Student', 'Active', 'RFID-016', 'photos/student-16.jpg', '2026-11-15 01:28:59'),
(19, 20, 'CARD-017', '2026-01-01', '2030-12-31', 'Student', 'Active', 'RFID-017', 'photos/student-17.jpg', '2026-11-15 01:28:59'),
(20, 23, 'CARD-018', '2026-01-01', '2030-12-31', 'Student', 'Active', 'RFID-018', 'photos/student-18.jpg', '2026-11-15 01:28:59'),
(21, 26, 'CARD-019', '2026-01-01', '2030-12-31', 'Student', 'Active', 'RFID-019', 'photos/student-19.jpg', '2026-11-15 01:28:59'),
(22, 29, 'CARD-020', '2026-01-01', '2030-12-31', 'Student', 'Active', 'RFID-020', 'photos/student-20.jpg', '2026-11-15 01:28:59'),
(23, 7, 'CARD-021', '2026-01-01', '2030-12-31', 'Student', 'Active', 'RFID-021', 'photos/student-21.jpg', '2026-11-15 01:28:59'),
(24, 9, 'CARD-022', '2026-01-01', '2030-12-31', 'Student', 'Active', 'RFID-022', 'photos/student-22.jpg', '2026-11-15 01:28:59'),
(25, 11, 'CARD-023', '2026-01-01', '2030-12-31', 'Student', 'Active', 'RFID-023', 'photos/student-23.jpg', '2026-11-15 01:28:59'),
(26, 13, 'CARD-024', '2026-01-01', '2030-12-31', 'Student', 'Active', 'RFID-024', 'photos/student-24.jpg', '2026-11-15 01:28:59'),
(27, 15, 'CARD-025', '2026-01-01', '2030-12-31', 'Student', 'Active', 'RFID-025', 'photos/student-25.jpg', '2026-11-15 01:28:59'),
(28, 18, 'CARD-026', '2026-01-01', '2030-12-31', 'Student', 'Active', 'RFID-026', 'photos/student-26.jpg', '2026-11-15 01:28:59'),
(29, 21, 'CARD-027', '2026-01-01', '2030-12-31', 'Student', 'Active', 'RFID-027', 'photos/student-27.jpg', '2026-11-15 01:28:59'),
(30, 24, 'CARD-028', '2026-01-01', '2030-12-31', 'Student', 'Active', 'RFID-028', 'photos/student-28.jpg', '2026-11-15 01:28:59'),
(31, 27, 'CARD-029', '2026-01-01', '2030-12-31', 'Student', 'Active', 'RFID-029', 'photos/student-29.jpg', '2026-11-15 01:28:59'),
(32, 30, 'CARD-030', '2026-01-01', '2030-12-31', 'Student', 'Active', 'RFID-030', 'photos/student-30.jpg', '2026-11-15 01:28:59');


CREATE TABLE `numbers` (
  `n` int NOT NULL
);

INSERT INTO `numbers` (`n`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31),
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(43),
(44),
(45),
(46),
(47),
(48),
(49),
(50),
(51),
(52),
(53),
(54),
(55),
(56),
(57),
(58),
(59),
(60);


CREATE TABLE `person` (
  `Person_ID` int NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `CNIC` varchar(15) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Date_Of_Birth` date DEFAULT NULL,
  `Registration_Date` date NOT NULL,
  `Blood_Group` varchar(5) DEFAULT NULL
);

INSERT INTO `person` (`Person_ID`, `First_Name`, `Last_Name`, `CNIC`, `Phone`, `Email`, `Address`, `Gender`, `Date_Of_Birth`, `Registration_Date`, `Blood_Group`) VALUES
(1, 'Ali', 'Hassan', '3520212345671', '03001234567', 'ali@gmail.com', 'Lahore', 'Male', '2003-05-10', '2026-11-15', NULL),
(2, 'Sara', 'Ahmed', '3520212345672', '03001234568', 'sara@gmail.com', 'Lahore', 'Female', '2002-08-15', '2026-11-15', NULL),
(3, 'Usman', 'Khan', '3520212345673', '03001234569', 'usman@gmail.com', 'Islamabad', 'Male', '2001-03-20', '2026-11-15', NULL),
(4, 'Ayesha', 'Malik', '3520212345674', '03001234570', 'ayesha@gmail.com', 'Lahore', 'Female', '2003-11-12', '2026-11-15', NULL),
(5, 'Hamza', 'Ali', '3520212345675', '03001234571', 'hamza@gmail.com', 'Karachi', 'Male', '2002-06-18', '2026-11-15', NULL),
(6, 'Person11', 'User11', '3520210000011', '03000000011', 'person11@gmail.com', 'Karachi', 'Female', '2000-01-12', '2026-11-15', NULL),
(7, 'Person21', 'User21', '3520210000021', '03000000021', 'person21@gmail.com', 'Lahore', 'Female', '2000-01-22', '2026-11-15', NULL),
(8, 'Person12', 'User12', '3520210000012', '03000000012', 'person12@gmail.com', 'Lahore', 'Male', '2000-01-13', '2026-11-15', NULL),
(9, 'Person22', 'User22', '3520210000022', '03000000022', 'person22@gmail.com', 'Islamabad', 'Male', '2000-01-23', '2026-11-15', NULL),
(10, 'Person13', 'User13', '3520210000013', '03000000013', 'person13@gmail.com', 'Islamabad', 'Female', '2000-01-14', '2026-11-15', NULL),
(11, 'Person23', 'User23', '3520210000023', '03000000023', 'person23@gmail.com', 'Karachi', 'Female', '2000-01-24', '2026-11-15', NULL),
(12, 'Person14', 'User14', '3520210000014', '03000000014', 'person14@gmail.com', 'Karachi', 'Male', '2000-01-15', '2026-11-15', NULL),
(13, 'Person24', 'User24', '3520210000024', '03000000024', 'person24@gmail.com', 'Lahore', 'Male', '2000-01-25', '2026-11-15', NULL),
(14, 'Person15', 'User15', '3520210000015', '03000000015', 'person15@gmail.com', 'Lahore', 'Female', '2000-01-16', '2026-11-15', NULL),
(15, 'Person25', 'User25', '3520210000025', '03000000025', 'person25@gmail.com', 'Islamabad', 'Female', '2000-01-26', '2026-11-15', NULL),
(16, 'Person6', 'User6', '3520210000006', '03000000006', 'person6@gmail.com', 'Lahore', 'Male', '2000-01-07', '2026-11-15', NULL),
(17, 'Person16', 'User16', '3520210000016', '03000000016', 'person16@gmail.com', 'Islamabad', 'Male', '2000-01-17', '2026-11-15', NULL),
(18, 'Person26', 'User26', '3520210000026', '03000000026', 'person26@gmail.com', 'Karachi', 'Male', '2000-01-27', '2026-11-15', NULL),
(19, 'Person7', 'User7', '3520210000007', '03000000007', 'person7@gmail.com', 'Islamabad', 'Female', '2000-01-08', '2026-11-15', NULL),
(20, 'Person17', 'User17', '3520210000017', '03000000017', 'person17@gmail.com', 'Karachi', 'Female', '2000-01-18', '2026-11-15', NULL),
(21, 'Person27', 'User27', '3520210000027', '03000000027', 'person27@gmail.com', 'Lahore', 'Female', '2000-01-28', '2026-11-15', NULL),
(22, 'Person8', 'User8', '3520210000008', '03000000008', 'person8@gmail.com', 'Karachi', 'Male', '2000-01-09', '2026-11-15', NULL),
(23, 'Person18', 'User18', '3520210000018', '03000000018', 'person18@gmail.com', 'Lahore', 'Male', '2000-01-19', '2026-11-15', NULL),
(24, 'Person28', 'User28', '3520210000028', '03000000028', 'person28@gmail.com', 'Islamabad', 'Male', '2000-01-29', '2026-11-15', NULL),
(25, 'Person9', 'User9', '3520210000009', '03000000009', 'person9@gmail.com', 'Lahore', 'Female', '2000-01-10', '2026-11-15', NULL),
(26, 'Person19', 'User19', '3520210000019', '03000000019', 'person19@gmail.com', 'Islamabad', 'Female', '2000-01-20', '2026-11-15', NULL),
(27, 'Person29', 'User29', '3520210000029', '03000000029', 'person29@gmail.com', 'Karachi', 'Female', '2000-01-30', '2026-11-15', NULL),
(28, 'Person10', 'User10', '3520210000010', '03000000010', 'person10@gmail.com', 'Islamabad', 'Male', '2000-01-11', '2026-11-15', NULL),
(29, 'Person20', 'User20', '3520210000020', '03000000020', 'person20@gmail.com', 'Karachi', 'Male', '2000-01-21', '2026-11-15', NULL),
(30, 'Person30', 'User30', '3520210000030', '03000000030', 'person30@gmail.com', 'Lahore', 'Male', '2000-01-31', '2026-11-15', NULL);


CREATE TABLE `security_incident` (
  `Incident_ID` int NOT NULL,
  `Access_Point_ID` int DEFAULT NULL,
  `Security_Staff_ID` int DEFAULT NULL,
  `Person_ID` int DEFAULT NULL,
  `Visitor_ID` int DEFAULT NULL,
  `Incident_Type` varchar(100) DEFAULT NULL,
  `Incident_Date` date DEFAULT NULL,
  `Incident_Time` time DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Action_Taken` text DEFAULT NULL,
  `Incident_Status` varchar(30) DEFAULT NULL
);

INSERT INTO `security_incident` (`Incident_ID`, `Access_Point_ID`, `Security_Staff_ID`, `Person_ID`, `Visitor_ID`, `Incident_Type`, `Incident_Date`, `Incident_Time`, `Description`, `Action_Taken`, `Incident_Status`) VALUES
(1, 3, 2, 2, NULL, 'Unauthorized Access', '2026-11-15', '00:29:49', 'Attempt to enter restricted computer laboratory', 'Access denied and incident reported', 'Under Investigation'),
(2, 1, 1, NULL, 1, 'Suspicious Activity', '2026-11-15', '00:29:49', 'Suspicious activity reported at main gate', 'Security team notified', 'Open'),
(4, 4, 4, 42, NULL, 'Tailgating', '2026-11-15', '12:28:00', 'Sample security incident number 4', 'Security staff investigated and recorded the incident.', 'Resolved'),
(5, 5, 5, 43, NULL, 'Invalid Card', '2026-11-15', '13:35:00', 'Sample security incident number 5', 'Security staff investigated and recorded the incident.', 'Under Review'),
(6, 6, 6, 44, NULL, 'Unauthorized Access', '2026-11-15', '14:42:00', 'Sample security incident number 6', 'Security staff investigated and recorded the incident.', 'Resolved'),
(7, 7, 7, 45, NULL, 'Tailgating', '2026-11-15', '15:49:00', 'Sample security incident number 7', 'Security staff investigated and recorded the incident.', 'Under Review'),
(8, 8, 8, 46, NULL, 'Invalid Card', '2026-11-15', '16:56:00', 'Sample security incident number 8', 'Security staff investigated and recorded the incident.', 'Resolved'),
(9, 9, 9, 47, NULL, 'Unauthorized Access', '2026-11-15', '17:03:00', 'Sample security incident number 9', 'Security staff investigated and recorded the incident.', 'Under Review'),
(10, 10, 10, 48, NULL, 'Tailgating', '2026-11-15', '08:10:00', 'Sample security incident number 10', 'Security staff investigated and recorded the incident.', 'Resolved'),
(11, 11, 11, 49, NULL, 'Invalid Card', '2026-11-15', '09:17:00', 'Sample security incident number 11', 'Security staff investigated and recorded the incident.', 'Under Review'),
(12, 12, 12, 50, NULL, 'Unauthorized Access', '2026-11-15', '10:24:00', 'Sample security incident number 12', 'Security staff investigated and recorded the incident.', 'Resolved'),
(13, 13, 13, 51, NULL, 'Tailgating', '2026-11-15', '11:31:00', 'Sample security incident number 13', 'Security staff investigated and recorded the incident.', 'Under Review'),
(14, 14, 14, 52, NULL, 'Invalid Card', '2026-11-15', '12:38:00', 'Sample security incident number 14', 'Security staff investigated and recorded the incident.', 'Resolved'),
(15, 15, 15, 53, NULL, 'Unauthorized Access', '2026-11-15', '13:45:00', 'Sample security incident number 15', 'Security staff investigated and recorded the incident.', 'Under Review'),
(16, 16, 16, 54, NULL, 'Tailgating', '2026-11-15', '14:52:00', 'Sample security incident number 16', 'Security staff investigated and recorded the incident.', 'Resolved'),
(17, 17, 17, 55, NULL, 'Invalid Card', '2026-11-15', '15:59:00', 'Sample security incident number 17', 'Security staff investigated and recorded the incident.', 'Under Review'),
(18, 18, 18, 56, NULL, 'Unauthorized Access', '2026-11-15', '16:06:00', 'Sample security incident number 18', 'Security staff investigated and recorded the incident.', 'Resolved'),
(19, 19, 19, 57, NULL, 'Tailgating', '2026-11-15', '17:13:00', 'Sample security incident number 19', 'Security staff investigated and recorded the incident.', 'Under Review'),
(20, 20, 20, 58, NULL, 'Invalid Card', '2026-11-15', '08:20:00', 'Sample security incident number 20', 'Security staff investigated and recorded the incident.', 'Resolved'),
(21, 21, 21, 59, NULL, 'Unauthorized Access', '2026-11-15', '09:27:00', 'Sample security incident number 21', 'Security staff investigated and recorded the incident.', 'Under Review'),
(22, 22, 22, 60, NULL, 'Tailgating', '2026-11-15', '10:34:00', 'Sample security incident number 22', 'Security staff investigated and recorded the incident.', 'Resolved'),
(23, 23, 23, 61, NULL, 'Invalid Card', '2026-11-15', '11:41:00', 'Sample security incident number 23', 'Security staff investigated and recorded the incident.', 'Under Review'),
(24, 24, 24, 62, NULL, 'Unauthorized Access', '2026-11-15', '12:48:00', 'Sample security incident number 24', 'Security staff investigated and recorded the incident.', 'Resolved'),
(25, 25, 25, 63, NULL, 'Tailgating', '2026-11-15', '13:55:00', 'Sample security incident number 25', 'Security staff investigated and recorded the incident.', 'Under Review'),
(26, 26, 26, 64, NULL, 'Invalid Card', '2026-11-15', '14:02:00', 'Sample security incident number 26', 'Security staff investigated and recorded the incident.', 'Resolved'),
(27, 27, 27, 65, NULL, 'Unauthorized Access', '2026-11-15', '15:09:00', 'Sample security incident number 27', 'Security staff investigated and recorded the incident.', 'Under Review'),
(28, 28, 28, 66, NULL, 'Tailgating', '2026-11-15', '16:16:00', 'Sample security incident number 28', 'Security staff investigated and recorded the incident.', 'Resolved'),
(35, 28, 29, 64, NULL, 'Unauthorized Access', '2026-11-15', '14:30:00', 'Additional sample incident 01', 'Security staff investigated and recorded the incident.', 'Resolved'),
(36, 29, 30, 65, NULL, 'Unauthorized Access', '2026-11-15', '14:30:00', 'Additional sample incident 02', 'Security staff investigated and recorded the incident.', 'Resolved'),
(37, 30, 29, 66, NULL, 'Unauthorized Access', '2026-11-15', '14:30:00', 'Additional sample incident 03', 'Security staff investigated and recorded the incident.', 'Resolved');


CREATE TABLE `security_staff` (
  `Security_Staff_ID` int NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `CNIC` varchar(15) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Shift` varchar(30) DEFAULT NULL,
  `Joining_Date` date DEFAULT NULL,
  `Employment_Status` varchar(30) DEFAULT NULL
);

INSERT INTO `security_staff` (`Security_Staff_ID`, `First_Name`, `Last_Name`, `CNIC`, `Phone`, `Email`, `Shift`, `Joining_Date`, `Employment_Status`) VALUES
(1, 'Ahmed', 'Raza', '3520211111111', '03001112222', 'ahmed.security@gmail.com', 'Morning', '2023-01-01', 'Active'),
(2, 'Bilal', 'Khan', '3520211111112', '03002223333', 'bilal.security@gmail.com', 'Evening', '2023-03-01', 'Active'),
(3, 'Usman', 'Rauf', '3520211111113', '03003334444', 'usman.security@gmail.com', 'Night', '2024-01-01', 'Active'),
(4, 'Security4', 'Officer', '35202-0000004', '03000000004', 'security4@campus.edu', 'Evening', '2025-01-15', 'Active'),
(5, 'Security5', 'Officer', '35202-0000005', '03000000005', 'security5@campus.edu', 'Night', '2025-01-15', 'Active'),
(6, 'Security6', 'Officer', '35202-0000006', '03000000006', 'security6@campus.edu', 'Morning', '2025-01-15', 'Active'),
(7, 'Security7', 'Officer', '35202-0000007', '03000000007', 'security7@campus.edu', 'Evening', '2025-01-15', 'Active'),
(8, 'Security8', 'Officer', '35202-0000008', '03000000008', 'security8@campus.edu', 'Night', '2025-01-15', 'Active'),
(9, 'Security9', 'Officer', '35202-0000009', '03000000009', 'security9@campus.edu', 'Morning', '2025-01-15', 'Active'),
(10, 'Security10', 'Officer', '35202-0000010', '03000000010', 'security10@campus.edu', 'Evening', '2025-01-15', 'Active'),
(11, 'Security11', 'Officer', '35202-0000011', '03000000011', 'security11@campus.edu', 'Night', '2025-01-15', 'Active'),
(12, 'Security12', 'Officer', '35202-0000012', '03000000012', 'security12@campus.edu', 'Morning', '2025-01-15', 'Active'),
(13, 'Security13', 'Officer', '35202-0000013', '03000000013', 'security13@campus.edu', 'Evening', '2025-01-15', 'Active'),
(14, 'Security14', 'Officer', '35202-0000014', '03000000014', 'security14@campus.edu', 'Night', '2025-01-15', 'Active'),
(15, 'Security15', 'Officer', '35202-0000015', '03000000015', 'security15@campus.edu', 'Morning', '2025-01-15', 'Active'),
(16, 'Security16', 'Officer', '35202-0000016', '03000000016', 'security16@campus.edu', 'Evening', '2025-01-15', 'Active'),
(17, 'Security17', 'Officer', '35202-0000017', '03000000017', 'security17@campus.edu', 'Night', '2025-01-15', 'Active'),
(18, 'Security18', 'Officer', '35202-0000018', '03000000018', 'security18@campus.edu', 'Morning', '2025-01-15', 'Active'),
(19, 'Security19', 'Officer', '35202-0000019', '03000000019', 'security19@campus.edu', 'Evening', '2025-01-15', 'Active'),
(20, 'Security20', 'Officer', '35202-0000020', '03000000020', 'security20@campus.edu', 'Night', '2025-01-15', 'Active'),
(21, 'Security21', 'Officer', '35202-0000021', '03000000021', 'security21@campus.edu', 'Morning', '2025-01-15', 'Active'),
(22, 'Security22', 'Officer', '35202-0000022', '03000000022', 'security22@campus.edu', 'Evening', '2025-01-15', 'Active'),
(23, 'Security23', 'Officer', '35202-0000023', '03000000023', 'security23@campus.edu', 'Night', '2025-01-15', 'Active'),
(24, 'Security24', 'Officer', '35202-0000024', '03000000024', 'security24@campus.edu', 'Morning', '2025-01-15', 'Active'),
(25, 'Security25', 'Officer', '35202-0000025', '03000000025', 'security25@campus.edu', 'Evening', '2025-01-15', 'Active'),
(26, 'Security26', 'Officer', '35202-0000026', '03000000026', 'security26@campus.edu', 'Night', '2025-01-15', 'Active'),
(27, 'Security27', 'Officer', '35202-0000027', '03000000027', 'security27@campus.edu', 'Morning', '2025-01-15', 'Active'),
(28, 'Security28', 'Officer', '35202-0000028', '03000000028', 'security28@campus.edu', 'Evening', '2025-01-15', 'Active'),
(29, 'Security29', 'Officer', '35202-0000029', '03000000029', 'security29@campus.edu', 'Night', '2025-01-15', 'Active'),
(30, 'Security30', 'Officer', '35202-0000030', '03000000030', 'security30@campus.edu', 'Morning', '2025-01-15', 'Active');


CREATE TABLE `security_staff_access_assignment` (
  `Assignment_ID` int NOT NULL,
  `Security_Staff_ID` int NOT NULL,
  `Access_Point_ID` int NOT NULL,
  `Assigned_Date` date DEFAULT NULL,
  `Shift_Start_Time` time DEFAULT NULL,
  `Shift_End_Time` time DEFAULT NULL,
  `Assignment_Status` varchar(30) DEFAULT NULL
);

INSERT INTO `security_staff_access_assignment` (`Assignment_ID`, `Security_Staff_ID`, `Access_Point_ID`, `Assigned_Date`, `Shift_Start_Time`, `Shift_End_Time`, `Assignment_Status`) VALUES
(1, 1, 1, '2026-11-01', '08:00:00', '16:00:00', 'Active'),
(2, 2, 2, '2026-11-01', '16:00:00', '00:00:00', 'Active'),
(3, 3, 3, '2026-11-01', '00:00:00', '08:00:00', 'Active'),
(4, 4, 4, '2026-01-01', '08:00:00', '16:00:00', 'Active'),
(5, 5, 5, '2026-01-01', '08:00:00', '16:00:00', 'Active'),
(6, 6, 6, '2026-01-01', '08:00:00', '16:00:00', 'Active'),
(7, 7, 7, '2026-01-01', '08:00:00', '16:00:00', 'Active'),
(8, 8, 8, '2026-01-01', '08:00:00', '16:00:00', 'Active'),
(9, 9, 9, '2026-01-01', '08:00:00', '16:00:00', 'Active'),
(10, 10, 10, '2026-01-01', '08:00:00', '16:00:00', 'Active'),
(11, 11, 11, '2026-01-01', '08:00:00', '16:00:00', 'Active'),
(12, 12, 12, '2026-01-01', '08:00:00', '16:00:00', 'Active'),
(13, 13, 13, '2026-01-01', '08:00:00', '16:00:00', 'Active'),
(14, 14, 14, '2026-01-01', '08:00:00', '16:00:00', 'Active'),
(15, 15, 15, '2026-01-01', '08:00:00', '16:00:00', 'Active'),
(16, 16, 16, '2026-01-01', '08:00:00', '16:00:00', 'Active'),
(17, 17, 17, '2026-01-01', '08:00:00', '16:00:00', 'Active'),
(18, 18, 18, '2026-01-01', '08:00:00', '16:00:00', 'Active'),
(19, 19, 19, '2026-01-01', '08:00:00', '16:00:00', 'Active'),
(20, 20, 20, '2026-01-01', '08:00:00', '16:00:00', 'Active'),
(21, 21, 21, '2026-01-01', '08:00:00', '16:00:00', 'Active'),
(22, 22, 22, '2026-01-01', '08:00:00', '16:00:00', 'Active'),
(23, 23, 23, '2026-01-01', '08:00:00', '16:00:00', 'Active'),
(24, 24, 24, '2026-01-01', '08:00:00', '16:00:00', 'Active'),
(25, 25, 25, '2026-01-01', '08:00:00', '16:00:00', 'Active'),
(26, 26, 26, '2026-01-01', '08:00:00', '16:00:00', 'Active'),
(27, 27, 27, '2026-01-01', '08:00:00', '16:00:00', 'Active'),
(28, 28, 28, '2026-01-01', '08:00:00', '16:00:00', 'Active'),
(29, 29, 29, '2026-01-01', '08:00:00', '16:00:00', 'Active'),
(30, 30, 30, '2026-01-01', '08:00:00', '16:00:00', 'Active');

DROP TABLE IF EXISTS student;
CREATE TABLE student (
  `Person_ID` int NOT NULL,
  `Student_Roll_No` varchar(30) NOT NULL,
  `Program` varchar(100) DEFAULT NULL,
  `Semester` int DEFAULT NULL,
  `Batch` varchar(20) DEFAULT NULL,
  `Admission_Date` date DEFAULT NULL,
  `Study_Status` varchar(20) DEFAULT NULL,
  `Emergency_Contact` varchar(20) DEFAULT NULL,
  `Guardian_Name` varchar(100) DEFAULT NULL,
  `Guardian_Phone` varchar(20) DEFAULT NULL,
  `Department_ID` int DEFAULT NULL
);

INSERT INTO `student` (`Person_ID`, `Student_Roll_No`, `Program`, `Semester`, `Batch`, `Admission_Date`, `Study_Status`, `Emergency_Contact`, `Guardian_Name`, `Guardian_Phone`, `Department_ID`) VALUES
(1, 'CS-001', 'BS Computer Science', 4, '2024', '2024-09-01', 'Active', '03001111111', 'Ahmed Hassan', '03002222222', 1),
(2, 'SE-001', 'BS Software Engineering', 4, '2024', '2024-09-01', 'Active', '03003333333', 'Ahmed Ali', '03004444444', 2),
(4, 'EE-001', 'BS Electrical Engineering', 6, '2023', '2023-09-01', 'Active', '03005555555', 'Imran Malik', '03006666666', 3),
(6, 'STU-011', 'BS Electrical Engineering', 4, '2024', '2024-09-01', 'Active', '03200000011', 'Guardian 11', '03300000011', 1),
(7, 'STU-021', 'BS Computer Science', 6, '2024', '2024-09-01', 'Active', '03200000021', 'Guardian 21', '03300000021', 1),
(8, 'STU-012', 'BS Computer Science', 5, '2024', '2024-09-01', 'Active', '03200000012', 'Guardian 12', '03300000012', 1),
(9, 'STU-022', 'BS Software Engineering', 7, '2024', '2024-09-01', 'Active', '03200000022', 'Guardian 22', '03300000022', 1),
(10, 'STU-013', 'BS Software Engineering', 6, '2024', '2024-09-01', 'Active', '03200000013', 'Guardian 13', '03300000013', 1),
(11, 'STU-023', 'BS Electrical Engineering', 8, '2024', '2024-09-01', 'Active', '03200000023', 'Guardian 23', '03300000023', 1),
(12, 'STU-014', 'BS Electrical Engineering', 7, '2024', '2024-09-01', 'Active', '03200000014', 'Guardian 14', '03300000014', 1),
(13, 'STU-024', 'BS Computer Science', 1, '2024', '2024-09-01', 'Active', '03200000024', 'Guardian 24', '03300000024', 1),
(14, 'STU-015', 'BS Computer Science', 8, '2024', '2024-09-01', 'Active', '03200000015', 'Guardian 15', '03300000015', 1),
(15, 'STU-025', 'BS Software Engineering', 2, '2024', '2024-09-01', 'Active', '03200000025', 'Guardian 25', '03300000025', 1),
(16, 'STU-006', 'BS Computer Science', 7, '2024', '2024-09-01', 'Active', '03200000006', 'Guardian 6', '03300000006', 1),
(17, 'STU-016', 'BS Software Engineering', 1, '2024', '2024-09-01', 'Active', '03200000016', 'Guardian 16', '03300000016', 1),
(18, 'STU-026', 'BS Electrical Engineering', 3, '2024', '2024-09-01', 'Active', '03200000026', 'Guardian 26', '03300000026', 1),
(19, 'STU-007', 'BS Software Engineering', 8, '2024', '2024-09-01', 'Active', '03200000007', 'Guardian 7', '03300000007', 1),
(20, 'STU-017', 'BS Electrical Engineering', 2, '2024', '2024-09-01', 'Active', '03200000017', 'Guardian 17', '03300000017', 1),
(21, 'STU-027', 'BS Computer Science', 4, '2024', '2024-09-01', 'Active', '03200000027', 'Guardian 27', '03300000027', 1),
(22, 'STU-008', 'BS Electrical Engineering', 1, '2024', '2024-09-01', 'Active', '03200000008', 'Guardian 8', '03300000008', 1),
(23, 'STU-018', 'BS Computer Science', 3, '2024', '2024-09-01', 'Active', '03200000018', 'Guardian 18', '03300000018', 1),
(24, 'STU-028', 'BS Software Engineering', 5, '2024', '2024-09-01', 'Active', '03200000028', 'Guardian 28', '03300000028', 1),
(25, 'STU-009', 'BS Computer Science', 2, '2024', '2024-09-01', 'Active', '03200000009', 'Guardian 9', '03300000009', 1),
(26, 'STU-019', 'BS Software Engineering', 4, '2024', '2024-09-01', 'Active', '03200000019', 'Guardian 19', '03300000019', 1),
(27, 'STU-029', 'BS Electrical Engineering', 6, '2024', '2024-09-01', 'Active', '03200000029', 'Guardian 29', '03300000029', 1),
(28, 'STU-010', 'BS Software Engineering', 3, '2024', '2024-09-01', 'Active', '03200000010', 'Guardian 10', '03300000010', 1),
(29, 'STU-020', 'BS Electrical Engineering', 5, '2024', '2024-09-01', 'Active', '03200000020', 'Guardian 20', '03300000020', 1),
(30, 'STU-030', 'BS Computer Science', 7, '2024', '2024-09-01', 'Active', '03200000030', 'Guardian 30', '03300000030', 1),
(37, 'STU-031', 'BS Software Engineering', 8, '2024', '2024-09-01', 'Active', '03200000031', 'Guardian 31', '03300000031', 1),
(38, 'STU-032', 'BS Electrical Engineering', 1, '2024', '2024-09-01', 'Active', '03200000032', 'Guardian 32', '03300000032', 1);


CREATE TABLE `visitor` (
  `Visitor_ID` int NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `CNIC` varchar(15) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Organization` varchar(100) DEFAULT NULL,
  `Visit_Purpose` varchar(255) DEFAULT NULL,
  `Vehicle_Number` varchar(30) DEFAULT NULL,
  `Registration_Date` date DEFAULT NULL
);

INSERT INTO `visitor` (`Visitor_ID`, `First_Name`, `Last_Name`, `CNIC`, `Phone`, `Email`, `Organization`, `Visit_Purpose`, `Vehicle_Number`, `Registration_Date`) VALUES
(1, 'Hassan', 'Raza', '3520222222221', '03004445555', 'hassan@gmail.com', 'ABC Company', 'Official Meeting', 'LEA-1234', '2026-11-15'),
(2, 'Fatima', 'Noor', '3520222222222', '03005556666', 'fatima@gmail.com', 'XYZ Company', 'Academic Meeting', 'LEB-5678', '2026-11-15'),
(3, 'Kamran', 'Ali', '3520222222223', '03006667777', 'kamran@gmail.com', 'Private', 'Personal Visit', 'LEC-9012', '2026-11-15'),
(4, 'Visitor4', 'Guest', '35201-0000004', '03010000004', 'visitor4@gmail.com', 'XYZ Technologies', 'Campus Event', 'LEA-004', '2026-01-15'),
(5, 'Visitor5', 'Guest', '35201-0000005', '03010000005', 'visitor5@gmail.com', 'Private Organization', 'Administrative Work', 'LEA-005', '2026-01-15'),
(6, 'Visitor6', 'Guest', '35201-0000006', '03010000006', 'visitor6@gmail.com', 'ABC Corporation', 'Official Meeting', 'LEA-006', '2026-01-15'),
(7, 'Visitor7', 'Guest', '35201-0000007', '03010000007', 'visitor7@gmail.com', 'XYZ Technologies', 'Campus Event', 'LEA-007', '2026-01-15'),
(8, 'Visitor8', 'Guest', '35201-0000008', '03010000008', 'visitor8@gmail.com', 'Private Organization', 'Administrative Work', 'LEA-008', '2026-01-15'),
(9, 'Visitor9', 'Guest', '35201-0000009', '03010000009', 'visitor9@gmail.com', 'ABC Corporation', 'Official Meeting', 'LEA-009', '2026-01-15'),
(10, 'Visitor10', 'Guest', '35201-0000010', '03010000010', 'visitor10@gmail.com', 'XYZ Technologies', 'Campus Event', 'LEA-010', '2026-01-15'),
(11, 'Visitor11', 'Guest', '35201-0000011', '03010000011', 'visitor11@gmail.com', 'Private Organization', 'Administrative Work', 'LEA-011', '2026-01-15'),
(12, 'Visitor12', 'Guest', '35201-0000012', '03010000012', 'visitor12@gmail.com', 'ABC Corporation', 'Official Meeting', 'LEA-012', '2026-01-15'),
(13, 'Visitor13', 'Guest', '35201-0000013', '03010000013', 'visitor13@gmail.com', 'XYZ Technologies', 'Campus Event', 'LEA-013', '2026-01-15'),
(14, 'Visitor14', 'Guest', '35201-0000014', '03010000014', 'visitor14@gmail.com', 'Private Organization', 'Administrative Work', 'LEA-014', '2026-01-15'),
(15, 'Visitor15', 'Guest', '35201-0000015', '03010000015', 'visitor15@gmail.com', 'ABC Corporation', 'Official Meeting', 'LEA-015', '2026-01-15'),
(16, 'Visitor16', 'Guest', '35201-0000016', '03010000016', 'visitor16@gmail.com', 'XYZ Technologies', 'Campus Event', 'LEA-016', '2026-01-15'),
(17, 'Visitor17', 'Guest', '35201-0000017', '03010000017', 'visitor17@gmail.com', 'Private Organization', 'Administrative Work', 'LEA-017', '2026-01-15'),
(18, 'Visitor18', 'Guest', '35201-0000018', '03010000018', 'visitor18@gmail.com', 'ABC Corporation', 'Official Meeting', 'LEA-018', '2026-01-15'),
(19, 'Visitor19', 'Guest', '35201-0000019', '03010000019', 'visitor19@gmail.com', 'XYZ Technologies', 'Campus Event', 'LEA-019', '2026-01-15'),
(20, 'Visitor20', 'Guest', '35201-0000020', '03010000020', 'visitor20@gmail.com', 'Private Organization', 'Administrative Work', 'LEA-020', '2026-01-15'),
(21, 'Visitor21', 'Guest', '35201-0000021', '03010000021', 'visitor21@gmail.com', 'ABC Corporation', 'Official Meeting', 'LEA-021', '2026-01-15'),
(22, 'Visitor22', 'Guest', '35201-0000022', '03010000022', 'visitor22@gmail.com', 'XYZ Technologies', 'Campus Event', 'LEA-022', '2026-01-15'),
(23, 'Visitor23', 'Guest', '35201-0000023', '03010000023', 'visitor23@gmail.com', 'Private Organization', 'Administrative Work', 'LEA-023', '2026-01-15'),
(24, 'Visitor24', 'Guest', '35201-0000024', '03010000024', 'visitor24@gmail.com', 'ABC Corporation', 'Official Meeting', 'LEA-024', '2026-01-15'),
(25, 'Visitor25', 'Guest', '35201-0000025', '03010000025', 'visitor25@gmail.com', 'XYZ Technologies', 'Campus Event', 'LEA-025', '2026-01-15'),
(26, 'Visitor26', 'Guest', '35201-0000026', '03010000026', 'visitor26@gmail.com', 'Private Organization', 'Administrative Work', 'LEA-026', '2026-01-15'),
(27, 'Visitor27', 'Guest', '35201-0000027', '03010000027', 'visitor27@gmail.com', 'ABC Corporation', 'Official Meeting', 'LEA-027', '2026-01-15'),
(28, 'Visitor28', 'Guest', '35201-0000028', '03010000028', 'visitor28@gmail.com', 'XYZ Technologies', 'Campus Event', 'LEA-028', '2026-01-15'),
(29, 'Visitor29', 'Guest', '35201-0000029', '03010000029', 'visitor29@gmail.com', 'Private Organization', 'Administrative Work', 'LEA-029', '2026-01-15'),
(30, 'Visitor30', 'Guest', '35201-0000030', '03010000030', 'visitor30@gmail.com', 'ABC Corporation', 'Official Meeting', 'LEA-030', '2026-01-15');


CREATE TABLE `visitor_pass` (
  `Pass_ID` int NOT NULL,
  `Visitor_ID` int NOT NULL,
  `Issued_By_Staff_ID` int NOT NULL,
  `Host_Person_ID` int NOT NULL,
  `Access_Point_ID` int NOT NULL,
  `Issue_Date` date DEFAULT NULL,
  `Valid_From` datetime DEFAULT NULL,
  `Valid_Until` datetime DEFAULT NULL,
  `Pass_Status` varchar(30) DEFAULT NULL,
  `QR_Code` varchar(255) DEFAULT NULL,
  `Host_Approval_Status` varchar(30) DEFAULT NULL,
  `Host_Approval_Date` datetime DEFAULT NULL
);

INSERT INTO `visitor_pass` (`Pass_ID`, `Visitor_ID`, `Issued_By_Staff_ID`, `Host_Person_ID`, `Access_Point_ID`, `Issue_Date`, `Valid_From`, `Valid_Until`, `Pass_Status`, `QR_Code`, `Host_Approval_Status`, `Host_Approval_Date`) VALUES
(1, 1, 1, 3, 1, '2026-11-15', '2026-11-15 00:29:16', '2026-11-16 00:29:16', 'Active', 'QR-001', 'Approved', '2026-11-15 00:29:16'),
(2, 2, 2, 1, 2, '2026-11-15', '2026-11-15 00:29:16', '2026-11-16 00:29:16', 'Active', 'QR-002', 'Approved', '2026-11-15 00:29:16'),
(3, 3, 3, 2, 1, '2026-11-15', '2026-11-15 00:29:16', '2026-11-16 00:29:16', 'Active', 'QR-003', 'Approved', '2026-11-15 00:29:16'),
(4, 4, 4, 39, 4, '2026-11-15', '2026-11-15 08:00:00', '2026-11-15 18:00:00', 'Active', 'QR-004', 'Approved', '2026-11-14 10:00:00'),
(5, 5, 5, 40, 5, '2026-11-15', '2026-11-15 08:00:00', '2026-11-15 18:00:00', 'Active', 'QR-005', 'Approved', '2026-11-14 10:00:00'),
(6, 6, 6, 41, 6, '2026-11-15', '2026-11-15 08:00:00', '2026-11-15 18:00:00', 'Active', 'QR-006', 'Approved', '2026-11-14 10:00:00'),
(7, 7, 7, 42, 7, '2026-11-15', '2026-11-15 08:00:00', '2026-11-15 18:00:00', 'Active', 'QR-007', 'Approved', '2026-11-14 10:00:00'),
(8, 8, 8, 43, 8, '2026-11-15', '2026-11-15 08:00:00', '2026-11-15 18:00:00', 'Active', 'QR-008', 'Approved', '2026-11-14 10:00:00'),
(9, 9, 9, 44, 9, '2026-11-15', '2026-11-15 08:00:00', '2026-11-15 18:00:00', 'Active', 'QR-009', 'Approved', '2026-11-14 10:00:00'),
(10, 10, 10, 45, 10, '2026-11-15', '2026-11-15 08:00:00', '2026-11-15 18:00:00', 'Active', 'QR-010', 'Approved', '2026-11-14 10:00:00'),
(11, 11, 11, 46, 11, '2026-11-15', '2026-11-15 08:00:00', '2026-11-15 18:00:00', 'Active', 'QR-011', 'Approved', '2026-11-14 10:00:00'),
(12, 12, 12, 47, 12, '2026-11-15', '2026-11-15 08:00:00', '2026-11-15 18:00:00', 'Active', 'QR-012', 'Approved', '2026-11-14 10:00:00'),
(13, 13, 13, 48, 13, '2026-11-15', '2026-11-15 08:00:00', '2026-11-15 18:00:00', 'Active', 'QR-013', 'Approved', '2026-11-14 10:00:00'),
(14, 14, 14, 49, 14, '2026-11-15', '2026-11-15 08:00:00', '2026-11-15 18:00:00', 'Active', 'QR-014', 'Approved', '2026-11-14 10:00:00'),
(15, 15, 15, 50, 15, '2026-11-15', '2026-11-15 08:00:00', '2026-11-15 18:00:00', 'Active', 'QR-015', 'Approved', '2026-11-14 10:00:00'),
(16, 16, 16, 51, 16, '2026-11-15', '2026-11-15 08:00:00', '2026-11-15 18:00:00', 'Active', 'QR-016', 'Approved', '2026-11-14 10:00:00'),
(17, 17, 17, 52, 17, '2026-11-15', '2026-11-15 08:00:00', '2026-11-15 18:00:00', 'Active', 'QR-017', 'Approved', '2026-11-14 10:00:00'),
(18, 18, 18, 53, 18, '2026-11-15', '2026-11-15 08:00:00', '2026-11-15 18:00:00', 'Active', 'QR-018', 'Approved', '2026-11-14 10:00:00'),
(19, 19, 19, 54, 19, '2026-11-15', '2026-11-15 08:00:00', '2026-11-15 18:00:00', 'Active', 'QR-019', 'Approved', '2026-11-14 10:00:00'),
(20, 20, 20, 55, 20, '2026-11-15', '2026-11-15 08:00:00', '2026-11-15 18:00:00', 'Active', 'QR-020', 'Approved', '2026-11-14 10:00:00'),
(21, 21, 21, 56, 21, '2026-11-15', '2026-11-15 08:00:00', '2026-11-15 18:00:00', 'Active', 'QR-021', 'Approved', '2026-11-14 10:00:00'),
(22, 22, 22, 57, 22, '2026-11-15', '2026-11-15 08:00:00', '2026-11-15 18:00:00', 'Active', 'QR-022', 'Approved', '2026-11-14 10:00:00'),
(23, 23, 23, 58, 23, '2026-11-15', '2026-11-15 08:00:00', '2026-11-15 18:00:00', 'Active', 'QR-023', 'Approved', '2026-11-14 10:00:00'),
(24, 24, 24, 59, 24, '2026-11-15', '2026-11-15 08:00:00', '2026-11-15 18:00:00', 'Active', 'QR-024', 'Approved', '2026-11-14 10:00:00'),
(25, 25, 25, 60, 25, '2026-11-15', '2026-11-15 08:00:00', '2026-11-15 18:00:00', 'Active', 'QR-025', 'Approved', '2026-11-14 10:00:00'),
(26, 26, 26, 61, 26, '2026-11-15', '2026-11-15 08:00:00', '2026-11-15 18:00:00', 'Active', 'QR-026', 'Approved', '2026-11-14 10:00:00'),
(27, 27, 27, 62, 27, '2026-11-15', '2026-11-15 08:00:00', '2026-11-15 18:00:00', 'Active', 'QR-027', 'Approved', '2026-11-14 10:00:00'),
(28, 28, 28, 63, 28, '2026-11-15', '2026-11-15 08:00:00', '2026-11-15 18:00:00', 'Active', 'QR-028', 'Approved', '2026-11-14 10:00:00'),
(29, 29, 29, 64, 29, '2026-11-15', '2026-11-15 08:00:00', '2026-11-15 18:00:00', 'Active', 'QR-029', 'Approved', '2026-11-14 10:00:00'),
(30, 30, 30, 65, 30, '2026-11-15', '2026-11-15 08:00:00', '2026-11-15 18:00:00', 'Active', 'QR-030', 'Approved', '2026-11-14 10:00:00');




ALTER TABLE person ADD COLUMN Profile_Remarks VARCHAR(100) DEFAULT 'Registered Person';
SELECT * FROM person;

ALTER TABLE security_staff ADD COLUMN Emergency_Contact VARCHAR(20);
SELECT * FROM security_staff;

ALTER TABLE access_point ADD COLUMN Maintenance_Remarks VARCHAR(100);
SELECT * FROM access_point;

ALTER TABLE id_card ADD COLUMN Card_Condition VARCHAR(20) DEFAULT 'Good';
SELECT * FROM id_card;

ALTER TABLE security_incident ADD COLUMN Review_Notes VARCHAR(150);
SELECT * FROM security_incident;

ALTER TABLE visitor ADD COLUMN Visitor_Category VARCHAR(30) DEFAULT 'General';
SELECT * FROM visitor;

-- Rename a column in department.
ALTER TABLE department RENAME COLUMN Department_Status TO Department_State;
SELECT * FROM department;

-- Modify the phone column size.
ALTER TABLE person MODIFY COLUMN Phone VARCHAR(25);
SELECT * FROM person;

-- Drop only the temporary column added above.
ALTER TABLE visitor DROP COLUMN Visitor_Category;
SELECT * FROM visitor;



CREATE TABLE Drop_Demo (
    Demo_ID INT PRIMARY KEY,
    Demo_Name VARCHAR(50)
);

INSERT INTO Drop_Demo VALUES (1, 'Temporary Campus Record');
SELECT * FROM Drop_Demo;
DROP TABLE Drop_Demo;



SHOW TABLES;

SELECT * FROM person;
SELECT First_Name, Last_Name, Phone, Email
FROM person
ORDER BY Person_ID;

SELECT * FROM student;
SELECT Student_Roll_No, Program, Semester, Study_Status
FROM student
ORDER BY Person_ID;

SELECT * FROM faculty;
SELECT Employee_No, Designation, Qualification, Department_ID
FROM faculty
ORDER BY Person_ID;

SELECT * FROM security_staff;
SELECT First_Name, Last_Name, Shift, Employment_Status
FROM security_staff
ORDER BY Security_Staff_ID;

SELECT * FROM access_point;
SELECT Point_Name, Building_Name, Point_Type, Operational_Status
FROM access_point
ORDER BY Access_Point_ID;

SELECT * FROM access_log;
SELECT Log_ID, Event_Type, Event_Date, Event_Time, Access_Result
FROM access_log
ORDER BY Log_ID;

SELECT * FROM access_permission;
SELECT Permission_ID, Person_ID, Access_Point_ID, Permission_Type, Permission_Status
FROM access_permission
ORDER BY Permission_ID;

SELECT * FROM id_card;
SELECT Card_Number, Card_Type, Card_Status, Expiry_Date
FROM id_card
ORDER BY Card_ID;

SELECT * FROM visitor;
SELECT First_Name, Last_Name, Organization, Visit_Purpose
FROM visitor
ORDER BY Visitor_ID;

SELECT * FROM visitor_pass;
SELECT Pass_ID, Visitor_ID, Pass_Status, Host_Approval_Status, Valid_Until
FROM visitor_pass
ORDER BY Pass_ID;

SELECT * FROM security_incident;
SELECT Incident_ID, Incident_Type, Incident_Date, Incident_Status
FROM security_incident
ORDER BY Incident_ID;

SELECT * FROM department;
SELECT Department_Name, Department_Code, Building_Name, Department_Status
FROM department
ORDER BY Department_ID;

SELECT * FROM numbers;

SELECT * FROM security_staff_access_assignment;
SELECT Assignment_ID, Security_Staff_ID, Access_Point_ID, Assigned_Date, Assignment_Status
FROM security_staff_access_assignment
ORDER BY Assignment_ID;


SET SQL_SAFE_UPDATES = 0;

UPDATE person
SET Phone = '03009990001'
WHERE Person_ID = 1;

SELECT * FROM person WHERE Person_ID = 1;

UPDATE security_staff
SET Employment_Status = 'Active'
WHERE Security_Staff_ID = 4;

SELECT * FROM security_staff WHERE Security_Staff_ID = 4;

UPDATE access_point
SET Operational_Status = 'Operational'
WHERE Access_Point_ID = 5;
SELECT * FROM access_point WHERE Access_Point_ID = 5;

UPDATE id_card
SET Card_Status = 'Active'
WHERE Card_ID = 4;
SELECT * FROM id_card WHERE Card_ID = 4;

UPDATE security_incident
SET Incident_Status = 'Under Review'
WHERE Incident_ID = 4;
SELECT * FROM security_incident WHERE Incident_ID = 4;



-- 1. Find person with ID 5.
SELECT * FROM person WHERE Person_ID = 5;

-- 2. Find people whose gender is not Male.
SELECT * FROM person WHERE Gender <> 'Male';

-- 3. Find security staff whose employment status is not Active.
SELECT * FROM security_staff WHERE Employment_Status != 'Active';

-- 4. Find access points with ID less than 10.
SELECT * FROM access_point WHERE Access_Point_ID < 10;

-- 5. Find people registered after a selected date.
SELECT * FROM person WHERE Registration_Date > '2026-01-01';

-- 6. Find students in semester 4 or lower.
SELECT * FROM student WHERE Semester <= 4;

-- 7. Find students in semester 6 or above.
SELECT * FROM student WHERE Semester >= 6;

-- 8. Find active departments in Block A.
SELECT * FROM department
WHERE Department_State = 'Active' AND Building_Name = 'Block A';

-- 9. Find people from Lahore or Islamabad.
SELECT * FROM person
WHERE Address = 'Lahore' OR Address = 'Islamabad';

-- 10. Find incidents that are not Resolved.
SELECT * FROM security_incident
WHERE NOT Incident_Status = 'Resolved';

-- 11. Show access log IDs with an adjusted numeric value.
SELECT Log_ID, Access_Point_ID, Access_Point_ID + 5 AS Adjusted_Access_Point
FROM access_log
WHERE Log_ID <= 10;

-- 12. Show a calculated permission validity period indicator.
SELECT Permission_ID, Person_ID, Access_Point_ID,
       Access_Point_ID - 1 AS Previous_Point_Number
FROM access_permission
WHERE Permission_ID <= 10;

-- 13. Calculate remaining card validity in days from a fixed date.
SELECT Card_ID, Card_Number, Expiry_Date,
       DATEDIFF(Expiry_Date, '2026-11-15') AS Days_To_Expiry
FROM id_card
WHERE Card_ID <= 10;

-- 14. Calculate a simple incident number multiplier.
SELECT Incident_ID, Incident_ID * 2 AS Double_Incident_ID
FROM security_incident
WHERE Incident_ID <= 10;

-- 15. List distinct person addresses.
SELECT DISTINCT Address FROM person;

-- 16. Count people by gender.
SELECT Gender, COUNT(*) AS Total_People
FROM person
GROUP BY Gender;

-- 17. Show genders with at least 5 people.
SELECT Gender, COUNT(*) AS Total_People
FROM person
GROUP BY Gender
HAVING COUNT(*) >= 5;

-- 18. Find access logs between two log IDs.
SELECT * FROM access_log
WHERE Log_ID BETWEEN 5 AND 20;

-- 19. Find people whose first name starts with A.
SELECT * FROM person
WHERE First_Name LIKE 'A%';

-- 20. Find incidents with selected IDs.
SELECT * FROM security_incident
WHERE Incident_ID IN (1, 5, 10, 15);

-- 21. Show the first 10 security staff records.
SELECT * FROM security_staff
ORDER BY Security_Staff_ID DESC
LIMIT 10;

-- 22. Find active visitor passes.
SELECT * FROM visitor_pass
WHERE Pass_Status = 'Active';

-- 23. Find approved visitor passes.
SELECT * FROM visitor_pass
WHERE Host_Approval_Status = 'Approved';

-- 24. Find female people.
SELECT * FROM person
WHERE Gender = 'Female';

-- 25. Find cards expiring before the selected date.
SELECT * FROM id_card
WHERE Expiry_Date < '2027-01-01';

-- 26. Find active access permissions.
SELECT * FROM access_permission
WHERE Permission_Status = 'Active';

-- 27. Find access points that are operational.
SELECT * FROM access_point
WHERE Operational_Status IN ('Active', 'Operational');

-- 28. Find incidents reported as Unauthorized Access.
SELECT * FROM security_incident
WHERE Incident_Type = 'Unauthorized Access';

-- 29. Find security staff assigned to the Night shift.
SELECT * FROM security_staff
WHERE Shift = 'Night';

-- 30. Sort access events by date and time, newest first.
SELECT * FROM access_log
ORDER BY Event_Date DESC, Event_Time DESC;




-- INNER JOIN 1: Students with their names.
SELECT s.Student_Roll_No, s.Program, p.First_Name, p.Last_Name
FROM student s
INNER JOIN person p ON s.Person_ID = p.Person_ID;

-- INNER JOIN 2: Access logs with access point names.
SELECT al.Log_ID, al.Event_Type, al.Access_Result, ap.Point_Name
FROM access_log al
INNER JOIN access_point ap ON al.Access_Point_ID = ap.Access_Point_ID;

-- LEFT JOIN 1: All people and any ID cards.
SELECT p.Person_ID, p.First_Name, p.Last_Name, c.Card_Number
FROM person p
LEFT JOIN id_card c ON p.Person_ID = c.Person_ID;

-- LEFT JOIN 2: All access points and their incidents, if any.
SELECT ap.Access_Point_ID, ap.Point_Name, si.Incident_ID, si.Incident_Type
FROM access_point ap
LEFT JOIN security_incident si ON ap.Access_Point_ID = si.Access_Point_ID;

-- RIGHT JOIN 1: All departments and matching students.
SELECT d.Department_ID, d.Department_Name, s.Student_Roll_No
FROM student s
RIGHT JOIN department d ON s.Department_ID = d.Department_ID;

-- RIGHT JOIN 2: All visitors and any visitor passes.
SELECT v.Visitor_ID, v.First_Name, v.Last_Name, vp.Pass_ID, vp.Pass_Status
FROM visitor_pass vp
RIGHT JOIN visitor v ON vp.Visitor_ID = v.Visitor_ID;

-- FULL OUTER JOIN equivalent 1: All people and any cards (MySQL uses UNION).
SELECT p.Person_ID, p.First_Name, c.Card_ID
FROM person p
LEFT JOIN id_card c ON p.Person_ID = c.Person_ID
UNION
SELECT p.Person_ID, p.First_Name, c.Card_ID
FROM person p
RIGHT JOIN id_card c ON p.Person_ID = c.Person_ID;

-- FULL OUTER JOIN equivalent 2: All access points and related logs.
SELECT ap.Access_Point_ID, ap.Point_Name, al.Log_ID
FROM access_point ap
LEFT JOIN access_log al ON ap.Access_Point_ID = al.Access_Point_ID
UNION
SELECT ap.Access_Point_ID, ap.Point_Name, al.Log_ID
FROM access_point ap
RIGHT JOIN access_log al ON ap.Access_Point_ID = al.Access_Point_ID;

-- CROSS JOIN 1: First three access points paired with first three staff.
SELECT ap.Point_Name, ss.First_Name, ss.Last_Name
FROM access_point ap
CROSS JOIN security_staff ss
WHERE ap.Access_Point_ID <= 3 AND ss.Security_Staff_ID <= 3;

-- CROSS JOIN 2: First two departments paired with first two access points.
SELECT d.Department_Name, ap.Point_Name
FROM department d
CROSS JOIN access_point ap
WHERE d.Department_ID <= 2 AND ap.Access_Point_ID <= 2;

-- SELF JOIN 1: People who have the same gender.
SELECT p1.Person_ID, p1.First_Name, p2.Person_ID AS Other_Person_ID, p2.First_Name AS Other_First_Name
FROM person p1
JOIN person p2
ON p1.Gender = p2.Gender AND p1.Person_ID < p2.Person_ID;

-- SELF JOIN 2: People registered earlier than another person.
SELECT p1.First_Name AS Earlier_Registrant, p1.Registration_Date,
       p2.First_Name AS Later_Registrant, p2.Registration_Date AS Later_Date
FROM person p1
JOIN person p2 ON p1.Registration_Date < p2.Registration_Date
WHERE p1.Person_ID <= 5 AND p2.Person_ID <= 10;



SELECT * FROM person
WHERE Person_ID > (SELECT AVG(Person_ID) FROM person);

-- 2. Find access points whose IDs are above the average access point ID.
SELECT * FROM access_point
WHERE Access_Point_ID > (SELECT AVG(Access_Point_ID) FROM access_point);

-- 3. Find people who have an ID card using IN.
SELECT * FROM person
WHERE Person_ID IN (SELECT Person_ID FROM id_card);

-- 4. Find people who do not have an ID card using NOT IN.
SELECT * FROM person
WHERE Person_ID NOT IN (SELECT Person_ID FROM id_card);

-- 5. Find visitors who have been issued a pass using EXISTS.
SELECT v.*
FROM visitor v
WHERE EXISTS (
    SELECT 1 FROM visitor_pass vp
    WHERE vp.Visitor_ID = v.Visitor_ID
);

-- 6. Find visitors without an issued pass using NOT EXISTS.
SELECT v.*
FROM visitor v
WHERE NOT EXISTS (
    SELECT 1 FROM visitor_pass vp
    WHERE vp.Visitor_ID = v.Visitor_ID
);

-- 7. Find access logs whose Log_ID is greater than the maximum among the first 20.
SELECT * FROM access_log
WHERE Log_ID > (SELECT MAX(Log_ID) FROM access_log WHERE Log_ID <= 20);

-- 8. Find the person or people with the smallest Person_ID.
SELECT * FROM person
WHERE Person_ID = (SELECT MIN(Person_ID) FROM person);

-- 9. Find the access point with the highest Access_Point_ID.
SELECT * FROM access_point
WHERE Access_Point_ID = (SELECT MAX(Access_Point_ID) FROM access_point);

-- 10. Find people whose Person_ID is greater than ANY of the first five IDs.
SELECT * FROM person
WHERE Person_ID > ANY (SELECT Person_ID FROM person WHERE Person_ID <= 5);

-- 11. Find security staff whose ID is greater than ALL staff IDs in the Morning shift.
SELECT * FROM security_staff
WHERE Security_Staff_ID > ALL (
    SELECT Security_Staff_ID FROM security_staff WHERE Shift = 'Morning'
);

-- 12. Find incidents whose ID is above the average incident ID.
SELECT * FROM security_incident
WHERE Incident_ID > (SELECT AVG(Incident_ID) FROM security_incident);

-- 13. Find access logs belonging to access points in the Main Campus building.
SELECT * FROM access_log
WHERE Access_Point_ID IN (
    SELECT Access_Point_ID FROM access_point WHERE Building_Name = 'Main Campus'
);

-- 14. Find students who belong to departments marked Active.
SELECT * FROM student
WHERE Department_ID IN (
    SELECT Department_ID FROM department WHERE Department_State = 'Active'
);

-- 15. Find access points that have at least one access log.
SELECT * FROM access_point
WHERE Access_Point_ID IN (SELECT Access_Point_ID FROM access_log);

-- 16. Correlated subquery: find each person who has at least one access permission.
SELECT p.*
FROM person p
WHERE EXISTS (
    SELECT 1 FROM access_permission ap
    WHERE ap.Person_ID = p.Person_ID
);

-- 17. Correlated subquery: find staff whose ID is greater than the average staff ID in their shift.
SELECT ss.*
FROM security_staff ss
WHERE ss.Security_Staff_ID > (
    SELECT AVG(ss2.Security_Staff_ID)
    FROM security_staff ss2
    WHERE ss2.Shift = ss.Shift
);

-- 18. Nested subquery: find people whose Person_ID equals the maximum student Person_ID.
SELECT * FROM person
WHERE Person_ID = (
    SELECT MAX(Person_ID) FROM student
);

-- 19. Find visitor passes issued by staff whose ID is above the average staff ID.
SELECT * FROM visitor_pass
WHERE Issued_By_Staff_ID IN (
    SELECT Security_Staff_ID
    FROM security_staff
    WHERE Security_Staff_ID > (SELECT AVG(Security_Staff_ID) FROM security_staff)
);

-- 20. Find incidents associated with access points that have more logs than the average log count per access point.
SELECT * FROM security_incident
WHERE Access_Point_ID IN (
    SELECT Access_Point_ID
    FROM access_log
    GROUP BY Access_Point_ID
    HAVING COUNT(*) > (
        SELECT AVG(Log_Count)
        FROM (
            SELECT COUNT(*) AS Log_Count
            FROM access_log
            GROUP BY Access_Point_ID
        ) AS Log_Summary
    )
);


SELECT 'access_log' AS Table_Name, COUNT(*) AS Total_Rows FROM access_log
UNION ALL SELECT 'access_permission', COUNT(*) FROM access_permission
UNION ALL SELECT 'access_point', COUNT(*) FROM access_point
UNION ALL SELECT 'department', COUNT(*) FROM department
UNION ALL SELECT 'faculty', COUNT(*) FROM faculty
UNION ALL SELECT 'id_card', COUNT(*) FROM id_card
UNION ALL SELECT 'numbers', COUNT(*) FROM numbers
UNION ALL SELECT 'person', COUNT(*) FROM person
UNION ALL SELECT 'security_incident', COUNT(*) FROM security_incident
UNION ALL SELECT 'security_staff', COUNT(*) FROM security_staff
UNION ALL SELECT 'security_staff_access_assignment', COUNT(*) FROM security_staff_access_assignment
UNION ALL SELECT 'student', COUNT(*) FROM student
UNION ALL SELECT 'visitor', COUNT(*) FROM visitor
UNION ALL SELECT 'visitor_pass', COUNT(*) FROM visitor_pass;

