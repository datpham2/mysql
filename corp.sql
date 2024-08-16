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
VALUES('Đinh', 'Bá', 'Tiên', '009', '1960/02/11', '119 Cống Quỳnh, Tp HCM', 'Nam', 30000, '005', 5);
INSERT INTO nhanvien (honv, tenlot, tennv, manv, ngsinh, dchi, phai, luong, ma_nql, phg)
VALUES('Nguyễn', 'Thanh', 'Tùng', 005, '1962/08/20', '22 Nguyễn Văn Cừ', 'Nam', 40000, 006, 5);
INSERT INTO nhanvien (honv, tenlot, tennv, manv, ngsinh, dchi, phai, luong, ma_nql, phg)
VALUES('Phạm', 'Văn', 'Vinh', '006', '1965/01/01', '45 Trưng Vương, Hà Nội', 'Nữ', 55000, NULL, 1);