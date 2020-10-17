SELECT p.first_name, p.last_name
FROM persons p, developers d
WHERE p.person_id = d.developer_id;

SELECT p.first_name, p.last_name
FROM persons p
WHERE p.person_id = 21;

SELECT p.first_name, p.last_name
FROM persons p, websites w, website_roles r
WHERE w.name = "Twitter" AND r.developer_id_role = p.person_id AND r.website_id = w.website_id AND r.role_name != "owner";

SELECT p.first_name, p.last_name
FROM persons p, pages g, page_roles r
WHERE r.developer_id = p.person_id AND g.page_id = r.page_id AND page_role_name = "reviewer" AND g.views < 300000;

SELECT p.first_name, p.last_name
FROM persons p, pages g, widgets w, page_roles r
WHERE r.developer_id = p.person_id AND g.page_id = r.page_id and w.page_id = g.page_id AND w.dtype = "heading" AND g.title = "Home" AND r.page_role_name = "writer";

SELECT w.name, MIN(w.visits)
FROM websites w;

SELECT w.name
FROM websites w 
WHERE w.website_id = 51;

SELECT w.name
FROM websites w, pages g, widgets d, persons p, page_roles r
WHERE g.website_id = w.website_id AND d.page_id = g.page_id AND r.developer_id = p.person_id AND p.first_name = "Bob" AND r.page_role_name = "reviewer" AND r.page_role_name = "reviewer" AND d.dtype = "youtube";

SELECT *
FROM websites w, persons p, website_roles r
WHERE r.website_id = w.website_id AND r.developer_id_role = p.person_id AND p.first_name = "Alice" AND r.role_name = "owner"; 

SELECT *
FROM websites w, persons p, website_roles r
WHERE r.website_id = w.website_id AND r.developer_id_role = p.person_id AND p.first_name = "Charles" AND r.role_name = "admin" AND w.visits >6000000;

SELECT g.title, MAX(g.views)
FROM pages g;

SELECT g.title
FROM pages g
WHERE g.page_id = 11;

SELECT g.title
FROM pages g, persons p, page_roles r
WHERE r.page_id = g.page_id AND r.developer_id = p.person_id AND p.first_name = "Alice" and r.page_role_name = "editor";

SELECT SUM(g.views)
FROM pages g, websites w
WHERE g.website_id = w.website_id AND w.name = "CNET";

SELECT AVG(g.views)
FROM pages g, websites w
WHERE g.website_id = w.website_id AND w.name = "Wikipedia";

SELECT d.name
FROM widgets d, pages g, websites w
WHERE d.page_id = g.page_id AND g.website_id = w.website_id AND w.name = "CNET" AND g.title = "Home";

SELECT d.name
FROM widgets d, pages g, websites w
WHERE d.page_id = g.page_id AND g.website_id = w.website_id AND w.name = "CNN" and d.dtype = "youtube";

SELECT d.name
FROM widgets d, pages g, page_roles r, persons p
WHERE d.page_id = g.page_id AND g.page_id = r.page_id AND p.first_name = "Alice" and r.page_role_name = "reviewer" and d.dtype = "image";

SELECT COUNT(w.name)
FROM widgets d, pages g, websites w
WHERE d.page_id = g.page_id AND g.website_id = w.website_id AND w.name = "Wikipedia";

SELECT w.name
FROM websites w, website_privileges v, persons p 
WHERE v.website_id = w.website_id AND v.developer_id = p.person_id AND p.first_name = "Bob" AND privilege = "delete";

SELECT w.name
FROM websites w, website_privileges v, persons p 
WHERE v.website_id = w.website_id AND v.developer_id = p.person_id AND p.first_name = "Charles" AND privilege = "create"