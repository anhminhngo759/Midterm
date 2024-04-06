use btgk2
--categories
SET IDENTITY_INSERT Khoa ON 
GO

INSERT INTO Khoa (
    MaKhoa,
    TenKhoa)
VALUES 
(1, N'Khoa Tin hoc'),
(2, N'Khoa toan'),
(3, N'Khoa Dia ly')
GO

SET IDENTITY_INSERT Khoa OFF
GO
--customers
SET IDENTITY_INSERT BoMon ON 
GO

INSERT INTO BoMon (
    MaBoMon,
    TenBoMon,
    MaKhoa)
VALUES 
(1, N'Khoa hoc may tinh', 1),
(2,  N'Toan cao cap',2),
(3, N'Dia ly van hoc',3)

GO

SET IDENTITY_INSERT BoMon OFF
GO
--suppliers
SET IDENTITY_INSERT NganhHoc ON 
GO

INSERT INTO NganhHoc (
    MaNganh,
    TenNganh,
    MaBoMon)
VALUES 
(1, N'Lap trinh co so du lieu', 1),
(2, N'Giai tich dai so',2),
(3, N'Dia ly hoc', 3),
(4, N'Lap trinh co ban', 1)
GO

SET IDENTITY_INSERT NganhHoc OFF
GO
--shippers
SET IDENTITY_INSERT SinhVien ON 
GO

INSERT INTO SinhVien (
    MaSinhVien,
    HoTen,
    NamNhapHoc)
VALUES 
(1, N'Ngo Thi Minh Anh', '20211207'),
(2, N'Nguyen Thi Hien', '20211207'),
(3, N'Nguyen Dang Duy', '20211207'),
(4, N'Le Thi Bich Lieu', '20211207')
GO

SET IDENTITY_INSERT SinhVien OFF
GO
--products


INSERT INTO SinhVien_NganhHoc(
    MaSinhVien,
    MaNganh,
    NgayDangKy
)
VALUES
(1,1, '20211203'),
(2,2, '20211103'),
(3,3, '20211006'),
(4,4, '20211205')
GO

--orders
SET IDENTITY_INSERT MonHoc ON
GO

INSERT INTO MonHoc(
    MaMon,
    TenMon,
    MaNganh,
    SoTinChi
)
VALUES
(1,'Lap trinh co so du lieu nang cao',1, 4),
(2,'Xac suat thong ke',2,2),
(3,'Co so dia ly',3,2),
(4,'Lap trinh C',4,3)
GO

SET IDENTITY_INSERT MonHoc OFF
GO
--order details
INSERT INTO SinhVien_MonHoc(
    MaMon,
    MaSinhVien,
    DiemChuyenCan,
    DiemGiuaKy,
    DiemCuoiKy
)
VALUES
(1, 1, 7.5, 6, 10),
(2, 2, 8, 10, 8),
(3, 3, 9, 7, 7),
(4, 4, 5, 4, 5)
GO