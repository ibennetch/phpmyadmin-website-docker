CREATE USER 'website'@'%' IDENTIFIED VIA mysql_native_password USING '*08FA77CAB469297F05D9CA01AAA5579DDBB5265B';
GRANT USAGE ON *.* TO 'website'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;
CREATE DATABASE IF NOT EXISTS `website`;
GRANT ALL PRIVILEGES ON `website`.* TO 'website'@'%';
