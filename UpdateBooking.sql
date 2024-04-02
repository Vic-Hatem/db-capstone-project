DROP PROCEDURE IF EXISTS UpdateBooking;
DELIMITER $$ 
CREATE PROCEDURE UpdateBooking(IN Booking_ID INT, IN BookingDate DATE) 
BEGIN
UPDATE Bookings SET date = BookingDate WHERE BookingID = Booking_ID; 
SELECT CONCAT("Booking ", BookingID, " updated") AS "Confirmation" 
From Bookings;
END$$ 
DELIMITER ; 
CALL UpdateBooking(9, "2022-12-17");