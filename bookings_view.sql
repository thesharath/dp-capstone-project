CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `booking_details` AS
    SELECT 
        `bookings`.`BookingID` AS `BookingID`,
        CONCAT(`bookings`.`GuestFirstName`,
                ' ',
                `bookings`.`GuestSecondName`) AS `GuestName`,
        `orders`.`OrderID` AS `OrderID`,
        `orders`.`BillAmount` AS `Cost`,
        `menu`.`Cuisine` AS `MenuName`
    FROM
        ((`bookings`
        JOIN `orders` ON ((`orders`.`BookingID` = `bookings`.`BookingID`)))
        JOIN `menu` ON ((`orders`.`MenuID` = `menu`.`MenuID`)))