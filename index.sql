index.sql

CREATE TABLE Room_Types (
  id INT PRIMARY KEY,
  Name VARCHAR(255) NOT NULL,
  Price DECIMAL(10,2) NOT NULL,
  Capacity INT NOT NULL
);
CREATE TABLE Room (
  room_id INT PRIMARY KEY,
  room_number VARCHAR(20) NOT NULL,
  status VARCHAR(20) NOT NULL,
  room_type_id INT NOT NULL,
  FOREIGN KEY (room_type_id) REFERENCES Room_Type(id)
);
CREATE TABLE Guestss (
  id INT PRIMARY KEY,
  id_passport VARCHAR(20), 
  fullnames VARCHAR(255) NOT NULL,
  email VARCHAR(255), 
  phone VARCHAR(20), 
  address VARCHAR(255)
);
CREATE TABLE Booking (
  booking_id VARCHAR(20) PRIMARY KEY, 
  room_id_fk INT NOT NULL,
  guest_id_fk INT NOT NULL,
  check_in DATE NOT NULL,
  check_out DATE NOT NULL,
  price FLOAT NOT NULL,
  FOREIGN KEY (room_id_fk) REFERENCES Room(room_id),
  FOREIGN KEY (guest_id_fk) REFERENCES Guestss(id)
);
CREATE TABLE Payments (
  payment_id INT PRIMARY KEY,
  booking_id VARCHAR(20) NOT NULL,
  amount FLOAT NOT NULL,
  date_payment DATE NOT NULL,
  FOREIGN KEY (booking_id) REFERENCES Booking(booking_id)
);
INSERT INTO Room_Type (id, Name, Price, Capacity) VALUES (1, 'queen', 1000.00, 2);
INSERT INTO Room_Type (id, Name, Price, Capacity) VALUES (2, 'abriale', 1200.00, 3);
INSERT INTO Room_Type (id, Name, Price, Capacity) VALUES (3, 'orion', 800.00, 2);
INSERT INTO Room_Type (id, Name, Price, Capacity) VALUES (4, 'maelyse', 500.00, 1);
INSERT INTO Room_Type (id, Name, Price, Capacity) VALUES (5, 'giana', 1000.00, 2);
INSERT INTO Room_Type (id, Name, Price, Capacity) VALUES (6, 'Studio', 1200.00, 4);
INSERT INTO Room_Type (id, Name, Price, Capacity) VALUES (7, 'Suite', 3000.00, 2);
INSERT INTO Room_Type (id, Name, Price, Capacity) VALUES (8, 'Connecting rooms', 1500.00, 1);
INSERT INTO Room_Type (id, Name, Price, Capacity) VALUES (9, 'Presidential Suites', 5800.00, 2);
INSERT INTO Room_Type (id, Name, Price, Capacity) VALUES (111, 'Junior Suites', 700.00, 1);
select *from Room_Type;
INSERT INTO Room (room_id,room_number, status,room_type_id)
  VALUES (1,'101',  'Available',1); 
  INSERT INTO Room (room_id,room_number, status,room_type_id)
  VALUES (2,'203',  'Occupied',2);   
  INSERT INTO Room (room_id,room_number, status,room_type_id)
  VALUES (3,'312',  'Cleaning',3);
INSERT INTO Room (room_id,room_number, status,room_type_id)
  VALUES (4,'401',  'Available',1); 
  INSERT INTO Room (room_id,room_number, status,room_type_id)
  VALUES (5,'503',  'Occupied',5);   
  INSERT INTO Room (room_id,room_number, status,room_type_id)
  VALUES (6,'612',  'Available',7);
INSERT INTO Room (room_id,room_number, status,room_type_id)
  VALUES (7,'701',  'Available',1); 
  INSERT INTO Room (room_id,room_number, status,room_type_id)
  VALUES (8,'803',  'Occupied',5);   
  INSERT INTO Room (room_id,room_number, status,room_type_id)
  VALUES (9,'912',  'Cleaning',3);
 INSERT INTO Room (room_id,room_number, status,room_type_id)
  VALUES (10,'1012',  'Cleaning',10);

INSERT INTO Guestss (id,id_passport, fullnames, email, phone, address)VALUES(1,'RW12333','giana','giana@gmail.com','0781678947','KN123ST');
INSERT INTO Guestss (id,id_passport, fullnames, email, phone, address)VALUES(2,'RW14433','Belyse','belyse@gmail.com','0791678947','KG123ST');
INSERT INTO Guestss (id,id_passport, fullnames, email, phone, address)VALUES(3,'RW144303','Diane','diane@gmail.com','0791678947','KG123ST');
INSERT INTO Guestss (id,id_passport, fullnames, email, phone, address)VALUES(4,'RW144303','mimi','mimi@gmail.com','0791678947','KG123ST');
INSERT INTO Guestss (id,id_passport, fullnames, email, phone, address)VALUES(5,'RW09144303','Jeannette','jane@gmail.com','0791678947','KG123ST');
INSERT INTO Guestss (id,id_passport, fullnames, email, phone, address)VALUES(6,'RW09144303','Aline','Aline@gmail.com','0781678947','KG223ST');
 INSERT INTO Guestss (id,id_passport, fullnames, email, phone, address)VALUES(7,'RW0879144303','orion','orion@gmail.com','0781678947','KG223ST');
INSERT INTO Guestss (id,id_passport, fullnames, email, phone, address)VALUES(8,'RW049144303','maelyse','maelyse@gmail.com','0781678947','KG223ST');

INSERT INTO Booking (booking_id, room_id_fk, guest_id_fk, check_in, check_out, price) 
VALUES ('B001', '1', '2', '2004-12-12', '2004-12-14', 1000.00);

INSERT INTO Booking (booking_id, room_id_fk, guest_id_fk, check_in, check_out, price) 
VALUES ('B002', '2', '3', '2004-12-13', '2004-12-14', 1000.00);

INSERT INTO Booking (booking_id, room_id_fk, guest_id_fk, check_in, check_out, price) 
VALUES ('B003', '3', '3', '2004-12-13', '2004-12-14', 1000.00);

INSERT INTO Booking (booking_id, room_id_fk, guest_id_fk, check_in, check_out, price) 
VALUES ('B004', '3', '6', '2024-12-15', '2025-01-14', 1000.00);

INSERT INTO Booking (booking_id, room_id_fk, guest_id_fk, check_in, check_out, price) 
VALUES ('B005', '6', '6', '2024-12-15', '2025-01-14', 1000.00);

INSERT INTO Booking (booking_id, room_id_fk, guest_id_fk, check_in, check_out, price) 
VALUES ('B006', '10', '5', '2024-12-15', '2025-01-14', 1000.00);

INSERT INTO Booking (booking_id, room_id_fk, guest_id_fk, check_in, check_out, price) 
VALUES ('B007', '7', '7', '2024-12-15', '2025-01-14', 1000.00);

INSERT INTO Booking (booking_id, room_id_fk, guest_id_fk, check_in, check_out, price) 
VALUES ('B008', '5', '10', '2025-01-15', '2025-02-14', 1000.00);

INSERT INTO Booking (booking_id, room_id_fk, guest_id_fk, check_in, check_out, price) 
VALUES ('B009', '10', '1', '2025-01-17', '2025-03-14', 1000.00);

INSERT INTO Booking (booking_id, room_id_fk, guest_id_fk, check_in, check_out, price) 
VALUES ('B010', '9', '6', '2025-01-17', '2025-03-14', 1000.00);
 INSERT INTO Payments (payment_id, booking_id, amount, date_payment)
  VALUES (1, 'B001', 1000.00, '12/JAN/2004');
 INSERT INTO Payments (payment_id, booking_id, amount, date_payment)
  VALUES (2, 'B002', 1000.00, '12/JAN/2004');
 INSERT INTO Payments(payment_id, booking_id, amount, date_payment)
  VALUES (3, 'B002', 1000.00, '17/JAN/2004');
 INSERT INTO Payments(payment_id, booking_id, amount, date_payment)
  VALUES (4, 'B005', 1000.00, '20/JAN/2004');
 INSERT INTO Payments (payment_id, booking_id, amount, date_payment)
  VALUES (5, 'B006', 1000.00, '20/JAN/2044');
 INSERT INTO Payments (payment_id, booking_id, amount, date_payment)
  VALUES (6, 'B007', 1000.00, '20/JAN/2044');
 INSERT INTO Payments (payment_id, booking_id, amount, date_payment)
  VALUES (7, 'B003', 1000.00, '20/JAN/2044');
 INSERT INTO Payments (payment_id, booking_id, amount, date_payment)
  VALUES (8, 'B008', 1000.00, '29/JAN/2044');
 INSERT INTO Payments (payment_id, booking_id, amount, date_payment)
 VALUES (9, 'B009', 1000.00, '29/JAN/2044');
 INSERT INTO Payments(payment_id, booking_id, amount, date_payment)
 VALUES (10, 'B010', 1000.00, '29/FEB/2044'); 
 
update Room_Types
set capacity=7 ,Price=3000
where Name='Suite';
select *from Guestss;
select *from Booking;
select *from Room_Type;
select *from payments;
delete from payments;
SELECT 
  b.booking_id,
  g.fullnames AS guest_name,
  r.room_number,
  rt.Name AS room_type,
  b.check_in,
  b.check_out,
  b.price
FROM 
  Booking b
JOIN 
  Guestss g ON b.guest_id_fk = g.id
JOIN 
  Room r ON b.room_id_fk = r.room_id
JOIN 
  Room_Types rt ON r.room_type_id = rt.id;

UPDATE Room_Types
SET Price = 3500.00
WHERE Name = 'Suite';
INSERT INTO Booking (booking_id, room_id_fk, guest_id_fk, check_in, check_out, price) 
VALUES ('B011', 8, 4, '2024-12-01', '2024-12-10', 1200.00);

SELECT 
  b.booking_id, 
  b.check_in, 
  b.check_out, 
  b.price 
FROM 
  Booking b 
JOIN 
  Guestss g ON b.guest_id_fk = g.id 
WHERE 
  g.fullnames = 'Diane';
  SELECT 
  rt.Name AS room_type,
  COUNT(b.booking_id) AS number_of_bookings
FROM 
  Booking b
JOIN 
  Room r ON b.room_id_fk = r.room_id
JOIN 
  Room_Types rt ON r.room_type_id = rt.id
GROUP BY 
  rt.Name;






















