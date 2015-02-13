CREATE USER pfitmap IDENTIFIED BY 'NNN';

CREATE DATABASE pfitmap_staging;

GRANT ALL ON pfitmap_staging.* TO pfitmap;
