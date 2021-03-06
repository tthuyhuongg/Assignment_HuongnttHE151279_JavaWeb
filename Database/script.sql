USE [master]
GO
/****** Object:  Database [projectt]    Script Date: 03/23/2022 00:56:41 ******/
CREATE DATABASE [projectt] ON  PRIMARY 
( NAME = N'projectt', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\projectt.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'projectt_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\projectt_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [projectt] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [projectt].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [projectt] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [projectt] SET ANSI_NULLS OFF
GO
ALTER DATABASE [projectt] SET ANSI_PADDING OFF
GO
ALTER DATABASE [projectt] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [projectt] SET ARITHABORT OFF
GO
ALTER DATABASE [projectt] SET AUTO_CLOSE ON
GO
ALTER DATABASE [projectt] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [projectt] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [projectt] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [projectt] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [projectt] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [projectt] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [projectt] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [projectt] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [projectt] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [projectt] SET  ENABLE_BROKER
GO
ALTER DATABASE [projectt] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [projectt] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [projectt] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [projectt] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [projectt] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [projectt] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [projectt] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [projectt] SET  READ_WRITE
GO
ALTER DATABASE [projectt] SET RECOVERY SIMPLE
GO
ALTER DATABASE [projectt] SET  MULTI_USER
GO
ALTER DATABASE [projectt] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [projectt] SET DB_CHAINING OFF
GO
USE [projectt]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 03/23/2022 00:56:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Cname] [nvarchar](255) NULL,
	[Picture] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Acount]    Script Date: 03/23/2022 00:56:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Acount](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](255) NULL,
	[pass] [nvarchar](100) NULL,
	[name] [nvarchar](255) NULL,
	[address] [nvarchar](100) NULL,
	[email] [nvarchar](100) NULL,
	[phone] [nvarchar](50) NULL,
	[roles] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ship]    Script Date: 03/23/2022 00:56:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ship](
	[shipid] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[phone] [nvarchar](50) NULL,
	[address] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[shipid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oder]    Script Date: 03/23/2022 00:56:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oder](
	[oderid] [int] IDENTITY(1,1) NOT NULL,
	[cusid] [int] NULL,
	[orderdate] [date] NULL,
	[totalmoney] [money] NULL,
	[shipid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[oderid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 03/23/2022 00:56:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[masp] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Picture] [nvarchar](max) NULL,
	[price] [float] NULL,
	[title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[dateup] [date] NULL,
	[Id] [int] NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[masp] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oderdetail]    Script Date: 03/23/2022 00:56:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oderdetail](
	[oderid] [int] NULL,
	[price] [money] NULL,
	[Quantity] [int] NULL,
	[picture] [nvarchar](max) NULL,
	[masp] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  ForeignKey [fk_OderCus]    Script Date: 03/23/2022 00:56:43 ******/
ALTER TABLE [dbo].[Oder]  WITH CHECK ADD  CONSTRAINT [fk_OderCus] FOREIGN KEY([cusid])
REFERENCES [dbo].[Acount] ([id])
GO
ALTER TABLE [dbo].[Oder] CHECK CONSTRAINT [fk_OderCus]
GO
/****** Object:  ForeignKey [fk_OderShip]    Script Date: 03/23/2022 00:56:43 ******/
ALTER TABLE [dbo].[Oder]  WITH CHECK ADD  CONSTRAINT [fk_OderShip] FOREIGN KEY([shipid])
REFERENCES [dbo].[Ship] ([shipid])
GO
ALTER TABLE [dbo].[Oder] CHECK CONSTRAINT [fk_OderShip]
GO
/****** Object:  ForeignKey [fk_IDP]    Script Date: 03/23/2022 00:56:43 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [fk_IDP] FOREIGN KEY([Id])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [fk_IDP]
GO
/****** Object:  ForeignKey [FK__Oderdetail__masp__19AACF41]    Script Date: 03/23/2022 00:56:43 ******/
ALTER TABLE [dbo].[Oderdetail]  WITH CHECK ADD FOREIGN KEY([masp])
REFERENCES [dbo].[Product] ([masp])
ON DELETE CASCADE
GO
/****** Object:  ForeignKey [fk_Oderid]    Script Date: 03/23/2022 00:56:43 ******/
ALTER TABLE [dbo].[Oderdetail]  WITH CHECK ADD  CONSTRAINT [fk_Oderid] FOREIGN KEY([oderid])
REFERENCES [dbo].[Oder] ([oderid])
GO
ALTER TABLE [dbo].[Oderdetail] CHECK CONSTRAINT [fk_Oderid]
GO
insert into Categories values
(1,	N'Hoa Chúc Mừng',	'https://i.pinimg.com/originals/a4/2b/cb/a42bcb9141080335ab40dd033f963b8b.jpg'),
(2,	N'Hoa Tình Yêu', 	'https://alo.flowers/wp-content/uploads/2021/09/6-1.jpg?v=1631609523'),
(3,	N'Hoa Chia Buồn'	,'https://hoavily.com/uploads/file/loai-hoa-chia-buon-nen-chon(1).jpg')
insert into Product values
(1,N'Hoa Hồng','https://alo.flowers/wp-content/uploads/2021/08/g1.png',300.000,N'Hoa Sinh Nhật',N'Chúc Mừng Sinh Nhật','2020/02/02',1,15),
(2,N'Hoa Hồng Đỏ','https://moonflowerhanoi.com/wp-content/uploads/2020/05/bo-hoa-chuc-mung-sinh-nhat-dep-11.jpg',250.000,N'Hoa Sinh Nhật',N'Chúc Mừng Sinh Nhật','2020/03/03',1,10),
(3,N'Hoa Hồng','https://img.mayflower.vn/2021/03/550K_9-1000K.jpg',250.000,N'Hoa Sinh Nhật',N'Chúc Mừng Sinh Nhật','2020/04/02',1,20),
(4,N'Hoa Hồng','https://dienhoahaiha.com/wp-content/uploads/2021/07/bohoatangsinhnhat700-1.jpg',200.000,N'Hoa Sinh Nhật',N'Chúc Mừng Sinh Nhật','2020/05/02',1,10),
(5,N'Hoa Hồng','https://diachishophoa.com/uploads/noidung/images/baiviet/hoa-tuoi-dep-2.jpg',350.000,N'Hoa Sinh Nhật',N'Chúc Mừng Sinh Nhật','2020/02/12',1,5),
(6,N'Hoa Hồng','https://i.pinimg.com/564x/02/6b/fa/026bfafce2f0a5a2c77631e8206c3bfe.jpg',350.000,N'Hoa Tình yêu',N'Yêu Thương','2020/04/29',2,7),
(7,N'Hoa Hồng','https://i.pinimg.com/736x/d5/9b/9a/d59b9a6a5eadeec8528a3ceda99b39a5.jpg',300.000,N'Hoa Tình yêu',N'Mãi Mãi','2020/07/02',2,25),
(8,N'Hoa Hồng','https://dienhoahaiha.com/wp-content/uploads/2016/10/bo-hoa-vip-20-10-2.jpg',300.000,N'Hoa Tình yêu',N'Chân Thành','2020/09/02',2,100),
(9,N'Hoa Hồng','https://hoatuoi360.vn/uploads/file/hoatuoi360--%20bo%20hong%20mix%20nhieu%20mau%206002.jpg',500.000,N'Hoa Tình yêu',N'Yêu Thương','2020/02/13',2,50),
(10,N'Hoa Hồng','https://shophoaninhthuan.com/wp-content/uploads/2021/06/Hoavily-bo-hoa-su-khoi-sac-22.jpg',450.000,N'Hoa Tình yêu',N'Mãi Bên Nhau','2020/04/7',2,30),
(11,N'Hoa Chia Buồn','https://congvientamlinh.com/wp-content/uploads/2021/05/cong-vien-nghi-trang-tang-le.jpg',500.000,N'Hoa Chia Buồn','Rest in Peace','2020/01/9',3,40),
(12,N'Hoa Chia Buồn','https://miro.medium.com/max/1000/1*TEXHgleyCvGyiOs08EUCQA.jpeg',300.000,N'Hoa Chia Buồn','Rest in Peace','2020/07/22',3,15),
(13,N'Hoa Chia Buồn','https://dienhoa24gio.net/assets/upload/page/XBmAZ.jpg',350.000,N'Hoa Chia Buồn','Rest in Peace','2020/08/15',3,30),
(14,N'Hoa Chia Buồn','https://vietflower.vn/wp-content/uploads/2017/05/H%C3%ACnh-%E1%BA%A3nh-v%C3%B2ng-hoa-chia-bu%E1%BB%93n-%C4%91%E1%BA%B9p-s%E1%BA%AFc-t%C3%ADm.jpg',400.000,N'Hoa Chia Buồn','Rest in Peace','2020/07/6',3,20),
(15,N'Hoa Chia Buồn','http://hoatuoi9x.com/wp-content/uploads/2021/06/hoa-tang-le-ha-noi.jpg',500.000,N'Hoa Chia Buồn','Rest in Peace','2020/02/5',3,15)
insert into Acount values
(1	,'Admin',	'Admin12345',	'Admin',	'Thạch Thất-Hà Nội',	'Admin@gmail.com',	0987654899,	'admin'),
(2	,'ThuHoa'	,'Hoa12345'	,'Nguyễn Thu Hoa'	,'Đồ Sơn-Hải Phòng'	,'hoa@gmail.com'	,0912345678	,'user'),
(3	,'NgoHưng'	,'Hung12345',	'Ngô Gia Hưng',	'Ba Đình-Hà Nội'	,'hung@gmail.com',	0387654321	,'user'),
(4	,'KimAnh'	,'anh12345'	,'Bùi Kim Anh	','Củ Chi-Hồ Chí Minh'	,'kim@gmail.com'	,0989654324	,'user'),
(5	,'VanAnh',	'Anh12345'	,'Hoàng Văn Anh'	,'Ninh Giang-Hải Dương'	,'anh@gmail.com'	,0985432133,'user')

insert into Oder values
(3,	'2022-03-07',350.00,2),
(4,	'2020-02-02',	300.00,	1),
(2,	'2022-03-09',	300.00,	2),
(2,	'2022-03-23',	500.00,	4)

insert into Oderdetail values
(8	,350.00	,1	,'https://image-us.eva.vn/upload/1-2019/images/2019-03-27/hon-20-mau-hoa-sinh-nhat-dep-y-nghia-nhat-thay-ngan-loi-muon-noi-hoa-sinh-nhat-2-1553656725-342-width600height600.jpg'	,4)
insert into Ship values
(1,	N'Nguyễn Thu Hoa',	0912345678,	N'Đồ Sơn-Hải Phòng'),
(2	,N'Ngô Gia Hưng',	0387654321,	N'Ba Đình-Hà Nội'),
(3	,N'Bùi Kim Anh',	0989654324,	N'Củ Chi-Hồ Chí Minh'),
(4	,N'Hoàng Văn Anh',	0985432133,	N'Ninh Giang-Hải Dương')
