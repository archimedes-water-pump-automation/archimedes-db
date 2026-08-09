set schema 'archimedes';

CREATE TABLE water_tank (
    id BIGINT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    capacity DECIMAL(10, 2) NOT NULL,
    current_volume DECIMAL(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
