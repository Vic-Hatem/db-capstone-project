use LittleLemonDB;
DROP PROCEDURE IF EXISTS CheckBooking;
CREATE PROCEDURE CheckBooking(BookingDate DATE,Table_Number INT)
	SELECT concat("Table ",TableNumber, " is already booked") as "Booking Status"
    from Bookings
    WHERE exists (select * from Bookings where Date = BookingDate and TableNumber = Table_Number);
CALL CheckBooking("2022-12-30", 4);