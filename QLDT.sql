CREATE DATABASE QLDT
GO
USE [QLDT]
GO
/****** Object:  Table [dbo].[ChuDe]    Script Date: 1/15/2024 9:15:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangSanXuat](
	[MaHang] [int] IDENTITY(1,1) NOT NULL,
	[TenHang] [nvarchar](100) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 1/15/2024 9:15:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HeDieuHanh](
	[MaHdh] [int] IDENTITY(1,1) NOT NULL,
	[TenHdh] [nvarchar](100) NULL,
	
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sach]    Script Date: 1/15/2024 9:15:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[Masp] [int] IDENTITY(1,1) NOT NULL,
	[Tensp] [nvarchar](100) NULL,
	[MaHang] [int] NULL,
	[MaHdh] [int] NULL,
	[Dongia] [decimal](10, 2) NULL,
	[Hinh] [nvarchar](100) NULL,
	[Ngaycapnhat] [datetime] NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[HangSanXuat] ON 

INSERT [dbo].[HangSanXuat] ([MaHang], [TenHang]) VALUES (1, N'Sam Sung')
INSERT [dbo].[HangSanXuat] ([MaHang], [TenHang]) VALUES (2, N'Apple ')
INSERT [dbo].[HangSanXuat] ([MaHang], [TenHang]) VALUES (3,N'Xiaomi ')
INSERT [dbo].[HangSanXuat] ([MaHang], [TenHang]) VALUES (4, N'Vsmart')
INSERT [dbo].[HangSanXuat] ([MaHang], [TenHang]) VALUES (5, N'Bphone  ')

SET IDENTITY_INSERT [dbo].[HangSanXuat] OFF
SET IDENTITY_INSERT [dbo].[HeDieuHanh] ON 
SET IDENTITY_INSERT [dbo].[Hedieuhanh] ON 

INSERT [dbo].[Hedieuhanh] ([Mahdh], [Tenhdh]) VALUES (1, N'Android   ')
INSERT [dbo].[Hedieuhanh] ([Mahdh], [Tenhdh]) VALUES (2, N'IOS       ')
INSERT [dbo].[Hedieuhanh] ([Mahdh], [Tenhdh]) VALUES (3, N'VOS       ')
SET IDENTITY_INSERT [dbo].[Hedieuhanh] OFF




SET IDENTITY_INSERT [dbo].[Sanpham] ON 

INSERT [dbo].[Sanpham] ([Masp], [Tensp],[MaHang] , [Mahdh] , [Dongia],[Hinh], [Ngaycapnhat] ) VALUES (2, N'Apple Iphone 3',2,2, CAST(2000000 AS Decimal(18, 0)), N'ip3.jpg', CAST(0x0000AE8200000000 AS DateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp],[MaHang] , [Mahdh] , [Dongia],[Hinh], [Ngaycapnhat] ) VALUES (5, N'Apple Iphone 4',2,2, CAST(2000000 AS Decimal(18, 0)), N'ip4.jpg',CAST(0x0000AE8200000000 AS DateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp],[MaHang] , [Mahdh] , [Dongia],[Hinh], [Ngaycapnhat] ) VALUES (6, N'Apple Iphone 5',2,2, CAST(2000000 AS Decimal(18, 0)),  N'ip5.jpg',CAST(0x0000AE8200000000 AS DateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp],[MaHang] , [Mahdh] , [Dongia],[Hinh], [Ngaycapnhat] ) VALUES (7, N'Apple Iphone 6',2,2, CAST(2000000 AS Decimal(18, 0)), N'ip6.jpg',CAST(0x0000AE8200000000 AS DateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp],[MaHang] , [Mahdh] , [Dongia],[Hinh], [Ngaycapnhat] ) VALUES (8, N'SamSung GalaxyS1',1,1, CAST(1000000 AS Decimal(18, 0)), N'ss1.jpg',CAST(0x0000AE8200000000 AS DateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp],[MaHang] , [Mahdh] , [Dongia],[Hinh], [Ngaycapnhat] ) VALUES (9, N'SamSung GalaxyS2',1,1, CAST(1000000 AS Decimal(18, 0)), N'ss2.jpg',CAST(0x0000AE8200000000 AS DateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp],[MaHang] , [Mahdh] , [Dongia],[Hinh], [Ngaycapnhat] ) VALUES (10, N'SamSung GalaxyS3',1,1, CAST(2000000 AS Decimal(18, 0)),  N'ss3.jpg',CAST(0x0000AE8200000000 AS DateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp],[MaHang] , [Mahdh] , [Dongia],[Hinh], [Ngaycapnhat] ) VALUES (11, N'SamSung GalaxyS4',1,1, CAST(2000000 AS Decimal(18, 0)), N'ss4.jpg',CAST(0x0000AE8200000000 AS DateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp],[MaHang] , [Mahdh] , [Dongia],[Hinh], [Ngaycapnhat] ) VALUES (13, N'Xiaomi mi4',3,1, CAST(200000 AS Decimal(18, 0)), N'mi4.jpg',CAST(0x0000AE8200000000 AS DateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp],[MaHang] , [Mahdh] , [Dongia],[Hinh], [Ngaycapnhat] ) VALUES (14, N'Xiaomi mi5',3,1, CAST(2000000 AS Decimal(18, 0)), N'mi5.jpg',CAST(0x0000AE8200000000 AS DateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp],[MaHang] , [Mahdh] , [Dongia],[Hinh], [Ngaycapnhat] ) VALUES (15, N'Xiaomi mi6',3,1, CAST(20000 AS Decimal(18, 0)),  N'mi6.jpg', CAST(0x0000AE8200000000 AS DateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp],[MaHang] , [Mahdh] , [Dongia],[Hinh], [Ngaycapnhat] ) VALUES (16, N'Xiaomi mi7',3,1, CAST(200000 AS Decimal(18, 0)),  N'mi7.jpg',CAST(0x0000AE8200000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Sanpham] OFF


/****** Object:  Index [PK_CHUDE]    Script Date: 1/15/2024 9:15:51 AM ******/
ALTER TABLE [dbo].[ChuDe] ADD  CONSTRAINT [PK_HangSanXuat] PRIMARY KEY NONCLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF,  IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_NHAXUATBAN]    Script Date: 1/15/2024 9:15:51 AM ******/
ALTER TABLE [dbo].[NhaXuatBan] ADD  CONSTRAINT [PK_NHAXUATBAN] PRIMARY KEY NONCLUSTERED 
(
	[Mahdh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_SACH]    Script Date: 1/15/2024 9:15:51 AM ******/
ALTER TABLE [dbo].[Sach] ADD  CONSTRAINT [PK_Sanpham] PRIMARY KEY NONCLUSTERED 
(
	[Masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_RELATIONS_HANGSANXUAT] FOREIGN KEY([MaHang])
REFERENCES [dbo].[HangSanXuat] ([MaHang])
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_SANPHAM_RELATIONS_HANGSANXUAT]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_SANPHAM_RELATIONS_HEDIEUHANH] FOREIGN KEY([Mahdh])
REFERENCES [dbo].[HeDieuHanh] ([Mahdh])
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_SANPHAM_RELATIONS_HEDIEUHANH]
GO