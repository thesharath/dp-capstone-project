CREATE DEFINER=`root`@`localhost` PROCEDURE `AddValidBooking`(in table_no int, in date_time datetime)
BEGIN
start transaction;
set @max_id = 0;
select MAX(BookingID) into @max_id from bookings;
insert into bookings(BookingID,GuestFirstName,GuestSecondName,BookingSlot,TableNo)
values(@max_id+1,'lara','brian',date_time,table_no);

set @row_ct = 0;
select 
 count(*) into @row_ct
from bookings 
group by BookingSlot, TableNo
having BookingSlot = date_time and TableNo = table_no;

IF @row_ct = 1 THEN
    SELECT concat('Table ', table_no , ' is booked successfully at' , date_time ) as "Booking Status";
    commit;
ELSE
    SELECT concat('Table ', table_no , ' is already booked at ' , date_time , '. Booking cancelled.') as "Booking Status";
    rollback;
end if;

END