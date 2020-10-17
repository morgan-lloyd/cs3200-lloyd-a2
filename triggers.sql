CREATE DEFINER=`root`@`localhost` TRIGGER `website_roles_AFTER_INSERT` AFTER INSERT ON `website_roles` FOR EACH ROW BEGIN
IF NEW.role_name="admin" OR NEW.role_name="owner" THEN
	INSERT INTO website_privileges VALUES (null, website_roles.developer_id_role, website_roles.website_id, "create");
	INSERT INTO website_privileges VALUES (null, website_roles.developer_id_role, website_roles.website_id, "read");
	INSERT INTO website_privileges VALUES (null, website_roles.developer_id_role, website_roles.website_id, "update");
	INSERT INTO website_privileges VALUES (null, website_roles.developer_id_role, website_roles.website_id, "delete");
	END IF;
IF NEW.role_name="writer" THEN
	INSERT INTO website_privileges VALUES (null, website_roles.developer_id_role, website_roles.website_id, "create");
	INSERT INTO website_privileges VALUES (null, website_roles.developer_id_role, website_roles.website_id, "read");
	INSERT INTO website_privileges VALUES (null, website_roles.developer_id_role, website_roles.website_id, "update");
	END IF;
IF NEW.role_name="editor" THEN
	INSERT INTO website_privileges VALUES (null, website_roles.developer_id_role, website_roles.website_id, "read");
	INSERT INTO website_privileges VALUES (null, website_roles.developer_id_role, website_roles.website_id, "update");
	END IF;
IF NEW.role_name="reviewer" THEN
	INSERT INTO website_privileges VALUES (null, website_roles.developer_id, website_roles.page_id, "read");
	END IF;
END

CREATE DEFINER=`root`@`localhost` TRIGGER `page_roles_AFTER_INSERT` AFTER INSERT ON `page_roles` FOR EACH ROW BEGIN
IF NEW.role_name="admin" OR NEW.role_name="owner" THEN
	INSERT INTO page_privileges VALUES (null, NEW.developer_id, NEW.page_id, "create");
	INSERT INTO page_privileges VALUES (null, NEW.developer_id, NEW.page_id, "read");
	INSERT INTO page_privileges VALUES (null, NEW.developer_id, NEW.page_id, "update");
	INSERT INTO page_privileges VALUES (null, NEW.developer_id, NEW.page_id, "delete");
	END IF;
IF NEW.role_name="writer" THEN
	INSERT INTO page_privileges VALUES (null, NEW.developer_id, NEW.page_id, "create");
	INSERT INTO page_privileges VALUES (null, NEW.developer_id, NEW.page_id, "read");
	INSERT INTO page_privileges VALUES (null, NEW.developer_id, NEW.page_id, "update");
	END IF;
IF NEW.role_name="editor" THEN
	INSERT INTO page_privileges VALUES (null, NEW.developer_id, NEW.page_id, "read");
	INSERT INTO page_privileges VALUES (null, NEW.developer_id, NEW.page_id, "update");
	END IF;
IF NEW.role_name="reviewer" THEN
	INSERT INTO page_privileges VALUES (null, NEW.developer_id, NEW.page_id, "read");
	END IF;
END