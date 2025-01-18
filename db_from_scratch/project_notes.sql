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

INSERT INTO rockingham (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Rockingham', 'Portsmouth', 60, 3, 60000, 1200);
INSERT INTO rockingham (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Rockingham', 'Derry', 40, 2, 40000, 800);
INSERT INTO rockingham (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Rockingham', 'Salem', 30, 1, 30000, 600);
INSERT INTO rockingham (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Rockingham', 'Exeter', 20, 1, 20000, 400);
INSERT INTO rockingham (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Rockingham', 'Windham', 30, 1, 30000, 600);
INSERT INTO rockingham (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Rockingham', 'Hampton', 40, 2, 40000, 800);
INSERT INTO rockingham (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Rockingham', 'Londonderry', 50, 2, 50000, 1000);
INSERT INTO rockingham (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Rockingham', 'Plaistow', 60, 3, 60000, 1200);

INSERT INTO hillsborough (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Hillsborough', 'Manchester', 70, 3, 70000, 1400);
INSERT INTO hillsborough (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Hillsborough', 'Nashua', 50, 2, 50000, 1000);
INSERT INTO hillsborough (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Hillsborough', 'Bedford', 40, 2, 40000, 800);
INSERT INTO hillsborough (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Hillsborough', 'Hudson', 30, 1, 30000, 600);
INSERT INTO hillsborough (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Hillsborough', 'Merrimack', 40, 2, 40000, 800);
INSERT INTO hillsborough (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Hillsborough', 'Goffstown', 50, 2, 50000, 1000);
INSERT INTO hillsborough (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Hillsborough', 'Milford', 60, 3, 60000, 1200);
INSERT INTO hillsborough (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Hillsborough', 'Amherst', 70, 3, 70000, 1400);

INSERT INTO strafford (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Strafford', 'Dover', 50, 2, 50000, 1000);
INSERT INTO strafford (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Strafford', 'Rochester', 40, 2, 40000, 800);
INSERT INTO strafford (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Strafford', 'Durham', 30, 1, 30000, 600);
INSERT INTO strafford (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Strafford', 'Somersworth', 20, 1, 20000, 400);
INSERT INTO strafford (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Strafford', 'Barrington', 30, 1, 30000, 600);
INSERT INTO strafford (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Strafford', 'Lee', 40, 2, 40000, 800);
INSERT INTO strafford (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Strafford', 'Madbury', 50, 2, 50000, 1000);
INSERT INTO strafford (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Strafford', 'Rollinsford', 60, 3, 60000, 1200);

INSERT INTO belknap (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Belknap', 'Laconia', 40, 2, 40000, 800);
INSERT INTO belknap (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Belknap', 'Gilford', 30, 1, 30000, 600);
INSERT INTO belknap (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Belknap', 'Meredith', 20, 1, 20000, 400);
INSERT INTO belknap (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Belknap', 'Alton', 10, 1, 10000, 200);
INSERT INTO belknap (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Belknap', 'Sanbornton', 20, 1, 20000, 400);
INSERT INTO belknap (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Belknap', 'Tilton', 30, 1, 30000, 600);
INSERT INTO belknap (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Belknap', 'Belmont', 40, 2, 40000, 800);
INSERT INTO belknap (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Belknap', 'New Hampton', 50, 2, 50000, 1000);

INSERT INTO carroll (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Carroll', 'Conway', 50, 2, 50000, 1000);
INSERT INTO carroll (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Carroll', 'Wolfeboro', 40, 2, 40000, 800);
INSERT INTO carroll (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Carroll', 'Ossipee', 30, 1, 30000, 600);
INSERT INTO carroll (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Carroll', 'Moultonborough', 20, 1, 20000, 400);
INSERT INTO carroll (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Carroll', 'Tamworth', 30, 1, 30000, 600);
INSERT INTO carroll (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Carroll', 'Madison', 40, 2, 40000, 800);
INSERT INTO carroll (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Carroll', 'Bartlett', 50, 2, 50000, 1000);
INSERT INTO carroll (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Carroll', 'Jackson', 60, 3, 60000, 1200);

INSERT INTO cheshire (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Cheshire', 'Keene', 60, 3, 60000, 1200);
INSERT INTO cheshire (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Cheshire', 'Jaffrey', 40, 2, 40000, 800);
INSERT INTO cheshire (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Cheshire', 'Rindge', 30, 1, 30000, 600);
INSERT INTO cheshire (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Cheshire', 'Walpole', 20, 1, 20000, 400);
INSERT INTO cheshire (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Cheshire', 'Winchester', 30, 1, 30000, 600);
INSERT INTO cheshire (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Cheshire', 'Chesterfield', 40, 2, 40000, 800);
INSERT INTO cheshire (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Cheshire', 'Hinsdale', 50, 2, 50000, 1000);
INSERT INTO cheshire (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Cheshire', 'Swanzey', 60, 3, 60000, 1200);

INSERT INTO coos (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Coos', 'Berlin', 50, 2, 50000, 1000);
INSERT INTO coos (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Coos', 'Colebrook', 40, 2, 40000, 800);
INSERT INTO coos (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Coos', 'Lancaster', 30, 1, 30000, 600);
INSERT INTO coos (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Coos', 'Gorham', 20, 1, 20000, 400);
INSERT INTO coos (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Coos', 'Northumberland', 30, 1, 30000, 600);
INSERT INTO coos (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Coos', 'Pittsburg', 40, 2, 40000, 800);
INSERT INTO coos (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Coos', 'Stewartstown', 50, 2, 50000, 1000);
INSERT INTO coos (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Coos', 'Whitefield', 60, 3, 60000, 1200);

INSERT INTO grafton (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Grafton', 'Lebanon', 60, 3, 60000, 1200);
INSERT INTO grafton (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Grafton', 'Hanover', 40, 2, 40000, 800);
INSERT INTO grafton (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Grafton', 'Plymouth', 30, 1, 30000, 600);
INSERT INTO grafton (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Grafton', 'Littleton', 20, 1, 20000, 400);
INSERT INTO grafton (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Grafton', 'Woodsville', 30, 1, 30000, 600);
INSERT INTO grafton (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Grafton', 'Enfield', 40, 2, 40000, 800);
INSERT INTO grafton (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Grafton', 'Canaan', 50, 2, 50000, 1000);
INSERT INTO grafton (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Grafton', 'Bristol', 60, 3, 60000, 1200);

-- vermont

CREATE TABLE addison (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES vermont(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE bennington (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES vermont(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE caledonia (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES vermont(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE chittenden (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES vermont(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE essex_vt (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES vermont(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE franklin_vt (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES vermont(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE grand_isle (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES vermont(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE lamoille (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES vermont(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE orange (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES vermont(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE orleans (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES vermont(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE rutland (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES vermont(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE washington_vt (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES vermont(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE windham (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES vermont(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE windsor (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES vermont(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

-- populate the vermont county tables

INSERT INTO addison (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Addison', 'Middlebury', 60, 3, 60000, 1200);
INSERT INTO addison (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Addison', 'Vergennes', 40, 2, 40000, 800);
INSERT INTO addison (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Addison', 'Bristol', 30, 1, 30000, 600);
INSERT INTO addison (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Addison', 'Orwell', 20, 1, 20000, 400);
INSERT INTO addison (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Addison', 'Shoreham', 30, 1, 30000, 600);
INSERT INTO addison (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Addison', 'Cornwall', 40, 2, 40000, 800);
INSERT INTO addison (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Addison', 'New Haven', 50, 2, 50000, 1000);
INSERT INTO addison (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Addison', 'Weybridge', 60, 3, 60000, 1200);

INSERT INTO bennington (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Bennington', 'Bennington', 50, 2, 50000, 1000);
INSERT INTO bennington (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Bennington', 'Manchester', 40, 2, 40000, 800);
INSERT INTO bennington (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Bennington', 'Arlington', 30, 1, 30000, 600);
INSERT INTO bennington (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Bennington', 'Dorset', 20, 1, 20000, 400);
INSERT INTO bennington (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Bennington', 'Pownal', 30, 1, 30000, 600);
INSERT INTO bennington (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Bennington', 'Shaftsbury', 40, 2, 40000, 800);
INSERT INTO bennington (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Bennington', 'Woodford', 50, 2, 50000, 1000);
INSERT INTO bennington (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Bennington', 'Sunderland', 60, 3, 60000, 1200);

INSERT INTO caledonia (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Caledonia', 'St. Johnsbury', 60, 3, 60000, 1200);
INSERT INTO caledonia (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Caledonia', 'Lyndon', 40, 2, 40000, 800);
INSERT INTO caledonia (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Caledonia', 'Hardwick', 30, 1, 30000, 600);
INSERT INTO caledonia (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Caledonia', 'Danville', 20, 1, 20000, 400);
INSERT INTO caledonia (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Caledonia', 'Peacham', 30, 1, 30000, 600);
INSERT INTO caledonia (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Caledonia', 'Barnet', 40, 2, 40000, 800);
INSERT INTO caledonia (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Caledonia', 'Burke', 50, 2, 50000, 1000);
INSERT INTO caledonia (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Caledonia', 'Walden', 60, 3, 60000, 1200);

INSERT INTO chittenden (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Chittenden', 'Burlington', 70, 3, 70000, 1400);
INSERT INTO chittenden (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Chittenden', 'South Burlington', 50, 2, 50000, 1000);
INSERT INTO chittenden (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Chittenden', 'Essex', 40, 2, 40000, 800);
INSERT INTO chittenden (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Chittenden', 'Colchester', 30, 1, 30000, 600);
INSERT INTO chittenden (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Chittenden', 'Williston', 40, 2, 40000, 800);
INSERT INTO chittenden (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Chittenden', 'Milton', 50, 2, 50000, 1000);
INSERT INTO chittenden (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Chittenden', 'Shelburne', 60, 3, 60000, 1200);
INSERT INTO chittenden (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Chittenden', 'Winooski', 70, 3, 70000, 1400);

INSERT INTO essex_vt (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Essex', 'Guildhall', 50, 2, 50000, 1000);
INSERT INTO essex_vt (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Essex', 'Lunenburg', 40, 2, 40000, 800);
INSERT INTO essex_vt (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Essex', 'Concord', 30, 1, 30000, 600);
INSERT INTO essex_vt (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Essex', 'Bloomfield', 20, 1, 20000, 400);
INSERT INTO essex_vt (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Essex', 'Victory', 30, 1, 30000, 600);
INSERT INTO essex_vt (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Essex', 'Maidstone', 40, 2, 40000, 800);
INSERT INTO essex_vt (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Essex', 'Granby', 50, 2, 50000, 1000);
INSERT INTO essex_vt (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Essex', 'Brunswick', 60, 3, 60000, 1200);

INSERT INTO franklin_vt (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Franklin', 'St. Albans', 60, 3, 60000, 1200);
INSERT INTO franklin_vt (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Franklin', 'Swanton', 40, 2, 40000, 800);
INSERT INTO franklin_vt (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Franklin', 'Fairfax', 30, 1, 30000, 600);
INSERT INTO franklin_vt (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Franklin', 'Georgia', 20, 1, 20000, 400);
INSERT INTO franklin_vt (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Franklin', 'Fairfield', 30, 1, 30000, 600);
INSERT INTO franklin_vt (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Franklin', 'Sheldon', 40, 2, 40000, 800);
INSERT INTO franklin_vt (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Franklin', 'Highgate', 50, 2, 50000, 1000);
INSERT INTO franklin_vt (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Franklin', 'Bakersfield', 60, 3, 60000, 1200);

INSERT INTO grand_isle (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Grand Isle', 'Grand Isle', 50, 2, 50000, 1000);
INSERT INTO grand_isle (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Grand Isle', 'South Hero', 40, 2, 40000, 800);
INSERT INTO grand_isle (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Grand Isle', 'North Hero', 30, 1, 30000, 600);
INSERT INTO grand_isle (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Grand Isle', 'Alburgh', 20, 1, 20000, 400);
INSERT INTO grand_isle (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Grand Isle', 'Isle La Motte', 30, 1, 30000, 600);
INSERT INTO grand_isle (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Grand Isle', 'Isle La Motte', 40, 2, 40000, 800);
INSERT INTO grand_isle (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Grand Isle', 'Isle La Motte', 50, 2, 50000, 1000);
INSERT INTO grand_isle (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Grand Isle', 'Isle La Motte', 60, 3, 60000, 1200);

INSERT INTO lamoille (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Lamoille', 'Hyde Park', 50, 2, 50000, 1000);
INSERT INTO lamoille (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Lamoille', 'Morristown', 40, 2, 40000, 800);
INSERT INTO lamoille (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Lamoille', 'Stowe', 30, 1, 30000, 600);
INSERT INTO lamoille (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Lamoille', 'Cambridge', 20, 1, 20000, 400);
INSERT INTO lamoille (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Lamoille', 'Johnson', 30, 1, 30000, 600);
INSERT INTO lamoille (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Lamoille', 'Wolcott', 40, 2, 40000, 800);
INSERT INTO lamoille (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Lamoille', 'Elmore', 50, 2, 50000, 1000);
INSERT INTO lamoille (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Lamoille', 'Eden', 60, 3, 60000, 1200);

INSERT INTO orange (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Orange', 'Randolph', 60, 3, 60000, 1200);
INSERT INTO orange (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Orange', 'Bradford', 40, 2, 40000, 800);
INSERT INTO orange (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Orange', 'Tunbridge', 30, 1, 30000, 600);
INSERT INTO orange (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Orange', 'Strafford', 20, 1, 20000, 400);
INSERT INTO orange (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Orange', 'Thetford', 30, 1, 30000, 600);
INSERT INTO orange (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Orange', 'Newbury', 40, 2, 40000, 800);
INSERT INTO orange (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Orange', 'Chelsea', 50, 2, 50000, 1000);
INSERT INTO orange (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Orange', 'Washington', 60, 3, 60000, 1200);

INSERT INTO orleans (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Orleans', 'Newport', 50, 2, 50000, 1000);
INSERT INTO orleans (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Orleans', 'Derby', 40, 2, 40000, 800);
INSERT INTO orleans (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Orleans', 'Barton', 30, 1, 30000, 600);
INSERT INTO orleans (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Orleans', 'Irasburg', 20, 1, 20000, 400);
INSERT INTO orleans (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Orleans', 'Albany', 30, 1, 30000, 600);
INSERT INTO orleans (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Orleans', 'Craftsbury', 40, 2, 40000, 800);
INSERT INTO orleans (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Orleans', 'Greensboro', 50, 2, 50000, 1000);
INSERT INTO orleans (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Orleans', 'Lowell', 60, 3, 60000, 1200);

INSERT INTO rutland (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Rutland', 'Rutland', 60, 3, 60000, 1200);
INSERT INTO rutland (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Rutland', 'Fair Haven', 40, 2, 40000, 800);
INSERT INTO rutland (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Rutland', 'Poultney', 30, 1, 30000, 600);
INSERT INTO rutland (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Rutland', 'Wallingford', 20, 1, 20000, 400);
INSERT INTO rutland (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Rutland', 'West Rutland', 30, 1, 30000, 600);
INSERT INTO rutland (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Rutland', 'Castleton', 40, 2, 40000, 800);
INSERT INTO rutland (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Rutland', 'Pittsford', 50, 2, 50000, 1000);
INSERT INTO rutland (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Rutland', 'Clarendon', 60, 3, 60000, 1200);

INSERT INTO washington_vt (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Washington', 'Montpelier', 60, 3, 60000, 1200);
INSERT INTO washington_vt (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Washington', 'Barre', 40, 2, 40000, 800);
INSERT INTO washington_vt (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Washington', 'Northfield', 30, 1, 30000, 600);
INSERT INTO washington_vt (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Washington', 'Waterbury', 20, 1, 20000, 400);
INSERT INTO washington_vt (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Washington', 'Berlin', 30, 1, 30000, 600);
INSERT INTO washington_vt (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Washington', 'Duxbury', 40, 2, 40000, 800);
INSERT INTO washington_vt (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Washington', 'Fayston', 50, 2, 50000, 1000);
INSERT INTO washington_vt (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Washington', 'Marshfield', 60, 3, 60000, 1200);

INSERT INTO windham (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Windham', 'Brattleboro', 60, 3, 60000, 1200);
INSERT INTO windham (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Windham', 'Bellows Falls', 40, 2, 40000, 800);
INSERT INTO windham (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Windham', 'Wilmington', 30, 1, 30000, 600);
INSERT INTO windham (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Windham', 'Newfane', 20, 1, 20000, 400);
INSERT INTO windham (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Windham', 'Dummerston', 30, 1, 30000, 600);
INSERT INTO windham (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Windham', 'Putney', 40, 2, 40000, 800);
INSERT INTO windham (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Windham', 'Jamaica', 50, 2, 50000, 1000);
INSERT INTO windham (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Windham', 'Townshend', 60, 3, 60000, 1200);

INSERT INTO windsor (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Windsor', 'Woodstock', 60, 3, 60000, 1200);
INSERT INTO windsor (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Windsor', 'Springfield', 40, 2, 40000, 800);
INSERT INTO windsor (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Windsor', 'Windsor', 30, 1, 30000, 600);
INSERT INTO windsor (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Windsor', 'Hartford', 20, 1, 20000, 400);
INSERT INTO windsor (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Windsor', 'Ludlow', 30, 1, 30000, 600);
INSERT INTO windsor (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Windsor', 'Chester', 40, 2, 40000, 800);
INSERT INTO windsor (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Windsor', 'Springfield', 50, 2, 50000, 1000);
INSERT INTO windsor (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Windsor', 'Hartland', 60, 3, 60000, 1200);

-- connecticut

CREATE TABLE fairfield (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES connecticut(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE hartford (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES connecticut(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE litchfield (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES connecticut(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE middlesex_ct (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES connecticut(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE new_haven (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES connecticut(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE new_london (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES connecticut(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE tolland (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES connecticut(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE windham_ct (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES connecticut(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

-- populate the connecticut county tables

INSERT INTO fairfield (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Fairfield', 'Bridgeport', 70, 3, 70000, 1400);
INSERT INTO fairfield (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Fairfield', 'Stamford', 50, 2, 50000, 1000);
INSERT INTO fairfield (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Fairfield', 'Norwalk', 40, 2, 40000, 800);
INSERT INTO fairfield (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Fairfield', 'Danbury', 30, 1, 30000, 600);
INSERT INTO fairfield (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Fairfield', 'Greenwich', 40, 2, 40000, 800);
INSERT INTO fairfield (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Fairfield', 'Fairfield', 50, 2, 50000, 1000);
INSERT INTO fairfield (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Fairfield', 'Westport', 60, 3, 60000, 1200);
INSERT INTO fairfield (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Fairfield', 'Wilton', 70, 3, 70000, 1400);

INSERT INTO hartford (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Hartford', 'Hartford', 60, 3, 60000, 1200);
INSERT INTO hartford (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Hartford', 'West Hartford', 40, 2, 40000, 800);
INSERT INTO hartford (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Hartford', 'East Hartford', 30, 1, 30000, 600);
INSERT INTO hartford (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Hartford', 'Newington', 20, 1, 20000, 400);
INSERT INTO hartford (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Hartford', 'Wethersfield', 30, 1, 30000, 600);
INSERT INTO hartford (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Hartford', 'Bloomfield', 40, 2, 40000, 800);
INSERT INTO hartford (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Hartford', 'Glastonbury', 50, 2, 50000, 1000);
INSERT INTO hartford (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Hartford', 'Manchester', 60, 3, 60000, 1200);

INSERT INTO litchfield (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Litchfield', 'Torrington', 50, 2, 50000, 1000);
INSERT INTO litchfield (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Litchfield', 'New Milford', 40, 2, 40000, 800);
INSERT INTO litchfield (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Litchfield', 'Watertown', 30, 1, 30000, 600);
INSERT INTO litchfield (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Litchfield', 'Plymouth', 20, 1, 20000, 400);
INSERT INTO litchfield (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Litchfield', 'Harwinton', 30, 1, 30000, 600);
INSERT INTO litchfield (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Litchfield', 'Litchfield', 40, 2, 40000, 800);
INSERT INTO litchfield (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Litchfield', 'Goshen', 50, 2, 50000, 1000);
INSERT INTO litchfield (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Litchfield', 'Morris', 60, 3, 60000, 1200);

INSERT INTO middlesex_ct (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Middlesex', 'Middletown', 60, 3, 60000, 1200);
INSERT INTO middlesex_ct (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Middlesex', 'Old Saybrook', 40, 2, 40000, 800);
INSERT INTO middlesex_ct (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Middlesex', 'Portland', 30, 1, 30000, 600);
INSERT INTO middlesex_ct (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Middlesex', 'Chester', 20, 1, 20000, 400);
INSERT INTO middlesex_ct (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Middlesex', 'Haddam', 30, 1, 30000, 600);
INSERT INTO middlesex_ct (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Middlesex', 'East Hampton', 40, 2, 40000, 800);
INSERT INTO middlesex_ct (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Middlesex', 'Durham', 50, 2, 50000, 1000);
INSERT INTO middlesex_ct (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Middlesex', 'Killingworth', 60, 3, 60000, 1200);

INSERT INTO new_haven (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'New Haven', 'New Haven', 60, 3, 60000, 1200);
INSERT INTO new_haven (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'New Haven', 'Waterbury', 40, 2, 40000, 800);
INSERT INTO new_haven (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'New Haven', 'Meriden', 30, 1, 30000, 600);
INSERT INTO new_haven (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'New Haven', 'Milford', 20, 1, 20000, 400);
INSERT INTO new_haven (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'New Haven', 'Wallingford', 30, 1, 30000, 600);
INSERT INTO new_haven (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'New Haven', 'Shelton', 40, 2, 40000, 800);
INSERT INTO new_haven (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'New Haven', 'Branford', 50, 2, 50000, 1000);
INSERT INTO new_haven (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'New Haven', 'North Haven', 60, 3, 60000, 1200);

INSERT INTO new_london (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'New London', 'New London', 50, 2, 50000, 1000);
INSERT INTO new_london (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'New London', 'Norwich', 40, 2, 40000, 800);
INSERT INTO new_london (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'New London', 'Groton', 30, 1, 30000, 600);
INSERT INTO new_london (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'New London', 'Ledyard', 20, 1, 20000, 400);
INSERT INTO new_london (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'New London', 'Montville', 30, 1, 30000, 600);
INSERT INTO new_london (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'New London', 'Salem', 40, 2, 40000, 800);
INSERT INTO new_london (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'New London', 'East Lyme', 50, 2, 50000, 1000);
INSERT INTO new_london (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'New London', 'Old Lyme', 60, 3, 60000, 1200);

INSERT INTO tolland (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Tolland', 'Vernon', 60, 3, 60000, 1200);
INSERT INTO tolland (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Tolland', 'Ellington', 40, 2, 40000, 800);
INSERT INTO tolland (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Tolland', 'Tolland', 30, 1, 30000, 600);
INSERT INTO tolland (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Tolland', 'Coventry', 20, 1, 20000, 400);
INSERT INTO tolland (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Tolland', 'Stafford', 30, 1, 30000, 600);
INSERT INTO tolland (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Tolland', 'Mansfield', 40, 2, 40000, 800);
INSERT INTO tolland (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Tolland', 'Somers', 50, 2, 50000, 1000);
INSERT INTO tolland (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Tolland', 'Hebron', 60, 3, 60000, 1200);

INSERT INTO windham_ct (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Windham', 'Willimantic', 50, 2, 50000, 1000);
INSERT INTO windham_ct (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Windham', 'Windham', 40, 2, 40000, 800);
INSERT INTO windham_ct (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Windham', 'Plainfield', 30, 1, 30000, 600);
INSERT INTO windham_ct (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Windham', 'Killingly', 20, 1, 20000, 400);
INSERT INTO windham_ct (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Windham', 'Putnam', 30, 1, 30000, 600);
INSERT INTO windham_ct (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Windham', 'Thompson', 40, 2, 40000, 800);
INSERT INTO windham_ct (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Windham', 'Brooklyn', 50, 2, 50000, 1000);
INSERT INTO windham_ct (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Windham', 'Hampton', 60, 3, 60000, 1200);

-- rhode island

CREATE TABLE bristol_ri (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES rhode_island(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE kent (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES rhode_island(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE newport (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES rhode_island(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE providence (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES rhode_island(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

CREATE TABLE washington_ri (
    id SERIAL PRIMARY KEY,
    county_name VARCHAR,
    FOREIGN KEY (county_name) REFERENCES rhode_island(county_name),
    city_id VARCHAR,
    private_practices INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    num_providers INTEGER
);

-- populate the rhode island county tables

INSERT INTO bristol_ri (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Bristol', 'Bristol', 60, 3, 60000, 1200);
INSERT INTO bristol_ri (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Bristol', 'Warren', 40, 2, 40000, 800);
INSERT INTO bristol_ri (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Bristol', 'Barrington', 30, 1, 30000, 600);
INSERT INTO bristol_ri (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Bristol', 'Portsmouth', 20, 1, 20000, 400);
INSERT INTO bristol_ri (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Bristol', 'Tiverton', 30, 1, 30000, 600);
INSERT INTO bristol_ri (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Bristol', 'Little Compton', 40, 2, 40000, 800);
INSERT INTO bristol_ri (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Bristol', 'Jamestown', 50, 2, 50000, 1000);
INSERT INTO bristol_ri (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Bristol', 'Newport', 60, 3, 60000, 1200);

INSERT INTO kent (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Kent', 'Warwick', 60, 3, 60000, 1200);
INSERT INTO kent (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Kent', 'West Warwick', 40, 2, 40000, 800);
INSERT INTO kent (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Kent', 'East Greenwich', 30, 1, 30000, 600);
INSERT INTO kent (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Kent', 'Coventry', 20, 1, 20000, 400);
INSERT INTO kent (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Kent', 'North Kingstown', 30, 1, 30000, 600);
INSERT INTO kent (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Kent', 'East Greenwich', 40, 2, 40000, 800);
INSERT INTO kent (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Kent', 'West Greenwich', 50, 2, 50000, 1000);
INSERT INTO kent (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Kent', 'Exeter', 60, 3, 60000, 1200);

INSERT INTO newport (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Newport', 'Newport', 60, 3, 60000, 1200);
INSERT INTO newport (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Newport', 'Middletown', 40, 2, 40000, 800);
INSERT INTO newport (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Newport', 'Portsmouth', 30, 1, 30000, 600);
INSERT INTO newport (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Newport', 'Tiverton', 20, 1, 20000, 400);
INSERT INTO newport (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Newport', 'Jamestown', 30, 1, 30000, 600);
INSERT INTO newport (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Newport', 'Little Compton', 40, 2, 40000, 800);

INSERT INTO providence (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Providence', 'Providence', 60, 3, 60000, 1200);
INSERT INTO providence (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Providence', 'Cranston', 40, 2, 40000, 800);
INSERT INTO providence (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Providence', 'Warwick', 30, 1, 30000, 600);
INSERT INTO providence (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Providence', 'Pawtucket', 20, 1, 20000, 400);
INSERT INTO providence (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Providence', 'Woonsocket', 30, 1, 30000, 600);
INSERT INTO providence (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Providence', 'East Providence', 40, 2, 40000, 800);
INSERT INTO providence (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Providence', 'North Providence', 50, 2, 50000, 1000);
INSERT INTO providence (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Providence', 'Johnston', 60, 3, 60000, 1200);

INSERT INTO washington_ri (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (1, 'Washington', 'Westerly', 60, 3, 60000, 1200);
INSERT INTO washington_ri (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (2, 'Washington', 'North Kingstown', 40, 2, 40000, 800);
INSERT INTO washington_ri (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (3, 'Washington', 'Narragansett', 30, 1, 30000, 600);
INSERT INTO washington_ri (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (4, 'Washington', 'Charlestown', 20, 1, 20000, 400);
INSERT INTO washington_ri (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (5, 'Washington', 'South Kingstown', 30, 1, 30000, 600);
INSERT INTO washington_ri (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (6, 'Washington', 'Hopkinton', 40, 2, 40000, 800);
INSERT INTO washington_ri (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (7, 'Washington', 'Richmond', 50, 2, 50000, 1000);
INSERT INTO washington_ri (id, county_name, city_id, private_practices, num_hospitals, num_insured, num_providers)
VALUES (8, 'Washington', 'Exeter', 60, 3, 60000, 1200);

-- provider groups

CREATE TABLE provider_groups_me (
    id SERIAL PRIMARY KEY,
    group_name VARCHAR,
    num_providers INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    private_practices INTEGER,
    county_name VARCHAR,
    market_id VARCHAR,
    FOREIGN KEY (county_name) REFERENCES maine(county_name),
    FOREIGN KEY (market_id) REFERENCES markets(id)
);

CREATE TABLE provider_groups_vt (
    id SERIAL PRIMARY KEY,
    group_name VARCHAR,
    num_providers INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    private_practices INTEGER,
    county_name VARCHAR,
    market_id VARCHAR,
    FOREIGN KEY (county_name) REFERENCES vermont(county_name),
    FOREIGN KEY (market_id) REFERENCES markets(id)
);

CREATE TABLE provider_groups_ct (
    id SERIAL PRIMARY KEY,
    group_name VARCHAR,
    num_providers INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    private_practices INTEGER,
    county_name VARCHAR,
    market_id VARCHAR,

    FOREIGN KEY (county_name) REFERENCES connecticut(county_name),
    FOREIGN KEY (market_id) REFERENCES markets(id)
);

CREATE TABLE provider_groups_ri (
    id SERIAL PRIMARY KEY,
    group_name VARCHAR,
    num_providers INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    private_practices INTEGER,
    county_name VARCHAR,
    market_id VARCHAR,
    FOREIGN KEY (county_name) REFERENCES rhode_island(county_name),
    FOREIGN KEY (market_id) REFERENCES markets(id)
);

CREATE TABLE provider_groups_ma (
    id SERIAL PRIMARY KEY,
    group_name VARCHAR,
    num_providers INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    private_practices INTEGER,
    county_name VARCHAR,
    market_id VARCHAR,
    FOREIGN KEY (county_name) REFERENCES massachussetts(county_name),
    FOREIGN KEY (market_id) REFERENCES markets(id)
);

CREATE TABLE provider_groups_nh (
    id SERIAL PRIMARY KEY,
    group_name VARCHAR,
    num_providers INTEGER,
    num_hospitals INTEGER,
    num_insured INTEGER,
    private_practices INTEGER,
    county_name VARCHAR,
    market_id VARCHAR,
    FOREIGN KEY (county_name) REFERENCES new_hampshire(county_name),
    FOREIGN KEY (market_id) REFERENCES markets(id)
);
