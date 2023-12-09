CREATE DEFINER=`root`@`localhost` PROCEDURE `MaxQuantity`()
BEGIN
select max(Quantity) as 'Max Quantity Order' from orders;
END