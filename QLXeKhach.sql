USE [QLXeKhach]
GO
/****** Object:  Table [dbo].[ChuyenXe]    Script Date: 02/03/2019 15:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenXe](
	[MaCX] [nvarchar](10) NOT NULL,
	[MaTuyen] [nvarchar](10) NOT NULL,
	[GioDi] [time](7) NOT NULL,
	[GioDen] [time](7) NOT NULL,
	[UserID] [nvarchar](50) NOT NULL,
	[ChoTrong] [int] NOT NULL,
	[MaTaiXe] [nvarchar](10) NOT NULL,
	[MaXe] [nvarchar](10) NOT NULL,
	[NgayXuatPhat] [date] NULL,
 CONSTRAINT [PK_ChuyenXe] PRIMARY KEY CLUSTERED 
(
	[MaCX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Image]    Script Date: 02/03/2019 15:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[MaXe] [nvarchar](10) NULL,
	[Image] [nvarchar](50) NULL,
	[IDImage] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Image_1] PRIMARY KEY CLUSTERED 
(
	[IDImage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 02/03/2019 15:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[MaQuyen] [int] NOT NULL,
	[TenQuyen] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiXe]    Script Date: 02/03/2019 15:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiXe](
	[MaTaiXe] [nvarchar](10) NOT NULL,
	[TenTaiXe] [nvarchar](50) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[GioiTinh] [nvarchar](10) NOT NULL,
	[CMND] [nvarchar](20) NOT NULL,
	[DienThoai] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_TaiXe] PRIMARY KEY CLUSTERED 
(
	[MaTaiXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TuyenXe]    Script Date: 02/03/2019 15:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TuyenXe](
	[MaTuyen] [nvarchar](10) NOT NULL,
	[TenTuyen] [nvarchar](50) NOT NULL,
	[DiemDi] [nvarchar](50) NOT NULL,
	[DiemDen] [nvarchar](50) NOT NULL,
	[BangGia] [bigint] NOT NULL,
 CONSTRAINT [PK_TuyenXe] PRIMARY KEY CLUSTERED 
(
	[MaTuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 02/03/2019 15:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[GioiTinh] [nvarchar](10) NOT NULL,
	[CMND] [nvarchar](20) NOT NULL,
	[DienThoai] [nvarchar](15) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[MaQuyen] [int] NOT NULL,
	[password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VeXe]    Script Date: 02/03/2019 15:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VeXe](
	[MaVe] [int] IDENTITY(1,1) NOT NULL,
	[TenVe] [nvarchar](50) NOT NULL,
	[UserID] [nvarchar](50) NOT NULL,
	[MaCX] [nvarchar](10) NOT NULL,
	[ViTri] [nvarchar](10) NOT NULL,
	[NgayDat] [datetime] NOT NULL,
 CONSTRAINT [PK_VeXe] PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Xe]    Script Date: 02/03/2019 15:03:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Xe](
	[MaXe] [nvarchar](10) NOT NULL,
	[TenXe] [nvarchar](50) NULL,
	[BienSo] [nvarchar](20) NULL,
	[SoGhe] [int] NULL,
	[TenNhaXe] [nvarchar](50) NULL,
 CONSTRAINT [PK_Xe] PRIMARY KEY CLUSTERED 
(
	[MaXe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[ChuyenXe] ([MaCX], [MaTuyen], [GioDi], [GioDen], [UserID], [ChoTrong], [MaTaiXe], [MaXe], [NgayXuatPhat]) VALUES (N'CX01', N'MT01', CAST(N'03:00:00' AS Time), CAST(N'05:00:00' AS Time), N'admin', 14, N'TX01', N'1', CAST(N'2019-03-02' AS Date))
INSERT [dbo].[ChuyenXe] ([MaCX], [MaTuyen], [GioDi], [GioDen], [UserID], [ChoTrong], [MaTaiXe], [MaXe], [NgayXuatPhat]) VALUES (N'CX02', N'MT02', CAST(N'06:00:00' AS Time), CAST(N'07:40:00' AS Time), N'admin', 34, N'TX01', N'1', CAST(N'2019-03-02' AS Date))
INSERT [dbo].[ChuyenXe] ([MaCX], [MaTuyen], [GioDi], [GioDen], [UserID], [ChoTrong], [MaTaiXe], [MaXe], [NgayXuatPhat]) VALUES (N'CX03', N'MT01', CAST(N'07:00:00' AS Time), CAST(N'08:30:00' AS Time), N'admin', 12, N'TX01', N'1', CAST(N'2019-03-03' AS Date))
INSERT [dbo].[ChuyenXe] ([MaCX], [MaTuyen], [GioDi], [GioDen], [UserID], [ChoTrong], [MaTaiXe], [MaXe], [NgayXuatPhat]) VALUES (N'CX04', N'MT03', CAST(N'07:00:00' AS Time), CAST(N'07:00:00' AS Time), N'admin', 13, N'TX01', N'1', CAST(N'2019-03-03' AS Date))
INSERT [dbo].[ChuyenXe] ([MaCX], [MaTuyen], [GioDi], [GioDen], [UserID], [ChoTrong], [MaTaiXe], [MaXe], [NgayXuatPhat]) VALUES (N'CX05', N'MT04', CAST(N'07:00:00' AS Time), CAST(N'09:00:00' AS Time), N'admin', 12, N'TX01', N'1', CAST(N'2019-03-03' AS Date))
INSERT [dbo].[ChuyenXe] ([MaCX], [MaTuyen], [GioDi], [GioDen], [UserID], [ChoTrong], [MaTaiXe], [MaXe], [NgayXuatPhat]) VALUES (N'CX06', N'MT05', CAST(N'09:00:00' AS Time), CAST(N'18:00:00' AS Time), N'admin', 14, N'TX01', N'1', CAST(N'2019-03-02' AS Date))
INSERT [dbo].[ChuyenXe] ([MaCX], [MaTuyen], [GioDi], [GioDen], [UserID], [ChoTrong], [MaTaiXe], [MaXe], [NgayXuatPhat]) VALUES (N'CX07', N'MT01', CAST(N'05:00:00' AS Time), CAST(N'09:00:00' AS Time), N'admin', 14, N'TX01', N'1', CAST(N'2019-03-02' AS Date))
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (0, N'nhanvien')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (1, N'admin')
INSERT [dbo].[TaiXe] ([MaTaiXe], [TenTaiXe], [NgaySinh], [GioiTinh], [CMND], [DienThoai]) VALUES (N'TX01', N'tau x', CAST(N'1994-12-14' AS Date), N'Nam', N'123', N'132')
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemDi], [DiemDen], [BangGia]) VALUES (N'MT01', N'tuyen1', N'Huế', N'Nha Trang', 1000)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemDi], [DiemDen], [BangGia]) VALUES (N'MT02', N'tuyen2', N'Huế', N'Đà Nẵng', 5000)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemDi], [DiemDen], [BangGia]) VALUES (N'MT03', N'tuyen3', N'Huế', N'Khánh Hòa', 100000)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemDi], [DiemDen], [BangGia]) VALUES (N'MT04', N'tuyen4', N'Hồ Chí Minh', N'Hà Nội', 500000)
INSERT [dbo].[TuyenXe] ([MaTuyen], [TenTuyen], [DiemDi], [DiemDen], [BangGia]) VALUES (N'MT05', N'tuyen5', N'Hải Phòng', N'Cần Thơ', 40000)
INSERT [dbo].[User] ([UserID], [HoTen], [NgaySinh], [GioiTinh], [CMND], [DienThoai], [Email], [MaQuyen], [password]) VALUES (N'ádfdgdfg', N'dfgdfg', CAST(N'1997-01-09' AS Date), N'Nam', N'xcvxc', N'076646413168', N'dung0901@gmail.com', 0, N'dfgdfg')
INSERT [dbo].[User] ([UserID], [HoTen], [NgaySinh], [GioiTinh], [CMND], [DienThoai], [Email], [MaQuyen], [password]) VALUES (N'admin', N'Trần Anh Dũng', CAST(N'1995-12-14' AS Date), N'Nam', N'191847109', N'0762521478', N'dungtranpt1412@gmail.com', 1, N'123')
INSERT [dbo].[User] ([UserID], [HoTen], [NgaySinh], [GioiTinh], [CMND], [DienThoai], [Email], [MaQuyen], [password]) VALUES (N'dungthuy1', N'Dung', CAST(N'1997-01-09' AS Date), N'Nữ', N'192052107', N'0766634190', N'dung@gmail.com', 1, N'123')
INSERT [dbo].[User] ([UserID], [HoTen], [NgaySinh], [GioiTinh], [CMND], [DienThoai], [Email], [MaQuyen], [password]) VALUES (N'dungtran', N'dung', CAST(N'2019-01-02' AS Date), N'Nam', N'234234', N'012525646', N'dung@gmail.com', 0, N'123')
INSERT [dbo].[User] ([UserID], [HoTen], [NgaySinh], [GioiTinh], [CMND], [DienThoai], [Email], [MaQuyen], [password]) VALUES (N'dungtranoc', N'dung', CAST(N'1997-01-09' AS Date), N'wrgreg', N'5646464', N'6464364', N'dung0901@gmail.com', 1, N'123')
INSERT [dbo].[User] ([UserID], [HoTen], [NgaySinh], [GioiTinh], [CMND], [DienThoai], [Email], [MaQuyen], [password]) VALUES (N'dungtranoc1', N'3453453', CAST(N'1997-01-09' AS Date), N'Nam', N'xcvxc', N'vxcvxcv', N'dung0901@gmail.com', 1, N'123')
INSERT [dbo].[User] ([UserID], [HoTen], [NgaySinh], [GioiTinh], [CMND], [DienThoai], [Email], [MaQuyen], [password]) VALUES (N'nhanvien', N'NhanVien', CAST(N'1995-11-14' AS Date), N'Nữ', N'194357238', N'0765552514', N'abc@gmail.com', 0, N'123')
INSERT [dbo].[Xe] ([MaXe], [TenXe], [BienSo], [SoGhe], [TenNhaXe]) VALUES (N'1', N'dsf', N'sdfds', 324, N'phuong nam')
ALTER TABLE [dbo].[ChuyenXe]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenXe_NhanVien] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[ChuyenXe] CHECK CONSTRAINT [FK_ChuyenXe_NhanVien]
GO
ALTER TABLE [dbo].[ChuyenXe]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenXe_TaiXe] FOREIGN KEY([MaTaiXe])
REFERENCES [dbo].[TaiXe] ([MaTaiXe])
GO
ALTER TABLE [dbo].[ChuyenXe] CHECK CONSTRAINT [FK_ChuyenXe_TaiXe]
GO
ALTER TABLE [dbo].[ChuyenXe]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenXe_TuyenXe] FOREIGN KEY([MaTuyen])
REFERENCES [dbo].[TuyenXe] ([MaTuyen])
GO
ALTER TABLE [dbo].[ChuyenXe] CHECK CONSTRAINT [FK_ChuyenXe_TuyenXe]
GO
ALTER TABLE [dbo].[ChuyenXe]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenXe_Xe] FOREIGN KEY([MaXe])
REFERENCES [dbo].[Xe] ([MaXe])
GO
ALTER TABLE [dbo].[ChuyenXe] CHECK CONSTRAINT [FK_ChuyenXe_Xe]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_Xe1] FOREIGN KEY([MaXe])
REFERENCES [dbo].[Xe] ([MaXe])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_Xe1]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Quyen] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[Quyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Quyen]
GO
ALTER TABLE [dbo].[VeXe]  WITH CHECK ADD  CONSTRAINT [FK_VeXe_ChuyenXe] FOREIGN KEY([MaCX])
REFERENCES [dbo].[ChuyenXe] ([MaCX])
GO
ALTER TABLE [dbo].[VeXe] CHECK CONSTRAINT [FK_VeXe_ChuyenXe]
GO
ALTER TABLE [dbo].[VeXe]  WITH CHECK ADD  CONSTRAINT [FK_VeXe_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[VeXe] CHECK CONSTRAINT [FK_VeXe_User]
GO
