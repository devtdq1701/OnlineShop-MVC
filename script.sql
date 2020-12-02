USE [master]
GO
/****** Object:  Database [ShopBanHang]    Script Date: 12/2/2020 7:02:47 AM ******/
CREATE DATABASE [ShopBanHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NES', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ShopBanHang_NES_84030428f7044fa59c42fcbdd4cc1be1.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
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
/****** Object:  User [newlux_sa]    Script Date: 12/2/2020 7:02:47 AM ******/
CREATE USER [newlux_sa] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[newlux_sa]
GO
ALTER ROLE [db_owner] ADD MEMBER [newlux_sa]
GO
/****** Object:  Schema [newlux_sa]    Script Date: 12/2/2020 7:02:47 AM ******/
CREATE SCHEMA [newlux_sa]
GO
/****** Object:  Table [dbo].[Abouts]    Script Date: 12/2/2020 7:02:47 AM ******/
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
/****** Object:  Table [dbo].[Albums]    Script Date: 12/2/2020 7:02:47 AM ******/
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
/****** Object:  Table [dbo].[Brands]    Script Date: 12/2/2020 7:02:47 AM ******/
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
/****** Object:  Table [dbo].[Categories]    Script Date: 12/2/2020 7:02:47 AM ******/
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
/****** Object:  Table [dbo].[Contacts]    Script Date: 12/2/2020 7:02:47 AM ******/
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
/****** Object:  Table [dbo].[Feedbacks]    Script Date: 12/2/2020 7:02:47 AM ******/
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
/****** Object:  Table [dbo].[Footers]    Script Date: 12/2/2020 7:02:47 AM ******/
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
/****** Object:  Table [dbo].[GroupSlides]    Script Date: 12/2/2020 7:02:47 AM ******/
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
/****** Object:  Table [dbo].[Menus]    Script Date: 12/2/2020 7:02:47 AM ******/
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
/****** Object:  Table [dbo].[MenuTypes]    Script Date: 12/2/2020 7:02:47 AM ******/
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
/****** Object:  Table [dbo].[Newses]    Script Date: 12/2/2020 7:02:47 AM ******/
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
/****** Object:  Table [dbo].[NewsTags]    Script Date: 12/2/2020 7:02:47 AM ******/
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
/****** Object:  Table [dbo].[Permissions]    Script Date: 12/2/2020 7:02:47 AM ******/
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
/****** Object:  Table [dbo].[Photos]    Script Date: 12/2/2020 7:02:47 AM ******/
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
/****** Object:  Table [dbo].[ProductCategories]    Script Date: 12/2/2020 7:02:47 AM ******/
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
	[ParentID] [bigint] NULL,
	[Style] [varchar](60) NULL,
 CONSTRAINT [PK_ProductCategories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12/2/2020 7:02:47 AM ******/
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
	[Images] [nvarchar](250) NULL,
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
	[Guarantee] [int] NULL,
	[Video] [nvarchar](250) NULL,
	[Specification] [ntext] NULL,
 CONSTRAINT [PK_Product1s] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 12/2/2020 7:02:47 AM ******/
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
/****** Object:  Table [dbo].[Slides]    Script Date: 12/2/2020 7:02:47 AM ******/
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
/****** Object:  Table [dbo].[SystemConfigs]    Script Date: 12/2/2020 7:02:47 AM ******/
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
/****** Object:  Table [dbo].[Tags]    Script Date: 12/2/2020 7:02:47 AM ******/
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
/****** Object:  Table [dbo].[UserActivityLogs]    Script Date: 12/2/2020 7:02:47 AM ******/
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
/****** Object:  Table [dbo].[UserGroups]    Script Date: 12/2/2020 7:02:47 AM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 12/2/2020 7:02:47 AM ******/
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

INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (1, N'Xây dựng cấu hình PC', N'xay-dung-cau-hinh-pc', N'/Data/images/Category/gaming-workstation.png', N'/Data/images/Category/PC-a%20(1).png', NULL, NULL, N'GAMING<br>WORKSTATION<br>PC', 1, NULL, NULL, CAST(N'2020-12-01 22:28:14.507' AS DateTime), N'quang', NULL, NULL, 1, NULL, N'rgb(41, 50, 78) transparent rgb(255, 143, 2);')
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (2, N'Laptops', N'laptops', N'/Data/images/Category/gaming-laptop.png', N'/Data/images/Category/Laptop-c.png', N'/Data/images/Category/banner-danh-muclaptop.jpg', NULL, N'GAMING<br>LAPTOP', 2, NULL, NULL, CAST(N'2020-12-01 22:28:27.810' AS DateTime), N'quang', NULL, NULL, 1, NULL, N'rgb(41, 50, 78) transparent rgb(255, 242, 0);')
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (3, N'Linh kiện máy tính', N'linh-kien-may-tinh', N'/Data/images/Category/linh-kien.png', N'/Data/images/Category/linh-kien-c%20(1).png', N'/Data/images/Category/banner-danh-muclinh-kien.jpg', NULL, N'LINH KIỆN<br>MÁY TÍNH', 3, NULL, NULL, CAST(N'2020-12-01 22:29:00.350' AS DateTime), N'quang', NULL, NULL, 1, NULL, N'rgb(41, 50, 78) transparent rgb(0, 249, 201);')
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (4, N'Màn hình máy tính', N'man-hinh-may-tinh', N'/Data/images/Category/man-hinh.png', N'/Data/images/Category/man-hinh-b.png', N'/Data/images/Category/banner-danh-mucman-hinh.jpg', NULL, N'MÀN HÌNH<br>MÁY TÍNH', 4, NULL, NULL, CAST(N'2020-12-01 22:29:10.730' AS DateTime), N'quang', NULL, NULL, 1, NULL, N'rgb(41, 50, 78) transparent rgb(249, 73, 95);')
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (5, N'Gaming Gears', N'gaming-gears', N'/Data/images/Category/gaming-gear.png', N'/Data/images/Category/gear-b.png', N'/Data/images/Category/banner-danh-mucgaming-gear.jpg', NULL, N'GAMING GEAR', 5, NULL, NULL, CAST(N'2020-12-01 22:28:38.083' AS DateTime), N'quang', NULL, NULL, 1, NULL, N'rgb(41, 50, 78) transparent rgb(30, 236, 24);')
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (6, N'Phụ kiện - Tản nhiệt PC', N'phu-kien-tan-nhiet-pc', N'/Data/images/Category/phu-kien.png', N'/Data/images/Category/tan-nhiet-b.png', N'/Data/images/Category/banner-danh-mucphu-kien-tan-nhiet.jpg', NULL, N'PHỤ KIỆN<br>TẢN NHIỆT PC', 6, NULL, NULL, CAST(N'2020-12-01 22:28:47.687' AS DateTime), N'quang', NULL, NULL, 1, NULL, N'rgb(41, 50, 78) transparent rgb(142, 7, 239);')
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (7, N'Thiết bị văn phòng', N'thiet-bi-van-phong', N'/Data/images/Category/ban-ghe.png', N'/Data/images/Category/van-phong-a.png', N'/Data/images/Category/banner-danh-mucthiet-bi-vp.jpg', NULL, N'THIẾT BỊ<br>VĂN PHÒNG', 7, NULL, NULL, CAST(N'2020-12-01 22:29:36.000' AS DateTime), N'quang', NULL, NULL, 1, NULL, N'rgb(41, 50, 78) transparent rgb(102, 93, 234);')
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (8, N'Thiết bị mạng', N'thiet-bi-mang', N'/Data/images/Category/thiet-bi-mang%20(1).png', N'/Data/images/Category/thiet-bi-mang.png', N'/Data/images/Category/banner-danh-mucthiet-bi-mang.jpg', NULL, N'THIẾT BỊ MẠNG ', 8, NULL, NULL, CAST(N'2020-12-01 22:28:00.023' AS DateTime), N'quang', NULL, NULL, 1, NULL, N'rgb(41, 50, 78) transparent rgb(241, 232, 155);')
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (9, N'Balo Gaming', N'balo-gaming', N'/Data/images/Category/balo-tnc-300x300.png', NULL, NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-01 17:43:17.247' AS DateTime), N'quang', NULL, NULL, 1, 5, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (10, N'Bàn di chuột ', N'ban-di-chuot', N'/Data/images/Category/ban-di-chuot-300x300.png', NULL, NULL, NULL, NULL, 2, NULL, NULL, CAST(N'2020-12-01 17:43:29.613' AS DateTime), N'quang', NULL, NULL, 1, 5, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (11, N'Bàn phím Gaming', N'ban-phim-gaming', N'/Data/images/Category/ban-phim-co-300x300.png', NULL, NULL, NULL, NULL, 3, NULL, NULL, CAST(N'2020-12-01 17:42:49.117' AS DateTime), N'quang', NULL, NULL, 1, 5, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (12, N'Bàn, Ghế Game ', N'ban-ghe-game', N'/Data/images/Category/ghe-tnc-300x300.png', NULL, NULL, NULL, N'<div class="description">
<p>TNC Store- Chuy&ecirc;n cung cấp c&aacute;c sản phẩm ghế , b&agrave;n chơi game cao cấp. Hỗ trợ lắp đặt v&agrave; ship tận nh&agrave;.</p>
</div>
', 4, NULL, NULL, CAST(N'2020-12-01 17:43:48.753' AS DateTime), N'quang', NULL, NULL, 1, 5, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (13, N'Bộ Bàn Phím Chuột Không Dây ', N'bo-ban-phim-chuot-khong-day', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-01 17:46:55.553' AS DateTime), N'quang', NULL, NULL, 1, 7, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (14, N'Bộ Chia USB ', N'bo-chia-usb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-12-01 17:47:09.647' AS DateTime), N'quang', NULL, NULL, 1, 7, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (15, N'Card Mạng ', N'card-mang', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, CAST(N'2020-12-01 17:48:50.563' AS DateTime), N'quang', NULL, NULL, 1, 8, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (16, N'Case - Vỏ máy tính', N'case-vo-may-tinh', N'/Data/images/Category/case-tnc-300x300.png', NULL, NULL, NULL, NULL, 7, NULL, NULL, CAST(N'2020-12-01 17:39:02.627' AS DateTime), N'quang', NULL, NULL, 1, 3, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (17, N'Chuột Gaming', N'chuot-gaming', N'/Data/images/Category/chuot-gaming-tnc-300x300.png', NULL, NULL, NULL, NULL, 5, NULL, NULL, CAST(N'2020-12-01 17:44:06.437' AS DateTime), N'quang', NULL, NULL, 1, 5, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (18, N'CPU - Bộ vi xử lý ', N'cpu-bo-vi-xu-ly', N'/Data/images/Category/cpu-tnc-300x300.png', NULL, NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-01 17:38:46.647' AS DateTime), N'quang', NULL, NULL, 1, 3, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (19, N'Dây Nối Dài - Dây Riser', N'day-noi-dai-day-riser', N'/Data/images/Category/day-riser-tnc-300x300.png', NULL, NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-01 17:45:58.030' AS DateTime), N'quang', NULL, NULL, 1, 6, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (20, N'Gaming laptop', N'gaming-laptop', N'/Data/images/Category/gaming-laptop-tnc-300x300.png', NULL, NULL, NULL, N'<div class="description">
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
', 1, NULL, NULL, CAST(N'2020-12-01 17:38:12.897' AS DateTime), N'quang', NULL, NULL, 1, 2, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (21, N'GIÁ ĐỠ VGA', N'gia-do-vga', N'/Data/images/Category/gia-do-vga-300x300.png', NULL, NULL, NULL, NULL, 2, NULL, NULL, CAST(N'2020-12-01 17:46:12.660' AS DateTime), N'quang', NULL, NULL, 1, 6, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (22, N'Keycaps', N'keycaps', N'/Data/images/Category/keycap-tnc-300x300.png', NULL, NULL, NULL, NULL, 6, NULL, NULL, CAST(N'2020-12-01 17:44:16.500' AS DateTime), N'quang', NULL, NULL, 1, 5, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (23, N'Laptop Văn Phòng ', N'laptop-van-phong', N'/Data/images/Category/laptop-vanphong-tnc-300x300.png', NULL, NULL, NULL, NULL, 2, NULL, NULL, CAST(N'2020-12-01 17:49:09.113' AS DateTime), N'quang', NULL, NULL, 1, 2, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (24, N'Loa Máy Tính', N'loa-may-tinh', N'/Data/images/Category/loa-vi-tinh-300x300.png', NULL, NULL, NULL, NULL, 3, NULL, NULL, CAST(N'2020-12-01 17:47:30.660' AS DateTime), N'quang', NULL, NULL, 1, 7, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (25, N'Mainboard - Bo mạch chủ', N'mainboard-bo-mach-chu', N'/Data/images/Category/main-tnc-300x300.png', NULL, NULL, NULL, NULL, 3, NULL, NULL, CAST(N'2020-12-01 17:39:23.400' AS DateTime), N'quang', NULL, NULL, 1, 3, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (26, N'MICROPHONE ', N'microphone', N'/Data/images/Category/microphone-tnc-300x300.png', NULL, NULL, NULL, NULL, 7, NULL, NULL, CAST(N'2020-12-01 17:44:27.467' AS DateTime), N'quang', NULL, NULL, 1, 5, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (27, N'Màn Hình Gaming ', N'man-hinh-gaming', N'/Data/images/Category/man-hinh-gaming-300x300.png', NULL, NULL, NULL, N'<div class="description">
<p><img src="https://www.tncstore.vn/image/catalog/banner/2020/T11/danh-muc-man-hinh-gaming-tnc.jpg" style="float:left; width:25%" /><strong>M&agrave;n h&igrave;nh Gaming - Người bạn đồng h&agrave;nh tri kỷ của game thủ&nbsp;</strong></p>

<p>C&oacute; thể n&oacute;i m&agrave;n h&igrave;nh ch&iacute;nh l&agrave; một trong những trợ thủ đắc lực nhất của c&aacute;c gamer. Một cấu h&igrave;nh PC Gaming hiệu năng mạnh mẽ nhưng đi k&egrave;m với n&oacute; l&agrave; <strong>m&agrave;n h&igrave;nh gaming</strong> chất lượng thấp th&igrave; trải nghiệm của anh em chắc chắn sẽ bị ảnh hưởng rất nhiều.&nbsp;</p>

<p><strong>Thiết kế</strong></p>

<p>C&aacute;c <strong>m&agrave;n h&igrave;nh gaming</strong> thường c&oacute; thiết kế kh&aacute; ri&ecirc;ng biệt, đậm c&aacute; t&iacute;nh. Tuỳ thuộc v&agrave;o g&oacute;c học tập v&agrave; sở th&iacute;ch của anh em m&agrave; c&oacute; thể lựa chọn c&aacute;c mẫu <strong>m&agrave;n h&igrave;nh gaming</strong> đến từ c&aacute;c h&atilde;ng sản xuất kh&aacute;c nhau. Đến với <strong>TNC Store</strong>, anh em sẽ c&oacute; rất nhiều lựa chọn <strong>m&agrave;n h&igrave;nh gaming</strong> kh&aacute;c nhau với đủ c&aacute;c thương hiệu lớn, uy t&iacute;n như MSI, Asus, Gigabyte, Samsung... v&agrave; tất cả sản phẩm đều ch&iacute;nh h&atilde;ng, 100% brand new, được đ&oacute;ng g&oacute;i cẩn thận từ nh&agrave; sản xuất.</p>

<p><strong>K&iacute;ch thước m&agrave;n h&igrave;nh</strong></p>

<p>T&ugrave;y thuộc v&agrave;o nhu cầu sử dụng của anh em m&agrave; sẽ c&oacute; những sự lựa chọn k&iacute;ch thước m&agrave;n h&igrave;nh kh&aacute;c nhau. Nếu anh em c&oacute; sở th&iacute;ch chơi game, muốn try hard, chơi chuy&ecirc;n nghiệp th&igrave; k&iacute;ch thước từ 30 inch đổ xuống l&agrave; ph&ugrave; hợp. C&ograve;n anh em x&aacute;c định chơi game giải tr&iacute;, thư gi&atilde;n, ngo&agrave;i ra c&ograve;n c&oacute; thể xem phim, l&agrave;m video&hellip; th&igrave; c&oacute; thể lựa chọn c&aacute;c <strong>m&agrave;n h&igrave;nh gaming</strong> k&iacute;ch thước lớn hơn.</p>

<p><strong>Tỷ lệ m&agrave;n h&igrave;nh</strong></p>

<p>Hiện nay c&oacute; hai tỷ lệ phổ biến đ&oacute; l&agrave; 16:9 v&agrave; 21:9. Trong đ&oacute; 16:9 l&agrave; tỷ lệ cơ bản nhất. Anh em game thủ muốn try hard, theo con đường chuy&ecirc;n nghiệp th&igrave; tỷ lệ 16:9 ch&iacute;nh l&agrave; b&iacute; quyết gi&agrave;nh chiến thắng tr&ecirc;n chiến trường. Tỷ lệ 21:9 ph&ugrave; hợp với c&aacute;c tựa game phi&ecirc;u lưu, cốt truyện, đậm chất cinematic. Nếu anh em muốn một chiếc m&agrave;n h&igrave;nh độc, lạ th&igrave; c&aacute;c <strong>m&agrave;n h&igrave;nh gaming</strong> tỷ lệ 32:9 ch&iacute;nh l&agrave; sản phẩm đ&aacute;ng để sở hữu.</p>

<p><strong>Độ ph&acirc;n giải.</strong></p>

<p>Những chiếc <strong>m&agrave;n h&igrave;nh gaming</strong> FULL HD hiện nay đều c&oacute; gi&aacute; th&agrave;nh rẻ hơn trước rất nhiều n&ecirc;n rất th&iacute;ch hợp với phần đ&ocirc;ng game thủ. Tuy nhi&ecirc;n, với những chiếc PC Gaming c&oacute; hiệu năng khủng, trang bị card đồ hoạ thế hệ mới nhất th&igrave; việc sắm c&aacute;c m&agrave;n h&igrave;nh độ ph&acirc;n giải 2K, 4K l&agrave; cần thiết để tận dụng hết sức mạnh của bộ Gaming PC.&nbsp;</p>

<p><strong>Tấm nền</strong></p>

<p>Với nhu cầu chơi game giải tr&iacute;, thư gi&atilde;n sau những giờ l&agrave;m việc căng thẳng th&igrave; c&aacute;c <strong>m&agrave;n h&igrave;nh gaming</strong> sử dụng tấm nền IPS c&oacute; khả năng hiển thị m&agrave;u sắc tuyệt vời sẽ mang lại trải nghiệm tốt nhất cho anh em. Song song với đ&oacute;, c&aacute;c <strong>m&agrave;n h&igrave;nh gaming</strong> tấm nền VA v&agrave; TN sẽ gi&uacute;p c&aacute;c em game thủ muốn tiến tới thi đấu chuy&ecirc;n nghiệp lợi thế lớn nhờ tốc độ phản hồi nhanh. Ngo&agrave;i ra, khi mua c&aacute;c <strong>m&agrave;n h&igrave;nh gaming</strong> tại <strong>TNC Store</strong>, anh em sẽ được hỗ trợ c&acirc;n m&agrave;u m&agrave;n h&igrave;nh ho&agrave;n to&agrave;n miễn ph&iacute;!&nbsp;</p>

<p><strong>Tần số qu&eacute;t</strong></p>

<p>Kh&aacute;c với c&aacute;c m&agrave;n h&igrave;nh th&ocirc;ng thường, c&aacute;c nh&agrave; sản xuất thường ch&uacute; &yacute; tới tần số qu&eacute;t tr&ecirc;n <strong>m&agrave;n h&igrave;nh gaming</strong>. Việc lựa chọn m&agrave;n h&igrave;nh c&oacute; tần số qu&eacute;t ph&ugrave; hợp l&agrave; rất quan trọng. C&oacute; rất nhiều anh em sử dụng m&agrave;n h&igrave;nh c&oacute; tần số qu&eacute;t kh&ocirc;ng đ&aacute;p ứng được hiệu năng từ c&aacute;c card đồ hoạ, khiến trải nghiệm gaming bị ảnh hưởng kh&aacute; nhiều. Ch&iacute;nh v&igrave; vậy n&ecirc;n c&aacute;c bộ PC Gaming tại <strong>TNC Store</strong> đều c&oacute; phần test hiệu năng chơi game thực tế nhằm gi&uacute;p anh em t&igrave;m ra được chiếc m&agrave;n h&igrave;nh gaming ưng &yacute; nhất.&nbsp;</p>

<p><strong>C&ocirc;ng nghệ t&iacute;ch hợp</strong></p>

<p>Th&ecirc;m v&agrave;o đ&oacute;, c&aacute;c <strong>m&agrave;n h&igrave;nh Gaming</strong> chuy&ecirc;n biệt được nh&agrave; sản xuất trang bị th&ecirc;m c&aacute;c t&iacute;nh năng như G-Sync, FreeSync, Motion Blur&hellip; G-Sync (của NVIDIA), FreeSync (của AMD) l&agrave; c&ocirc;ng nghệ chống x&eacute; h&igrave;nh, gi&uacute;p c&aacute;c khung h&igrave;nh được GPU xuất ra đồng bộ với tần số qu&eacute;t của <strong>m&agrave;n h&igrave;nh gaming</strong>, đem lại trải nghiệm khi chơi game tuyệt vời nhất. Một điểm lưu &yacute; đ&oacute; l&agrave; c&aacute;c <strong>m&agrave;n h&igrave;nh gaming</strong> G-Sync chỉ th&iacute;ch hợp với c&aacute;c card đồ họa NVIDIA do d&ugrave;ng module độc quyền n&ecirc;n anh em cần xem x&eacute;t kỹ lưỡng trước khi mua sắm. Do FreeSync l&agrave; c&ocirc;ng nghệ kh&ocirc;ng sử dụng module độc quyền n&ecirc;n được t&iacute;ch hợp kh&aacute; rộng r&atilde;i, ngay cả tr&ecirc;n những chiếc <strong>m&agrave;n h&igrave;nh gaming</strong> gi&aacute; rẻ. Do đ&oacute; n&ecirc;n FreeSync kh&oacute; c&oacute; thể hoạt động một c&aacute;ch ho&agrave;n hảo như G-Sync. C&ocirc;ng nghệ Motion Blur (tạo c&aacute;c vệt mờ khi chuyển động) rất th&iacute;ch hợp nến anh em chơi c&aacute;c tựa game như đua xe. Tuy nhi&ecirc;n, với game thủ bắn s&uacute;ng, cần độ ch&iacute;nh x&aacute;c cao th&igrave; c&aacute;c <strong>m&agrave;n h&igrave;nh gaming</strong> c&oacute; c&ocirc;ng nghệ Motion Blur thực sự kh&aacute; phiền to&aacute;i.</p>

<div>&nbsp;</div>
</div>
', 1, NULL, NULL, CAST(N'2020-12-01 22:06:55.537' AS DateTime), N'quang', NULL, NULL, 1, 4, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (28, N'Màn Hình Văn Phòng ', N'man-hinh-van-phong', N'/Data/images/Category/man-hinh-van-phong-300x300.png', NULL, NULL, NULL, NULL, 2, NULL, NULL, CAST(N'2020-12-01 22:07:05.037' AS DateTime), N'quang', NULL, NULL, 1, 4, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (29, N'Màn Hình Đồ Họa', N'man-hinh-do-hoa', N'/Data/images/Category/man-hinh-do-hoa-a-300x300.png', NULL, NULL, NULL, N'<div class="description">
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
', 3, NULL, NULL, CAST(N'2020-12-01 22:07:15.803' AS DateTime), N'quang', NULL, NULL, 1, 4, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (30, N'Máy in Laser', N'may-in-laser', NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, CAST(N'2020-12-01 17:48:20.807' AS DateTime), N'quang', NULL, NULL, 1, 7, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (31, N'Phần mềm bản quyền', N'phan-mem-ban-quyen', NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, CAST(N'2020-12-01 17:47:48.330' AS DateTime), N'quang', NULL, NULL, 1, 7, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (32, N'PRO AUDIO', N'pro-audio', N'/Data/images/Category/cat-gp-graphic.png', NULL, NULL, N'PC có tính thẩm mỹ cao năng lực xử lý vượt trội cho các nhà sáng tạo nội dung.', N'<div class="description">
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
', 3, NULL, NULL, CAST(N'2020-12-01 17:37:09.727' AS DateTime), N'quang', NULL, NULL, 1, 1, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (33, N'PRO AUDIO', N'pro-audio', N'/Data/images/Category/cat-gp-audio.png', NULL, NULL, N'Cấu hình PC tối ưu cho Studio âm nhạc, dành cho Composer/Producer', N'<div class="description">
<p><img src="https://www.tncstore.vn/image/catalog/banner/2020/T11/pro-audio-tnc.jpg" style="float:left; width:25%" /><span style="font-family:chakra petch; font-size:18px"><strong>PC PRO Audio - Khi &acirc;m nhạc l&agrave; cuộc sống</strong></span></p>

<p>&nbsp;</p>

<p><span style="font-size:18px">Những đặc trưng tạo n&ecirc;n một chiếc <strong>PC Pro Audio - STUDIO</strong> ho&agrave;n hảo!&nbsp;</span><span style="font-family:chakra petch; font-size:18px">Kh&ocirc;ng như những d&ograve;ng m&aacute;y PC Gaming, PC Workstation coi trọng việc xử l&yacute; đồ hoạ, <strong>PC Pro Audio</strong> c&oacute; c&aacute;c đặc điểm những đặc điểm ri&ecirc;ng nhằm tối ưu h&oacute;a c&ocirc;ng việc l&agrave;m nhạc, chỉnh sửa &acirc;m thanh.&nbsp;</span><span style="font-family:chakra petch; font-size:18px">Giống như Pro Creator v&agrave; Pro Workstation, <strong>PC Pro Audio</strong> cũng c&oacute; c&aacute;c d&ograve;ng m&aacute;y Basic, Advanced, Premium v&agrave; Master.</span></p>

<p><span style="font-size:18px">Kh&aacute;c với việc chỉnh sửa video, l&agrave;m đồ hoạ, chơi game&hellip; cần xử l&yacute; nhiều t&aacute;c vụ c&ugrave;ng l&uacute;c, sản xuất nhạc chủ yếu l&agrave; xử l&yacute; c&aacute;c hoạt động lần lượt, nối tiếp nhau. Do vậy, c&aacute;ch chọn CPU c&oacute; sức mạnh xử l&yacute; đơn nh&acirc;n mạnh mẽ l&agrave; điều quan trọng h&agrave;ng đầu trong d&ograve;ng <strong>PC Pro Audio</strong>.&nbsp;</span><span style="font-family:chakra petch; font-size:18px">Tiếp đến, những d&ograve;ng mainboard của STUDIO đến từ TNC Store được trang bị DAC audio chất lượng cao, gi&uacute;p cho &acirc;m thanh trong trẻo, t&iacute;n hiệu sạch sẽ v&agrave; chi tiết hơn. Những đoạn nhạc giờ đ&acirc;y sẽ trở n&ecirc;n sống động, ch&acirc;n thực, rất ph&ugrave; hợp cho c&aacute;c studio từ đơn giản tới chuy&ecirc;n nghiệp.&nbsp;</span><span style="font-family:chakra petch; font-size:18px">Vỏ case l&agrave; yếu tố kh&ocirc;ng thể thiếu do m&ocirc;i trường l&agrave;m việc của anh em cần sự tập trung tuyệt đối, tr&aacute;nh c&aacute;c tiếng ồn kh&ocirc;ng đ&aacute;ng c&oacute;. Một case m&aacute;y chuy&ecirc;n dụng của <strong>PC Pro Audio</strong> sẽ giảm thiểu tối đa độ ồn từ c&aacute;c linh kiện.</span></p>

<p><span style="font-family:chakra petch; font-size:18px"><strong>*5 L&iacute; do m&agrave; anh em&nbsp; kh&ocirc;ng thể bỏ lỡ khi chọn PC Audio chỉ c&oacute; tại TNC Store:</strong></span></p>

<ul>
	<li><span style="font-size:18px">100% Linh kiện được đảm bảo bảo h&agrave;nh ch&iacute;nh h&atilde;ng, mới brand new, nguy&ecirc;n hộp.</span></li>
	<li><span style="font-size:18px">M&aacute;y được đ&oacute;ng g&oacute;i v&agrave; lắp đặt cẩn thận, chuy&ecirc;n nghiệp, đẹp.</span></li>
	<li><span style="font-size:18px">Được đổi mới ngay trong v&ograve;ng 7 ng&agrave;y nếu c&oacute; sự cố từ NSX.</span></li>
	<li><span style="font-size:18px">Hỗ trợ trả g&oacute;p 0% l&atilde;i suất, thanh to&aacute;n linh hoạt.</span></li>
	<li><span style="font-size:18px">Hỗ trợ c&agrave;i đặt c&aacute;c phần mềm c&oacute; sẵn, cơ bản trọn đời.</span></li>
</ul>

<div>&nbsp;</div>
</div>
', 5, NULL, NULL, CAST(N'2020-12-01 17:37:34.120' AS DateTime), N'quang', NULL, NULL, 1, 1, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (34, N'PRO DUCTIVITY', N'pro-ductivity', N'/Data/images/Category/cat-gp-ductivity.png', NULL, NULL, N'PC dựng sẵn với kích thước và hiệu năng phù hợp cho công việc văn phòng và giải trí tại gia.', N'<div class="description">
<h2><span style="font-size:12px"><span style="font-size:14px"><strong>Intel NUC l&agrave; g&igrave;?</strong></span></span></h2>

<p><a href="https://www.tncstore.vn/home-pc.html" target="_blank">Intel NUC</a> (Next Unit of Computing ) c&oacute; thể được gọi đơn giản l&agrave; thế hệ m&aacute;y t&iacute;nh tiếp theo được Intel ph&aacute;t triển dựa tr&ecirc;n ti&ecirc;u ch&iacute; si&ecirc;u nhỏ gọn v&agrave; c&oacute; độ t&ugrave;y biến cao theo nhu cầu sử dụng.</p>

<h3><strong><span style="font-size:24px">1. Cấu h&igrave;nh v&agrave; hiệu năng</span></strong></h3>

<p>Về cấu h&igrave;nh th&igrave; những chiếc m&aacute;y Intel NUC thường sử dụng CPU d&ograve;ng tiết kiệm điện v&agrave; ram dạng nhỏ giống với laptop n&ecirc;n hiệu năng ở mức cơ bản đ&aacute;p ứng đầy đủ c&aacute;c nhu cầu&nbsp;phần mềm ứng dụng văn ph&ograve;ng như Office, lướt web v&agrave; giải tr&iacute; đa phương tiện. Thậm ch&iacute; Card đồ họa t&iacute;ch hợp sẽ gi&uacute;p bạn thao t&aacute;c mượt m&agrave; với c&aacute;c phần mềm nhẹ nh&agrave;ng như Photoshop, Lightroom...</p>

<h3><strong><span style="font-size:24px">2. Mang t&iacute;nh linh hoạt cao</span></strong></h3>

<p>Với k&iacute;ch thước cực kỳ nhỏ gọn, chỉ bằng ph&acirc;n nửa một bộ nguồn PC th&ocirc;ng thường n&ecirc;n NUC sẽ l&agrave; chiếc m&aacute;y t&iacute;nh l&yacute; tưởng cho cơ quan, doanh nghiệm, tr&igrave;nh chiếu hay giải tr&iacute; cơ bản tại nh&agrave; như lướt web, xem phim...</p>

<h3><span style="font-size:24px"><strong>3. Độ ổn định v&agrave; độ bền trứ danh từ Intel</strong></span></h3>

<p>Intel l&agrave; &ocirc;ng vua phần cứng đ&atilde; qu&aacute; nổi tiếng với c&aacute;c d&ograve;ng CPU c&oacute; độ ổn định v&agrave; độ bền cực kỳ cao, Intel NUC cũng kh&ocirc;ng phải l&agrave; ngoại lệ, bạn sẽ kh&ocirc;ng phải quan t&acirc;m qu&aacute; nhiều về c&aacute;c vấn đề ph&aacute;t sinh hay bảo tr&igrave; bảo h&agrave;nh khi sử dụng</p>

<h3><span style="font-size:24px"><strong>4. C&aacute;c quyền lợi v&agrave;ng khi mua Intel NUC chỉ c&oacute; tại TNC Store:</strong></span></h3>

<p><span style="font-size:12px">- 100% Linh Kiện được đảm bảo ch&iacute;nh h&atilde;ng, mới brand new, nguy&ecirc;n hộp.</span></p>

<p>- M&aacute;y được kỹ thuật lắp đặt cẩn thận nếu qu&yacute; kh&aacute;ch ph&aacute;t sinh th&ecirc;m nhu cầu n&acirc;ng cấp Ram, SSD.</p>

<p>- Được đổi mới ngay trong v&ograve;ng 7 ng&agrave;y, nếu c&oacute; sự cố từ NSX.</p>

<p>- Hỗ trợ trả g&oacute;p 0% l&atilde;i suất, thanh to&aacute;n linh hoạt.</p>

<p>- Hỗ trợ c&agrave;i đặt c&aacute;c phần mềm c&oacute; sẵn, cơ bản trọn đời.</p>

<p>H&atilde;y c&ugrave;ng với<a href="https://www.tncstore.vn/" target="_blank"> TNC Store</a> bắt tay v&agrave;o việc lựa chọn phần cứng v&agrave; tự tay cấu h&igrave;nh chiếc NUC của m&igrave;nh ngay h&ocirc;m nay !&nbsp;</p>
</div>
', 4, NULL, NULL, CAST(N'2020-12-01 17:37:37.173' AS DateTime), N'quang', NULL, NULL, 1, 1, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (35, N'PRO GAMING PC', N'pro-gaming-pc', N'/Data/images/Category/cat-gp-gaming.png', NULL, NULL, N'PC cấu hình khủng cùng linh kiện cao cấp, đem tới trải nghiệm gaming hấp dẫn nhất.', N'<div class="description">
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
', 1, NULL, NULL, CAST(N'2020-12-01 17:37:39.947' AS DateTime), N'quang', NULL, NULL, 1, 1, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (36, N'PRO VR', N'pro-vr', N'/Data/images/Category/cat-gp-vr.png', NULL, NULL, N'Thế giới ảo, trải nghiệm thật với cấu hình PC chuyên Virtual Reality', N'<div class="description">
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
', 6, NULL, NULL, CAST(N'2020-12-01 17:37:43.130' AS DateTime), N'quang', NULL, NULL, 1, 1, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (37, N'PRO WORKSTATION', N'pro-workstation', N'/Data/images/Category/cat-gp-video.png', NULL, NULL, N'Cấu hình PC chuyên dụng cho các công việc thiết kế, kiến trúc, đồ họa đòi hỏi hiệu suất cao.', N'<div class="description">
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
', 2, NULL, NULL, CAST(N'2020-12-01 17:37:45.920' AS DateTime), N'quang', NULL, NULL, 1, 1, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (38, N'PSU - Nguồn máy tính', N'psu-nguon-may-tinh', N'/Data/images/Category/psu-tnc-300x300.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-12-01 17:41:30.817' AS DateTime), N'quang', NULL, NULL, 1, 3, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (39, N'Quạt Tản Nhiệt PC', N'quat-tan-nhiet-pc', N'/Data/images/Category/fan-tnc-300x300.png', NULL, NULL, NULL, NULL, 5, NULL, NULL, CAST(N'2020-12-01 17:46:33.967' AS DateTime), N'quang', NULL, NULL, 1, 6, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (40, N'RAM - Bộ nhớ trong', N'ram-bo-nho-trong', N'/Data/images/Category/ram-tnc-300x300.png', NULL, NULL, NULL, NULL, 4, NULL, NULL, CAST(N'2020-12-01 17:40:01.253' AS DateTime), N'quang', NULL, NULL, 1, 3, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (41, N'ROUTER WIFI', N'router-wifi', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-01 17:48:40.117' AS DateTime), N'quang', NULL, NULL, 1, 8, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (42, N'Tai Nghe Gaming', N'tai-nghe-gaming', N'/Data/images/Category/headphone-tnc-300x300%20(1).png', NULL, NULL, NULL, N'<div class="description">
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
', 8, NULL, NULL, CAST(N'2020-12-01 17:44:41.167' AS DateTime), N'quang', NULL, NULL, 1, 5, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (43, N'Tay cầm chơi game', N'tay-cam-choi-game', N'/Data/images/Category/taycam-tnc-300x300.png', NULL, NULL, NULL, NULL, 9, NULL, NULL, CAST(N'2020-12-01 17:45:00.067' AS DateTime), N'quang', NULL, NULL, 1, 5, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (44, N'Thiết bị Stream', N'thiet-bi-stream', N'/Data/images/Category/stream-tnc-300x300.png', NULL, NULL, NULL, NULL, 10, NULL, NULL, CAST(N'2020-12-01 17:45:16.887' AS DateTime), N'quang', NULL, NULL, 1, 5, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (45, N'Tản nhiệt khí cho PC ', N'tan-nhiet-khi-cho-pc', N'/Data/images/Category/tan-khi-tnc-300x300.png', NULL, NULL, NULL, NULL, 3, NULL, NULL, CAST(N'2020-12-01 17:45:45.350' AS DateTime), N'quang', NULL, NULL, 1, 6, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (46, N'Tản nước ALL IN ONE', N'tan-nuoc-all-in-one', N'/Data/images/Category/tan-nuoc-tnc-300x300.png', NULL, NULL, NULL, NULL, 4, NULL, NULL, CAST(N'2020-12-01 17:46:21.583' AS DateTime), N'quang', NULL, NULL, 1, 6, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (47, N'VGA - Card màn hình', N'vga-card-man-hinh', N'/Data/images/Category/vga-tnc-300x300.png', NULL, NULL, NULL, N'<div class="description">
<div>
<h2><img src="https://tncstore.cdn.vccloud.vn/image/catalog/banner/tnc-vga-icon.jpg" style="float:right; width:250px" /><span style="font-size:18px"><strong>VGA - Card M&agrave;n H&igrave;nh (Graphics Card &ndash; GPU)</strong></span></h2>
</div>

<div>&nbsp;</div>

<div style="text-align: justify;"><span style="font-size:14px">Một chiếc <strong>card m&agrave;n h&igrave;nh</strong> (Graphics Card &ndash; GPU) l&agrave; một th&agrave;nh phần kh&ocirc;ng thể thay thế trong bất cứ m&aacute;y t&iacute;nh n&agrave;o. Th&ocirc;ng thường, <strong>card đồ họa m&aacute;y t&iacute;nh</strong> sẽ được chia th&agrave;nh hai loại. Thứ nhất, card đồ họa t&iacute;ch hợp b&ecirc;n trong bo mạch chủ hoặc trong <strong>CPU</strong>, hoạt động bằng c&aacute;ch sử dụng một phần bộ nhớ hệ thống để xử l&yacute; dữ liệu h&igrave;nh ảnh. Gần đ&acirc;y, c&oacute; sự tiến bộ r&otilde; rệt khi m&agrave; sự xuất hiện của c&aacute;c bộ vi xử l&yacute; APU (Advanced Processing Unit), t&iacute;ch hợp CPU v&agrave; GPU v&agrave;o chung một chip, c&oacute; thể t&igrave;m thấy trong c&aacute;c m&aacute;y game console hoặc tại c&aacute;c bộ vi xử l&yacute; mới trong thời gian trở lại đ&acirc;y. Tuy vậy, c&aacute;c bộ vi xử l&yacute; APU vẫn thuộc ph&acirc;n kh&uacute;c sản phẩm phổ th&ocirc;ng/gi&aacute; rẻ trong nền c&ocirc;ng nghiệp đồ họa m&aacute;y t&iacute;nh hiện nay.</span></div>

<div style="text-align: justify;"><span style="font-size:14px">Đối với c&aacute;c game thủ thực thụ, th&igrave; việc sử dụng một chiếc card đồ họa rời vẫn l&agrave; lựa chọn ph&ugrave; hợp hơn, đem lại tốc độ xử l&yacute; tốt hơn, tỉ lệ khung h&igrave;nh/gi&acirc;y cao hơn, độ ph&acirc;n giải hiển thị cao hơn, cũng như giảm tải bộ nhớ hệ thống <strong><a href="http://www.tncstore.vn/ram">RAM</a></strong> v&agrave; <strong><a href="http://www.tncstore.vn/cpu">CPU</a></strong>. C&aacute;c card đồ họa rời thường kết nối với m&aacute;y t&iacute;nh th&ocirc;ng qua cổng giao tiếp PCI-Express hoặc AGP. Thậm ch&iacute;, c&oacute; thể chạy song song nhiều card đồ họa c&ugrave;ng l&uacute;c th&ocirc;ng qua bus PCI-Express c&oacute; tr&ecirc;n bo mạch chủ hoặc qua một cầu nối dữ liệu.</span></div>

<div style="text-align: justify;"><span style="font-size:14px">Th&agrave;nh phần cơ bản của một chiếc card đồ họa bao gồm 2 phần: chip xử l&yacute; đồ họa (GPU) v&agrave; bộ nhớ đồ họa (Video RAM). Tuy nhi&ecirc;n, kh&aacute;c với card đồ họa t&iacute;ch hợp, th&igrave; c&aacute;c sản phẩm card đồ họa rời c&oacute; th&ocirc;ng số kỹ thuật vượt trội ở cả 2 phần tr&ecirc;n. Những người c&oacute; niềm đam m&ecirc; với game sẽ cần sức mạnh bổ sung đ&aacute;ng gi&aacute; n&agrave;y để c&oacute; thể theo kịp với xu hướng, khi m&agrave; những bước tiến cả về mặt phần cứng v&agrave; phần mềm đ&atilde; tăng cao nhanh ch&oacute;ng. Ngo&agrave;i ra, bạn c&oacute; thể t&igrave;m thấy tr&ecirc;n card đồ họa những th&agrave;nh phần kh&aacute;c như bộ phận tản nhiệt, bộ phận l&agrave;m m&aacute;t, RAMDAC (Random Access Memory Digital-Analogue Converter), một số cổng ra m&agrave;n h&igrave;nh, cổng giao tiếp với bo mạch chủ, chip BIOS chưa firmware của card đồ họa.</span></div>

<div style="text-align: justify;"><span style="font-size:14px">Về cơ bản, <strong>card đồ họa m&aacute;y t&iacute;nh</strong> sẽ xử l&yacute; t&iacute;n hiệu h&igrave;nh ảnh rồi sau đ&oacute; xuất ra m&agrave;n h&igrave;nh th&ocirc;ng qua c&aacute;c giao tiếp kh&aacute;c nhau. C&aacute;c cổng n&agrave;y kết nối trực tiếp với m&agrave;n h&igrave;nh của bạn, cho n&ecirc;n việc lựa chọn giao tiếp đ&uacute;ng sẽ phụ thuộc nhiều v&agrave;o chiếc m&agrave;n h&igrave;nh cũng như chất lượng bạn muốn thể hiện l&ecirc;n tr&ecirc;n m&agrave;n h&igrave;nh đ&oacute;. Một số card m&agrave;n h&igrave;nh cũng sẽ cho ph&eacute;p bạn kết nối nhiều m&agrave;n h&igrave;nh c&ugrave;ng l&uacute;c. Dưới đ&acirc;y l&agrave; những chuẩn kết nối m&agrave;n h&igrave;nh phổ biến</span></div>

<div style="text-align: justify;">&nbsp;</div>

<div style="text-align: justify;"><span style="font-size:14px"><strong>+ Video Graphics Array (VGA/D-sub):</strong> C&ocirc;ng nghệ đ&atilde; xuất hiện từ những năm 1980, tuy nhi&ecirc;n c&oacute; kh&aacute; nhiều điểm hạn chế. Chất lượng hiển thị c&oacute; thể suy giảm nhanh ch&oacute;ng v&igrave; nhiều l&yacute; do như: chất lượng v&agrave; chiều d&agrave;i của d&acirc;y t&iacute;n hiệu, mức độ nhiễu điện, hiện tượng vỡ ảnh, hiện tượng lỗi mẫu cũng c&oacute; thể xảy ra.</span></div>

<div style="text-align: justify;"><span style="font-size:14px"><strong>+ Digital Visual Interface (DVI):</strong> Được sử dụng cho m&agrave;n h&igrave;nh phẳng, như LCD, plasma, c&aacute;c m&agrave;n h&igrave;nh rộng c&oacute; độ ph&acirc;n giải cao, m&aacute;y chiếu. DVI c&oacute; một lợi thế, đ&oacute; l&agrave; tr&aacute;nh được c&aacute;c hiện tượng nh&ograve;e h&igrave;nh kĩ thuật số cũng như nhiễu điện bằng c&aacute;ch sử dụng độ ph&acirc;n giải thực để thể hiện h&igrave;nh ảnh trực tiếp từ m&aacute;y t&iacute;nh l&ecirc;n m&agrave;n h&igrave;nh.</span></div>

<div style="text-align: justify;"><span style="font-size:14px"><strong>+ High-Definition Multimedia Interface (HDMI):</strong> Giao thức audio/video gọn nhẹ d&ugrave;ng để chuyển dữ liệu h&igrave;nh ảnh đến bất cứ thiết bị n&agrave;o tương th&iacute;ch với chuẩn HDMI. Dữ liệu đ&oacute; c&oacute; thể l&agrave; kh&ocirc;ng n&eacute;n hoặc c&aacute;c chuẩn dữ liệu chưa/đ&atilde; n&eacute;n, v&agrave; đ&atilde; trở th&agrave;nh ti&ecirc;u chuẩn kỹ thuật số thay thế c&aacute;c giao tiếp analog cũ lạc hậu.</span></div>

<div style="text-align: justify;"><span style="font-size:14px"><strong>+ DisplayPort:</strong> Ti&ecirc;u chuẩn n&agrave;y được hiệp hội VESA (Video Electronics Standard Association) ph&aacute;t triển, được sử dụng chủ yếu l&agrave;m giao tiếp kết nối m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh hiện nay. Mậc d&ugrave; được thiết kế để thay thế VGA, DVI v&agrave; DisplayPort ho&agrave;n to&agrave;n c&oacute; thể tương th&iacute;ch th&ocirc;ng qua việc sử dụng adapter.&nbsp;</span></div>

<div style="text-align: justify;"><span style="font-size:14px"><strong>- Giao thức với bo mạch chủ</strong></span></div>

<div style="text-align: justify;"><span style="font-size:14px">Qua rất nhiều năm, c&aacute;c kết nối giữa card đồ họa v&agrave; bo mạch chủ đ&atilde; c&oacute; những thay đổi kh&aacute; đ&aacute;ng kể. Ti&ecirc;u chuẩn kết nối đầu ti&ecirc;n xuất hiện mang t&ecirc;n S-100 v&agrave;o năm 1974. Tuy nhi&ecirc;n, phải đến khi chuẩn PCI được ra đời v&agrave;o năm 1993, l&uacute;c n&agrave;y tốc độ mới được tăng l&ecirc;n đ&aacute;ng kể, gi&uacute;p sức cho <strong>card đồ họa rời</strong> ph&aacute;t triển mạnh mẽ như những g&igrave; ch&uacute;ng ta biết ng&agrave;y h&ocirc;m nay. Một số bước ph&aacute;t triển quan trọng c&oacute; thể nhắc đến như ti&ecirc;u chuẩn AGP (Accelerated Graphics Port), c&ugrave;ng với c&aacute;c ti&ecirc;u chuẩn ra đời sau n&agrave;y của PCI, bao gồm PCI-X v&agrave; PCI-Express &ndash; ti&ecirc;u chuẩn ch&iacute;nh v&agrave; phổ biến nhất hiện tại.</span></div>

<div style="text-align: justify;"><span style="font-size:14px"><strong>- Lựa chọn một chiếc card dồ họa hợp l&yacute; ?&nbsp;</strong></span></div>

<div style="text-align: justify;"><span style="font-size:14px">L&agrave;m thế n&agrave;o để mua một card đồ họa vừa hợp l&yacute; với t&uacute;i tiền bạn đang c&oacute;, v&agrave; c&oacute; thể đ&aacute;p ứng được những ứng dụng cần thiết đ&ocirc;i khi c&oacute; thể hơi kh&oacute; khăn một ch&uacute;t. C&oacute; thể n&oacute;i nhanh như sau, việc so s&aacute;nh th&ocirc;ng số card tương ứng một c&aacute;ch sơ đẳng qua kh&ocirc;ng phải l&agrave; một c&aacute;ch thật sự hiệu quả, v&agrave; đ&ocirc;i khi th&ocirc;ng số của GPU v&agrave; VRAM c&oacute; thể đem lại cho bạn một số th&ocirc;ng tin cơ bản, nhưng ch&uacute;ng cũng c&oacute; thể g&acirc;y hiểu nhầm. Một s&oacute; th&ocirc;ng tin cho rằng lựa chọn nh&atilde;n hiệu n&agrave;o cũng mang t&iacute;nh kh&aacute; chủ quan v&agrave; kh&ocirc;ng thật sự l&agrave; th&ocirc;ng tin tin cậy để xem card đồ họa c&oacute; hiệu năng như thế n&agrave;o. V&igrave; vậy, đừng qu&aacute; bị cuốn v&agrave;o những cuộc c&atilde;i v&atilde; <strong>NVIDIA</strong> vs <strong>AMD</strong>, m&agrave; h&atilde;y xem x&eacute;t những điểm quan trọng sau khi bạn đ&atilde; sẵn s&agrave;ng bỏ tiền ra mua sản phẩm:</span></div>

<div style="text-align: justify;"><span style="font-size:14px">+ Tỉ lệ gi&aacute; th&agrave;nh/hiệu năng: Th&ocirc;ng thường, những chiếc <strong>card đồ họa</strong> mạnh nhất sử dụng c&aacute;c chip xử l&yacute; đồ họa mới nhất sẽ đem lại cho bạn khả năng chơi game tốt nhất trong việc chơi game. Tuy nhi&ecirc;n, nếu bạn chơi c&aacute;c tựa game kh&ocirc;ng đ&ograve;i hỏi qu&aacute; nhiều sức mạnh đồ họa, như Minecraft chẳng hạn, th&igrave; số tiền lớn chi cho <strong>card đồ họa</strong> mới ra đời sẽ thật sự kh&ocirc;ng hợp l&yacute; v&agrave; cần thiết. C&acirc;n bằng được tỉ lệ gi&aacute; th&agrave;nh/hiệu năng so với nhu cầu chơi game của bạn, từ đ&oacute; b&aacute;n sẽ t&igrave;m được chiếc card ph&ugrave; hợp nhất.</span></div>

<div style="text-align: justify;"><span style="font-size:14px">+ &Eacute;p xung v&agrave; tản nhiệt nước: Nếu bạn thật sự muốn gia tăng sức mạnh l&ecirc;n một mức mới, th&igrave; c&oacute; lẽ bạn n&ecirc;n xem x&eacute;t khả năng &eacute;p xung v&agrave;/hoặc d&ugrave;ng tản nhiệt nước của chiếc card đồ họa m&igrave;nh định mua. Hầu hết c&aacute;c card reference, đến từ <strong>NVIDIA</strong> hoặc <strong>AMD</strong>, sẽ c&oacute; được khả năng đ&oacute;. Điều n&agrave;y l&agrave; tr&aacute;i ngược so với những chiếc card đến từ h&atilde;ng sản xuất thứ 3, khi họ cung cấp phần cứng v&agrave; hệ thống tản nhiệt do ch&iacute;nh họ thiết kế v&agrave; tạo ra.&nbsp;</span></div>

<div style="text-align: justify;"><span style="font-size:14px"><strong>+ K&iacute;ch thước v&agrave; mức độ ti&ecirc;u thụ điện năng:</strong> Cho d&ugrave; bạn n&acirc;ng cấp chiếc m&aacute;y t&iacute;nh sẵn c&oacute;, hay x&acirc;y dựng một chiếc ho&agrave;n to&agrave;n mới, h&atilde;y chắc chắn rằng m&igrave;nh lựa chọn <strong>VGA</strong> vừa vặn với case v&agrave; kh&ocirc;ng l&agrave;m cho nguồn m&aacute;y t&iacute;nh bị qu&aacute; tải, đ&oacute; l&agrave; điều kh&aacute; dễ hiểu. Tuy nhi&ecirc;n, lu&ocirc;n l&agrave; hữu &iacute;ch khi xem x&eacute;t lại k&iacute;ch thước cũng như c&ocirc;ng suất nguồn trước khi bạn bỏ tiền ra mua một chiếc <strong>card đồ họa</strong>.</span></div>

<div style="text-align: justify;"><span style="font-size:14px"><strong>+ Độ ổn định v&agrave; độ tương th&iacute;ch:</strong> Mức độ ổn định của card m&agrave;n h&igrave;nh phụ thuộc v&agrave;o kh&aacute; nhiều yếu tố, v&agrave; cũng c&oacute; thể li&ecirc;n kết được với phần mềm m&agrave; bạn sử dụng. Mỗi thế hệ card đồ họa sẽ hỗ trợ từng phi&ecirc;n bản kh&aacute;c nhau của DirectX. Điều đ&oacute; c&oacute; nghĩa l&agrave;, nếu bạn muốn chạy game mới nhất với một chiếc <strong>VGA</strong> cũ hơn, th&igrave; đồ họa hiển thị sẽ bị hạn chế, thậm ch&iacute; trong một số trường hợp, game sẽ kh&ocirc;ng chạy được.</span></div>

<div style="text-align: justify;"><span style="font-size:14px"><strong>+ Giao thức v&agrave; kết nối m&agrave;n h&igrave;nh:</strong> Chọn một chiếc card đồ họa để ph&ugrave; hợp với khả năng hiển thị m&agrave;n h&igrave;nh thường sẽ kh&aacute; đơn giản. Tuy nhi&ecirc;n, c&ocirc;ng nghệ ph&aacute;t triển kh&aacute; nhanh, v&agrave; với sự xuất hiện c&aacute;c c&ocirc;ng nghệ như 3D, </span><span style="font-size:14px">4K, thực tế ảo VR, c&oacute; lẽ tốt hơn l&agrave; chuẩn bị trước cho tương lai sau n&agrave;y. Th&ecirc;m v&agrave;o đ&oacute;, một số card đồ họa c&ograve;n hỗ trợ việc xuất đa m&agrave;n h&igrave;nh cho một trải nghiệm chơi game đậm chất &ldquo;ngầu&rdquo;.</span></div>

<div style="text-align: justify;"><span style="font-size:14px"><strong>+ C&aacute;c ứng dụng kh&ocirc;ng phải l&agrave; game:</strong> Hầu hết c&aacute;c h&atilde;ng sản xuất lớn đều c&oacute; hỗ trợ cho c&aacute;c ứng dụng kh&ocirc;ng phải l&agrave; game như thiết kế với sự trợ gi&uacute;p của m&aacute;y t&iacute;nh (CAD &ndash; Computer Aided Design), chỉnh sửa video, thiết kế đồ họa. Những card n&agrave;y được tối ưu h&oacute;a cho từng ứng dụng, v&agrave; chọn ra sao cho hợp l&yacute; sẽ phụ thuộc v&agrave; chức năng n&agrave;o m&agrave; bạn đang cần.</span></div>

<div style="text-align: justify;">&nbsp;</div>
</div>
', 6, NULL, NULL, CAST(N'2020-12-01 17:41:05.660' AS DateTime), N'quang', NULL, NULL, 1, 3, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (48, N'Webcam', N'webcam', NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, CAST(N'2020-12-01 17:48:05.397' AS DateTime), N'quang', NULL, NULL, 1, 7, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (49, N'Ổ cứng HDD', N'o-cung-hdd', N'/Data/images/Category/hdd-tnc-300x300.png', NULL, NULL, NULL, N'<div class="description">
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
', 5, NULL, NULL, CAST(N'2020-12-01 17:40:49.713' AS DateTime), N'quang', NULL, NULL, 1, 3, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (50, N'Ổ cứng SSD', N'o-cung-ssd', N'/Data/images/Category/ssd-tnc-300x300.png', NULL, NULL, NULL, N'<div class="description">
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
', 2, NULL, NULL, CAST(N'2020-12-01 17:40:29.870' AS DateTime), N'quang', NULL, NULL, 1, 3, NULL)
SET IDENTITY_INSERT [dbo].[ProductCategories] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Images], [Images2nd], [Images3rd], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopNew], [UpTopHot], [Detail], [Guarantee], [Video], [Specification]) VALUES (1, N'Bo Mạch Chủ Asus ROG STRIX B550-F GAMING', NULL, N'bo-mach-chu-asus-rog-strix-b550-f-gaming', N'<p>- K&iacute;ch thước: ATX</p>

<p>- Socket: AM4</p>

<p>- Chipset: B550</p>

<p>- Khe RAM tối đa: 4</p>

<p>- Bus RAM hỗ trợ: 2133 - 4866 Mhz (OC)</p>
', N'/Data/images/product/bo-mach-chu-asus-rog-strix-b550-f-gaming--500x500.jpg', N'/Data/images/product/bo-mach-chu-asus-rog-strix-b550-f-gaming-3-500x500.png', N'/Data/images/product/bo-mach-chu-asus-rog-strix-b550-f-gaming-4-500x500.png', CAST(5690000 AS Decimal(18, 0)), CAST(6690000 AS Decimal(18, 0)), NULL, NULL, 10, NULL, NULL, CAST(N'2020-12-02 06:20:43.077' AS DateTime), N'quang', 18, NULL, 1011, CAST(N'2020-12-02 00:00:00.000' AS DateTime), CAST(N'2020-12-03 00:00:00.000' AS DateTime), N'<div class="content-description">
<p style="text-align:center">Bo Mạch Chủ Asus ROG STRIX B550-F GAMING l&agrave; d&ograve;ng main mới nhất hỗ trợ CPU thế hệ thứ 5 mới nhất của AMD với khả năng &eacute;p xung CPU rất tốt, hiện sản phẩm đ&atilde; c&oacute; mặt tại&nbsp;<a href="http://tncstore.vn/" style="background-color: rgb(255, 255, 255);">TNC Store</a></p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/main/Asus/ROG Strix B550-F/bo-mach-chu-asus-rog-strix-b550-f-gaming-a.jpg" style="width:779px" /></p>
</div>
', 36, NULL, NULL)
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
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands] FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brands] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Brands]
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
/****** Object:  StoredProcedure [dbo].[GetViewMenuBaseRole]    Script Date: 12/2/2020 7:02:47 AM ******/
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
