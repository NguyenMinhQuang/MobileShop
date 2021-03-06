USE [master]
GO
/****** Object:  Database [OnlineShop]    Script Date: 06/19/2017 00:59:56 ******/
CREATE DATABASE [OnlineShop] ON  PRIMARY 
( NAME = N'OnlineShop', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\OnlineShop.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'OnlineShop_log', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\OnlineShop_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [OnlineShop] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OnlineShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OnlineShop] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [OnlineShop] SET ANSI_NULLS OFF
GO
ALTER DATABASE [OnlineShop] SET ANSI_PADDING OFF
GO
ALTER DATABASE [OnlineShop] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [OnlineShop] SET ARITHABORT OFF
GO
ALTER DATABASE [OnlineShop] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [OnlineShop] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [OnlineShop] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [OnlineShop] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [OnlineShop] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [OnlineShop] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [OnlineShop] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [OnlineShop] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [OnlineShop] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [OnlineShop] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [OnlineShop] SET  DISABLE_BROKER
GO
ALTER DATABASE [OnlineShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [OnlineShop] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [OnlineShop] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [OnlineShop] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [OnlineShop] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [OnlineShop] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [OnlineShop] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [OnlineShop] SET  READ_WRITE
GO
ALTER DATABASE [OnlineShop] SET RECOVERY SIMPLE
GO
ALTER DATABASE [OnlineShop] SET  MULTI_USER
GO
ALTER DATABASE [OnlineShop] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [OnlineShop] SET DB_CHAINING OFF
GO
USE [OnlineShop]
GO
/****** Object:  Table [dbo].[UserGroup]    Script Date: 06/19/2017 01:00:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserGroup](
	[ID] [varchar](20) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'ADMIN', N'Quản trị')
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'MEMBER', N'Thành viên')
INSERT [dbo].[UserGroup] ([ID], [Name]) VALUES (N'MOD', N'Moderator')
/****** Object:  Table [dbo].[User]    Script Date: 06/19/2017 01:00:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](32) NULL,
	[GroupID] [varchar](20) NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[ProvinceID] [int] NULL,
	[DistrictID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (5, N'admin', N'202cb962ac59075b964b07152d234b70', N'ADMIN', N'Nguyễn Hữu Thắng', N'add', N'nhthang010195@gmail.com', N'ádd', 0, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (6, N'admin1', N'202cb962ac59075b964b07152d234b70', N'MOD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (7, N'admin2', NULL, N'MEMBER', N'nguyen minh quang', N'hcm', N'quang@gmail.com', N'12345', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (8, N'admin3', N'202cb962ac59075b964b07152d234b70', N'MEMBER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (9, N'admin4', N'202cb962ac59075b964b07152d234b70', N'MEMBER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (10, N'admin5', N'202cb962ac59075b964b07152d234b70', N'MEMBER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (11, N'admin6', N'202cb962ac59075b964b07152d234b70', N'MEMBER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (12, N'admin7', N'202cb962ac59075b964b07152d234b70', N'MEMBER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (13, N'admin8', N'202cb962ac59075b964b07152d234b70', N'MEMBER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (14, N'admin9', N'202cb962ac59075b964b07152d234b70', N'MEMBER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (15, N'admin10', N'202cb962ac59075b964b07152d234b70', N'MEMBER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (20, N'nhthang010195@gmail.com', NULL, N'MEMBER', N'Thắng  Nguyễn', NULL, N'nhthang010195@gmail.com', NULL, NULL, NULL, CAST(0x0000A7890132E7E9 AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (26, N'admin13', N'202cb962ac59075b964b07152d234b70', N'MOD', N'dádd', N'adsd', N'áddd', N'dádd', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (28, N'guest1', N'9f2f3cce548908f0fc74cc0cb8965a2f', N'MEMBER', N'adsđ', N'dadf', N'abc@gmail.com', N'123456789', NULL, NULL, NULL, NULL, CAST(0x0000A796017A483C AS DateTime), NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (29, N'guest2', N'e10adc3949ba59abbe56e057f20f883e', N'MEMBER', N'adasdd', N'adsadad', N'asdadad', N'adada', NULL, NULL, CAST(0x0000A7950173B9A0 AS DateTime), NULL, NULL, NULL, 1)
INSERT [dbo].[User] ([ID], [UserName], [Password], [GroupID], [Name], [Address], [Email], [Phone], [ProvinceID], [DistrictID], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Status]) VALUES (30, N'guest3', N'9f2f3cce548908f0fc74cc0cb8965a2f', N'MEMBER', N'asdsd', N'dasdasd', N'asdadasd', N'asdd', 823, 82308, CAST(0x0000A79501756CAC AS DateTime), NULL, CAST(0x0000A79501843363 AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[User] OFF
/****** Object:  Table [dbo].[Tag]    Script Date: 06/19/2017 01:00:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tag](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Tag] ([ID], [Name]) VALUES (N'adad', N'adad')
/****** Object:  Table [dbo].[SystemConfig]    Script Date: 06/19/2017 01:00:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SystemConfig](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Value] [nvarchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_SystemConfig] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 06/19/2017 01:00:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Slide](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](50) NULL,
	[DisplayOrder] [int] NULL,
	[Link] [nvarchar](250) NULL,
	[Description] [nvarchar](50) NULL,
	[CreatedDay] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDay] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Slide] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Slide] ON
INSERT [dbo].[Slide] ([ID], [Image], [DisplayOrder], [Link], [Description], [CreatedDay], [CreatedBy], [ModifiedDay], [ModifiedBy], [Status]) VALUES (1, N'/assets/client/images/slide-1-image.png', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Slide] ([ID], [Image], [DisplayOrder], [Link], [Description], [CreatedDay], [CreatedBy], [ModifiedDay], [ModifiedBy], [Status]) VALUES (2, N'/assets/client/images/slide-2-image.jpg', 3, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Slide] ([ID], [Image], [DisplayOrder], [Link], [Description], [CreatedDay], [CreatedBy], [ModifiedDay], [ModifiedBy], [Status]) VALUES (3, N'/assets/client/images/slide-3-image.jpg', 2, NULL, NULL, NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Slide] OFF
/****** Object:  Table [dbo].[Role]    Script Date: 06/19/2017 01:00:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'ADD_CATEGORY', N'Thêm danh mục tin tức')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'ADD_NEWS', N'Thêm tin tức')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'ADD_PRODUCT', N'Thêm sản phẩm')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'ADD_PRODUCT_CATEGORY', N'Thêm danh mục sản phẩm')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'ADD_USER', N'Thêm user')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'DELETE_CATEGORY', N'Xóa danh mục tin tức')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'DELETE_NEWS', N'Xóa tin tức')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'DELETE_ORDER', N'Xóa đơn hàng')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'DELETE_PRODUCT', N'Xóa sản phẩm')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'DELETE_PRODUCT_CATEGORY', N'Xóa danh mục sản phẩm')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'DELETE_USER', N'Xóa user')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'EDIT_CATEGORY', N'Sửa danh mục tin tức')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'EDIT_NEWS', N'Sửa tin tức')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'EDIT_ORDER', N'Sửa đơn hàng')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'EDIT_PRODUCT', N'Sửa sản phẩm')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'EDIT_PRODUCT_CATEGORY', N'Sửa danh mục sản phẩm')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'EDIT_USER', N'Sửa user')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'VIEW_CATEGORY', N'Xem danh mục tin tức')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'VIEW_NEWS', N'Xem danh sách tin tức')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'VIEW_ORDER', N'Xem danh sách đơn hàng')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'VIEW_PRODUCT', N'Xem danh sách sản phẩm')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'VIEW_PRODUCT_CATEGORY', N'Xem danh sách danh mục sản phẩm')
INSERT [dbo].[Role] ([ID], [Name]) VALUES (N'VIEW_USER', N'Xem danh sách người dùng')
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 06/19/2017 01:00:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[ParentID] [bigint] NULL,
	[DisplayOrder] [int] NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[CreatedDay] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDay] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
	[ShowOnHome] [bit] NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] ON
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDay], [CreatedBy], [ModifiedDay], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (1, N'ĐIỆN THOẠI', N'dien-thoai', NULL, NULL, NULL, NULL, N'admin', NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDay], [CreatedBy], [ModifiedDay], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (2, N'TABLET', N'may-tinh-xach-tay', NULL, NULL, NULL, NULL, N'admin', NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDay], [CreatedBy], [ModifiedDay], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (3, N'LAPTOP', N'may-tinh-bang', NULL, NULL, NULL, NULL, N'admin', NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDay], [CreatedBy], [ModifiedDay], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (4, N'CAMERA', N'phu-kien', NULL, NULL, NULL, NULL, N'admin', NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDay], [CreatedBy], [ModifiedDay], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (5, N'ĐỒNG HỒ', N'dong-ho', NULL, NULL, NULL, NULL, N'admin', NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDay], [CreatedBy], [ModifiedDay], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (6, N'PHỤ KIỆN', N'phu-kien', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDay], [CreatedBy], [ModifiedDay], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (7, N'PIN SẠC DỰ PHÒNG', N'pin-sac-du-phong', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDay], [CreatedBy], [ModifiedDay], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (8, N'CÁP SẠC', N'cap-sac', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDay], [CreatedBy], [ModifiedDay], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (9, N'THẺ NHỚ', N'the-nho', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDay], [CreatedBy], [ModifiedDay], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (10, N'TAI NGHE', N'tai-nghe', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDay], [CreatedBy], [ModifiedDay], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (11, N'USB', N'usb', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDay], [CreatedBy], [ModifiedDay], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (12, N'CHUỘT', N'chuot', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDay], [CreatedBy], [ModifiedDay], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (13, N'LOA', N'loa', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDay], [CreatedBy], [ModifiedDay], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (14, N'ỐP LƯNG ĐIỆN THOẠI', N'op-lung-dien-thoai', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDay], [CreatedBy], [ModifiedDay], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (15, N'ỐP LƯNG MÁY TÍNH BẢNG', N'op-lung-may-tinh-bang', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDay], [CreatedBy], [ModifiedDay], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (16, N'GẬY TỰ SƯỚNG', N'gay-tu-suong', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDay], [CreatedBy], [ModifiedDay], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (17, N'MIẾNG DÁN MÀN HÌNH', N'mieng-dan-man-hinh', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDay], [CreatedBy], [ModifiedDay], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (18, N'TÚI CHỐNG NƯỚC', N'tui-chong-nuoc', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDay], [CreatedBy], [ModifiedDay], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (19, N'PIN', N'pin', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDay], [CreatedBy], [ModifiedDay], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (20, N'MÓC DÁN ĐIỆN THOẠI', N'moc-dan-dien-thoai', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDay], [CreatedBy], [ModifiedDay], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (21, N'PHẦN MỀM', N'phan-mem', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[ProductCategory] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDay], [CreatedBy], [ModifiedDay], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome]) VALUES (23, N'TIVI', N'TIVI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
/****** Object:  Table [dbo].[Product]    Script Date: 06/19/2017 01:00:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Code] [varchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](250) NULL,
	[MoreImages] [xml] NULL,
	[Price] [decimal](18, 0) NULL,
	[PromotionPrice] [decimal](18, 0) NULL,
	[IncludedVAT] [bit] NULL,
	[Quantity] [int] NULL,
	[CategoryID] [bigint] NULL,
	[Detail] [ntext] NULL,
	[Warranty] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NOT NULL,
	[TopHot] [datetime] NULL,
	[ViewCount] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (1, N'Tivi LG', N'A01', N'Tivi-LG', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.', N'/assets/client/images/feature-pic1.jpg', N'<Images><Image>/Data/images/Rengar_7.jpg</Image><Image>/Data/images/Rengar_7.jpg</Image></Images>', NULL, NULL, NULL, NULL, 23, NULL, NULL, CAST(0x0000A6EE00000000 AS DateTime), N'1', CAST(0x0000A79700067A9A AS DateTime), N'admin', NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (2, N'Máy ảnh Samsung', NULL, N'May-anh-Samsung', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.', N'/assets/client/images/feature-pic3.jpg', NULL, CAST(2000000 AS Decimal(18, 0)), NULL, NULL, NULL, 4, NULL, NULL, CAST(0x0000A6EE00000000 AS DateTime), NULL, CAST(0x0000A79700068B41 AS DateTime), N'admin', NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (3, N'Bộ loa Ariang', NULL, N'Bo-loa-Ariang', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.', N'/assets/client/images/feature-pic2.jpg', NULL, CAST(8000000 AS Decimal(18, 0)), NULL, NULL, NULL, 13, NULL, NULL, CAST(0x0000A6EE00000000 AS DateTime), NULL, CAST(0x0000A79700069F10 AS DateTime), N'admin', NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (4, N'Máy ảnh Sony', NULL, N'May-anh-Sony', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.', N'/assets/client/images/new-pic1.jpg', NULL, CAST(3000000 AS Decimal(18, 0)), NULL, NULL, NULL, 4, NULL, NULL, CAST(0x0000A6EE00000000 AS DateTime), NULL, CAST(0x0000A7970006B0D0 AS DateTime), N'admin', NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (5, N'Tivi Samsung', NULL, N'Tivi-Samsung', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.', N'/assets/client/images/feature-pic4.jpg', NULL, CAST(5000000 AS Decimal(18, 0)), NULL, NULL, NULL, 23, NULL, NULL, CAST(0x0000A6EE00000000 AS DateTime), NULL, CAST(0x0000A7970006EF3E AS DateTime), N'admin', NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (6, N'Bộ loa Panasonic', NULL, N'Bo-loa-Panasonic', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.', N'/assets/client/images/new-pic2.jpg', NULL, CAST(11500000 AS Decimal(18, 0)), NULL, NULL, NULL, 13, NULL, NULL, CAST(0x0000A6EE00000000 AS DateTime), NULL, CAST(0x0000A79700075DFE AS DateTime), N'admin', NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (7, N'Bộ loa Sony', NULL, N'Bo-loa-Sony', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.', N'/assets/client/images/new-pic3.jpg', NULL, NULL, NULL, NULL, NULL, 13, NULL, NULL, CAST(0x0000A6EE00000000 AS DateTime), NULL, CAST(0x0000A7970006D3D7 AS DateTime), N'admin', NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (14, N'IPAD Wifi Cellular', NULL, N'IPAD-Wifi-Cellular', NULL, N'/Data/images/ipad-wifi-cellular-128gb-2017-300-300x300.jpg', NULL, CAST(12000000 AS Decimal(18, 0)), CAST(15000000 AS Decimal(18, 0)), 1, 100, 2, NULL, 12, CAST(0x0000A78E018190B0 AS DateTime), NULL, CAST(0x0000A79300FA8A2A AS DateTime), N'admin', NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (15, N'MacBook Air', NULL, N'MacBook-Air', N'dadsd', N'/Data/images/apple-macbook-air-2015-mmgf2zp-a-i5-5250u-8gb-128g-400x400-300x300.png', NULL, CAST(4500000 AS Decimal(18, 0)), CAST(6000000 AS Decimal(18, 0)), NULL, 12, 1, NULL, 12, CAST(0x0000A78F00C59DD8 AS DateTime), NULL, CAST(0x0000A79300F9EB44 AS DateTime), N'admin', N'asds', N'adsd                                                                                                                                                                                                                                                      ', 1, NULL, 1)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (28, N'MacBook 12', NULL, N'MacBook-12', N'aád', N'/Data/images/apple-macbook-12-mlh72-core-m-11g-8gb-256gb-macos-300-300x300.jpg', NULL, CAST(30000000 AS Decimal(18, 0)), NULL, NULL, 100, 3, NULL, 12, CAST(0x0000A79300F910E8 AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (29, N'MacBook 12', NULL, N'MacBook-12', N'adsd', N'/Data/images/apple-macbook-12-mmgm2-core-m-12g-8gb-512gb-macos-300x300.jpg', N'<Images><Image>/Data/images/apple-macbook-12-mlhe2-core-m-11g-8gb-256gb-macosx-1-400x400-300x300.png</Image><Image>/Data/images/apple-macbook-12-mlhf2-core-m-12g-8gb-512gb-macos-300x300.png</Image><Image>/Data/images/apple-macbook-12-mmgl2-core-m-11g-8gb-256gb-macos-400-300x300.png</Image></Images>', CAST(30000000 AS Decimal(18, 0)), NULL, NULL, 100, 1, NULL, 12, CAST(0x0000A79300F97912 AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (30, N'MacBook Pro', NULL, N'MacBook-Pro', N'dsadad', N'/Data/images/apple-macbook-pro-15-mlh32sa-300x300.jpg', N'<Images><Image>/Data/images/apple-macbook-12-mlh82-400-300x300.png</Image></Images>', CAST(45000000 AS Decimal(18, 0)), NULL, NULL, 40, 3, NULL, 12, CAST(0x0000A79300FE88FA AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, CAST(0x0000A7A200000000 AS DateTime), 41)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (31, N'Apple Watch', NULL, N'Apple-Watch', N'ádđ', N'/Data/images/apple-watch-s2-38mm-midnight-mq132vn-300-300x300.jpg', N'<Images />', CAST(5000000 AS Decimal(18, 0)), NULL, NULL, 100, 5, NULL, 12, CAST(0x0000A7930100C9C2 AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, CAST(0x0000A7A200000000 AS DateTime), 3)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (32, N'Loa WhiteShark', NULL, N'Loa-WhiteShark', N'dsadasda', N'/Data/images/productslide-1.jpg', N'<Images><Image>/Data/images/productslide-2.jpg</Image><Image>/Data/images/productslide-3.jpg</Image></Images>', CAST(500000 AS Decimal(18, 0)), NULL, NULL, 12, 13, NULL, 12, CAST(0x0000A79700035172 AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, CAST(0x0000A7A200000000 AS DateTime), 1)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (33, N'Cáp sạc Blue', NULL, N'Cap-sac-Blue', N'đasad', N'/Data/images/cap-lightning-20cm-evalu-ltl-02-1-1-300x300.jpg', NULL, CAST(60000 AS Decimal(18, 0)), NULL, NULL, 12, 8, NULL, 12, CAST(0x0000A7970005FA78 AS DateTime), NULL, CAST(0x0000A7970006198E AS DateTime), N'admin', NULL, N'dấd                                                                                                                                                                                                                                                       ', 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (34, N'Pink Watch', NULL, N'Pink-Watch', N'dssđsd', N'/Data/images/apple-watch-series-2-42mm-pink-mq142vn-300-300x300.jpg', NULL, CAST(5000000 AS Decimal(18, 0)), NULL, NULL, 12, 5, NULL, 12, CAST(0x0000A797000B6FBD AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (35, N'Chuột Lack', NULL, N'Chuot-Lack', N'đdad', N'/Data/images/chuot-day-cliptec-speed-logic-rzs966-300x300.jpg', NULL, CAST(120000 AS Decimal(18, 0)), NULL, NULL, 20, 12, NULL, 12, CAST(0x0000A797000CE6B7 AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (36, N'Ốp lưng ỊPhone', NULL, N'Op-lung-IPhone', N'đdấdasd', N'/Data/images/op-lung-mtb-mobell-tab-8-inch-nap-gap-zenus-do-300x300.jpg', NULL, CAST(50000 AS Decimal(18, 0)), NULL, NULL, 10, 14, NULL, 12, CAST(0x0000A797000DFBF4 AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
INSERT [dbo].[Product] ([ID], [Name], [Code], [MetaTitle], [Description], [Image], [MoreImages], [Price], [PromotionPrice], [IncludedVAT], [Quantity], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount]) VALUES (37, N'Tai Nghe Blue', NULL, N'Tai-Nghe-Blue', N'dsadasd', N'/Data/images/tai-nghe-ep-kanen-ip-219-aqua-xam-avatar-300x300.jpg', N'<Images><Image>/Data/images/apple-macbook-12-mlh82-400-300x300.png</Image></Images>', CAST(150000 AS Decimal(18, 0)), NULL, NULL, 12, 10, NULL, 12, CAST(0x0000A797000FFF63 AS DateTime), NULL, NULL, NULL, NULL, NULL, 1, NULL, 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 06/19/2017 01:00:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ProductID] [bigint] NOT NULL,
	[OrderID] [bigint] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (3, 23, 2, CAST(8000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (4, 3, NULL, CAST(3000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (4, 4, NULL, CAST(3000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (4, 5, NULL, CAST(3000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (4, 7, NULL, CAST(3000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (4, 8, NULL, CAST(3000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (4, 16, 1, CAST(3000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (4, 17, 1, CAST(3000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (4, 19, 1, CAST(3000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (4, 20, 1, CAST(3000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (4, 21, 1, CAST(3000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (4, 22, 1, CAST(3000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (4, 23, 1, CAST(3000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (4, 24, 1, CAST(3000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (4, 25, 2, CAST(3000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (4, 26, 1, CAST(3000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (4, 27, 1, CAST(3000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 1, NULL, CAST(5000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 2, NULL, CAST(5000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 6, NULL, CAST(5000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 9, NULL, CAST(5000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 10, NULL, CAST(5000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 11, 1, CAST(5000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 12, 1, CAST(5000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 13, 1, CAST(5000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 14, 1, CAST(5000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 15, 1, CAST(5000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (5, 18, 1, CAST(5000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (29, 30, 2, CAST(30000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (30, 28, 2, CAST(45000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (30, 29, 2, CAST(45000000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (30, 30, 1, CAST(45000000 AS Decimal(18, 0)))
/****** Object:  Table [dbo].[Order]    Script Date: 06/19/2017 01:00:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CustomerID] [bigint] NULL,
	[ShipName] [nvarchar](50) NULL,
	[ShipMobile] [varchar](50) NULL,
	[ShipAddress] [nvarchar](50) NULL,
	[ShipEmail] [varchar](50) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (3, CAST(0x0000A7870108BEA7 AS DateTime), NULL, N'ad', N'ad', N'ad', N'ad', 0)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (4, CAST(0x0000A787010934EA AS DateTime), NULL, N'ad', N'ad', N'ad', N'ad', 0)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (5, CAST(0x0000A78701096286 AS DateTime), NULL, N'nht', N'01693087817', N'hcm', N'nhthang010195@gmail.com', 1)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (6, CAST(0x0000A7870131BDF9 AS DateTime), NULL, N'asd', N'asd', N'asd', N'', 1)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (7, CAST(0x0000A78800CFF385 AS DateTime), NULL, N'nht', N'123', N'asd', N'winlathang01011995@gmail.com', 1)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (8, CAST(0x0000A78800D01C13 AS DateTime), NULL, N'nht', N'123', N'asd', N'winlathang01011995@gmail.com', 1)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (9, CAST(0x0000A78800D2DB5F AS DateTime), NULL, N'ad', N'asd', N'ads', N'winlathang01011995@gmail.com', 1)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (10, CAST(0x0000A78800D36B4A AS DateTime), NULL, N'ad', N'asd', N'ads', N'nhthang010195@gmail.com', 1)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (12, CAST(0x0000A78800D5382A AS DateTime), NULL, N'asd', N'ads', N'adsd', N'nhthang010195@gmail.com', 1)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (13, CAST(0x0000A78800D660D6 AS DateTime), NULL, N'asd', N'ads', N'adsd', N'', 0)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (14, CAST(0x0000A78800D752EE AS DateTime), NULL, N'ads', N'asd', N'ads', N'nhthang010195@gmail.com', 1)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (15, CAST(0x0000A78800D7C7D1 AS DateTime), NULL, N'ads', N'asd', N'ads', N'winlathang01011995@gmail.com', 1)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (16, CAST(0x0000A78800D838B4 AS DateTime), NULL, N'ad', N'ad', N'adsd', N'winlathang01011995@gmail.com', 1)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (17, CAST(0x0000A78800D84293 AS DateTime), NULL, N'ad', N'ad', N'adsd', N'nhthang010195@gmail.com', 1)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (18, CAST(0x0000A78800D95D65 AS DateTime), NULL, N'ads', N'ad', N'adsd', N'nhthang010195@gmail.com', 1)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (19, CAST(0x0000A78800DBB2F0 AS DateTime), NULL, N'ads', N'dasd', N'adsd', N'nhthang010195@gmail.com', 1)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (20, CAST(0x0000A78800DD2102 AS DateTime), NULL, N'das', N'dasd', N'dasd', N'winlathang01011995@gmail.com', 1)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (21, CAST(0x0000A78800DD3F63 AS DateTime), NULL, N'das', N'dasd', N'dasd', N'nhthang010195@gmail.com', 1)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (22, CAST(0x0000A78800DDE678 AS DateTime), NULL, N'asd', N'dasd', N'dasd', N'winlathang01011995@gmail.com', 1)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (23, CAST(0x0000A78800E0277A AS DateTime), NULL, N'dsd', N'adsd', N'dasd', N'winlathang01011995@gmail.com', 1)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (24, CAST(0x0000A78800EA9D3F AS DateTime), NULL, N'ad', N'ads', N'ads', N'winlathang01011995@gmail.com', 1)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (25, CAST(0x0000A78E0158FDCE AS DateTime), 5, N'dad', N'add', N'add', N'add@gmail.com', 1)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (28, CAST(0x0000A79301003A49 AS DateTime), NULL, N'adsd', N'dádd', N'đá', N'da@gmail.com', 0)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (29, CAST(0x0000A79301006948 AS DateTime), NULL, N'adsd', N'123', N'đá', N'ada@gmail.com', 0)
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipMobile], [ShipAddress], [ShipEmail], [Status]) VALUES (30, CAST(0x0000A796017AABF3 AS DateTime), NULL, N'asddsd', N'asdada', N'dasdasd', N'dasda@gmail.com', 0)
SET IDENTITY_INSERT [dbo].[Order] OFF
/****** Object:  Table [dbo].[MenuType]    Script Date: 06/19/2017 01:00:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_MenuType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MenuType] ON
INSERT [dbo].[MenuType] ([ID], [Name]) VALUES (1, N'Menu chính')
INSERT [dbo].[MenuType] ([ID], [Name]) VALUES (2, N'Menu top')
SET IDENTITY_INSERT [dbo].[MenuType] OFF
/****** Object:  Table [dbo].[Menu]    Script Date: 06/19/2017 01:00:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](50) NULL,
	[Link] [nvarchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[Target] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[TypeID] [int] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Menu] ON
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (1, N'TRANG CHỦ', N'/', 1, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (2, N'GIỚI THIỆU', N'/gioi-thieu', 3, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (3, N'TIN TỨC', N'/tin-tuc', 5, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (4, N'SẢN PHẨM', N'/san-pham', 2, N'_self', 0, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (5, N'LIÊN HỆ', N'/lien-he', 6, N'_self', 1, 1)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (6, N'Đăng nhập', N'/dang-nhap', 1, N'_self', 1, 2)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (7, N'Đăng ký', N'/dang-ky', 2, N'_self', 1, 2)
INSERT [dbo].[Menu] ([ID], [Text], [Link], [DisplayOrder], [Target], [Status], [TypeID]) VALUES (8, N'VẬN CHUYỂN', N'/van-chuyen', 4, N'_self', 1, 1)
SET IDENTITY_INSERT [dbo].[Menu] OFF
/****** Object:  Table [dbo].[Language]    Script Date: 06/19/2017 01:00:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Language](
	[ID] [varchar](2) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Language] ([ID], [Name], [IsDefault]) VALUES (N'en', N'Tiếng Anh', 0)
INSERT [dbo].[Language] ([ID], [Name], [IsDefault]) VALUES (N'vi', N'Tiếng Việt', 1)
/****** Object:  Table [dbo].[Footer]    Script Date: 06/19/2017 01:00:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Footer](
	[ID] [varchar](50) NOT NULL,
	[Content] [ntext] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Footer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Footer] ([ID], [Content], [Status]) VALUES (N'footer', N'<div class="wrap">
            <div class="section group">
                <div class="col_1_of_4 span_1_of_4">
                    <h4>Information</h4>
                    <ul>
                        <li><a href="about.html">About Us</a></li>
                        <li><a href="contact.html">Customer Service</a></li>
                        <li><a href="#">Advanced Search</a></li>
                        <li><a href="delivery.html">Orders and Returns</a></li>
                        <li><a href="contact.html">Contact Us</a></li>
                    </ul>
                </div>
                <div class="col_1_of_4 span_1_of_4">
                    <h4>Why buy from us</h4>
                    <ul>
                        <li><a href="about.html">About Us</a></li>
                        <li><a href="contact.html">Customer Service</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="contact.html">Site Map</a></li>
                        <li><a href="#">Search Terms</a></li>
                    </ul>
                </div>
                <div class="col_1_of_4 span_1_of_4">
                    <h4>My account</h4>
                    <ul>
                        <li><a href="contact.html">Sign In</a></li>
                        <li><a href="index.html">View Cart</a></li>
                        <li><a href="#">My Wishlist</a></li>
                        <li><a href="#">Track My Order</a></li>
                        <li><a href="contact.html">Help</a></li>
                    </ul>
                </div>
                <div class="col_1_of_4 span_1_of_4">
                    <h4>Contact</h4>
                    <ul>
                        <li><span>+91-123-456789</span></li>
                        <li><span>+00-123-000000</span></li>
                    </ul>
                    <div class="social-icons">
                        <h4>Follow Us</h4>
                        <ul>
                            <li><a href="#" target="_blank"><img src="/assets/client/images/facebook.png" alt="" /></a></li>
                            <li><a href="#" target="_blank"><img src="/assets/client/images/twitter.png" alt="" /></a></li>
                            <li><a href="#" target="_blank"><img src="/assets/client/images/skype.png" alt="" /> </a></li>
                            <li><a href="#" target="_blank"> <img src="/assets/client/images/dribbble.png" alt="" /></a></li>
                            <li><a href="#" target="_blank"> <img src="/assets/client/images/linkedin.png" alt="" /></a></li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copy_right">
            <p>Company Name © All rights Reseverd | Design by  <a href="http://w3layouts.com">YOU-KNOW-WHO</a> </p>
        </div>', 1)
/****** Object:  Table [dbo].[Feedback]    Script Date: 06/19/2017 01:00:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Content] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON
INSERT [dbo].[Feedback] ([ID], [Name], [Phone], [Email], [Address], [Content], [CreatedDate], [Status]) VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Feedback] ([ID], [Name], [Phone], [Email], [Address], [Content], [CreatedDate], [Status]) VALUES (2, N'', N'', N'', N'', N'', CAST(0x0000A787013E32C3 AS DateTime), NULL)
INSERT [dbo].[Feedback] ([ID], [Name], [Phone], [Email], [Address], [Content], [CreatedDate], [Status]) VALUES (3, N'đâsđ', N'dấdas', N'ádadad', N'dấdad', N'
             adsadad     ad  sadadadddd    ', CAST(0x0000A79601805A36 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Feedback] OFF
/****** Object:  Table [dbo].[Credential]    Script Date: 06/19/2017 01:00:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Credential](
	[UserGroupID] [varchar](20) NOT NULL,
	[RoleID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Credential_1] PRIMARY KEY CLUSTERED 
(
	[UserGroupID] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'ADMIN', N'ADD_CATEGORY')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'ADMIN', N'ADD_NEWS')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'ADMIN', N'ADD_PRODUCT')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'ADMIN', N'ADD_PRODUCT_CATEGORY')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'ADMIN', N'ADD_USER')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'ADMIN', N'DELETE_CATEGORY')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'ADMIN', N'DELETE_NEWS')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'ADMIN', N'DELETE_ORDER')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'ADMIN', N'DELETE_PRODUCT')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'ADMIN', N'DELETE_PRODUCT_CATEGORY')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'ADMIN', N'DELETE_USER')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'ADMIN', N'EDIT_CATEGORY')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'ADMIN', N'EDIT_NEWS')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'ADMIN', N'EDIT_ORDER')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'ADMIN', N'EDIT_PRODUCT')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'ADMIN', N'EDIT_PRODUCT_CATEGORY')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'ADMIN', N'EDIT_USER')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'ADMIN', N'VIEW_CATEGORY')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'ADMIN', N'VIEW_NEWS')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'ADMIN', N'VIEW_ORDER')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'ADMIN', N'VIEW_PRODUCT')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'ADMIN', N'VIEW_PRODUCT_CATEGORY')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'ADMIN', N'VIEW_USER')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'MOD', N'ADD_NEWS')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'MOD', N'ADD_USER')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'MOD', N'VIEW_NEWS')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'MOD', N'VIEW_ORDER')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'MOD', N'VIEW_PRODUCT')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'MOD', N'VIEW_PRODUCT_CATEGORY')
INSERT [dbo].[Credential] ([UserGroupID], [RoleID]) VALUES (N'MOD', N'VIEW_USER')
/****** Object:  Table [dbo].[ContentTag]    Script Date: 06/19/2017 01:00:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ContentTag](
	[ContentID] [bigint] NOT NULL,
	[TagID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ContentTag] PRIMARY KEY CLUSTERED 
(
	[ContentID] ASC,
	[TagID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ContentTag] ([ContentID], [TagID]) VALUES (5, N'adad')
/****** Object:  Table [dbo].[Content]    Script Date: 06/19/2017 01:00:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Content](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](250) NULL,
	[CategoryID] [bigint] NULL,
	[Detail] [ntext] NULL,
	[Warranty] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NOT NULL,
	[TopHot] [datetime] NULL,
	[ViewCount] [int] NULL,
	[Tags] [nvarchar](500) NULL,
	[Language] [varchar](2) NULL,
 CONSTRAINT [PK_Content] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Content] ON
INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Description], [Image], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount], [Tags], [Language]) VALUES (1, N'ngày đẹp quá', N'ngay-dep-qua', NULL, NULL, 1, NULL, NULL, CAST(0x0000A78B0146BA07 AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, N'vi')
INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Description], [Image], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount], [Tags], [Language]) VALUES (2, N'Ngày xấu quá', N'Ngay-xau-qua', NULL, NULL, 1, NULL, NULL, CAST(0x0000A78B014D6DB6 AS DateTime), N'admin', NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, N'vi')
INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Description], [Image], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount], [Tags], [Language]) VALUES (3, N'add', N'add', N'đa', NULL, 1, NULL, NULL, CAST(0x0000A790018577D8 AS DateTime), N'admin', NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, N'vi')
INSERT [dbo].[Content] ([ID], [Name], [MetaTitle], [Description], [Image], [CategoryID], [Detail], [Warranty], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [TopHot], [ViewCount], [Tags], [Language]) VALUES (5, N'add', N'adsd', N'dasd', N'/Data/images/apple-macbook-12-mlh72-core-m-11g-8gb-256gb-macos-300-300x300.jpg', 1, NULL, 12, CAST(0x0000A79300E882E1 AS DateTime), N'admin', NULL, NULL, N'add', N'asdd                                                                                                                                                                                                                                                      ', 1, NULL, 0, N'adad', N'vi')
SET IDENTITY_INSERT [dbo].[Content] OFF
/****** Object:  Table [dbo].[Contact]    Script Date: 06/19/2017 01:00:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Content] [ntext] NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Contact] ON
INSERT [dbo].[Contact] ([ID], [Content], [Status]) VALUES (1, N'<p>Công ty CP OnlineShop</p><p>Ð?a ch?: 338/19A, An Duong Vuong, p.9, q.5, tp.HCM</p><p>Ði?n tho?i: 01693087817</p>', 1)
SET IDENTITY_INSERT [dbo].[Contact] OFF
/****** Object:  Table [dbo].[Comment]    Script Date: 06/19/2017 01:00:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comment](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductID] [bigint] NOT NULL,
	[UserID] [bigint] NOT NULL,
	[UserName] [varchar](50) NULL,
	[NoiDung] [nvarchar](2048) NOT NULL,
	[Status] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Comment] ON
INSERT [dbo].[Comment] ([ID], [ProductID], [UserID], [UserName], [NoiDung], [Status], [CreatedDate]) VALUES (1, 30, 5, N'admin', N'ádsđ', 1, CAST(0x0000A794000DE069 AS DateTime))
INSERT [dbo].[Comment] ([ID], [ProductID], [UserID], [UserName], [NoiDung], [Status], [CreatedDate]) VALUES (2, 30, 5, N'admin', N'adsd', 1, CAST(0x0000A794000DE069 AS DateTime))
INSERT [dbo].[Comment] ([ID], [ProductID], [UserID], [UserName], [NoiDung], [Status], [CreatedDate]) VALUES (3, 30, 5, N'admin', N'ádsdd', 1, CAST(0x0000A7940018BB6B AS DateTime))
INSERT [dbo].[Comment] ([ID], [ProductID], [UserID], [UserName], [NoiDung], [Status], [CreatedDate]) VALUES (4, 30, 5, N'admin', N'ádsd', 1, CAST(0x0000A794001A9EAC AS DateTime))
INSERT [dbo].[Comment] ([ID], [ProductID], [UserID], [UserName], [NoiDung], [Status], [CreatedDate]) VALUES (5, 30, 0, N'nhthang010195@gmail.com', N'ádđ', 1, CAST(0x0000A794001F8FFD AS DateTime))
INSERT [dbo].[Comment] ([ID], [ProductID], [UserID], [UserName], [NoiDung], [Status], [CreatedDate]) VALUES (6, 30, 0, N'nhthang010195@gmail.com', N'ádđ', 1, CAST(0x0000A794001F96DF AS DateTime))
INSERT [dbo].[Comment] ([ID], [ProductID], [UserID], [UserName], [NoiDung], [Status], [CreatedDate]) VALUES (7, 30, 0, N'nhthang010195@gmail.com', N'ádd', 1, CAST(0x0000A794001F9B07 AS DateTime))
INSERT [dbo].[Comment] ([ID], [ProductID], [UserID], [UserName], [NoiDung], [Status], [CreatedDate]) VALUES (8, 30, 0, N'nhthang010195@gmail.com', N'asdsd', 1, CAST(0x0000A794001FA0C2 AS DateTime))
INSERT [dbo].[Comment] ([ID], [ProductID], [UserID], [UserName], [NoiDung], [Status], [CreatedDate]) VALUES (9, 31, 5, N'admin', N'xấu quá', 1, CAST(0x0000A79400CD766A AS DateTime))
INSERT [dbo].[Comment] ([ID], [ProductID], [UserID], [UserName], [NoiDung], [Status], [CreatedDate]) VALUES (10, 30, 6, N'admin1', N'adsdsd', 1, CAST(0x0000A795015CE28F AS DateTime))
SET IDENTITY_INSERT [dbo].[Comment] OFF
/****** Object:  Table [dbo].[Category]    Script Date: 06/19/2017 01:00:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[ParentID] [bigint] NULL,
	[DisplayOrder] [int] NULL,
	[SeoTitle] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
	[ShowOnHome] [bit] NULL,
	[Language] [varchar](2) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON
INSERT [dbo].[Category] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome], [Language]) VALUES (1, N'Tin tức trong nước', N'tin-tuc-trong-nuoc', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Category] ([ID], [Name], [MetaTitle], [ParentID], [DisplayOrder], [SeoTitle], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [MetaKeywords], [MetaDescriptions], [Status], [ShowOnHome], [Language]) VALUES (2, N'Tin tức thế giới', N'tin-tuc-the-gioi', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Category] OFF
/****** Object:  Table [dbo].[About]    Script Date: 06/19/2017 01:00:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[About](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](500) NULL,
	[Image] [nvarchar](250) NULL,
	[Detail] [ntext] NULL,
	[CreatedDay] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDay] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescriptions] [nchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_User_GroupID]    Script Date: 06/19/2017 01:00:00 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_GroupID]  DEFAULT ('MEMBER') FOR [GroupID]
GO
/****** Object:  Default [DF_User_CreatedDay]    Script Date: 06/19/2017 01:00:00 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_CreatedDay]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_User_Status]    Script Date: 06/19/2017 01:00:00 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_ProductCategory_Status]    Script Date: 06/19/2017 01:00:00 ******/
ALTER TABLE [dbo].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_Product_MoreImages]    Script Date: 06/19/2017 01:00:00 ******/
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_MoreImages]  DEFAULT ('<Images><Image>/Data/images/apple-macbook-12-mlh82-400-300x300.png</Image></Images>') FOR [MoreImages]
GO
/****** Object:  Default [DF_Product_CreatedDay]    Script Date: 06/19/2017 01:00:00 ******/
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_CreatedDay]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_Product_Status]    Script Date: 06/19/2017 01:00:00 ******/
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_Product_ViewCount]    Script Date: 06/19/2017 01:00:00 ******/
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_ViewCount]  DEFAULT ((0)) FOR [ViewCount]
GO
/****** Object:  Default [DF_OrderDetail_Quantity]    Script Date: 06/19/2017 01:00:00 ******/
ALTER TABLE [dbo].[OrderDetail] ADD  CONSTRAINT [DF_OrderDetail_Quantity]  DEFAULT ((1)) FOR [Quantity]
GO
/****** Object:  Default [DF_Order_Status]    Script Date: 06/19/2017 01:00:00 ******/
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_Menu_Status]    Script Date: 06/19/2017 01:00:00 ******/
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_Language_ID]    Script Date: 06/19/2017 01:00:00 ******/
ALTER TABLE [dbo].[Language] ADD  CONSTRAINT [DF_Language_ID]  DEFAULT ((0)) FOR [ID]
GO
/****** Object:  Default [DF_Footer_Status]    Script Date: 06/19/2017 01:00:00 ******/
ALTER TABLE [dbo].[Footer] ADD  CONSTRAINT [DF_Footer_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_Feedback_Status]    Script Date: 06/19/2017 01:00:00 ******/
ALTER TABLE [dbo].[Feedback] ADD  CONSTRAINT [DF_Feedback_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_Content_Status]    Script Date: 06/19/2017 01:00:00 ******/
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_Content_ViewCount]    Script Date: 06/19/2017 01:00:00 ******/
ALTER TABLE [dbo].[Content] ADD  CONSTRAINT [DF_Content_ViewCount]  DEFAULT ((0)) FOR [ViewCount]
GO
/****** Object:  Default [DF_Contact_Status]    Script Date: 06/19/2017 01:00:00 ******/
ALTER TABLE [dbo].[Contact] ADD  CONSTRAINT [DF_Contact_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_Comment_Status]    Script Date: 06/19/2017 01:00:00 ******/
ALTER TABLE [dbo].[Comment] ADD  CONSTRAINT [DF_Comment_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_Comment_CreatedDate]    Script Date: 06/19/2017 01:00:00 ******/
ALTER TABLE [dbo].[Comment] ADD  CONSTRAINT [DF_Comment_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  Default [DF_Category_Status]    Script Date: 06/19/2017 01:00:00 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_About_Status]    Script Date: 06/19/2017 01:00:00 ******/
ALTER TABLE [dbo].[About] ADD  CONSTRAINT [DF_About_Status]  DEFAULT ((1)) FOR [Status]
GO
