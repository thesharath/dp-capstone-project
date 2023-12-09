CREATE DEFINER=`root`@`localhost` PROCEDURE `CancelOrder`(in order_id int)
BEGIN
update orders set Status = 'Cancelled' where OrderID = order_id;
select CONCAT("Order " , order_id , " is cancelled") as 'Confirmation' from orders where OrderID = order_id and Status = 'Cancelled';
END