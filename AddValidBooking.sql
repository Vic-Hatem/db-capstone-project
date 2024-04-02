DROP PROCEDURE IF EXISTS CheckBooking;

-- a stored procedure to check if a table is booked on a given date
DELIMITER //
CREATE PROCEDURE CheckBooking (booking_date DATE, table_number INT,customer_id INT)
BEGIN
DECLARE bookedTable INT DEFAULT 0;
 SELECT COUNT(bookedTable)
    INTO bookedTable
    FROM Bookings WHERE date = booking_date and TableNumber = table_number;
    IF bookedTable > 0 THEN
      SELECT CONCAT( "Table ", table_number, " is already booked - Booking Cancelled") AS "Booking status";
      ELSE 
      SELECT CONCAT( "Table ", table_number, " is not booked.") AS "Booking status";
      INSERT INTO Bookings (Date, TableNumber,CustomerID) VALUES (booking_date, table_number,customer_id);
    END IF;
END//
DELIMITER ;

CALL CheckBooking("2022-12-23", 5,2);