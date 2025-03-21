#!/bin/bash

# Retrieve MySQL connection information from environment variables
MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD}
MYSQL_USER=${MYSQL_USER}
MYSQL_PASSWORD=${MYSQL_PASSWORD}
MYSQL_DATABASE=${MYSQL_DATABASE}

mysql -u root -p"${MYSQL_ROOT_PASSWORD}" <<EOF
-- Use the app's database
USE \`${MYSQL_DATABASE}\`;

-- Create a table for the app
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Insert sample data
INSERT INTO users (name) VALUES ('Alice'), ('Bob'), ('Charlie');
EOF
