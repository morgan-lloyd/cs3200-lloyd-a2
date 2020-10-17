
CREATE TABLE `persons` (
  `person_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ;
CREATE TABLE `addresses` (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `person_id` int DEFAULT NULL,
  `street1` varchar(45) DEFAULT NULL,
  `street2` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zip` varchar(45) DEFAULT NULL,
  `primary` tinyint DEFAULT NULL,
  PRIMARY KEY (`address_id`),
  KEY `address_person_id_idx` (`address_id`),
  KEY `address_person_id_idx1` (`person_id`),
  CONSTRAINT `address_person_id` FOREIGN KEY (`person_id`) REFERENCES `persons` (`person_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ;
CREATE TABLE `phones` (
  `phone_id` int NOT NULL AUTO_INCREMENT,
  `person_id` int DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `primary` tinyint DEFAULT NULL,
  PRIMARY KEY (`phone_id`),
  KEY `phone_person_id_idx` (`person_id`),
  CONSTRAINT `phone_person_id` FOREIGN KEY (`person_id`) REFERENCES `persons` (`person_id`)
) ;
CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `user_agreement` tinyint DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `user_person_generalization` FOREIGN KEY (`user_id`) REFERENCES `persons` (`person_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ;
CREATE TABLE `developers` (
  `developer_id` int NOT NULL,
  `developer_key` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`developer_id`),
  CONSTRAINT `developer_person_generalization` FOREIGN KEY (`developer_id`) REFERENCES `persons` (`person_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ;
CREATE TABLE `websites` (
  `website_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL,
  `visits` int DEFAULT NULL,
  PRIMARY KEY (`website_id`)
) ;
CREATE TABLE `pages` (
  `page_id` int NOT NULL AUTO_INCREMENT,
  `website_id` int DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `page_updated` date DEFAULT NULL,
  `views` int DEFAULT NULL,
  PRIMARY KEY (`page_id`),
  KEY `page_website_id_idx` (`website_id`),
  CONSTRAINT `page_website_id` FOREIGN KEY (`website_id`) REFERENCES `websites` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ;
CREATE TABLE `dtypes` (
  `dtype_name` varchar(45) NOT NULL,
  PRIMARY KEY (`dtype_name`)
) ;
INSERT INTO dtypes(dtype_name) VALUES("widget");
INSERT INTO dtypes(dtype_name) VALUES("html");
INSERT INTO dtypes(dtype_name) VALUES("youtube");
INSERT INTO dtypes(dtype_name) VALUES("image");
INSERT INTO dtypes(dtype_name) VALUES("heading");
CREATE TABLE `widgets` (
  `widget_id` int NOT NULL AUTO_INCREMENT,
  `page_id` int DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `css_class` varchar(45) DEFAULT NULL,
  `css_style` varchar(45) DEFAULT NULL,
  `text` varchar(300) DEFAULT NULL,
  `order` int DEFAULT NULL,
  `dtype` varchar(45) DEFAULT NULL,
  `youtube_url` varchar(100) DEFAULT NULL,
  `youtube_shareable` tinyint DEFAULT NULL,
  `youtube_expandable` tinyint DEFAULT NULL,
  `image_src` varchar(45) DEFAULT NULL,
  `html` varchar(45) DEFAULT NULL,
  `heading_size` int DEFAULT '2',
  PRIMARY KEY (`widget_id`),
  KEY `widget_page_id_idx` (`page_id`),
  KEY `widget_dtype_idx` (`dtype`),
  CONSTRAINT `widget_dtype` FOREIGN KEY (`dtype`) REFERENCES `dtypes` (`dtype_name`),
  CONSTRAINT `widget_page_id` FOREIGN KEY (`page_id`) REFERENCES `pages` (`page_id`)
);

CREATE TABLE `roles` (
  `role_name` varchar(45) NOT NULL,
  PRIMARY KEY (`role_name`)
);

INSERT INTO roles(role_name) VALUES("owner");
INSERT INTO roles(role_name) VALUES("admin");
INSERT INTO roles(role_name) VALUES("writer");
INSERT INTO roles(role_name) VALUES("editor");
INSERT INTO roles(role_name) VALUES("reviewer");

CREATE TABLE `privileges` (
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`name`)
);

INSERT INTO privileges(name) VALUES("create");
INSERT INTO privileges(name) VALUES("read");
INSERT INTO privileges(name) VALUES("delete");
INSERT INTO privileges(name) VALUES("update");

CREATE TABLE `website_roles` (
  `website_role_id` int NOT NULL AUTO_INCREMENT,
  `website_id` int DEFAULT NULL,
  `role_name` varchar(45) DEFAULT NULL,
  `developer_id_role` int DEFAULT NULL,
  PRIMARY KEY (`website_role_id`),
  KEY `website_role_website_idx` (`website_id`),
  KEY `website_role_role_idx` (`role_name`),
  KEY `idx_website_roles_developer_id` (`developer_id_role`),
  CONSTRAINT `website_role_developer` FOREIGN KEY (`developer_id_role`) REFERENCES `persons` (`person_id`),
  CONSTRAINT `website_role_role` FOREIGN KEY (`role_name`) REFERENCES `roles` (`role_name`),
  CONSTRAINT `website_role_website` FOREIGN KEY (`website_id`) REFERENCES `websites` (`website_id`)
);
CREATE TABLE `page_roles` (
  `page_role_id` int NOT NULL AUTO_INCREMENT,
  `developer_id` int DEFAULT NULL,
  `page_id` int DEFAULT NULL,
  `page_role_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`page_role_id`),
  KEY `page_role_page_idx` (`page_id`),
  KEY `page_role_developer_idx` (`developer_id`),
  KEY `page_role_role_idx` (`page_role_name`),
  CONSTRAINT `page_role_developer` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`developer_id`),
  CONSTRAINT `page_role_page` FOREIGN KEY (`page_id`) REFERENCES `pages` (`page_id`),
  CONSTRAINT `page_role_role` FOREIGN KEY (`page_role_name`) REFERENCES `roles` (`role_name`)
);
CREATE TABLE `website_privileges` (
  `website_privilege_id` int NOT NULL AUTO_INCREMENT,
  `developer_id` int DEFAULT NULL,
  `website_id` int DEFAULT NULL,
  `privilege` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`website_privilege_id`),
  KEY `website_privilege_developer_idx` (`developer_id`),
  KEY `website_privilege_website_idx` (`website_id`),
  KEY `website_privilege_privilege_idx` (`privilege`),
  CONSTRAINT `website_privilege_developer` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`developer_id`),
  CONSTRAINT `website_privilege_privilege` FOREIGN KEY (`privilege`) REFERENCES `privileges` (`name`),
  CONSTRAINT `website_privilege_website` FOREIGN KEY (`website_id`) REFERENCES `websites` (`website_id`)
);
CREATE TABLE `page_privileges` (
  `page_privilege_id` int NOT NULL AUTO_INCREMENT,
  `developer_id` int DEFAULT NULL,
  `page_id` int DEFAULT NULL,
  `page_privilege` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`page_privilege_id`),
  KEY `page_privilege_page_idx` (`page_id`),
  KEY `page_privilege_developer_idx` (`developer_id`),
  KEY `page_privilege_privilege_idx` (`page_privilege`),
  CONSTRAINT `page_privilege_developer` FOREIGN KEY (`developer_id`) REFERENCES `developers` (`developer_id`),
  CONSTRAINT `page_privilege_page` FOREIGN KEY (`page_id`) REFERENCES `pages` (`page_id`),
  CONSTRAINT `page_privilege_privilege` FOREIGN KEY (`page_privilege`) REFERENCES `privileges` (`name`)
)



