CREATE DEFINER=`root`@`localhost` PROCEDURE `GetOrderDetail`(in order_id int)
BEGIN
select * from orders where OrderID = order_id;
END