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
    num_providers INTEGER
);

CREATE TABLE massachusetts (
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

INSERT INTO massachusetts (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('MA', 'NE', 'Barnstable', 'A,B', 45, 1000);
INSERT INTO massachusetts (id, market_id, county_name, fee_schedule, num_groups, num_providers)
VALUES ('MA', 'NE', 'Berkshire', 'A,B', 32, 900);
INSERT INTO massachusetts (id, market_id, county_name, fee_schedule, num_groups, num_providers)
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
