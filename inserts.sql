INSERT INTO `heroku_cf460a9e4e7a785`.`persons` (`first_name`, `last_name`, `username`, `password`, `email`) VALUES ('Alice', 'Wonder', 'alice', 'alice', 'alice@wonder.com');
INSERT INTO `heroku_cf460a9e4e7a785`.`persons` (`first_name`, `last_name`, `username`, `password`, `email`) VALUES ('Bob', 'Marley', 'bob', 'bob', 'bob@marley.com');
INSERT INTO `heroku_cf460a9e4e7a785`.`persons` (`first_name`, `last_name`, `username`, `password`, `email`) VALUES ('Charles', 'Garcia', 'charlie', 'charlie', 'chuch@garcia.com');
INSERT INTO `heroku_cf460a9e4e7a785`.`persons` (`first_name`, `last_name`, `username`, `password`, `email`) VALUES ('Dan', 'Martin', 'dan', 'dan', 'dan@martin.com');
INSERT INTO `heroku_cf460a9e4e7a785`.`persons` (`first_name`, `last_name`, `username`, `password`, `email`) VALUES ('Ed', 'Karaz', 'ed', 'ed', 'ed@kar.com');
INSERT INTO `heroku_cf460a9e4e7a785`.`addresses` (`person_id`, `street1`, `city`, `state`, `zip`, `primary`) VALUES ('1', '123 Adam St', 'Alton', 'MA', '01234', '1');
INSERT INTO `heroku_cf460a9e4e7a785`.`addresses` (`person_id`, `street1`, `city`, `state`, `zip`, `primary`) VALUES ('1', '234 Birch St', 'Boston', 'MA', '02345', '0');
INSERT INTO `heroku_cf460a9e4e7a785`.`addresses` (`person_id`, `street1`, `city`, `state`, `zip`, `primary`) VALUES ('1', '345 Charles St.', 'Chelms', 'MA', '03455', '1');
INSERT INTO `heroku_cf460a9e4e7a785`.`addresses` (`person_id`, `street1`, `city`, `state`, `zip`, `primary`) VALUES ('11', '456 Down St', 'Dalton', 'MA', '04566', '0');
INSERT INTO `heroku_cf460a9e4e7a785`.`addresses` (`person_id`, `street1`, `city`, `state`, `zip`, `primary`) VALUES ('11', '543 East St', 'Everett', 'MA', '01112', '0');
INSERT INTO `heroku_cf460a9e4e7a785`.`addresses` (`person_id`, `street1`, `city`, `state`, `zip`, `primary`) VALUES ('21', '654 Frank St', 'Foulton', 'MA', '04322', '1');
INSERT INTO `heroku_cf460a9e4e7a785`.`phones` (`person_id`, `phone_number`, `primary`) VALUES ('1', '123-234-3456', '1');
INSERT INTO `heroku_cf460a9e4e7a785`.`phones` (`person_id`, `phone_number`, `primary`) VALUES ('1', '234-345-4566', '0');
INSERT INTO `heroku_cf460a9e4e7a785`.`phones` (`person_id`, `phone_number`, `primary`) VALUES ('11', '345-456-5677', '1');
INSERT INTO `heroku_cf460a9e4e7a785`.`phones` (`person_id`, `phone_number`, `primary`) VALUES ('21', '321-432-5435', '1');
INSERT INTO `heroku_cf460a9e4e7a785`.`phones` (`person_id`, `phone_number`, `primary`) VALUES ('21', '432-432-5433', '0');
INSERT INTO `heroku_cf460a9e4e7a785`.`phones` (`person_id`, `phone_number`, `primary`) VALUES ('21', '543-543-6544', '0');
INSERT INTO `heroku_cf460a9e4e7a785`.`users` (`user_id`, `user_agreement`) VALUES ('31', '1');
INSERT INTO `heroku_cf460a9e4e7a785`.`users` (`user_id`, `user_agreement`) VALUES ('41', '0');
INSERT INTO `heroku_cf460a9e4e7a785`.`developers` (`developer_id`, `developer_key`) VALUES ('1', '4321rewq');
INSERT INTO `heroku_cf460a9e4e7a785`.`developers` (`developer_id`, `developer_key`) VALUES ('11', '5432trew');
INSERT INTO `heroku_cf460a9e4e7a785`.`developers` (`developer_id`, `developer_key`) VALUES ('21', '6543ytre');
INSERT INTO `heroku_cf460a9e4e7a785`.`websites` (`name`, `description`, `visits`) VALUES ('Facebook', 'an online social media and social networking service', '1234234');
INSERT INTO `heroku_cf460a9e4e7a785`.`websites` (`name`, `description`, `visits`) VALUES ('Twitter', 'an online news and social networking service', '4321543');
INSERT INTO `heroku_cf460a9e4e7a785`.`websites` (`name`, `description`, `visits`) VALUES ('Wikipedia', 'a free online encyclopedia', '3456654');
INSERT INTO `heroku_cf460a9e4e7a785`.`websites` (`name`, `description`, `visits`) VALUES ('CNN', 'an American basic cable and satellite television news channel', '6543345');
INSERT INTO `heroku_cf460a9e4e7a785`.`websites` (`name`, `description`, `visits`) VALUES ('CNET', 'an American media website that publishes reviews, news, articles, blogs, podcasts and videos on technology and consumer electronics', '5433455');
INSERT INTO `heroku_cf460a9e4e7a785`.`websites` (`name`, `description`, `visits`) VALUES ('Gizmodo', 'a design, technology, science and science fiction website that also writes articles on politics', '4322345');
INSERT INTO `heroku_cf460a9e4e7a785`.`pages` (`website_id`, `title`, `description`, `views`) VALUES ('41', 'Home', 'Landing page', '123434');
INSERT INTO `heroku_cf460a9e4e7a785`.`pages` (`website_id`, `title`, `description`, `views`) VALUES ('51', 'About', 'Website description', '234545');
INSERT INTO `heroku_cf460a9e4e7a785`.`pages` (`website_id`, `title`, `description`, `views`) VALUES ('21', 'Contact', 'Addresses, phones, and contact info', '345656');
INSERT INTO `heroku_cf460a9e4e7a785`.`pages` (`website_id`, `title`, `description`, `views`) VALUES ('31', 'Preferences', 'Where users can configure their preferences', '456776');
INSERT INTO `heroku_cf460a9e4e7a785`.`pages` (`website_id`, `title`, `description`, `views`) VALUES ('41', 'Profile', 'Users can configure their personal information', '567878');
INSERT INTO `heroku_cf460a9e4e7a785`.`widgets` (`page_id`, `name`, `text`, `order`, `dtype`, `youtube_url`) VALUES ('1', 'head123', 'Welcome', '0', 'heading', '');
INSERT INTO `heroku_cf460a9e4e7a785`.`widgets` (`page_id`, `name`, `text`, `order`, `dtype`, `youtube_url`) VALUES ('11', 'post234', '<p>Lorem</p>', '0', 'html', '');
INSERT INTO `heroku_cf460a9e4e7a785`.`widgets` (`page_id`, `name`, `text`, `order`, `dtype`, `youtube_url`) VALUES ('21', 'head345', 'Hi', '1', 'heading', '');
INSERT INTO `heroku_cf460a9e4e7a785`.`widgets` (`page_id`, `name`, `text`, `order`, `dtype`, `youtube_url`) VALUES ('21', 'intro456', '<h1>Hi</h1>', '2', 'html', '');
INSERT INTO `heroku_cf460a9e4e7a785`.`widgets` (`page_id`, `name`, `width`, `height`, `order`, `dtype`, `youtube_url`) VALUES ('21', 'image345', '50', '100', '3', 'image', '');
INSERT INTO `heroku_cf460a9e4e7a785`.`widgets` (`page_id`, `name`, `width`, `height`, `order`, `dtype`, `youtube_url`, `youtube_shareable`, `image_src`) VALUES ('31', 'video456', '400', '300', '0', 'youtube', '', 'https://youtu.be/h67VX51QXiQ', '/img/567.png');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_roles` (`developer_id`, `page_id`, `page_role_name`) VALUES ('1', '1', 'editor');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_roles` (`developer_id`, `page_id`, `page_role_name`) VALUES ('11', '1', 'reviewer');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_roles` (`developer_id`, `page_id`, `page_role_name`) VALUES ('21', '1', 'writer');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_roles` (`developer_id`, `page_id`, `page_role_name`) VALUES ('11', '11', 'editor');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_roles` (`developer_id`, `page_id`, `page_role_name`) VALUES ('21', '11', 'reviewer');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_roles` (`developer_id`, `page_id`, `page_role_name`) VALUES ('1', '11', 'writer');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_roles` (`developer_id`, `page_id`, `page_role_name`) VALUES ('21', '21', 'editor');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_roles` (`developer_id`, `page_id`, `page_role_name`) VALUES ('1', '21', 'reviewer');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_roles` (`developer_id`, `page_id`, `page_role_name`) VALUES ('11', '21', 'writer');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_roles` (`developer_id`, `page_id`, `page_role_name`) VALUES ('1', '31', 'editor');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_roles` (`developer_id`, `page_id`, `page_role_name`) VALUES ('11', '31', 'reviewer');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_roles` (`developer_id`, `page_id`, `page_role_name`) VALUES ('21', '31', 'writer');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_roles` (`developer_id`, `page_id`, `page_role_name`) VALUES ('11', '41', 'editor');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_roles` (`developer_id`, `page_id`, `page_role_name`) VALUES ('1', '41', 'reviewer');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_roles` (`developer_id`, `page_id`, `page_role_name`) VALUES ('21', '41', 'writer');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_roles` (`website_id`, `role_name`, `developer_id_role`) VALUES ('1', 'owner', '1');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_roles` (`website_id`, `role_name`, `developer_id_role`) VALUES ('1', 'editor', '11');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_roles` (`website_id`, `role_name`, `developer_id_role`) VALUES ('1', 'admin', '21');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_roles` (`website_id`, `role_name`, `developer_id_role`) VALUES ('11', 'owner', '11');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_roles` (`website_id`, `role_name`, `developer_id_role`) VALUES ('11', 'editor', '21');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_roles` (`website_id`, `role_name`, `developer_id_role`) VALUES ('11', 'admin', '1');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_roles` (`website_id`, `role_name`, `developer_id_role`) VALUES ('21', 'owner', '21');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_roles` (`website_id`, `role_name`, `developer_id_role`) VALUES ('21', 'editor', '1');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_roles` (`website_id`, `role_name`, `developer_id_role`) VALUES ('21', 'admin', '11');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_roles` (`website_id`, `role_name`, `developer_id_role`) VALUES ('31', 'owner', '1');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_roles` (`website_id`, `role_name`, `developer_id_role`) VALUES ('31', 'editor', '11');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_roles` (`website_id`, `role_name`, `developer_id_role`) VALUES ('31', 'admin', '21');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_roles` (`website_id`, `role_name`, `developer_id_role`) VALUES ('41', 'owner', '11');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_roles` (`website_id`, `role_name`, `developer_id_role`) VALUES ('41', 'editor', '21');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_roles` (`website_id`, `role_name`, `developer_id_role`) VALUES ('41', 'admin', '1');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_roles` (`website_id`, `role_name`, `developer_id_role`) VALUES ('51', 'owner', '21');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_roles` (`website_id`, `role_name`, `developer_id_role`) VALUES ('51', 'editor', '1');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_roles` (`website_id`, `role_name`, `developer_id_role`) VALUES ('51', 'admin', '11');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_privileges` (`developer_id`, `page_id`, `page_privilege`) VALUES ('1', '1', 'read');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_privileges` (`developer_id`, `page_id`, `page_privilege`) VALUES ('1', '1', 'update');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_privileges` (`developer_id`, `page_id`, `page_privilege`) VALUES ('11', '1', 'read');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_privileges` (`developer_id`, `page_id`, `page_privilege`) VALUES ('21', '1', 'create');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_privileges` (`developer_id`, `page_id`, `page_privilege`) VALUES ('21', '1', 'read');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_privileges` (`developer_id`, `page_id`, `page_privilege`) VALUES ('21', '1', 'update');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_privileges` (`developer_id`, `page_id`, `page_privilege`) VALUES ('11', '11', 'read');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_privileges` (`developer_id`, `page_id`, `page_privilege`) VALUES ('11', '11', 'update');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_privileges` (`developer_id`, `page_id`, `page_privilege`) VALUES ('21', '11', 'read');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_privileges` (`developer_id`, `page_id`, `page_privilege`) VALUES ('1', '11', 'create');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_privileges` (`developer_id`, `page_id`, `page_privilege`) VALUES ('1', '11', 'read');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_privileges` (`developer_id`, `page_id`, `page_privilege`) VALUES ('1', '11', 'update');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_privileges` (`developer_id`, `page_id`, `page_privilege`) VALUES ('21', '21', 'read');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_privileges` (`developer_id`, `page_id`, `page_privilege`) VALUES ('21', '21', 'update');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_privileges` (`developer_id`, `page_id`, `page_privilege`) VALUES ('1', '21', 'read');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_privileges` (`developer_id`, `page_id`, `page_privilege`) VALUES ('11', '21', 'create');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_privileges` (`developer_id`, `page_id`, `page_privilege`) VALUES ('11', '21', 'read');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_privileges` (`developer_id`, `page_id`, `page_privilege`) VALUES ('11', '21', 'update');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_privileges` (`developer_id`, `page_id`, `page_privilege`) VALUES ('1', '31', 'read');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_privileges` (`developer_id`, `page_id`, `page_privilege`) VALUES ('1', '31', 'update');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_privileges` (`developer_id`, `page_id`, `page_privilege`) VALUES ('11', '31', 'read');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_privileges` (`developer_id`, `page_id`, `page_privilege`) VALUES ('21', '31', 'create');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_privileges` (`developer_id`, `page_id`, `page_privilege`) VALUES ('21', '31', 'read');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_privileges` (`developer_id`, `page_id`, `page_privilege`) VALUES ('21', '31', 'update');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_privileges` (`developer_id`, `page_id`, `page_privilege`) VALUES ('11', '41', 'read');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_privileges` (`developer_id`, `page_id`, `page_privilege`) VALUES ('11', '41', 'update');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_privileges` (`developer_id`, `page_id`, `page_privilege`) VALUES ('1', '41', 'read');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_privileges` (`developer_id`, `page_id`, `page_privilege`) VALUES ('21', '41', 'create');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_privileges` (`developer_id`, `page_id`, `page_privilege`) VALUES ('21', '41', 'read');
INSERT INTO `heroku_cf460a9e4e7a785`.`page_privileges` (`developer_id`, `page_id`, `page_privilege`) VALUES ('21', '41', 'update');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('1', '1', 'create');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('1', '1', 'read');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('1', '1', 'update');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('1', '1', 'delete');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('11', '1', 'read');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('11', '1', 'update');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('21', '1', 'create');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('21', '1', 'read');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('21', '1', 'update');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('21', '1', 'delete');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('11', '11', 'create');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('11', '11', 'read');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('11', '11', 'update');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('11', '11', 'delete');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('21', '11', 'read');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('21', '11', 'update');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('1', '11', 'create');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('1', '11', 'read');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('1', '11', 'update');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('1', '11', 'delete');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('21', '21', 'create');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('21', '21', 'read');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('21', '21', 'update');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('21', '21', 'delete');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('1', '21', 'read');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('1', '21', 'update');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('11', '21', 'create');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('11', '21', 'read');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('11', '21', 'update');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('11', '21', 'delete');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('1', '31', 'create');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('1', '31', 'read');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('1', '31', 'update');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('1', '31', 'delete');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('11', '31', 'read');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('11', '31', 'update');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('21', '31', 'create');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('21', '31', 'read');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('21', '31', 'update');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('21', '31', 'delete');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('11', '41', 'create');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('11', '41', 'read');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('11', '41', 'update');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('11', '41', 'delete');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('21', '41', 'read');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('21', '41', 'update');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('1', '41', 'create');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('1', '41', 'read');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('1', '41', 'update');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('1', '41', 'delete');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('21', '51', 'create');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('21', '51', 'read');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('21', '51', 'update');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('21', '51', 'delete');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('1', '51', 'read');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('1', '51', 'update');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('11', '51', 'create');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('11', '51', 'read');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('11', '51', 'update');
INSERT INTO `heroku_cf460a9e4e7a785`.`website_privileges` (`developer_id`, `website_id`, `privilege`) VALUES ('11', '51', 'delete');

