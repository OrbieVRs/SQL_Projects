CREATE DATABASE DESTINY;

use DESTINY;

CREATE TABLE employee (
    employee_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
    employee_fname VARCHAR(50) NOT NULL,
    employee_lname VARCHAR(50) NOT NULL,
    employee_contact VARCHAR(30) NOT NULL,
    employee_shift INT NOT NULL
);

INSERT INTO employee 
    (employee_fname, employee_lname, employee_contact, employee_shift)
    VALUES
    ('Zungrix', 'Xen', '384-576-2899', 1),
    ('Qeraal', 'Gilul', '384-784-4856', 2),
    ('Ediz', 'Jaaj', '385-475-3944', 4),
    ('Angril', 'Zirav', '384-485-4855', 3),
    ('Gudruch', 'Maam', '768-288-3749', 5);

SELECT * FROM employee;

CREATE TABLE customer (
    customer_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
    customer_name VARCHAR(100) NOT NULL,
    customer_address VARCHAR(100) NOT NULL,
    customer_city VARCHAR(30) NOT NULL,
    customer_postal VARCHAR(15) NOT NULL,
    customer_country VARCHAR(30) NOT NULL
);

INSERT INTO customer
    (customer_name, customer_address, customer_city, customer_postal, customer_country)
    VALUES
    ('Tumat', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
    ('Radox', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico'),
    ('Yatrex', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico'),
    ('Vatrorult', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
    ('Kouvuc', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden'),
    ('Reevos', 'Forsterstr. 57', 'Mannheim', '68306', 'Germany'),
    ('Surec', '24, place Kléber', 'Strasbourg', '67000', 'France'),
    ('Eeche', 'C/ Araquil, 67', 'Madrid', '28023', 'Spain'),
    ('Vreechoruu', '12, rue des Bouchers', 'Marseille', '13008', 'France'),
    ('Qelvitch', '23 Tsawassen Blvd.', 'Tsawassen', 'T2F 8M4', 'Canada'),
    ('Kelvulus', 'Fauntleroy Circus', 'London', 'EC2 5NT', 'UK'),
    ('Celvelihn', 'Cerrito 333', 'Buenos Aires', '1010', 'Argentina'),
    ('Fudaax', 'Sierras de Granada 9993', 'México D.F.', '05022', 'Mexico');

SELECT * FROM customer;

CREATE TABLE shift (
    shift_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
    shift_time VARCHAR(30)
);

INSERT INTO shift
    (shift_time)
    VALUES
    ('00:00 - 08:00'),
    ('04:00 - 12:00'),
    ('08:00 - 16:00'),
    ('12:00 - 20:00'),
    ('16:00 - 00:00');

SELECT * FROM shift;

SELECT 
    a1.employee_shift, a2.shift_id, a2.shift_time 
    FROM employee a1
    INNER JOIN shift a2 ON a2.shift_id = employee.employee_shift;