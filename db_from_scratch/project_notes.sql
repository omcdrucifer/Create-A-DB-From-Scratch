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
    id VARCHAR PRIMARY KEY,
    market_id VARCHAR REFERENCES markets(id),
    num_counties INTEGER,
    fee_schedule VARCHAR,
    num_groups INTEGER,
    num_providers INTEGER
);

CREATE TABLE massachusetts (
    id VARCHAR PRIMARY KEY,
    market_id VARCHAR REFERENCES markets(id),
    num_counties INTEGER,
    fee_schedule VARCHAR,
    num_groups INTEGER,
    num_providers INTEGER
);

CREATE TABLE new_hampshire (
    id VARCHAR PRIMARY KEY,
    market_id VARCHAR REFERENCES markets(id),
    num_counties INTEGER,
    fee_schedule VARCHAR,
    num_groups INTEGER,
    num_providers INTEGER
);

CREATE TABLE vermont (
    id VARCHAR PRIMARY KEY,
    market_id VARCHAR REFERENCES markets(id),
    num_counties INTEGER,
    fee_schedule VARCHAR,
    num_groups INTEGER,
    num_providers INTEGER
);

CREATE TABLE connecticut (
    id VARCHAR PRIMARY KEY,
    market_id VARCHAR REFERENCES markets(id),
    num_counties INTEGER,
    fee_schedule VARCHAR,
    num_groups INTEGER,
    num_providers INTEGER
);

CREATE TABLE rhode_island (
    id VARCHAR PRIMARY KEY,
    market_id VARCHAR REFERENCES markets(id),
    num_counties INTEGER,
    fee_schedule VARCHAR,
    num_groups INTEGER,
    num_providers INTEGER
);
