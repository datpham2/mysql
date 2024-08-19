CREATE DATABASE feedback;

USE feedback;

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
    ngdktv DATE,
    gioitinh VARCHAR(3),
    ngsinh DATE
);

INSERT INTO nguoidung (tennd, ngdktv, gioitinh, ngsinh)
VALUES('Huynh Cong Khanh', '2009-06-17', 'Nam', '1994-05-25');

SELECT * FROM nguoidung;

INSERT INTO nguoidung (tennd, ngdktv, gioitinh, ngsinh)
VALUES('Nguyen Minh Dat', '2010-06-19', 'Nam', '1993-03-27');

SELECT * FROM nguoidung;

INSERT INTO nguoidung VALUES ('Ho Quy Han', '2012-10-15', 'Nu', '1994-02-14');

SELECT * FROM nguoidung;