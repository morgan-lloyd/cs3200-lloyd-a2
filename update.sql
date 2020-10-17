UPDATE phones
SET phone_number = "333-444-5555" 
WHERE phones.person_id = 21 AND phones.primary = 1;

UPDATE widgets
SET widgets.order = 3
WHERE widget_id = 21;

UPDATE widgets
SET widgets.order = 1
WHERE widget_id = 31;

UPDATE widgets
SET widgets.order = 2
WHERE widget_id = 41;

UPDATE pages, websites
SET title = CONCAT("CNET -", title)
WHERE websites.website_id = pages.website_id AND websites.name = "CNET";

UPDATE page_roles, pages, persons
SET page_role_name = "writer"
WHERE pages.title = "Home" AND persons.first_name = "Bob";

UPDATE page_roles, pages, persons
SET page_role_name = "reviewer"
WHERE pages.title = "Home" AND persons.first_name = "Charles"

