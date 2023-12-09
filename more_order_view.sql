CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `orders_more_than_one` AS
    SELECT 
        `menu`.`Cuisine` AS `MenuName`
    FROM
        (`orders`
        JOIN `menu` ON ((`orders`.`MenuID` = `menu`.`MenuID`)))
    WHERE
        (`orders`.`Quantity` > 2)