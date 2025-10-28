-- Find post from April 2048 to identify author mentioning Fullstack and their dad
SELECT *
FROM forum_posts
WHERE date BETWEEN '2048-04-01' AND '2048-05-01' AND content ILIKE '%emptystack%' AND content ILIKE '%dad%';

-- The poster's username is smart-money-44
SELECT *
FROM forum_accounts
WHERE username = 'smart-money-44';

-- The poster's name is Brad Steele so look up usernames with the same last name to find his dad
SELECT *
FROM forum_accounts
WHERE last_name = 'Steele';

-- There are two other Steele's (Kevin and Andrew)
SELECT *
FROM emptystack_accounts
WHERE last_name = 'Steele';

-- Andrew Steele also has an Emptystack Account
-- triple-cart-38 / password456 = Andrew Steele

-- in pwsh run: `node mainframe`
-- enter username and password for Andrew
-- run `psql -U Owner -d mainframe_override -f emptystack.sql`

-- run:
-- \d emptystack_accounts
-- \d emptystack_messages

-- find the project info about the self-driving taxis
SELECT *
FROM emptystack_messages
WHERE body ILIKE'%taxi%'
OR body ILIKE '%self-driving%'
OR body ILIKE '%project%';

-- your-boss-99 sent the message about Project TAXI
-- find their account info
SELECT *
FROM emptystack_accounts
WHERE username = 'your-boss-99';

-- Skylar Singer is your-boss-99
-- password = notagaincarter
-- Now find the project TAXI id
SELECT *
FROM emptystack_projects
WHERE code = 'TAXI';