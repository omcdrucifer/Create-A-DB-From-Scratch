-- this will be where I track the used commands to build the db in Postbird in my virtual machine
-- the market table which is the main table
CREATE TABLE markets (
    id VARCHAR PRIMARY KEY,
    market_name TEXT,
    total_groups INTEGER,
    total_insured INTEGER,
    total_providers INTEGER,
    fee_schedule VARCHAR
);
-- while I am creating multiple markets, I am only going to populate data for one, as my wife only works one
INSERT INTO markets (id, market_name, total_groups, total_insured, total_providers, fee_schedule)
VALUES ('NE', 'New England', 4000, 2000000, 40000, 'A,B');
INSERT INTO markets (id, market_name, total_groups, total_insured, total_providers, fee_schedule)
VALUES ('SE', 'Southeast', 10000, 12000000, 240000, 'A,B');
INSERT INTO markets (id, market_name, total_groups, total_insured, total_providers, fee_schedule)
VALUES ('MW', 'Midwest', 7000, 2500000, 60000, 'A');
INSERT INTO markets (id, market_name, total_groups, total_insured, total_providers, fee_schedule)
VALUES ('NW', 'Northwest', 10000, 12000000, 240000, 'A,B');
INSERT INTO markets (id, market_name, total_groups, total_insured, total_providers, fee_schedule)
VALUES ('SO', 'South', 10000, 12000000, 240000, 'A,B');
INSERT INTO markets (id, market_name, total_groups, total_insured, total_providers, fee_schedule)
VALUES ('MA', 'Mid-Atlantic', 7000, 2500000, 60000, 'A');
INSERT INTO markets (id, market_name, total_groups, total_insured, total_providers, fee_schedule)
VALUES ('WE', 'West', 10000, 12000000, 240000, 'A,B');

-- the state tables for the states that are in the market
CREATE TABLE maine (
    id VARCHAR,
    market_id VARCHAR REFERENCES markets(id),
    county_name VARCHAR,
    fee_schedule VARCHAR,
    num_groups INTEGER,
    num_providers INTEGER,
);

CREATE TABLE massachussetts (
    id VARCHAR,
    market_id VARCHAR REFERENCES markets(id),
    county_name VARCHAR,
    fee_schedule VARCHAR,
    num_groups INTEGER,
    num_providers INTEGER
);

CREATE TABLE new_hampshire (
    id VARCHAR,
    market_id VARCHAR REFERENCES markets(id),
    county_name VARCHAR,
    fee_schedule VARCHAR,
    num_groups INTEGER,
    num_providers INTEGER
);

CREATE TABLE vermont (
    id VARCHAR,
    market_id VARCHAR REFERENCES markets(id),
    county_name VARCHAR,
    fee_schedule VARCHAR,
    num_groups INTEGER,
    num_providers INTEGER
);

CREATE TABLE connecticut (
    id VARCHAR,
    market_id VARCHAR REFERENCES markets(id),
    county_name VARCHAR,
    fee_schedule VARCHAR,
    num_groups INTEGER,
    num_providers INTEGER
);

CREATE TABLE rhode_island (
    id VARCHAR,
    market_id VARCHAR REFERENCES markets(id),
    county_name VARCHAR,
    fee_schedule VARCHAR,
    num_groups INTEGER,
    num_providers INTEGER
);

-- populate the state tables
INSERT INTO maine (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('ME', 'NE', 'Cumberland', 'A', 45, 1000);
INSERT INTO maine (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('ME', 'NE', 'York', 'A', 32, 900);
INSERT INTO maine (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('ME', 'NE', 'Kennebec', 'A', 25, 500);
INSERT INTO maine (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('ME', 'NE', 'Penobscot', 'A', 25, 400);
INSERT INTO maine (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('ME', 'NE', 'Androscoggin', 'A', 20, 700);
INSERT INTO maine (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('ME', 'NE', 'Aroostook', 'A', 22, 350);
INSERT INTO maine (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('ME', 'NE', 'Oxford', 'A', 30, 300);
INSERT INTO maine (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('ME', 'NE', 'Hancock', 'A', 25, 200);
INSERT INTO maine (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('ME', 'NE', 'Somerset', 'A', 26, 250);
INSERT INTO maine (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('ME', 'NE', 'Knox', 'A', 32, 150);
INSERT INTO maine (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('ME', 'NE', 'Waldo', 'A', 27, 300);
INSERT INTO maine (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('ME', 'NE', 'Lincoln', 'A', 25, 400);
INSERT INTO maine (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('ME', 'NE', 'Sagadahoc', 'A', 30, 350);
INSERT INTO maine (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('ME', 'NE', 'Franklin', 'A', 26, 250);
INSERT INTO maine (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('ME', 'NE', 'Piscataquis', 'A', 20, 200);
INSERT INTO maine (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('ME', 'NE', 'Washinton', 'A', 30, 250);

INSERT INTO connecticut (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('CT', 'NE', 'Fairfield', 'A', 45, 1000);
INSERT INTO connecticut (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('CT', 'NE', 'Hartford', 'A', 32, 900);
INSERT INTO connecticut (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('CT', 'NE', 'New Haven', 'A', 25, 500);
INSERT INTO connecticut (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('CT', 'NE', 'New London', 'A', 25, 400);
INSERT INTO connecticut (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('CT', 'NE', 'Litchfield', 'A', 20, 700);
INSERT INTO connecticut (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('CT', 'NE', 'Middlesex', 'A', 22, 350);
INSERT INTO connecticut (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('CT', 'NE', 'Tolland', 'A', 30, 300);
INSERT INTO connecticut (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('CT', 'NE', 'Windham', 'A', 25, 200);

INSERT INTO massachussetts (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('MA', 'NE', 'Barnstable', 'A,B', 45, 1000);
INSERT INTO massachussetts (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('MA', 'NE', 'Berkshire', 'A,B', 32, 900);
INSERT INTO massachussetts (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('MA', 'NE', 'Bristol', 'A,B', 25, 500);
INSERT INTO massachussetts (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('MA', 'NE', 'Dukes', 'A', 25, 400);
INSERT INTO massachussetts (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('MA', 'NE', 'Essex', 'A', 20, 700);
INSERT INTO massachussetts (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('MA', 'NE', 'Franklin', 'A', 22, 350);
INSERT INTO massachussetts (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('MA', 'NE', 'Hampden', 'A', 30, 300);
INSERT INTO massachussetts (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('MA', 'NE', 'Hampshire', 'A,B', 25, 200);
INSERT INTO massachussetts (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('MA', 'NE', 'Middlesex', 'A,B', 26, 250);
INSERT INTO massachussetts (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('MA', 'NE', 'Nantucket', 'A', 32, 150);
INSERT INTO massachussetts (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('MA', 'NE', 'Norfolk', 'A', 27, 300);
INSERT INTO massachussetts (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('MA', 'NE', 'Plymouth', 'A', 25, 400);
INSERT INTO massachussetts (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('MA', 'NE', 'Suffolk', 'A', 30, 350);
INSERT INTO massachussetts (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('MA', 'NE', 'Worcester', 'A', 26, 250);

INSERT INTO new_hampshire (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('NH', 'NE', 'Belknap', 'A', 45, 1000);
INSERT INTO new_hampshire (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('NH', 'NE', 'Carroll', 'A', 32, 900);
INSERT INTO new_hampshire (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('NH', 'NE', 'Cheshire', 'A', 25, 500);
INSERT INTO new_hampshire (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('NH', 'NE', 'Coos', 'A', 25, 400);
INSERT INTO new_hampshire (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('NH', 'NE', 'Grafton', 'A', 20, 700);
INSERT INTO new_hampshire (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('NH', 'NE', 'Hillsborough', 'A', 22, 350);
INSERT INTO new_hampshire (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('NH', 'NE', 'Merrimack', 'A', 30, 300);
INSERT INTO new_hampshire (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('NH', 'NE', 'Rockingham', 'A', 25, 200);
INSERT INTO new_hampshire (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('NH', 'NE', 'Strafford', 'A', 26, 250);
INSERT INTO new_hampshire (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('NH', 'NE', 'Sullivan', 'A', 32, 150);

INSERT INTO rhode_island (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('RI', 'NE', 'Bristol', 'A', 45, 1000);
INSERT INTO rhode_island (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('RI', 'NE', 'Kent', 'A', 32, 900);
INSERT INTO rhode_island (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('RI', 'NE', 'Newport', 'A', 25, 500);
INSERT INTO rhode_island (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('RI', 'NE', 'Providence', 'A', 25, 400);
INSERT INTO rhode_island (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('RI', 'NE', 'Washington', 'A', 20, 700);

INSERT INTO vermont (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('VT', 'NE', 'Addison', 'A', 45, 1000);
INSERT INTO vermont (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('VT', 'NE', 'Bennington', 'A', 32, 900);
INSERT INTO vermont (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('VT', 'NE', 'Caledonia', 'A', 25, 500);
INSERT INTO vermont (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('VT', 'NE', 'Chittenden', 'A', 25, 400);
INSERT INTO vermont (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('VT', 'NE', 'Essex', 'A', 20, 700);
INSERT INTO vermont (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('VT', 'NE', 'Franklin', 'A', 22, 350);
INSERT INTO vermont (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('VT', 'NE', 'Grand Isle', 'A', 30, 300);
INSERT INTO vermont (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('VT', 'NE', 'Lamoille', 'A', 25, 200);
INSERT INTO vermont (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('VT', 'NE', 'Orange', 'A', 26, 250);
INSERT INTO vermont (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('VT', 'NE', 'Orleans', 'A', 32, 150);
INSERT INTO vermont (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('VT', 'NE', 'Rutland', 'A', 27, 300);
INSERT INTO vermont (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('VT', 'NE', 'Washington', 'A', 25, 400);
INSERT INTO vermont (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('VT', 'NE', 'Windham', 'A', 30, 350);
INSERT INTO vermont (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('VT', 'NE', 'Windsor', 'A', 26, 250);

-- county tables for the counties in the states
CREATE TABLE cumberland (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES maine(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE york (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES maine(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE kennebec (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES maine(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE penobscot (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES maine(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE androscoggin (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES maine(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE aroostook (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES maine(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE oxford (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES maine(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE hancock (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES maine(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE somerset (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES maine(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE knox (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES maine(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE waldo (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES maine(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE lincoln (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES maine(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE sagadahoc (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES maine(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE franklin (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES maine(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE piscataquis (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES maine(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE washington (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES maine(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

-- had to alter state tables to add a pkey
ALTER TABLE maine ADD UNIQUE (county_name);
ALTER TABLE massachussetts ADD UNIQUE (county_name);
ALTER TABLE new_hampshire ADD UNIQUE (county_name);
ALTER TABLE vermont ADD UNIQUE (county_name);
ALTER TABLE connecticut ADD UNIQUE (county_name);
ALTER TABLE rhode_island ADD UNIQUE (county_name);

-- populate the county tables

INSERT INTO cumberland (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Cumberland', 'Portland', 100, 5, 100000, 2000);
INSERT INTO cumberland (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Cumberland', 'Brunswick', 50, 3, 50000, 1000);
INSERT INTO cumberland (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Cumberland', 'Windham', 40, 2, 40000, 800);
INSERT INTO cumberland (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Cumberland', 'Gray', 30, 2, 30000, 600);
INSERT INTO cumberland (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Cumberland', 'Falmouth', 20, 1, 20000, 400);
INSERT INTO cumberland (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Cumberland', 'Yarmouth', 25, 1, 25000, 500);
INSERT INTO cumberland (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Cumberland', 'Freeport', 15, 1, 15000, 300);
INSERT INTO cumberland (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Cumberland', 'Cumberland', 30, 2, 30000, 600);

INSERT INTO york (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'York', 'York', 90, 4, 80000, 1800);
INSERT INTO york (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'York', 'Biddeford', 60, 3, 60000, 1200);
INSERT INTO york (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'York', 'Kennebunk', 40, 2, 40000, 800);
INSERT INTO york (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'York', 'Saco', 30, 2, 30000, 600);
INSERT INTO york (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'York', 'Wells', 20, 1, 20000, 400);
INSERT INTO york (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'York', 'Ogunquit', 25, 1, 25000, 500);
INSERT INTO york (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'York', 'Sanford', 15, 1, 15000, 300);
INSERT INTO york (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'York', 'Wells', 30, 2, 30000, 600);

INSERT INTO kennebec (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Kennebec', 'Augusta', 50, 3, 50000, 1000);
INSERT INTO kennebec (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Kennebec', 'Waterville', 30, 2, 30000, 600);
INSERT INTO kennebec (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Kennebec', 'Gardiner', 20, 1, 20000, 400);
INSERT INTO kennebec (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Kennebec', 'Hallowell', 25, 1, 25000, 500);
INSERT INTO kennebec (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Kennebec', 'Winthrop', 15, 1, 15000, 300);
INSERT INTO kennebec (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Kennebec', 'Farmingdale', 20, 1, 20000, 400);
INSERT INTO kennebec (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Kennebec', 'Chelsea', 25, 1, 25000, 500);
INSERT INTO kennebec (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Kennebec', 'Litchfield', 30, 2, 30000, 600);

INSERT INTO penobscot (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Penobscot', 'Bangor', 40, 2, 40000, 800);
INSERT INTO penobscot (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Penobscot', 'Orono', 30, 2, 30000, 600);
INSERT INTO penobscot (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Penobscot', 'Old Town', 20, 1, 20000, 400);
INSERT INTO penobscot (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Penobscot', 'Lincoln', 25, 1, 25000, 500);
INSERT INTO penobscot (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Penobscot', 'Millinocket', 15, 1, 15000, 300);
INSERT INTO penobscot (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Penobscot', 'Dexter', 20, 1, 20000, 400);
INSERT INTO penobscot (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Penobscot', 'Newport', 25, 1, 25000, 500);
INSERT INTO penobscot (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Penobscot', 'Corinna', 30, 2, 30000, 600);

INSERT INTO androscoggin (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Androscoggin', 'Lewiston', 70, 3, 70000, 1400);
INSERT INTO androscoggin (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Androscoggin', 'Auburn', 50, 2, 50000, 1000);
INSERT INTO androscoggin (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Androscoggin', 'Lisbon', 40, 2, 40000, 800);
INSERT INTO androscoggin (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Androscoggin', 'Durham', 30, 1, 30000, 600);
INSERT INTO androscoggin (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Androscoggin', 'Poland', 25, 1, 25000, 500);
INSERT INTO androscoggin (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Androscoggin', 'Minot', 20, 1, 20000, 400);
INSERT INTO androscoggin (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Androscoggin', 'Turner', 25, 1, 25000, 500);
INSERT INTO androscoggin (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Androscoggin', 'Greene', 30, 2, 30000, 600);

INSERT INTO aroostook (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Aroostook', 'Presque Isle', 35, 2, 35000, 700);
INSERT INTO aroostook (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Aroostook', 'Caribou', 25, 1, 25000, 500);
INSERT INTO aroostook (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Aroostook', 'Houlton', 20, 1, 20000, 400);
INSERT INTO aroostook (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Aroostook', 'Fort Kent', 15, 1, 15000, 300);
INSERT INTO aroostook (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Aroostook', 'Madawaska', 20, 1, 20000, 400);
INSERT INTO aroostook (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Aroostook', 'Van Buren', 25, 1, 25000, 500);
INSERT INTO aroostook (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Aroostook', 'Limestone', 30, 2, 30000, 600);
INSERT INTO aroostook (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Aroostook', 'Mars Hill', 35, 2, 35000, 700);

INSERT INTO oxford (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Oxford', 'South Paris', 30, 2, 30000, 600);
INSERT INTO oxford (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Oxford', 'Rumford', 20, 1, 20000, 400);
INSERT INTO oxford (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Oxford', 'Norway', 25, 1, 25000, 500);
INSERT INTO oxford (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Oxford', 'Bethel', 15, 1, 15000, 300);
INSERT INTO oxford (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Oxford', 'Fryeburg', 20, 1, 20000, 400);
INSERT INTO oxford (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Oxford', 'Mexico', 25, 1, 25000, 500);
INSERT INTO oxford (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Oxford', 'Dixfield', 30, 2, 30000, 600);
INSERT INTO oxford (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Oxford', 'Paris', 35, 2, 35000, 700);

INSERT INTO hancock (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Hancock', 'Ellsworth', 20, 1, 20000, 400);
INSERT INTO hancock (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Hancock', 'Bar Harbor', 15, 1, 15000, 300);
INSERT INTO hancock (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Hancock', 'Blue Hill', 20, 1, 20000, 400);
INSERT INTO hancock (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Hancock', 'Bucksport', 25, 1, 25000, 500);
INSERT INTO hancock (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Hancock', 'Castine', 30, 2, 30000, 600);
INSERT INTO hancock (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Hancock', 'Deer Isle', 35, 2, 35000, 700);
INSERT INTO hancock (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Hancock', 'Gouldsboro', 25, 1, 25000, 500);

INSERT INTO somerset (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Somerset', 'Skowhegan', 25, 1, 25000, 500);
INSERT INTO somerset (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Somerset', 'Madison', 20, 1, 20000, 400);
INSERT INTO somerset (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Somerset', 'Norridgewock', 25, 1, 25000, 500);
INSERT INTO somerset (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Somerset', 'Fairfield', 15, 1, 15000, 300);
INSERT INTO somerset (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Somerset', 'Pittsfield', 20, 1, 20000, 400);
INSERT INTO somerset (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Somerset', 'Bingham', 25, 1, 25000, 500);
INSERT INTO somerset (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Somerset', 'Anson', 30, 2, 30000, 600);
INSERT INTO somerset (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Somerset', 'Starks', 35, 2, 35000, 700);

INSERT INTO knox (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Knox', 'Rockland', 15, 1, 15000, 300);
INSERT INTO knox (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Knox', 'Camden', 20, 1, 20000, 400);
INSERT INTO knox (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Knox', 'Thomaston', 25, 1, 25000, 500);

INSERT INTO waldo (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Waldo', 'Belfast', 30, 2, 30000, 600);
INSERT INTO waldo (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Waldo', 'Searsport', 20, 1, 20000, 400);
INSERT INTO waldo (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Waldo', 'Lincolnville', 25, 1, 25000, 500);
INSERT INTO waldo (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Waldo', 'Stockton Springs', 15, 1, 15000, 300);
INSERT INTO waldo (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Waldo', 'Unity', 20, 1, 20000, 400);
INSERT INTO waldo (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Waldo', 'Swanville', 25, 1, 25000, 500);
INSERT INTO waldo (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Waldo', 'Frankfort', 30, 2, 30000, 600);
INSERT INTO waldo (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Waldo', 'Winterport', 35, 2, 35000, 700);

INSERT INTO lincoln (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Lincoln', 'Wiscasset', 40, 2, 40000, 800);
INSERT INTO lincoln (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Lincoln', 'Damariscotta', 30, 2, 30000, 600);
INSERT INTO lincoln (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Lincoln', 'Newcastle', 20, 1, 20000, 400);
INSERT INTO lincoln (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Lincoln', 'Boothbay Harbor', 25, 1, 25000, 500);
INSERT INTO lincoln (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Lincoln', 'Edgecomb', 15, 1, 15000, 300);
INSERT INTO lincoln (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Lincoln', 'Bristol', 20, 1, 20000, 400);
INSERT INTO lincoln (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Lincoln', 'South Bristol', 25, 1, 25000, 500);
INSERT INTO lincoln (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Lincoln', 'Alna', 30, 2, 30000, 600);

INSERT INTO sagadahoc (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Sagadahoc', 'Bath', 35, 2, 35000, 700);
INSERT INTO sagadahoc (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Sagadahoc', 'Topsham', 25, 1, 25000, 500);
INSERT INTO sagadahoc (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Sagadahoc', 'Richmond', 20, 1, 20000, 400);
INSERT INTO sagadahoc (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Sagadahoc', 'Bowdoinham', 25, 1, 25000, 500);
INSERT INTO sagadahoc (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Sagadahoc', 'Woolwich', 15, 1, 15000, 300);
INSERT INTO sagadahoc (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Sagadahoc', 'Arrowsic', 20, 1, 20000, 400);
INSERT INTO sagadahoc (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Sagadahoc', 'Georgetown', 25, 1, 25000, 500);
INSERT INTO sagadahoc (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Sagadahoc', 'Phippsburg', 30, 2, 30000, 600);

INSERT INTO franklin (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Franklin', 'Farmington', 25, 1, 25000, 500);
INSERT INTO franklin (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Franklin', 'Jay', 20, 1, 20000, 400);
INSERT INTO franklin (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Franklin', 'Wilton', 25, 1, 25000, 500);
INSERT INTO franklin (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Franklin', 'Carrabassett Valley', 15, 1, 15000, 300);
INSERT INTO franklin (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Franklin', 'Phillips', 20, 1, 20000, 400);
INSERT INTO franklin (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Franklin', 'Strong', 25, 1, 25000, 500);
INSERT INTO franklin (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Franklin', 'New Sharon', 30, 2, 30000, 600);
INSERT INTO franklin (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Franklin', 'Temple', 35, 2, 35000, 700);

INSERT INTO piscataquis (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Piscataquis', 'Dover-Foxcroft', 20, 1, 20000, 400);
INSERT INTO piscataquis (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Piscataquis', 'Greenville', 15, 1, 15000, 300);
INSERT INTO piscataquis (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Piscataquis', 'Milo', 20, 1, 20000, 400);
INSERT INTO piscataquis (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Piscataquis', 'Guilford', 25, 1, 25000, 500);
INSERT INTO piscataquis (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Piscataquis', 'Sangerville', 30, 2, 30000, 600);
INSERT INTO piscataquis (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Piscataquis', 'Brownville', 35, 2, 35000, 700);
INSERT INTO piscataquis (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Piscataquis', 'Sebec', 25, 1, 25000, 500);

INSERT INTO washington (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Washington', 'Machias', 25, 1, 25000, 500);
INSERT INTO washington (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Washington', 'Calais', 20, 1, 20000, 400);
INSERT INTO washington (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Washington', 'Eastport', 25, 1, 25000, 500);
INSERT INTO washington (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Washington', 'Jonesport', 15, 1, 15000, 300);
INSERT INTO washington (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Washington', 'Milbridge', 20, 1, 20000, 400);
INSERT INTO washington (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Washington', 'Addison', 25, 1, 25000, 500);
INSERT INTO washington (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Washington', 'Harrington', 30, 2, 30000, 600);
INSERT INTO washington (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Washington', 'Cherryfield', 35, 2, 35000, 700);

-- drop the county tables
DROP TABLE cumberland;
DROP TABLE york;
DROP TABLE kennebec;
DROP TABLE penobscot;
DROP TABLE androscoggin;
DROP TABLE aroostook;
DROP TABLE oxford;
DROP TABLE hancock;
DROP TABLE somerset;
DROP TABLE knox;
DROP TABLE waldo;
DROP TABLE lincoln;
DROP TABLE sagadahoc;
DROP TABLE franklin;
DROP TABLE piscataquis;
DROP TABLE washington;
-- had to alter the keys of the counties

-- massachussetts county tables
CREATE TABLE suffolk (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES massachussetts(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE middlesex (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES massachussetts(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE essex (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES massachussetts(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE norfolk (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES massachussetts(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE plymouth (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES massachussetts(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE worcester (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES massachussetts(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE hampden (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES massachussetts(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE hampshire (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES massachussetts(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE berkshire (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES massachussetts(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE barnstable (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES massachussetts(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE dukes (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES massachussetts(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE nantucket (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES massachussetts(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE franklin (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES massachussetts(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE bristol (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES massachussetts(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

-- populate the massachussetts county tables

INSERT INTO suffolk (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Suffolk', 'Boston', 100, 5, 100000, 2000);
INSERT INTO suffolk (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Suffolk', 'Chelsea', 70, 3, 70000, 1400);
INSERT INTO suffolk (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Suffolk', 'Revere', 50, 2, 50000, 1000);
INSERT INTO suffolk (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Suffolk', 'Winthrop', 40, 2, 40000, 800);
INSERT INTO suffolk (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Suffolk', 'Jamaica Plain', 30, 1, 30000, 600);
INSERT INTO suffolk (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Suffolk', 'Dorchester', 40, 2, 40000, 800);
INSERT INTO suffolk (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Suffolk', 'Roxbury', 50, 2, 50000, 1000);
INSERT INTO suffolk (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Suffolk', 'Mattapan', 60, 3, 60000, 1200);

INSERT INTO middlesex (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Middlesex', 'Cambridge', 80, 4, 80000, 1600);
INSERT INTO middlesex (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Middlesex', 'Lowell', 60, 3, 60000, 1200);
INSERT INTO middlesex (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Middlesex', 'Framingham', 50, 2, 50000, 1000);
INSERT INTO middlesex (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Middlesex', 'Waltham', 40, 2, 40000, 800);
INSERT INTO middlesex (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Middlesex', 'Newton', 30, 1, 30000, 600);
INSERT INTO middlesex (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Middlesex', 'Woburn', 40, 2, 40000, 800);
INSERT INTO middlesex (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Middlesex', 'Malden', 50, 2, 50000, 1000);
INSERT INTO middlesex (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Middlesex', 'Medford', 60, 3, 60000, 1200);

INSERT INTO essex (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Essex', 'Salem', 70, 3, 70000, 1400);
INSERT INTO essex (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Essex', 'Lynn', 50, 2, 50000, 1000);
INSERT INTO essex (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Essex', 'Gloucester', 40, 2, 40000, 800);
INSERT INTO essex (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Essex', 'Newburyport', 30, 1, 30000, 600);
INSERT INTO essex (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Essex', 'Haverhill', 40, 2, 40000, 800);
INSERT INTO essex (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Essex', 'Lawrence', 50, 2, 50000, 1000);
INSERT INTO essex (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Essex', 'Beverly', 60, 3, 60000, 1200);
INSERT INTO essex (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Essex', 'Peabody', 70, 3, 70000, 1400);

INSERT INTO norfolk (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Norfolk', 'Quincy', 60, 3, 60000, 1200);
INSERT INTO norfolk (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Norfolk', 'Weymouth', 40, 2, 40000, 800);
INSERT INTO norfolk (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Norfolk', 'Brookline', 30, 1, 30000, 600);
INSERT INTO norfolk (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Norfolk', 'Dedham', 20, 1, 20000, 400);
INSERT INTO norfolk (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Norfolk', 'Randolph', 30, 1, 30000, 600);
INSERT INTO norfolk (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Norfolk', 'Canton', 40, 2, 40000, 800);
INSERT INTO norfolk (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Norfolk', 'Stoughton', 50, 2, 50000, 1000);
INSERT INTO norfolk (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Norfolk', 'Foxborough', 60, 3, 60000, 1200);

INSERT INTO plymouth (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Plymouth', 'Plymouth', 50, 2, 50000, 1000);
INSERT INTO plymouth (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Plymouth', 'Brockton', 40, 2, 40000, 800);
INSERT INTO plymouth (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Plymouth', 'Bridgewater', 30, 1, 30000, 600);
INSERT INTO plymouth (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Plymouth', 'Marshfield', 20, 1, 20000, 400);
INSERT INTO plymouth (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Plymouth', 'Kingston', 30, 1, 30000, 600);
INSERT INTO plymouth (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Plymouth', 'Pembroke', 40, 2, 40000, 800);
INSERT INTO plymouth (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Plymouth', 'Wareham', 50, 2, 50000, 1000);
INSERT INTO plymouth (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Plymouth', 'Carver', 60, 3, 60000, 1200);

INSERT INTO worcester (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Worcester', 'Worcester', 70, 3, 70000, 1400);
INSERT INTO worcester (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Worcester', 'Fitchburg', 50, 2, 50000, 1000);
INSERT INTO worcester (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Worcester', 'Leominster', 40, 2, 40000, 800);
INSERT INTO worcester (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Worcester', 'Milford', 30, 1, 30000, 600);
INSERT INTO worcester (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Worcester', 'Gardner', 40, 2, 40000, 800);
INSERT INTO worcester (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Worcester', 'Southbridge', 50, 2, 50000, 1000);
INSERT INTO worcester (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Worcester', 'Auburn', 60, 3, 60000, 1200);
INSERT INTO worcester (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Worcester', 'Holden', 70, 3, 70000, 1400);

INSERT INTO hampden (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Hampden', 'Springfield', 60, 3, 60000, 1200);
INSERT INTO hampden (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Hampden', 'Chicopee', 40, 2, 40000, 800);
INSERT INTO hampden (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Hampden', 'Holyoke', 30, 1, 30000, 600);
INSERT INTO hampden (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Hampden', 'Westfield', 20, 1, 20000, 400);
INSERT INTO hampden (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Hampden', 'Agawam', 30, 1, 30000, 600);
INSERT INTO hampden (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Hampden', 'West Springfield', 40, 2, 40000, 800);
INSERT INTO hampden (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Hampden', 'Longmeadow', 50, 2, 50000, 1000);
INSERT INTO hampden (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Hampden', 'Wilbraham', 60, 3, 60000, 1200);

INSERT INTO hampshire (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Hampshire', 'Northampton', 50, 2, 50000, 1000);
INSERT INTO hampshire (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Hampshire', 'Amherst', 40, 2, 40000, 800);
INSERT INTO hampshire (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Hampshire', 'South Hadley', 30, 1, 30000, 600);
INSERT INTO hampshire (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Hampshire', 'Easthampton', 20, 1, 20000, 400);
INSERT INTO hampshire (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Hampshire', 'Ware', 30, 1, 30000, 600);
INSERT INTO hampshire (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Hampshire', 'Belchertown', 40, 2, 40000, 800);
INSERT INTO hampshire (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Hampshire', 'Granby', 50, 2, 50000, 1000);
INSERT INTO hampshire (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Hampshire', 'Hadley', 60, 3, 60000, 1200);

INSERT INTO berkshire (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Berkshire', 'Pittsfield', 60, 3, 60000, 1200);
INSERT INTO berkshire (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Berkshire', 'North Adams', 40, 2, 40000, 800);
INSERT INTO berkshire (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Berkshire', 'Great Barrington', 30, 1, 30000, 600);
INSERT INTO berkshire (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Berkshire', 'Lenox', 20, 1, 20000, 400);
INSERT INTO berkshire (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Berkshire', 'Lee', 30, 1, 30000, 600);
INSERT INTO berkshire (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Berkshire', 'Adams', 40, 2, 40000, 800);
INSERT INTO berkshire (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Berkshire', 'Williamstown', 50, 2, 50000, 1000);
INSERT INTO berkshire (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Berkshire', 'Stockbridge', 60, 3, 60000, 1200);

INSERT INTO barnstable (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Barnstable', 'Barnstable', 50, 2, 50000, 1000);
INSERT INTO barnstable (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Barnstable', 'Yarmouth', 40, 2, 40000, 800);
INSERT INTO barnstable (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Barnstable', 'Falmouth', 30, 1, 30000, 600);
INSERT INTO barnstable (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Barnstable', 'Mashpee', 20, 1, 20000, 400);
INSERT INTO barnstable (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Barnstable', 'Sandwich', 30, 1, 30000, 600);
INSERT INTO barnstable (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Barnstable', 'Bourne', 40, 2, 40000, 800);
INSERT INTO barnstable (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Barnstable', 'Orleans', 50, 2, 50000, 1000);
INSERT INTO barnstable (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Barnstable', 'Chatham', 60, 3, 60000, 1200);

INSERT INTO dukes (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Dukes', 'Edgartown', 40, 2, 40000, 800);
INSERT INTO dukes (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Dukes', 'Oak Bluffs', 30, 1, 30000, 600);
INSERT INTO dukes (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Dukes', 'Tisbury', 20, 1, 20000, 400);
INSERT INTO dukes (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Dukes', 'West Tisbury', 10, 1, 10000, 200);
INSERT INTO dukes (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Dukes', 'Chilmark', 20, 1, 20000, 400);
INSERT INTO dukes (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Dukes', 'Aquinnah', 30, 1, 30000, 600);
INSERT INTO dukes (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Dukes', 'Gosnold', 40, 2, 40000, 800);
INSERT INTO dukes (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Dukes', 'Tisbury', 50, 2, 50000, 1000);

INSERT INTO nantucket (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Nantucket', 'Nantucket', 40, 2, 40000, 800);

INSERT INTO franklin (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Franklin', 'Greenfield', 50, 2, 50000, 1000);
INSERT INTO franklin (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Franklin', 'Orange', 40, 2, 40000, 800);
INSERT INTO franklin (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Franklin', 'Deerfield', 30, 1, 30000, 600);
INSERT INTO franklin (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Franklin', 'Shelburne', 20, 1, 20000, 400);
INSERT INTO franklin (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Franklin', 'Bernardston', 30, 1, 30000, 600);
INSERT INTO franklin (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Franklin', 'Leverett', 40, 2, 40000, 800);
INSERT INTO franklin (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Franklin', 'Sunderland', 50, 2, 50000, 1000);
INSERT INTO franklin (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Franklin', 'Montague', 60, 3, 60000, 1200);

INSERT INTO bristol (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Bristol', 'Fall River', 60, 3, 60000, 1200);
INSERT INTO bristol (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Bristol', 'New Bedford', 40, 2, 40000, 800);
INSERT INTO bristol (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Bristol', 'Taunton', 30, 1, 30000, 600);
INSERT INTO bristol (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Bristol', 'Attleboro', 20, 1, 20000, 400);
INSERT INTO bristol (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Bristol', 'Mansfield', 30, 1, 30000, 600);
INSERT INTO bristol (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Bristol', 'Dartmouth', 40, 2, 40000, 800);
INSERT INTO bristol (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Bristol', 'Somerset', 50, 2, 50000, 1000);
INSERT INTO bristol (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Bristol', 'Swansea', 60, 3, 60000, 1200);

-- new hampshire county tables

CREATE TABLE rockingham (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES new_hampshire(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE hillsborough (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES new_hampshire(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE strafford (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES new_hampshire(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE belknap (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES new_hampshire(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE carroll (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES new_hampshire(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE cheshire (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES new_hampshire(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE coos (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES new_hampshire(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE grafton (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES new_hampshire(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

-- populate the new hampshire county tables
