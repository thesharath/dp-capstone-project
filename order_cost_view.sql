CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `order_cost` AS
    SELECT 
        `orders`.`OrderID` AS `OrderID`,
        `orders`.`Quantity` AS `Quantity`,
        `orders`.`BillAmount` AS `Cost`
    FROM
        `orders`