use master
go
Create database WebBangDia
go
Use WebBangDia
GO
Create table CauHinh(
	Banner nvarchar(100),
	Background nvarchar(100),
)

Create table LoaiDia(
	MaLoai int primary key identity(1,1),
	TenLoai nvarchar(50) not null,
	NgayTao date not null,	
	An bit,
)
go

insert into LoaiDia(TenLoai,NgayTao)values(N'DVD','2-1-2010') --1
insert into LoaiDia(TenLoai,NgayTao)values(N'VCD','2-1-2010') --2
insert into LoaiDia(TenLoai,NgayTao)values(N'Băng từ','2-1-2010')--3
insert into LoaiDia(TenLoai,NgayTao)values(N'Cát sét','2-1-2010')--4
insert into LoaiDia(TenLoai,NgayTao)values(N'Bluray','2-1-2010')--5
insert into LoaiDia(TenLoai,NgayTao)values(N'Audio CD','2-1-2010')--6

Create table DanhMuc(
	MaDM int primary key identity(1,1),
	TenDanhMuc nvarchar(100) not null,
	An bit,
	NgayAn date,
	NgayTao date not null
)
go
insert into DanhMuc(TenDanhMuc, NgayTao) values(N'Phim điện ảnh','2-1-2010')/*1*/
insert into DanhMuc(TenDanhMuc, NgayTao) values(N'Phim bộ','2-1-2010')/*2*/
insert into DanhMuc(TenDanhMuc, NgayTao) values(N'Học tập','2-1-2010')/*3*/
insert into DanhMuc(TenDanhMuc, NgayTao) values(N'Chương trình truyền hình','2-1-2010')/*4*/
insert into DanhMuc(TenDanhMuc, NgayTao) values(N'Hài hước','2-1-2010')/*5*/
insert into DanhMuc(TenDanhMuc, NgayTao) values(N'Ca nhạc','2-1-2010')/*6*/
insert into DanhMuc(TenDanhMuc, NgayTao) values(N'Clip hot','2-1-2010')/*7*/
insert into DanhMuc(TenDanhMuc, NgayTao) values(N'Hoạt Hình','2-1-2010')/*8*/

Create table QuocGia(
	MaQG int primary key identity (1,1),
	TenQG nvarchar(100) not null
)
go
insert into QuocGia(TenQG) values(N'Việt Nam')/*1*/
insert into QuocGia(TenQG) values(N'Mỹ')/*2*/
insert into QuocGia(TenQG) values(N'Trung Quốc')/*3*/
insert into QuocGia(TenQG) values(N'Nhật Bản') /*4*/
insert into QuocGia(TenQG) values(N'Đài Loan')/*5*/
insert into QuocGia(TenQG) values(N'Hồng Công')/*6*/
insert into QuocGia(TenQG) values(N'Thái Lan')/*7*/
insert into QuocGia(TenQG) values(N'Anh')/*8*/
insert into QuocGia(TenQG) values(N'Pháp')/*9*/
insert into QuocGia(TenQG) values(N'Hàn Quốc')/*10*/

Create table HangSanXuat(
	MaHSX int primary key identity(1,1),
	TenHSX nvarchar(200) not null,
	MaQG int not null,
	constraint fk_HSX_QG foreign key(MaQG) references QuocGia(MaQG),
	NgayTao date not null,
	An bit,
	NgayAn date null
)
go
insert into HangSanXuat(TenHSX,  NgayTao, MaQG) values(N'Hãng phim Phương Nam','2-1-2010',1) /*1*/
insert into HangSanXuat(TenHSX,  NgayTao, MaQG) values(N'Hãng walt disney','2-1-2010',2) /*2*/
insert into HangSanXuat(TenHSX,  NgayTao, MaQG) values(N'Hãng Paramount','2-1-2010',2) --3
insert into HangSanXuat(TenHSX,  NgayTao, MaQG) values(N'Hãng 20th Century Fox','2-1-2010',2)--4 
insert into HangSanXuat(TenHSX,  NgayTao, MaQG) values(N'Hãng Columbia Pictures','2-1-2010',2) --5
insert into HangSanXuat(TenHSX,  NgayTao, MaQG) values(N'Hãng phim truyền hình Việt Nam','2-1-2010',1)--6 
insert into HangSanXuat(TenHSX,  NgayTao, MaQG) values(N'Hãng phim Thượng Hải','2-1-2010',3) --7
insert into HangSanXuat(TenHSX,  NgayTao, MaQG) values(N'Hãng KBS Hàn Quốc','2-1-2010',10)--8
insert into HangSanXuat(TenHSX,  NgayTao, MaQG) values(N'Hãng truyền hình Trung ương TQ','2-1-2010',3)--9 
insert into HangSanXuat(TenHSX,  NgayTao, MaQG) values(N'Hãng phim nhựa Việt Nam','2-1-2010',1) --10
insert into HangSanXuat(TenHSX,  NgayTao, MaQG) values(N'Hãng hoạt hình Ghibli','2-1-2010',4) --11


Create table ChatLuong(
	MaCL int identity(1,1) primary key,
	TenCL nvarchar(40) not null
)
go
insert into ChatLuong(TenCL) values(N'240')
insert into ChatLuong(TenCL) values(N'360')
insert into ChatLuong(TenCL) values(N'480')
insert into ChatLuong(TenCL) values(N'HD720')
insert into ChatLuong(TenCL) values(N'HD1080')
insert into ChatLuong(TenCL) values(N'HD4K')

Create table LoaiHinhGiaoDich
(
	MaLoaiHinh int primary key identity(1,1),
	TenLoaiHinh nvarchar(100) not null,
	DatCoc int not null default 100,--Phần trăm
	ThanhToan int not null default 100 --Phần trăm
)
go
insert into LoaiHinhGiaoDich(TenLoaiHinh, DatCoc, ThanhToan) values (N'Mua',100,100)
insert into LoaiHinhGiaoDich(TenLoaiHinh, DatCoc, ThanhToan) values (N'Thuê mượn',75, 10)

Create table BangDia(
	MaBD int primary key identity(1,1),
	TenBD nvarchar(100) not null,
	MaLoai int not null,
	constraint fk_BangDia_LoaiDia foreign key(MaLoai) references LoaiDia(MaLoai),
	MaHSX int not null,
	constraint fk_BangDia_HSX foreign key(MaHSX) references HangSanXuat(MaHSX),
	MaDM int not null,
	constraint fk_BangDia_DM foreign key(MaDM) references DanhMuc(MaDM),
	MaCL int not null,
	constraint fk_BangDia_ChatLuong foreign key(MaCL) references ChatLuong(MaCL),
	TieuDe nvarchar(100) not null default N'Chưa cập nhật',
	NoiDung nvarchar(max) not null default N'Chưa cập nhật',
	AnhDaiDien nvarchar(100),
	DungLuongTong nvarchar(40) not null default '0MB',
	Gia	float not null default 0,
	GiaKM float not null default 0,
	SoLuongBoDia int not null default 1,/*Bộ đĩa chia thành nhiều phần*/
	SoLuongHienCon int not null default 0, /*Bộ đĩa thiếu số chiếc*/
	TrangThai nvarchar(200) default N'Đầy đủ',/*Nhập các phần trong bộ đĩa bị thiếu*/
	NgayTao date not null,
	An bit,
	NgayCapNhat date null
)
go
insert into BangDia(TenBD, MaLoai, MaHSX, MaDM, MaCL, TieuDe, NoiDung,AnhDaiDien, DungLuongTong, Gia, GiaKM,SoLuongBoDia, SoLuongHienCon, TrangThai,NgayTao )
values (N'Phim hoa cỏ may',1,6,2,3,N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000',N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000','','5GB',700000,0,20,20,N'Đầy đủ', '10-2-2012')
insert into BangDia(TenBD, MaLoai, MaHSX, MaDM, MaCL, TieuDe, NoiDung,AnhDaiDien, DungLuongTong, Gia, GiaKM,SoLuongBoDia, SoLuongHienCon, TrangThai,NgayTao )
values (N'Phim cảnh sát hình sự 1',1,6,2,3,N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000',N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000','','5GB',700000,0,20,20,N'Đầy đủ', '10-2-2012')
insert into BangDia(TenBD, MaLoai, MaHSX, MaDM, MaCL, TieuDe, NoiDung,AnhDaiDien, DungLuongTong, Gia, GiaKM,SoLuongBoDia, SoLuongHienCon, TrangThai,NgayTao )
values (N'Phim cảnh sát hình sự 2',1,6,2,3,N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000',N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000','','5GB',700000,0,20,20,N'Đầy đủ', '10-2-2012')
insert into BangDia(TenBD, MaLoai, MaHSX, MaDM, MaCL, TieuDe, NoiDung,AnhDaiDien, DungLuongTong, Gia, GiaKM,SoLuongBoDia, SoLuongHienCon, TrangThai,NgayTao )
values (N'Phim đất và người',1,6,2,3,N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000',N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000','','5GB',700000,0,20,20,N'Đầy đủ', '10-2-2012')
insert into BangDia(TenBD, MaLoai, MaHSX, MaDM, MaCL, TieuDe, NoiDung,AnhDaiDien, DungLuongTong, Gia, GiaKM,SoLuongBoDia, SoLuongHienCon, TrangThai,NgayTao )
values (N'Phim khi đàn ông có bầu',1,6,1,3,N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000',N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000','','600MB',40000,0,2,2,N'Đầy đủ', '10-2-2012')
insert into BangDia(TenBD, MaLoai, MaHSX, MaDM, MaCL, TieuDe, NoiDung,AnhDaiDien, DungLuongTong, Gia, GiaKM,SoLuongBoDia, SoLuongHienCon, TrangThai,NgayTao )
values (N'Phim hoa cỏ may',1,6,2,3,N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000',N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000','','5GB',700000,0,20,20,N'Đầy đủ', '10-2-2012')
insert into BangDia(TenBD, MaLoai, MaHSX, MaDM, MaCL, TieuDe, NoiDung,AnhDaiDien, DungLuongTong, Gia, GiaKM,SoLuongBoDia, SoLuongHienCon, TrangThai,NgayTao )
values (N'Phim hoa cỏ may',1,6,2,3,N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000',N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000','','5GB',700000,0,20,20,N'Đầy đủ', '10-2-2012')
insert into BangDia(TenBD, MaLoai, MaHSX, MaDM, MaCL, TieuDe, NoiDung,AnhDaiDien, DungLuongTong, Gia, GiaKM,SoLuongBoDia, SoLuongHienCon, TrangThai,NgayTao )
values (N'Phim hoa cỏ may',1,6,2,3,N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000',N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000','','5GB',700000,0,20,20,N'Đầy đủ', '10-2-2012')
insert into BangDia(TenBD, MaLoai, MaHSX, MaDM, MaCL, TieuDe, NoiDung,AnhDaiDien, DungLuongTong, Gia, GiaKM,SoLuongBoDia, SoLuongHienCon, TrangThai,NgayTao )
values (N'Phim hoa cỏ may',1,6,2,3,N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000',N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000','','5GB',700000,0,20,20,N'Đầy đủ', '10-2-2012')
insert into BangDia(TenBD, MaLoai, MaHSX, MaDM, MaCL, TieuDe, NoiDung,AnhDaiDien, DungLuongTong, Gia, GiaKM,SoLuongBoDia, SoLuongHienCon, TrangThai,NgayTao )
values (N'Phim hoa cỏ may',1,6,2,3,N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000',N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000','','5GB',700000,0,20,18,N'Thiếu tập 1 và 2', '10-2-2012')
insert into BangDia(TenBD, MaLoai, MaHSX, MaDM, MaCL, TieuDe, NoiDung,AnhDaiDien, DungLuongTong, Gia, GiaKM,SoLuongBoDia, SoLuongHienCon, TrangThai,NgayTao )
values (N'Phim hoa cỏ may',1,6,2,3,N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000',N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000','','5GB',700000,0,20,20,N'Đầy đủ', '10-2-2012')
insert into BangDia(TenBD, MaLoai, MaHSX, MaDM, MaCL, TieuDe, NoiDung,AnhDaiDien, DungLuongTong, Gia, GiaKM,SoLuongBoDia, SoLuongHienCon, TrangThai,NgayTao )
values (N'Phim hoa cỏ may',1,6,2,3,N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000',N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000','','5GB',700000,0,20,20,N'Đầy đủ', '10-2-2012')
insert into BangDia(TenBD, MaLoai, MaHSX, MaDM, MaCL, TieuDe, NoiDung,AnhDaiDien, DungLuongTong, Gia, GiaKM,SoLuongBoDia, SoLuongHienCon, TrangThai,NgayTao )
values (N'Phim hoa cỏ may',1,6,2,3,N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000',N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000','','5GB',700000,0,20,20,N'Đầy đủ', '10-2-2012')
insert into BangDia(TenBD, MaLoai, MaHSX, MaDM, MaCL, TieuDe, NoiDung,AnhDaiDien, DungLuongTong, Gia, GiaKM,SoLuongBoDia, SoLuongHienCon, TrangThai,NgayTao )
values (N'Phim hoa cỏ may',1,6,2,3,N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000',N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000','','5GB',700000,0,20,20,N'Đầy đủ', '10-1-2012')
insert into BangDia(TenBD, MaLoai, MaHSX, MaDM, MaCL, TieuDe, NoiDung,AnhDaiDien, DungLuongTong, Gia, GiaKM,SoLuongBoDia, SoLuongHienCon, TrangThai,NgayTao )
values (N'Phim hoa cỏ may',1,6,2,3,N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000',N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000','','5GB',700000,0,20,20,N'Đầy đủ', '10-1-2012')
insert into BangDia(TenBD, MaLoai, MaHSX, MaDM, MaCL, TieuDe, NoiDung,AnhDaiDien, DungLuongTong, Gia, GiaKM,SoLuongBoDia, SoLuongHienCon, TrangThai,NgayTao )
values (N'Phim hoa cỏ may',1,6,2,3,N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000',N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000','','5GB',700000,0,20,20,N'Đầy đủ', '10-6-2012')
insert into BangDia(TenBD, MaLoai, MaHSX, MaDM, MaCL, TieuDe, NoiDung,AnhDaiDien, DungLuongTong, Gia, GiaKM,SoLuongBoDia, SoLuongHienCon, TrangThai,NgayTao )
values (N'Phim hoa cỏ may',1,6,2,3,N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000',N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000','','5GB',700000,0,20,20,N'Đầy đủ', '10-4-2012')
insert into BangDia(TenBD, MaLoai, MaHSX, MaDM, MaCL, TieuDe, NoiDung,AnhDaiDien, DungLuongTong, Gia, GiaKM,SoLuongBoDia, SoLuongHienCon, TrangThai,NgayTao )
values (N'Phim hoa cỏ may',1,6,2,3,N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000',N'Bộ phim rất hay của điện ảnh Việt Nam những năm 2000','','5GB',700000,0,20,20,N'Đầy đủ', '10-3-2012')

Create table LoaiTaiKhoan(
	MaLoaiTK int primary key identity(1,1),
	LoaiTK nvarchar(40) not null,
)
go
insert into LoaiTaiKhoan(LoaiTK) values (N'Admin')--1
insert into LoaiTaiKhoan(LoaiTK) values (N'Public')--2
insert into LoaiTaiKhoan(LoaiTK) values (N'Vip')--3
insert into LoaiTaiKhoan(LoaiTK) values (N'Normal')--4

Create table TaiKhoan(
	MaTK int identity(1,1) primary key,
	TenTK nvarchar(100) unique not null, 
	HoTen nvarchar(100) not null, 
	NamSinh int not null, 
	SoDienThoai nchar(15), 
	Email nvarchar(300), 
	MatKhau nvarchar(100),  
	MaLoaiTK int not null, 
	constraint fk_TK_LTK foreign key(MaLoaiTK) references LoaiTaiKhoan (MaLoaiTK),
	An bit, 
	NgayAn date, 
	NgayTao date not null
)
go
insert into TaiKhoan(TenTK,HoTen,NamSinh,SoDienThoai, Email, MatKhau, MaLoaiTK, NgayTao)
values (N'ledacnam',N'Lê Đắc Nam','1993','0988492015','lenam19932012@gmail.com','ledacnam','1','2-10-2010')
insert into TaiKhoan(TenTK,HoTen,NamSinh,SoDienThoai, Email, MatKhau, MaLoaiTK, NgayTao)
values (N'public',N'Khách vãng lai','','','','','2','2-10-2010')

Create table YeuCau(
	MaYC int identity(1,1) primary key,
	TenYeuCau nvarchar(100) not null,
)
go
insert into YeuCau(TenYeuCau) values (N'Cập nhật bộ đĩa')
insert into YeuCau(TenYeuCau) values (N'Nhập bộ đĩa mới')
insert into YeuCau(TenYeuCau) values (N'Xóa tài khoản')
insert into YeuCau(TenYeuCau) values (N'Hỗ trợ định dạng')

Create table LienHe(
	MaLH int identity(1,1) primary key,
	MaTK int not null, /*TK khách*/
	constraint fk_LienHe_TaiKhoanLH foreign key(MaTK) references TaiKhoan(MaTK),
	TieuDe nvarchar(100) not null default N'Chưa cập nhật',
	NoiDung nvarchar(max) not null default N'Chưa cập nhật',
	MaYC int not null,
	constraint fk_LienHe_YeuCau foreign key(MaYC) references YeuCau(MaYC),
	NgayTao date not null,
	An bit, 
	NgayAn date
)

Create table DatHang(
	MaDH int identity(1,1) primary key,
	MaTK int not null, /*TK khách*/
	constraint fk_DH_TK foreign key (MaTK) references TaiKhoan(MaTK),
	MaBD int not null, /*Bang dia thue hoac mua*/
	constraint fk_DH_BD foreign key (MaBD) references BangDia(MaBD),
	MaLoaiHinh int not null, /*Loại hình giao dịch*/
	constraint fk_DH_LoaiHinh foreign key (MaLoaiHinh) references LoaiHinhGiaoDich(MaLoaiHinh),
	NgayDat date not null, 
)