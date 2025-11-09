-- Create a sample database
CREATE DATABASE companydb;
USE companydb;

-- Create two users: admin and staff
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin123';
CREATE USER 'staff'@'localhost' IDENTIFIED BY 'staff123';

-- Grant privileges
GRANT ALL PRIVILEGES ON companydb.* TO 'admin'@'localhost';
GRANT SELECT, INSERT ON companydb.* TO 'staff'@'localhost';

-- Apply changes
FLUSH PRIVILEGES;

-- To verify privileges
SHOW GRANTS FOR 'admin'@'localhost';
SHOW GRANTS FOR 'staff'@'localhost';
