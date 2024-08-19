CREATE DATABASE baithi;

USE baithi;

CREATE TABLE nhapt (
    tennpt VARCHAR(40),
    ngdk DATE, 
    soud INT
);

INSERT INTO nhapt (tennpt, ngdk, soud)
VALUES('Gameloft', '2006-06-20', 100);

SELECT * FROM nhapt;

SET SQL_SAFE_UPDATES = 0;

UPDATE nhapt SET tennpt = 'Gameloft'
WHERE tennpt = 'Facebook';

INSERT INTO nhapt (tennpt, ngdk, soud)
VALUES('Ketchapp', '2010-07-18', 20);

INSERT INTO nhapt (tennpt, ngdk, soud)
VALUES('Facebook', '2006-02-27', 20);

SELECT * FROM nhapt;

CREATE TABLE nguoidung (
	tennd VARCHAR(40),
    
);