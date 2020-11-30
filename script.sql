USE [master]
GO
/****** Object:  Database [ShopBanHang]    Script Date: 12/1/2020 5:32:38 AM ******/
CREATE DATABASE [ShopBanHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NES', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ShopBanHang_NES_84030428f7044fa59c42fcbdd4cc1be1.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'NES_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ShopBanHang_NES_log_2a0fdd28ffdc46fcb34764394a27482a.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ShopBanHang] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopBanHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopBanHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopBanHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopBanHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopBanHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopBanHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopBanHang] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShopBanHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopBanHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopBanHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopBanHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopBanHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopBanHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopBanHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopBanHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopBanHang] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShopBanHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopBanHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopBanHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopBanHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopBanHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopBanHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShopBanHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopBanHang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShopBanHang] SET  MULTI_USER 
GO
ALTER DATABASE [ShopBanHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopBanHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopBanHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopBanHang] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ShopBanHang] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ShopBanHang]
GO
/****** Object:  User [newlux_sa]    Script Date: 12/1/2020 5:32:38 AM ******/
CREATE USER [newlux_sa] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[newlux_sa]
GO
ALTER ROLE [db_owner] ADD MEMBER [newlux_sa]
GO
/****** Object:  Schema [newlux_sa]    Script Date: 12/1/2020 5:32:38 AM ******/
CREATE SCHEMA [newlux_sa]
GO
/****** Object:  Table [dbo].[Abouts]    Script Date: 12/1/2020 5:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Abouts](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[MetaTitle] [varchar](250) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[ContentHtml] [ntext] NULL,
	[Images] [nvarchar](250) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescription] [nvarchar](250) NULL,
	[Status] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](10) NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](10) NULL,
 CONSTRAINT [PK_Abouts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Albums]    Script Date: 12/1/2020 5:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Albums](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[MetaTitle] [varchar](250) NOT NULL,
	[Images] [nvarchar](250) NULL,
	[Description] [nvarchar](250) NULL,
	[Order] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](20) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescription] [nvarchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Albums] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 12/1/2020 5:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Brands](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Logo] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Order] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 12/1/2020 5:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[MetaTitle] [varchar](250) NOT NULL,
	[Images] [nvarchar](250) NULL,
	[Description] [nvarchar](250) NULL,
	[Order] [int] NULL,
	[ParentID] [bigint] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescription] [nvarchar](250) NULL,
	[Status] [bit] NULL,
	[IsIntroduced] [bit] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChildCategories]    Script Date: 12/1/2020 5:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChildCategories](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Images] [nvarchar](250) NULL,
	[ShortDesc] [nvarchar](250) NULL,
	[Description] [ntext] NULL,
	[Order] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescription] [nvarchar](250) NULL,
	[Status] [bit] NULL,
	[ParentID] [bigint] NOT NULL,
 CONSTRAINT [PK_ChildCategories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 12/1/2020 5:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contacts](
	[ID] [varchar](50) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[ContentHtml] [ntext] NULL,
	[Status] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Feedbacks]    Script Date: 12/1/2020 5:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Feedbacks](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Company] [nvarchar](100) NULL,
	[Address] [nvarchar](150) NULL,
	[Phone] [varchar](50) NULL,
	[Email] [varchar](50) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Message] [nvarchar](500) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[IsReaded] [bit] NOT NULL,
 CONSTRAINT [PK_Feedbacks] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Footers]    Script Date: 12/1/2020 5:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Footers](
	[ID] [varchar](50) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[ContentHtml] [ntext] NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Footers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GroupSlides]    Script Date: 12/1/2020 5:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GroupSlides](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](20) NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[IsActived] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_GroupSlides] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 12/1/2020 5:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Menus](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[Text] [nvarchar](250) NOT NULL,
	[Link] [nvarchar](250) NOT NULL,
	[Target] [varchar](10) NOT NULL,
	[Order] [int] NOT NULL,
	[CssClass] [varchar](50) NULL,
	[IsLocked] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[GroupID] [varchar](50) NOT NULL,
	[ParentID] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](20) NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MenuTypes]    Script Date: 12/1/2020 5:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MenuTypes](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[IsActived] [bit] NOT NULL CONSTRAINT [DF_MenuTypes_IsActived]  DEFAULT ((1)),
	[IsDeleted] [bit] NOT NULL CONSTRAINT [DF_MenuTypes_IsDeleted]  DEFAULT ((0)),
 CONSTRAINT [PK_MenuTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Newses]    Script Date: 12/1/2020 5:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Newses](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[ContentHtml] [ntext] NULL,
	[Images] [nvarchar](250) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescription] [nvarchar](250) NULL,
	[Status] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
	[PublishedDate] [datetime] NULL,
	[RelatedNewes] [varchar](50) NULL,
	[CategoryID] [bigint] NOT NULL,
	[ViewCount] [int] NULL,
	[Source] [nvarchar](50) NULL,
	[UpTopNew] [datetime] NULL,
	[UpTopHot] [datetime] NULL,
 CONSTRAINT [PK_Newses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NewsTags]    Script Date: 12/1/2020 5:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NewsTags](
	[NewsID] [bigint] NOT NULL,
	[TagID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_NewsTags] PRIMARY KEY CLUSTERED 
(
	[NewsID] ASC,
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Permissions]    Script Date: 12/1/2020 5:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Permissions](
	[GroupID] [varchar](20) NOT NULL,
	[RoleID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Permissions_1] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Photos]    Script Date: 12/1/2020 5:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Photos](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Images] [nvarchar](250) NULL,
	[AlbumID] [bigint] NOT NULL,
	[Description] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Photos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductCategories]    Script Date: 12/1/2020 5:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductCategories](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[MetaTitle] [varchar](250) NULL,
	[Images] [nvarchar](250) NULL,
	[NavImages] [nvarchar](250) NULL,
	[BannerImages] [nvarchar](250) NULL,
	[Description] [nvarchar](250) NULL,
	[Order] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescription] [nvarchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_ProductCategories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12/1/2020 5:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Code] [varchar](50) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[Images] [nvarchar](250) NULL CONSTRAINT [DF_Products_Images]  DEFAULT (N'<Images></Images>'),
	[Images2nd] [nvarchar](250) NULL,
	[Images3rd] [nvarchar](250) NULL,
	[Price] [decimal](18, 0) NULL,
	[OldPrice] [decimal](18, 0) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescription] [nvarchar](250) NULL,
	[Quantity] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](10) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](10) NULL,
	[CategoryID] [bigint] NOT NULL,
	[ViewCount] [int] NULL,
	[BrandID] [int] NOT NULL,
	[UpTopNew] [datetime] NULL,
	[UpTopHot] [datetime] NULL,
	[Detail] [ntext] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 12/1/2020 5:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](20) NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[IsActived] [bit] NOT NULL CONSTRAINT [DF_Roles_IsActived]  DEFAULT ((1)),
	[IsDeleted] [bit] NOT NULL CONSTRAINT [DF_Roles_IsDeleted]  DEFAULT ((0)),
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Slides]    Script Date: 12/1/2020 5:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Slides](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[Link] [nvarchar](250) NOT NULL,
	[Images] [nvarchar](250) NOT NULL,
	[Order] [int] NOT NULL,
	[GroupID] [varchar](50) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Slides] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SystemConfigs]    Script Date: 12/1/2020 5:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SystemConfigs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[UniqueKey] [varchar](50) NOT NULL,
	[Value] [nvarchar](250) NOT NULL,
	[Unit] [varchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](20) NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
	[UpdatedBy] [varchar](20) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_SystemConfigs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 12/1/2020 5:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tags](
	[ID] [varchar](50) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](20) NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[IsActived] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserActivityLogs]    Script Date: 12/1/2020 5:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserActivityLogs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ActionName] [nvarchar](50) NOT NULL,
	[ActionDate] [datetime] NOT NULL,
	[IPAddress] [varchar](50) NOT NULL,
	[SessionID] [varchar](50) NOT NULL,
	[UserName] [varchar](20) NOT NULL,
 CONSTRAINT [PK_UserActivityLogs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserGroups]    Script Date: 12/1/2020 5:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserGroups](
	[ID] [varchar](20) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[IsActived] [bit] NOT NULL CONSTRAINT [DF_UserGroups_IsActived]  DEFAULT ((1)),
	[IsDeleted] [bit] NOT NULL CONSTRAINT [DF_UserGroups_IsDeleted]  DEFAULT ((0)),
 CONSTRAINT [PK_UserGroups] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/1/2020 5:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserName] [varchar](20) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[PasswordLevel2] [varchar](32) NULL,
	[Email] [varchar](50) NOT NULL,
	[Mobile] [varchar](20) NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Sex] [bit] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[LastLoginDate] [datetime] NULL,
	[LastChangePassword] [datetime] NULL,
	[GroupID] [varchar](20) NULL CONSTRAINT [DF_Users_GroupID]  DEFAULT ('MEMBER'),
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1002, N'ACER', N'/Data/images/brand/lrg_acer-228x228.png', NULL, 1, CAST(N'2020-12-01 04:39:04.167' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1003, N'ADATA', N'/Data/images/brand/ada-228x228.png', NULL, 2, CAST(N'2020-12-01 04:39:34.240' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1004, N'AeroCool', N'/Data/images/brand/lrg_aerocool-228x228.png', NULL, 3, CAST(N'2020-12-01 04:40:09.657' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1005, N'AKKO', N'/Data/images/brand/akko-logo-228x228.jpg', NULL, 4, CAST(N'2020-12-01 04:40:43.483' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1006, N'AMD', N'/Data/images/brand/amd_logo-228x228.png', NULL, 5, CAST(N'2020-12-01 04:41:22.883' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1007, N'Antec', N'/Data/images/brand/Untitled-5-228x228.jpg', NULL, 6, CAST(N'2020-12-01 04:42:04.850' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1008, N'AOC ', N'/Data/images/brand/-ykhHR7y_400x400-228x228.png', NULL, 7, CAST(N'2020-12-01 04:42:30.553' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1009, N'Apacer', N'/Data/images/brand/lazada-thuong-hieu-apacer-228x228.jpg', NULL, 8, CAST(N'2020-12-01 04:43:10.117' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1010, N'ASROCK', N'/Data/images/brand/ASRock_PANTONE_White_Green_368C-228x228.jpg', NULL, 9, CAST(N'2020-12-01 04:43:38.603' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1011, N'ASUS', N'/Data/images/brand/lrg_asus-228x228.png', NULL, 10, CAST(N'2020-12-01 04:44:20.423' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1012, N'Canon', N'/Data/images/brand/logo_01-228x228.png', NULL, 11, CAST(N'2020-12-01 04:45:20.550' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1013, N'Cooler Master', N'/Data/images/brand/lrg_coolermaster-228x228.png', NULL, 12, CAST(N'2020-12-01 04:46:04.487' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1014, N'Corsair', N'/Data/images/brand/New-Corsair-Logo-Blog-image-228x228.png', NULL, 13, CAST(N'2020-12-01 04:46:46.513' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1015, N'Cougar', N'/Data/images/brand/cougar-logo-21-228x228.png', NULL, 14, CAST(N'2020-12-01 04:47:13.277' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1016, N'Creative', N'/Data/images/brand/kisspng-loudspeaker-creative-technology-wireless-speaker-a-tech-logo-5ae1205976b765_9754952115247033214863-228x228.jpg', NULL, 15, CAST(N'2020-12-01 04:47:37.443' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1017, N'DAREU ', N'/Data/images/brand/123-228x228.png', NULL, 16, CAST(N'2020-12-01 04:48:17.150' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1018, N'DeepCool', N'/Data/images/brand/deepcool-228x228.jpg', NULL, 17, CAST(N'2020-12-01 04:48:46.147' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1019, N'DELL', N'/Data/images/brand/dell_2016_logo-228x228.png', NULL, 18, NULL, NULL, CAST(N'2020-12-01 04:49:22.427' AS DateTime), N'quang', 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1020, N'DURGOD', N'/Data/images/brand/chuot-durgod-m39-a-228x228.jpg', NULL, 19, CAST(N'2020-12-01 04:49:58.630' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1021, N'E-Dra', N'/Data/images/brand/watermarked-bo-phim-chuot-khong-day-e-dra-ec888bk-3-228x228.jpg', NULL, 20, CAST(N'2020-12-01 04:50:29.423' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1022, N'Edifier', N'/Data/images/brand/loa-edifier-228x228.jpg', NULL, 21, CAST(N'2020-12-01 04:51:05.993' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1023, N'Elgato', N'/Data/images/brand/4972048824196399112_1-228x228.png', NULL, 22, CAST(N'2020-12-01 04:51:28.673' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1024, N'G.SKILL', N'/Data/images/brand/0130391F45548668B64B9F1750F7FBBD1FD1CB-3374-FCDD-1D26-1E48C99EC73A-228x228.jpg', NULL, 23, CAST(N'2020-12-01 04:52:32.313' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1025, N'GALAX', N'/Data/images/brand/5UVYvwYY-228x228.png', NULL, 24, CAST(N'2020-12-01 04:53:04.100' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1026, N'GameMax', N'/Data/images/brand/gamemax-228x228.png', NULL, 25, CAST(N'2020-12-01 04:53:36.243' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1027, N'GEIL', N'/Data/images/brand/geil_logo-228x228.jpg', NULL, 26, CAST(N'2020-12-01 04:54:18.243' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1028, N'GIGABYTE', N'/Data/images/brand/lrg_gigabyte-228x228.png', NULL, 27, CAST(N'2020-12-01 04:54:56.437' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1029, N'HP', N'/Data/images/brand/HP_logo_2012_svg-228x228.png', NULL, 28, NULL, NULL, CAST(N'2020-12-01 04:55:30.003' AS DateTime), N'quang', 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1030, N'ID Cooling', N'/Data/images/brand/id-cooling-logo-228x228.png', NULL, 29, CAST(N'2020-12-01 04:55:58.690' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1031, N'Inno3D', N'/Data/images/brand/inno-3d-bat-ngo-quay-tro-lai-thi-truong-viet-nam-sau-thoi-gian-dai-vang-bong-228x228.png', NULL, 30, CAST(N'2020-12-01 04:56:31.480' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1032, N'Intel', N'/Data/images/brand/d44ffa47daf1a032e24bba541c17b6e8-228x228.jpg', NULL, 30, CAST(N'2020-12-01 04:56:57.033' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1033, N'Keychron', N'/Data/images/brand/keychron-228x228.png', NULL, 31, CAST(N'2020-12-01 04:57:37.070' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1034, N'Kingston', N'/Data/images/brand/Kingston-logo-wordmark-228x228.png', NULL, 32, CAST(N'2020-12-01 04:58:16.587' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1035, N'KROM', N'/Data/images/brand/krom-228x228.jpg', NULL, 33, CAST(N'2020-12-01 04:58:47.800' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1036, N'Leadtek', N'/Data/images/brand/a-228x228.jpg', NULL, 34, CAST(N'2020-12-01 04:59:13.590' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1037, N'Lenovo', N'/Data/images/brand/t%E1%BA%A3i%20xu%E1%BB%91ng-228x228.png', NULL, 36, NULL, NULL, CAST(N'2020-12-01 04:59:56.027' AS DateTime), N'quang', 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1038, N'LG', N'/Data/images/brand/Lg_logo-3-228x228.png', NULL, 37, CAST(N'2020-12-01 05:00:31.700' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1039, N'Lian Li ', N'/Data/images/brand/Lian-Li-Company-Logo1-1-228x228.png', NULL, 38, CAST(N'2020-12-01 05:01:15.923' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1040, N'Logitech', N'/Data/images/brand/New-Logitech-Logo-2015-seeklogo_net_-228x228.png', NULL, 39, NULL, NULL, CAST(N'2020-12-01 05:02:07.147' AS DateTime), N'quang', 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1041, N'Microsoft ', N'/Data/images/brand/Microsoft-Logo-3-832x1024-228x228.jpg', NULL, 40, CAST(N'2020-12-01 05:02:48.090' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1042, N'MSI ', N'/Data/images/brand/msi-corporate_identity-logo-black-rgb-png-228x228.png', NULL, 41, CAST(N'2020-12-01 05:03:21.480' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1043, N'Noctua', N'/Data/images/brand/logo%20noctua-228x228.png', NULL, 43, CAST(N'2020-12-01 05:03:51.253' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1044, N'NZXT', N'/Data/images/brand/NZXT-Logo-228x228.png', NULL, 44, CAST(N'2020-12-01 05:04:15.143' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1045, N'OCPC', N'/Data/images/brand/OCPC-228x228.png', NULL, 45, CAST(N'2020-12-01 05:04:41.430' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1046, N'Orico', N'/Data/images/brand/fb-orico_1_1-228x228.jpg', NULL, 46, CAST(N'2020-12-01 05:05:13.067' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1047, N'Phanteks', N'/Data/images/brand/vo-case-phanteks-228x228.jpg', NULL, 47, CAST(N'2020-12-01 05:05:37.090' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1048, N'Quadro', N'/Data/images/brand/pic0G26-228x228.jpg', NULL, 48, CAST(N'2020-12-01 05:06:09.523' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1049, N'Rapoo', N'/Data/images/brand/logo-rapoo-228x228.png', NULL, 49, CAST(N'2020-12-01 05:06:37.340' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1050, N'RAZER', N'/Data/images/brand/Razer_wordmark-228x228.png', NULL, 50, CAST(N'2020-12-01 05:07:07.950' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1051, N'Samsung', N'/Data/images/brand/Samsung_Logo_svg-228x228.png', NULL, 51, CAST(N'2020-12-01 05:07:42.400' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1052, N'SEAGATE', N'/Data/images/brand/seagate-stacked-pos-2015-228x228.jpg', NULL, 52, CAST(N'2020-12-01 05:08:15.060' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1053, N'Sennheiser ', N'/Data/images/brand/logo%20sen-228x228.png', NULL, 53, CAST(N'2020-12-01 05:09:05.200' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1054, N'Silicon Power', N'/Data/images/brand/silicon-power-logo%20copy-228x228.png', NULL, 54, CAST(N'2020-12-01 05:09:34.447' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1055, N'Steelseries', N'/Data/images/brand/new_sslogo_black-1-228x228.png', NULL, 55, CAST(N'2020-12-01 05:10:17.703' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1056, N'Thermalright', N'/Data/images/brand/thermalright-logo-pan-228x228.jpg', NULL, 56, CAST(N'2020-12-01 05:10:50.453' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1057, N'Thermaltake', N'/Data/images/brand/thermaltake-228x228.jpg', NULL, 57, CAST(N'2020-12-01 05:11:21.143' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1058, N'TNC Gaming', N'/Data/images/brand/118088337_303279487617824_557801281556711641_n-228x228.png', NULL, 58, CAST(N'2020-12-01 05:11:45.933' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1059, N'TP-LINK ', N'/Data/images/brand/TP-Link-TL-WR841N-228x228.jpg', NULL, 59, CAST(N'2020-12-01 05:12:22.540' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1060, N'ViewSonic', N'/Data/images/brand/ViewSonic-logo-wordmark-228x228.png', NULL, 60, CAST(N'2020-12-01 05:12:57.817' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1061, N'Vive', N'/Data/images/brand/vive%20logo-228x228.png', NULL, 61, CAST(N'2020-12-01 05:13:31.750' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1062, N'Western Digital ', N'/Data/images/brand/YtJ0BZ87-228x228.png', NULL, 62, CAST(N'2020-12-01 05:14:04.117' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1063, N'Xigmatek', N'/Data/images/brand/xigmatek-228x228.jpg', NULL, 64, CAST(N'2020-12-01 05:14:52.167' AS DateTime), N'quang', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Brands] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([ID], [Title], [MetaTitle], [Images], [Description], [Order], [ParentID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [IsIntroduced]) VALUES (3, N'new', N'new', N'/Data/images/Category/output-onlinepngtools.png', N'sales 50%', NULL, NULL, NULL, NULL, CAST(N'2020-11-21 14:30:19.973' AS DateTime), N'quang', NULL, NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[ChildCategories] ON 

INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (1, N'PRO GAMING PC', N'pro-gaming-pc', N'/Data/images/Category/cat-gp-gaming.png', N'PC cấu hình khủng cùng linh kiện cao cấp, đem tới trải nghiệm gaming hấp dẫn nhất.', N'<div class="description">
<p><img src="https://www.tncstore.vn/image/catalog/banner/2020/122946121_2424554487838326_545626290259556588_n.jpg" style="float:left; height:317.49px; width:317.49px" /></p>

<h3><span style="font-size:18px"><strong>PRO Gaming PC - M&aacute;y T&iacute;nh Game Thủ Chuy&ecirc;n Nghiệp !!!</strong></span></h3>

<h3><span style="font-size:18px">Chắc hẳn c&aacute;c game thủ đều mong muốn chiếc</span><span style="font-size:18px"><strong>PC Gaming</strong></span><span style="font-size:18px"> của m&igrave;nh l&agrave; một con qu&aacute;i th&uacute; c&oacute; thể chinh phục bất kỳ tựa game AAA n&agrave;o.&nbsp;</span><span style="font-size:18px">Đến với TNC Store, anh em c&oacute; thể lựa chọn c&acirc;y PC cho ri&ecirc;ng m&igrave;nh trải d&agrave;i trong tầm gi&aacute; từ phổ th&ocirc;ng đến cao cấp với 6 d&ograve;ng m&aacute;y ch&iacute;nh l&agrave; Alpha, Glacier, Sniper, Lumen, Nova v&agrave; Sentinel. Điều đầu ti&ecirc;n v&agrave; quan trọng nhất cần phải x&eacute;t đến đ&oacute; ch&iacute;nh l&agrave; card đồ hoạ. Một chiếc card đồ hoạ tốt sẽ khiến cho việc xử l&yacute; chất lượng h&igrave;nh ảnh của </span><span style="color:inherit; font-size:18px"><strong>PC Gaming</strong></span><span style="color:inherit; font-size:18px"> trở n&ecirc;n mượt m&agrave;.&nbsp;</span><span style="font-size:18px">Ch&iacute;nh v&igrave; l&yacute; do đ&oacute; card đồ họa tr&ecirc;n d&ograve;ng PC Pro Gaming của TNC Store được lựa chọn kỹ c&agrave;ng. Tiếp đến l&agrave; chất lượng của CPU. Tốc độ hoạt động của m&aacute;y phụ thuộc kh&aacute; nhiều v&agrave;o CPU. Do đ&oacute; c&aacute;ch chọn CPU cũng rất quan trọng. Với d&ograve;ng </span><span style="color:inherit; font-size:18px"><strong>PC Gaming</strong></span><span style="color:inherit; font-size:18px">, TNC Store đ&atilde; build sẵn cho anh em những chip CPU đời mới nhất với hiệu năng mạnh mẽ.&nbsp;</span><span style="font-size:18px">Hơn nữa, việc lựa chọn bộ tản nhiệt CPU đẹp sẽ l&agrave;m tăng t&iacute;nh thẩm mĩ của chiếc </span><span style="color:inherit; font-size:18px"><strong>PC Gaming</strong></span><span style="color:inherit; font-size:18px">. V&igrave; vậy, h&atilde;y d&agrave;nh ra một khoảng trong ng&acirc;n s&aacute;ch của bạn để tậu chiếc tản nhiệt thật &ldquo;cool&quot; nh&eacute;!</span></h3>

<h3><span style="font-size:18px">&nbsp;&nbsp;</span><span style="font-size:18px">&nbsp;</span><span style="font-size:18px">&nbsp;</span></h3>

<h3>&nbsp;</h3>

<h3><span style="font-size:18px">Điểm danh 5 L&iacute; do m&agrave; anh em kh&ocirc;ng thể bỏ lỡ khi chọn <strong>PC Gaming</strong> chỉ c&oacute; tại TNC Store:</span></h3>

<h3><span style="font-size:18px">&nbsp;&nbsp;&nbsp;</span><span style="font-size:18px">- 100% Linh kiện được đảm bảo bảo h&agrave;nh ch&iacute;nh h&atilde;ng, mới brand new, nguy&ecirc;n hộp.</span></h3>

<h3><span style="font-size:18px">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-size:18px">- M&aacute;y được đ&oacute;ng g&oacute;i v&agrave; lắp đặt cẩn thận, chuy&ecirc;n nghiệp, đẹp.</span></h3>

<h3><span style="font-size:18px">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-size:18px">- Được đổi mới ngay trong v&ograve;ng 7 ng&agrave;y nếu c&oacute; sự cố từ NSX.</span></h3>

<h3><span style="font-size:18px">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-size:18px">- Hỗ trợ trả g&oacute;p 0% l&atilde;i suất, thanh to&aacute;n linh hoạt.</span></h3>

<h3><span style="font-size:18px">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-size:18px">- Hỗ trợ c&agrave;i đặt c&aacute;c phần mềm c&oacute; sẵn, cơ bản trọn đời.</span></h3>

<div>&nbsp;</div>

<h3>&nbsp;</h3>

<p>&nbsp;</p>
</div>
', 1, NULL, NULL, CAST(N'2020-12-01 03:55:06.150' AS DateTime), N'quang', NULL, NULL, 1, 1)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (2, N'PRO WORKSTATION', N'pro-workstation', N'/Data/images/Category/cat-gp-video.png', N'Cấu hình PC chuyên dụng cho các công việc thiết kế, kiến trúc, đồ họa đòi hỏi hiệu suất cao.', N'<div class="description">
<p><img src="https://www.tncstore.vn/image/catalog/banner/2020/T11/pro-workstation-tnc.jpg" style="float:left; width:25%" /><strong><span style="font-size:18px">PC PRO Workstation - M&aacute;y t&iacute;nh chuy&ecirc;n dụng&nbsp;</span></strong></p>

<p><strong><span style="font-size:18px">PC PRO Workstation - RENDA: Sự lựa chọn số một cho d&acirc;n thiết kế đồ hoạ</span></strong></p>

<p><span style="font-size:18px">Giống với người anh em PC Gaming, PC Workstation mang trong m&igrave;nh những linh kiện tối t&acirc;n nhất để phục vụ c&ocirc;ng việc thiết kế, chỉnh sửa kiến tr&uacute;c 3D, đồ họa nặng. Tuy nhi&ecirc;n, điều quan trọng nhất l&agrave;m n&ecirc;n PC Workstation tốt ch&iacute;nh l&agrave; sự bảo mật v&agrave; khả năng tương th&iacute;ch cao giữa c&aacute;c linh kiện. Hiện <strong>RENDA</strong> tại TNC Store đang c&oacute; sẵn c&aacute;c d&ograve;ng m&aacute;y Basic, Advance, Premium v&agrave; Master. Với đặc điểm phải xử l&yacute; một l&uacute;c nhiều t&aacute;c vụ kh&aacute;c nhau th&igrave; CPU được coi l&agrave; nh&acirc;n tố quan trọng nhất khi lựa chọn một c&acirc;y PC Workstation. D&ograve;ng m&aacute;y <strong>RENDA</strong> đến từ TNC Store sở hữu những CPU đa nh&acirc;n, đa luồng như Intel Xeon, Intel Core i9, Threadripper series l&agrave; sự lựa chọn h&agrave;ng đầu nhờ tốc độ xử l&yacute; đa nhiệm nhanh, bộ nhớ đệm lớn th&iacute;ch hợp với việc xử l&yacute; khối lượng c&ocirc;ng việc nặng v&agrave; số lượng nhiều. GPU l&agrave; linh kiện kh&ocirc;ng thể thiếu trong việc thực hiện việc xử l&yacute; h&igrave;nh ảnh, đồ hoạ. Card đồ hoạ RTX được lắp tr&ecirc;n d&ograve;ng <strong>RENDA</strong> c&oacute; khả năng &eacute;p xung mạnh mẽ v&agrave; khối lượng VRam lớn.&nbsp;</span></p>

<p><strong><span style="font-size:18px">*5 L&iacute; do m&agrave; anh em kh&ocirc;ng thể bỏ lỡ khi chọn PC Workstation chỉ c&oacute; tại TNC Store:</span></strong></p>

<ul>
	<li><span style="font-size:18px">100% Linh kiện được đảm bảo bảo h&agrave;nh ch&iacute;nh h&atilde;ng, mới brand new, nguy&ecirc;n hộp.</span></li>
	<li><span style="font-size:18px">M&aacute;y được đ&oacute;ng g&oacute;i v&agrave; lắp đặt cẩn thận, chuy&ecirc;n nghiệp, đẹp.</span></li>
	<li><span style="font-size:18px">Được đổi mới ngay trong v&ograve;ng 7 ng&agrave;y nếu c&oacute; sự cố từ NSX.</span></li>
	<li><span style="font-size:18px">Hỗ trợ trả g&oacute;p 0% l&atilde;i suất, thanh to&aacute;n linh hoạt.</span></li>
	<li><span style="font-size:18px">Hỗ trợ c&agrave;i đặt c&aacute;c phần mềm c&oacute; sẵn, cơ bản trọn đời.</span></li>
</ul>

<div>&nbsp;</div>
</div>
', 2, NULL, NULL, CAST(N'2020-12-01 03:55:38.390' AS DateTime), N'quang', NULL, NULL, 1, 1)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (3, N'PRO CREATOR', N'pro-creator', N'/Data/images/Category/cat-gp-graphic.png', N'PC có tính thẩm mỹ cao năng lực xử lý vượt trội cho các nhà sáng tạo nội dung.', N'<div class="description">
<p><img src="https://www.tncstore.vn/image/catalog/banner/2020/T11/pro-creator-tnc.jpg" style="float:left; width:25%" /><strong><span style="font-size:18px">PC PRO Creator - M&aacute;y t&iacute;nh d&agrave;nh cho những nh&agrave;&nbsp; s&aacute;ng tạo nội dung</span></strong></p>

<p>&nbsp;</p>

<p><span style="font-size:18px">Niềm cảm hứng bất tận mang t&ecirc;n </span><strong><span style="font-size:18px">CREATION</span></strong></p>

<p><span style="font-size:18px">Với sứ mệnh gi&uacute;p c&aacute;c nh&agrave; s&aacute;ng tạo nội dung c&oacute; được hiệu năng l&agrave;m việc tốt nhất, kh&ocirc;ng l&agrave;m gi&aacute;n đoạn mạch &yacute; tưởng s&aacute;ng tạo. D&ograve;ng </span><strong><span style="font-size:18px">PC PRO Creator - CREATION</span></strong><span style="font-size:18px"> đến từ TNC Store c&oacute; t&iacute;nh thẩm mỹ cao, năng lực xử l&yacute; vượt trội trong việc thực hiện c&aacute;c t&aacute;c vụ streaming, chỉnh sửa ảnh, video 2D, c&aacute;c kỹ xảo h&igrave;nh ảnh đặc biệt&hellip;&nbsp;</span></p>

<p><span style="font-size:18px">Hiện </span><strong><span style="font-size:18px">CREATION</span></strong><span style="font-size:18px"> tại TNC Store đang c&oacute; c&aacute;c d&ograve;ng m&aacute;y Basic, Advanced, Premium v&agrave; Master. Điều đầu ti&ecirc;n phải nhắc đến đ&oacute; ch&iacute;nh l&agrave; </span><strong><span style="font-size:18px">PC Creator</span></strong><span style="font-size:18px"> mang trong m&igrave;nh những d&ograve;ng card đồ hoạ đời mới nhất v&agrave; c&oacute; hiệu năng cao. Tiếp đến, anh em ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m khi CPU của </span><strong><span style="font-size:18px">PC Creator</span></strong><span style="font-size:18px"> đều được lựa chọn từ những con chip thế hệ mới, đủ khả năng hoạt động tốt với tần suất lớn. Độ thẩm mỹ đến từ c&aacute;c linh kiện phụ trợ c&oacute; gắn LED RGB cũng l&agrave; điểm mạnh của </span><strong><span style="font-size:18px">PC Creator</span></strong><span style="font-size:18px">. Một đặc trưng nữa của </span><strong><span style="font-size:18px">PC Creator</span></strong><span style="font-size:18px"> ch&iacute;nh l&agrave; bộ case m&aacute;y t&iacute;nh sở hữu bộ nguồn c&ocirc;ng suất cao nếu anh em muốn n&acirc;ng cấp m&aacute;y sau n&agrave;y. Nếu anh em vẫn đang t&igrave;m kiếm bạn đồng h&agrave;nh tr&ecirc;n con đường ph&aacute;t triển sự nghiệp, h&atilde;y đến với TNC Store nh&eacute;!&nbsp;</span></p>

<p>&nbsp;</p>

<p><strong><span style="font-size:18px">*5 L&iacute; do m&agrave; anh em kh&ocirc;ng thể bỏ lỡ khi chọn PC Creator chỉ c&oacute; tại TNC Store:</span></strong></p>

<ul>
	<li><span style="font-size:18px">100% Linh kiện được đảm bảo bảo h&agrave;nh ch&iacute;nh h&atilde;ng, mới brand new, nguy&ecirc;n hộp.</span></li>
	<li><span style="font-size:18px">M&aacute;y được đ&oacute;ng g&oacute;i v&agrave; lắp đặt cẩn thận, chuy&ecirc;n nghiệp, đẹp.</span></li>
	<li><span style="font-size:18px">Được đổi mới ngay trong v&ograve;ng 7 ng&agrave;y nếu c&oacute; sự cố từ NSX.</span></li>
	<li><span style="font-size:18px">Hỗ trợ trả g&oacute;p 0% l&atilde;i suất, thanh to&aacute;n linh hoạt.</span></li>
	<li><span style="font-size:18px">Hỗ trợ c&agrave;i đặt c&aacute;c phần mềm c&oacute; sẵn, cơ bản trọn đời.</span></li>
</ul>

<div>&nbsp;</div>
</div>
', 3, CAST(N'2020-12-01 03:57:26.307' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 1)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (4, N'PRO DUCTIVITY', N'pro-ductivity', N'/Data/images/Category/cat-gp-ductivity.png', N'PC dựng sẵn với kích thước và hiệu năng phù hợp cho công việc văn phòng và giải trí tại gia.', N'<div class="description"><h2><span style="font-size: 12px;"><span style="font-size: 14px;"><b>Intel NUC là gì?</b></span></span></h2><p><a href="https://www.tncstore.vn/home-pc.html" target="_blank">Intel NUC</a> (Next Unit of Computing ) có thể được gọi đơn giản là thế hệ máy tính tiếp theo được Intel phát triển dựa trên tiêu chí siêu nhỏ gọn và có độ tùy biến cao theo nhu cầu sử dụng.</p><h3><b><span style="font-size: 24px;">1. Cấu hình và hiệu năng</span></b></h3><p>Về cấu hình thì những chiếc máy Intel NUC thường sử dụng CPU dòng tiết kiệm điện và ram dạng nhỏ giống với laptop nên hiệu năng ở mức cơ bản đáp ứng đầy đủ các nhu cầu&nbsp;phần mềm ứng dụng văn phòng như Office, lướt web và giải trí đa phương tiện. Thậm chí Card đồ họa tích hợp sẽ giúp bạn thao tác mượt mà với các phần mềm nhẹ nhàng như Photoshop, Lightroom...</p><h3><b><span style="font-size: 24px;">2. Mang tính linh hoạt cao</span></b></h3><p>Với kích thước cực kỳ nhỏ gọn, chỉ bằng phân nửa một bộ nguồn PC thông thường nên NUC sẽ là chiếc máy tính lý tưởng cho cơ quan, doanh nghiệm, trình chiếu hay giải trí cơ bản tại nhà như lướt web, xem phim...</p><h3><span style="font-size: 24px;"><b>3. Độ ổn định và độ bền trứ danh từ Intel</b></span></h3><p>Intel là ông vua phần cứng đã quá nổi tiếng với các dòng CPU có độ ổn định và độ bền cực kỳ cao, Intel NUC cũng không phải là ngoại lệ, bạn sẽ không phải quan tâm quá nhiều về các vấn đề phát sinh hay bảo trì bảo hành khi sử dụng</p><h3><span style="font-size: 24px;"><b>4. Các quyền lợi vàng khi mua Intel NUC chỉ có tại TNC Store:</b></span></h3><p><span style="font-size: 12px;">- 100% Linh Kiện được đảm bảo chính hãng, mới brand new, nguyên hộp.</span></p><p>- Máy được kỹ thuật lắp đặt cẩn thận nếu quý khách phát sinh thêm nhu cầu nâng cấp Ram, SSD.<br></p><p>- Được đổi mới ngay trong vòng 7 ngày, nếu có sự cố từ NSX.<br></p><p>- Hỗ trợ trả góp 0% lãi suất, thanh toán linh hoạt.<br></p><p>- Hỗ trợ cài đặt các phần mềm có sẵn, cơ bản trọn đời.<br></p><p>Hãy cùng với<a href="https://www.tncstore.vn/" target="_blank"> TNC Store</a> bắt tay vào việc lựa chọn phần cứng và tự tay cấu hình chiếc NUC của mình ngay hôm nay !&nbsp;<br></p></div>', 4, CAST(N'2020-12-01 03:58:38.430' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 1)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (5, N'PRO AUDIO', N'pro-audio', N'/Data/images/Category/cat-gp-audio.png', N'Cấu hình PC tối ưu cho Studio âm nhạc, dành cho Composer/Producer', N'<div class="description"><p><img src="https://www.tncstore.vn/image/catalog/banner/2020/T11/pro-audio-tnc.jpg" style="width: 25%; float: left;"><span style="font-size: 18px; font-family: &quot;Chakra Petch&quot;;"><b>PC PRO Audio - Khi âm nhạc là cuộc sống</b></span></p><p><font face="Chakra Petch"><br></font></p><p><font face="Chakra Petch"><span style="font-size: 18px;">Những đặc trưng tạo nên một chiếc <b>PC Pro Audio - STUDIO</b> hoàn hảo!&nbsp;</span></font><span style="font-size: 18px; font-family: &quot;Chakra Petch&quot;;">Không như những dòng máy PC Gaming, PC Workstation coi trọng việc xử lý đồ hoạ, <b>PC Pro Audio</b> có các đặc điểm những đặc điểm riêng nhằm tối ưu hóa công việc làm nhạc, chỉnh sửa âm thanh.&nbsp;</span><span style="font-size: 18px; font-family: &quot;Chakra Petch&quot;;">Giống như Pro Creator và Pro Workstation, <b>PC Pro Audio</b> cũng có các dòng máy Basic, Advanced, Premium và Master.</span></p><p><font face="Chakra Petch"><span style="font-size: 18px;">Khác với việc chỉnh sửa video, làm đồ hoạ, chơi game… cần xử lý nhiều tác vụ cùng lúc, sản xuất nhạc chủ yếu là xử lý các hoạt động lần lượt, nối tiếp nhau. Do vậy, cách chọn CPU có sức mạnh xử lý đơn nhân mạnh mẽ là điều quan trọng hàng đầu trong dòng <b>PC Pro Audio</b>.&nbsp;</span></font><span style="font-size: 18px; font-family: &quot;Chakra Petch&quot;;">Tiếp đến, những dòng mainboard của STUDIO đến từ TNC Store được trang bị DAC audio chất lượng cao, giúp cho âm thanh trong trẻo, tín hiệu sạch sẽ và chi tiết hơn. Những đoạn nhạc giờ đây sẽ trở nên sống động, chân thực, rất phù hợp cho các studio từ đơn giản tới chuyên nghiệp.&nbsp;</span><span style="font-size: 18px; font-family: &quot;Chakra Petch&quot;;">Vỏ case là yếu tố không thể thiếu do môi trường làm việc của anh em cần sự tập trung tuyệt đối, tránh các tiếng ồn không đáng có. Một case máy chuyên dụng của <b>PC Pro Audio</b> sẽ giảm thiểu tối đa độ ồn từ các linh kiện.</span></p><p><span style="font-family: &quot;Chakra Petch&quot;; font-size: 18px;"><b>*5 Lí do mà anh em&nbsp; không thể bỏ lỡ khi chọn PC Audio chỉ có tại TNC Store:</b></span><br></p><ul><li><font face="Chakra Petch"><span style="font-size: 18px;">100% Linh kiện được đảm bảo bảo hành chính hãng, mới brand new, nguyên hộp.</span></font></li><li><font face="Chakra Petch"><span style="font-size: 18px;">Máy được đóng gói và lắp đặt cẩn thận, chuyên nghiệp, đẹp.</span></font></li><li><font face="Chakra Petch"><span style="font-size: 18px;">Được đổi mới ngay trong vòng 7 ngày nếu có sự cố từ NSX.</span></font></li><li><font face="Chakra Petch"><span style="font-size: 18px;">Hỗ trợ trả góp 0% lãi suất, thanh toán linh hoạt.</span></font></li><li><font face="Chakra Petch"><span style="font-size: 18px;">Hỗ trợ cài đặt các phần mềm có sẵn, cơ bản trọn đời.</span></font></li></ul><div><br></div></div>', 5, CAST(N'2020-12-01 03:59:58.967' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 1)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (6, N'PRO VR', N'pro-vr', N'/Data/images/Category/cat-gp-vr.png', N'Thế giới ảo, trải nghiệm thật với cấu hình PC chuyên Virtual Reality', N'<div class="description">
<p><img src="https://www.tncstore.vn/image/catalog/banner/2020/T11/pro-vr-tnc.jpg" style="float:left; width:25%" /><span style="font-size:18px"><strong>PC PRO VR - Hướng đến tương lai</strong></span></p>

<p><span style="font-size:18px">Điều g&igrave; l&agrave;m n&ecirc;n một chiếc <strong>PC VR - VISION</strong> mạnh mẽ?&nbsp;</span><span style="font-family:chakra petch; font-size:18px">Với một diện mạo ho&agrave;n to&agrave;n mới, d&ograve;ng </span><strong>VISION</strong><span style="font-family:chakra petch; font-size:18px"> của TNC Store chắc chắn sẽ mang đến cho anh em những trải nghiệm gaming thực tế ảo ch&acirc;n thực v&agrave; sống động nhất. Cấu h&igrave;nh c&aacute;c </span><strong>PC VR</strong><span style="font-family:chakra petch; font-size:18px"> được lựa chọn kỹ c&agrave;ng, đủ sức chinh chiến c&aacute;c tựa game </span><strong>VR</strong><span style="font-family:chakra petch; font-size:18px"> đ&igrave;nh đ&aacute;m hiện nay như Half-Life: Alyx, Super Hot, No Man&#39;s Sky&hellip;&nbsp;</span></p>

<p><span style="font-size:18px">Điều đầu ti&ecirc;n phải kể đến ch&iacute;nh l&agrave; card đồ hoạ nếu anh em muốn game đạt 90 FPS (số khung h&igrave;nh tr&ecirc;n gi&acirc;y) - mức tối đa của c&aacute;c game <strong>VR</strong>. Do đ&oacute;, d&ograve;ng <strong>VISION</strong> Basic được trang bị tối thiểu card đồ họa GTX 1660 v&agrave; RTX Series với những d&ograve;ng cao cấp hơn như Advanced, Premium v&agrave; Master.</span></p>

<p><span style="font-size:18px">Giống với PC Gaming, CPU tr&ecirc;n <strong>PC VR</strong> l&agrave; những con chip d&ograve;ng cao, đa nh&acirc;n, c&oacute; xung nhịp lớn th&iacute;ch hợp xử l&yacute; c&aacute;c t&aacute;c vụ gaming.&nbsp;</span><span style="font-family:chakra petch; font-size:18px">Dung lượng RAM tối thiểu của </span><strong>PC VR</strong><span style="font-family:chakra petch; font-size:18px"> l&agrave; 8GB nhưng nếu anh em c&oacute; nhu cầu chỉnh sửa video, thiết kế đồ hoạ th&igrave; c&oacute; thể lựa chọn n&acirc;ng cấp l&ecirc;n 16GB RAM cho hiệu suất l&agrave;m việc lớn.</span></p>

<p><span style="font-size:18px">Với gi&aacute; th&agrave;nh ng&agrave;y c&agrave;ng hợp l&yacute; th&igrave; một chiếc ổ cứng SSD l&agrave; một lựa chọn kh&aacute; ph&ugrave; hợp cho chiếc <strong>PC VR</strong> của anh em. Đ&aacute;ng ch&uacute; &yacute;, mainboard tr&ecirc;n d&ograve;ng m&aacute;y <strong>VISION</strong> c&oacute; tất cả c&aacute;c cổng cần thiết cho thiết bị ngoại vi v&agrave; nhiều khe cắm RAM, card đồ hoạ đảm bảo khả năng n&acirc;ng cấp m&aacute;y sau n&agrave;y.</span></p>

<p>&nbsp;</p>

<p><strong>*5 L&iacute; do m&agrave; anh em&nbsp; kh&ocirc;ng thể bỏ lỡ khi chọn PC VR chỉ c&oacute; tại TNC Store:</strong></p>

<ul>
	<li><span style="font-size:18px">100% Linh kiện được đảm bảo bảo h&agrave;nh ch&iacute;nh h&atilde;ng, mới brand new, nguy&ecirc;n hộp.</span></li>
	<li><span style="font-size:18px">M&aacute;y được đ&oacute;ng g&oacute;i v&agrave; lắp đặt cẩn thận, chuy&ecirc;n nghiệp, đẹp.</span></li>
	<li><span style="font-size:18px">Được đổi mới ngay trong v&ograve;ng 7 ng&agrave;y nếu c&oacute; sự cố từ NSX.</span></li>
	<li><span style="font-size:18px">Hỗ trợ trả g&oacute;p 0% l&atilde;i suất, thanh to&aacute;n linh hoạt.</span></li>
	<li><span style="font-size:18px">Hỗ trợ c&agrave;i đặt c&aacute;c phần mềm c&oacute; sẵn, cơ bản trọn đời.</span></li>
</ul>

<div>&nbsp;</div>
</div>
', 6, CAST(N'2020-12-01 04:00:54.923' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 1)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (7, N'Gaming laptop', N'gaming-laptop', N'/Data/images/Category/gaming-laptop-tnc-300x300.png', NULL, N'<div class="description">
<p>&nbsp;</p>
<img src="https://tncstore.cdn.vccloud.vn/image/catalog/banner/gaming-laptop-1.jpg" style="float:right; width:275px" />
<h2><span style="font-size:14px"><span style="font-size:18px"><strong>C&aacute;ch Chọn Mua Gaming Laptop Theo Nhu Cầu:</strong></span></span></h2>
<br />
<span style="font-size:14px"><strong>1. &nbsp;Nhu cầu phổ th&ocirc;ng/Trung cấp</strong></span>

<p>Đ&atilde; l&agrave; một game thủ, th&igrave; lu&ocirc;n phải đ&ograve;i hỏi đến sức mạnh của một chiếc m&aacute;y t&iacute;nh. Tuy nhi&ecirc;n, chuyện sẽ kh&aacute;c đối với những ai đ&ograve;i hỏi sự di động, khi hiệu năng xử l&yacute; di động của m&aacute;y t&iacute;nh l&agrave; điểm mấu chốt. Với việc được cấu tạo với đầy đủ c&aacute;c th&agrave;nh phần linh kiện kh&ocirc;ng kh&aacute;c biệt nhiều với m&aacute;y t&iacute;nh b&agrave;n desktop, th&igrave; c&oacute; lẽ rằng việc hi sinh một phần hiệu năng cho k&iacute;ch thước nhỏ gọn đ&atilde; l&agrave; một điều thuộc về qu&aacute; khứ rồi. Với v&ocirc; v&agrave;n lựa chọn <strong>Gaming Laptop </strong>đến từ những h&atilde;ng sản xuất h&agrave;ng đầu hiện nay, như <a href="http://www.tncstore.vn/ASUS.html">Asus</a>, <a href="http://www.tncstore.vn/MSI.html">MSI</a>, <a href="http://www.tncstore.vn/DELL.html">Dell</a>, <a href="http://www.tncstore.vn/GIGABYTE.html">Gigabyte</a> <a href="http://www.tncstore.vn/gaming-laptop.html?manufacturer_id=90">Lenovo</a> , <a href="http://www.tncstore.vn/gaming-laptop.html?manufacturer_id=13">Acer</a>, v.v &hellip; ; họ đều đ&atilde; vượt mọi giới hạn thiết kế v&agrave; sản xuất để tạo ra những chiếc laptop chơi game tốt nhất hiện nay. Sử dụng những c&ocirc;ng nghệ mới nhất hiện nay như bộ vi xử l&yacute; Intel Skylake v&agrave; Kaby Lake, card đồ họa NVIDIA GeForce GTX 10 Series, m&agrave;n h&igrave;nh hiển thị độ ph&acirc;n giải cao từ Full HD trở l&ecirc;n, mọi nhu cầu sức mạnh m&agrave; game thủ v&agrave; người d&ugrave;ng cần đều sẽ được đ&aacute;p ứng một c&aacute;ch tốt nhất.&nbsp;</p>

<p>Đối với những game thủ th&ocirc;ng thường, lựa chọn <strong><a href="https://www.tncstore.vn/gaming-laptop.html">Gaming Laptop</a></strong> c&oacute; sử dụng card đồ họa NVIDIA GeForce GTX 1050 với bộ nhớ đồ họa 4Gb GDDR5 sẽ đ&aacute;p ứng được tốt nhu cầu chơi game hiện nay. Th&ocirc;ng thường, c&aacute;c <strong><a href="https://www.tncstore.vn/gaming-laptop.html">laptop gaming</a></strong> đều lắp sẵn bộ nhớ hệ thống 8Gb, v&agrave; ho&agrave;n to&agrave;n c&oacute; thể n&acirc;ng cấp l&ecirc;n 16, hay thậm ch&iacute; 32Gb dung lượng bộ nhớ hỗ trợ tối đa, t&ugrave;y từng m&aacute;y; đ&aacute;p ứng được tốt nhu cầu xử l&yacute; video hay chơi game nặng.</p>

<p><br />
<span style="font-family:helvetica; font-size:14px"><strong>2. &nbsp;Nhu cầu cao cấp:</strong></span></p>

<p>Khi m&agrave; nhu cầu đ&ograve;i hỏi cao hơn, như m&agrave;n h&igrave;nh c&oacute; tốc độ qu&eacute;t cao hơn 60 Hz, chơi game với độ ph&acirc;n giải cực cao l&ecirc;n đến Ultra HD, tốc độ đọc/ghi dữ liệu cực nhanh để tất cả c&aacute;c ứng dụng c&oacute; thể hoạt động một c&aacute;ch trơn tru nhất c&oacute; thể. Đối với những ai c&oacute; niềm đam m&ecirc; m&aacute;y t&iacute;nh, hay đ&ograve;i hỏi sức mạnh xử l&yacute;, thay thế một chiếc m&aacute;y b&agrave;n th&ocirc;ng thường bằng một chiếc <strong><a href="http://www.tncstore.vn/lap-top/gaming-laptop.html">m&aacute;y t&iacute;nh x&aacute;ch tay</a></strong> c&oacute; khả năng di động c&oacute; thể bị xem như l&agrave; một điều kh&oacute; khăn, tưởng chừng như kh&ocirc;ng thể. Tuy nhi&ecirc;n, đối với mức độ ph&aacute;t triển nhanh ch&oacute;ng của c&ocirc;ng nghệ xử l&yacute; t&iacute;nh to&aacute;n di động, cũng như cải thiện hiệu năng ti&ecirc;u thụ, th&igrave; bạn kh&ocirc;ng cần phải t&igrave;m đ&acirc;u xa cho m&igrave;nh một chiếc m&aacute;y t&iacute;nh v&ocirc; c&ugrave;ng mạnh mẽ v&agrave; hoạt động hiệu quả, nhưng vẫn đủ t&iacute;nh di động để c&oacute; thể đem theo b&ecirc;n m&igrave;nh mọi l&uacute;c, mọi nơi. &nbsp;</p>

<p>Việc sử dụng một số GPU mạnh mẽ, th&iacute; dụ như NVIDIA GeForce <strong>RTX 2060</strong> v&agrave; <strong>RTX2070</strong>; c&ugrave;ng với c&aacute;c bộ vi xử l&yacute; được mở kh&oacute;a hệ số nh&acirc;n thuộc thế hệ Skylake v&agrave; Kaby Lake của Intel, th&ecirc;m v&agrave;o đ&oacute; l&agrave; m&agrave;n h&igrave;nh đ&egrave;n nền IPS cao cấp với độ ph&acirc;n giải cực cao, gấp 4 lần chuẩn Full HD th&ocirc;ng thường, hay thậm ch&iacute; mở rộng kh&ocirc;ng gian l&agrave;m việc với tối đa đến 2 m&agrave;n h&igrave;nh gắn ngo&agrave;i &ndash; tất cả đ&oacute; ho&agrave;n to&agrave;n đ&aacute;p ứng được mọi c&ocirc;ng việc nhận được, trong khi được l&agrave;m m&aacute;t tối đa v&agrave; hoạt động ổn định d&ugrave; được &eacute;p xung &ndash; mọi thứ đều được g&oacute;i gọn trong một thiết kế trang nh&atilde; v&agrave; đẳng cấp k&egrave;m với khả năng n&acirc;ng cấp mở rộng tuyệt vời.</p>

<p>C&aacute;c <strong><a href="https://www.tncstore.vn/gaming-laptop.html">laptop chơi game</a></strong> đời mới đều được trang bị bộ nhớ hệ thống chuẩn DDR4 mới nhất, v&agrave; hiệu năng cải thiện c&oacute; thể l&ecirc;n đến 30% nếu như so với chuẩn DDR3 cũ hơn &ndash; từ đ&oacute; game c&oacute; thể chạy mượt hơn, c&aacute;c ứng dụng đ&ograve;i hỏi qu&aacute; tr&igrave;nh trao đổi dữ liệu c&oacute; thể hoạt động ổn định v&agrave; nhanh ch&oacute;ng hơn &ndash; tr&aacute;nh bị hiện tượng nghẽn cổ chai (bottleneck).</p>

<div>&nbsp;</div>
</div>
', 1, CAST(N'2020-12-01 04:02:52.077' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 2)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (8, N'Laptop Văn Phòng ', N'laptop-van-phong', N'/Data/images/Category/laptop-vanphong-tnc-300x300.png', NULL, NULL, 2, CAST(N'2020-12-01 04:03:42.887' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 1)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (9, N'CPU - Bộ vi xử lý ', N'cpu-bo-vi-xu-ly', N'/Data/images/Category/cpu-tnc-300x300.png', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-01 04:09:23.587' AS DateTime), N'quang', NULL, NULL, 1, 3)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (10, N'Ổ cứng SSD', N'o-cung-ssd', N'/Data/images/Category/ssd-tnc-300x300.png', NULL, N'<div class="description">
<p><img src="https://tncstore.cdn.vccloud.vn/image/catalog/ssd-ocung.png" style="float:right; width:156px" /></p>

<h2 style="text-align:justify"><strong><span style="font-size:18px">Ổ Cứng SSD - Ổ cứng thể rắn (Solid State Drive )</span></strong></h2>

<p>&nbsp;</p>

<p style="text-align:justify">Trong những năm gần đ&acirc;y, dung lượng của ổ cứng thể rắn (<strong>SSD</strong> &ndash; Solid State Drives) đ&atilde; tăng l&ecirc;n kh&aacute; nhiều c&ugrave;ng với gi&aacute; th&agrave;nh đ&atilde; giảm xuống, khiến cho loại sản phẩm n&agrave;y c&oacute; thể được tiếp cận dễ d&agrave;ng hơn đối với người d&ugrave;ng hơn bao giờ hết. Hiệu năng m&agrave; những chiếc ổ thể rắn n&agrave;y đem lại l&agrave; cao hơn rất nhiều nếu so với ổ cứng cơ truyền thống, đem đến khả năng lưu trữ tin cậy cho cả m&aacute;y t&iacute;nh b&agrave;n lẫn m&aacute;y t&iacute;nh x&aacute;ch tay. Ch&uacute;ng cũng c&oacute; k&iacute;ch thước nhỏ hơn, v&agrave; kh&ocirc;ng c&oacute; th&agrave;nh phần chuyển động n&agrave;o, khiến ch&uacute;ng kh&aacute; bền vững nếu như bạn phải đem m&aacute;y đi nhiều. Đ&acirc;y l&agrave; lựa chọn ho&agrave;n hảo cho game thủ, những người d&ugrave;ng hiệu năng cao, họ đ&ograve;i hỏi thời gian khởi động m&aacute;y nhanh v&agrave; chạy game với tốc độ cực cao.&nbsp;</p>

<h3 style="text-align:justify"><strong><span style="font-size:14px">Tại sao n&ecirc;n lựa chọn SSD - ổ cứng thể rắn ?</span></strong></h3>

<p style="text-align:justify">Như đ&atilde; n&oacute;i ở tr&ecirc;n, ổ cứng thể rắn c&oacute; một số lợi thế đ&aacute;ng kể nếu như so với ổ cứng cơ truyền thống. Việc sử dụng c&aacute;c chip nhớ, thay v&igrave; c&aacute;c bộ phận chuyển động. Dữ liệu được lưu tr&ecirc;n chip nhớ một c&aacute;ch nhanh ch&oacute;ng. Việc nhận v&agrave; gửi được diễn ra với một tỉ lệ rất cao.&nbsp;</p>

<p style="text-align:justify">Bởi v&igrave; ổ thể rắn kh&ocirc;ng c&oacute; bộ phận chuyển động n&agrave;o, n&ecirc;n tốc độ sẽ cao hơn đ&aacute;ng kể so với ổ cứng cơ. Khởi động v&agrave;o hệ điều h&agrave;nh sẽ nhanh hơn rất nhiều, c&oacute; thể gần như tức th&igrave;. V&agrave; kh&ocirc;ng như <strong><a href="http://www.tncstore.vn/linh-kien-pc/ram.html">RAM</a></strong>, c&aacute;c chip nhớ trong ổ cứng thể rắn c&oacute; thể lưu trữ dữ liệu ngay cả khi kh&ocirc;ng c&ograve;n nhận được điện năng v&agrave;o.&nbsp;</p>

<p style="text-align:justify">N&acirc;ng cấp l&ecirc;n một ổ cứng thể rắn, sẽ gi&uacute;p cho hệ thống của bạn hoạt động nhanh hơn v&agrave; tạo ra &iacute;t tiếng ồn hơn. Đ&acirc;y l&agrave; một c&aacute;ch cải thiện hiệu năng m&aacute;y t&iacute;nh phổ biến, được nhiều người &aacute;p dụng hiệu quả. Th&ecirc;m v&agrave;o đ&oacute;, ổ cứng thể rắn cũng hoạt động với nhiệt độ thấp hơn đ&aacute;ng kể nếu so với ổ cứng cơ truyền thống.</p>

<h3 style="text-align:justify"><strong><span style="font-size:14px">C&aacute;c loại ổ cứng SSD</span></strong></h3>

<p style="text-align:justify">Tr&ecirc;n thị trường hiện nay, c&oacute; một số loại ổ thể rắn <strong><a href="http://www.tncstore.vn/linh-kien-pc/ssd-o-the-ran.html">SSD</a></strong> kh&aacute;c nhau, ph&ugrave; hợp với từng trường hợp sử dụng kh&aacute;c nhau. Dưới đ&acirc;y, sẽ l&agrave; liệt k&ecirc; v&agrave; giải th&iacute;ch cụ thể về từng loại ổ kh&aacute;c nhau, để bạn c&oacute; thể lựa chọn ổ cứng n&agrave;o ph&ugrave; hợp nhất với hệ thống m&aacute;y t&iacute;nh của m&igrave;nh.</p>

<p style="text-align:justify"><strong>- Ổ SSD SATA truyền thống (SATA SSD):</strong> Đ&acirc;y l&agrave; ti&ecirc;u chuẩn th&ocirc;ng thường đối với ổ cứng của laptop v&agrave; cả ổ cứng của m&aacute;y b&agrave;n. Với k&iacute;ch thước 2.5 inch, k&iacute;ch thước nhỏ hơn so với ổ cứng cơ truyền thống &ndash; 3.5 inch; v&agrave; đ&ocirc;i khi sẽ đ&ograve;i hỏi một khay chuyển đổi (caddy bay) để c&oacute; thể sử dụng được đối với một số hệ thống nhất định.&nbsp;</p>

<p style="text-align:justify"><strong>- Ổ cứng mSATA (mSATA SSD):</strong> Ti&ecirc;u chuẩn mSATA gi&uacute;p cho việc lắp đặt ổ <strong>SSD</strong> ở laptop hay c&aacute;c m&aacute;y t&iacute;nh netbook cỡ nhỏ c&oacute; thể thực hiện được, nơi m&agrave; kh&ocirc;ng gian bị hạn chế. Đ&acirc;y l&agrave; c&aacute;c ổ m&agrave; kh&ocirc;ng c&oacute; vỏ b&ecirc;n ngo&agrave;i, k&iacute;ch thước từ đ&oacute; c&ograve;n c&oacute; thể nhỏ hơn nữa. C&aacute;c ổ n&agrave;y c&oacute; thể kết nối th&ocirc;ng qua giao tiếp PCI-Express hoặc SATA, v&agrave; đ&ocirc;i khi bạn sẽ cần adapter để c&oacute; thể thực hiện chuyển đổi giữa c&aacute;c giao tiếp.</p>

<p style="text-align:justify"><strong>- Ổ cứng M.2 (M.2 SSD):</strong> Đọc như sau &ldquo;Mờ chấm 2&rdquo;. Đ&acirc;y được coi l&agrave; ti&ecirc;u chuẩn mới, ra đời để thay thế ổ mSATA. Điểm hay của chuẩn n&agrave;y, đ&oacute; l&agrave; việc c&oacute; c&aacute;c th&ocirc;ng số kỹ thuật cụ thể v&agrave; ph&ugrave; hợp hơn, từ đ&oacute; hiệu năng tăng l&ecirc;n rất đ&aacute;ng kể so với chuẩn mSATA cũ hơn. C&aacute;c ổ thể rắn chuẩn n&agrave;y c&oacute; thể được sử dụng ở cả m&aacute;y t&iacute;nh x&aacute;ch tay cũng như m&aacute;y t&iacute;nh để b&agrave;n th&ocirc;ng thường. Kết nối với m&aacute;y qua cổng giao tiếp M.2 đặc th&ugrave; v&agrave; chạy với tốc độ bus PCI-Express.</p>

<p style="text-align:justify"><strong>- Ổ cứng PCI-Express (PCI-Express SSD): </strong>C&aacute;c ổ thể rắn chuẩn PCI-Express đều v&ocirc; c&ugrave;ng mạnh mẽ với tốc độ đọc/ghi rất cao, kết nối trực tiếp th&ocirc;ng qua khe mở rộng PCI-Express. Những ổ n&agrave;y vẫn c&oacute; gi&aacute; kh&aacute; cao, nhưng đem lại hiệu năng tốt nhất cho cả m&aacute;y t&iacute;nh để b&agrave;n v&agrave; m&aacute;y t&iacute;nh x&aacute;ch tay.&nbsp;</p>

<div>&nbsp;</div>
</div>
', 2, NULL, NULL, CAST(N'2020-12-01 04:09:34.263' AS DateTime), N'quang', NULL, NULL, 1, 3)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (11, N'Mainboard - Bo mạch chủ', N'mainboard-bo-mach-chu', N'/Data/images/Category/main-tnc-300x300.png', NULL, NULL, 3, CAST(N'2020-12-01 04:09:14.197' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 3)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (12, N'RAM - Bộ nhớ trong', N'ram-bo-nho-trong', N'/Data/images/Category/ram-tnc-300x300.png', NULL, NULL, 4, CAST(N'2020-12-01 04:10:21.227' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 3)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (13, N'Ổ cứng HDD', N'o-cung-hdd', N'/Data/images/Category/hdd-tnc-300x300.png', NULL, N'<div class="description">
<h3><strong><span style="font-size:14px">Ổ cứng HDD (Hard Disk Drive &ndash; HDD)</span></strong></h3>
<img src="https://tncstore.cdn.vccloud.vn/image/catalog/HDD/Untitled-1.jpg" style="float:right; width:512px" />
<p>Bạn c&oacute; thể t&igrave;m thấy <strong>ổ cứng cơ</strong> (HDD) ở bất cứ m&aacute;y t&iacute;nh n&agrave;o. Đ&acirc;y l&agrave; loại thiết bị ch&iacute;nh được sử dụng với mục đ&iacute;ch lưu trữ. Mọi dữ liệu tr&ecirc;n m&aacute;y đều được lưu ở đ&acirc;y để phục vụ cho mục đ&iacute;ch sử dụng v&agrave; lưu trữ.&nbsp;</p>

<p>N&acirc;ng cấp <strong>ổ cứng cơ</strong> l&agrave; một c&aacute;ch đơn giản v&agrave; nhanh ch&oacute;ng để gia tăng kh&ocirc;ng gian lưu trữ cho m&aacute;y t&iacute;nh của bạn. V&agrave; một điều cần lưu &yacute;, thay một ổ cứng mới cho một ổ đ&atilde; c&oacute; dấu hiệu hỏng h&oacute;c v&agrave; xuống cấp cũng sẽ cải thiện hiệu năng đ&aacute;ng kể cho m&aacute;y t&iacute;nh của bạn.</p>

<p>Dưới đ&acirc;y l&agrave; những loại ổ cứng cơ phổ biến tr&ecirc;n thị trường:</p>

<h3><span style="font-size:14px">- </span><strong><span style="font-size:14px">Ổ cứng m&aacute;y t&iacute;nh b&agrave;n (Desktop HDD)</span></strong></h3>

<p>Đ&acirc;y l&agrave; loại <strong>ổ cứng</strong> phổ biến nhất hiện nay, hiện c&oacute; với một số k&iacute;ch thước kh&aacute;c nhau, tuy nhi&ecirc;n chiếm đa số vẫn l&agrave; k&iacute;ch thước 3.5 inch. Đ&acirc;y l&agrave; loại bộ nhớ lưu trữ thụ động (non-volatile memory), tức l&agrave; dữ liệu lưu trữ tr&ecirc;n đ&oacute; sẽ được lưu lại cho d&ugrave; thiết bị c&oacute; bật hay kh&ocirc;ng. Từ đ&oacute;, đ&acirc;y l&agrave; một h&igrave;nh thức lưu trữ an to&agrave;n v&agrave; bảo mật.</p>

<h3><span style="font-size:14px">- </span><strong><span style="font-size:14px">Ổ cứng m&aacute;y t&iacute;nh x&aacute;ch tay (Notebook HDD)</span></strong></h3>

<p>Ổ cứng d&agrave;nh cho m&aacute;y t&iacute;nh x&aacute;ch tay c&oacute; kh&aacute; nhiều điểm tương đồng với ổ cứng cho m&aacute;y t&iacute;nh để b&agrave;n đ&atilde; đề cập ở tr&ecirc;n, điểm kh&aacute;c biệt r&otilde; r&agrave;ng nhất ch&iacute;nh l&agrave; k&iacute;ch thước. Khi mua sắm. bạn cần lưu &yacute; vấn đề k&iacute;ch thước để kh&ocirc;ng bị nhầm lẫn.</p>
</div>
', 5, CAST(N'2020-12-01 04:11:21.073' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 3)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (14, N'VGA - Card màn hình', N'vga-card-man-hinh', N'/Data/images/Category/vga-tnc-300x300.png', NULL, N'<div class="description"><div><h2><img src="https://tncstore.cdn.vccloud.vn/image/catalog/banner/tnc-vga-icon.jpg" style="width: 250px; float: right;"><font face="Helvetica"><span style="font-size: 18px;"><b>VGA - Card Màn Hình (Graphics Card – GPU)</b></span></font></h2></div><div><br></div><div style="text-align: justify;"><span style="white-space: pre;"></span><font face="Helvetica"><span style="font-size: 14px;">Một chiếc <b>card màn hình</b> (Graphics Card – GPU) là một thành phần không thể thay thế trong bất cứ máy tính nào. Thông thường, <b>card đồ họa máy tính</b> sẽ được chia thành hai loại. Thứ nhất, card đồ họa tích hợp bên trong bo mạch chủ hoặc trong <b>CPU</b>, hoạt động bằng cách sử dụng một phần bộ nhớ hệ thống để xử lý dữ liệu hình ảnh. Gần đây, có sự tiến bộ rõ rệt khi mà sự xuất hiện của các bộ vi xử lý APU (Advanced Processing Unit), tích hợp CPU và GPU vào chung một chip, có thể tìm thấy trong các máy game console hoặc tại các bộ vi xử lý mới trong thời gian trở lại đây. Tuy vậy, các bộ vi xử lý APU vẫn thuộc phân khúc sản phẩm phổ thông/giá rẻ trong nền công nghiệp đồ họa máy tính hiện nay.</span></font></div><div style="text-align: justify;"><font face="Helvetica"><span style="white-space: pre; font-size: 14px;"></span><span style="font-size: 14px;">Đối với các game thủ thực thụ, thì việc sử dụng một chiếc card đồ họa rời vẫn là lựa chọn phù hợp hơn, đem lại tốc độ xử lý tốt hơn, tỉ lệ khung hình/giây cao hơn, độ phân giải hiển thị cao hơn, cũng như giảm tải bộ nhớ hệ thống <b><a href="http://www.tncstore.vn/ram">RAM</a></b> và <b><a href="http://www.tncstore.vn/cpu">CPU</a></b>. Các card đồ họa rời thường kết nối với máy tính thông qua cổng giao tiếp PCI-Express hoặc AGP. Thậm chí, có thể chạy song song nhiều card đồ họa cùng lúc thông qua bus PCI-Express có trên bo mạch chủ hoặc qua một cầu nối dữ liệu.</span></font></div><div style="text-align: justify;"><font face="Helvetica"><span style="white-space: pre; font-size: 14px;"></span><span style="font-size: 14px;">Thành phần cơ bản của một chiếc card đồ họa bao gồm 2 phần: chip xử lý đồ họa (GPU) và bộ nhớ đồ họa (Video RAM). Tuy nhiên, khác với card đồ họa tích hợp, thì các sản phẩm card đồ họa rời có thông số kỹ thuật vượt trội ở cả 2 phần trên. Những người có niềm đam mê với game sẽ cần sức mạnh bổ sung đáng giá này để có thể theo kịp với xu hướng, khi mà những bước tiến cả về mặt phần cứng và phần mềm đã tăng cao nhanh chóng. Ngoài ra, bạn có thể tìm thấy trên card đồ họa những thành phần khác như bộ phận tản nhiệt, bộ phận làm mát, RAMDAC (Random Access Memory Digital-Analogue Converter), một số cổng ra màn hình, cổng giao tiếp với bo mạch chủ, chip BIOS chưa firmware của card đồ họa.</span></font></div><div style="text-align: justify;"><span style="white-space: pre; font-size: 14px;"></span><font face="Helvetica"><span style="font-size: 14px;">Về cơ bản, <b>card đồ họa máy tính</b> sẽ xử lý tín hiệu hình ảnh rồi sau đó xuất ra màn hình thông qua các giao tiếp khác nhau. Các cổng này kết nối trực tiếp với màn hình của bạn, cho nên việc lựa chọn giao tiếp đúng sẽ phụ thuộc nhiều vào chiếc màn hình cũng như chất lượng bạn muốn thể hiện lên trên màn hình đó. Một số card màn hình cũng sẽ cho phép bạn kết nối nhiều màn hình cùng lúc. Dưới đây là những chuẩn kết nối màn hình phổ biến</span></font></div><div style="text-align: justify;"><font face="Helvetica"><br></font></div><div style="text-align: justify;"><font face="Helvetica"><span style="font-size: 14px;"><b>+ Video Graphics Array (VGA/D-sub):</b> Công nghệ đã xuất hiện từ những năm 1980, tuy nhiên có khá nhiều điểm hạn chế. Chất lượng hiển thị có thể suy giảm nhanh chóng vì nhiều lý do như: chất lượng và chiều dài của dây tín hiệu, mức độ nhiễu điện, hiện tượng vỡ ảnh, hiện tượng lỗi mẫu cũng có thể xảy ra.</span></font></div><div style="text-align: justify;"><font face="Helvetica"><span style="font-size: 14px;"><b>+ Digital Visual Interface (DVI):</b> Được sử dụng cho màn hình phẳng, như LCD, plasma, các màn hình rộng có độ phân giải cao, máy chiếu. DVI có một lợi thế, đó là tránh được các hiện tượng nhòe hình kĩ thuật số cũng như nhiễu điện bằng cách sử dụng độ phân giải thực để thể hiện hình ảnh trực tiếp từ máy tính lên màn hình.</span></font></div><div style="text-align: justify;"><font face="Helvetica"><span style="font-size: 14px;"><b>+ High-Definition Multimedia Interface (HDMI):</b> Giao thức audio/video gọn nhẹ dùng để chuyển dữ liệu hình ảnh đến bất cứ thiết bị nào tương thích với chuẩn HDMI. Dữ liệu đó có thể là không nén hoặc các chuẩn dữ liệu chưa/đã nén, và đã trở thành tiêu chuẩn kỹ thuật số thay thế các giao tiếp analog cũ lạc hậu.</span></font></div><div style="text-align: justify;"><font face="Helvetica"><span style="font-size: 14px;"><b>+ DisplayPort:</b> Tiêu chuẩn này được hiệp hội VESA (Video Electronics Standard Association) phát triển, được sử dụng chủ yếu làm giao tiếp kết nối màn hình máy tính hiện nay. Mậc dù được thiết kế để thay thế VGA, DVI và DisplayPort hoàn toàn có thể tương thích thông qua việc sử dụng adapter.&nbsp;</span></font></div><div style="text-align: justify;"><font face="Helvetica"><span style="font-size: 14px;"><b>- Giao thức với bo mạch chủ</b></span></font></div><div style="text-align: justify;"><font face="Helvetica"><span style="font-size: 14px;">Qua rất nhiều năm, các kết nối giữa card đồ họa và bo mạch chủ đã có những thay đổi khá đáng kể. Tiêu chuẩn kết nối đầu tiên xuất hiện mang tên S-100 vào năm 1974. Tuy nhiên, phải đến khi chuẩn PCI được ra đời vào năm 1993, lúc này tốc độ mới được tăng lên đáng kể, giúp sức cho <b>card đồ họa rời</b> phát triển mạnh mẽ như những gì chúng ta biết ngày hôm nay. Một số bước phát triển quan trọng có thể nhắc đến như tiêu chuẩn AGP (Accelerated Graphics Port), cùng với các tiêu chuẩn ra đời sau này của PCI, bao gồm PCI-X và PCI-Express – tiêu chuẩn chính và phổ biến nhất hiện tại.</span></font></div><div style="text-align: justify;"><font face="Helvetica"><span style="font-size: 14px;"><b>- Lựa chọn một chiếc card dồ họa hợp lý ?&nbsp;</b></span></font></div><div style="text-align: justify;"><font face="Helvetica"><span style="font-size: 14px;">Làm thế nào để mua một card đồ họa vừa hợp lý với túi tiền bạn đang có, và có thể đáp ứng được những ứng dụng cần thiết đôi khi có thể hơi khó khăn một chút. Có thể nói nhanh như sau, việc so sánh thông số card tương ứng một cách sơ đẳng qua không phải là một cách thật sự hiệu quả, và đôi khi thông số của GPU và VRAM có thể đem lại cho bạn một số thông tin cơ bản, nhưng chúng cũng có thể gây hiểu nhầm. Một só thông tin cho rằng lựa chọn nhãn hiệu nào cũng mang tính khá chủ quan và không thật sự là thông tin tin cậy để xem card đồ họa có hiệu năng như thế nào. Vì vậy, đừng quá bị cuốn vào những cuộc cãi vã <b>NVIDIA</b> vs <b>AMD</b>, mà hãy xem xét những điểm quan trọng sau khi bạn đã sẵn sàng bỏ tiền ra mua sản phẩm:</span></font></div><div style="text-align: justify;"><font face="Helvetica"><span style="font-size: 14px;">+ Tỉ lệ giá thành/hiệu năng: Thông thường, những chiếc <b>card đồ họa</b> mạnh nhất sử dụng các chip xử lý đồ họa mới nhất sẽ đem lại cho bạn khả năng chơi game tốt nhất trong việc chơi game. Tuy nhiên, nếu bạn chơi các tựa game không đòi hỏi quá nhiều sức mạnh đồ họa, như Minecraft chẳng hạn, thì số tiền lớn chi cho <b>card đồ họa</b> mới ra đời sẽ thật sự không hợp lý và cần thiết. Cân bằng được tỉ lệ giá thành/hiệu năng so với nhu cầu chơi game của bạn, từ đó bán sẽ tìm được chiếc card phù hợp nhất.</span></font></div><div style="text-align: justify;"><font face="Helvetica"><span style="font-size: 14px;">+ Ép xung và tản nhiệt nước: Nếu bạn thật sự muốn gia tăng sức mạnh lên một mức mới, thì có lẽ bạn nên xem xét khả năng ép xung và/hoặc dùng tản nhiệt nước của chiếc card đồ họa mình định mua. Hầu hết các card reference, đến từ <b>NVIDIA</b> hoặc <b>AMD</b>, sẽ có được khả năng đó. Điều này là trái ngược so với những chiếc card đến từ hãng sản xuất thứ 3, khi họ cung cấp phần cứng và hệ thống tản nhiệt do chính họ thiết kế và tạo ra.&nbsp;</span></font></div><div style="text-align: justify;"><font face="Helvetica"><span style="font-size: 14px;"><b>+ Kích thước và mức độ tiêu thụ điện năng:</b> Cho dù bạn nâng cấp chiếc máy tính sẵn có, hay xây dựng một chiếc hoàn toàn mới, hãy chắc chắn rằng mình lựa chọn <b>VGA</b> vừa vặn với case và không làm cho nguồn máy tính bị quá tải, đó là điều khá dễ hiểu. Tuy nhiên, luôn là hữu ích khi xem xét lại kích thước cũng như công suất nguồn trước khi bạn bỏ tiền ra mua một chiếc <b>card đồ họa</b>.</span></font></div><div style="text-align: justify;"><font face="Helvetica"><span style="font-size: 14px;"><b>+ Độ ổn định và độ tương thích:</b> Mức độ ổn định của card màn hình phụ thuộc vào khá nhiều yếu tố, và cũng có thể liên kết được với phần mềm mà bạn sử dụng. Mỗi thế hệ card đồ họa sẽ hỗ trợ từng phiên bản khác nhau của DirectX. Điều đó có nghĩa là, nếu bạn muốn chạy game mới nhất với một chiếc <b>VGA</b> cũ hơn, thì đồ họa hiển thị sẽ bị hạn chế, thậm chí trong một số trường hợp, game sẽ không chạy được.</span></font></div><div style="text-align: justify;"><font face="Helvetica"><span style="font-size: 14px;"><b>+ Giao thức và kết nối màn hình:</b> Chọn một chiếc card đồ họa để phù hợp với khả năng hiển thị màn hình thường sẽ khá đơn giản. Tuy nhiên, công nghệ phát triển khá nhanh, và với sự xuất hiện các công nghệ như 3D, </span><span style="font-size: 14px;">4K, thực tế ảo VR, có lẽ tốt hơn là chuẩn bị trước cho tương lai sau này. Thêm vào đó, một số card đồ họa còn hỗ trợ việc xuất đa màn hình cho một trải nghiệm chơi game đậm chất “ngầu”.</span></font></div><div style="text-align: justify;"><font face="Helvetica"><span style="font-size: 14px;"><b>+ Các ứng dụng không phải là game:</b> Hầu hết các hãng sản xuất lớn đều có hỗ trợ cho các ứng dụng không phải là game như thiết kế với sự trợ giúp của máy tính (CAD – Computer Aided Design), chỉnh sửa video, thiết kế đồ họa. Những card này được tối ưu hóa cho từng ứng dụng, và chọn ra sao cho hợp lý sẽ phụ thuộc và chức năng nào mà bạn đang cần.</span></font></div><div style="text-align: justify;"><br></div></div>', 6, CAST(N'2020-12-01 04:12:38.973' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 3)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (15, N'Case - Vỏ máy tính ', N'case-vo-may-tinh', N'/Data/images/Category/case-tnc-300x300.png', NULL, NULL, 7, CAST(N'2020-12-01 04:13:29.473' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 3)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (16, N'PSU - Nguồn máy tính', N'psu-nguon-may-tinh', N'/Data/images/Category/psu-tnc-300x300.png', NULL, NULL, NULL, CAST(N'2020-12-01 04:14:33.850' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 3)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (17, N'Màn Hình Gaming ', N'man-hinh-gaming', N'/Data/images/Category/man-hinh-gaming-300x300.png', NULL, N'<div class="description"><p><img src="https://www.tncstore.vn/image/catalog/banner/2020/T11/danh-muc-man-hinh-gaming-tnc.jpg" style="width: 25%; float: left;"><b>Màn hình Gaming - Người bạn đồng hành tri kỷ của game thủ&nbsp;</b></p><p>Có thể nói màn hình chính là một trong những trợ thủ đắc lực nhất của các gamer. Một cấu hình PC Gaming hiệu năng mạnh mẽ nhưng đi kèm với nó là <b>màn hình gaming</b> chất lượng thấp thì trải nghiệm của anh em chắc chắn sẽ bị ảnh hưởng rất nhiều.&nbsp;<br></p><p><b>Thiết kế</b><br></p><p>Các <b>màn hình gaming</b> thường có thiết kế khá riêng biệt, đậm cá tính. Tuỳ thuộc vào góc học tập và sở thích của anh em mà có thể lựa chọn các mẫu <b>màn hình gaming</b> đến từ các hãng sản xuất khác nhau. Đến với <b>TNC Store</b>, anh em sẽ có rất nhiều lựa chọn <b>màn hình gaming</b> khác nhau với đủ các thương hiệu lớn, uy tín như MSI, Asus, Gigabyte, Samsung... và tất cả sản phẩm đều chính hãng, 100% brand new, được đóng gói cẩn thận từ nhà sản xuất.</p><p><b>Kích thước màn hình</b><br></p><p>Tùy thuộc vào nhu cầu sử dụng của anh em mà sẽ có những sự lựa chọn kích thước màn hình khác nhau. Nếu anh em có sở thích chơi game, muốn try hard, chơi chuyên nghiệp thì kích thước từ 30 inch đổ xuống là phù hợp. Còn anh em xác định chơi game giải trí, thư giãn, ngoài ra còn có thể xem phim, làm video… thì có thể lựa chọn các <b>màn hình gaming</b> kích thước lớn hơn.</p><p><b>Tỷ lệ màn hình</b><br></p><p>Hiện nay có hai tỷ lệ phổ biến đó là 16:9 và 21:9. Trong đó 16:9 là tỷ lệ cơ bản nhất. Anh em game thủ muốn try hard, theo con đường chuyên nghiệp thì tỷ lệ 16:9 chính là bí quyết giành chiến thắng trên chiến trường. Tỷ lệ 21:9 phù hợp với các tựa game phiêu lưu, cốt truyện, đậm chất cinematic. Nếu anh em muốn một chiếc màn hình độc, lạ thì các <b>màn hình gaming</b> tỷ lệ 32:9 chính là sản phẩm đáng để sở hữu.</p><p><b>Độ phân giải.</b><br></p><p>Những chiếc <b>màn hình gaming</b> FULL HD hiện nay đều có giá thành rẻ hơn trước rất nhiều nên rất thích hợp với phần đông game thủ. Tuy nhiên, với những chiếc PC Gaming có hiệu năng khủng, trang bị card đồ hoạ thế hệ mới nhất thì việc sắm các màn hình độ phân giải 2K, 4K là cần thiết để tận dụng hết sức mạnh của bộ Gaming PC.&nbsp;</p><p><b>Tấm nền</b><br></p><p>Với nhu cầu chơi game giải trí, thư giãn sau những giờ làm việc căng thẳng thì các <b>màn hình gaming</b> sử dụng tấm nền IPS có khả năng hiển thị màu sắc tuyệt vời sẽ mang lại trải nghiệm tốt nhất cho anh em. Song song với đó, các <b>màn hình gaming</b> tấm nền VA và TN sẽ giúp các em game thủ muốn tiến tới thi đấu chuyên nghiệp lợi thế lớn nhờ tốc độ phản hồi nhanh. Ngoài ra, khi mua các <b>màn hình gaming</b> tại <b>TNC Store</b>, anh em sẽ được hỗ trợ cân màu màn hình hoàn toàn miễn phí!&nbsp;</p><p><b>Tần số quét</b></p><p>Khác với các màn hình thông thường, các nhà sản xuất thường chú ý tới tần số quét trên <b>màn hình gaming</b>. Việc lựa chọn màn hình có tần số quét phù hợp là rất quan trọng. Có rất nhiều anh em sử dụng màn hình có tần số quét không đáp ứng được hiệu năng từ các card đồ hoạ, khiến trải nghiệm gaming bị ảnh hưởng khá nhiều. Chính vì vậy nên các bộ PC Gaming tại <b>TNC Store</b> đều có phần test hiệu năng chơi game thực tế nhằm giúp anh em tìm ra được chiếc màn hình gaming ưng ý nhất.&nbsp;</p><p><b>Công nghệ tích hợp</b><br></p><p>Thêm vào đó, các <b>màn hình Gaming</b> chuyên biệt được nhà sản xuất trang bị thêm các tính năng như G-Sync, FreeSync, Motion Blur… G-Sync (của NVIDIA), FreeSync (của AMD) là công nghệ chống xé hình, giúp các khung hình được GPU xuất ra đồng bộ với tần số quét của <b>màn hình gaming</b>, đem lại trải nghiệm khi chơi game tuyệt vời nhất. Một điểm lưu ý đó là các <b>màn hình gaming</b> G-Sync chỉ thích hợp với các card đồ họa NVIDIA do dùng module độc quyền nên anh em cần xem xét kỹ lưỡng trước khi mua sắm. Do FreeSync là công nghệ không sử dụng module độc quyền nên được tích hợp khá rộng rãi, ngay cả trên những chiếc <b>màn hình gaming</b> giá rẻ. Do đó nên FreeSync khó có thể hoạt động một cách hoàn hảo như G-Sync. Công nghệ Motion Blur (tạo các vệt mờ khi chuyển động) rất thích hợp nến anh em chơi các tựa game như đua xe. Tuy nhiên, với game thủ bắn súng, cần độ chính xác cao thì các <b>màn hình gaming</b> có công nghệ Motion Blur thực sự khá phiền toái.</p><div><br></div></div>', 1, CAST(N'2020-12-01 04:15:39.507' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 4)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (18, N'Màn Hình Văn Phòng ', N'man-hinh-van-phong', N'/Data/images/Category/man-hinh-van-phong-300x300.png', NULL, NULL, 2, CAST(N'2020-12-01 04:16:09.923' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 4)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (19, N'Màn Hình Đồ Họa', N'man-hinh-do-hoa', N'/Data/images/Category/man-hinh-do-hoa-a-300x300.png', NULL, N'<div class="description">
<p><img src="https://www.tncstore.vn/image/catalog/banner/2020/T11/danh-muc-man-hinh-do-hoa-tnc.jpg" style="float:left; width:25%" /><strong>M&agrave;n h&igrave;nh Đồ hoạ - Giải ph&aacute;p tuyệt vời cho c&aacute;c nh&agrave; thiết kế</strong></p>

<p>Được coi l&agrave; c&aacute;nh tay phải đắc lực trong c&ocirc;ng việc, c&aacute;c m&agrave;n h&igrave;nh đồ hoạ c&oacute; vai tr&ograve; rất quan trọng đối với người d&ugrave;ng l&agrave; d&acirc;n thiết kế, creator, dựng phim... Kh&aacute;c với m&agrave;n h&igrave;nh th&ocirc;ng thường, m&agrave;n h&igrave;nh đồ hoạ đ&ograve;i hỏi y&ecirc;u cầu cao hơn về m&agrave;u sắc, chất lượng h&igrave;nh ảnh, độ sắc n&eacute;t cũng như độ ph&acirc;n giải.&nbsp;</p>

<p><strong>Chất lượng m&agrave;u sắc&nbsp;</strong></p>

<p>Đ&acirc;y l&agrave; yếu tố quan trọng đầu ti&ecirc;n về một chiếc m&agrave;n h&igrave;nh đồ hoạ tốt. Do đặc th&ugrave; c&ocirc;ng việc n&ecirc;n muốn c&oacute; kết quả tốt th&igrave; h&igrave;nh ảnh phải được hiển thị một c&aacute;ch ch&acirc;n thực nhất. M&agrave;u của h&igrave;nh ảnh khi in ra phải giống với m&agrave;u được hiển thị tr&ecirc;n m&agrave;n h&igrave;nh cho d&acirc;n đồ hoạ.Do đ&oacute; n&ecirc;n c&aacute;c m&agrave;n h&igrave;nh đồ hoạ tốt thường đ&aacute;p ứng ti&ecirc;u chuẩn từ 97% sRGB trở l&ecirc;n, sở hữu dải m&agrave;u rộng. Kh&ocirc;ng chỉ vậy, độ sai lệch m&agrave;u Delta E&nbsp; tr&ecirc;n những m&agrave;n h&igrave;nh đồ họa chất lượng cao thường nhỏ hơn hoặc bằng 2, cho độ ch&acirc;n thực rất cao. Kh&ocirc;ng chỉ vậy, anh em designer, nhiếp ảnh gia khi mua m&agrave;n h&igrave;nh đồ họa sẽ được c&acirc;n m&agrave;u ho&agrave;n to&agrave;n miễn ph&iacute;.</p>

<p><strong>Tấm nền</strong></p>

<p>Tiếp đến ch&iacute;nh l&agrave; tấm nền IPS sẽ mang lại khả năng hiển thị m&agrave;u sắc tuyệt vời, đồng thời gi&uacute;p m&agrave;u tr&ecirc;n m&agrave;n h&igrave;nh đồ hoạ được giữ nguy&ecirc;n khi thay đổi g&oacute;c nh&igrave;n kh&aacute;c ch&iacute;nh diện. Hơn nữa, với tấm nền IPS th&igrave; c&aacute;c hiệu ứng, độ s&aacute;ng tối được hiển thị r&otilde; n&eacute;t. Đến với TNC Store, anh em sẽ c&oacute; rất nhiều lựa chọn m&agrave;n h&igrave;nh đồ họa kh&aacute;c nhau với đủ c&aacute;c thương hiệu lớn, uy t&iacute;n như Dell, ViewSonic, Asus, LG&hellip; v&agrave; tất cả sản phẩm đều ch&iacute;nh h&atilde;ng, 100% brand new, được đ&oacute;ng g&oacute;i cẩn thận từ nh&agrave; sản xuất.</p>

<p><strong>K&iacute;ch thước m&agrave;n h&igrave;nh</strong></p>

<p>Ngo&agrave;i khả năng hiển thị m&agrave;u sắc, m&agrave;n h&igrave;nh đồ hoạ cũng cần c&oacute; k&iacute;ch thước đủ lớn nhằm mang lại kh&ocirc;ng gian l&agrave;m việc thoải m&aacute;i, gi&uacute;p tăng hiệu quả trong c&ocirc;ng việc. C&aacute;c m&agrave;n h&igrave;nh đồ hoạ tại TNC Store thường c&oacute; k&iacute;ch thước từ 27 inch trở l&ecirc;n,&nbsp; cho trải nghiệm khi sử dụng rất tuyệt vời.</p>

<p><strong>Độ ph&acirc;n giải</strong></p>

<p>Ti&ecirc;u ch&iacute; tiếp theo anh em trong nghề cần quan t&acirc;m đến ch&iacute;nh l&agrave; độ ph&acirc;n giải. Phần đ&ocirc;ng người d&ugrave;ng khi mới bắt đầu bước ch&acirc;n v&agrave;o lĩnh vực thiết kế thường lựa chọn cho m&igrave;nh c&aacute;c m&agrave;n h&igrave;nh đồ hoạ k&iacute;ch thước 27 inch c&ugrave;ng độ ph&acirc;n giải Full HD (1920x1080). Tuy vậy, với sự ph&aacute;t triển c&ocirc;ng nghệ nhanh ch&oacute;ng th&igrave; c&aacute;c m&agrave;n h&igrave;nh đồ hoạ c&oacute; độ ph&acirc;n giải 2K (2560x1440), 4K (3840x2160) đang ng&agrave;y một trở n&ecirc;n phổ biến hơn. Độ ph&acirc;n giải cao đồng nghĩa với m&agrave;n h&igrave;nh đồ hoạ sẽ c&oacute; nhiều điểm ảnh hơn, gi&uacute;p chất lượng h&igrave;nh ảnh ch&acirc;n thực v&agrave; sắc n&eacute;t hơn.</p>

<p><strong>Khả năng thay đổi g&oacute;c nh&igrave;n linh hoạt</strong></p>

<p>C&aacute;c nh&agrave; sản xuất cũng ch&uacute; &yacute; tới thiết kế c&oacute; thể xoay ngang hoặc dọc linh hoạt của m&agrave;n h&igrave;nh đồ hoạ. Do đặc th&ugrave; của c&ocirc;ng việc n&ecirc;n anh em designer đ&ocirc;i khi phải thay đổi g&oacute;c nh&igrave;n từ c&aacute;c hướng kh&aacute;c nhau để tinh chỉnh h&igrave;nh ảnh khi l&agrave;m đồ hoạ. Hơn nữa, với c&aacute;c loại m&agrave;n h&igrave;nh đồ hoạ c&oacute; ch&acirc;n đế tốt sẽ dễ d&agrave;ng t&ugrave;y biến vị tr&iacute; m&agrave;n h&igrave;nh, giảm thiểu t&igrave;nh trạng mỏi nhức khi l&agrave;m việc trong thời gian d&agrave;i. Số lượng cổng kết nối tr&ecirc;n m&agrave;n h&igrave;nh đồ hoạ cũng được ch&uacute; &yacute; tới. Anh em n&agrave;o l&agrave;m đồ họa chuy&ecirc;n nghiệp hẳn sẽ phải d&ugrave;ng nhiều hơn một m&agrave;n h&igrave;nh v&agrave; thường sản phẩm c&oacute; cổng Thunderbolt v&agrave; DisplayPort sẽ được ưa chuộng nhiều hơn.</p>

<p>&nbsp;</p>

<p><strong>C&ocirc;ng nghệ t&iacute;ch hợp</strong></p>

<p>Một chiếc m&agrave;n h&igrave;nh đồ hoạ tốt ngo&agrave;i hiệu năng v&agrave; chất lượng cao c&ograve;n được t&iacute;ch hợp c&aacute;c c&ocirc;ng nghệ gi&uacute;p bảo vệ mắt, gi&uacute;p anh em y&ecirc;n t&acirc;m l&agrave;m việc trong thời gian d&agrave;i. Do vậy n&ecirc;n&nbsp; tr&ecirc;n thị trường hiện nay, c&aacute;c nh&agrave; sản xuất phần cứng đ&atilde; bắt đầu ch&uacute; trọng t&iacute;ch hợp c&aacute;c c&ocirc;ng nghệ nhằm giảm thiểu c&aacute;c t&aacute;c hại g&acirc;y ra cho mắt như Reader Mode, LG Flicker Safe, chế độ Night light hay giảm &aacute;nh s&aacute;ng xanh&hellip;Ngo&agrave;i ra c&aacute;c m&agrave;n h&igrave;nh đồ hoạ c&oacute; những t&iacute;nh năng độc quyền, gi&uacute;p điều chỉnh c&aacute;c th&ocirc;ng số như đường cong gamma, nhiệt độ m&agrave;u, độ tương phản v&agrave; độ s&aacute;ng để ph&acirc;n phối trải nghiệm xem tối ưu h&oacute;a cho từng ho&agrave;n cảnh cụ thể như xem phim, chơi game, l&agrave;m đồ họa, thiết kế 3D...</p>
</div>
', 3, CAST(N'2020-12-01 04:17:05.970' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 4)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (20, N'Balo Gaming', N'balo-gaming', N'/Data/images/Category/balo-tnc-300x300.png', NULL, NULL, 1, CAST(N'2020-12-01 04:18:17.490' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 5)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (21, N'Bàn di chuột ', N'ban-di-chuot', N'/Data/images/Category/ban-di-chuot-300x300.png', NULL, NULL, 2, CAST(N'2020-12-01 04:18:49.170' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 5)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (22, N'Bàn phím Gaming', N'ban-phim-gaming', N'/Data/images/Category/ban-phim-co-300x300.png', NULL, NULL, 3, CAST(N'2020-12-01 04:19:22.373' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 5)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (23, N'Bàn, Ghế Game ', N'ban-ghe-game', N'/Data/images/Category/ghe-tnc-300x300.png', NULL, N'<div class="description">
<p>TNC Store- Chuy&ecirc;n cung cấp c&aacute;c sản phẩm ghế , b&agrave;n chơi game cao cấp. Hỗ trợ lắp đặt v&agrave; ship tận nh&agrave;.</p>
</div>
', 4, CAST(N'2020-12-01 04:20:47.580' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 5)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (24, N'Chuột Gaming', N'chuot-gaming', N'/Data/images/Category/chuot-gaming-tnc-300x300.png', NULL, NULL, 5, CAST(N'2020-12-01 04:21:56.147' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 5)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (25, N'Keycaps', N'keycaps', N'/Data/images/Category/keycap-tnc-300x300.png', NULL, NULL, 6, CAST(N'2020-12-01 04:23:20.667' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 5)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (26, N'MICROPHONE ', N'microphone', N'/Data/images/Category/microphone-tnc-300x300.png', NULL, NULL, 7, CAST(N'2020-12-01 04:24:21.267' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 5)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (27, N'Tai Nghe Gaming', N'tai-nghe-gaming', N'/Data/images/Category/headphone-tnc-300x300%20(1).png', NULL, N'<div class="description">
<p style="margin-left:25px"><strong><span style="font-size:14px">Tai nghe chơi game (Gaming Headset)</span></strong>&nbsp;<br />
Kh&ocirc;ng một hệ thống <em><a href="https://www.tncstore.vn/gaming-pc.html">m&aacute;y t&iacute;nh chơi game</a></em> n&agrave;o l&agrave; ho&agrave;n chỉnh nếu như kh&ocirc;ng c&oacute; sự hiện diện của một chiếc <em><a href="https://www.tncstore.vn/gaming-gear/tai-nghe-choi-game.html">tai nghe chơi game</a></em> chất lượng tốt. Với việc nhiều tr&ograve; chơi hiện nay đều đ&atilde; c&oacute; phần chơi online kết nối mạng, khi <img src="https://www.tncstore.vn/image/catalog/BAI VIET/tai nghe steelseries arctis pro + DAC/steelseries-arctis-pro-gamedac-sieu-pham-tai-nghe-dap-ung-moi-nhu-cau-tncstore-30.jpg" style="float:right; width:50%" />m&agrave; mọi người c&oacute; thể gặp gỡ v&agrave; tr&ograve; chuyện với nhau v&agrave; c&ugrave;ng trải nghiệm thế giới game, th&igrave; việc sở hữu một chiếc<em> tai nghe chơi game</em> từ một phụ kiện, giờ đ&acirc;y đ&atilde; trở th&agrave;nh một thứ kh&ocirc;ng thể thiếu. Đ&acirc;y c&ograve;n l&agrave; một th&agrave;nh phần v&ocirc; c&ugrave;ng quan trọng, gi&uacute;p cho trải nghiệm chơi game th&ecirc;m ch&igrave;m đắm v&agrave; ch&acirc;n thật hơn. Dưới đ&acirc;y l&agrave; những yếu tố nổi bật bạn cần lưu &yacute; khi chọn mua một chiếc <em>tai nghe chơi game</em> ph&ugrave; hợp:<br />
<strong><span style="font-size:14px">- Chất lượng &acirc;m thanh (Sound Quality)</span></strong><br />
Đ&acirc;y l&agrave; yếu tố quan trọng h&agrave;ng đầu được xem x&eacute;t mỗi khi chọn mua một chiếc <em>tai nghe chơi game</em>. Chất lượng &acirc;m thanh đỉnh cao kh&ocirc;ng những gi&uacute;p bạn c&oacute; thể trải nghiệm được game ở mức độ tối đa nhất c&oacute; thể, m&agrave; c&ograve;n gi&uacute;p bạn c&oacute; được lợi thế &acirc;m thanh trong những cuộc thi đấu với việc nắm bắt được c&aacute;c &acirc;m thanh tương t&aacute;c v&agrave; m&ocirc;i trường xung quanh. Thậm ch&iacute;, một số game nhất định c&ograve;n c&oacute; những loại &acirc;m thanh đặc th&ugrave; như tiếng bước ch&acirc;n, tiếng s&uacute;ng bắn &ndash; v&agrave; chỉ c&oacute; một chiếc <em>tai nghe chơi game</em> chất lượng cao mới gi&uacute;p bạn định vị được những &acirc;m thanh đ&oacute; một c&aacute;ch nhanh nhất, gi&uacute;p bạn đưa ra được phản ứng t&igrave;nh huống một c&aacute;ch kịp thời.&nbsp; &nbsp;<br />
Một số <em><a href="https://www.tncstore.vn/gaming-gear/tai-nghe-choi-game.html">tai nghe chơi game</a></em> loại mới hiện nay c&ograve;n cho ph&eacute;p bạn lựa chọn giữa &acirc;m thanh stereo truyền thống v&agrave; &acirc;m thanh v&ograve;m (surround sound) để c&oacute; thể trải nghiệm được &acirc;m thanh một c&aacute;ch đầy đủ nhất. Cụ thể, c&ocirc;ng nghệ &acirc;m thanh v&ograve;m của Dolby c&oacute; thể đem lại cho bạn cảm gi&aacute;c &acirc;m thanh như đang xem tại một rạp chiếu phim hiện đại vậy. Một số tai nghe kh&aacute;c gi&uacute;p bạn t&ugrave;y chỉnh một số thiết lập kh&aacute;c nhau nhằm tối ưu &acirc;m thanh, v&iacute; dụ c&acirc;n bằng &acirc;m thanh ph&aacute;t ra v&agrave; &acirc;m thanh thu &acirc;m v&agrave;o mic chẳng hạn. C&ocirc;ng nghệ lọc tiếng ồn b&ecirc;n ngo&agrave;i cũng được sử dụng trong phần lớn c&aacute;c tai nghe hiện nay.<br />
<strong><span style="font-size:14px">- Mic thu &acirc;m thanh (Microphone)</span></strong><br />
Đ&acirc;y c&oacute; lẽ l&agrave; yếu tố được b&agrave;n bạc v&agrave; tranh c&atilde;i rất nhiều trong cộng đồng game thủ. Một số người cho rằng họ th&iacute;ch sử dụng một chiếc mic rời b&ecirc;n ngo&agrave;i để c&oacute; được chất lượng &acirc;m thanh tối ưu v&agrave; đảm bảo nhất. Số kh&aacute;c lại th&iacute;ch sự tiện lợi của mic t&iacute;ch hợp ngay ở tr&ecirc;n <em>tai nghe chơi game</em>. Thực tế hiện nay cho rằng, những chiếc mic t&iacute;ch hợp tr&ecirc;n c&aacute;c <em>tai nghe chơi game</em> đều đ&atilde; c&oacute; cải thiện đ&aacute;ng kể, đem đến chất lượng &acirc;m thanh tương đối tốt; n&ecirc;n trừ khi bạn cần &acirc;m thanh ti&ecirc;u chuẩn studio, th&igrave; c&oacute; lẽ mic t&iacute;ch hợp l&agrave; ho&agrave;n to&agrave;n đủ sử dụng với những game thủ th&ocirc;ng thường. Một số mic c&oacute; thể điều chỉnh vị tr&iacute; sao cho ph&ugrave; hợp, gạt l&ecirc;n tr&ecirc;n để tắt nhanh ch&oacute;ng, cũng như c&oacute; khả năng tiếp thu &acirc;m thanh đơn hướng hay đa hướng kh&aacute;c nhau, lọc bớt tiếng ồn b&ecirc;n ngo&agrave;i, gi&uacute;p cho việc trao đổi th&ocirc;ng tin l&uacute;c chơi game trở n&ecirc;n hiệu quả hơn.&nbsp;<br />
<strong>- Mức độ thoải m&aacute;i (Comfort)</strong><br />
Đơn giản l&agrave; v&igrave; bạn sẽ đeo tai nghe trong một thời gian d&agrave;i khi chơi game, n&ecirc;n yếu tố thoải m&aacute;i khi sử dụng cũng l&agrave; kh&aacute; quan trọng. Những chiếc tai nghe n&agrave;y cần c&oacute; trọng lượng đủ nhẹ, cũng như cấu tạo đủ chắc chắn để c&oacute; thể &ocirc;m chặt v&agrave; thoải m&aacute;i v&agrave;o hai b&ecirc;n tai. Thậm ch&iacute;, tai nghe kh&ocirc;ng d&acirc;y cũng l&agrave; một lựa chọn kh&ocirc;ng hề tồi, đem đến cho bạn sự thoải m&aacute;i v&agrave; tiện lợi tối đa khi chơi game. Ph&iacute;a tr&ecirc;n tai nghe c&oacute; đệm xốp mềm, đến c&aacute;c phần đệm tai nghe sử dụng xốp c&oacute; khả năng nhớ (memory foam) hay đệm vải lưới nhỏ (micro fibre), t&ugrave;y v&agrave;o sở th&iacute;ch của từng người, th&igrave; bạn ho&agrave;n to&agrave;n c&oacute; thể lựa chọn được chiếc tai nghe n&agrave;o ph&ugrave; hợp nhất cho bản th&acirc;n m&igrave;nh v&agrave; đem lại sự thoải m&aacute;i tốt nhất cho h&agrave;ng giờ chơi game.</p>

<div>&nbsp;</div>
</div>
', 8, CAST(N'2020-12-01 04:25:56.293' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 5)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (28, N'Tay cầm chơi game ', N'tay-cam-choi-game', N'/Data/images/Category/taycam-tnc-300x300.png', NULL, NULL, 9, CAST(N'2020-12-01 04:26:42.903' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 5)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (29, N'Thiết bị Stream', N'thiet-bi-stream', N'/Data/images/Category/stream-tnc-300x300.png', NULL, NULL, 10, CAST(N'2020-12-01 04:27:18.030' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 5)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (30, N'Dây Nối Dài - Dây Riser ', N'day-noi-dai-day-riser', N'/Data/images/Category/day-riser-tnc-300x300.png', NULL, NULL, 1, CAST(N'2020-12-01 04:28:15.000' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 6)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (31, N'GIÁ ĐỠ VGA', N'gia-do-vga', N'/Data/images/Category/gia-do-vga-300x300.png', NULL, NULL, 2, CAST(N'2020-12-01 04:28:50.587' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 6)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (32, N'Tản nhiệt khí cho PC ', N'tan-nhiet-khi-cho-pc', N'/Data/images/Category/tan-khi-tnc-300x300.png', NULL, NULL, 3, CAST(N'2020-12-01 04:29:25.203' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 6)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (33, N'Tản nước ALL IN ONE', N'tan-nuoc-all-in-one', N'/Data/images/Category/tan-nuoc-tnc-300x300.png', NULL, NULL, 4, CAST(N'2020-12-01 04:30:07.903' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 6)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (34, N'Quạt Tản Nhiệt PC', N'quat-tan-nhiet-pc', N'/Data/images/Category/fan-tnc-300x300.png', NULL, NULL, 5, CAST(N'2020-12-01 04:30:50.067' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 6)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (35, N'Bộ Bàn Phím Chuột Không Dây ', N'bo-ban-phim-chuot-khong-day', NULL, NULL, NULL, 1, CAST(N'2020-12-01 04:32:43.560' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 7)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (36, N'Bộ Chia USB ', N'bo-chia-usb', NULL, NULL, NULL, NULL, CAST(N'2020-12-01 04:33:05.050' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 7)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (37, N'Loa Máy Tính', N'loa-may-tinh', N'/Data/images/Category/loa-vi-tinh-300x300.png', NULL, NULL, 3, CAST(N'2020-12-01 04:33:48.750' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 7)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (38, N'Phần mềm bản quyền ', N'phan-mem-ban-quyen', NULL, NULL, NULL, 4, CAST(N'2020-12-01 04:34:18.107' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 7)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (39, N'Webcam', N'webcam', NULL, NULL, NULL, 5, CAST(N'2020-12-01 04:34:50.510' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 7)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (40, N'Máy in Laser', N'may-in-laser', NULL, NULL, NULL, 6, CAST(N'2020-12-01 04:35:19.783' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 1)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (41, N'ROUTER WIFI', N'router-wifi', NULL, NULL, NULL, 1, CAST(N'2020-12-01 04:35:45.060' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 8)
INSERT [dbo].[ChildCategories] ([ID], [Title], [MetaTitle], [Images], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID]) VALUES (42, N'Card Mạng ', N'card-mang', NULL, NULL, NULL, 2, CAST(N'2020-12-01 04:36:10.157' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1, 8)
SET IDENTITY_INSERT [dbo].[ChildCategories] OFF
INSERT [dbo].[Contacts] ([ID], [Title], [ContentHtml], [Status]) VALUES (N'contact1', N'GOLDEN SUN TRADE.,JSC', N'<p>Địa chỉ: 114 Ch&ugrave;a Bộc, Đống Đa, HN</p>

<p>Điện thoại: (+844) 35373168 Fax: (+844) 35334924</p>

<p>Hotline: (+844) 35373168 / 0979.186.668</p>

<p>Website: www.barishidiparis.com</p>
', 1)
INSERT [dbo].[Contacts] ([ID], [Title], [ContentHtml], [Status]) VALUES (N'contact1', N'GOLDEN SUN TRADE.,JSC', N'<p>Địa chỉ: 114 Ch&ugrave;a Bộc, Đống Đa, HN</p>

<p>Điện thoại: (+844) 35373168 Fax: (+844) 35334924</p>

<p>Hotline: (+844) 35373168 / 0979.186.668</p>

<p>Website: www.barishidiparis.com</p>
', 1)
INSERT [dbo].[Contacts] ([ID], [Title], [ContentHtml], [Status]) VALUES (N'contact', N'NEWLUX TRADE.,JSC', N'<div style="page-break-after: always;"><span style="display:none">&nbsp;</span></div>

<h3><span style="color:#808080">TH&Ocirc;NG TIN C&Ocirc;NG TY</span></h3>

<p><span style="color:#808080">Bản quyền thuộc về Newlux Fashion</span></p>

<p><span style="color:#808080">Địa chỉ: P.1107, Th&aacute;p A, 173 Đường Xu&acirc;n Thủy, Dịch Vọng Hậu, Q.Cầu Giấy, H&agrave; Nội</span></p>

<p><span style="color:#808080">Điện thoại:&nbsp;04.62.697.901</span></p>

<p><span style="color:#808080">Hotline: &nbsp;0917.525.196 -&nbsp;<span style="font-family:arial,sans-serif">0985.44.55.65</span></span></p>

<p><span style="color:#808080">Email: newluxfashion@gmail.com</span></p>

<hr />
<p>&nbsp;</p>
', 1)
INSERT [dbo].[Footers] ([ID], [Title], [ContentHtml], [Status]) VALUES (N'footer', N'footer', N'<div class="container">
<div class="row">
<div class="col-lg-3 footer_col">
<div class="footer_column footer_contact">
<div class="logo_container">
<div class="logo"><a href="https://www.tncstore.vn/">TNC Store</a></div>
</div>

<div class="footer_contact_text">
<p>Showroom : 172 L&ecirc; Thanh Nghị, Phường Đồng T&acirc;m, Quận Hai Trưng, H&agrave; Nội / Tel: (024) 36288790 Fax : (024) 36288790</p>
&nbsp;

<p>Trung t&acirc;m bảo h&agrave;nh : 172 L&ecirc; Thanh Nghị, Phường Đồng T&acirc;m, Quận Hai Trưng, H&agrave; Nội / Tel: (04) 36288790 Fax : (024) 36288790</p>
</div>

<div class="footer_social">
<ul>
	<li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
	<li><a href="#"><i class="fab fa-youtube"></i></a></li>
	<li><a href="#"><i class="fab fa-twitter"></i></a></li>
	<li><a href="#"><i class="fab fa-instagram"></i></a></li>
</ul>
</div>
</div>
</div>

<div class="col-lg-2 offset-lg-2">
<div class="footer_column">
<div class="footer_title">Th&ocirc;ng tin chung</div>

<ul>
	<li><a href="https://www.tncstore.vn/">Giới thiệu TNC Store</a></li>
	<li><a href="https://www.tncstore.vn/">Tuyển dụng</a></li>
	<li><a href="https://www.tncstore.vn/tin-tuc">Tin tức</a></li>
	<li><a href="https://www.tncstore.vn/">&Yacute; kiến kh&aacute;ch h&agrave;ng</a></li>
	<li><a href="https://www.tncstore.vn/index.php?route=information/contact">Liện hệ hợp t&aacute;c</a></li>
</ul>
</div>
</div>

<div class="col-lg-2">
<div class="footer_column">
<div class="footer_title">Ch&iacute;nh s&aacute;ch chung</div>

<ul>
	<li><a href="https://www.tncstore.vn/chinh-sach-van-chuyen-tnc-store.html">Ch&iacute;nh s&aacute;ch vận chuyển</a></li>
	<li><a href="https://www.tncstore.vn/chinh-sach-va-quy-dinh-bao-hanh-tai-tnc-store.html">Ch&iacute;nh s&aacute;ch bảo h&agrave;nh</a></li>
	<li><a href="https://www.tncstore.vn/chinh-sach-va-quy-dinh-bao-hanh-tai-tnc-store.html">Ch&iacute;nh s&aacute;ch đổi, trả lại h&agrave;ng</a></li>
	<li><a href="https://www.tncstore.vn/">Ch&iacute;nh s&aacute;ch cho doanh nghiệp</a></li>
</ul>
</div>
</div>

<div class="col-lg-2">
<div class="footer_column">
<div class="footer_title">Th&ocirc;ng tin khuyến m&atilde;i</div>

<ul>
	<li><a href="https://www.tncstore.vn/san-pham-ban-chay.html">Sản phẩm b&aacute;n chạy</a></li>
	<li><a href="https://www.tncstore.vn/san-pham-giam-gia.html">Sản phẩm khuyến m&atilde;i</a></li>
	<li><a href="https://www.tncstore.vn/">H&agrave;ng thanh l&yacute;</a></li>
	<li>&nbsp;</li>
</ul>
</div>
</div>
</div>
</div>
', 1)
INSERT [dbo].[Menus] ([ID], [Name], [Description], [Text], [Link], [Target], [Order], [CssClass], [IsLocked], [IsDeleted], [GroupID], [ParentID], [CreatedDate], [CreatedBy], [UpdatedBy], [UpdatedDate]) VALUES (N'1', N'Trang chủ', N'Trở về trang chủ', N'Trang chủ', N'/', N'_blank', 1, NULL, 1, 0, N'top', NULL, NULL, NULL, N'quang', CAST(N'2020-11-27 01:32:47.930' AS DateTime))
INSERT [dbo].[Menus] ([ID], [Name], [Description], [Text], [Link], [Target], [Order], [CssClass], [IsLocked], [IsDeleted], [GroupID], [ParentID], [CreatedDate], [CreatedBy], [UpdatedBy], [UpdatedDate]) VALUES (N'13', N'Bài viết', N'Bài viết', N'Bài viết', N'/blog', N'_self', 4, NULL, 1, 0, N'top', NULL, NULL, NULL, N'quang', CAST(N'2020-11-23 01:44:23.440' AS DateTime))
INSERT [dbo].[Menus] ([ID], [Name], [Description], [Text], [Link], [Target], [Order], [CssClass], [IsLocked], [IsDeleted], [GroupID], [ParentID], [CreatedDate], [CreatedBy], [UpdatedBy], [UpdatedDate]) VALUES (N'14', N'Hướng dẫn', N'Hướng dẫn thanh toán - trả góp', N'Hướng dẫn', N'/huong-dan', N'_self', 5, NULL, 1, 0, N'top', NULL, CAST(N'2020-11-23 01:45:14.967' AS DateTime), N'quang', NULL, NULL)
INSERT [dbo].[Menus] ([ID], [Name], [Description], [Text], [Link], [Target], [Order], [CssClass], [IsLocked], [IsDeleted], [GroupID], [ParentID], [CreatedDate], [CreatedBy], [UpdatedBy], [UpdatedDate]) VALUES (N'15', N'Chính sách', N'Chính sách bảo hành - vận chuyển', N'Chính sách', N'/chinh-sach', N'_self', 6, NULL, 1, 0, N'top', NULL, CAST(N'2020-11-23 01:46:06.140' AS DateTime), N'quang', NULL, NULL)
INSERT [dbo].[Menus] ([ID], [Name], [Description], [Text], [Link], [Target], [Order], [CssClass], [IsLocked], [IsDeleted], [GroupID], [ParentID], [CreatedDate], [CreatedBy], [UpdatedBy], [UpdatedDate]) VALUES (N'2', N'Liên hệ', N'Liên hệ', N'Liên hệ', N'/contact', N'_self', 2, NULL, 1, 0, N'top', NULL, CAST(N'2020-11-22 04:54:19.103' AS DateTime), N'quang', NULL, NULL)
INSERT [dbo].[Menus] ([ID], [Name], [Description], [Text], [Link], [Target], [Order], [CssClass], [IsLocked], [IsDeleted], [GroupID], [ParentID], [CreatedDate], [CreatedBy], [UpdatedBy], [UpdatedDate]) VALUES (N'3', N'Về chúng tôi', N'Về chúng tôi', N'Về chúng tôi', N'/about', N'_self', 3, NULL, 1, 0, N'top', NULL, CAST(N'2020-11-22 05:30:39.243' AS DateTime), N'quang', NULL, NULL)
INSERT [dbo].[MenuTypes] ([ID], [Name], [Description], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActived], [IsDeleted]) VALUES (N'bottom', N'Menu dưới', NULL, CAST(N'2014-04-12 09:51:38.960' AS DateTime), N'toanbn', NULL, NULL, 1, 0)
INSERT [dbo].[MenuTypes] ([ID], [Name], [Description], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActived], [IsDeleted]) VALUES (N'top', N'Menu trên', N'Menu trên', CAST(N'2014-04-12 09:51:29.463' AS DateTime), N'toanbn', NULL, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[ProductCategories] ON 

INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status]) VALUES (1, N'Xây dựng cấu hình PC', N'xay-dung-cau-hinh-pc', N'/Data/images/Category/gaming-workstation.png', N'/Data/images/Category/PC-a%20(1).png', NULL, N'Gaming WorkStation PC', 1, CAST(N'2020-12-01 03:02:44.270' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status]) VALUES (2, N'Laptops', N'laptops', N'/Data/images/Category/gaming-laptop.png', N'/Data/images/Category/Laptop-c.png', N'/Data/images/Category/banner-danh-muclaptop.jpg', N'Gaming Laptop', 2, NULL, NULL, CAST(N'2020-12-01 03:20:35.977' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status]) VALUES (3, N'Linh kiện máy tính', N'linh-kien-may-tinh', N'/Data/images/Category/linh-kien.png', N'/Data/images/Category/linh-kien-c%20(1).png', N'/Data/images/Category/banner-danh-muclinh-kien.jpg', N'Linh kiện máy tính', 3, NULL, NULL, CAST(N'2020-12-01 03:21:01.753' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status]) VALUES (4, N'Màn hình máy tính', N'man-hinh-may-tinh', N'/Data/images/Category/man-hinh.png', N'/Data/images/Category/man-hinh-b.png', N'/Data/images/Category/banner-danh-mucman-hinh.jpg', N'Màn hình máy tính', 4, NULL, NULL, CAST(N'2020-12-01 03:21:31.300' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status]) VALUES (5, N'Gaming Gears', N'gaming-gears', N'/Data/images/Category/gaming-gear.png', N'/Data/images/Category/gear-b.png', N'/Data/images/Category/banner-danh-mucgaming-gear.jpg', N'Gaming Gear', 5, NULL, NULL, CAST(N'2020-12-01 03:21:55.400' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status]) VALUES (6, N'Phụ kiện - Tản nhiệt PC', N'phu-kien-tan-nhiet-pc', N'/Data/images/Category/phu-kien.png', N'/Data/images/Category/tan-nhiet-b.png', N'/Data/images/Category/banner-danh-mucphu-kien-tan-nhiet.jpg', N'Phụ kiện tản nhiệt PC', 6, NULL, NULL, CAST(N'2020-12-01 03:22:17.303' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status]) VALUES (7, N'Thiết bị văn phòng', N'thiet-bi-van-phong', N'/Data/images/Category/ban-ghe.png', N'/Data/images/Category/van-phong-a.png', N'/Data/images/Category/banner-danh-mucthiet-bi-vp.jpg', N'Thiết bị văn phòng', 7, NULL, NULL, CAST(N'2020-12-01 03:22:37.857' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status]) VALUES (8, N'Thiết bị mạng', N'thiet-bi-mang', N'/Data/images/Category/thiet-bi-mang%20(1).png', N'/Data/images/Category/thiet-bi-mang.png', N'/Data/images/Category/banner-danh-mucthiet-bi-mang.jpg', N'Thiết bị mạng', 8, NULL, NULL, CAST(N'2020-12-01 03:23:23.590' AS DateTime), N'quang', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[ProductCategories] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Images], [Images2nd], [Images3rd], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopNew], [UpTopHot], [Detail]) VALUES (1, N'Laptop MSI Prestige 14 EVO 089VN I7', N'1185G7/16GB/512GB/14?/FHD/IPS/WIN 10/GRAY', N'laptop-msi-prestige-14-evo-089vn-i7', N'<div class="short-desc">
<p>- CPU: Intel&reg; Core&trade; i7-1185G7 (4.80GHz, 12MB)</p>

<p>- RAM: 16GB LPDDR4</p>

<p>- Ổ cứng: 512GB NVMe PCIe Gen4x4 SSD</p>

<p>- VGA: Intel&reg; Iris&reg; Xe Graphics</p>

<p>- M&agrave;n h&igrave;nh: 14.0 inch FHD (1920*1080), sRGB100% 300nits 1W panel</p>

<p>- Pin: 3 cell, 52Whr</p>

<p>- C&acirc;n nặng: 1.3 kg</p>

<p>- T&iacute;nh năng: Đ&egrave;n nền b&agrave;n ph&iacute;m</p>

<p>- M&agrave;u sắc: X&aacute;m</p>

<p>- OS: Windows 10 Home</p>
</div>
', N'/Data/images/product/MSI%20Prestige%2014%20EVO-500x500.png', N'/Data/images/product/3-500x500.jpg', N'/Data/images/product/2-500x500.jpg', CAST(28990000 AS Decimal(18, 0)), CAST(29990000 AS Decimal(18, 0)), NULL, NULL, 0, CAST(N'2020-12-01 05:27:59.000' AS DateTime), N'quang', NULL, NULL, 8, NULL, 1042, NULL, NULL, N'<div class="content-description">
<h1 dir="ltr" style="text-align:center"><strong>Th&ocirc;ng tin sản phẩm MSI Prestige 14 Evo</strong></h1>
&nbsp;

<p dir="ltr" style="text-align:center"><strong>Bản chất của sự tinh hoa</strong></p>

<p dir="ltr" style="text-align:center"><strong><img src="https://lh6.googleusercontent.com/lFlRCPngbWHD8v2rDPEH5jAvdt0rgP1IZ4KZ9kRlbDLfem9_thPyeQt3sH-noQxI5uRJnG61TCNJS4H8fsFDvJkes7LmwoGZ9yx6LENP6UbniEkpUMgx2V1ZLkOwP2r8kabW-8y8" style="height:363px; margin-left:0px; margin-top:0px; width:602px" /></strong></p>
&nbsp;

<p dir="ltr" style="text-align:center"><strong>Bộ xử l&yacute; Intel&reg; Core &trade; i7 thế hệ thứ 11</strong></p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">MSI thể hiện tinh thần của những nh&agrave; ti&ecirc;n phong bằng c&aacute;ch thiết kế bộ sưu tập </span><strong>Laptop mỏng nhẹ</strong><span style="background-color:transparent; font-family:arial; font-size:11pt"> tuyệt vời nhất - D&ograve;ng Prestige. Để duy tr&igrave; hiệu quả c&ocirc;ng việc cao hơn, những chiếc m&aacute;y được chế tạo tinh xảo n&agrave;y kh&ocirc;ng chỉ thể hiện phong c&aacute;ch độc đ&aacute;o m&agrave; hiệu năng c&ograve;n v&ocirc; c&ugrave;ng mạnh mẽ. Thiết kế mỏng v&agrave; nhẹ biến D&ograve;ng Prestige v&agrave; đặc trưng l&agrave; </span><strong>MSI Prestige 14 Evo</strong><span style="background-color:transparent; font-family:arial; font-size:11pt"> trở th&agrave;nh sản phẩm thời thượng v&agrave; n&acirc;ng cao năng suất l&agrave;m việc của bạn mọi l&uacute;c mọi nơi.</span></p>
&nbsp;

<p dir="ltr" style="text-align:center"><strong>Được truyền cảm hứng từ phong c&aacute;ch Aesthetics</strong></p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">Những &yacute; tưởng nay đ&atilde; trở th&agrave;nh hiện thực. Được chế t&aacute;c với c&aacute;c cạnh cắt kim cương v&agrave; kết cấu được l&agrave;m bằng vật liệu chất lượng cao, D&ograve;ng Prestige c&oacute; thiết kế độc đ&aacute;o nhưng vẫn mang t&iacute;nh thanh lịch, mang d&aacute;ng vẻ của một chiếc </span><strong>Laptop mỏng nhẹ</strong><span style="background-color:transparent; font-family:arial; font-size:11pt">.</span></p>

<p dir="ltr" style="text-align:center"><span style="background-color:transparent; font-family:arial; font-size:11pt"><img src="https://lh3.googleusercontent.com/jCHAVVKtEFRH703R_43lCOnZeCmfub_QqbFWMK3gJxsMCBZI25HukYOD2VD3bEvncjxLGvXvJ5qDG7gsFB_IwpC8yh9RIM5ZCgl3TBAtfZSDGgtLevMUg4tD1OD-n8pJNBa7wJGg" style="height:297px; margin-left:0px; margin-top:0px; width:602px" /></span></p>
&nbsp;

<p dir="ltr" style="text-align:center"><strong>Nền tảng Intel&reg; Evo &trade; ho&agrave;n to&agrave;n mới</strong></p>

<p dir="ltr" style="text-align:center"><strong>Trải nghiệm phi thường ở mọi nơi</strong></p>

<p dir="ltr" style="text-align:justify"><strong>MSI Prestige 14 Evo</strong><span style="background-color:transparent; font-family:arial; font-size:11pt"> được x&aacute;c nhận bởi nền tảng Intel&reg; Evo &trade; với hiệu suất v&agrave; t&iacute;nh năng vượt trội gi&uacute;p bạn tiếp tục thăng tiến. Kết hợp với Intel&reg; Evo &trade;, </span><strong>MSI Prestige 14 Evo</strong><span style="background-color:transparent; font-family:arial; font-size:11pt"> mang đến sự kết hợp ho&agrave;n hảo giữa hiệu suất, khả năng phản hồi, thời lượng pin v&agrave; h&igrave;nh ảnh tuyệt đẹp cho một d&ograve;ng Laptop thời trang, c&oacute; độ thẩm mỹ cao.</span></p>

<p dir="ltr" style="text-align:center"><span style="background-color:transparent; font-family:arial; font-size:11pt"><img src="https://lh3.googleusercontent.com/zHCwEdm7N_DbGEhPn6hdlb764VlBTbTHJvxIKaHvAIDHcx5cTL07pJie63ujS9puS6D5tZf-8vdKcKn-VSHAVaWJ8xXpFtKsAkw2SRd5jhAclLw8EZe_X2lHFhjN9nEPYQCPf1qq" style="height:448px; margin-left:0px; margin-top:0px; width:602px" /></span></p>
&nbsp;

<p dir="ltr" style="text-align:center"><strong>Ph&aacute; vỡ mọi giới hạn về hiệu năng</strong></p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">D&ograve;ng Prestige sở hữu bộ vi xử l&yacute; Intel&reg; Core &trade; i7 thế hệ thứ 11 mới nhất v&agrave; card đồ họa Intel&reg; Iris&reg; Xe, mang lại hiệu năng mạnh mẽ nhưng vẫn rất gọn nhẹ, gi&uacute;p c&ocirc;ng việc của bạn lu&ocirc;n tr&ocirc;i chảy mọi l&uacute;c mọi nơi. Chiếc </span><strong>laptop mỏng nhẹ</strong><span style="background-color:transparent; font-family:arial; font-size:11pt"> n&agrave;y sở hữu hiệu năng cực đỉnh gi&uacute;p n&acirc;ng cao năng suất của bạn để bạn c&oacute; thể ho&agrave;n th&agrave;nh c&ocirc;ng việc một c&aacute;ch hiệu quả nhất.</span></p>

<p dir="ltr" style="text-align:center"><span style="background-color:transparent; font-family:arial; font-size:11pt"><img src="https://lh6.googleusercontent.com/fbXZ8osGquhViry-adL-IwGtg9pvqiTpQ2nw67skTuLjPTDEHjKUDH4eOUSCVzdnNasgQUMxTl8glnmkTyA1vQqhJO6G4WXlDyRvfbb8SpaRVlu-jWOxV8oX5LoI31PQHBZ9bMgA" style="height:440px; margin-left:0px; margin-top:0px; width:602px" /></span></p>
&nbsp;

<p dir="ltr" style="text-align:center"><strong>Hỗ trợ khe cắm ổ cứng PCIe thế hệ thứ 4&nbsp;</strong></p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">PCIe 4.0 th&uacute;c đẩy hiệu quả c&aacute;c c&ocirc;ng việc h&agrave;ng ng&agrave;y v&agrave; t&iacute;n hiệu c&oacute; độ tin cậy cao hơn v&agrave; độ thất tho&aacute;t &iacute;t hơn so với c&aacute;c thế hệ trước, gi&uacute;p cải thiện năng suất.</span></p>

<p dir="ltr" style="text-align:center"><span style="background-color:transparent; font-family:arial; font-size:11pt"><img src="https://lh6.googleusercontent.com/_64dkadTdCxoLhSn-IEamud1T2xWiOj9Mt01dL5pWIsVW6Buro2a9dWjdVIp6JpFTY_Fr686R4ZuOTqgqv2_OPuzh66QcAFmHLyKnhlvIrJ2gVYF5FrFuYcKdtgMsRXpFNhw5J7U" style="height:445px; margin-left:0px; margin-top:0px; width:602px" /></span></p>

<p dir="ltr"><span style="background-color:transparent; font-family:arial; font-size:11pt">Băng th&ocirc;ng của khe cắm PCle 4.0 gấp đ&ocirc;i so với PCIe 3.0</span></p>

<p dir="ltr" style="text-align:center"><span style="background-color:transparent; font-family:arial; font-size:11pt"><img src="https://lh4.googleusercontent.com/pmy4XJjIUWkhO4nSx5cxvyQoKcGZH5RjhB58K89oecaHJuHfkffDoCRO1OsagqqB0rjYA9EoFuSBWqnOUcg6ETTYPFZEu2iaNKnDipeajNv7D6c-iI_YojRFd0917gh9fERztjI1" style="height:196px; margin-left:0px; margin-top:0px; width:602px" /></span></p>
&nbsp;

<p dir="ltr" style="text-align:center"><strong>Thiết kế Tương lai</strong></p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">C&oacute; cấu tạo khung nh&ocirc;m si&ecirc;u nhẹ v&agrave; mỏng, d&ograve;ng Prestige được thiết kế thuận tiện cho việc di chuyển v&agrave; mang phong c&aacute;ch thời thượng ở mỗi nơi bạn đặt ch&acirc;n tới.&nbsp;</span></p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">Với mặt phẳng 180 &deg; v&agrave; viền si&ecirc;u mỏng nhằm tối đa h&oacute;a diện t&iacute;ch m&agrave;n h&igrave;nh, </span><strong>MSI Prestige 14 Evo</strong><span style="background-color:transparent; font-family:arial; font-size:11pt"> gi&uacute;p bạn dễ d&agrave;ng truyền tải &yacute; tưởng của m&igrave;nh đến kh&aacute;ch h&agrave;ng.</span></p>

<p dir="ltr" style="text-align:center"><strong>Si&ecirc;u gọn nhẹ</strong></p>

<p dir="ltr" style="text-align:justify"><span style="font-family:arial; font-size:11pt">Chiếc </span><strong>laptop mỏng nhẹ</strong><span style="font-family:arial; font-size:11pt"> n&agrave;y c&oacute; thiết kế cực kỳ gọn với c&acirc;n nặng chỉ 1,29 kg v&agrave; độ d&agrave;y 16mm n&ecirc;n rất dễ d&agrave;ng bỏ v&agrave;o balo mang theo b&ecirc;n m&igrave;nh khi di chuyển.</span></p>

<p dir="ltr" style="text-align:center"><strong><img src="https://lh4.googleusercontent.com/lw4zWmWNYzAFFtbMiH3O7Erlb_1QyP3Fc8SwGxvqVKTFS0IvrLMbby73N_dw6Suv0uaf95JKLeiZiQKKD-Gdd1KDIctkY0GoBe1JccaTF6fj1BFsb89noO4Je7e8mzicuUd1Hlw2" style="height:377px; margin-left:0px; margin-top:0px; width:602px" /></strong></p>
&nbsp;

<p dir="ltr" style="text-align:center"><strong>M&agrave;n h&igrave;nh Full HD với tấm nền IPS c&ugrave;ng phần viền mỏng thời thượng</strong></p>

<p dir="ltr" style="text-align:center"><strong><img src="https://lh3.googleusercontent.com/z2apmeYJ7bnmyyF6GY_e7sV1sONqGE5p_gBaS0QkZaB-H5esODZSLPMbu3gLZc9FlAdcXdwccc9ks5bZGoeyzJMJqoeBDoNlX09WRhaN0pde_wHY6yPBeHtLMShzQZyhR3dQ0sK_" style="height:409px; margin-left:0px; margin-top:0px; width:602px" /></strong></p>
&nbsp;

<p dir="ltr" style="text-align:center"><strong>Chia sẻ th&ocirc;ng tin dễ d&agrave;ng</strong></p>

<p dir="ltr" style="text-align:center"><strong><img src="https://lh4.googleusercontent.com/4yQDB0sCDvY3FNnpAScmJ1ph5OgaHqahHVXF-a4EYzThnMIJ06r83oyLBhYw7S7jM6s9QNdSAOoM77HTdlvjVlaC-SW3Z_u8IRMfVD6ORGuBdm2f1i6iWbLoAZtWCAXEZ9qy_Cqh" style="height:479px; margin-left:0px; margin-top:0px; width:602px" /></strong></p>
&nbsp;

<p dir="ltr" style="text-align:center"><strong>Kết nối v&agrave; sạc</strong></p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">Sở hữu nhiều cổng Thunderbolt 4, bạn c&oacute; thể d&ugrave;ng c&aacute;c laptop Prestige để sạc nhanh thiết bị của m&igrave;nh, truyền dữ liệu ở tốc độ 40Gbps, c&oacute; thể kết nối với nhiều m&agrave;n h&igrave;nh v&agrave; thiết bị ngoại vi. Ngo&agrave;i ra, d&ograve;ng Prestige c&ograve;n trang bị đầu đọc thẻ tốc độ cao UHS-III mới nhất gi&uacute;p truyền dữ liệu một c&aacute;ch nhanh ch&oacute;ng.</span></p>

<p dir="ltr" style="text-align:center"><strong><img src="https://lh6.googleusercontent.com/6Fk0F2QuxPclvjSLtdz_jTFyiuk7uIms8vpZkReaj8VKXM8aq1YF4zb01zPBFbBVgzJQbPj4J5xaOfzhIQ8TbS7CJGf6RtRBD8dILl1p--V8SeHC-O8lv7iH_gUa_1GKnhmULrjm" style="height:387px; margin-left:0px; margin-top:0px; width:602px" /></strong></p>
&nbsp;

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">Cổng Thunderbolt 4 gi&uacute;p tiết kiệm thời gian sạc gấp 4 lần so với USB 3.2 Gen2</span></p>

<p dir="ltr" style="text-align:center"><span style="background-color:transparent; font-family:arial; font-size:11pt"><img src="https://lh5.googleusercontent.com/qeOfgpej6JWv8rQBPwAL08-jQ9XnA31FpBahtA-YBSHl3RGXatBrkb7LNEyxMThnaG0k2aw2pamEejr_TsOFZPRDvwLzE1lCKGaw-g4mutfhbjPp20TdCswUyR3IUeVwm-YDxQyl" style="height:203px; margin-left:0px; margin-top:0px; width:602px" /></span></p>
&nbsp;

<p dir="ltr" style="text-align:center"><strong>Độ bền vượt trội</strong></p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">Văn ph&ograve;ng của bạn c&oacute; thể ở bất cứ nơi n&agrave;o bạn muốn, D&ograve;ng Prestige&nbsp; gi&uacute;p duy tr&igrave; hiệu suất l&agrave;m việc nhờ pin thời lượng cao. Từ một qu&aacute;n c&agrave; ph&ecirc; hay một chuyến bay d&agrave;i ở nước ngo&agrave;i, chiếc </span><strong>Laptop mỏng nhẹ</strong><span style="background-color:transparent; font-family:arial; font-size:11pt"> n&agrave;y chắc chắn sẽ đ&aacute;p ứng mọi nhu cầu của bạn. D&ograve;ng Prestige tự h&agrave;o c&oacute; kết nối kh&ocirc;ng d&acirc;y mới nhất, đảm bảo tốc độ mạng nhanh nhất cho c&aacute;c cuộc gọi hội nghị hoặc việc truyền c&aacute;c dữ liệu lớn.</span></p>

<p dir="ltr" style="text-align:center"><span style="background-color:transparent; font-family:arial; font-size:11pt"><img src="https://lh5.googleusercontent.com/L2Mys70ZrXOlywyy7pyktmXKvoVextjBOs4DAHDxbFaBfDV4q1jTxJKZ4fZqwZ_DF3UsOKCxx5DQuJVJLeIECwe1QuwvBjbW21eEbl_akSHJHBLx-VxUKsRNrdMcHJyd3GXIZXIU" style="height:353px; margin-left:0px; margin-top:0px; width:602px" /></span></p>
&nbsp;

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">Thời lượng pin của D&ograve;ng Prestige đạt 12 giờ sử dụng. Ở chế độ sạc nhanh, 15 ph&uacute;t sạc tương đương 1,5 giờ sử dụng.</span></p>

<p dir="ltr" style="text-align:center"><span style="background-color:transparent; font-family:arial; font-size:11pt"><img src="https://lh3.googleusercontent.com/yCT0giRKFXqovAmgbINIKJjSHZGIBhXa_iqVZYpE3-COCvTggnI3fXv3qpsVMc9LBQk1rh4HwDxCAF7erCeQiCgTPBo6BepcWToplFeaRSgqEarkS4r16B9RpKkXBDYEB6t5qbAV" style="height:68px; margin-left:0px; margin-top:0px; width:602px" /></span></p>
&nbsp;

<p dir="ltr" style="text-align:center"><strong>C&ocirc;ng nghệ Windows Hello</strong></p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">Với Windows Hello, bạn c&oacute; thể đăng nhập bằng khu&ocirc;n mặt hoặc v&acirc;n tay của m&igrave;nh. Đăng nhập v&agrave;o Laptop mỏng nhẹ của bạn nhanh hơn gấp 3 lần so với d&ugrave;ng mật khẩu v&agrave; an to&agrave;n hơn. Tận hưởng trải nghiệm kh&ocirc;ng mật khẩu tr&ecirc;n c&aacute;c web được hỗ trợ với x&aacute;c thực FIDO 2 mới nhất.</span></p>

<p dir="ltr" style="text-align:center"><span style="background-color:transparent; font-family:arial; font-size:11pt"><img src="https://lh5.googleusercontent.com/f_69rB3HtVKMpt_xowQ2TTRc7pZYY3fTSvMB1P4Inydgik2SvoFMnyE_0FNQuPtmkI3UlcTaBIc04s3QzD1QKiDe6ylv5I1AMSD30y70cCl3QKHp1OjtVE8i4MnP8I2e86Y_nVfs" style="height:357px; margin-left:0px; margin-top:0px; width:602px" /></span></p>

<p dir="ltr" style="text-align:center">&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong>Được thiết kế phục vụ nhu cầu của bạn</strong></p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">Để mang lại trải nghiệm đ&aacute;nh m&aacute;y tuyệt vời, d&ograve;ng Prestige được sản xuất với thiết kế bản lề 5 độ đặc biệt, c&oacute; thể tự động nghi&ecirc;ng b&agrave;n ph&iacute;m ở g&oacute;c đ&aacute;nh m&aacute;y tốt nhất. H&agrave;nh tr&igrave;nh ph&iacute;m tr&ecirc;n chiếc </span><strong>laptop mỏng nhẹ</strong><span style="background-color:transparent; font-family:arial; font-size:11pt"> d&agrave;y 1,5mm được tối ưu h&oacute;a gi&uacute;p g&otilde; chữ thoải m&aacute;i v&agrave; ch&iacute;nh x&aacute;c hơn.</span></p>

<p dir="ltr" style="text-align:center"><span style="background-color:transparent; font-family:arial; font-size:11pt"><img src="https://lh6.googleusercontent.com/ry-BZ6RnjRGcQnPlsdobRDLBvFWUNsN6gdzfDTK16HlOtNcXqCXgqPqPYaFGY7hR1W_XTuTVpPXCFRftQpyeIKKE9Ah--zKaUk49gncTrWXuU5giLwbPn-9oA4MWkTzxB8XA0W1B" style="height:572px; margin-left:0px; margin-top:0px; width:602px" /></span></p>
&nbsp;

<p dir="ltr" style="text-align:center"><strong>MSI Center cho C&ocirc;ng việc v&agrave; Kinh doanh</strong></p>

<p dir="ltr"><span style="background-color:transparent; font-family:arial; font-size:11pt">MSI Center đưa sự tối ưu h&oacute;a l&ecirc;n tầm cao mới với c&aacute;c chế độ v&agrave; t&agrave;i nguy&ecirc;n hệ thống c&oacute; thể điều chỉnh dễ d&agrave;ng để ph&ugrave; hợp cho c&aacute;c t&igrave;nh huống v&agrave; nhu cầu cụ thể.</span></p>

<p dir="ltr" style="text-align:center"><span style="background-color:transparent; font-family:arial; font-size:11pt"><img src="https://lh5.googleusercontent.com/KRlvK-xs6Y1WU-OnOcKWieWJQDj6wHfOdXK12aO3_V__D3G6BiXqGr27lX-1Vgn7YHubnjwW8jof6tuS2qcVPix52PMVMxgv4h8BLbnrF1JKXVsv1nyyQZ_cwIEpFN3uGSxgGc3b" style="height:295px; margin-left:0px; margin-top:0px; width:602px" /></span></p>
&nbsp;

<p dir="ltr" style="text-align:center"><strong>Độ bền chuẩn qu&acirc;n sự</strong></p>

<p dir="ltr"><span style="background-color:transparent; font-family:arial; font-size:11pt">Để theo đuổi những g&igrave; ho&agrave;n hảo nhất, d&ograve;ng Prestige đ&aacute;p ứng ti&ecirc;u chuẩn qu&acirc;n sự MIL-STD-810G về độ tin cậy v&agrave; độ bền. MSI lu&ocirc;n lu&ocirc;n nỗ lực tiến tới sự chuy&ecirc;n nghiệp, sử dụng c&aacute;c c&ocirc;ng nghệ h&agrave;ng đầu thế giới, v&agrave; </span><strong>MSI Prestige 14 Evo</strong><span style="background-color:transparent; font-family:arial; font-size:11pt"> ch&iacute;nh l&agrave; sản phẩm ti&ecirc;u biểu.</span></p>

<p dir="ltr" style="text-align:center"><span style="background-color:transparent; font-family:arial; font-size:11pt"><img src="https://lh4.googleusercontent.com/eIlmHnQyX3dflJstua6m1of31ov4ZmCo96wOrtqXywqQRp9ZkL8NTUk4NXIqwhFfSYBkyhP72n6jpRx8rFb9p0f3u80L4bVqQz1AKuwayfqO02w_VcM3LsrqpPyoRnhimZCIHYVN" style="height:240px; margin-left:0px; margin-top:0px; width:602px" /></span></p>
&nbsp;

<p dir="ltr" style="text-align:center"><strong>Sự c&acirc;n bằng tuyệt vời giữa c&ocirc;ng việc v&agrave; cuộc sống</strong></p>

<p dir="ltr"><span style="background-color:transparent; font-family:arial; font-size:11pt">Từ c&ocirc;ng việc đến giải tr&iacute;, D&ograve;ng sản phẩm Prestige mang đến trải nghiệm h&igrave;nh ảnh v&agrave; &acirc;m thanh chất lượng cao gi&uacute;p n&acirc;ng cao chất lượng cuộc sống.</span></p>

<p dir="ltr" style="text-align:center"><span style="background-color:transparent; font-family:arial; font-size:11pt"><img src="https://lh6.googleusercontent.com/d9Gtx90DganZqIhUnDvRM_70KDDoBcbUZKYGpU-M626hKzEfVzW2ouvRZ39WW4QbXQuIHjQN1x3-gEEN6A6S9z5vrj-Z0YhCOa_Oaweq9cCJTR6SCTW8n8qjSphOydqkgjQpLF6E" style="height:323px; margin-left:0px; margin-top:0px; width:602px" /></span></p>
<br />
<br />
&nbsp;
<p dir="ltr"><span style="background-color:transparent; font-family:arial; font-size:11pt">D&ograve;ng Prestige 14 Evo:</span></p>

<ul>
	<li dir="ltr">
	<p dir="ltr"><span style="background-color:transparent; font-size:11pt">Bộ vixử l&yacute; Intel&reg; Core &trade; i7 thế hệ thứ 11 mới nhất.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="background-color:transparent; font-size:11pt">Phần mềm Windows 10 Home.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="background-color:transparent; font-size:11pt">Phần mềm Windows 10 Pro (Khuyến nghị d&ugrave;ng Windows 10 Pro cho doanh nghiệp)</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="background-color:transparent; font-size:11pt">Đồ họa Intel&reg; Iris Xe (A11M)</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="background-color:transparent; font-size:11pt">Si&ecirc;u nhẹ 1,29kg, Si&ecirc;u mỏng 16mm.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="background-color:transparent; font-size:11pt">14 &rdquo;Full HD (1920x1080), xấp xỉ 100% sRGB. M&agrave;n h&igrave;nh viền mỏng thời thượng với tấm nền IPS tiết kiệm năng lượng.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="background-color:transparent; font-size:11pt">Tuổi thọ pin l&ecirc;n đến 12 giờ l&agrave;m việc.</span></p>
	</li>
</ul>
</div>
')
SET IDENTITY_INSERT [dbo].[Products] OFF
INSERT [dbo].[Roles] ([ID], [Name], [Description], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActived], [IsDeleted]) VALUES (N'FULL', N'Tất cả quyền', N'Quyền đươc đoc ghi', CAST(N'2014-04-05 10:17:22.000' AS DateTime), N'toanbn', CAST(N'2014-04-05 10:25:39.043' AS DateTime), N'toanbn', 1, 0)
INSERT [dbo].[Roles] ([ID], [Name], [Description], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActived], [IsDeleted]) VALUES (N'VIEW', N'Xem danh sách', N'Xem danh sách', CAST(N'2014-04-05 10:17:35.517' AS DateTime), N'toanbn', NULL, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Slides] ON 

INSERT [dbo].[Slides] ([ID], [Name], [Description], [Link], [Images], [Order], [GroupID], [Status]) VALUES (1, N'Black Friday 2020', NULL, N'/khuyen-mai-2020', N'/Data/images/slide/WEB%20-%20MAIN%20BANNER%20TNC%20(1).jpg', 1, NULL, 1)
INSERT [dbo].[Slides] ([ID], [Name], [Description], [Link], [Images], [Order], [GroupID], [Status]) VALUES (2, N'amd radeon rx 6000 series', NULL, N'/amd-radeon-rx-6000-series', N'/Data/images/slide/banner26112020.jpg', 2, NULL, 1)
INSERT [dbo].[Slides] ([ID], [Name], [Description], [Link], [Images], [Order], [GroupID], [Status]) VALUES (3, N'Combo Asus', NULL, N'/combo-asus', N'/Data/images/slide/125560377_285514662803044_6514851120731827816_n.png', 3, NULL, 1)
SET IDENTITY_INSERT [dbo].[Slides] OFF
SET IDENTITY_INSERT [dbo].[SystemConfigs] ON 

INSERT [dbo].[SystemConfigs] ([ID], [Name], [UniqueKey], [Value], [Unit], [Description], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDeleted]) VALUES (7, N'Tên hệ thống', N'SYSTEM_NAME', N'NEWLUX.VN', N'0', NULL, CAST(N'2014-03-22 00:00:00.000' AS DateTime), N'toanbn', CAST(N'2014-03-22 00:00:00.000' AS DateTime), N'toanbn', 0)
SET IDENTITY_INSERT [dbo].[SystemConfigs] OFF
INSERT [dbo].[UserGroups] ([ID], [Name], [Description], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActived], [IsDeleted]) VALUES (N'ADMIN', N'Administrator', N'Nhóm quản tri cao nhất', CAST(N'2014-04-05 08:08:30.000' AS DateTime), N'toanbn', CAST(N'2014-04-05 09:58:30.203' AS DateTime), N'toanbn', 1, 0)
INSERT [dbo].[UserGroups] ([ID], [Name], [Description], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActived], [IsDeleted]) VALUES (N'MEMBER', N'Thành viên', NULL, NULL, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[Users] ([UserName], [Password], [PasswordLevel2], [Email], [Mobile], [Name], [Address], [Sex], [UpdatedDate], [UpdatedBy], [LastLoginDate], [LastChangePassword], [GroupID]) VALUES (N'huyentran', N'212aa204f0b6d82a08ec93e50a072c74', NULL, N'huyen@gmail.com', N'123456789', N'Huyền', N'Hà Nội', 0, CAST(N'2020-11-29 20:20:46.440' AS DateTime), N'quang', NULL, NULL, N'MEMBER')
INSERT [dbo].[Users] ([UserName], [Password], [PasswordLevel2], [Email], [Mobile], [Name], [Address], [Sex], [UpdatedDate], [UpdatedBy], [LastLoginDate], [LastChangePassword], [GroupID]) VALUES (N'quang', N'862edad6e6abd2892b168d8f565f4cd8', NULL, N'quangdz@gmail.com', N'0123456789', N'quang', N'Hà Nội', 1, CAST(N'2020-11-26 19:06:46.380' AS DateTime), N'quang', NULL, NULL, N'ADMIN')
ALTER TABLE [dbo].[Feedbacks] ADD  CONSTRAINT [DF_Table_1_Time]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Feedbacks] ADD  CONSTRAINT [DF_Table_1_Checked]  DEFAULT ((0)) FOR [IsReaded]
GO
ALTER TABLE [dbo].[GroupSlides] ADD  CONSTRAINT [DF_GroupSlides_IsActived]  DEFAULT ((1)) FOR [IsActived]
GO
ALTER TABLE [dbo].[GroupSlides] ADD  CONSTRAINT [DF_GroupSlides_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Tags] ADD  CONSTRAINT [DF_Tags_IsActived]  DEFAULT ((1)) FOR [IsActived]
GO
ALTER TABLE [dbo].[Tags] ADD  CONSTRAINT [DF_Tags_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ChildCategories]  WITH CHECK ADD  CONSTRAINT [FK_ChildCategories_ProductCategories1] FOREIGN KEY([ParentID])
REFERENCES [dbo].[ProductCategories] ([ID])
GO
ALTER TABLE [dbo].[ChildCategories] CHECK CONSTRAINT [FK_ChildCategories_ProductCategories1]
GO
ALTER TABLE [dbo].[Menus]  WITH CHECK ADD  CONSTRAINT [FK_Menus_MenuTypes] FOREIGN KEY([GroupID])
REFERENCES [dbo].[MenuTypes] ([ID])
GO
ALTER TABLE [dbo].[Menus] CHECK CONSTRAINT [FK_Menus_MenuTypes]
GO
ALTER TABLE [dbo].[Newses]  WITH CHECK ADD  CONSTRAINT [FK_Newses_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([ID])
GO
ALTER TABLE [dbo].[Newses] CHECK CONSTRAINT [FK_Newses_Categories]
GO
ALTER TABLE [dbo].[NewsTags]  WITH CHECK ADD  CONSTRAINT [FK_NewsTags_Tags] FOREIGN KEY([TagID])
REFERENCES [dbo].[Tags] ([ID])
GO
ALTER TABLE [dbo].[NewsTags] CHECK CONSTRAINT [FK_NewsTags_Tags]
GO
ALTER TABLE [dbo].[Permissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
GO
ALTER TABLE [dbo].[Permissions] CHECK CONSTRAINT [FK_Permissions_Roles]
GO
ALTER TABLE [dbo].[Permissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_UserGroups] FOREIGN KEY([GroupID])
REFERENCES [dbo].[UserGroups] ([ID])
GO
ALTER TABLE [dbo].[Permissions] CHECK CONSTRAINT [FK_Permissions_UserGroups]
GO
ALTER TABLE [dbo].[Permissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_Users] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Users] ([UserName])
GO
ALTER TABLE [dbo].[Permissions] CHECK CONSTRAINT [FK_Permissions_Users]
GO
ALTER TABLE [dbo].[Photos]  WITH CHECK ADD  CONSTRAINT [FK_Photos_Albums] FOREIGN KEY([AlbumID])
REFERENCES [dbo].[Albums] ([ID])
GO
ALTER TABLE [dbo].[Photos] CHECK CONSTRAINT [FK_Photos_Albums]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands1] FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brands] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Brands1]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_ChildCategories1] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[ChildCategories] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_ChildCategories1]
GO
ALTER TABLE [dbo].[Slides]  WITH CHECK ADD  CONSTRAINT [FK_Slides_GroupSlides] FOREIGN KEY([GroupID])
REFERENCES [dbo].[GroupSlides] ([ID])
GO
ALTER TABLE [dbo].[Slides] CHECK CONSTRAINT [FK_Slides_GroupSlides]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_UserGroups] FOREIGN KEY([GroupID])
REFERENCES [dbo].[UserGroups] ([ID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_UserGroups]
GO
/****** Object:  StoredProcedure [dbo].[GetViewMenuBaseRole]    Script Date: 12/1/2020 5:32:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetViewMenuBaseRole]
@UserName varchar(6)
AS 
begin
SELECT f.* FROM
Users u INNER JOIN UserRole ur ON u.UserName = ur.UserName
inner join UserGroups ug on ur.GroupID = ug.ID
inner join Permissions p on ug.ID = p.GroupID
inner join Roles r on p.RoleID = r.ID
inner join Functions f on f.ID = p.FunctionID
where u.UserName = @UserName
end
GO
USE [master]
GO
ALTER DATABASE [ShopBanHang] SET  READ_WRITE 
GO
