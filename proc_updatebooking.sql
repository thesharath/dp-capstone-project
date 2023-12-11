CREATE PROCEDURE `UpdateBooking` (in booking_id int, in date_time datetime)
BEGIN
update bookings set BookingSlot = date_time where BookingID = booking_id;
END
