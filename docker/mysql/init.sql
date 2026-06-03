CREATE DATABASE IF NOT EXISTS board;

-- Grant all privileges on all databases
GRANT ALL PRIVILEGES ON *.* TO 'board'@'%' WITH GRANT OPTION;

-- Allow password changes without reconnecting
ALTER USER 'board'@'%' PASSWORD EXPIRE NEVER;

-- Apply changes
FLUSH PRIVILEGES;
