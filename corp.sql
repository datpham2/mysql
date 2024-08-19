USE qlda;

ALTER DATABASE qlda
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

ALTER TABLE congviec ADD CONSTRAINT fk_mada FOREIGN KEY(mada) REFERENCES dean(mada);

ALTER TABLE phongban MODIFY COLUMN tenphg VARCHAR(15);

INSERT INTO phongban (tenphg, maphg, trphg, ng_nhanchuc)
VALUES ('Nghiên cứu', 5, '005', '1978/05/22');
INSERT INTO phongban (tenphg, maphg, trphg, ng_nhanchuc)
VALUES ('Điều hành', 4, '008', '1995/01/01');
INSERT INTO phongban (tenphg, maphg, trphg, ng_nhanchuc)
VALUES ('Quản lý', 1, '006', '1971/06/19');


INSERT INTO nhanvien (honv, tenlot, tennv, manv, ngsinh, dchi, phai, luong, ma_nql, phg)
VALUES('Phạm', 'Văn', 'Vinh', '006', '1965/01/01', '45 Trưng Vương, Hà Nội', 'Nữ', 55000, NULL, 1);

INSERT INTO nhanvien (honv, tenlot, tennv, manv, ngsinh, dchi, phai, luong, ma_nql, phg)
VALUES('Nguyễn', 'Thanh', 'Tùng', '005', '1962/08/20', '22 Nguyễn Văn Cừ', 'Nam', 40000, '006', 5);

UPDATE nhanvien
SET dchi = '22 Nguyễn Văn Cừ, Tp HCM'
WHERE tennv = 'Tùng';

INSERT INTO nhanvien (honv, tenlot, tennv, manv, ngsinh, dchi, phai, luong, ma_nql, phg)
VALUES('Lê', 'Quỳnh', 'Như', '001', '1967-02-21', '291 Hồ Văn Huê, Tp HCM', 'Nữ', 43000, '006', 4);

INSERT INTO nhanvien (honv, tenlot, tennv, manv, ngsinh, dchi, phai, luong, ma_nql, phg)
VALUES('Đinh', 'Bá', 'Tiên', '009', '1960/02/11', '119 Cống Quỳnh, Tp HCM', 'Nam', 30000, '005', 5);

SET SQL_SAFE_UPDATES = 0;

INSERT INTO nhanvien (honv, tenlot, tennv, manv, ngsinh, dchi, phai, luong, ma_nql, phg)
VALUES('Bùi', 'Ngọc', 'Hằng', '007', '1954-03-11', '332 Nguyễn Thái Học, Tp HCM', 'Nam', 25000, '001', 4);

INSERT INTO nhanvien (honv, tenlot, tennv, manv, ngsinh, dchi, phai, luong, ma_nql, phg)
VALUES('Trần', 'Thanh', 'Tâm', '003', '1957-05-04', '34 Mai Thị Lựu, Tp HCM', 'Nam', 25000, '005', 5);

INSERT INTO nhanvien (honv, tenlot, tennv, manv, ngsinh, dchi, phai, luong, ma_nql, phg)
VALUES('Trần', 'Hồng', 'Quang', '008', '1967/09/01', '80 Lê Hồng Phong, Tp HCM', 'Nam', 25000, '001', 4);

INSERT INTO nhanvien (honv, tenlot, tennv, manv, ngsinh, dchi, phai, luong, ma_nql, phg)
VALUES('Nguyễn', 'Mạnh', 'Hùng', '004', '1967-04-03', '95 Bà Rịa, Vũng Tàu', 'Nam', 38000, '005', 5);

INSERT INTO thannhan (ma_nvien, tentn, phai, ngsinh, quanhe)
VALUES('005', 'Trịnh', 'Nữ', '1976-04-05', 'Con gái');

SELECT * FROM thannhan;

INSERT INTO thannhan (ma_nvien, tentn, phai, ngsinh, quanhe)
VALUES('005', 'Khang', 'Nam', '1973-10-25', 'Con trai');

INSERT INTO thannhan (ma_nvien, tentn, phai, ngsinh, quanhe)
VALUES('005', 'Phương', 'Nữ', '1948-05-03', 'Vợ chồng');

INSERT INTO thannhan (ma_nvien, tentn, phai, ngsinh, quanhe)
VALUES('001', 'Minh', 'Nam', '1932-02-29', 'Vợ chồng');

INSERT INTO thannhan (ma_nvien, tentn, phai, ngsinh, quanhe)
VALUES('009', 'Tiến', 'Nam', '1978-01-01', 'Con trai');

INSERT INTO thannhan (ma_nvien, tentn, phai, ngsinh, quanhe)
VALUES('009', 'Châu', 'Nữ', '1978-12-30', 'Con gái');

INSERT INTO thannhan (ma_nvien, tentn, phai, ngsinh, quanhe)
VALUES('009', 'Phương', 'Nữ', '1957-05-05', 'Vợ chồng');

INSERT INTO thannhan (ma_nvien, tentn, phai, ngsinh, quanhe)
VALUES('005', 'Phương', 'Nữ', '1948-05-03', 'Vợ chồng');

INSERT INTO dean (tenda, mada, ddiem_da, phong)
VALUES ('Sản phẩm X', 1, 'Vũng Tàu', 5);

INSERT INTO dean (tenda, mada, ddiem_da, phong)
VALUES ('Sản phẩm Y', 2, 'Nha Trang', 5);

INSERT INTO dean (tenda, mada, ddiem_da, phong)
VALUES ('Sản phẩm Z', 3, 'TP HCM', 5);

SELECT * FROM dean;

INSERT INTO dean (tenda, mada, ddiem_da, phong)
VALUES ('Tin học hóa', 10, 'Hà Nội', 4);

INSERT INTO dean (tenda, mada, ddiem_da, phong)
VALUES ('Cáp quang', 20, 'TP HCM', 1);

INSERT INTO dean (tenda, mada, ddiem_da, phong)
VALUES ('Đào tạo', 30, 'Hà Nội', 4);

INSERT INTO diadiem_phg (maphg, diadiem)
VALUES(1, 'TP HCM');

INSERT INTO diadiem_phg (maphg, diadiem)
VALUES(4, 'Hà Nội');

INSERT INTO diadiem_phg (maphg, diadiem)
VALUES(5, 'TAU');

INSERT INTO diadiem_phg (maphg, diadiem)
VALUES(5, 'NHA TRANG');

INSERT INTO diadiem_phg (maphg, diadiem)
VALUES(5, 'TP HCM');

SELECT * FROM diadiem_phg;

SELECT * FROM nhanvien;

SELECT * FROM nhanvien
WHERE phg = 4;