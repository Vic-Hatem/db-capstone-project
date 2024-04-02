DROP PROCEDURE IF EXISTS AddBooking; 
DELIMITER $$ 
CREATE PROCEDURE AddBooking(IN Booking_ID INT, IN Customer_ID INT, IN Table_Number INT, IN BookingDate DATE)
BEGIN 
INSERT INTO Bookings (BookingID, CustomerID, TableNumber, date) VALUES (Booking_ID, Customer_ID, Table_Number, BookingDate); 
SELECT "New booking added" AS "Confirmation";
END$$ DELIMITER ; 
CALL AddBooking(10, 3, 4, "2022-12-30");