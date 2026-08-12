set schema 'archimedes';

ALTER TABLE water_tank
ADD COLUMN dimensions JSONB NOT NULL DEFAULT '{}'::jsonb;