USE [master]
GO
/****** Object:  Database [PhoneCovers]    Script Date: 15/08/2020 20:05:18 ******/
CREATE DATABASE [PhoneCovers]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PhoneCovers', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PhoneCovers.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PhoneCovers_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PhoneCovers_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PhoneCovers] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PhoneCovers].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PhoneCovers] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PhoneCovers] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PhoneCovers] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PhoneCovers] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PhoneCovers] SET ARITHABORT OFF 
GO
ALTER DATABASE [PhoneCovers] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PhoneCovers] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PhoneCovers] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PhoneCovers] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PhoneCovers] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PhoneCovers] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PhoneCovers] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PhoneCovers] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PhoneCovers] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PhoneCovers] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PhoneCovers] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PhoneCovers] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PhoneCovers] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PhoneCovers] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PhoneCovers] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PhoneCovers] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PhoneCovers] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PhoneCovers] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PhoneCovers] SET  MULTI_USER 
GO
ALTER DATABASE [PhoneCovers] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PhoneCovers] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PhoneCovers] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PhoneCovers] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PhoneCovers] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PhoneCovers] SET QUERY_STORE = OFF
GO
USE [PhoneCovers]
GO
/****** Object:  Table [dbo].[newsLetter]    Script Date: 15/08/2020 20:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[newsLetter](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [text] NOT NULL,
	[email] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orderItem]    Script Date: 15/08/2020 20:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderItem](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[orderId] [int] NOT NULL,
	[productId] [int] NOT NULL,
	[quantity] [float] NULL,
	[productPrice] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 15/08/2020 20:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [text] NOT NULL,
	[email] [text] NOT NULL,
	[phone] [text] NOT NULL,
	[city] [text] NOT NULL,
	[address] [text] NOT NULL,
	[shipping] [text] NOT NULL,
	[price] [float] NOT NULL,
	[shippingStatus] [text] NOT NULL,
	[remark] [text] NULL,
	[date] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 15/08/2020 20:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [text] NOT NULL,
	[category] [text] NOT NULL,
	[type] [text] NOT NULL,
	[price] [float] NOT NULL,
	[description] [text] NULL,
	[photoUrl] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[newsLetter] ON 

INSERT [dbo].[newsLetter] ([id], [name], [email]) VALUES (1, N'efafaggg', N'afadfc@sdfdsa.aefa')
INSERT [dbo].[newsLetter] ([id], [name], [email]) VALUES (2, N'fff', N'ffff@ff.fff')
INSERT [dbo].[newsLetter] ([id], [name], [email]) VALUES (3, N'efafa', N'afadfc@sdfdsa.aefa')
INSERT [dbo].[newsLetter] ([id], [name], [email]) VALUES (4, N'adfdff', N'dfnht@fgr.vrf')
INSERT [dbo].[newsLetter] ([id], [name], [email]) VALUES (1002, N'bbbggg', N'rwvsd@sdfv.sdv')
INSERT [dbo].[newsLetter] ([id], [name], [email]) VALUES (5, N'ujuj', N'ngfxg@s.srg')
SET IDENTITY_INSERT [dbo].[newsLetter] OFF
GO
SET IDENTITY_INSERT [dbo].[orderItem] ON 

INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1020, 2058, 84, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1021, 2058, 85, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1022, 2058, 86, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1023, 2058, 87, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1024, 2059, 86, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1025, 2059, 86, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1026, 2059, 86, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1027, 2059, 86, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1028, 2059, 86, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1029, 2059, 86, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1030, 2059, 86, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1031, 2059, 86, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1032, 2059, 86, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1033, 2059, 86, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1034, 2059, 86, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1035, 2059, 86, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1036, 2059, 86, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1037, 2059, 86, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1038, 2059, 86, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1039, 2059, 86, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1040, 2059, 86, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1041, 2059, 86, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1042, 2059, 86, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1043, 2059, 86, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1044, 2060, 104, 8, 15)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1045, 2061, 106, 3, 17)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1046, 2062, 28, 1, 16)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1050, 2064, 235, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1051, 2064, 236, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1052, 2064, 18, 1, 7)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1053, 2064, 21, 1, 7)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1054, 2064, 26, 1, 7)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1055, 2064, 28, 1, 16)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1056, 2064, 31, 1, 16)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1057, 2064, 35, 1, 16)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1058, 2064, 220, 1, 16)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1059, 2064, 222, 1, 16)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1060, 2064, 209, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (20, 1058, 5, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (21, 1058, 118, 1, 7)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (22, 1058, 123, 1, 7)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (23, 1058, 172, 1, 14)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (24, 1058, 171, 1, 14)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (25, 1058, 177, 1, 14)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (26, 1058, 143, 1, 19)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (27, 1058, 144, 1, 19)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (28, 1058, 145, 1, 19)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (29, 1058, 150, 1, 19)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (30, 1058, 4, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (31, 1058, 13, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (32, 1058, 71, 1, 20)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (33, 1058, 74, 1, 20)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (34, 1058, 72, 1, 20)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (35, 1058, 31, 1, 16)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (36, 1058, 3, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (37, 1059, 3, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (38, 1059, 4, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (39, 1059, 5, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (40, 1059, 6, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (41, 1059, 7, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (42, 1059, 8, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (43, 1059, 10, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (44, 1059, 11, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (45, 1059, 9, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (46, 1059, 13, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (47, 1059, 12, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (48, 1059, 14, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (49, 1060, 3, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (50, 1060, 4, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (51, 1060, 5, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (52, 1060, 6, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (53, 1060, 7, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (54, 1060, 8, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (55, 1060, 10, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (56, 1060, 11, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (57, 1060, 9, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (58, 1060, 13, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (59, 1060, 12, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (60, 1060, 14, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (61, 1061, 191, 1, 8)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (62, 1061, 190, 1, 8)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (63, 1061, 192, 1, 8)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (64, 1062, 69, 1, 20)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (65, 1062, 70, 1, 20)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (66, 1062, 71, 1, 20)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (67, 1062, 74, 1, 20)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (68, 1062, 73, 1, 20)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (69, 1062, 72, 1, 20)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (70, 1062, 75, 1, 20)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (71, 1062, 76, 1, 20)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (72, 1062, 77, 1, 20)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (73, 1062, 80, 1, 20)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (74, 1062, 79, 1, 20)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (75, 1062, 78, 1, 20)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (76, 1063, 157, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (77, 1063, 158, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (78, 1063, 159, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (79, 1064, 82, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (80, 1064, 83, 1, 10)
GO
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (81, 1064, 84, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (82, 1064, 85, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (83, 1064, 87, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (84, 1064, 86, 1, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (116, 1071, 93, 1, 15)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (117, 1071, 94, 1, 15)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (118, 1071, 95, 1, 15)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (119, 1072, 141, 3, 14)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (120, 1073, 132, 6, 14)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (101, 1067, 105, 1, 17)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (102, 1067, 106, 1, 17)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (103, 1067, 107, 1, 17)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (104, 1067, 108, 1, 17)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (105, 1067, 109, 1, 17)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (106, 1067, 110, 1, 17)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (107, 1067, 111, 1, 17)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (108, 1067, 112, 1, 17)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (109, 1067, 113, 1, 17)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (110, 1067, 114, 1, 17)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (111, 1067, 115, 1, 17)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (112, 1067, 116, 1, 17)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (113, 1068, 17, 1, 7)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (114, 1069, 11, 2, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (115, 1070, 12, 3, 10)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1047, 2062, 41, 1, 7)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1048, 2062, 40, 1, 7)
INSERT [dbo].[orderItem] ([id], [orderId], [productId], [quantity], [productPrice]) VALUES (1049, 2063, 91, 3, 10)
SET IDENTITY_INSERT [dbo].[orderItem] OFF
GO
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([id], [name], [email], [phone], [city], [address], [shipping], [price], [shippingStatus], [remark], [date]) VALUES (1059, N'ddd', N'ddd.ddd@dd.dd', N'0536987441', N'cdacda', N'cadcadc', N'Yes', 120, N'Not sent', N'', N'Thu Jul 23 2020 15:13:25 GMT+0300 (שעון ישראל (קיץ))')
INSERT [dbo].[orders] ([id], [name], [email], [phone], [city], [address], [shipping], [price], [shippingStatus], [remark], [date]) VALUES (1060, N'eee', N'eee@ee.ee', N'0542571330', N'daadas', N'dcsvdsa', N'No', 120, N'Not sent', N'', N'Thu Jul 23 2020 15:17:17 GMT+0300 (שעון ישראל (קיץ))')
INSERT [dbo].[orders] ([id], [name], [email], [phone], [city], [address], [shipping], [price], [shippingStatus], [remark], [date]) VALUES (1061, N'vv', N'vv@vv.vv', N'0542147881', N'adva', N'ascfa', N'No', 24, N'Not sent', N'', N'Thu Jul 23 2020 15:18:39 GMT+0300 (שעון ישראל (קיץ))')
INSERT [dbo].[orders] ([id], [name], [email], [phone], [city], [address], [shipping], [price], [shippingStatus], [remark], [date]) VALUES (1072, N'dd', N'dd@vd.sfvsfd', N'0548585885', N'dv', N'dv', N'No', 14, N'Not sent', N'', N'Fri Jul 24 2020 10:23:07 GMT+0300 (שעון ישראל (קיץ))')
INSERT [dbo].[orders] ([id], [name], [email], [phone], [city], [address], [shipping], [price], [shippingStatus], [remark], [date]) VALUES (2058, N'daniel', N'daniel@gmail.com', N'025852588', N'adcadca', N'cacad', N'No', 40, N'Not sent', N'', N'Mon Aug 03 2020 11:00:04 GMT+0300 (שעון ישראל (קיץ))')
INSERT [dbo].[orders] ([id], [name], [email], [phone], [city], [address], [shipping], [price], [shippingStatus], [remark], [date]) VALUES (2059, N'ffggdd', N'fffff@ff.ff', N'025252555', N'saaaaa', N'bbbbbb', N'Yes', 200, N'Not sent', N'', N'Mon Aug 03 2020 13:45:26 GMT+0300 (שעון ישראל (קיץ))')
INSERT [dbo].[orders] ([id], [name], [email], [phone], [city], [address], [shipping], [price], [shippingStatus], [remark], [date]) VALUES (2060, N'daf', N'aff@gmail.com', N'0525252552', N'adasdasd', N'vbfbfb', N'Yes', 15, N'Not sent', N'', N'Wed Aug 05 2020 13:13:14 GMT+0300 (שעון ישראל (קיץ))')
INSERT [dbo].[orders] ([id], [name], [email], [phone], [city], [address], [shipping], [price], [shippingStatus], [remark], [date]) VALUES (2061, N'll', N'll@lll.ll', N'025741366', N'nyhny', N'olohhu', N'No', 17, N'Not sent', N'', N'Wed Aug 05 2020 13:35:08 GMT+0300 (שעון ישראל (קיץ))')
INSERT [dbo].[orders] ([id], [name], [email], [phone], [city], [address], [shipping], [price], [shippingStatus], [remark], [date]) VALUES (2062, N'tt', N'tt@yy.uu', N'0517865443', N'rgs', N'nhhn', N'No', 30, N'Not sent', N'', N'Wed Aug 05 2020 13:35:38 GMT+0300 (שעון ישראל (קיץ))')
INSERT [dbo].[orders] ([id], [name], [email], [phone], [city], [address], [shipping], [price], [shippingStatus], [remark], [date]) VALUES (1068, N'zz', N'zz@zz.zz', N'0542571330', N'dd', N'scsq', N'No', 7, N'Not sent', N'', N'Thu Jul 23 2020 19:10:46 GMT+0300 (שעון ישראל (קיץ))')
INSERT [dbo].[orders] ([id], [name], [email], [phone], [city], [address], [shipping], [price], [shippingStatus], [remark], [date]) VALUES (1069, N'mm', N'mm@mm.mm', N'025825855', N'sdcsd', N'njjnj', N'No', 10, N'Not sent', N'', N'Thu Jul 23 2020 19:15:10 GMT+0300 (שעון ישראל (קיץ))')
INSERT [dbo].[orders] ([id], [name], [email], [phone], [city], [address], [shipping], [price], [shippingStatus], [remark], [date]) VALUES (1070, N'vv', N'v@vv.vv', N'025858588', N'sfvsfs', N'sdcds', N'Yes', 10, N'Not sent', N'', N'Thu Jul 23 2020 19:16:25 GMT+0300 (שעון ישראל (קיץ))')
INSERT [dbo].[orders] ([id], [name], [email], [phone], [city], [address], [shipping], [price], [shippingStatus], [remark], [date]) VALUES (2064, N'nn', N'nn@bb.sgs', N'0547414778', N'evfsf', N'dvasfc', N'No', 131, N'Not sent', N'', N'Fri Aug 07 2020 11:27:33 GMT+0300 (שעון ישראל (קיץ))')
INSERT [dbo].[orders] ([id], [name], [email], [phone], [city], [address], [shipping], [price], [shippingStatus], [remark], [date]) VALUES (1062, N'mmm', N'mmm@mm.mm', N'0525852254', N'dcd', N'sadasc', N'Yes', 240, N'Not sent', N'hello', N'Thu Jul 23 2020 16:27:24 GMT+0300 (שעון ישראל (קיץ))')
INSERT [dbo].[orders] ([id], [name], [email], [phone], [city], [address], [shipping], [price], [shippingStatus], [remark], [date]) VALUES (1071, N'cc', N'rr@rr.rr', N'0523658774', N'fe', N'wd', N'Yes', 45, N'Not sent', N'', N'Thu Jul 23 2020 20:36:23 GMT+0300 (שעון ישראל (קיץ))')
INSERT [dbo].[orders] ([id], [name], [email], [phone], [city], [address], [shipping], [price], [shippingStatus], [remark], [date]) VALUES (1058, N'ddddd', N'dvsdv.dvds@dvs.dv', N'0548963221', N'adfadf', N'fafadfc', N'Yes', 248, N'Not Sent', N'', N'Thu Jul 23 2020 00:04:27 GMT+0300 (שעון ישראל (קיץ))')
INSERT [dbo].[orders] ([id], [name], [email], [phone], [city], [address], [shipping], [price], [shippingStatus], [remark], [date]) VALUES (1063, N'fff', N'ff@ff.ff', N'0525252255', N'vvv', N'vvv', N'No', 30, N'Not sent', N'', N'Thu Jul 23 2020 17:10:22 GMT+0300 (שעון ישראל (קיץ))')
INSERT [dbo].[orders] ([id], [name], [email], [phone], [city], [address], [shipping], [price], [shippingStatus], [remark], [date]) VALUES (1064, N'ee', N'ee@ee.ee', N'0542571330', N'dsvsd', N'sdvsdv', N'Yes', 60, N'Not sent', N'', N'Thu Jul 23 2020 17:18:22 GMT+0300 (שעון ישראל (קיץ))')
INSERT [dbo].[orders] ([id], [name], [email], [phone], [city], [address], [shipping], [price], [shippingStatus], [remark], [date]) VALUES (1073, N'nnnnnnnn', N'nnnnnnn@nn.nn', N'0525252225', N'nnnnnnn', N'nnnnnnnnnn', N'No', 14, N'Not sent', N'', N'Fri Jul 24 2020 14:33:12 GMT+0300 (שעון ישראל (קיץ))')
INSERT [dbo].[orders] ([id], [name], [email], [phone], [city], [address], [shipping], [price], [shippingStatus], [remark], [date]) VALUES (2063, N'qq', N'qq@qq.qq', N'0565478996', N'fffqqq', N'qqq', N'Yes', 10, N'Not sent', N'', N'Thu Aug 06 2020 13:38:11 GMT+0300 (שעון ישראל (קיץ))')
INSERT [dbo].[orders] ([id], [name], [email], [phone], [city], [address], [shipping], [price], [shippingStatus], [remark], [date]) VALUES (1067, N'xx', N'xx@xx.xx', N'0542514774', N'adca', N'scs', N'Yes', 204, N'Not sent', N'', N'Thu Jul 23 2020 17:25:00 GMT+0300 (שעון ישראל (קיץ))')
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (230, N'Culture Om Design', N'iphone', N'iphone x', 10, N'', N'https://static.coverscart.com/image/cache//glass/iPhone_X/S1/Culture_Om_Design_Glass_Back_Case_for_iPhone_X-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (4, N'Classy Black Red', N'iphone', N'iphone x', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//glass/iPhone_X/S1/Classy_Black_Red_Design_Glass_Back_Case_for_iPhone_X-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (231, N'Black Grey Noise', N'iphone', N'iphone x', 10, N'', N'https://static.coverscart.com/image/cache//glass/iPhone_X/S1/Black_Grey_Noise_Fusion_Glass_Back_Case_for_iPhone_X-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (54, N'Galaxy Beauty', N'samsung', N'galaxy 10', 15, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Galaxy_Beauty_Back_Case_for_Galaxy_S10-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (55, N'Exotic Marble', N'samsung', N'galaxy 10', 15, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Exotic_Marble_Pattern_Back_Case_for_Galaxy_S10-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (56, N'Dark Hope ', N'samsung', N'galaxy 10', 15, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Dark_Hope_Back_Case_for_Galaxy_S10-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (57, N'Peace Disorted', N'samsung', N'galaxy 10', 15, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Peace_Disorted_Back_Case_for_Galaxy_S10-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (58, N'Stripe Block', N'samsung', N'galaxy 10', 15, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Stripe_Block_Back_Case_for_Galaxy_S10-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (59, N'Grey Marble', N'samsung', N'galaxy 10', 15, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Grey_Marble_Back_Case_for_Galaxy_S10-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (60, N'Do It Abstract', N'samsung', N'galaxy 10', 15, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Do_It_Abstract_Back_Case_for_Galaxy_S10-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (61, N'Classy Rugged', N'samsung', N'galaxy 10', 15, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Classy_Rugged_Bicolor_Back_Case_for_Galaxy_S10-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (62, N'Chubby Doggo', N'samsung', N'galaxy 10', 15, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Chubby_Doggo_Back_Case_for_Galaxy_S10-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (63, N'Net Leaf', N'samsung', N'galaxy 10', 15, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Net_Leaf_Color_Design_Back_Case_for_Galaxy_S10-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (64, N'Blue Paint', N'samsung', N'galaxy 10', 15, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Blue_Paint_Wall_Back_Case_for_Galaxy_S10-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (82, N'Wooden Puzzle', N'xiaomi', N'redmi 6', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Wooden_Puzzle_(Printed)_Back_Case_for_Redmi_6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (83, N'Blue Dots', N'xiaomi', N'redmi 6', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Blue_Dots_Shades_Back_Case_for_Redmi_6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (84, N'Classy Black', N'xiaomi', N'redmi 6', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Classy_Black_Red_Design_Back_Case_for_Redmi_6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (85, N'Travel Back', N'xiaomi', N'redmi 6', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Travel_Back_Case_for_Redmi_6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (86, N'Black Camouflage', N'xiaomi', N'redmi 6', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Black_Camouflage_Back_Case_for_Redmi_6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (87, N'Love Things', N'xiaomi', N'redmi 6', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Love_Things_Back_Case_for_Redmi_6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (88, N'Black Elegant ', N'xiaomi', N'redmi 6', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Black_Elegant_Design_Back_Case_for_Redmi_6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (89, N'Grow Back', N'xiaomi', N'redmi 6', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Grow_Back_Case_for_Redmi_6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (90, N'Pastel Blue', N'xiaomi', N'redmi 6', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Pastel_Blue_White_Stripes_Back_Case_for_Redmi_6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (91, N'Reason S', N'xiaomi', N'redmi 6', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Reason_Sky_Back_Case_for_Redmi_6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (92, N'Radio Man', N'xiaomi', N'redmi 6', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Radio_Man_Back_Case_for_Redmi_6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (93, N'Marine Bag', N'xiaomi', N'redmi note 8', 15, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//update/Xiaomi_Redmi_Note_8/Marine_Bag_Design_Back_Case_for_Redmi_Note_8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (94, N'RoseGold Marble', N'xiaomi', N'redmi note 8', 15, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//update/Xiaomi_Redmi_Note_8/RoseGold_Marble_Back_Case_for_Redmi_Note_8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (95, N'Space Meeting', N'xiaomi', N'redmi note 8', 15, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//update/Xiaomi_Redmi_Note_8/Space_Meeting_Back_Case_for_Redmi_Note_8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (96, N'Thread Art Wooden', N'xiaomi', N'redmi note 8', 15, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//update/Xiaomi_Redmi_Note_8/Thread_Art_Wooden_Print_Back_Case_for_Redmi_Note_8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (97, N'No Fear No', N'xiaomi', N'redmi note 8', 15, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//update/Xiaomi_Redmi_Note_8/No_Fear_No_Limits_Back_Case_for_Redmi_Note_8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (98, N'Culture Om', N'xiaomi', N'redmi note 8', 15, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//update/Xiaomi_Redmi_Note_8/Culture_Om_Design_Back_Case_for_Redmi_Note_8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (99, N'Green Black', N'xiaomi', N'redmi note 8', 15, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//update/Xiaomi_Redmi_Note_8/Green_Black_Shapes_Back_Case_for_Redmi_Note_8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (100, N'Cool Melange', N'xiaomi', N'redmi note 8', 15, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//update/Xiaomi_Redmi_Note_8/Cool_Melange_Stripe_Back_Case_for_Redmi_Note_8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (101, N'Stay Classic', N'xiaomi', N'redmi note 8', 15, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//update/Xiaomi_Redmi_Note_8/Stay_Classic_Back_Case_for_Redmi_Note_8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (102, N'Cherry Flowers', N'xiaomi', N'redmi note 8', 15, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//update/Xiaomi_Redmi_Note_8/Cherry_Flowers_Pink_Back_Case_for_Redmi_Note_8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (103, N'Love Things', N'xiaomi', N'redmi note 8', 15, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//update/Xiaomi_Redmi_Note_8/Love_Things_Back_Case_for_Redmi_Note_8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (104, N'Pink Leaf', N'xiaomi', N'redmi note 8', 15, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//update/Xiaomi_Redmi_Note_8/Pink_Leaf_Pattern_Back_Case_for_Redmi_Note_8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (105, N'Golden Blue', N'xiaomi', N'mi A3', 17, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Golden_Blue_Triangle_Back_Case_for_Mi_A3-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (106, N'Lion Class', N'xiaomi', N'mi A3', 17, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Lion_Class_Back_Case_for_Mi_A3-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (107, N'Grey Pink', N'xiaomi', N'mi A3', 17, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Grey_Pink_Pattern_Back_Case_for_Mi_A3-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (108, N'Flying Yellow', N'xiaomi', N'mi A3', 17, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Flying_Yellow_Back_Case_for_Mi_A3-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (109, N'Rugged Strike', N'xiaomi', N'mi A3', 17, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Rugged_Strike_Abstract_Back_Case_for_Mi_A3-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (110, N'Abstract Lines', N'xiaomi', N'mi A3', 17, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Abstract_Lines_Polka_Back_Case_for_Mi_A3-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (111, N'Live In The Moment', N'xiaomi', N'mi A3', 17, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Live_In_The_Moment_Back_Case_for_Mi_A3-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (112, N'Classy Black', N'xiaomi', N'mi A3', 17, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Classy_Black_Stripes_Back_Case_for_Mi_A3-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (113, N'Classy Black', N'xiaomi', N'mi A3', 17, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Classy_Black_Red_Design_Back_Case_for_Mi_A3-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (114, N'Dreamy Owl', N'xiaomi', N'mi A3', 17, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Dreamy_Owl_Catcher_Back_Case_for_Mi_A3-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (115, N'Puppy Dab Back', N'xiaomi', N'mi A3', 17, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Puppy_Dab_Back_Case_for_Mi_A3-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (116, N'Bam Pattern', N'xiaomi', N'mi A3', 17, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Bam_Pattern_Back_Case_for_Mi_A3-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (117, N'African Design', N'huawei', N'honor 7', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/African_Design_Pattern_Back_Case_for_Huawei_Honor_7-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (118, N'Wrapping Stripes', N'huawei', N'honor 7', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Wrapping_Stripes_Back_Case_for_Huawei_Honor_7-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (119, N'Fusion Shade', N'huawei', N'honor 7', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Fusion_Shade_Back_Case_for_Huawei_Honor_7-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (120, N'Simple Weirdo', N'huawei', N'honor 7', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Simple_Weirdo_Back_Case_for_Huawei_Honor_7-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (121, N'Simple Bars', N'huawei', N'honor 7', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Simple_Bars_Back_Case_for_Huawei_Honor_7-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (122, N'Beautiful Circle', N'huawei', N'honor 7', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Beautiful_Circle_Art_Back_Case_for_Huawei_Honor_7-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (123, N'Dark Night', N'huawei', N'honor 7', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Dark_Night_DJ_Back_Case_for_Huawei_Honor_7-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (124, N'Minimal Glasses', N'huawei', N'honor 7', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Minimal_Glasses_Back_Case_for_Huawei_Honor_7-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (125, N'Lines Pattern', N'huawei', N'honor 7', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Lines_Pattern_Stripes_Back_Case_for_Huawei_Honor_7-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (126, N'Rainbow Colors', N'huawei', N'honor 7', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Rainbow_Colors_Stripes_Back_Case_for_Huawei_Honor_7-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (127, N'Sarcasm Defence', N'huawei', N'honor 7', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Sarcasm_Defence_Back_Case_for_Huawei_Honor_7-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (128, N'Textured Dots', N'huawei', N'honor 7', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Textured_Dots_Back_Case_for_Huawei_Honor_7-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (129, N'Dark Wood', N'huawei', N'honor 9', 14, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Dark_Wood_Printed_Back_Case_for_Honor_9N-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (130, N'Panda Dabbing', N'huawei', N'honor 9', 14, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Panda_Dabbing_Away_Back_Case_for_Honor_9N-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (131, N'Simple Checks', N'huawei', N'honor 9', 14, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Simple_Checks_Back_Case_for_Honor_9N-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (132, N'White Tulips', N'huawei', N'honor 9', 14, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/White_Tulips_Back_Case_for_Honor_9N-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (133, N'Shades Half', N'huawei', N'honor 9', 14, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Shades_Half_Back_Case_for_Honor_9N-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (134, N'Pastel Black', N'huawei', N'honor 9', 14, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Pastel_Black_and_Grey_Back_Case_for_Honor_9N-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (135, N'Black Camouflage', N'huawei', N'honor 9', 14, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Black_Camouflage_Back_Case_for_Honor_9N-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (137, N'Dark Olive Green', N'huawei', N'honor 9', 14, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Dark_Olive_Green_Back_Case_for_Honor_9N-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (6, N'Classiest Of All', N'iphone', N'iphone x', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//glass/iPhone_X/S1/Classiest_Of_All_Glass_Back_Case_for_iPhone_X-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (7, N'Net Leaf Color', N'iphone', N'iphone x', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//glass/iPhone_X/S1/Net_Leaf_Color_Design_Glass_Back_Case_for_iPhone_X-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (234, N'Colourful Owl', N'iphone', N'iphone x', 10, N'', N'https://static.coverscart.com/image/cache//glass/iPhone_X/S1/Colourful_Owl_Glass_Back_Case_for_iPhone_X-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (235, N'Fly Pink', N'iphone', N'iphone x', 10, N'', N'https://static.coverscart.com/image/cache//glass/iPhone_X/S1/Fly_Pink_Glass_Back_Case_for_iPhone_X-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (236, N'Live Once', N'iphone', N'iphone x', 10, N'', N'https://static.coverscart.com/image/cache//glass/iPhone_X/S1/Live_Once_Glass_Back_Case_for_iPhone_X-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (15, N'Simple Black', N'iphone', N'iphone 8', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//glass/iPhone_8/S1/Simple_Black_Glass_Back_Case_for_iPhone_8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (16, N'Tricolor Stripes ', N'iphone', N'iphone 8', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//glass/iPhone_8/S1/Tricolor_Stripes_Glass_Back_Case_for_iPhone_8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (17, N'Where The Food', N'iphone', N'iphone 8', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//glass/iPhone_8/S1/Where_The_Food_Glass_Back_Case_for_iPhone_8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (18, N'Net Leaf ', N'iphone', N'iphone 8', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//glass/iPhone_8/S1/Net_Leaf_Color_Design_Glass_Back_Case_for_iPhone_8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (19, N'Blossom Frame', N'iphone', N'iphone 8', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//glass/iPhone_8/S1/Blossom_Frame_Pink_Glass_Back_Case_for_iPhone_8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (20, N'Black Elegant', N'iphone', N'iphone 8', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//glass/iPhone_8/S1/Black_Elegant_Design_Glass_Back_Case_for_iPhone_8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (21, N'Pink Cute', N'iphone', N'iphone 8', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//glass/iPhone_8/S1/Pink_Cute_Tower_Glass_Back_Case_for_iPhone_8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (22, N'Black Camouflage', N'iphone', N'iphone 8', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//glass/iPhone_8/S1/Black_Camouflage_Glass_Back_Case_for_iPhone_8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (23, N'Fruit Printed', N'iphone', N'iphone 8', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//glass/iPhone_8/S1/Fruit_Printed_Design_Glass_Back_Case_for_iPhone_8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (24, N'Vintage Chair', N'iphone', N'iphone 8', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//glass/iPhone_8/S1/Vintage_Chair_Guitar_Glass_Back_Case_for_iPhone_8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (25, N'Chubby Doggo', N'iphone', N'iphone 8', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//glass/iPhone_8/S1/Chubby_Doggo_Glass_Back_Case_for_iPhone_8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (26, N'Number 7', N'iphone', N'iphone 8', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//glass/iPhone_8/S1/Number_7_Glass_Back_Case_for_iPhone_8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (27, N'Classy Black Red', N'iphone', N'iphone 11 pro', 16, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//glass/iPhone_11_Pro/S1/Classy_Black_Red_Design_Glass_Back_Case_for_iPhone_11_Pro-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (28, N'Navy Blue', N'iphone', N'iphone 11 pro', 16, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//glass/iPhone_11_Pro/S1/Navy_Blue_Arrow_Glass_Back_Case_for_iPhone_11_Pro-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (29, N'Black Elegant', N'iphone', N'iphone 11 pro', 16, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//glass/iPhone_11_Pro/S1/Black_Elegant_Design_Glass_Back_Case_for_iPhone_11_Pro-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (30, N'Royal Stripes', N'iphone', N'iphone 11 pro', 16, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//glass/iPhone_11_Pro/S1/Royal_Stripes_Design_Glass_Back_Case_for_iPhone_11_Pro-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (31, N'Net Leaf', N'iphone', N'iphone 11 pro', 16, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//glass/iPhone_11_Pro/S1/Net_Leaf_Color_Design_Glass_Back_Case_for_iPhone_11_Pro-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (32, N'Culture Om', N'iphone', N'iphone 11 pro', 16, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//glass/iPhone_11_Pro/S1/Culture_Om_Design_Glass_Back_Case_for_iPhone_11_Pro-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (33, N'Panda Dabbing', N'iphone', N'iphone 11 pro', 16, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//glass/iPhone_11_Pro/S1/Panda_Dabbing_Away_Glass_Back_Case_for_iPhone_11_Pro-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (34, N'Chubby Doggo', N'iphone', N'iphone 11 pro', 16, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//glass/iPhone_11_Pro/S1/Chubby_Doggo_Glass_Back_Case_for_iPhone_11_Pro-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (35, N'No Panic', N'iphone', N'iphone 11 pro', 16, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//glass/iPhone_11_Pro/S1/No_Panic_Glass_Back_Case_for_iPhone_11_Pro-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (36, N'Always Be ', N'iphone', N'iphone 11 pro', 16, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//glass/iPhone_11_Pro/S1/Always_Be_Fearless_Glass_Back_Case_for_iPhone_11_Pro-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (37, N'Three Triangles', N'iphone', N'iphone 11 pro', 16, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//glass/iPhone_11_Pro/S1/Three_Triangles_Glass_Back_Case_for_iPhone_11_Pro-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (38, N'Vintage Rust', N'iphone', N'iphone 11 pro', 16, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//glass/iPhone_11_Pro/S1/Vintage_Rust_Floral_Glass_Back_Case_for_iPhone_11_Pro-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (40, N'Pink Cute', N'samsung', N'galaxy 8', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Pink_Cute_Tower_Back_Case_for_Galaxy_S8-600x600.jpg')
GO
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (41, N'Rather Be', N'samsung', N'galaxy 8', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Rather_Be_In_Bed_Back_Case_for_Galaxy_S8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (42, N'Cute Coffee', N'samsung', N'galaxy 8', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Cute_Coffee_Cups_Back_Case_for_Galaxy_S8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (44, N'Pink Stripes', N'samsung', N'galaxy 8', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/catalog/Pink_Stripes_Back_Case_for_Galaxy_S8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (45, N'Wassup You', N'samsung', N'galaxy 8', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Wassup_You_Back_Case_for_Galaxy_S8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (46, N'Exotic Marble', N'samsung', N'galaxy 8', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Exotic_Marble_Pattern_Back_Case_for_Galaxy_S8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (47, N'Beautiful Night', N'samsung', N'galaxy 8', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Beautiful_Night_Sky_Flowers_Back_Case_for_Galaxy_S8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (48, N'Half Human', N'samsung', N'galaxy 8', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Half_Human_Half_Coffee_Back_Case_for_Galaxy_S8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (49, N'Half Human Half', N'samsung', N'galaxy 8', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Half_Human_Half_Coffee_Back_Case_for_Galaxy_S8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (50, N'Brown Leapord', N'samsung', N'galaxy 8', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Brown_Leapord_Print_Back_Case_for_Galaxy_S8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (51, N'Proton Positive', N'samsung', N'galaxy 8', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Proton_Positive_Back_Case_for_Galaxy_S8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (52, N'Designer Lion', N'samsung', N'galaxy 8', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//catalog/Designer_Lion_Back_Case_for_Galaxy_S8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (53, N'Cherry Flowers', N'samsung', N'galaxy 10', 15, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Cherry_Flowers_Pink_Back_Case_for_Galaxy_S10-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (65, N'Cool Owl', N'samsung', N'galaxy 10', 15, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Cool_Owl_Back_Case_for_Galaxy_S10-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (66, N'Thumb Back', N'samsung', N'galaxy 10', 15, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Thumb_Back_Case_for_Galaxy_S10-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (67, N'Royal Stripes', N'samsung', N'galaxy 10', 15, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Royal_Stripes_Design_Back_Case_for_Galaxy_S10-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (68, N'Desinger Floral', N'samsung', N'galaxy 10', 15, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Desinger_Floral_Back_Case_for_Galaxy_S10-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (69, N'Cute Multicolor', N'samsung', N'galaxy A20', 20, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Cute_Multicolor_Shapes_Back_Case_for_Galaxy_A20-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (70, N'Travel Requisites', N'samsung', N'galaxy A20', 20, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Travel_Requisites_Back_Case_for_Galaxy_A20-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (71, N'Classy Black', N'samsung', N'galaxy A20', 20, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Classy_Black_Stripes_Back_Case_for_Galaxy_A20-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (72, N'Puppy Dab', N'samsung', N'galaxy A20', 20, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Puppy_Dab_Back_Case_for_Galaxy_A20-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (73, N'Cute Bow', N'samsung', N'galaxy A20', 20, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Cute_Bow_Face_Back_Case_for_Galaxy_A20-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (74, N'Wooden Puzzle', N'samsung', N'galaxy A20', 20, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Wooden_Puzzle_(Printed)_Back_Case_for_Galaxy_A20-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (75, N'Coffee And Travel', N'samsung', N'galaxy A20', 20, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Coffee_And_Travel_Back_Case_for_Galaxy_A20-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (76, N'Animated Dream', N'samsung', N'galaxy A20', 20, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Animated_Dream_Catcher_Back_Case_for_Galaxy_A20-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (77, N'Cherry Flowers', N'samsung', N'galaxy A20', 20, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Cherry_Flowers_Pink_Back_Case_for_Galaxy_A20-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (78, N'Tiny Flower', N'samsung', N'galaxy A20', 20, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Tiny_Flower_Leaves_Back_Case_for_Galaxy_A20-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (79, N'Classy and Fabulous', N'samsung', N'galaxy A20', 20, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Classy_and_Fabulous_Back_Case_for_Galaxy_A20-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (80, N'Puppy Paws', N'samsung', N'galaxy A20', 20, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Puppy_Paws_Back_Case_for_Galaxy_A20-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (81, N'Aztec Beautiful', N'xiaomi', N'redmi 6', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Aztec_Beautiful_Creativity_Back_Case_for_Redmi_6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (167, N'Makes You Happy', N'google', N'pixel 3', 14, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Makes_You_Happy_Back_Case_for_Google_Pixel_3-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (168, N'Chubby Doggo', N'google', N'pixel 3', 14, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Chubby_Doggo_Back_Case_for_Google_Pixel_3-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (169, N'Black Camouflage', N'google', N'pixel 3', 14, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Black_Camouflage_Back_Case_for_Google_Pixel_3-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (170, N'Guitar And Co', N'google', N'pixel 3', 14, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Guitar_And_Co_Back_Case_for_Google_Pixel_3-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (171, N'Sports Yellow Stripe', N'google', N'pixel 3', 14, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Sports_Yellow_Stripes_Back_Case_for_Google_Pixel_3-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (172, N'Bold Colours', N'google', N'pixel 3', 14, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Bold_Colours_Back_Case_for_Google_Pixel_3-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (39, N'Seaside Back Case', N'samsung', N'galaxy 8', 7, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Seaside_Back_Case_for_Galaxy_S8-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (232, N'Bold Colours', N'iphone', N'iphone x', 10, N'', N'https://static.coverscart.com/image/cache//glass/iPhone_X/S1/Bold_Colours_Glass_Back_Case_for_iPhone_X-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (233, N'Space Pattern Blue', N'iphone', N'iphone x', 10, N'', N'https://static.coverscart.com/image/cache//glass/iPhone_X/S1/Space_Pattern_Blue_Glass_Back_Case_for_iPhone_X-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (138, N'Textured Dots', N'huawei', N'honor 9', 14, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Textured_Dots_Back_Case_for_Honor_9N-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (139, N'African Design', N'huawei', N'honor 9', 14, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/African_Design_Pattern_Back_Case_for_Honor_9N-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (140, N'Chubby Doggo', N'huawei', N'honor 9', 14, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Chubby_Doggo_Back_Case_for_Honor_9N-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (141, N'Skeleton Dab', N'huawei', N'honor 9', 14, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Skeleton_Dab_White_Back_Case_for_Honor_9N-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (142, N'Black Elegant', N'huawei', N'honor 20i', 19, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Black_Elegant_Design_Back_Case_for_Honor_20i-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (143, N'Cool Owl', N'huawei', N'honor 20i', 19, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Cool_Owl_Back_Case_for_Honor_20i-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (144, N'Checkerboard', N'huawei', N'honor 20i', 19, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Checkerboard_Back_Case_for_Honor_20i-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (145, N'Panda Dabbing', N'huawei', N'honor 20i', 19, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Panda_Dabbing_Away_Back_Case_for_Honor_20i-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (146, N'Magenta Floral', N'huawei', N'honor 20i', 19, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Magenta_Floral_Pattern_Back_Case_for_Honor_20i-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (147, N'Block Color', N'huawei', N'honor 20i', 19, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Block_Color_Design_Back_Case_for_Honor_20i-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (148, N'Pieces Of Hope', N'huawei', N'honor 20i', 19, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Pieces_Of_Hope_Back_Case_for_Honor_20i-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (149, N'Love Things', N'huawei', N'honor 20i', 19, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Love_Things_Back_Case_for_Honor_20i-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (150, N'Brick Wall', N'huawei', N'honor 20i', 19, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Brick_Wall_Back_Case_for_Honor_20i-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (151, N'Worlds Best Dad', N'huawei', N'honor 20i', 19, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Worlds_Best_Dad_Back_Case_for_Honor_20i-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (152, N'Dark Olive Green', N'huawei', N'honor 20i', 19, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Dark_Olive_Green_Back_Case_for_Honor_20i-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (153, N'Army Uniform', N'huawei', N'honor 20i', 19, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Army_Uniform_Back_Case_for_Honor_20i-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (154, N'African Design', N'google', N'nexus 6', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/African_Design_Pattern_Back_Case_for_Nexsus_6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (155, N'Fusion Shade', N'google', N'nexus 6', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Fusion_Shade_Back_Case_for_Nexsus_6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (156, N'Simple Weirdo', N'google', N'nexus 6', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Simple_Weirdo_Back_Case_for_Nexsus_6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (157, N'Simple Bars', N'google', N'nexus 6', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Simple_Bars_Back_Case_for_Nexsus_6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (158, N'Beautiful Circle', N'google', N'nexus 6', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Beautiful_Circle_Art_Back_Case_for_Nexsus_6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (159, N'Dark Night', N'google', N'nexus 6', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Dark_Night_DJ_Back_Case_for_Nexsus_6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (160, N'Minimal Glasses', N'google', N'nexus 6', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Minimal_Glasses_Back_Case_for_Nexsus_6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (161, N'Lines Pattern', N'google', N'nexus 6', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Lines_Pattern_Stripes_Back_Case_for_Nexsus_6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (162, N'Rainbow Colors', N'google', N'nexus 6', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Rainbow_Colors_Stripes_Back_Case_for_Nexsus_6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (163, N'Sarcasm Defence', N'google', N'nexus 6', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Sarcasm_Defence_Back_Case_for_Nexsus_6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (164, N'Textured Dots', N'google', N'nexus 6', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Textured_Dots_Back_Case_for_Nexsus_6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (165, N'Wrapping Stripes', N'google', N'nexus 6', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Wrapping_Stripes_Back_Case_for_Nexsus_6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (166, N'Blah Bold', N'google', N'pixel 3', 14, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Blah_Bold_Stripes_Back_Case_for_Google_Pixel_3-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (173, N'Anatomy Pattern', N'google', N'pixel 3', 14, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Anatomy_Pattern_Back_Case_for_Google_Pixel_3-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (174, N'Stripe Block', N'google', N'pixel 3', 14, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Stripe_Block_Back_Case_for_Google_Pixel_3-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (175, N'Smart Maze', N'google', N'pixel 3', 14, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Smart_Maze_Back_Case_for_Google_Pixel_3-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (176, N'Plain and Pattern', N'google', N'pixel 3', 14, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Plain_and_Pattern_Back_Case_for_Google_Pixel_3-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (177, N'Electric Colors', N'google', N'pixel 3', 14, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Electric_Colors_Stripe_Back_Case_for_Google_Pixel_3-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (178, N'Number 9', N'google', N'pixel 4 XL', 18, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Number_9_Back_Case_for_Google_Pixel_4_XL-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (179, N'Panda Lazy', N'google', N'pixel 4 XL', 18, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Panda_Lazy_Back_Case_for_Google_Pixel_4_XL-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (180, N'I am Crazy', N'google', N'pixel 4 XL', 18, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/I_am_Crazy_Back_Case_for_Google_Pixel_4_XL-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (181, N'Good Vibes ', N'google', N'pixel 4 XL', 18, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Good_Vibes_Victory_Back_Case_for_Google_Pixel_4_XL-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (182, N'Solid Sports', N'google', N'pixel 4 XL', 18, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Solid_Sports_Stripe_Back_Case_for_Google_Pixel_4_XL-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (183, N'Bright Red', N'google', N'pixel 4 XL', 18, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Bright_Red_Back_Case_for_Google_Pixel_4_XL-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (184, N'Abstract Figures', N'google', N'pixel 4 XL', 18, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Abstract_Figures_Back_Case_for_Google_Pixel_4_XL-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (185, N'Grey Military', N'google', N'pixel 4 XL', 18, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Grey_Military_Back_Case_for_Google_Pixel_4_XL-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (186, N'Fusion Shade', N'google', N'pixel 4 XL', 18, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Fusion_Shade_Back_Case_for_Google_Pixel_4_XL-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (187, N'Simple Weirdo', N'google', N'pixel 4 XL', 18, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Simple_Weirdo_Back_Case_for_Google_Pixel_4_XL-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (188, N'Footsteps', N'google', N'pixel 4 XL', 18, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Footsteps_Back_Case_for_Google_Pixel_4_XL-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (189, N'Exotic Marble', N'google', N'pixel 4 XL', 18, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Exotic_Marble_Pattern_Back_Case_for_Google_Pixel_4_XL-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (190, N'Coffee And Travel', N'LG', N'G6', 8, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Coffee_And_Travel_Back_Case_for_LG_G6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (191, N'Red Disort Stripes', N'LG', N'G6', 8, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Red_Disort_Stripes_Back_Case_for_LG_G6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (192, N'Just Lines', N'LG', N'G6', 8, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Just_Lines_Back_Case_for_LG_G6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (193, N'My King Dad', N'LG', N'G6', 8, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//catalog/My_King_Dad_Back_Case_for_LG_G6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (194, N'Fruit Printed', N'LG', N'G6', 8, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Fruit_Glass_Back_Case_for_LG_G6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (195, N'Old Man', N'LG', N'G6', 8, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Old_Man_Swag_Back_Case_for_LG_G6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (196, N'Slant Grey', N'LG', N'G6', 8, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Slant_Grey_Back_Case_for_LG_G6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (197, N'Couple In', N'LG', N'G6', 8, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Couple_In_Stars_Back_Case_for_LG_G6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (198, N'Blue Dots', N'LG', N'G6', 8, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Blue_Dots_Shades_Back_Case_for_LG_G6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (199, N'Abstract Corners', N'LG', N'G6', 8, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Abstract_Corners_Back_Case_for_LG_G6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (200, N'Whimsical Colors', N'LG', N'G6', 8, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Whimsical_Colors_Back_Case_for_LG_G6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (201, N'Elite Diamonds', N'LG', N'G6', 8, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Elite_Diamonds_Back_Case_for_LG_G6-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (202, N'Black Elegant', N'LG', N'G7', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Black_Elegant_Design_Back_Case_for_LG_G7-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (203, N'Black Camouflage', N'LG', N'G7', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Black_Camouflage_Back_Case_for_LG_G7-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (204, N'Red Hills', N'LG', N'G7', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Red_Hills_Back_Case_for_LG_G7-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (205, N'Live In The Moment', N'LG', N'G7', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Live_In_The_Moment_Back_Case_for_LG_G7-600x600.jpg')
GO
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (206, N'Colored Skull', N'LG', N'G7', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Colored_Skull_Shred_Back_Case_for_LG_G7-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (207, N'Cute Stars', N'LG', N'G7', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Cute_Stars_Design_Back_Case_for_LG_G7-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (208, N'Panda Dabbing', N'LG', N'G7', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Panda_Dabbing_Away_Back_Case_for_LG_G7-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (209, N'Beige Red', N'LG', N'G7', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Beige_Red_Check_Back_Case_for_LG_G7-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (210, N'Stripe Block', N'LG', N'G7', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Stripe_Block_Back_Case_for_LG_G7-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (211, N'Thumb Back', N'LG', N'G7', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Thumb_Back_Case_for_LG_G7-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (212, N'Cool Melange', N'LG', N'G7', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Cool_Melange_Stripe_Back_Case_for_LG_G7-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (213, N'Pastel Black ', N'LG', N'G7', 10, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Pastel_Black_and_Grey_Back_Case_for_LG_G7-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (214, N'No Fear No', N'LG', N'V30', 16, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/No_Fear_No_Limits_Back_Case_for_LG_V30-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (215, N'Pastel Blues', N'LG', N'V30', 16, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Pastel_Blues_Back_Case_for_LG_V30-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (216, N'Blue Symbols', N'LG', N'V30', 16, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Blue_Symbols_Back_Case_for_LG_V30-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (217, N'Army Uniform', N'LG', N'V30', 16, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Army_Uniform_Back_Case_for_LG_V30-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (218, N'Beauty Art Bloom', N'LG', N'V30', 16, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Beauty_Art_Bloom_Back_Case_for_LG_V30-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (219, N'Casette Design', N'LG', N'V30', 16, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Casette_Design_Back_Case_for_LG_V30-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (220, N'Love Food', N'LG', N'V30', 16, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Love_Food_Back_Case_for_LG_V30-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (221, N'Mother Earth', N'LG', N'V30', 16, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Mother_Earth_Back_Case_for_LG_V30-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (222, N'Red White', N'LG', N'V30', 16, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Red_White_Check_Back_Case_for_LG_V30-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (223, N'Moon And Sun', N'LG', N'V30', 16, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Moon_And_Sun_Back_Case_for_LG_V30-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (224, N'Tramp Train', N'LG', N'V30', 16, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache//data/Tramp_Train_Back_Case_for_LG_V30-600x600.jpg')
INSERT [dbo].[product] ([id], [name], [category], [type], [price], [description], [photoUrl]) VALUES (225, N'Pink Ribbon', N'LG', N'V30', 16, N'Very good and beatifull cover. everyone wants him.', N'https://static.coverscart.com/image/cache/data/Pink_Ribbon_Back_Case_for_LG_V30-600x600.jpg')
SET IDENTITY_INSERT [dbo].[product] OFF
GO
USE [master]
GO
ALTER DATABASE [PhoneCovers] SET  READ_WRITE 
GO
