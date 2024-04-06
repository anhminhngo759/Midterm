create database btgk
use btgk

--categories
CREATE TABLE Khoa (
    MaKhoa INT IDENTITY(1, 1) PRIMARY KEY,
    TenKhoa nvarchar(255) NOT NULL,
)
--customers
CREATE TABLE BoMon(
    MaBoMon INT IDENTITY(1,1) PRIMARY KEY,
    TenBoMon nvarchar(255) NOT NULL,
    MaKhoa INT NOT NULL FOREIGN KEY REFERENCES Khoa(MaKhoa),
)
--suppliers
CREATE TABLE NganhHoc(
    MaNganh INT IDENTITY(1,1) PRIMARY KEY,
    TenNganh nvarchar(255),
    MaBoMon INT NOT NULL FOREIGN KEY REFERENCES BoMon(MaBoMon),

)

CREATE TABLE SinhVien(
    MaSinhVien INT IDENTITY(1,1) PRIMARY KEY,
    HoTen nvarchar(255) NOT NULL,
    NamNhapHoc nvarchar(255) NOT NULL
)
--shippers
CREATE TABLE SinhVien_NganhHoc(
    MaSinhVien INT NOT NULL FOREIGN KEY REFERENCES SinhVien(MaSinhVien),
    MaNganh INT NOT NULL FOREIGN KEY REFERENCES NganhHoc(MaNganh),
    NgayDangKy datetime,
	PRIMARY KEY (MaSinhVien, MaNganh)
)
--products

--orders
CREATE TABLE MonHoc(
    MaMon INT IDENTITY(1,1) PRIMARY KEY,
	TenMon nvarchar(255) NOT NULL,
    MaNganh INT NOT NULL FOREIGN KEY REFERENCES NganhHoc(MaNganh),
    SoTinChi INT NOT NULL
)
--order details
CREATE TABLE SinhVien_MonHoc(
    MaMon INT NOT NULL FOREIGN KEY REFERENCES MonHoc(MaMon),
    MaSinhVien INT NOT NULL FOREIGN KEY REFERENCES SinhVien(MaSinhVien),
    DiemChuyenCan FLOAT NOT NULL,
    DiemGiuaKy FLOAT NOT NULL,
    DiemCuoiKy FLOAT NOT NULL,
    PRIMARY KEY (MaMon, MaSinhVien)
)