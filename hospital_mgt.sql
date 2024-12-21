CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Location VARCHAR(100)
);

CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Specialization VARCHAR(100),
    Phone VARCHAR(15),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Patients Table
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Age INT,
    Gender ENUM('Male', 'Female', 'Other'),
    Phone VARCHAR(15)
);

-- Appointments Table
CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY AUTO_INCREMENT,
    Date DATE NOT NULL,
    Time TIME NOT NULL,
    Status VARCHAR(50),
    DoctorID INT,
    PatientID INT,
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);
-- Insert into Departments
INSERT INTO Departments (Name, Location) VALUES
('Cardiology', 'Building A'),
('Orthopedics', 'Building B'),
('Neurology', 'Building C'),
('Pediatrics', 'Building D'),
('Oncology', 'Building E');

-- Insert into Doctors
INSERT INTO Doctors (Name, Specialization, Phone, DepartmentID) VALUES
('Dr. John Doe', 'Cardiologist', '1234567890', 1),
('Dr. Jane Smith', 'Orthopedic Surgeon', '2345678901', 2),
('Dr. Alan Grant', 'Neurologist', '3456789012', 3),
('Dr. Sarah Connor', 'Pediatrician', '4567890123', 4),
('Dr. Emma Brown', 'Oncologist', '5678901234', 5);

-- Insert into Patients
INSERT INTO Patients (Name, Age, Gender, Phone) VALUES
('Alice Johnson', 30, 'Female', '7890123456'),
('Bob Williams', 45, 'Male', '8901234567'),
('Charlie Brown', 20, 'Male', '9012345678'),
('Diana Prince', 35, 'Female', '0123456789'),
('Edward Cullen', 50, 'Male', '1234509876');

-- Insert into Appointments
INSERT INTO Appointments (Date, Time, Status, DoctorID, PatientID) VALUES
('2024-12-22', '10:00:00', 'Scheduled', 1, 1),
('2024-12-23', '11:30:00', 'Completed', 2, 2),
('2024-12-24', '14:00:00', 'Canceled', 3, 3),
('2024-12-25', '09:15:00', 'Scheduled', 4, 4),
('2024-12-26', '16:45:00', 'Rescheduled', 5, 5);

