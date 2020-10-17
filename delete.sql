DELETE FROM addresses WHERE person_id = 1 AND addresses.primary = 1;
DELETE FROM widgets WHERE widgets.order = 3;
DELETE FROM pages WHERE pages.website_id = 21 AND (SELECT MAX(pages.page_updated) FROM (SELECT * FROM pages) AS pg);
DELETE FROM websites WHERE websites.name = "CNET"