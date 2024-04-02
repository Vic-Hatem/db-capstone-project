DROP PROCEDURE IF EXISTS CancelBooking; 
DELIMITER $$ 
CREATE PROCEDURE CancelBooking(IN Booking_ID INT) 
BEGIN 
DELETE FROM Bookings WHERE BookingID = Booking_ID; SELECT CONCAT("Booking ", BookingID, " cancelled") AS "Confirmation" from Bookings; 
END$$ 
DELIMITER ; 
CALL CancelBooking(9);