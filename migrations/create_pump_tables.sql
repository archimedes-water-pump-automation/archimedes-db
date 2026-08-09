set schema 'archimedes';

CREATE TABLE pump (
    id UUID PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TYPE reason AS ENUM ('full_tank', 'water_shortage');

CREATE TABLE pump_status (
    id UUID PRIMARY KEY,
    pump_id UUID,
    started_at TIMESTAMP,
    stopped_at TIMESTAMP,
    stop_reason reason DEFAULT 'water_shortage',

    FOREIGN KEY (pump_id) REFERENCES pump(id)
);
