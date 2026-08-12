set schema 'archimedes';

CREATE TYPE shape AS ENUM ('cylindrical');

ALTER TABLE water_tank
ADD COLUMN tank_shape shape NOT NULL DEFAULT 'cylindrical';