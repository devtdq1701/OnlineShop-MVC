USE [master]
GO
/****** Object:  Database [ShopBanHang]    Script Date: 11/30/2020 9:10:02 PM ******/
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
/****** Object:  User [newlux_sa]    Script Date: 11/30/2020 9:10:02 PM ******/
CREATE USER [newlux_sa] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[newlux_sa]
GO
ALTER ROLE [db_owner] ADD MEMBER [newlux_sa]
GO
/****** Object:  Schema [newlux_sa]    Script Date: 11/30/2020 9:10:02 PM ******/
CREATE SCHEMA [newlux_sa]
GO
/****** Object:  Table [dbo].[Abouts]    Script Date: 11/30/2020 9:10:02 PM ******/
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
/****** Object:  Table [dbo].[Albums]    Script Date: 11/30/2020 9:10:02 PM ******/
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
/****** Object:  Table [dbo].[Brands]    Script Date: 11/30/2020 9:10:02 PM ******/
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
/****** Object:  Table [dbo].[Categories]    Script Date: 11/30/2020 9:10:02 PM ******/
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
/****** Object:  Table [dbo].[Contacts]    Script Date: 11/30/2020 9:10:02 PM ******/
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
/****** Object:  Table [dbo].[Feedbacks]    Script Date: 11/30/2020 9:10:02 PM ******/
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
/****** Object:  Table [dbo].[Footers]    Script Date: 11/30/2020 9:10:02 PM ******/
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
/****** Object:  Table [dbo].[GroupSlides]    Script Date: 11/30/2020 9:10:02 PM ******/
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
/****** Object:  Table [dbo].[Menus]    Script Date: 11/30/2020 9:10:02 PM ******/
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
/****** Object:  Table [dbo].[MenuTypes]    Script Date: 11/30/2020 9:10:02 PM ******/
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
/****** Object:  Table [dbo].[Newses]    Script Date: 11/30/2020 9:10:02 PM ******/
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
/****** Object:  Table [dbo].[NewsTags]    Script Date: 11/30/2020 9:10:02 PM ******/
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
/****** Object:  Table [dbo].[Permissions]    Script Date: 11/30/2020 9:10:02 PM ******/
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
/****** Object:  Table [dbo].[Photos]    Script Date: 11/30/2020 9:10:02 PM ******/
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
/****** Object:  Table [dbo].[ProductCategories]    Script Date: 11/30/2020 9:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductCategories](
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
 CONSTRAINT [PK_ProductCategories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Products]    Script Date: 11/30/2020 9:10:02 PM ******/
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
	[Source] [nvarchar](50) NULL,
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
/****** Object:  Table [dbo].[Roles]    Script Date: 11/30/2020 9:10:02 PM ******/
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
/****** Object:  Table [dbo].[Slides]    Script Date: 11/30/2020 9:10:02 PM ******/
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
/****** Object:  Table [dbo].[SystemConfigs]    Script Date: 11/30/2020 9:10:02 PM ******/
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
/****** Object:  Table [dbo].[Tags]    Script Date: 11/30/2020 9:10:02 PM ******/
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
/****** Object:  Table [dbo].[UserActivityLogs]    Script Date: 11/30/2020 9:10:02 PM ******/
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
/****** Object:  Table [dbo].[UserGroups]    Script Date: 11/30/2020 9:10:02 PM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 11/30/2020 9:10:02 PM ******/
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

INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1, N'Razor', N'/Data/images/brand/brands_1.png', NULL, 1, NULL, NULL, CAST(N'2020-11-28 14:00:37.010' AS DateTime), N'quang', 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (2, N'Intel', N'/Data/images/brand/brands_2.png', NULL, 2, NULL, NULL, CAST(N'2020-11-28 14:00:28.697' AS DateTime), N'quang', 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (3, N'amd', N'/Data/images/brand/brands_3.png', NULL, 3, CAST(N'2020-11-28 14:00:51.860' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (4, N'logitech', N'/Data/images/brand/brands_4.png', NULL, 4, CAST(N'2020-11-28 14:01:19.460' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (5, N'acer', N'/Data/images/brand/brands_5.png', NULL, 5, CAST(N'2020-11-28 14:01:35.620' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (6, N'hyperX', N'/Data/images/brand/brands_6.png', NULL, 6, CAST(N'2020-11-28 14:01:55.897' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (7, N'Sony Playstation', N'/Data/images/brand/brands_7.png', NULL, 7, CAST(N'2020-11-28 14:02:21.107' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (8, N'Xbox', N'/Data/images/brand/brands_8.png', NULL, 8, CAST(N'2020-11-28 14:02:43.303' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (9, N'Msi', N'/Data/images/brand/brands_9.png', NULL, 9, CAST(N'2020-11-28 14:03:00.637' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (10, N'Nvidia', N'/Data/images/brand/brands_10.png', NULL, 10, CAST(N'2020-11-28 14:03:23.800' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (11, N'Rog', N'/Data/images/brand/brands_11.png', NULL, 11, CAST(N'2020-11-28 14:03:56.277' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (12, N'coolermaster', N'/Data/images/brand/brands_12.png', NULL, 12, CAST(N'2020-11-28 14:04:12.177' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (13, N'Corsair', N'/Data/images/brand/brands_13.png', NULL, 13, CAST(N'2020-11-28 14:04:33.773' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (14, N'Steelseries', N'/Data/images/brand/brands_14.png', NULL, 14, CAST(N'2020-11-28 14:04:59.160' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (15, N'gigabyte', N'/Data/images/brand/brands_15.png', NULL, 15, CAST(N'2020-11-28 14:05:14.440' AS DateTime), N'quang', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Brands] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([ID], [Title], [MetaTitle], [Images], [Description], [Order], [ParentID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [IsIntroduced]) VALUES (3, N'new', N'new', N'/Data/images/Category/output-onlinepngtools.png', N'sales 50%', NULL, NULL, NULL, NULL, CAST(N'2020-11-21 14:30:19.973' AS DateTime), N'quang', NULL, NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[Categories] OFF
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

INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [Description], [Order], [ParentID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status]) VALUES (12, N'Bàn phím', N'ban-phim', N'/Data/images/Category/output-onlinepngtools.png', N'Bàn phím gaming giá rẻ', 1, NULL, NULL, NULL, CAST(N'2020-11-27 01:32:07.487' AS DateTime), N'quang', N'Bàn phím', N'Bàn phím', 1)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [Description], [Order], [ParentID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status]) VALUES (13, N'Tai nghe Gaming', N'tai-nghe-gaming', NULL, N' Tai nghe gaming - Tai nghe chơi game giá rẻ', 5, NULL, NULL, NULL, CAST(N'2020-11-27 01:32:24.457' AS DateTime), N'quang', N'Tai nghe', N'Tai nghe', 1)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [Description], [Order], [ParentID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status]) VALUES (14, N'Màn hình', N'man-hinh', NULL, N'Màn hình máy tính chơi game giá rẻ, trả góp 0%', 3, 3, NULL, NULL, CAST(N'2020-11-27 01:32:30.013' AS DateTime), N'quang', N'Màn hình', N'Màn hình', 1)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [Description], [Order], [ParentID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status]) VALUES (15, N'Linh kiện máy tính', N'linh-kien-may-tinh', NULL, N'Linh kiện máy tính - PC - Laptop chính hãng, giá rẻ', 2, NULL, NULL, NULL, CAST(N'2020-11-27 01:32:32.777' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [Description], [Order], [ParentID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status]) VALUES (16, N'Laptop', N'laptop', NULL, N' Laptop - Máy tính xách tay giá rẻ, Trả góp 0%', 4, NULL, NULL, NULL, CAST(N'2020-11-27 01:32:18.040' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [Description], [Order], [ParentID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status]) VALUES (17, N'PC Gaming', N'pc-gaming', NULL, N'Máy tính chơi game - PC gaming cấu hình vượt trội, giá rẻ', 5, NULL, NULL, NULL, CAST(N'2020-11-27 01:32:27.097' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [Description], [Order], [ParentID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status]) VALUES (18, N'Ghế gaming', N'ghe-gaming', NULL, N'Ghế gaming - Ghế chơi game chính hãng giá rẻ 2020', NULL, NULL, NULL, NULL, CAST(N'2020-11-27 01:32:15.220' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [Description], [Order], [ParentID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status]) VALUES (19, N'Console', N'console', NULL, N'Máy chơi game cầm tay - Console Sony giá rẻ', NULL, NULL, NULL, NULL, CAST(N'2020-11-27 01:32:13.033' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [Description], [Order], [ParentID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status]) VALUES (20, N'Chuột + Lót chuột', N'chuot-lot-chuot', NULL, N'Chuột chơi game, chuột PC chính hãng, giá rẻ 2020', NULL, NULL, NULL, NULL, CAST(N'2020-11-27 01:49:03.097' AS DateTime), N'quang', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[ProductCategories] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Images], [Images2nd], [Images3rd], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [Detail]) VALUES (11, N'logitech-b100', N'logitech-b100', N'logitech-b100', N'Chuột Logitech B100', N'/Data/images/product/logitech-b100.jpg', NULL, NULL, CAST(80000 AS Decimal(18, 0)), NULL, N'chuot van phong', N'chuot van phong', 1, NULL, NULL, CAST(N'2020-11-27 01:31:41.430' AS DateTime), N'quang', 20, NULL, N'Logitech', NULL, NULL, N'<p>Chuột Logitech B100 l&agrave; một trong những d&ograve;ng chuột gaming gi&aacute; rẻ được sử dụng phổ th&ocirc;ng nhất hiện nay. V&igrave; dễ d&agrave;ng cầm giữ, mang lại cảm gi&aacute;c thoải m&aacute;i, cảm gi&aacute;c v&agrave; cảm ứng v&agrave; điều quan trọng nhất l&agrave; mang lại hiệu suất tuyệt vời. Kh&ocirc;ng c&oacute; thời gian lag trong khi đ&aacute;p ứng hoặc thời gian nhạy cảm của con chuột l&agrave; kh&aacute; tốt. N&oacute; hoạt động trơn tru v&agrave; ph&ugrave; hợp ho&agrave;n hảo trong l&ograve;ng b&agrave;n tay.</p>
')
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Images], [Images2nd], [Images3rd], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [Detail]) VALUES (14, N'Màn hình ACER ED245QA', N'ACER ED245QA', N'man-hinh-acer-ed245qa', N'Màn hình máy tính ACER ED245QA chính hãng, giá rẻ', N'/Data/images/product/ezgif-3-2b46bcd05e54.jpg', NULL, NULL, CAST(3250000 AS Decimal(18, 0)), NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2020-11-27 01:31:48.743' AS DateTime), N'quang', 14, NULL, NULL, NULL, NULL, N'<p><strong>Th&ocirc;ng Số Kỹ Thuật:</strong></p>

<p>Screen Size: 23.6&quot;</p>

<p>Maximum Resolution: (Full HD)1920 x 1080@75 Hz</p>

<p>Aspect Ratio: 16:9</p>

<p>Contrast Ratio: 1,000:1</p>

<p>Response Time: 4 ms</p>

<p>Colour Supported: 16.7 Million</p>

<p>Adaptive Contrast Management (ACM): 100,000,000:1</p>

<p>Brightness: 250 cd/m&sup2;</p>

<p>Backlight: LED</p>

<p>Viewing Angles</p>

<p>178&deg; Horizontal</p>

<p>178&deg; Vertical</p>

<p>Panel Type: IPS (In-plane Switching)</p>

<p>Stand: Tilt (-5&deg;~15&deg;)</p>

<p>Ports &amp; Connectors: VGA - 1x HDMI&reg;-in</p>

<p>Power: 30 W (Power On)</p>

<p>Colours: Black</p>

<p>VESA Compatible: (No)</p>

<p>Dimensions (W x H x D)</p>

<p>534.30 mm x 405.10 mm x 114.20 mm</p>

<p>534.3 mm x 405.1 mm x 145.3 mm (with stand)</p>

<p>Weight (Approximate)</p>

<p>2.91 kg</p>

<p>3.20 kg (with stand)</p>
')
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Images], [Images2nd], [Images3rd], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [Detail]) VALUES (15, N'Bàn phím Newmen T260', N'NewmenT260', N'ban-phim-newmen-t260', N'<p>B&agrave;n ph&iacute;m Newmen T260</p>
', N'/Data/images/product/gvn_newmen_t260_6c3b7eb7968645a08e982f14c1c9ffb3.png', NULL, NULL, CAST(280000 AS Decimal(18, 0)), CAST(290000 AS Decimal(18, 0)), NULL, NULL, 0, NULL, NULL, CAST(N'2020-11-30 19:33:24.283' AS DateTime), N'quang', 12, NULL, NULL, NULL, NULL, N'<p><strong>T&iacute;nh năng đặc biệt</strong>&nbsp;: Chống nước, độ ồn thấp.</p>

<p><strong>Tuổi thọ n&uacute;t</strong>&nbsp;: 10 triệu lượt nhấn Game</p>

<p><strong>Chuẩn giao tiếp</strong>&nbsp;: usb</p>

<p><strong>Ph&iacute;m</strong>: 439x175x29mm ;&nbsp;<strong>Chuột</strong>: 115x60x35</p>

<p><strong>Trọng</strong>&nbsp;<strong>lượng</strong>&nbsp;: 660g</p>
')
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Images], [Images2nd], [Images3rd], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [Detail]) VALUES (16, N'Máy Chơi Game Sony Playstation 4 Slim - 1TB', N'PS4Slim1TB', N'may-choi-game-sony-playstation-4-slim-1tb', N'Máy Chơi Game Sony Playstation 4 Slim - 1TB', N'/Data/images/product/ps4-slim-chinh-hang-bh-chinh-hang-12-thang-752_085666d92afa4d0593d25ac520833f39.jpg', NULL, NULL, CAST(8490000 AS Decimal(18, 0)), NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2020-11-27 01:31:59.547' AS DateTime), N'quang', 19, NULL, N'Sony', NULL, NULL, N'<h2>M&aacute;y Chơi Game Sony Playstation 4 Slim - 1TB</h2>

<p><img alt="" src="/Data/images/product/gearvn-may-choi-game-sony-playstation-ps4-slim-1tb-_13bee0bf4dac45b1a2da4346802a0f7f.jpg" style="height:900px; width:1600px" /></p>

<p><strong>Sony PlayStation 4 Slim</strong>&nbsp;là chi&ecirc;́c&nbsp;<a href="https://gearvn.com/collections/may-choi-game">m&aacute;y chơi game</a>&nbsp;mang hi&ecirc;̣u năng thu&ocirc;̣c hàng đứng đ&acirc;̀u trong các thi&ecirc;́t bị console. Máy được trang bị b&ocirc;̣ vi xử lý CPU x86-64 AMD Jaguar 8 nh&acirc;n và chip c&acirc;́u hình GPU 1.84 TFLOPS AMD Radeon x&acirc;y dựng đ&ocirc;̀ họa chuy&ecirc;n nghi&ecirc;̣p. B&ocirc;̣ nhớ trong PS4 thu&ocirc;̣c RAM GDDR5 dung lượng 8GB giúp tăng t&ocirc;́c xử lý dữ li&ecirc;̣u trò chơi.</p>

<h3>Thi&ecirc;́t k&ecirc;́ Slim nhỏ gọn với dung lượng 1TB lưu trữ thỏa thích</h3>

<p><img alt="" src="/Data/images/product/unnamed_8abef66a7df34863a828500f11bf4175.jpg" style="height:201px; width:512px" /></p>

<p>Khác với máy PlayStation 4 th&ocirc;ng thường, phi&ecirc;n bản PlayStation 4 Slim được hãng Sony tái thi&ecirc;́t k&ecirc;́ nhằm t&ocirc;́i giản vẻ ngoài nhưng v&acirc;̃n giữ nguy&ecirc;n hi&ecirc;̣u năng mạnh mẽ b&ecirc;n trong. Phi&ecirc;n bản Slim nhẹ hơn 16% và sử dụng lượng đi&ecirc;̣n ít hơn 28% so với phi&ecirc;n bản PS4 thường. Với những game thủ mu&ocirc;́n thoải mái &quot;chi&ecirc;́n&quot; game mà kh&ocirc;ng phải lo v&ecirc;̀ v&acirc;́n đ&ecirc;̀ hao đi&ecirc;̣n, PS4 Slim là chi&ecirc;́c console v&ocirc; cùng thích hợp.</p>

<p>Ở mức dung lượng lưu trữ 1TB, Sony PlayStation 4 Slim hoàn toàn đáp ứng t&ocirc;́t nhu c&acirc;̀u giải trí kh&ocirc;ng giới hạn. Game thủ có th&ecirc;̉ cài đặt trò chơi mình ưa thích và lưu trữ vào thư vi&ecirc;̣n game PS đ&ecirc;̉ thỏa sức trải nghi&ecirc;̣m b&acirc;́t kỳ lúc nào. Đặc bi&ecirc;̣t hơn, với gói Mega Pack 2, game thủ sẽ nh&acirc;̣n được đĩa cài đặt của 3 trò chơi &quot;hot&quot; nh&acirc;́t hi&ecirc;̣n nay: Grand Theft Auto V, God of War và Horizon Zero Dawn. Đ&acirc;y là 3 trò chơi n&ocirc;̉i ti&ecirc;́ng nh&acirc;́t với gameplay đặc sắc cùng c&ocirc;́t truy&ecirc;̣n ch&acirc;n thực, cùng với hi&ecirc;̣u năng của PS4 Slim sẽ tạo n&ecirc;n trải nghi&ecirc;̣m khó qu&ecirc;n trong lòng các gamer.</p>
')
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Images], [Images2nd], [Images3rd], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [Detail]) VALUES (17, N'Ghế Warrior Raider Series White/Pink', N'WGC206', N'ghe-warrior-raider-series-white-pink', N'<p><strong>Nh&agrave; sản xuất</strong>&nbsp;: Warrior<br />
<strong>T&igrave;nh trạng</strong>&nbsp;: Mới 100%<br />
<strong>Bảo h&agrave;nh</strong>&nbsp;: 12 th&aacute;ng</p>
', N'/Data/images/product/gearvn-ghe-warrior-raider-series-wgc206-white-pink-1_a46b9b2c16524a0fba757943e49ca131.jpg', NULL, NULL, CAST(2900000 AS Decimal(18, 0)), NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2020-11-27 13:49:10.233' AS DateTime), N'quang', 18, NULL, N'Warrior', NULL, NULL, N'<p>&nbsp;</p>

<p>Ghế cao cấp d&agrave;nh cho game thủ<br />
Chất liệu da PU chống xước<br />
Trục thủy lực Class 4 với độ ổn định cao<br />
Bệ đỡ: Kiểu c&aacute;nh bướm<br />
Đệm m&ocirc;ng ghế được l&agrave;m bằng khu&ocirc;n sốp lạnh (cold molded foam)<br />
Lưng ghế được l&agrave;m bằng đệm nguy&ecirc;n chất (original foam)<br />
Ghế c&oacute; khả năng ngả được 135 độ, xoay 180 độ<br />
Tay ghế 2D<br />
Khung kim loại tạo n&ecirc;n sự chắc chắn, ổn định khi sử dụng<br />
Ch&acirc;n, b&aacute;nh xe nhựa được thiết kế gi&uacute;p giảm thiểu tiếng ồn trong qu&aacute; tr&igrave;nh sử dụng</p>

<p><img class="img-fluid" src="/Data/images/product/ghe-game-warrior-raider-series-wgc205-pink_297ee7126d7b435db62498d96cad256a.png" /></p>
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
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductCategories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[ProductCategories] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_ProductCategories]
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
/****** Object:  StoredProcedure [dbo].[GetViewMenuBaseRole]    Script Date: 11/30/2020 9:10:02 PM ******/
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
