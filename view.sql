CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `b688f6c28920ee`@`%` 
    SQL SECURITY DEFINER
VIEW `developer_roles_and_privileges` AS
    SELECT 
        `p`.`first_name` AS `first_name`,
        `p`.`last_name` AS `last_name`,
        `p`.`username` AS `username`,
        `p`.`email` AS `email`,
        `w`.`name` AS `name`,
        `w`.`visits` AS `visits`,
        `w`.`updated` AS `updated`,
        `g`.`title` AS `title`,
        `g`.`views` AS `views`,
        `g`.`page_updated` AS `page_updated`,
        `e`.`role_name` AS `role_name`,
        `b`.`privilege` AS `privilege`
    FROM
        ((((((`persons` `p`
        JOIN `websites` `w`)
        JOIN `pages` `g`)
        JOIN `website_roles` `e`)
        JOIN `website_privileges` `b`)
        JOIN `page_roles` `r`)
        JOIN `page_privileges` `a`)
    WHERE
        ((`e`.`developer_id_role` = `p`.`person_id`)
            AND (`r`.`developer_id` = `p`.`person_id`)
            AND (`g`.`website_id` = `w`.`website_id`)
            AND (`e`.`website_id` = `w`.`website_id`)
            AND (`b`.`website_id` = `w`.`website_id`)
            AND (`r`.`page_id` = `g`.`page_id`)
            AND (`a`.`page_id` = `g`.`page_id`))