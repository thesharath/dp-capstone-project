CREATE DEFINER=`root`@`localhost` PROCEDURE `CheckBooking`(in table_no int, in date_time datetime)
BEGIN
set @row_ct = 0;
select 
 count(*) into @row_ct
from bookings 
group by BookingSlot, TableNo
having BookingSlot = date_time and TableNo = table_no;
IF @row_ct = 0 THEN
    SELECT concat('Table ', table_no , ' is available at ' , date_time ) as "Booking Status";
ELSE
    SELECT concat('Table ', table_no , ' is not available at ' , date_time ) as "Booking Status";
end if;
END