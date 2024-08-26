USE [master]
GO
/****** Object:  Database [AspProjekat]    Script Date: 02-Jul-24 3:52:10 PM ******/
CREATE DATABASE [AspProjekat]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AspProjekat', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\AspProjekat.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AspProjekat_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\AspProjekat_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [AspProjekat] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AspProjekat].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AspProjekat] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AspProjekat] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AspProjekat] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AspProjekat] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AspProjekat] SET ARITHABORT OFF 
GO
ALTER DATABASE [AspProjekat] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AspProjekat] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AspProjekat] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AspProjekat] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AspProjekat] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AspProjekat] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AspProjekat] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AspProjekat] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AspProjekat] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AspProjekat] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AspProjekat] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AspProjekat] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AspProjekat] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AspProjekat] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AspProjekat] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AspProjekat] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AspProjekat] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AspProjekat] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AspProjekat] SET  MULTI_USER 
GO
ALTER DATABASE [AspProjekat] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AspProjekat] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AspProjekat] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AspProjekat] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AspProjekat] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AspProjekat] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [AspProjekat] SET QUERY_STORE = ON
GO
ALTER DATABASE [AspProjekat] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [AspProjekat]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 02-Jul-24 3:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BenefitJobs]    Script Date: 02-Jul-24 3:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BenefitJobs](
	[BenefitId] [int] NOT NULL,
	[JobId] [int] NOT NULL,
 CONSTRAINT [PK_BenefitJobs] PRIMARY KEY CLUSTERED 
(
	[BenefitId] ASC,
	[JobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Benefits]    Script Date: 02-Jul-24 3:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Benefits](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Benefits] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 02-Jul-24 3:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImageId] [int] NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Blogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 02-Jul-24 3:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryJobs]    Script Date: 02-Jul-24 3:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryJobs](
	[CategoryId] [int] NOT NULL,
	[JobId] [int] NOT NULL,
 CONSTRAINT [PK_CategoryJobs] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC,
	[JobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 02-Jul-24 3:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BlogId] [int] NOT NULL,
	[Text] [nvarchar](500) NOT NULL,
	[AuthorId] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Companies]    Script Date: 02-Jul-24 3:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImageId] [int] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ErrorLogs]    Script Date: 02-Jul-24 3:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ErrorLogs](
	[ErrorId] [uniqueidentifier] NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[StrackTrace] [nvarchar](max) NOT NULL,
	[Time] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ErrorLogs] PRIMARY KEY CLUSTERED 
(
	[ErrorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 02-Jul-24 3:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Path] [nvarchar](max) NOT NULL,
	[Discriminator] [nvarchar](13) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jobs]    Script Date: 02-Jul-24 3:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jobs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RegionId] [int] NOT NULL,
	[TypeId] [int] NOT NULL,
	[RemoteId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[PositionId] [int] NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[Salary] [decimal](18, 2) NOT NULL,
	[Deadline] [datetime2](7) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Jobs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobTechnology]    Script Date: 02-Jul-24 3:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobTechnology](
	[TechnologyId] [int] NOT NULL,
	[JobId] [int] NOT NULL,
 CONSTRAINT [PK_JobTechnology] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC,
	[TechnologyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobUser]    Script Date: 02-Jul-24 3:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobUser](
	[UserId] [int] NOT NULL,
	[JobId] [int] NOT NULL,
	[Time] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_JobUser] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Positions]    Script Date: 02-Jul-24 3:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Positions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Positions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 02-Jul-24 3:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Remote]    Script Date: 02-Jul-24 3:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Remote](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Remote] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Technology]    Script Date: 02-Jul-24 3:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Technology](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Technology] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Testimonials]    Script Date: 02-Jul-24 3:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Testimonials](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Text] [nvarchar](500) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Testimonials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Types]    Script Date: 02-Jul-24 3:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Types](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Types] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UseCaseLogs]    Script Date: 02-Jul-24 3:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UseCaseLogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UseCaseName] [nvarchar](50) NOT NULL,
	[Username] [nvarchar](20) NOT NULL,
	[UseCaseData] [nvarchar](max) NOT NULL,
	[ExecutedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_UseCaseLogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 02-Jul-24 3:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](60) NOT NULL,
	[Password] [nvarchar](120) NOT NULL,
	[Username] [nvarchar](20) NOT NULL,
	[FirstName] [nvarchar](20) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserUseCases]    Script Date: 02-Jul-24 3:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserUseCases](
	[UserId] [int] NOT NULL,
	[UseCaseId] [int] NOT NULL,
 CONSTRAINT [PK_UserUseCases] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[UseCaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240619113321_init', N'8.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240619181950_Category fk fix', N'8.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240619190230_Fixed another many to many table bug', N'8.0.6')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240620085317_benefit', N'8.0.6')
GO
INSERT [dbo].[BenefitJobs] ([BenefitId], [JobId]) VALUES (1, 1)
INSERT [dbo].[BenefitJobs] ([BenefitId], [JobId]) VALUES (1, 3)
GO
SET IDENTITY_INSERT [dbo].[Benefits] ON 

INSERT [dbo].[Benefits] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name]) VALUES (1, CAST(N'2024-06-19T18:14:33.4433686' AS DateTime2), CAST(N'2024-06-20T07:46:49.8778260' AS DateTime2), 1, N'Benefitt')
SET IDENTITY_INSERT [dbo].[Benefits] OFF
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([Id], [ImageId], [Title], [Description], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (1, 1010, N'New title1', N'Discover the latest trends in web design and development. Stay updated with the newest technologies and techniques to enhance your online presence. Explore insightful articles, tutorials, and tips to elevate your skills and create stunning websites', CAST(N'2024-06-19T20:24:11.6343437' AS DateTime2), CAST(N'2024-06-20T08:35:36.5934508' AS DateTime2), 1)
INSERT [dbo].[Blogs] ([Id], [ImageId], [Title], [Description], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (5, 1009, N'Title11', N'DescriptionSwagger', CAST(N'2024-06-25T07:02:29.1134137' AS DateTime2), CAST(N'2024-07-02T12:49:35.2876119' AS DateTime2), 1)
INSERT [dbo].[Blogs] ([Id], [ImageId], [Title], [Description], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (6, 1013, N'New blog new content new ', N'Description blank Description blank Description blank Description blank Description blank Description blank Description blank ', CAST(N'2024-07-02T13:03:51.1146009' AS DateTime2), CAST(N'2024-07-02T13:12:21.0976452' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name]) VALUES (1, CAST(N'2024-06-19T18:36:33.9290496' AS DateTime2), CAST(N'2024-06-20T07:54:24.2471389' AS DateTime2), 1, N'KategorijaUpdate')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
INSERT [dbo].[CategoryJobs] ([CategoryId], [JobId]) VALUES (1, 1)
INSERT [dbo].[CategoryJobs] ([CategoryId], [JobId]) VALUES (1, 3)
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([Id], [BlogId], [Text], [AuthorId], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (1, 1, N'Tekst11231231312', 1, CAST(N'2024-06-19T20:46:15.9492625' AS DateTime2), CAST(N'2024-06-19T20:47:17.0475241' AS DateTime2), 0)
INSERT [dbo].[Comments] ([Id], [BlogId], [Text], [AuthorId], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (3, 1, N'Wow what an amazing post!', 1, CAST(N'2024-06-25T11:53:27.5105447' AS DateTime2), NULL, 1)
INSERT [dbo].[Comments] ([Id], [BlogId], [Text], [AuthorId], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (4, 1, N'Wow what an amazing post!', 1, CAST(N'2024-06-25T11:53:34.0874450' AS DateTime2), NULL, 1)
INSERT [dbo].[Comments] ([Id], [BlogId], [Text], [AuthorId], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (5, 1, N'Wow what an amazing post!', 1, CAST(N'2024-06-25T11:53:34.6338286' AS DateTime2), NULL, 1)
INSERT [dbo].[Comments] ([Id], [BlogId], [Text], [AuthorId], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (6, 1, N'Wow what an amazing post!', 1, CAST(N'2024-06-25T11:53:35.1347434' AS DateTime2), NULL, 1)
INSERT [dbo].[Comments] ([Id], [BlogId], [Text], [AuthorId], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (7, 1, N'Wow what an amazing post!', 1, CAST(N'2024-06-25T11:53:35.5646588' AS DateTime2), NULL, 1)
SET IDENTITY_INSERT [dbo].[Comments] OFF
GO
SET IDENTITY_INSERT [dbo].[Companies] ON 

INSERT [dbo].[Companies] ([Id], [ImageId], [Description], [CreatedAt], [UpdatedAt], [IsActive], [Name]) VALUES (1, 1007, N'Deskripcijaaaaaaaa', CAST(N'2024-06-19T14:17:31.7449360' AS DateTime2), CAST(N'2024-06-20T08:46:52.9882059' AS DateTime2), 1, N'Firma Update1')
INSERT [dbo].[Companies] ([Id], [ImageId], [Description], [CreatedAt], [UpdatedAt], [IsActive], [Name]) VALUES (2, 1007, N'Opis opis opis', CAST(N'2024-06-19T14:25:21.9062169' AS DateTime2), CAST(N'2024-06-19T15:01:28.6875099' AS DateTime2), 1, N'Firma2')
INSERT [dbo].[Companies] ([Id], [ImageId], [Description], [CreatedAt], [UpdatedAt], [IsActive], [Name]) VALUES (3, 1007, N'Opis opis opis', CAST(N'2024-06-19T14:32:33.2601081' AS DateTime2), CAST(N'2024-06-19T15:01:25.0470602' AS DateTime2), 1, N'Firma3')
INSERT [dbo].[Companies] ([Id], [ImageId], [Description], [CreatedAt], [UpdatedAt], [IsActive], [Name]) VALUES (4, 1007, N'Opis opis opis', CAST(N'2024-06-19T14:37:56.2552787' AS DateTime2), NULL, 1, N'Firma4')
INSERT [dbo].[Companies] ([Id], [ImageId], [Description], [CreatedAt], [UpdatedAt], [IsActive], [Name]) VALUES (5, 1007, N'Opis opis opis', CAST(N'2024-06-19T14:42:23.8783728' AS DateTime2), NULL, 1, N'Firma5')
SET IDENTITY_INSERT [dbo].[Companies] OFF
GO
INSERT [dbo].[ErrorLogs] ([ErrorId], [Message], [StrackTrace], [Time]) VALUES (N'd2ed6c0f-3c29-414d-9676-0595f32ee327', N'No service for type ''AspProjekat.Application.UseCases.Queries.IGetSingleCompanyQuery'' has been registered.', N'   at Microsoft.Extensions.DependencyInjection.ServiceProviderServiceExtensions.GetRequiredService(IServiceProvider provider, Type serviceType)
   at Microsoft.AspNetCore.Mvc.ModelBinding.Binders.ServicesModelBinder.BindModelAsync(ModelBindingContext bindingContext)
   at Microsoft.AspNetCore.Mvc.ModelBinding.ParameterBinder.BindModelAsync(ActionContext actionContext, IModelBinder modelBinder, IValueProvider valueProvider, ParameterDescriptor parameter, ModelMetadata metadata, Object value, Object container)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerBinderDelegateProvider.<>c__DisplayClass0_0.<<CreateBinderDelegate>g__Bind|0>d.MoveNext()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeInnerFilterAsync>g__Awaited|13_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|20_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Swashbuckle.AspNetCore.SwaggerUI.SwaggerUIMiddleware.Invoke(HttpContext httpContext)
   at Swashbuckle.AspNetCore.Swagger.SwaggerMiddleware.Invoke(HttpContext httpContext, ISwaggerProvider swaggerProvider)
   at AspProjekat.API.Core.GlobalExceptionHandlingMiddleware.InvokeAsync(HttpContext httpContext) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.API\Core\GlobalExceptionHandlingMiddleware.cs:line 24', CAST(N'2024-06-20T07:20:05.2572857' AS DateTime2))
INSERT [dbo].[ErrorLogs] ([ErrorId], [Message], [StrackTrace], [Time]) VALUES (N'467f3326-06c6-4d3a-bc44-229dae304f20', N'The offset specified in a OFFSET clause may not be negative.', N'   at Microsoft.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at Microsoft.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at Microsoft.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at Microsoft.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at Microsoft.Data.SqlClient.SqlDataReader.TryHasMoreRows(Boolean& moreRows)
   at Microsoft.Data.SqlClient.SqlDataReader.TryReadInternal(Boolean setTimeout, Boolean& more)
   at Microsoft.Data.SqlClient.SqlDataReader.Read()
   at Microsoft.EntityFrameworkCore.Storage.RelationalDataReader.Read()
   at Microsoft.EntityFrameworkCore.Query.Internal.SingleQueryingEnumerable`1.Enumerator.MoveNext()
   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at AspProjekat.Implementation.UseCases.Queries.EfGetBlogsQuery.Execute(PagedSearch search) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.Implementation\UseCases\Queries\EfGetBlogsQuery.cs:line 38
   at AspProjekat.Implementation.UseCaseHandler.HandleQuery[TResult,TSearch](IQuery`2 query, TSearch search) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.Implementation\UseCaseHandler.cs:line 43
   at AspProjekat.API.Controllers.BlogController.Get(PagedSearch search, IGetBlogsQuery query) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.API\Controllers\BlogController.cs:line 31
   at lambda_method25(Closure, Object, Object[])
   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.SyncActionResultExecutor.Execute(ActionContext actionContext, IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeNextActionFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|20_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Swashbuckle.AspNetCore.SwaggerUI.SwaggerUIMiddleware.Invoke(HttpContext httpContext)
   at Swashbuckle.AspNetCore.Swagger.SwaggerMiddleware.Invoke(HttpContext httpContext, ISwaggerProvider swaggerProvider)
   at AspProjekat.API.Core.GlobalExceptionHandlingMiddleware.InvokeAsync(HttpContext httpContext) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.API\Core\GlobalExceptionHandlingMiddleware.cs:line 24', CAST(N'2024-06-24T16:29:51.9531411' AS DateTime2))
INSERT [dbo].[ErrorLogs] ([ErrorId], [Message], [StrackTrace], [Time]) VALUES (N'3de5de77-a548-4287-a5a0-2700f3a0e12f', N'An error occurred while saving the entity changes. See the inner exception for details.', N'   at Microsoft.EntityFrameworkCore.Update.ReaderModificationCommandBatch.Execute(IRelationalConnection connection)
   at Microsoft.EntityFrameworkCore.SqlServer.Update.Internal.SqlServerModificationCommandBatch.Execute(IRelationalConnection connection)
   at Microsoft.EntityFrameworkCore.Update.Internal.BatchExecutor.Execute(IEnumerable`1 commandBatches, IRelationalConnection connection)
   at Microsoft.EntityFrameworkCore.Storage.RelationalDatabase.SaveChanges(IList`1 entries)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChanges(IList`1 entriesToSave)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChanges(StateManager stateManager, Boolean acceptAllChangesOnSuccess)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.<>c.<SaveChanges>b__112_0(DbContext _, ValueTuple`2 t)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.Execute[TState,TResult](TState state, Func`3 operation, Func`3 verifySucceeded)
   at Microsoft.EntityFrameworkCore.ChangeTracking.Internal.StateManager.SaveChanges(Boolean acceptAllChangesOnSuccess)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChanges(Boolean acceptAllChangesOnSuccess)
   at Microsoft.EntityFrameworkCore.DbContext.SaveChanges()
   at AspProjekat.DataAccess.AspContext.SaveChanges() in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.DataAccess\AspContext.cs:line 84
   at AspProjekat.Implementation.UseCases.Commands.Jobs.EfUpdateJobCommand.Execute(UpdateJobDto request) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.Implementation\UseCases\Commands\Jobs\EfUpdateJobCommand.cs:line 51
   at AspProjekat.Implementation.UseCaseHandler.HandleCommand[TData](ICommand`1 command, TData data) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.Implementation\UseCaseHandler.cs:line 28
   at AspProjekat.API.Controllers.JobController.UpdateJob(Int32 id, UpdateJobDto dto, IUpdateJobCommand command) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.API\Controllers\JobController.cs:line 86
   at lambda_method58(Closure, Object, Object[])
   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.SyncActionResultExecutor.Execute(ActionContext actionContext, IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeNextActionFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|20_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Swashbuckle.AspNetCore.SwaggerUI.SwaggerUIMiddleware.Invoke(HttpContext httpContext)
   at Swashbuckle.AspNetCore.Swagger.SwaggerMiddleware.Invoke(HttpContext httpContext, ISwaggerProvider swaggerProvider)
   at AspProjekat.API.Core.GlobalExceptionHandlingMiddleware.InvokeAsync(HttpContext httpContext) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.API\Core\GlobalExceptionHandlingMiddleware.cs:line 24', CAST(N'2024-06-20T09:12:21.1547825' AS DateTime2))
INSERT [dbo].[ErrorLogs] ([ErrorId], [Message], [StrackTrace], [Time]) VALUES (N'564916ec-f2d4-4383-b0fa-2a057cb8eb06', N'Object reference not set to an instance of an object.', N'   at AspProjekat.Implementation.UseCases.Queries.EfGetBlogsQuery.<>c.<Execute>b__5_3(Blog x) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.Implementation\UseCases\Queries\EfGetBlogsQuery.cs:line 52
   at System.Linq.Enumerable.SelectListIterator`2.Fill(ReadOnlySpan`1 source, Span`1 destination, Func`2 func)
   at System.Linq.Enumerable.SelectListIterator`2.ToList()
   at AspProjekat.Implementation.UseCases.Queries.EfGetBlogsQuery.Execute(PagedSearch search) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.Implementation\UseCases\Queries\EfGetBlogsQuery.cs:line 52
   at AspProjekat.Implementation.UseCaseHandler.HandleQuery[TResult,TSearch](IQuery`2 query, TSearch search) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.Implementation\UseCaseHandler.cs:line 43
   at AspProjekat.API.Controllers.BlogController.Get(PagedSearch search, IGetBlogsQuery query) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.API\Controllers\BlogController.cs:line 31
   at lambda_method25(Closure, Object, Object[])
   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.SyncActionResultExecutor.Execute(ActionContext actionContext, IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeNextActionFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|20_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Swashbuckle.AspNetCore.SwaggerUI.SwaggerUIMiddleware.Invoke(HttpContext httpContext)
   at Swashbuckle.AspNetCore.Swagger.SwaggerMiddleware.Invoke(HttpContext httpContext, ISwaggerProvider swaggerProvider)
   at AspProjekat.API.Core.GlobalExceptionHandlingMiddleware.InvokeAsync(HttpContext httpContext) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.API\Core\GlobalExceptionHandlingMiddleware.cs:line 24', CAST(N'2024-06-24T20:11:11.7851531' AS DateTime2))
INSERT [dbo].[ErrorLogs] ([ErrorId], [Message], [StrackTrace], [Time]) VALUES (N'19de799f-e548-4eef-bde3-3de114b4bf1b', N'Object reference not set to an instance of an object.', N'   at AspProjekat.Implementation.UseCases.Queries.EfGetBlogsQuery.<>c.<Execute>b__5_3(Blog x) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.Implementation\UseCases\Queries\EfGetBlogsQuery.cs:line 52
   at System.Linq.Enumerable.SelectListIterator`2.Fill(ReadOnlySpan`1 source, Span`1 destination, Func`2 func)
   at System.Linq.Enumerable.SelectListIterator`2.ToList()
   at AspProjekat.Implementation.UseCases.Queries.EfGetBlogsQuery.Execute(PagedSearch search) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.Implementation\UseCases\Queries\EfGetBlogsQuery.cs:line 52
   at AspProjekat.Implementation.UseCaseHandler.HandleQuery[TResult,TSearch](IQuery`2 query, TSearch search) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.Implementation\UseCaseHandler.cs:line 43
   at AspProjekat.API.Controllers.BlogController.Get(PagedSearch search, IGetBlogsQuery query) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.API\Controllers\BlogController.cs:line 31
   at lambda_method25(Closure, Object, Object[])
   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.SyncActionResultExecutor.Execute(ActionContext actionContext, IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeNextActionFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|20_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Swashbuckle.AspNetCore.SwaggerUI.SwaggerUIMiddleware.Invoke(HttpContext httpContext)
   at Swashbuckle.AspNetCore.Swagger.SwaggerMiddleware.Invoke(HttpContext httpContext, ISwaggerProvider swaggerProvider)
   at AspProjekat.API.Core.GlobalExceptionHandlingMiddleware.InvokeAsync(HttpContext httpContext) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.API\Core\GlobalExceptionHandlingMiddleware.cs:line 24', CAST(N'2024-06-24T20:10:47.7057886' AS DateTime2))
INSERT [dbo].[ErrorLogs] ([ErrorId], [Message], [StrackTrace], [Time]) VALUES (N'6145702f-7d2d-46b7-835c-78bef16b262d', N'There is already an open DataReader associated with this Connection which must be closed first.', N'   at Microsoft.Data.SqlClient.SqlInternalConnectionTds.ValidateConnectionForExecute(SqlCommand command)
   at Microsoft.Data.SqlClient.SqlConnection.ValidateConnectionForExecute(String method, SqlCommand command)
   at Microsoft.Data.SqlClient.SqlCommand.ValidateCommand(Boolean isAsync, String method)
   at Microsoft.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, TaskCompletionSource`1 completion, Int32 timeout, Task& task, Boolean& usedCache, Boolean asyncWrite, Boolean inRetry, String method)
   at Microsoft.Data.SqlClient.SqlCommand.RunExecuteReader(CommandBehavior cmdBehavior, RunBehavior runBehavior, Boolean returnStream, String method)
   at Microsoft.Data.SqlClient.SqlCommand.ExecuteReader(CommandBehavior behavior)
   at Microsoft.Data.SqlClient.SqlCommand.ExecuteDbDataReader(CommandBehavior behavior)
   at Microsoft.EntityFrameworkCore.Storage.RelationalCommand.ExecuteReader(RelationalCommandParameterObject parameterObject)
   at Microsoft.EntityFrameworkCore.Query.Internal.SingleQueryingEnumerable`1.Enumerator.InitializeReader(Enumerator enumerator)
   at Microsoft.EntityFrameworkCore.Query.Internal.SingleQueryingEnumerable`1.Enumerator.<>c.<MoveNext>b__21_0(DbContext _, Enumerator enumerator)
   at Microsoft.EntityFrameworkCore.SqlServer.Storage.Internal.SqlServerExecutionStrategy.Execute[TState,TResult](TState state, Func`3 operation, Func`3 verifySucceeded)
   at Microsoft.EntityFrameworkCore.Query.Internal.SingleQueryingEnumerable`1.Enumerator.MoveNext()
   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at AspProjekat.Implementation.UseCases.Queries.EfGetBlogsQuery.Execute(PagedSearch search) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.Implementation\UseCases\Queries\EfGetBlogsQuery.cs:line 38
   at AspProjekat.Implementation.UseCaseHandler.HandleQuery[TResult,TSearch](IQuery`2 query, TSearch search) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.Implementation\UseCaseHandler.cs:line 43
   at AspProjekat.API.Controllers.BlogController.Get(PagedSearch search, IGetBlogsQuery query) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.API\Controllers\BlogController.cs:line 31
   at lambda_method25(Closure, Object, Object[])
   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.SyncActionResultExecutor.Execute(ActionContext actionContext, IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeNextActionFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|20_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Swashbuckle.AspNetCore.SwaggerUI.SwaggerUIMiddleware.Invoke(HttpContext httpContext)
   at Swashbuckle.AspNetCore.Swagger.SwaggerMiddleware.Invoke(HttpContext httpContext, ISwaggerProvider swaggerProvider)
   at AspProjekat.API.Core.GlobalExceptionHandlingMiddleware.InvokeAsync(HttpContext httpContext) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.API\Core\GlobalExceptionHandlingMiddleware.cs:line 24', CAST(N'2024-06-24T19:47:36.7855886' AS DateTime2))
INSERT [dbo].[ErrorLogs] ([ErrorId], [Message], [StrackTrace], [Time]) VALUES (N'd45adb39-2f77-41e5-9c58-7a6609e1e309', N'No service for type ''AspProjekat.Application.UseCases.Commands.Categories.IUpdateCategoryCommand'' has been registered.', N'   at Microsoft.Extensions.DependencyInjection.ServiceProviderServiceExtensions.GetRequiredService(IServiceProvider provider, Type serviceType)
   at Microsoft.AspNetCore.Mvc.ModelBinding.Binders.ServicesModelBinder.BindModelAsync(ModelBindingContext bindingContext)
   at Microsoft.AspNetCore.Mvc.ModelBinding.ParameterBinder.BindModelAsync(ActionContext actionContext, IModelBinder modelBinder, IValueProvider valueProvider, ParameterDescriptor parameter, ModelMetadata metadata, Object value, Object container)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerBinderDelegateProvider.<>c__DisplayClass0_0.<<CreateBinderDelegate>g__Bind|0>d.MoveNext()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeInnerFilterAsync>g__Awaited|13_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|20_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Swashbuckle.AspNetCore.SwaggerUI.SwaggerUIMiddleware.Invoke(HttpContext httpContext)
   at Swashbuckle.AspNetCore.Swagger.SwaggerMiddleware.Invoke(HttpContext httpContext, ISwaggerProvider swaggerProvider)
   at AspProjekat.API.Core.GlobalExceptionHandlingMiddleware.InvokeAsync(HttpContext httpContext) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.API\Core\GlobalExceptionHandlingMiddleware.cs:line 24', CAST(N'2024-06-20T07:53:10.8967465' AS DateTime2))
INSERT [dbo].[ErrorLogs] ([ErrorId], [Message], [StrackTrace], [Time]) VALUES (N'd59864e8-98d5-4a5d-bdad-7c5705b6c6c6', N'A network-related or instance-specific error occurred while establishing a connection to SQL Server. The server was not found or was not accessible. Verify that the instance name is correct and that SQL Server is configured to allow remote connections. (provider: SQL Network Interfaces, error: 26 - Error Locating Server/Instance Specified)', N'   at Microsoft.Data.SqlClient.SqlInternalConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at Microsoft.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at Microsoft.Data.SqlClient.TdsParser.Connect(ServerInfo serverInfo, SqlInternalConnectionTds connHandler, Boolean ignoreSniOpenTimeout, Int64 timerExpire, SqlConnectionString connectionOptions, Boolean withFailover)
   at Microsoft.Data.SqlClient.SqlInternalConnectionTds.AttemptOneLogin(ServerInfo serverInfo, String newPassword, SecureString newSecurePassword, Boolean ignoreSniOpenTimeout, TimeoutTimer timeout, Boolean withFailover)
   at Microsoft.Data.SqlClient.SqlInternalConnectionTds.LoginNoFailover(ServerInfo serverInfo, String newPassword, SecureString newSecurePassword, Boolean redirectedUserInstance, SqlConnectionString connectionOptions, SqlCredential credential, TimeoutTimer timeout)
   at Microsoft.Data.SqlClient.SqlInternalConnectionTds.OpenLoginEnlist(TimeoutTimer timeout, SqlConnectionString connectionOptions, SqlCredential credential, String newPassword, SecureString newSecurePassword, Boolean redirectedUserInstance)
   at Microsoft.Data.SqlClient.SqlInternalConnectionTds..ctor(DbConnectionPoolIdentity identity, SqlConnectionString connectionOptions, SqlCredential credential, Object providerInfo, String newPassword, SecureString newSecurePassword, Boolean redirectedUserInstance, SqlConnectionString userConnectionOptions, SessionData reconnectSessionData, Boolean applyTransientFaultHandling, String accessToken, DbConnectionPool pool)
   at Microsoft.Data.SqlClient.SqlConnectionFactory.CreateConnection(DbConnectionOptions options, DbConnectionPoolKey poolKey, Object poolGroupProviderInfo, DbConnectionPool pool, DbConnection owningConnection, DbConnectionOptions userOptions)
   at Microsoft.Data.ProviderBase.DbConnectionFactory.CreatePooledConnection(DbConnectionPool pool, DbConnection owningObject, DbConnectionOptions options, DbConnectionPoolKey poolKey, DbConnectionOptions userOptions)
   at Microsoft.Data.ProviderBase.DbConnectionPool.CreateObject(DbConnection owningObject, DbConnectionOptions userOptions, DbConnectionInternal oldConnection)
   at Microsoft.Data.ProviderBase.DbConnectionPool.UserCreateRequest(DbConnection owningObject, DbConnectionOptions userOptions, DbConnectionInternal oldConnection)
   at Microsoft.Data.ProviderBase.DbConnectionPool.TryGetConnection(DbConnection owningObject, UInt32 waitForMultipleObjectsTimeout, Boolean allowCreate, Boolean onlyOneCheckConnection, DbConnectionOptions userOptions, DbConnectionInternal& connection)
   at Microsoft.Data.ProviderBase.DbConnectionPool.TryGetConnection(DbConnection owningObject, TaskCompletionSource`1 retry, DbConnectionOptions userOptions, DbConnectionInternal& connection)
   at Microsoft.Data.ProviderBase.DbConnectionFactory.TryGetConnection(DbConnection owningConnection, TaskCompletionSource`1 retry, DbConnectionOptions userOptions, DbConnectionInternal oldConnection, DbConnectionInternal& connection)
   at Microsoft.Data.ProviderBase.DbConnectionInternal.TryOpenConnectionInternal(DbConnection outerConnection, DbConnectionFactory connectionFactory, TaskCompletionSource`1 retry, DbConnectionOptions userOptions)
   at Microsoft.Data.ProviderBase.DbConnectionClosed.TryOpenConnection(DbConnection outerConnection, DbConnectionFactory connectionFactory, TaskCompletionSource`1 retry, DbConnectionOptions userOptions)
   at Microsoft.Data.SqlClient.SqlConnection.TryOpen(TaskCompletionSource`1 retry, SqlConnectionOverrides overrides)
   at Microsoft.Data.SqlClient.SqlConnection.Open(SqlConnectionOverrides overrides)
   at Microsoft.Data.SqlClient.SqlConnection.Open()
   at Dapper.SqlMapper.QueryImpl[T](IDbConnection cnn, CommandDefinition command, Type effectiveType)+MoveNext() in /_/Dapper/SqlMapper.cs:line 1183
   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at Dapper.SqlMapper.Query[T](IDbConnection cnn, String sql, Object param, IDbTransaction transaction, Boolean buffered, Nullable`1 commandTimeout, Nullable`1 commandType) in /_/Dapper/SqlMapper.cs:line 815
   at Dapper.SqlMapper.Query(IDbConnection cnn, String sql, Object param, IDbTransaction transaction, Boolean buffered, Nullable`1 commandTimeout, Nullable`1 commandType) in /_/Dapper/SqlMapper.cs:line 737
   at AspProjekat.Implementation.Logging.UseCases.SPUseCaseLogger.Log(UseCaseLog log) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.Implementation\Logging\UseCases\SPUseCaseLogger.cs:line 24
   at AspProjekat.Implementation.UseCaseHandler.HandleCrossCuttingConcerns(IUseCase useCase, Object data) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.Implementation\UseCaseHandler.cs:line 66
   at AspProjekat.Implementation.UseCaseHandler.HandleQuery[TResult,TSearch](IQuery`2 query, TSearch search) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.Implementation\UseCaseHandler.cs:line 39
   at AspProjekat.API.Controllers.JobController.Get(JobSearch search, IGetJobsQuery query) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.API\Controllers\JobController.cs:line 33
   at lambda_method25(Closure, Object, Object[])
   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.SyncActionResultExecutor.Execute(ActionContext actionContext, IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeNextActionFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|20_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Swashbuckle.AspNetCore.SwaggerUI.SwaggerUIMiddleware.Invoke(HttpContext httpContext)
   at Swashbuckle.AspNetCore.Swagger.SwaggerMiddleware.Invoke(HttpContext httpContext, ISwaggerProvider swaggerProvider)
   at AspProjekat.API.Core.GlobalExceptionHandlingMiddleware.InvokeAsync(HttpContext httpContext) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.API\Core\GlobalExceptionHandlingMiddleware.cs:line 24', CAST(N'2024-07-02T08:59:57.5015168' AS DateTime2))
INSERT [dbo].[ErrorLogs] ([ErrorId], [Message], [StrackTrace], [Time]) VALUES (N'b08689e7-d64a-48e6-ac08-86a9efc628ad', N'Object reference not set to an instance of an object.', N'   at AspProjekat.Implementation.UseCases.Queries.EfGetBlogsQuery.<>c.<Execute>b__5_3(Blog x) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.Implementation\UseCases\Queries\EfGetBlogsQuery.cs:line 52
   at System.Linq.Enumerable.SelectListIterator`2.Fill(ReadOnlySpan`1 source, Span`1 destination, Func`2 func)
   at System.Linq.Enumerable.SelectListIterator`2.ToList()
   at AspProjekat.Implementation.UseCases.Queries.EfGetBlogsQuery.Execute(PagedSearch search) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.Implementation\UseCases\Queries\EfGetBlogsQuery.cs:line 52
   at AspProjekat.Implementation.UseCaseHandler.HandleQuery[TResult,TSearch](IQuery`2 query, TSearch search) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.Implementation\UseCaseHandler.cs:line 43
   at AspProjekat.API.Controllers.BlogController.Get(PagedSearch search, IGetBlogsQuery query) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.API\Controllers\BlogController.cs:line 31
   at lambda_method59(Closure, Object, Object[])
   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.SyncActionResultExecutor.Execute(ActionContext actionContext, IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeNextActionFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|20_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Swashbuckle.AspNetCore.SwaggerUI.SwaggerUIMiddleware.Invoke(HttpContext httpContext)
   at Swashbuckle.AspNetCore.Swagger.SwaggerMiddleware.Invoke(HttpContext httpContext, ISwaggerProvider swaggerProvider)
   at AspProjekat.API.Core.GlobalExceptionHandlingMiddleware.InvokeAsync(HttpContext httpContext) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.API\Core\GlobalExceptionHandlingMiddleware.cs:line 24', CAST(N'2024-06-25T06:59:11.4916573' AS DateTime2))
INSERT [dbo].[ErrorLogs] ([ErrorId], [Message], [StrackTrace], [Time]) VALUES (N'edf643cb-246c-430f-96ef-9f0e4ba10275', N'Object reference not set to an instance of an object.', N'   at AspProjekat.Implementation.UseCases.Queries.EfGetBlogsQuery.<>c.<Execute>b__5_3(Blog x) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.Implementation\UseCases\Queries\EfGetBlogsQuery.cs:line 52
   at System.Linq.Enumerable.SelectListIterator`2.Fill(ReadOnlySpan`1 source, Span`1 destination, Func`2 func)
   at System.Linq.Enumerable.SelectListIterator`2.ToList()
   at AspProjekat.Implementation.UseCases.Queries.EfGetBlogsQuery.Execute(PagedSearch search) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.Implementation\UseCases\Queries\EfGetBlogsQuery.cs:line 52
   at AspProjekat.Implementation.UseCaseHandler.HandleQuery[TResult,TSearch](IQuery`2 query, TSearch search) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.Implementation\UseCaseHandler.cs:line 43
   at AspProjekat.API.Controllers.BlogController.Get(PagedSearch search, IGetBlogsQuery query) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.API\Controllers\BlogController.cs:line 31
   at lambda_method59(Closure, Object, Object[])
   at Microsoft.AspNetCore.Mvc.Infrastructure.ActionMethodExecutor.SyncActionResultExecutor.Execute(ActionContext actionContext, IActionResultTypeMapper mapper, ObjectMethodExecutor executor, Object controller, Object[] arguments)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeActionMethodAsync()
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeNextActionFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Rethrow(ActionExecutedContextSealed context)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.Next(State& next, Scope& scope, Object& state, Boolean& isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.InvokeInnerFilterAsync()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|20_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Swashbuckle.AspNetCore.SwaggerUI.SwaggerUIMiddleware.Invoke(HttpContext httpContext)
   at Swashbuckle.AspNetCore.Swagger.SwaggerMiddleware.Invoke(HttpContext httpContext, ISwaggerProvider swaggerProvider)
   at AspProjekat.API.Core.GlobalExceptionHandlingMiddleware.InvokeAsync(HttpContext httpContext) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.API\Core\GlobalExceptionHandlingMiddleware.cs:line 24', CAST(N'2024-06-25T06:58:58.6783099' AS DateTime2))
INSERT [dbo].[ErrorLogs] ([ErrorId], [Message], [StrackTrace], [Time]) VALUES (N'20e1be4f-e9b9-4570-b306-d796ae7a8e71', N'No service for type ''AspProjekat.Application.UseCases.Commands.Companies.ICreateCompanyCommand'' has been registered.', N'   at Microsoft.Extensions.DependencyInjection.ServiceProviderServiceExtensions.GetRequiredService(IServiceProvider provider, Type serviceType)
   at Microsoft.AspNetCore.Mvc.ModelBinding.Binders.ServicesModelBinder.BindModelAsync(ModelBindingContext bindingContext)
   at Microsoft.AspNetCore.Mvc.ModelBinding.ParameterBinder.BindModelAsync(ActionContext actionContext, IModelBinder modelBinder, IValueProvider valueProvider, ParameterDescriptor parameter, ModelMetadata metadata, Object value, Object container)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerBinderDelegateProvider.<>c__DisplayClass0_0.<<CreateBinderDelegate>g__Bind|0>d.MoveNext()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeInnerFilterAsync>g__Awaited|13_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|20_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Swashbuckle.AspNetCore.SwaggerUI.SwaggerUIMiddleware.Invoke(HttpContext httpContext)
   at Swashbuckle.AspNetCore.Swagger.SwaggerMiddleware.Invoke(HttpContext httpContext, ISwaggerProvider swaggerProvider)
   at AspProjekat.API.Core.GlobalExceptionHandlingMiddleware.InvokeAsync(HttpContext httpContext) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.API\Core\GlobalExceptionHandlingMiddleware.cs:line 24', CAST(N'2024-06-19T13:40:45.2129523' AS DateTime2))
INSERT [dbo].[ErrorLogs] ([ErrorId], [Message], [StrackTrace], [Time]) VALUES (N'dccd7f4c-548b-4634-ba9f-e40b48fa64b2', N'No service for type ''AspProjekat.Application.UseCases.Commands.Users.IUpdateUseAccessCommand'' has been registered.', N'   at Microsoft.Extensions.DependencyInjection.ServiceProviderServiceExtensions.GetRequiredService(IServiceProvider provider, Type serviceType)
   at Microsoft.AspNetCore.Mvc.ModelBinding.Binders.ServicesModelBinder.BindModelAsync(ModelBindingContext bindingContext)
   at Microsoft.AspNetCore.Mvc.ModelBinding.ParameterBinder.BindModelAsync(ActionContext actionContext, IModelBinder modelBinder, IValueProvider valueProvider, ParameterDescriptor parameter, ModelMetadata metadata, Object value, Object container)
   at Microsoft.AspNetCore.Mvc.Controllers.ControllerBinderDelegateProvider.<>c__DisplayClass0_0.<<CreateBinderDelegate>g__Bind|0>d.MoveNext()
--- End of stack trace from previous location ---
   at Microsoft.AspNetCore.Mvc.Infrastructure.ControllerActionInvoker.<InvokeInnerFilterAsync>g__Awaited|13_0(ControllerActionInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeFilterPipelineAsync>g__Awaited|20_0(ResourceInvoker invoker, Task lastTask, State next, Scope scope, Object state, Boolean isCompleted)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Mvc.Infrastructure.ResourceInvoker.<InvokeAsync>g__Awaited|17_0(ResourceInvoker invoker, Task task, IDisposable scope)
   at Microsoft.AspNetCore.Authorization.AuthorizationMiddleware.Invoke(HttpContext context)
   at Swashbuckle.AspNetCore.SwaggerUI.SwaggerUIMiddleware.Invoke(HttpContext httpContext)
   at Swashbuckle.AspNetCore.Swagger.SwaggerMiddleware.Invoke(HttpContext httpContext, ISwaggerProvider swaggerProvider)
   at AspProjekat.API.Core.GlobalExceptionHandlingMiddleware.InvokeAsync(HttpContext httpContext) in C:\Users\dzokara\Desktop\AspProjekat\AspProjekat.API\Core\GlobalExceptionHandlingMiddleware.cs:line 24', CAST(N'2024-06-19T12:49:57.4345868' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([Id], [Path], [Discriminator], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (1, N'635d1991-187f-43e2-ae43-fea011539ee9.PNG', N'CompanyImage', CAST(N'2024-06-19T14:17:31.7449051' AS DateTime2), NULL, 1)
INSERT [dbo].[Image] ([Id], [Path], [Discriminator], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (2, N'36bc064f-de8d-494e-acb2-72f3f0354945.PNG', N'CompanyImage', CAST(N'2024-06-19T14:25:08.7142664' AS DateTime2), NULL, 1)
INSERT [dbo].[Image] ([Id], [Path], [Discriminator], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (3, N'3ee83c6b-294b-49df-a0e0-dd0d47e9a855.PNG', N'CompanyImage', CAST(N'2024-06-19T14:32:33.2600764' AS DateTime2), NULL, 1)
INSERT [dbo].[Image] ([Id], [Path], [Discriminator], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (4, N'24e43633-e5b2-4f72-8822-22e32352545b.PNG', N'CompanyImage', CAST(N'2024-06-19T14:37:56.2552431' AS DateTime2), NULL, 1)
INSERT [dbo].[Image] ([Id], [Path], [Discriminator], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (5, N'/images/cddcd660-e025-4c39-8688-9ba3ad67a74b.PNG', N'CompanyImage', CAST(N'2024-06-19T14:42:23.8783403' AS DateTime2), NULL, 1)
INSERT [dbo].[Image] ([Id], [Path], [Discriminator], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (6, N'/images/0d0e553d-7df2-4938-b214-91ee9c4725b1.png', N'BlogImage', CAST(N'2024-06-19T20:24:11.6343125' AS DateTime2), NULL, 1)
INSERT [dbo].[Image] ([Id], [Path], [Discriminator], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (7, N'/images/02630e84-c760-4b75-8eb0-43c1c8ba58c0.PNG', N'BlogImage', CAST(N'2024-06-20T08:35:36.5934080' AS DateTime2), NULL, 1)
INSERT [dbo].[Image] ([Id], [Path], [Discriminator], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (8, N'/images/c330cd50-0179-4fcf-b247-1eb3e52d28d7.PNG', N'CompanyImage', CAST(N'2024-06-20T08:46:52.9881779' AS DateTime2), NULL, 1)
INSERT [dbo].[Image] ([Id], [Path], [Discriminator], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (1007, N'/images/job_logo_1.jpg', N'CompanyImage', CAST(N'2024-06-20T00:00:00.0000000' AS DateTime2), NULL, 1)
INSERT [dbo].[Image] ([Id], [Path], [Discriminator], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (1008, N'/images/1cd42b94-7a17-46f6-88eb-a99a43652a83.png', N'BlogImage', CAST(N'2024-06-25T07:02:29.1133867' AS DateTime2), NULL, 1)
INSERT [dbo].[Image] ([Id], [Path], [Discriminator], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (1009, N'/images/sq_img_3.jpg', N'BlogImage', CAST(N'2024-06-25T00:00:00.0000000' AS DateTime2), NULL, 1)
INSERT [dbo].[Image] ([Id], [Path], [Discriminator], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (1010, N'/images/sq_img_1.jpg', N'BlogImage', CAST(N'2024-06-25T00:00:00.0000000' AS DateTime2), NULL, 1)
INSERT [dbo].[Image] ([Id], [Path], [Discriminator], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (1011, N'/images/b93cf3cc-e29c-45a5-9dc4-8f9dec2362fc.PNG', N'BlogImage', CAST(N'2024-07-02T13:03:51.1145513' AS DateTime2), NULL, 1)
INSERT [dbo].[Image] ([Id], [Path], [Discriminator], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (1012, N'/images/e74b9aa5-6839-4aae-8693-e696cc5dcf26.PNG', N'BlogImage', CAST(N'2024-07-02T13:07:37.0372162' AS DateTime2), NULL, 1)
INSERT [dbo].[Image] ([Id], [Path], [Discriminator], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (1013, N'/images/c822ac3e-fd8f-4e78-8390-8d7e7c07ebf9.jpg', N'BlogImage', CAST(N'2024-07-02T13:12:21.0976154' AS DateTime2), NULL, 1)
SET IDENTITY_INSERT [dbo].[Image] OFF
GO
SET IDENTITY_INSERT [dbo].[Jobs] ON 

INSERT [dbo].[Jobs] ([Id], [RegionId], [TypeId], [RemoteId], [CompanyId], [PositionId], [Description], [Salary], [Deadline], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (1, 2, 4, 1, 1, 1, N'We are seeking an experienced and talented Senior PHP Developer to join our dynamic team. As a Senior PHP Developer, you will be responsible for leading the development and maintenance of web applications, collaborating with cross-functional teams to define, design, and ship new features, and ensuring high performance and responsiveness of our web applications. You will also be involved in mentoring junior developers, conducting code reviews, and contributing to architectural decisions.', CAST(2000.00 AS Decimal(18, 2)), CAST(N'2024-12-12T00:00:00.0000000' AS DateTime2), CAST(N'2024-06-19T21:09:07.0221021' AS DateTime2), CAST(N'2024-06-27T11:49:44.3901651' AS DateTime2), 1)
INSERT [dbo].[Jobs] ([Id], [RegionId], [TypeId], [RemoteId], [CompanyId], [PositionId], [Description], [Salary], [Deadline], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (2, 3, 4, 1, 5, 1, N'Posao', CAST(2222.00 AS Decimal(18, 2)), CAST(N'2024-12-12T00:00:00.0000000' AS DateTime2), CAST(N'2024-12-12T00:00:00.0000000' AS DateTime2), CAST(N'2024-07-02T10:16:42.2871956' AS DateTime2), 1)
INSERT [dbo].[Jobs] ([Id], [RegionId], [TypeId], [RemoteId], [CompanyId], [PositionId], [Description], [Salary], [Deadline], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (3, 5, 3, 1, 5, 2, N'Description', CAST(2000.00 AS Decimal(18, 2)), CAST(N'2024-07-16T00:00:00.0000000' AS DateTime2), CAST(N'2024-07-02T09:09:07.3177689' AS DateTime2), CAST(N'2024-07-02T12:39:26.5782478' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[Jobs] OFF
GO
INSERT [dbo].[JobTechnology] ([TechnologyId], [JobId]) VALUES (1, 1)
INSERT [dbo].[JobTechnology] ([TechnologyId], [JobId]) VALUES (1, 3)
INSERT [dbo].[JobTechnology] ([TechnologyId], [JobId]) VALUES (2, 1)
GO
INSERT [dbo].[JobUser] ([UserId], [JobId], [Time]) VALUES (1, 1, CAST(N'2024-06-19T21:10:04.2874370' AS DateTime2))
INSERT [dbo].[JobUser] ([UserId], [JobId], [Time]) VALUES (2, 1, CAST(N'2024-06-25T12:52:43.6594780' AS DateTime2))
INSERT [dbo].[JobUser] ([UserId], [JobId], [Time]) VALUES (1, 2, CAST(N'2024-06-25T12:40:24.4855156' AS DateTime2))
INSERT [dbo].[JobUser] ([UserId], [JobId], [Time]) VALUES (4, 2, CAST(N'2024-07-02T09:33:59.7115968' AS DateTime2))
INSERT [dbo].[JobUser] ([UserId], [JobId], [Time]) VALUES (4, 3, CAST(N'2024-07-02T09:32:55.9643655' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Positions] ON 

INSERT [dbo].[Positions] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name]) VALUES (1, CAST(N'2024-06-19T19:54:56.1807483' AS DateTime2), CAST(N'2024-06-20T08:20:43.8745184' AS DateTime2), 1, N'Senior PHP Developer')
INSERT [dbo].[Positions] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name]) VALUES (2, CAST(N'2024-06-19T19:54:56.1807483' AS DateTime2), NULL, 1, N'Junior PHP Developer')
SET IDENTITY_INSERT [dbo].[Positions] OFF
GO
SET IDENTITY_INSERT [dbo].[Region] ON 

INSERT [dbo].[Region] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name]) VALUES (1, CAST(N'2024-06-19T19:40:08.3897115' AS DateTime2), CAST(N'2024-06-20T08:13:51.7794648' AS DateTime2), 1, N'Region2')
INSERT [dbo].[Region] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name]) VALUES (2, CAST(N'2024-06-27T11:48:20.3090143' AS DateTime2), NULL, 1, N'New York, new york')
INSERT [dbo].[Region] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name]) VALUES (3, CAST(N'2024-06-27T11:48:28.5772355' AS DateTime2), NULL, 1, N'Brooklyn')
INSERT [dbo].[Region] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name]) VALUES (4, CAST(N'2024-06-27T11:48:34.2623362' AS DateTime2), NULL, 1, N'Belgrade')
INSERT [dbo].[Region] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name]) VALUES (5, CAST(N'2024-06-27T11:48:42.2915497' AS DateTime2), NULL, 1, N'Australia')
SET IDENTITY_INSERT [dbo].[Region] OFF
GO
SET IDENTITY_INSERT [dbo].[Remote] ON 

INSERT [dbo].[Remote] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name]) VALUES (1, CAST(N'2024-11-11T00:00:00.0000000' AS DateTime2), NULL, 1, N'Home')
INSERT [dbo].[Remote] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name]) VALUES (2, CAST(N'2024-11-11T00:00:00.0000000' AS DateTime2), NULL, 1, N'Office')
SET IDENTITY_INSERT [dbo].[Remote] OFF
GO
SET IDENTITY_INSERT [dbo].[Technology] ON 

INSERT [dbo].[Technology] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name]) VALUES (1, CAST(N'2024-06-19T18:55:31.0817468' AS DateTime2), CAST(N'2024-06-20T08:14:14.8471862' AS DateTime2), 1, N'Asp')
INSERT [dbo].[Technology] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name]) VALUES (2, CAST(N'2024-11-11T00:00:00.0000000' AS DateTime2), NULL, 1, N'PHP')
SET IDENTITY_INSERT [dbo].[Technology] OFF
GO
SET IDENTITY_INSERT [dbo].[Testimonials] ON 

INSERT [dbo].[Testimonials] ([Id], [UserId], [Text], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (1, 1, N'Wow really nice i got my first job here!', CAST(N'2024-06-19T21:02:46.5691548' AS DateTime2), NULL, 1)
INSERT [dbo].[Testimonials] ([Id], [UserId], [Text], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (2, 1, N'Wow really nice i got my first job here111111111111!', CAST(N'2024-06-19T21:03:02.5466248' AS DateTime2), CAST(N'2024-06-19T21:05:02.9206613' AS DateTime2), 0)
SET IDENTITY_INSERT [dbo].[Testimonials] OFF
GO
SET IDENTITY_INSERT [dbo].[Types] ON 

INSERT [dbo].[Types] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name]) VALUES (3, CAST(N'2024-11-11T00:00:00.0000000' AS DateTime2), NULL, 1, N'Full Time')
INSERT [dbo].[Types] ([Id], [CreatedAt], [UpdatedAt], [IsActive], [Name]) VALUES (4, CAST(N'2024-11-11T00:00:00.0000000' AS DateTime2), NULL, 1, N'Part Time')
SET IDENTITY_INSERT [dbo].[Types] OFF
GO
SET IDENTITY_INSERT [dbo].[UseCaseLogs] ON 

INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1, N'UserRegistration', N'unauthorized', N'{"Email":"djole@email","Username":"dzokara","FirstName":"Djordje","LastName":"Jovanovic","Password":"Sifra123"}', CAST(N'2024-06-19T11:39:56.3933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (2, N'UserRegistration', N'unauthorized', N'{"Email":"string","Username":"string","FirstName":"string","LastName":"string","Password":"string"}', CAST(N'2024-06-19T12:45:00.8933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3, N'CreateJob', N'dzokara', N'{"PositionId":0,"CompanyId":0,"TechnologyIds":[0],"RegionId":0,"TypeId":0,"Description":"string","Salary":0.0,"BenefitIds":[0],"Deadline":"2024-06-19T12:47:24.747Z","RemoteId":0}', CAST(N'2024-06-19T12:52:20.8000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4, N'CreateCompany', N'dzokara', N'{"Name":"Firma1","Description":"Opis opis opis","Image":{"ContentDisposition":"form-data; name=\"image\"; filename=\"council.PNG\"","ContentType":"image/png","Headers":{"Content-Disposition":["form-data; name=\"image\"; filename=\"council.PNG\""],"Content-Type":["image/png"]},"Length":36417,"Name":"image","FileName":"council.PNG"}}', CAST(N'2024-06-19T14:11:15.7666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5, N'CreateCompany', N'dzokara', N'{"Name":"Firma1","Description":"Opis opis opis","Image":{"ContentDisposition":"form-data; name=\"image\"; filename=\"council.PNG\"","ContentType":"image/png","Headers":{"Content-Disposition":["form-data; name=\"image\"; filename=\"council.PNG\""],"Content-Type":["image/png"]},"Length":36417,"Name":"image","FileName":"council.PNG"}}', CAST(N'2024-06-19T14:17:31.5633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (6, N'CreateCompany', N'dzokara', N'{"Name":"Firma1","Description":"Opis opis opis","Image":{"ContentDisposition":"form-data; name=\"image\"; filename=\"council.PNG\"","ContentType":"image/png","Headers":{"Content-Disposition":["form-data; name=\"image\"; filename=\"council.PNG\""],"Content-Type":["image/png"]},"Length":36417,"Name":"image","FileName":"council.PNG"}}', CAST(N'2024-06-19T14:22:04.3233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (7, N'CreateCompany', N'dzokara', N'{"Name":"Firma2","Description":"Opis opis opis","Image":{"ContentDisposition":"form-data; name=\"image\"; filename=\"council.PNG\"","ContentType":"image/png","Headers":{"Content-Disposition":["form-data; name=\"image\"; filename=\"council.PNG\""],"Content-Type":["image/png"]},"Length":36417,"Name":"image","FileName":"council.PNG"}}', CAST(N'2024-06-19T14:22:19.4866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (8, N'CreateCompany', N'dzokara', N'{"Name":"Firma3","Description":"Opis opis opis","Image":{"ContentDisposition":"form-data; name=\"image\"; filename=\"council.PNG\"","ContentType":"image/png","Headers":{"Content-Disposition":["form-data; name=\"image\"; filename=\"council.PNG\""],"Content-Type":["image/png"]},"Length":36417,"Name":"image","FileName":"council.PNG"}}', CAST(N'2024-06-19T14:31:57.4400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (9, N'CreateCompany', N'dzokara', N'{"Name":"Firma4","Description":"Opis opis opis","Image":{"ContentDisposition":"form-data; name=\"image\"; filename=\"council.PNG\"","ContentType":"image/png","Headers":{"Content-Disposition":["form-data; name=\"image\"; filename=\"council.PNG\""],"Content-Type":["image/png"]},"Length":36417,"Name":"image","FileName":"council.PNG"}}', CAST(N'2024-06-19T14:37:31.9600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (10, N'CreateCompany', N'dzokara', N'{"Name":"Firma5","Description":"Opis opis opis","Image":{"ContentDisposition":"form-data; name=\"image\"; filename=\"council.PNG\"","ContentType":"image/png","Headers":{"Content-Disposition":["form-data; name=\"image\"; filename=\"council.PNG\""],"Content-Type":["image/png"]},"Length":36417,"Name":"image","FileName":"council.PNG"}}', CAST(N'2024-06-19T14:42:15.2333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (11, N'CreateCompany', N'dzokara', N'{"Name":"Firma5","Description":"Opis opis opis","Image":{"ContentDisposition":"form-data; name=\"image\"; filename=\"council.PNG\"","ContentType":"image/png","Headers":{"Content-Disposition":["form-data; name=\"image\"; filename=\"council.PNG\""],"Content-Type":["image/png"]},"Length":36417,"Name":"image","FileName":"council.PNG"}}', CAST(N'2024-06-19T14:55:44.0666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (12, N'Search Companies', N'dzokara', N'{"Keyword":"s","PerPage":10,"Page":1}', CAST(N'2024-06-19T14:56:24.9766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (13, N'Search Companies', N'dzokara', N'{"Keyword":"f","PerPage":10,"Page":1}', CAST(N'2024-06-19T14:56:30.1300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (14, N'Search Companies', N'dzokara', N'{"Keyword":"null","PerPage":10,"Page":1}', CAST(N'2024-06-19T14:58:54.6533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (15, N'Search Companies', N'dzokara', N'{"Keyword":"f","PerPage":10,"Page":1}', CAST(N'2024-06-19T14:59:10.7100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (16, N'Search Companies', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T15:03:58.0466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (17, N'Search Users', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T15:04:08.4233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (18, N'Search Companies', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T15:04:15.6166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (19, N'Search Companies', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T15:05:46.7800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (20, N'Search benefits', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T18:14:08.6100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (21, N'Create benefit', N'dzokara', N'{"Name":"Benefit1"}', CAST(N'2024-06-19T18:14:33.3233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (22, N'Search benefits', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T18:14:37.4866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (23, N'Create category', N'dzokara', N'{"Name":"Category1"}', CAST(N'2024-06-19T18:36:33.8033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (24, N'Create category', N'dzokara', N'{"Name":"Category1"}', CAST(N'2024-06-19T18:36:36.1433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (25, N'Search categories', N'dzokara', N'{"Keyword":"a","PerPage":10,"Page":1}', CAST(N'2024-06-19T18:38:09.7800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (26, N'Create technology', N'dzokara', N'{"Name":"Technology1"}', CAST(N'2024-06-19T18:55:30.9400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (27, N'Create technology', N'dzokara', N'{"Name":"Technology1"}', CAST(N'2024-06-19T18:55:32.5933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (28, N'Search technologies', N'dzokara', N'{"Keyword":"a","PerPage":10,"Page":1}', CAST(N'2024-06-19T18:56:06.1766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (29, N'Search technologies', N'dzokara', N'{"Keyword":"te","PerPage":10,"Page":1}', CAST(N'2024-06-19T18:56:10.1466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (30, N'Create region', N'dzokara', N'{"Name":"Region1"}', CAST(N'2024-06-19T19:40:08.2366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (31, N'Search Regions', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T19:40:13.6900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (32, N'Create position', N'dzokara', N'{"Name":"Junior PHP Developer"}', CAST(N'2024-06-19T19:54:56.0500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (33, N'Create position', N'dzokara', N'{"Name":"Junior PHP Developer"}', CAST(N'2024-06-19T19:54:58.0600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (34, N'Search Positions', N'dzokara', N'{"Keyword":"o","PerPage":10,"Page":1}', CAST(N'2024-06-19T19:55:30.2500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (35, N'Search Positions', N'dzokara', N'{"Keyword":"juna","PerPage":10,"Page":1}', CAST(N'2024-06-19T19:55:37.9166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (36, N'Create Blog', N'dzokara', N'{"Title":"Blog1","Description":"Opis prvog blogaaa","Image":{"ContentDisposition":"form-data; name=\"Image\"; filename=\"Naamloos.png\"","ContentType":"image/png","Headers":{"Content-Disposition":["form-data; name=\"Image\"; filename=\"Naamloos.png\""],"Content-Type":["image/png"]},"Length":12580,"Name":"Image","FileName":"Naamloos.png"}}', CAST(N'2024-06-19T20:24:11.4666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (37, N'Search Blogs', N'dzokara', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-19T20:24:44.8766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (38, N'Create Comment', N'dzokara', N'{"AuthorId":1,"BlogId":1,"Text":"Tekst11231231312"}', CAST(N'2024-06-19T20:46:15.7933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (39, N'Search Blogs', N'dzokara', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-19T20:46:46.2000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (40, N'Create testimonial', N'dzokara', N'{"UserId":1,"Text":"Wow really nice i got my first job here!"}', CAST(N'2024-06-19T21:02:46.4266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (41, N'Search Testimonials', N'dzokara', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-19T21:02:52.1500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (42, N'Create testimonial', N'dzokara', N'{"UserId":1,"Text":"Wow really nice i got my first job here111111111111!"}', CAST(N'2024-06-19T21:03:02.5366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (43, N'Search Testimonials', N'dzokara', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-19T21:03:06.6866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (44, N'CreateJob', N'dzokara', N'{"PositionId":1,"CompanyId":1,"TechnologyIds":[1],"RegionId":1,"TypeId":3,"Description":"Opis posla 123455","Salary":50000.0,"BenefitIds":[1],"CategoryIds":[1],"Deadline":"2024-06-19T21:06:18.847Z","RemoteId":1}', CAST(N'2024-06-19T21:08:43.3866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (45, N'CreateJob', N'dzokara', N'{"PositionId":1,"CompanyId":1,"TechnologyIds":[1],"RegionId":1,"TypeId":3,"Description":"Opis posla 123455","Salary":50000.0,"BenefitIds":[1],"CategoryIds":[1],"Deadline":"2024-06-20T21:06:18.847Z","RemoteId":1}', CAST(N'2024-06-19T21:09:06.9466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (46, N'Job like', N'dzokara', N'1', CAST(N'2024-06-19T21:10:04.2633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (47, N'Search Users', N'dzokara', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T21:15:47.4666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (48, N'Search Users', N'dzokara', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T21:18:38.0500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (49, N'Search Users', N'dzokara', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T21:23:59.5200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (50, N'Search Users', N'dzokara', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T21:26:09.8366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (51, N'Search audit log', N'dzokara', N'{"UseCaseName":null,"Username":null,"PerPage":10,"Page":1}', CAST(N'2024-06-19T21:57:38.6500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (52, N'Search audit log', N'dzokara', N'{"UseCaseName":null,"Username":"dz","PerPage":10,"Page":1}', CAST(N'2024-06-19T21:59:16.0133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (53, N'Single company', N'dzokara', N'1', CAST(N'2024-06-20T07:20:55.3166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (54, N'Single company', N'dzokara', N'5', CAST(N'2024-06-20T07:21:56.5366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (55, N'Single blog', N'dzokara', N'1', CAST(N'2024-06-20T07:28:45.3233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (56, N'Single blog', N'dzokara', N'2', CAST(N'2024-06-20T07:28:52.8333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (57, N'Single job', N'dzokara', N'1', CAST(N'2024-06-20T07:29:04.0833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (58, N'Search benefits', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-20T07:45:57.2366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (59, N'Search benefits', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-20T07:46:16.7466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (60, N'Update Benefit', N'dzokara', N'{"Id":1,"Name":"Benefitt","isActive":true}', CAST(N'2024-06-20T07:46:49.8000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (61, N'Update Benefit', N'dzokara', N'{"Id":1,"Name":"","isActive":true}', CAST(N'2024-06-20T07:47:01.4000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (62, N'Update Benefit', N'dzokara', N'{"Id":2,"Name":"","isActive":true}', CAST(N'2024-06-20T07:52:20.6300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (63, N'Update category', N'dzokara', N'{"Id":1,"Name":"KategorijaUpdate","isActive":true}', CAST(N'2024-06-20T07:54:24.1433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (64, N'Update category', N'dzokara', N'{"Id":1,"Name":"KategorijaUpdate","isActive":true}', CAST(N'2024-06-20T07:54:46.3000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (65, N'Update region', N'dzokara', N'{"Id":1,"Name":"Region1","isActive":true}', CAST(N'2024-06-20T08:13:39.7033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (66, N'Update region', N'dzokara', N'{"Id":1,"Name":"Region2","isActive":true}', CAST(N'2024-06-20T08:13:51.7400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (67, N'Update technology', N'dzokara', N'{"Id":1,"Name":"Asp","isActive":true}', CAST(N'2024-06-20T08:14:14.8233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (68, N'Update position', N'dzokara', N'{"Id":1,"Name":"Senior PHP Developer","isActive":true}', CAST(N'2024-06-20T08:20:43.7466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (69, N'Update Blog', N'dzokara', N'{"Id":1,"Title":"New title","Description":"Deskripcijaaaaaaaa","Image":null,"isActive":true}', CAST(N'2024-06-20T08:34:50.4500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (70, N'Update Blog', N'dzokara', N'{"Id":1,"Title":"New title","Description":"Deskripcijaaaaaaaa","Image":{"ContentDisposition":"form-data; name=\"Image\"; filename=\"underrot.PNG\"","ContentType":"image/png","Headers":{"Content-Disposition":["form-data; name=\"Image\"; filename=\"underrot.PNG\""],"Content-Type":["image/png"]},"Length":28242,"Name":"Image","FileName":"underrot.PNG"},"isActive":true}', CAST(N'2024-06-20T08:35:25.6566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (71, N'Update Blog', N'dzokara', N'{"Id":1,"Title":"New title1","Description":"Deskripcijaaaaaaaa","Image":{"ContentDisposition":"form-data; name=\"Image\"; filename=\"underrot.PNG\"","ContentType":"image/png","Headers":{"Content-Disposition":["form-data; name=\"Image\"; filename=\"underrot.PNG\""],"Content-Type":["image/png"]},"Length":28242,"Name":"Image","FileName":"underrot.PNG"},"isActive":true}', CAST(N'2024-06-20T08:35:36.5500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (72, N'Update Company', N'dzokara', N'{"Id":1,"Name":"Firma Update","Description":"Deskripcijaaaaaaaa","Image":null}', CAST(N'2024-06-20T08:46:27.7433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (73, N'Update Company', N'dzokara', N'{"Id":1,"Name":"Firma Update","Description":"Deskripcijaaaaaaaa","Image":{"ContentDisposition":"form-data; name=\"Image\"; filename=\"underrot.PNG\"","ContentType":"image/png","Headers":{"Content-Disposition":["form-data; name=\"Image\"; filename=\"underrot.PNG\""],"Content-Type":["image/png"]},"Length":28242,"Name":"Image","FileName":"underrot.PNG"}}', CAST(N'2024-06-20T08:46:45.7366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (74, N'Update Company', N'dzokara', N'{"Id":1,"Name":"Firma Update1","Description":"Deskripcijaaaaaaaa","Image":{"ContentDisposition":"form-data; name=\"Image\"; filename=\"underrot.PNG\"","ContentType":"image/png","Headers":{"Content-Disposition":["form-data; name=\"Image\"; filename=\"underrot.PNG\""],"Content-Type":["image/png"]},"Length":28242,"Name":"Image","FileName":"underrot.PNG"}}', CAST(N'2024-06-20T08:46:52.9466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (75, N'Update Job', N'dzokara', N'{"Id":1,"PositionId":null,"CompanyId":null,"TechnologyIds":[1,2],"RegionId":null,"TypeId":null,"Description":"Novi opis posla","Salary":null,"BenefitIds":null,"CategoryIds":null,"Deadline":null,"RemoteId":2}', CAST(N'2024-06-20T09:11:34.6333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (76, N'Update Job', N'dzokara', N'{"Id":1,"PositionId":null,"CompanyId":null,"TechnologyIds":[1,2],"RegionId":null,"TypeId":null,"Description":"Novi opis posla","Salary":null,"BenefitIds":null,"CategoryIds":null,"Deadline":null,"RemoteId":null}', CAST(N'2024-06-20T09:11:52.2200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (77, N'Update Job', N'dzokara', N'{"Id":1,"PositionId":null,"CompanyId":null,"TechnologyIds":[2],"RegionId":null,"TypeId":null,"Description":"Novi opis posla","Salary":null,"BenefitIds":null,"CategoryIds":null,"Deadline":null,"RemoteId":null}', CAST(N'2024-06-20T09:12:35.2300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (78, N'Update Job', N'dzokara', N'{"Id":1,"PositionId":null,"CompanyId":null,"TechnologyIds":[2],"RegionId":null,"TypeId":4,"Description":null,"Salary":2000.0,"BenefitIds":null,"CategoryIds":null,"Deadline":null,"RemoteId":null}', CAST(N'2024-06-20T09:13:10.3833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (79, N'Update Job', N'dzokara', N'{"Id":1,"PositionId":null,"CompanyId":null,"TechnologyIds":null,"RegionId":null,"TypeId":4,"Description":null,"Salary":2000.0,"BenefitIds":null,"CategoryIds":null,"Deadline":null,"RemoteId":null}', CAST(N'2024-06-20T09:13:19.8266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (80, N'Update Job', N'dzokara', N'{"Id":1,"PositionId":null,"CompanyId":null,"TechnologyIds":null,"RegionId":null,"TypeId":4,"Description":null,"Salary":2000.0,"BenefitIds":null,"CategoryIds":null,"Deadline":null,"RemoteId":null}', CAST(N'2024-06-20T09:15:42.7266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1068, N'Search Users', N'dzokara', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T12:10:24.6033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1069, N'Search Users', N'dzokara', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T12:39:33.0266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1070, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T12:45:26.3966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1071, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T12:50:20.2500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1072, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T12:51:26.1566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1073, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T12:53:18.3500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1074, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T12:53:49.9600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1075, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T12:56:25.9133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1076, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T12:57:58.7300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1077, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T14:06:04.7166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1078, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T14:06:24.9300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1079, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T14:07:58.0766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1080, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T14:09:42.9566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1081, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T14:09:50.5266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1082, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T14:19:39.5833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1083, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T14:19:47.9233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1084, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T14:19:58.6766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1085, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T14:21:07.2233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1086, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T15:24:47.6600000' AS DateTime2))
GO
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1087, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T15:25:23.8400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1088, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T15:25:25.0133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1089, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T15:26:28.4033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1090, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T15:28:15.8433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1091, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T15:28:16.5633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1092, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T15:28:39.6400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1093, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T15:28:40.5833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1094, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T15:32:21.4066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1095, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T15:32:21.4800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1096, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T15:33:08.3900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1097, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T15:33:08.4866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1098, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T15:33:23.0500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1099, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T15:33:23.3766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1100, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T15:33:50.9833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1101, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T15:34:18.5833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1102, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T15:34:19.3466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1103, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T15:49:33.7000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1104, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T15:49:35.4900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1105, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T15:50:51.8666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1106, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T15:57:55.9500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1107, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T15:57:56.6233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1108, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T15:58:40.2066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1109, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T15:58:40.6433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1110, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T15:58:42.6600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1111, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T15:59:38.7100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1112, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:00:02.5966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1113, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:00:02.6133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1114, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:01:40.3433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1115, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:02:04.4566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1116, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:03:43.9000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1117, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:09:50.5800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1118, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:20:11.9600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1119, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:20:13.7200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1120, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:20:44.1033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1121, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:23:28.3966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1122, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:23:29.7666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1123, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:23:30.2866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1124, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:23:31.1233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1125, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:23:31.6466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1126, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:23:32.1766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1127, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:23:41.0300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1128, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:23:41.5600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1129, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:23:59.6166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1130, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:24:15.7166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1131, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:24:43.0466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1132, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:24:59.0300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1133, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:25:04.6866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1134, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:25:10.7366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1135, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:25:26.7766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1136, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:25:29.1166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1137, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:25:31.5366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1138, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:25:59.4266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1139, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:26:13.0700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1140, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:27:46.0333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1141, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:28:42.4800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1142, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:28:49.2966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1143, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:28:55.3700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1144, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:28:56.7500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1145, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:29:03.0766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1146, N'Search Blogs', N'unauthorized', N'{"PerPage":3,"Page":2}', CAST(N'2024-06-24T16:29:37.0566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1147, N'Search Blogs', N'unauthorized', N'{"PerPage":15555,"Page":2}', CAST(N'2024-06-24T16:29:40.9700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1148, N'Search Blogs', N'unauthorized', N'{"PerPage":15555,"Page":1}', CAST(N'2024-06-24T16:29:42.9033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1149, N'Search Blogs', N'unauthorized', N'{"PerPage":15555,"Page":1}', CAST(N'2024-06-24T16:29:43.5033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1150, N'Search Blogs', N'unauthorized', N'{"PerPage":15555,"Page":1}', CAST(N'2024-06-24T16:29:44.5800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1151, N'Search Blogs', N'unauthorized', N'{"PerPage":15555,"Page":0}', CAST(N'2024-06-24T16:29:47.0366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1152, N'Search Blogs', N'unauthorized', N'{"PerPage":15555,"Page":1}', CAST(N'2024-06-24T16:29:57.9366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1153, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:32:05.4166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1154, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:32:20.4800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1155, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:34:02.2333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1156, N'Search Blogs', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:35:31.1566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1157, N'Search Testimonials', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:36:46.4433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1158, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:38:52.2400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1159, N'Search Blogs', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-24T16:39:51.5666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1160, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T17:03:59.7166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1161, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T17:07:30.1500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1162, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T17:08:12.0600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1163, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T17:08:34.5433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1164, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T17:10:38.4100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1165, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T17:13:06.7633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1166, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T17:21:36.8600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1167, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T19:47:03.7900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1168, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T19:47:48.5233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1169, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T19:51:02.1066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1170, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T20:01:58.6833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1171, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T20:04:15.5366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1172, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T20:06:58.5266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1173, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T20:08:55.8733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1174, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T20:10:30.7833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1175, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-24T20:10:59.3633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1176, N'Search Blogs', N'dzokara', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T06:58:48.1400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1177, N'Search Blogs', N'dzokara', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T06:59:03.9500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1178, N'Search Blogs', N'dzokara', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:00:48.6433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1179, N'Search Blogs', N'dzokara', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:01:21.0300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1180, N'Create Blog', N'dzokara', N'{"Title":"Title1","Description":"DescriptionSwagger","Image":{"ContentDisposition":"form-data; name=\"Image\"; filename=\"Screenshot 2024-06-24 222505.png\"","ContentType":"image/png","Headers":{"Content-Disposition":["form-data; name=\"Image\"; filename=\"Screenshot 2024-06-24 222505.png\""],"Content-Type":["image/png"]},"Length":84043,"Name":"Image","FileName":"Screenshot 2024-06-24 222505.png"}}', CAST(N'2024-06-25T07:02:20.7266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1181, N'Create Blog', N'dzokara', N'{"Title":"Title11","Description":"DescriptionSwagger","Image":{"ContentDisposition":"form-data; name=\"Image\"; filename=\"Screenshot 2024-06-24 222505.png\"","ContentType":"image/png","Headers":{"Content-Disposition":["form-data; name=\"Image\"; filename=\"Screenshot 2024-06-24 222505.png\""],"Content-Type":["image/png"]},"Length":84043,"Name":"Image","FileName":"Screenshot 2024-06-24 222505.png"}}', CAST(N'2024-06-25T07:02:29.0300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1182, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:02:37.2833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1183, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:03:09.7266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1184, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:03:11.2400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1185, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:06:42.5733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1186, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:06:46.1400000' AS DateTime2))
GO
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1187, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:09:39.8066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1188, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:10:13.5133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1189, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:10:38.7300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1190, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:10:42.4300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1191, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:11:47.7233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1192, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:13:10.1066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1193, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:13:11.0200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1194, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:13:41.7100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1195, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:13:43.8500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1196, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:15:22.6833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1197, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:17:10.9366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1198, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:17:11.8300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1199, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:17:57.8633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1200, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:17:58.6400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1201, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:18:13.7866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1202, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:18:21.8066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1203, N'Search Testimonials', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:20:22.4033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1204, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:22:28.7500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1205, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:22:30.2266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1206, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:22:31.1000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1207, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:30:39.9666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1208, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:30:40.7133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1209, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:30:41.1433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1210, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:30:42.2333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1211, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:31:10.5166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1212, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:31:10.9733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1213, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:31:11.9600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1214, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:31:12.6033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1215, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:31:13.9833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1216, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:37:16.8600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1217, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:37:23.1900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1218, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:37:23.4900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1219, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:37:24.0333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1220, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:38:35.7100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1221, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:38:40.1066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1222, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:39:13.7000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1223, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:39:20.2733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1224, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T07:39:31.9633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1225, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T08:00:30.8133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1226, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T09:23:21.3766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1227, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T09:32:54.1966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1228, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T09:33:57.7233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1229, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T09:52:40.5500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1230, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T09:56:03.9300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1231, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T09:56:04.8833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1232, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T09:56:09.9133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1233, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T09:56:36.1300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1234, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T09:58:45.7466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1235, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T10:00:14.8933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1236, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T10:00:25.9200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1237, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T10:02:36.6966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1238, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T10:04:35.9800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1239, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T10:15:51.8066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1240, N'UserRegistration', N'unauthorized', N'{"Email":"sadasd@s","Username":"sadsa","FirstName":"Đorđe","LastName":"Jovanović","Password":"Sifra123"}', CAST(N'2024-06-25T10:34:06.0033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1241, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T10:34:26.8633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1242, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T10:35:17.4333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1243, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T10:35:32.9533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1244, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T10:35:44.6266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1245, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T10:35:45.7066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1246, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T10:36:12.5766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1247, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T10:40:19.3700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1248, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T10:45:56.6066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1249, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T10:46:28.0633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1250, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T10:46:30.2266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1251, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T10:46:59.1200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1252, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T10:53:08.0600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1253, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T10:54:21.7700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1254, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T10:56:09.8400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1255, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T10:57:05.9466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1256, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T10:57:23.1033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1257, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T10:57:30.1300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1258, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T10:59:32.4533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1259, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T11:00:32.8266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1260, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T11:00:45.7066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1261, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T11:02:15.5300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1262, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T11:03:37.5733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1263, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T11:03:41.5133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1264, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T11:03:43.5233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1265, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T11:03:54.6000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1266, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T11:04:16.4000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1267, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T11:06:01.5200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1268, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T11:06:55.7433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1269, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T11:07:45.1700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1270, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T11:08:07.6200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1271, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T11:08:41.4700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1272, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T11:09:02.9200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1273, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T11:10:18.5400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1274, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T11:10:50.4700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1275, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T11:11:25.4333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1276, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T11:12:06.1100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1277, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T11:13:18.5400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1278, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T11:13:57.6366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1279, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T11:16:07.5633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1280, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T11:16:41.2100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1281, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T11:16:47.5900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1282, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T11:16:53.8200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1283, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T11:21:55.2133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1284, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T11:25:57.4866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1285, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T11:25:59.3133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1286, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T11:26:22.0233333' AS DateTime2))
GO
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1287, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T11:26:24.2866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1288, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T11:26:26.2800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1289, N'Single job', N'unauthorized', N'2', CAST(N'2024-06-25T11:26:28.2133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1290, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T11:26:57.6766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1291, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T11:27:31.5766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1292, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T11:28:00.6566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1293, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T11:28:03.4933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1294, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T11:28:45.3400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1295, N'Single blog', N'unauthorized', N'1', CAST(N'2024-06-25T11:30:53.0800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1296, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T11:34:20.5566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1297, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T11:34:40.7833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1298, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T11:34:41.8933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1299, N'Single blog', N'unauthorized', N'1', CAST(N'2024-06-25T11:34:42.4400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1300, N'Single blog', N'unauthorized', N'2', CAST(N'2024-06-25T11:35:00.6733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1301, N'Single blog', N'unauthorized', N'2', CAST(N'2024-06-25T11:35:06.4133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1302, N'Single blog', N'unauthorized', N'3', CAST(N'2024-06-25T11:35:09.4733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1303, N'Single blog', N'unauthorized', N'4', CAST(N'2024-06-25T11:35:11.4500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1304, N'Single blog', N'unauthorized', N'1', CAST(N'2024-06-25T11:35:22.9566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1305, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T11:35:37.1133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1306, N'Single blog', N'unauthorized', N'5', CAST(N'2024-06-25T11:36:46.1500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1307, N'Single blog', N'unauthorized', N'2', CAST(N'2024-06-25T11:36:50.4133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1308, N'Single blog', N'unauthorized', N'1', CAST(N'2024-06-25T11:36:53.5866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1309, N'Single blog', N'unauthorized', N'5', CAST(N'2024-06-25T11:36:55.4566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1310, N'Single blog', N'unauthorized', N'1', CAST(N'2024-06-25T11:38:16.3100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1311, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T11:39:13.1033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1312, N'Single blog', N'unauthorized', N'1', CAST(N'2024-06-25T11:39:14.5200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1313, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T11:42:13.8466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1314, N'Single blog', N'unauthorized', N'1', CAST(N'2024-06-25T11:42:14.8600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1315, N'Single blog', N'unauthorized', N'1', CAST(N'2024-06-25T11:42:40.0866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1316, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T11:45:05.6966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1317, N'Single blog', N'unauthorized', N'1', CAST(N'2024-06-25T11:45:06.7066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1318, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T11:45:52.6566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1319, N'Single blog', N'unauthorized', N'1', CAST(N'2024-06-25T11:45:53.5100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1320, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T11:46:03.8766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1321, N'Single blog', N'unauthorized', N'1', CAST(N'2024-06-25T11:46:04.7500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1322, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T11:47:42.6466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1323, N'Single blog', N'unauthorized', N'1', CAST(N'2024-06-25T11:47:43.7300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1324, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T11:48:27.7333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1325, N'Single blog', N'unauthorized', N'1', CAST(N'2024-06-25T11:48:28.3233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1326, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T11:49:18.5200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1327, N'Single blog', N'unauthorized', N'1', CAST(N'2024-06-25T11:49:19.0933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1328, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T11:49:54.3800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1329, N'Single blog', N'unauthorized', N'1', CAST(N'2024-06-25T11:49:55.3066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1330, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T11:50:38.9900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1331, N'Single blog', N'unauthorized', N'1', CAST(N'2024-06-25T11:50:39.6233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1332, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T11:50:40.5066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1333, N'Single blog', N'unauthorized', N'1', CAST(N'2024-06-25T11:50:41.3000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1334, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T11:50:42.8166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1335, N'Single blog', N'unauthorized', N'1', CAST(N'2024-06-25T11:50:43.5133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1336, N'Create Comment', N'dzokara', N'{"AuthorId":0,"BlogId":1,"Text":"Wow what an amazing post!"}', CAST(N'2024-06-25T11:53:03.8066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1337, N'Create Comment', N'dzokara', N'{"AuthorId":1,"BlogId":1,"Text":"Wow what an amazing post!"}', CAST(N'2024-06-25T11:53:27.4500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1338, N'Create Comment', N'dzokara', N'{"AuthorId":1,"BlogId":1,"Text":"Wow what an amazing post!"}', CAST(N'2024-06-25T11:53:34.0833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1339, N'Create Comment', N'dzokara', N'{"AuthorId":1,"BlogId":1,"Text":"Wow what an amazing post!"}', CAST(N'2024-06-25T11:53:34.6333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1340, N'Create Comment', N'dzokara', N'{"AuthorId":1,"BlogId":1,"Text":"Wow what an amazing post!"}', CAST(N'2024-06-25T11:53:35.1333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1341, N'Create Comment', N'dzokara', N'{"AuthorId":1,"BlogId":1,"Text":"Wow what an amazing post!"}', CAST(N'2024-06-25T11:53:35.5600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1342, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T11:53:40.6066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1343, N'Single blog', N'unauthorized', N'1', CAST(N'2024-06-25T11:53:41.8000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1344, N'Single blog', N'unauthorized', N'1', CAST(N'2024-06-25T11:58:44.3666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1345, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T12:02:10.8200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1346, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T12:02:11.8166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1347, N'Single blog', N'unauthorized', N'1', CAST(N'2024-06-25T12:02:12.4333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1348, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T12:02:21.6166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1349, N'Single blog', N'unauthorized', N'1', CAST(N'2024-06-25T12:02:23.8833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1350, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T12:35:39.8433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1351, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T12:35:42.1200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1352, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T12:35:43.2700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1353, N'Job like', N'dzokara', N'2', CAST(N'2024-06-25T12:39:02.2100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1354, N'Job like', N'dzokara', N'2', CAST(N'2024-06-25T12:39:39.8400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1355, N'Job like', N'dzokara', N'2', CAST(N'2024-06-25T12:40:24.4766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1356, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T12:44:55.6433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1357, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T12:44:58.1166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1358, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T12:45:08.3266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1359, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T12:45:31.8233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1360, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T12:45:40.4066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1361, N'Single job', N'unauthorized', N'2', CAST(N'2024-06-25T12:45:45.2266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1362, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T12:50:16.5066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1363, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T12:50:18.4966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1364, N'Job like', N'dzokara', N'1', CAST(N'2024-06-25T12:50:19.4233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1365, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T12:50:43.4800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1366, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T12:50:45.9133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1367, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T12:52:23.0500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1368, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T12:52:29.6266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1369, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T12:52:39.2466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1370, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T12:52:41.8833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1371, N'Job like', N'sadsa', N'1', CAST(N'2024-06-25T12:52:43.6433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1372, N'Job like', N'sadsa', N'1', CAST(N'2024-06-25T12:52:57.9966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1373, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T12:57:47.2866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1374, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T12:58:04.2433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1375, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T12:58:05.7400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1376, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T12:58:06.9966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1377, N'Job like', N'dzokara', N'1', CAST(N'2024-06-25T12:58:08.2300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1378, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T12:58:42.5800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1379, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T12:58:45.7300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1380, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T12:58:50.8800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1381, N'Job like', N'dzokara', N'1', CAST(N'2024-06-25T12:58:52.2400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1382, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:00:41.6500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1383, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:00:47.2166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1384, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:00:57.4766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1385, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T13:00:59.3766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1386, N'Job like', N'dzokara', N'1', CAST(N'2024-06-25T13:01:03.2033333' AS DateTime2))
GO
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1387, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:03:20.9466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1388, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:03:25.2166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1389, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T13:03:27.1900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1390, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:04:27.5400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1391, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-25T13:04:29.0000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1392, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:04:44.0966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1393, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:04:45.1000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1394, N'Single blog', N'unauthorized', N'5', CAST(N'2024-06-25T13:04:46.4333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1395, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:04:52.2633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1396, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:04:54.2800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1397, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:05:04.1300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1398, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:08:53.0233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1399, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:08:57.5600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1400, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:09:40.0800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1401, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:09:46.8433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1402, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:10:11.5900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1403, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:10:32.1833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1404, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:10:43.9933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1405, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:10:46.6233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1406, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:10:48.0400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1407, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:10:48.4733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1408, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:10:49.6600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1409, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:10:50.3600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1410, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:11:00.4300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1411, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:11:01.7733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1412, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:11:04.6033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1413, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:11:05.6866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1414, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:11:07.0566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1415, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:11:27.7200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1416, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:11:28.1666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1417, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:11:31.2766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1418, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:11:38.8566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1419, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:11:40.1800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1420, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:11:41.3066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1421, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:11:42.7233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1422, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:11:43.1133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1423, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:11:44.3166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1424, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:11:45.1400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1425, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:11:45.8500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1426, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:11:47.4433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1427, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:11:47.8333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1428, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-25T13:11:48.8300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1429, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:29:36.7766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1430, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-27T11:29:40.1733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1431, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:29:45.6300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1432, N'Single blog', N'unauthorized', N'5', CAST(N'2024-06-27T11:29:46.6666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1433, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:29:49.9466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1434, N'Single blog', N'unauthorized', N'1', CAST(N'2024-06-27T11:29:50.5100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1435, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:30:03.9066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1436, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:30:25.7900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1437, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:30:27.8633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1438, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:36:45.2200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1439, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:36:45.2200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1440, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:37:26.1133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1441, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:37:26.1133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1442, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:39:25.6400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1443, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:39:25.6600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1444, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:39:45.1200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1445, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:39:45.1233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1446, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:39:50.0433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1447, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:39:50.0466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1448, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:40:30.2033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1449, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:40:30.2033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1450, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:40:40.7400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1451, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:40:40.7433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1452, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:40:48.2266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1453, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:40:48.2300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1454, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:40:59.7433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1455, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:40:59.7466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1456, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:41:10.0833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1457, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:41:10.0966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1458, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:41:18.9300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1459, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:41:18.9300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1460, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:41:40.2933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1461, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:41:40.2966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1462, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:45:15.8933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1463, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:45:15.9233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1464, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:45:16.8933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1465, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:45:16.8966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1466, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:45:47.6900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1467, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:45:47.6933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1468, N'Job like', N'dzokara', N'2', CAST(N'2024-06-27T11:48:02.4600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1469, N'Create region', N'dzokara', N'{"Name":"New York, new york"}', CAST(N'2024-06-27T11:48:20.2366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1470, N'Create region', N'dzokara', N'{"Name":"Brooklyn"}', CAST(N'2024-06-27T11:48:28.5733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1471, N'Create region', N'dzokara', N'{"Name":"Belgrade"}', CAST(N'2024-06-27T11:48:34.2600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1472, N'Create region', N'dzokara', N'{"Name":"Australia"}', CAST(N'2024-06-27T11:48:42.2900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1473, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:48:46.3733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1474, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:48:46.3733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1475, N'Update Job', N'dzokara', N'{"Id":2,"PositionId":null,"CompanyId":null,"TechnologyIds":null,"RegionId":3,"TypeId":null,"Description":null,"Salary":null,"BenefitIds":null,"CategoryIds":null,"Deadline":null,"RemoteId":null}', CAST(N'2024-06-27T11:49:30.7533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1476, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:49:35.8966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1477, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:49:35.8966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1478, N'Update Job', N'dzokara', N'{"Id":1,"PositionId":null,"CompanyId":null,"TechnologyIds":null,"RegionId":2,"TypeId":null,"Description":null,"Salary":null,"BenefitIds":null,"CategoryIds":null,"Deadline":null,"RemoteId":null}', CAST(N'2024-06-27T11:49:44.3866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1479, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:49:46.6600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1480, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:49:46.6633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1481, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:53:54.9333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1482, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:53:54.9333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1483, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:54:33.5866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1484, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:54:33.5866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1485, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:54:46.5733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1486, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:54:46.5766667' AS DateTime2))
GO
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1487, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:55:33.7500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1488, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:55:33.7533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1489, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:55:51.2600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1490, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:55:51.2600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1491, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:56:12.1866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1492, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:56:12.1900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1493, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:56:33.1400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1494, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:56:33.1433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1495, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:57:05.4400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1496, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:57:05.4433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1497, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:57:07.1966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1498, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:57:07.1966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1499, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:57:51.2266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1500, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:57:51.2266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1501, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:58:31.2833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1502, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:58:31.2833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1503, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:59:45.7866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1504, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T11:59:45.7900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1505, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:00:41.1900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1506, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:00:41.1933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1507, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:01:04.2100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1508, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:01:04.2100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1509, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:01:13.6466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1510, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:01:13.6466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1511, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:01:18.7633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1512, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:01:18.7633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1513, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:01:24.5766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1514, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:01:24.5766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1515, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:01:38.5000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1516, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:01:38.5000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1517, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:01:47.2000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1518, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:01:47.2000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1519, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:02:26.7833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1520, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:02:26.7833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1521, N'Search Users', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:13:36.4966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1522, N'Search Users', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:21:11.7833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1523, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:26:27.1400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1524, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:26:27.1466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1525, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:26:33.5200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1526, N'Search Users', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:30:46.6633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1527, N'Search Users', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:37:34.6866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1528, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:37:34.7400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1529, N'Search Users', N'sadsa', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:38:02.5766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1530, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:38:02.6333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1531, N'UserRegistration', N'unauthorized', N'{"Email":"novi@email","Username":"Novi","FirstName":"Korisnik","LastName":"Korisnik","Password":"Sifra123"}', CAST(N'2024-06-27T12:38:35.0733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1532, N'Search Users', N'Novi', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:38:44.6266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1533, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:38:44.6833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1534, N'Single job', N'unauthorized', N'1', CAST(N'2024-06-27T12:39:01.4000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1535, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:39:06.3033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1536, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:39:09.9433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1537, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:39:09.9466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1538, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:39:14.5766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1539, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:39:17.8033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1540, N'Single blog', N'unauthorized', N'1', CAST(N'2024-06-27T12:39:19.0033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1541, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:39:22.1866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1542, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:39:22.1866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1543, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:39:28.3466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1544, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-06-27T12:39:29.3800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1545, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-01T19:41:52.3566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1546, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-01T19:42:01.1266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1547, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-01T19:42:01.1266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1548, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-01T19:42:17.1400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1549, N'Single blog', N'unauthorized', N'1', CAST(N'2024-07-01T19:42:19.7166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1550, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-01T19:42:24.3233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1551, N'Single blog', N'unauthorized', N'5', CAST(N'2024-07-01T19:42:25.0900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1552, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-01T19:42:26.3700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1553, N'Search Users', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-01T19:44:08.6100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1554, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-01T19:44:08.6466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1555, N'Single job', N'unauthorized', N'1', CAST(N'2024-07-01T19:44:11.9266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1556, N'Job like', N'dzokara', N'1', CAST(N'2024-07-01T19:44:13.3733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1557, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-01T19:44:24.8866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1558, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-01T19:44:24.8833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1559, N'Single job', N'unauthorized', N'2', CAST(N'2024-07-01T19:44:26.0300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1560, N'Job like', N'dzokara', N'2', CAST(N'2024-07-01T19:44:27.0966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1561, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-01T19:44:42.6866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1562, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-01T19:44:42.6866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1563, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-01T19:44:44.0333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1564, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-01T19:44:46.1100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1565, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-01T19:46:24.5700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1566, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-01T19:47:25.6266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1567, N'Search Users', N'Novi', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-01T19:48:32.6000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1568, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-01T19:48:32.6633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1569, N'Search Users', N'Novi', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-01T19:49:29.8966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1570, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-01T19:49:29.9400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1571, N'Search Users', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-01T19:49:58.7233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1572, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-01T19:49:58.7800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1573, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-01T19:54:49.6166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1574, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-01T20:02:04.6900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1575, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-01T20:02:55.9333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1576, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-01T20:02:59.6166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1577, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-01T20:03:00.3033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1578, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-01T20:03:02.2466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1579, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-01T20:03:02.6933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1580, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-01T20:03:02.6933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1581, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-01T20:03:04.7633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1582, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-01T20:03:04.7633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1583, N'Search Users', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T07:17:22.6700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1584, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T07:17:22.8133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (1585, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T07:18:09.5533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (2545, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T07:40:28.8533333' AS DateTime2))
GO
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (2546, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T07:42:59.7900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (2547, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T07:43:32.0766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (2548, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T07:44:13.9600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (2549, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T07:50:27.6700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (2550, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T07:50:28.6900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (2551, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T07:50:28.7166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (2552, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T07:51:29.6666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (2553, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T07:51:29.6666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (2554, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T07:51:37.6466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (2555, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T07:51:37.6466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (2556, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T07:51:41.1200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (2557, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T07:51:41.1233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (2558, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T07:51:43.7233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (2559, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T07:53:29.0633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (2560, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T07:53:54.2633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (2561, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T07:54:49.8200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (2562, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T07:56:19.0000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (2563, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T07:56:44.1500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3545, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:16:14.6066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3546, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:16:17.5066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3547, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:24:22.2000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3548, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:24:25.5533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3549, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:33:14.6100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3550, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:33:22.8800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3551, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:33:22.8800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3552, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:33:42.7400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3553, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:33:45.2900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3554, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:33:45.2933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3555, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:34:49.9300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3556, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:34:51.7033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3557, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:34:51.7033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3558, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:34:51.7033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3559, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:35:28.8233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3560, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:35:29.4533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3561, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:35:29.4566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3562, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:35:29.4600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3563, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:35:45.1433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3564, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:35:45.6066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3565, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:35:45.6066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3566, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:35:45.6100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3567, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:36:13.1733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3568, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:36:13.9133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3569, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:36:13.9133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3570, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:36:13.9166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3571, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:38:55.2866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3572, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:38:56.0466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3573, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:38:56.0433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3574, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:38:56.0433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3575, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:39:39.2933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3576, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:39:39.9533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3577, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:39:39.9533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3578, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:39:39.9566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3579, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:39:59.1433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3580, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:39:59.9000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3581, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:39:59.9000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3582, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:39:59.9000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3583, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:40:17.9966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3584, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:40:18.6600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3585, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:40:18.6600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3586, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:40:18.6600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3587, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:40:39.9700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3588, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:40:40.7466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3589, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:40:40.7500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3590, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:40:40.7533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3591, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:44:24.4233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3592, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:44:25.1066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3593, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:44:25.1100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3594, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:44:25.1066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3595, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:45:11.4333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3596, N'Search Users', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:45:26.4566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3597, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:45:26.5233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3598, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:45:28.5133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3599, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:45:29.2966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3600, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:45:29.2966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3601, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:45:29.3000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3602, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:48:56.5933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3603, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:48:57.7566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3604, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:48:57.7566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3605, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:48:57.7600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3606, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:50:42.9133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3607, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:50:43.4266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3608, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:50:43.4266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3609, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:50:43.4300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3610, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:51:56.0333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3611, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:51:56.5466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3612, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:51:56.5466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3613, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:51:56.5500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3614, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:53:18.0800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3615, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:53:18.6366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3616, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:53:18.6400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3617, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T08:53:18.6400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (3618, N'CreateJob', N'dzokara', N'{"PositionId":0,"CompanyId":0,"TechnologyIds":[1],"RegionId":0,"TypeId":0,"Description":"sadasdsa","Salary":2500.0,"BenefitIds":[1],"CategoryIds":[1],"Deadline":"2024-07-26T00:00:00","RemoteId":0}', CAST(N'2024-07-02T08:53:31.0000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4551, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:00:02.1833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4552, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:00:03.9300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4553, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:00:04.2733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4554, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:00:07.4266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4555, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:00:15.5166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4556, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:00:15.5166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4557, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:00:15.5166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4558, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:00:48.8700000' AS DateTime2))
GO
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4559, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:00:49.4033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4560, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:00:49.4033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4561, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:00:49.4033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4562, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:01:16.1566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4563, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:01:21.3900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4564, N'Search Users', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:01:36.7400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4565, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:01:36.8066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4566, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:01:42.8666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4567, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:01:43.9766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4568, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:01:43.9800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4569, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:01:43.9800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4570, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:03:55.3700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4571, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:03:56.0766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4572, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:03:56.0800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4573, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:03:56.0833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4574, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:05:21.1333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4575, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:05:21.6733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4576, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:05:21.6733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4577, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:05:21.6766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4578, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:08:52.0533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4579, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:08:52.6166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4580, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:08:52.6200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4581, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:08:52.6233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4582, N'CreateJob', N'dzokara', N'{"PositionId":1,"CompanyId":5,"TechnologyIds":[1],"RegionId":4,"TypeId":4,"Description":"Deskripcijaaaa","Salary":25000.0,"BenefitIds":[1],"CategoryIds":[1],"Deadline":"2024-07-27T00:00:00","RemoteId":2}', CAST(N'2024-07-02T09:09:07.2133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4583, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:09:22.8200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4584, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:30:15.4733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4585, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:30:29.2533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4586, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:30:29.2533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4587, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:30:29.7800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4588, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:30:30.3966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4589, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:30:30.3966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4590, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T09:30:32.3066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4591, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:30:45.8633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4592, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:31:13.6800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4593, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:31:13.6833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4594, N'Single job', N'unauthorized', N'1', CAST(N'2024-07-02T09:31:14.7900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4595, N'UserRegistration', N'unauthorized', N'{"Email":"mejl@mejl","Username":"Djordje","FirstName":"Djordje","LastName":"Jovanovic","Password":"Sifra123"}', CAST(N'2024-07-02T09:31:31.2033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4596, N'Search Users', N'Djordje', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:31:36.3366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4597, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:31:36.3966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4598, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:31:37.7266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4599, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:31:37.7300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4600, N'Single job', N'unauthorized', N'1', CAST(N'2024-07-02T09:31:38.7733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4601, N'Search Users', N'Djordje', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:32:51.6266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4602, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:32:51.7500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4603, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T09:32:54.3666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4604, N'Job like', N'Djordje', N'3', CAST(N'2024-07-02T09:32:55.9466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4605, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:33:56.7766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4606, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:33:56.7833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4607, N'Single job', N'unauthorized', N'2', CAST(N'2024-07-02T09:33:58.2566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4608, N'Job like', N'Djordje', N'2', CAST(N'2024-07-02T09:33:59.7100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4609, N'Job like', N'Djordje', N'2', CAST(N'2024-07-02T09:34:03.9433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4610, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:34:12.0566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4611, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:34:12.0600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4612, N'Single job', N'unauthorized', N'1', CAST(N'2024-07-02T09:34:13.3100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4613, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:34:26.5766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4614, N'Single blog', N'unauthorized', N'5', CAST(N'2024-07-02T09:34:27.9000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4615, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:34:30.8500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4616, N'Single blog', N'unauthorized', N'1', CAST(N'2024-07-02T09:34:31.5700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4617, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T09:34:35.3000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4618, N'Search Users', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:00:47.8466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4619, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:00:47.9033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4620, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:00:51.7033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4621, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:03:12.3800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4622, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:06:02.5366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4623, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:06:06.6700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4624, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:06:21.4933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4625, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:07:00.3766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4626, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:07:08.8400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4627, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:09:31.8200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4628, N'Search Users', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:09:42.4433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4629, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:09:42.5433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4630, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:09:47.3600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4631, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:09:51.4333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4632, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:09:58.6133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4633, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:10:00.6633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4634, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:10:03.4100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4635, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:10:03.4133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4636, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:10:09.0400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4637, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:10:55.2533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4638, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:10:59.7100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4639, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:11:13.8233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4640, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:11:16.9000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4641, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:12:07.2566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4642, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:13:16.0333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4643, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:13:17.8566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4644, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:13:25.7666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4645, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:13:36.7600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4646, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:13:37.7100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4647, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:13:40.3633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4648, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:14:07.7900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4649, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:14:26.4666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4650, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:15:19.3166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4651, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:15:19.9600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4652, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:15:21.9000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4653, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:16:00.8900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4654, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:16:41.3300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4655, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:17:41.4666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4656, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:17:57.8833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4657, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:18:38.6800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4658, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:19:59.8733333' AS DateTime2))
GO
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4659, N'Single job', N'unauthorized', N'1', CAST(N'2024-07-02T10:20:01.3533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4660, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:21:36.7466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4661, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:21:39.3600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4662, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:22:21.4200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4663, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:22:46.0300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4664, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:25:52.4200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4665, N'Single job', N'unauthorized', N'1', CAST(N'2024-07-02T10:25:54.2766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4666, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T10:39:52.8666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4667, N'Single job', N'unauthorized', N'1', CAST(N'2024-07-02T10:39:54.5366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4668, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:00:28.8833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4669, N'Single job', N'unauthorized', N'1', CAST(N'2024-07-02T11:00:29.7766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4670, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:00:29.7900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4671, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:00:29.7900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4672, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:00:29.7900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4673, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:01:42.3500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4674, N'Single job', N'unauthorized', N'1', CAST(N'2024-07-02T11:01:43.0300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4675, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:01:43.0333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4676, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:01:43.0666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4677, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:01:43.0666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4678, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:01:58.6366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4679, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:01:59.8133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4680, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:01:59.8133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4681, N'Single job', N'unauthorized', N'1', CAST(N'2024-07-02T11:02:01.4500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4682, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:03:59.8300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4683, N'Single job', N'unauthorized', N'1', CAST(N'2024-07-02T11:04:01.0100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4684, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:04:01.0133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4685, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:04:01.0200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4686, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:04:01.0166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4687, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:04:39.3200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4688, N'Single job', N'unauthorized', N'1', CAST(N'2024-07-02T11:04:40.3066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4689, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:04:40.3066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4690, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:04:40.3133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4691, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:04:40.3166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4692, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:05:07.6033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4693, N'Single job', N'unauthorized', N'1', CAST(N'2024-07-02T11:05:08.4133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4694, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:05:08.4166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4695, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:05:08.4200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4696, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:05:08.4233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4697, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:06:35.1800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4698, N'Single job', N'unauthorized', N'2', CAST(N'2024-07-02T11:06:36.6700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4699, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:06:36.6700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4700, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:06:36.6733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4701, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:06:36.6766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4702, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:06:53.1866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4703, N'Single job', N'unauthorized', N'1', CAST(N'2024-07-02T11:06:53.9866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4704, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:06:53.9900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4705, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:06:53.9900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4706, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:06:53.9933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4707, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:13:12.1800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4708, N'Single job', N'unauthorized', N'1', CAST(N'2024-07-02T11:13:13.1266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4709, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:13:13.1300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4710, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:13:13.1300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4711, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:13:13.1300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4712, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:15:12.6200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4713, N'Single job', N'unauthorized', N'1', CAST(N'2024-07-02T11:15:13.4533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4714, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:15:13.4533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4715, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:15:13.4600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4716, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:15:13.4533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4717, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:15:39.9933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4718, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:15:40.0000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4719, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:16:42.4166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4720, N'Single job', N'unauthorized', N'1', CAST(N'2024-07-02T11:16:44.3833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4721, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:16:44.3866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4722, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:16:44.3866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4723, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:16:44.3900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4724, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:18:05.5866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4725, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:18:05.5900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4726, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:18:06.9833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4727, N'Single job', N'unauthorized', N'1', CAST(N'2024-07-02T11:18:07.6433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4728, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:18:07.6466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4729, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:18:07.6500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4730, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:18:07.6533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4731, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:19:16.6533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4732, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:19:16.6566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4733, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:19:18.6400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4734, N'Single job', N'unauthorized', N'1', CAST(N'2024-07-02T11:19:19.3000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4735, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:19:19.3033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4736, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:19:19.3033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4737, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:19:19.3100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4738, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:19:43.6133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4739, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:19:43.6133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4740, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:19:44.9800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4741, N'Single job', N'unauthorized', N'1', CAST(N'2024-07-02T11:19:45.8233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4742, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:19:45.8233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4743, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:19:45.8266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4744, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:19:45.8266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4745, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:20:43.6166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4746, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:20:43.6200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4747, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:20:45.8400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4748, N'Single job', N'unauthorized', N'1', CAST(N'2024-07-02T11:20:51.3833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4749, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:20:51.3833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4750, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:20:51.3833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4751, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:20:51.3900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4752, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:21:36.2866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4753, N'Single job', N'unauthorized', N'1', CAST(N'2024-07-02T11:22:07.5633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4754, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:23:10.9833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4755, N'Single job', N'unauthorized', N'1', CAST(N'2024-07-02T11:23:13.3133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4756, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:23:13.3133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4757, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:23:13.3166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4758, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:23:13.3133333' AS DateTime2))
GO
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4759, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:23:15.2900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4760, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:23:18.1000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4761, N'Single job', N'unauthorized', N'2', CAST(N'2024-07-02T11:23:18.9066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4762, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:23:18.9100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4763, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:23:18.9100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4764, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:23:18.9133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4765, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:23:44.0033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4766, N'Search Users', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:23:56.5766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4767, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:23:56.6300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4768, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:23:58.6166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4769, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T11:24:02.3066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4770, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:24:02.3100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4771, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:24:02.3133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4772, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:24:02.3133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4773, N'Update Job', N'dzokara', N'{"Id":3,"PositionId":null,"CompanyId":null,"TechnologyIds":null,"RegionId":null,"TypeId":null,"Description":null,"Salary":null,"BenefitIds":null,"CategoryIds":null,"Deadline":null,"RemoteId":null}', CAST(N'2024-07-02T11:24:18.9100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4774, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:24:19.0300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4775, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:24:30.1533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4776, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:24:31.5366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4777, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:24:49.6300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4778, N'Search Users', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:25:28.3733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4779, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:25:28.4833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4780, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:25:30.6100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4781, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T11:25:32.0133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4782, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:25:32.0133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4783, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:25:32.0200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4784, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:25:32.0200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4785, N'Update Job', N'dzokara', N'{"Id":3,"PositionId":null,"CompanyId":null,"TechnologyIds":null,"RegionId":null,"TypeId":null,"Description":null,"Salary":null,"BenefitIds":null,"CategoryIds":null,"Deadline":null,"RemoteId":null}', CAST(N'2024-07-02T11:25:48.7800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4786, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:25:48.8933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4787, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:28:10.4600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4788, N'Search Users', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:28:25.0833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4789, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:28:25.1866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4790, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:28:34.8800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4791, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T11:28:41.3766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4792, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:28:41.3800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4793, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:28:41.3833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4794, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:28:41.3866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4795, N'Update Job', N'dzokara', N'{"Id":3,"PositionId":null,"CompanyId":null,"TechnologyIds":null,"RegionId":null,"TypeId":null,"Description":null,"Salary":null,"BenefitIds":null,"CategoryIds":null,"Deadline":null,"RemoteId":null}', CAST(N'2024-07-02T11:28:49.8800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4796, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:28:49.9900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4797, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:31:50.7733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4798, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:31:50.8033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4799, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:32:04.6466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4800, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:32:04.6500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4801, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:32:08.9933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4802, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T11:32:14.3400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4803, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:32:14.3400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4804, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:32:14.3433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4805, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:32:14.3433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4806, N'Update Job', N'dzokara', N'{"Id":3,"PositionId":null,"CompanyId":null,"TechnologyIds":null,"RegionId":null,"TypeId":null,"Description":null,"Salary":null,"BenefitIds":null,"CategoryIds":null,"Deadline":null,"RemoteId":null}', CAST(N'2024-07-02T11:32:25.0433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4807, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:32:25.0666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4808, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:32:39.5733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4809, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:32:41.0733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4810, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:32:46.3866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4811, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:33:51.2166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4812, N'Search Users', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:34:04.6200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4813, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:34:04.6933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4814, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:34:07.0866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4815, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T11:34:08.4133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4816, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:34:08.4133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4817, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:34:08.4133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4818, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:34:08.4133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4819, N'Update Job', N'dzokara', N'{"Id":3,"PositionId":null,"CompanyId":null,"TechnologyIds":null,"RegionId":null,"TypeId":null,"Description":null,"Salary":null,"BenefitIds":null,"CategoryIds":null,"Deadline":null,"RemoteId":null}', CAST(N'2024-07-02T11:34:12.1466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4820, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:35:14.2866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4821, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:35:36.0566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4822, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T11:35:36.0566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4823, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:35:36.0566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4824, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:35:36.0633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4825, N'Update Job', N'dzokara', N'{"Id":3,"PositionId":null,"CompanyId":null,"TechnologyIds":null,"RegionId":null,"TypeId":null,"Description":null,"Salary":null,"BenefitIds":null,"CategoryIds":null,"Deadline":null,"RemoteId":null}', CAST(N'2024-07-02T11:35:51.8833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4826, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:42:01.2466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4827, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:42:01.2466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4828, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:42:01.2466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4829, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:42:01.2466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4830, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:42:07.5133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4831, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T11:42:10.0133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4832, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:42:10.0166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4833, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:42:10.0200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4834, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:42:10.0200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4835, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:43:36.7733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4836, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:43:36.7733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4837, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:43:49.7000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4838, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T11:43:51.7933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4839, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:43:51.7933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4840, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:43:51.7966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4841, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:43:51.8000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4842, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:44:54.7933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4843, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:44:54.7966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4844, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:45:00.6466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4845, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:45:00.6500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4846, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:45:04.8700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4847, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T11:45:05.8266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4848, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:45:05.8266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4849, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:45:05.8300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4850, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:45:05.8366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4851, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:46:21.6400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4852, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:46:21.6433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4853, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:46:23.8966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4854, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T11:46:24.9333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4855, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:46:24.9366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4856, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:46:24.9366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4857, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:46:24.9400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4858, N'Search Users', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:46:57.5100000' AS DateTime2))
GO
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4859, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:46:57.5600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4860, N'Update Job', N'dzokara', N'{"Id":3,"PositionId":null,"CompanyId":null,"TechnologyIds":null,"RegionId":null,"TypeId":null,"Description":null,"Salary":null,"BenefitIds":null,"CategoryIds":null,"Deadline":null,"RemoteId":null}', CAST(N'2024-07-02T11:47:01.0966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4861, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:47:34.9800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4862, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:49:47.7366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4863, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:49:57.3200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4864, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T11:49:59.0000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4865, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:49:59.0033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4866, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:49:59.0033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4867, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:49:59.0066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4868, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:50:41.7333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4869, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:50:45.0066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4870, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T11:50:47.9600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4871, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:50:47.9600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4872, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:50:47.9633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4873, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:50:47.9666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4874, N'Update Job', N'dzokara', N'{"Id":3,"PositionId":null,"CompanyId":null,"TechnologyIds":null,"RegionId":null,"TypeId":null,"Description":null,"Salary":null,"BenefitIds":null,"CategoryIds":null,"Deadline":null,"RemoteId":null}', CAST(N'2024-07-02T11:50:57.1133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4875, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:51:38.0500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4876, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:53:48.8233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4877, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:53:51.4900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4878, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T11:53:54.5466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4879, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:53:54.5500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4880, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:53:54.5533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4881, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:53:54.5533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4882, N'Update Job', N'dzokara', N'{"Id":3,"PositionId":null,"CompanyId":null,"TechnologyIds":null,"RegionId":null,"TypeId":null,"Description":null,"Salary":null,"BenefitIds":null,"CategoryIds":null,"Deadline":null,"RemoteId":null}', CAST(N'2024-07-02T11:54:40.2900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4883, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:54:42.3866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4884, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:59:37.7233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4885, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:59:43.5066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4886, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T11:59:44.9300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4887, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:59:44.9333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4888, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:59:44.9366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4889, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T11:59:44.9366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4890, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:00:01.1566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4891, N'Search Users', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:00:11.3333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4892, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:00:11.3800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4893, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:00:17.4100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4894, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T12:00:18.1366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4895, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:00:18.1366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4896, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:00:18.1366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4897, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:00:18.1400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4898, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:01:14.0966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4899, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:01:16.0466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4900, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:01:16.8300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4901, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:01:17.2466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4902, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T12:01:18.3266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4903, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:01:18.3266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4904, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:01:18.3333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4905, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:01:18.3333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4906, N'Update Job', N'dzokara', N'{"Id":3,"PositionId":null,"CompanyId":null,"TechnologyIds":null,"RegionId":null,"TypeId":null,"Description":"Deskripcijaaaa","Salary":60.0,"BenefitIds":null,"CategoryIds":null,"Deadline":"2024-07-27T00:00:00","RemoteId":null}', CAST(N'2024-07-02T12:01:22.2566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4907, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:01:37.4800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4908, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T12:01:48.3966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4909, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:01:48.3966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4910, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:01:48.4000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4911, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:01:48.4033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4912, N'Update Job', N'dzokara', N'{"Id":3,"PositionId":null,"CompanyId":null,"TechnologyIds":null,"RegionId":null,"TypeId":null,"Description":"Description1","Salary":5000.0,"BenefitIds":null,"CategoryIds":null,"Deadline":"2024-07-26T00:00:00","RemoteId":null}', CAST(N'2024-07-02T12:02:06.3466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4913, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:02:09.7133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4914, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T12:02:28.6066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4915, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:02:28.6100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4916, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:02:28.6133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4917, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:02:28.6200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4918, N'Update Job', N'dzokara', N'{"Id":3,"PositionId":null,"CompanyId":null,"TechnologyIds":null,"RegionId":null,"TypeId":null,"Description":"Description1","Salary":5000.0,"BenefitIds":null,"CategoryIds":null,"Deadline":"2024-07-30T00:00:00","RemoteId":null}', CAST(N'2024-07-02T12:02:39.6300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4919, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:02:39.6500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4920, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T12:02:46.6766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4921, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:02:46.6800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4922, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:02:46.6833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4923, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:02:46.6833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4924, N'Update Job', N'dzokara', N'{"Id":3,"PositionId":null,"CompanyId":null,"TechnologyIds":null,"RegionId":null,"TypeId":null,"Description":"Description1","Salary":5000.0,"BenefitIds":null,"CategoryIds":null,"Deadline":"2024-07-30T00:00:00","RemoteId":null}', CAST(N'2024-07-02T12:03:11.7466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4925, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:03:11.7700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4926, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:03:16.6500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4927, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:03:19.2366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4928, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T12:03:20.8700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4929, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:03:20.8733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4930, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:03:20.8733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4931, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:03:20.8766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4932, N'Update Job', N'dzokara', N'{"Id":3,"PositionId":null,"CompanyId":null,"TechnologyIds":null,"RegionId":null,"TypeId":null,"Description":"Description1","Salary":5000.0,"BenefitIds":null,"CategoryIds":null,"Deadline":"2024-07-16T00:00:00","RemoteId":null}', CAST(N'2024-07-02T12:03:34.8533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4933, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T12:04:05.5033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4934, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:05:30.6233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4935, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:05:34.1966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4936, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T12:05:37.0966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4937, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:05:37.1000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4938, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:05:37.1000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4939, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:05:37.1000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4940, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:08:08.1466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4941, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T12:08:11.2300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4942, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:08:11.2300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4943, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:08:11.2366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4944, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:08:11.2366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4945, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:09:43.6233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4946, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:09:48.5000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4947, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T12:09:51.5600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4948, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:09:51.5633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4949, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:09:51.5700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4950, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:09:51.5700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4951, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:11:59.5566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4952, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T12:12:00.6000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4953, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:12:00.6000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4954, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:12:00.6033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4955, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:12:00.6033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4956, N'Search Users', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:12:44.2666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4957, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:12:44.3133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4958, N'Single job', N'unauthorized', N'1', CAST(N'2024-07-02T12:20:26.3700000' AS DateTime2))
GO
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4959, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:20:39.4300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4960, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:23:30.5400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4961, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:23:35.5600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4962, N'Single job', N'unauthorized', N'1', CAST(N'2024-07-02T12:23:39.4866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4963, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:24:07.3300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4964, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:25:41.0033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4965, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:25:41.2866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4966, N'Single job', N'unauthorized', N'1', CAST(N'2024-07-02T12:25:47.4100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4967, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:26:35.7900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4968, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:26:37.5733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4969, N'Single job', N'unauthorized', N'1', CAST(N'2024-07-02T12:26:40.7333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4970, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:26:50.9433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4971, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:27:12.1966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4972, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:27:12.8433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4973, N'Single job', N'unauthorized', N'1', CAST(N'2024-07-02T12:27:14.5400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4974, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:27:16.4066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4975, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:27:18.0733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4976, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:27:18.0800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4977, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:27:46.2366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4978, N'Single job', N'unauthorized', N'1', CAST(N'2024-07-02T12:27:54.7533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4979, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:27:54.7633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4980, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:27:54.7666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4981, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:27:54.7666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4982, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:28:07.8033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4983, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:28:39.6666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4984, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:28:41.5366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4985, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T12:28:47.6533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4986, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:28:47.6566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4987, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:28:47.6900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4988, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:28:47.6933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4989, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:30:30.7900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4990, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:30:34.6200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4991, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T12:30:36.0066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4992, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:30:36.0100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4993, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:30:36.0133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4994, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:30:36.0166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4995, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:31:39.6466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4996, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:31:44.1833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4997, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T12:31:45.2033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4998, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:31:45.2066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (4999, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:31:45.2100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5000, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:31:45.2100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5001, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:32:31.6566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5002, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:32:34.5733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5003, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T12:32:35.4800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5004, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:32:35.4833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5005, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:32:35.4866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5006, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:32:35.4866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5007, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:33:14.8533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5008, N'Single job', N'unauthorized', N'1', CAST(N'2024-07-02T12:33:15.5733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5009, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:33:15.5766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5010, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:33:15.5766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5011, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:33:15.5800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5012, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:33:24.2066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5013, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:33:26.6200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5014, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T12:33:27.6966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5015, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:33:27.6966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5016, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:33:27.7000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5017, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:33:27.7033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5018, N'Search Users', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:33:50.4500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5019, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:33:50.5166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5020, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:33:52.9100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5021, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:33:55.4600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5022, N'Update Job', N'dzokara', N'{"Id":3,"PositionId":null,"CompanyId":null,"TechnologyIds":null,"RegionId":null,"TypeId":null,"Description":"Description1","Salary":5000.0,"BenefitIds":null,"CategoryIds":null,"Deadline":"2024-07-16T00:00:00","RemoteId":null}', CAST(N'2024-07-02T12:33:57.4666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5023, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:34:02.7900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5024, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T12:34:08.5600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5025, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:34:08.5633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5026, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:34:08.5633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5027, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:34:08.5666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5028, N'Update Job', N'dzokara', N'{"Id":3,"PositionId":null,"CompanyId":null,"TechnologyIds":null,"RegionId":null,"TypeId":null,"Description":"Description","Salary":2000.0,"BenefitIds":null,"CategoryIds":null,"Deadline":"2024-07-16T00:00:00","RemoteId":null}', CAST(N'2024-07-02T12:34:30.6800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5029, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:35:13.7666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5030, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:35:41.7200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5031, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:35:45.3100000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5032, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T12:35:47.5600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5033, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:35:47.5600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5034, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:35:47.5633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5035, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:35:47.5633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5036, N'Update Job', N'dzokara', N'{"Id":3,"PositionId":null,"CompanyId":null,"TechnologyIds":null,"RegionId":null,"TypeId":null,"Description":"Description","Salary":2000.0,"BenefitIds":null,"CategoryIds":null,"Deadline":"2024-07-16T00:00:00","RemoteId":null}', CAST(N'2024-07-02T12:35:58.0500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5037, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:36:09.5833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5038, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:36:19.9300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5039, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:36:27.7500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5040, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T12:36:29.5566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5041, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:36:29.5566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5042, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:36:29.5600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5043, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:36:29.5600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5044, N'Update Job', N'dzokara', N'{"Id":3,"PositionId":null,"CompanyId":null,"TechnologyIds":null,"RegionId":null,"TypeId":null,"Description":"Description","Salary":2000.0,"BenefitIds":null,"CategoryIds":null,"Deadline":"2024-07-16T00:00:00","RemoteId":null}', CAST(N'2024-07-02T12:36:41.7066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5045, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:37:07.6933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5046, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:37:09.5766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5047, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T12:37:10.5733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5048, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:37:10.5733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5049, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:37:10.5766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5050, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:37:10.5800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5051, N'Update Job', N'dzokara', N'{"Id":3,"PositionId":2,"CompanyId":4,"TechnologyIds":null,"RegionId":5,"TypeId":3,"Description":"Description","Salary":2000.0,"BenefitIds":null,"CategoryIds":null,"Deadline":"2024-07-16T00:00:00","RemoteId":1}', CAST(N'2024-07-02T12:37:18.7133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5052, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:37:25.7666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5053, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T12:37:36.2433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5054, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:37:36.2466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5055, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:37:36.2466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5056, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:37:36.2500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5057, N'Update Job', N'dzokara', N'{"Id":3,"PositionId":2,"CompanyId":1,"TechnologyIds":null,"RegionId":5,"TypeId":3,"Description":"Description","Salary":2000.0,"BenefitIds":null,"CategoryIds":null,"Deadline":"2024-07-16T00:00:00","RemoteId":1}', CAST(N'2024-07-02T12:37:39.7266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5058, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:37:42.7433333' AS DateTime2))
GO
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5059, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:38:55.8633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5060, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T12:38:57.4733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5061, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:38:57.4766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5062, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:38:57.4766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5063, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:38:57.4800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5064, N'Update Job', N'dzokara', N'{"Id":3,"PositionId":2,"CompanyId":2,"TechnologyIds":null,"RegionId":5,"TypeId":3,"Description":"Description","Salary":2000.0,"BenefitIds":null,"CategoryIds":null,"Deadline":"2024-07-16T00:00:00","RemoteId":1}', CAST(N'2024-07-02T12:39:01.0666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5065, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:39:13.6500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5066, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:39:15.3566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5067, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T12:39:16.8300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5068, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:39:16.8300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5069, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:39:16.8300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5070, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:39:16.8333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5071, N'Update Job', N'dzokara', N'{"Id":3,"PositionId":2,"CompanyId":3,"TechnologyIds":null,"RegionId":5,"TypeId":3,"Description":"Description","Salary":2000.0,"BenefitIds":null,"CategoryIds":null,"Deadline":"2024-07-16T00:00:00","RemoteId":1}', CAST(N'2024-07-02T12:39:19.1966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5072, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:39:19.2166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5073, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T12:39:20.4966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5074, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:39:20.4966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5075, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:39:20.4966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5076, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:39:20.4966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5077, N'Update Job', N'dzokara', N'{"Id":3,"PositionId":2,"CompanyId":4,"TechnologyIds":null,"RegionId":5,"TypeId":3,"Description":"Description","Salary":2000.0,"BenefitIds":null,"CategoryIds":null,"Deadline":"2024-07-16T00:00:00","RemoteId":1}', CAST(N'2024-07-02T12:39:22.7833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5078, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:39:22.8033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5079, N'Single job', N'unauthorized', N'3', CAST(N'2024-07-02T12:39:24.4500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5080, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:39:24.4500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5081, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:39:24.4500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5082, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:39:24.4500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5083, N'Update Job', N'dzokara', N'{"Id":3,"PositionId":2,"CompanyId":5,"TechnologyIds":null,"RegionId":5,"TypeId":3,"Description":"Description","Salary":2000.0,"BenefitIds":null,"CategoryIds":null,"Deadline":"2024-07-16T00:00:00","RemoteId":1}', CAST(N'2024-07-02T12:39:26.5766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5084, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:39:26.5933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5085, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:40:45.1566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5086, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:41:39.6666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5087, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:42:15.5566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5088, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:42:26.5600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5089, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:42:38.6566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5090, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:42:44.5733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5091, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:42:59.5533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5092, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:43:42.6500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5093, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:44:14.6266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5094, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:44:48.2500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5095, N'Single blog', N'unauthorized', N'1', CAST(N'2024-07-02T12:44:53.8500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5096, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:44:56.0833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5097, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:46:26.8066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5098, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:46:43.7200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5099, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:46:49.6400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5100, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:46:52.5700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5101, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:47:05.5833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5102, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:47:07.8233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5103, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:47:47.5900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5104, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:47:49.3733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5105, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:47:54.1766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5106, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:47:56.1066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5107, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:47:59.0733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5108, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:48:49.5566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5109, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:49:27.5633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5110, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:49:34.0500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5111, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:49:37.4966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5112, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:49:49.9200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5113, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:49:50.3500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5114, N'Single blog', N'unauthorized', N'1', CAST(N'2024-07-02T12:50:09.4200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5115, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:52:24.5800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5116, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:52:32.4500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5117, N'Search Positions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:52:33.4266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5118, N'Search Companies', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:52:33.4333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5119, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:52:33.4333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5120, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:53:25.0833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5121, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:54:05.1133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5122, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:55:04.7133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5123, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:56:31.6133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5124, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:59:33.3233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5125, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T12:59:33.8766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5126, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:03:19.6800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5127, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:03:34.1233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5128, N'Search Users', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:03:49.0666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5129, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:03:49.1200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5130, N'Create Blog', N'dzokara', N'{"Title":"TityleTityleTityle","Description":"TityleTityleTityleTityle","Image":{"ContentDisposition":"form-data; name=\"image\"; filename=\"1.PNG\"","ContentType":"image/png","Headers":{"Content-Disposition":["form-data; name=\"image\"; filename=\"1.PNG\""],"Content-Type":["image/png"]},"Length":30716,"Name":"image","FileName":"1.PNG"}}', CAST(N'2024-07-02T13:03:51.0800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5131, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:03:51.1600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5132, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:04:49.5666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5133, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:06:28.2366667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5134, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:06:36.0733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5135, N'Single blog', N'unauthorized', N'6', CAST(N'2024-07-02T13:06:38.6300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5136, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:07:06.5433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5137, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:07:11.2033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5138, N'Single blog', N'unauthorized', N'6', CAST(N'2024-07-02T13:07:12.4000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5139, N'Update Blog', N'dzokara', N'{"Id":6,"Title":"New blog new content new stuff","Description":"Description blank Description blank Description blank Description blank Description blank Description blank Description blank ","Image":{"ContentDisposition":"form-data; name=\"image\"; filename=\"123.PNG\"","ContentType":"image/png","Headers":{"Content-Disposition":["form-data; name=\"image\"; filename=\"123.PNG\""],"Content-Type":["image/png"]},"Length":20115,"Name":"image","FileName":"123.PNG"},"isActive":false}', CAST(N'2024-07-02T13:07:37.0266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5140, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:07:37.0566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5141, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:07:52.1200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5142, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:07:52.3733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5143, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:11:12.2133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5144, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:11:12.5300000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5145, N'Single blog', N'unauthorized', N'6', CAST(N'2024-07-02T13:11:18.6500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5146, N'Search Users', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:11:58.0933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5147, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:11:58.1600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5148, N'Update Blog', N'dzokara', N'{"Id":6,"Title":"New blog new content new stuff","Description":"Description blank Description blank Description blank Description blank Description blank Description blank Description blank ","Image":{"ContentDisposition":"form-data; name=\"image\"; filename=\"sq_img_2.jpg\"","ContentType":"image/jpeg","Headers":{"Content-Disposition":["form-data; name=\"image\"; filename=\"sq_img_2.jpg\""],"Content-Type":["image/jpeg"]},"Length":222281,"Name":"image","FileName":"sq_img_2.jpg"},"isActive":false}', CAST(N'2024-07-02T13:12:00.5566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5149, N'Update Blog', N'dzokara', N'{"Id":6,"Title":"New blog new content new ","Description":"Description blank Description blank Description blank Description blank Description blank Description blank Description blank ","Image":{"ContentDisposition":"form-data; name=\"image\"; filename=\"sq_img_2.jpg\"","ContentType":"image/jpeg","Headers":{"Content-Disposition":["form-data; name=\"image\"; filename=\"sq_img_2.jpg\""],"Content-Type":["image/jpeg"]},"Length":222281,"Name":"image","FileName":"sq_img_2.jpg"},"isActive":false}', CAST(N'2024-07-02T13:12:20.9933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5150, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:12:21.1733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5151, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:12:29.6033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5152, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:12:30.9200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5153, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:12:37.8800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5154, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:12:39.7400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5155, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:13:11.3800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5156, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:13:15.3200000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5157, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:13:15.3233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5158, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:13:27.5966667' AS DateTime2))
GO
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5159, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:13:29.4700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5160, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:13:29.4733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5161, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:13:29.8400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5162, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:13:35.4466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5163, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:14:36.9166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5164, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:14:52.5166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5165, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:15:25.9066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5166, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:15:32.6233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5167, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:15:56.7466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5168, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:16:04.1600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5169, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:16:20.2900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5170, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:16:25.1800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5171, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:16:29.5966667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5172, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:16:41.1600000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5173, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:16:51.5900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5174, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:16:55.0400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5175, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:17:05.7400000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5176, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:17:16.2466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5177, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:17:18.3666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5178, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:17:24.0800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5179, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:17:24.0833333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5180, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:17:29.3233333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5181, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:17:31.6633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5182, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:17:31.6633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5183, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:17:31.9433333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5184, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:23:05.2700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5185, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:23:07.3533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5186, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:23:48.6733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5187, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:23:51.0533333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5188, N'Single blog', N'unauthorized', N'1', CAST(N'2024-07-02T13:23:53.0333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5189, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:23:55.1766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5190, N'Search Users', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:36:13.3900000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5191, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:36:13.5133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5192, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:36:17.8766667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5193, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:36:25.0333333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5194, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:36:25.7500000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5195, N'Search Users', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:43:01.3700000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5196, N'Search Users', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:45:04.4933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5197, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:45:20.1933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5198, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:45:25.2933333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5199, N'Search Users', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:45:31.0133333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5200, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:45:33.0066667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5201, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:45:34.5033333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5202, N'Search Users', N'dzokara', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:45:47.1166667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5203, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:46:06.5800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5204, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:46:08.1000000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5205, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:46:10.4733333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5206, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:46:11.8633333' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5207, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:46:13.0666667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5208, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:46:14.3466667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5209, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:46:14.3566667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5210, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:46:17.6800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5211, N'Search Regions', N'unauthorized', N'{"Keyword":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:46:17.6800000' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5212, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:46:28.8866667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5213, N'Search Blogs', N'unauthorized', N'{"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:46:43.3266667' AS DateTime2))
INSERT [dbo].[UseCaseLogs] ([Id], [UseCaseName], [Username], [UseCaseData], [ExecutedAt]) VALUES (5214, N'Search Jobs', N'unauthorized', N'{"RegionId":null,"TypeId":null,"CompanyId":null,"PositionId":null,"Salary":null,"Benefits":null,"Technologies":null,"Categories":null,"RemoteId":null,"PerPage":10,"Page":1}', CAST(N'2024-07-02T13:46:43.8533333' AS DateTime2))
SET IDENTITY_INSERT [dbo].[UseCaseLogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Email], [Password], [Username], [FirstName], [LastName], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (1, N'djole@email', N'$2a$10$m2R.iOhFhDpC6hcEQNOJz.qfSQ0RDgi1etk0jgKp7Omzdl6hsMg1e', N'dzokara', N'Djordje', N'Jovanovic', CAST(N'2024-06-19T11:39:56.6949963' AS DateTime2), NULL, 1)
INSERT [dbo].[Users] ([Id], [Email], [Password], [Username], [FirstName], [LastName], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (2, N'sadasd@s', N'$2a$10$QQHtE4w1sf/wnSSA/JYByuXpv/nr6IvVkcZa1W2IjxOsVsSfm8MzC', N'sadsa', N'Đorđe', N'Jovanović', CAST(N'2024-06-25T10:34:06.2738584' AS DateTime2), NULL, 1)
INSERT [dbo].[Users] ([Id], [Email], [Password], [Username], [FirstName], [LastName], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (3, N'novi@email', N'$2a$10$.vXayxGJ7wKfv8.GeEEQ9umbFdUK6AvMCu.U74U7tJ/quAsruMLtu', N'Novi', N'Korisnik', N'Korisnik', CAST(N'2024-06-27T12:38:35.2323190' AS DateTime2), NULL, 1)
INSERT [dbo].[Users] ([Id], [Email], [Password], [Username], [FirstName], [LastName], [CreatedAt], [UpdatedAt], [IsActive]) VALUES (4, N'mejl@mejl', N'$2a$10$qXmtQy158qAEogR5IC5GnuLDot/Jiprc9nv6xWlko4bbjlGSvif8W', N'Djordje', N'Djordje', N'Jovanovic', CAST(N'2024-07-02T09:31:31.3685138' AS DateTime2), NULL, 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 2)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 3)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 4)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 5)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (1, 6)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (2, 3)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (2, 5)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (2, 6)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (3, 3)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (3, 5)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (4, 3)
INSERT [dbo].[UserUseCases] ([UserId], [UseCaseId]) VALUES (4, 5)
GO
/****** Object:  Index [IX_BenefitJobs_JobId]    Script Date: 02-Jul-24 3:52:11 PM ******/
CREATE NONCLUSTERED INDEX [IX_BenefitJobs_JobId] ON [dbo].[BenefitJobs]
(
	[JobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Blogs_ImageId]    Script Date: 02-Jul-24 3:52:11 PM ******/
CREATE NONCLUSTERED INDEX [IX_Blogs_ImageId] ON [dbo].[Blogs]
(
	[ImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CategoryJobs_JobId]    Script Date: 02-Jul-24 3:52:11 PM ******/
CREATE NONCLUSTERED INDEX [IX_CategoryJobs_JobId] ON [dbo].[CategoryJobs]
(
	[JobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_AuthorId]    Script Date: 02-Jul-24 3:52:11 PM ******/
CREATE NONCLUSTERED INDEX [IX_Comments_AuthorId] ON [dbo].[Comments]
(
	[AuthorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_BlogId]    Script Date: 02-Jul-24 3:52:11 PM ******/
CREATE NONCLUSTERED INDEX [IX_Comments_BlogId] ON [dbo].[Comments]
(
	[BlogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Companies_ImageId]    Script Date: 02-Jul-24 3:52:11 PM ******/
CREATE NONCLUSTERED INDEX [IX_Companies_ImageId] ON [dbo].[Companies]
(
	[ImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Jobs_CompanyId]    Script Date: 02-Jul-24 3:52:11 PM ******/
CREATE NONCLUSTERED INDEX [IX_Jobs_CompanyId] ON [dbo].[Jobs]
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Jobs_PositionId]    Script Date: 02-Jul-24 3:52:11 PM ******/
CREATE NONCLUSTERED INDEX [IX_Jobs_PositionId] ON [dbo].[Jobs]
(
	[PositionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Jobs_RegionId]    Script Date: 02-Jul-24 3:52:11 PM ******/
CREATE NONCLUSTERED INDEX [IX_Jobs_RegionId] ON [dbo].[Jobs]
(
	[RegionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Jobs_RemoteId]    Script Date: 02-Jul-24 3:52:11 PM ******/
CREATE NONCLUSTERED INDEX [IX_Jobs_RemoteId] ON [dbo].[Jobs]
(
	[RemoteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Jobs_TypeId]    Script Date: 02-Jul-24 3:52:11 PM ******/
CREATE NONCLUSTERED INDEX [IX_Jobs_TypeId] ON [dbo].[Jobs]
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_JobTechnology_TechnologyId]    Script Date: 02-Jul-24 3:52:11 PM ******/
CREATE NONCLUSTERED INDEX [IX_JobTechnology_TechnologyId] ON [dbo].[JobTechnology]
(
	[TechnologyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_JobUser_UserId]    Script Date: 02-Jul-24 3:52:11 PM ******/
CREATE NONCLUSTERED INDEX [IX_JobUser_UserId] ON [dbo].[JobUser]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Testimonials_UserId]    Script Date: 02-Jul-24 3:52:11 PM ******/
CREATE NONCLUSTERED INDEX [IX_Testimonials_UserId] ON [dbo].[Testimonials]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UseCaseLogs_Username_UseCaseName_ExecutedAt]    Script Date: 02-Jul-24 3:52:11 PM ******/
CREATE NONCLUSTERED INDEX [IX_UseCaseLogs_Username_UseCaseName_ExecutedAt] ON [dbo].[UseCaseLogs]
(
	[Username] ASC,
	[UseCaseName] ASC,
	[ExecutedAt] ASC
)
INCLUDE([UseCaseData]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Users_Email]    Script Date: 02-Jul-24 3:52:11 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Users_Email] ON [dbo].[Users]
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Users_Username]    Script Date: 02-Jul-24 3:52:11 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Users_Username] ON [dbo].[Users]
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Blogs] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Blogs] ADD  DEFAULT (CONVERT([bit],(1))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Comments] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Comments] ADD  DEFAULT (CONVERT([bit],(1))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Companies] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Companies] ADD  DEFAULT (CONVERT([bit],(1))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Image] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Image] ADD  DEFAULT (CONVERT([bit],(1))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Jobs] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Jobs] ADD  DEFAULT (CONVERT([bit],(1))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Testimonials] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Testimonials] ADD  DEFAULT (CONVERT([bit],(1))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (CONVERT([bit],(1))) FOR [IsActive]
GO
ALTER TABLE [dbo].[BenefitJobs]  WITH CHECK ADD  CONSTRAINT [FK_BenefitJobs_Benefits_BenefitId] FOREIGN KEY([BenefitId])
REFERENCES [dbo].[Benefits] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BenefitJobs] CHECK CONSTRAINT [FK_BenefitJobs_Benefits_BenefitId]
GO
ALTER TABLE [dbo].[BenefitJobs]  WITH CHECK ADD  CONSTRAINT [FK_BenefitJobs_Jobs_JobId] FOREIGN KEY([JobId])
REFERENCES [dbo].[Jobs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BenefitJobs] CHECK CONSTRAINT [FK_BenefitJobs_Jobs_JobId]
GO
ALTER TABLE [dbo].[Blogs]  WITH CHECK ADD  CONSTRAINT [FK_Blogs_Image_ImageId] FOREIGN KEY([ImageId])
REFERENCES [dbo].[Image] ([Id])
GO
ALTER TABLE [dbo].[Blogs] CHECK CONSTRAINT [FK_Blogs_Image_ImageId]
GO
ALTER TABLE [dbo].[CategoryJobs]  WITH CHECK ADD  CONSTRAINT [FK_CategoryJobs_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CategoryJobs] CHECK CONSTRAINT [FK_CategoryJobs_Categories_CategoryId]
GO
ALTER TABLE [dbo].[CategoryJobs]  WITH CHECK ADD  CONSTRAINT [FK_CategoryJobs_Jobs_JobId] FOREIGN KEY([JobId])
REFERENCES [dbo].[Jobs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CategoryJobs] CHECK CONSTRAINT [FK_CategoryJobs_Jobs_JobId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Blogs_BlogId] FOREIGN KEY([BlogId])
REFERENCES [dbo].[Blogs] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Blogs_BlogId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Users_AuthorId] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Users_AuthorId]
GO
ALTER TABLE [dbo].[Companies]  WITH CHECK ADD  CONSTRAINT [FK_Companies_Image_ImageId] FOREIGN KEY([ImageId])
REFERENCES [dbo].[Image] ([Id])
GO
ALTER TABLE [dbo].[Companies] CHECK CONSTRAINT [FK_Companies_Image_ImageId]
GO
ALTER TABLE [dbo].[Jobs]  WITH CHECK ADD  CONSTRAINT [FK_Jobs_Companies_CompanyId] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companies] ([Id])
GO
ALTER TABLE [dbo].[Jobs] CHECK CONSTRAINT [FK_Jobs_Companies_CompanyId]
GO
ALTER TABLE [dbo].[Jobs]  WITH CHECK ADD  CONSTRAINT [FK_Jobs_Positions_PositionId] FOREIGN KEY([PositionId])
REFERENCES [dbo].[Positions] ([Id])
GO
ALTER TABLE [dbo].[Jobs] CHECK CONSTRAINT [FK_Jobs_Positions_PositionId]
GO
ALTER TABLE [dbo].[Jobs]  WITH CHECK ADD  CONSTRAINT [FK_Jobs_Region_RegionId] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Region] ([Id])
GO
ALTER TABLE [dbo].[Jobs] CHECK CONSTRAINT [FK_Jobs_Region_RegionId]
GO
ALTER TABLE [dbo].[Jobs]  WITH CHECK ADD  CONSTRAINT [FK_Jobs_Remote_RemoteId] FOREIGN KEY([RemoteId])
REFERENCES [dbo].[Remote] ([Id])
GO
ALTER TABLE [dbo].[Jobs] CHECK CONSTRAINT [FK_Jobs_Remote_RemoteId]
GO
ALTER TABLE [dbo].[Jobs]  WITH CHECK ADD  CONSTRAINT [FK_Jobs_Types_TypeId] FOREIGN KEY([TypeId])
REFERENCES [dbo].[Types] ([Id])
GO
ALTER TABLE [dbo].[Jobs] CHECK CONSTRAINT [FK_Jobs_Types_TypeId]
GO
ALTER TABLE [dbo].[JobTechnology]  WITH CHECK ADD  CONSTRAINT [FK_JobTechnology_Jobs_JobId] FOREIGN KEY([JobId])
REFERENCES [dbo].[Jobs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JobTechnology] CHECK CONSTRAINT [FK_JobTechnology_Jobs_JobId]
GO
ALTER TABLE [dbo].[JobTechnology]  WITH CHECK ADD  CONSTRAINT [FK_JobTechnology_Technology_TechnologyId] FOREIGN KEY([TechnologyId])
REFERENCES [dbo].[Technology] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JobTechnology] CHECK CONSTRAINT [FK_JobTechnology_Technology_TechnologyId]
GO
ALTER TABLE [dbo].[JobUser]  WITH CHECK ADD  CONSTRAINT [FK_JobUser_Jobs_JobId] FOREIGN KEY([JobId])
REFERENCES [dbo].[Jobs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JobUser] CHECK CONSTRAINT [FK_JobUser_Jobs_JobId]
GO
ALTER TABLE [dbo].[JobUser]  WITH CHECK ADD  CONSTRAINT [FK_JobUser_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JobUser] CHECK CONSTRAINT [FK_JobUser_Users_UserId]
GO
ALTER TABLE [dbo].[Testimonials]  WITH CHECK ADD  CONSTRAINT [FK_Testimonials_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Testimonials] CHECK CONSTRAINT [FK_Testimonials_Users_UserId]
GO
ALTER TABLE [dbo].[UserUseCases]  WITH CHECK ADD  CONSTRAINT [FK_UserUseCases_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserUseCases] CHECK CONSTRAINT [FK_UserUseCases_Users_UserId]
GO
/****** Object:  StoredProcedure [dbo].[AddUseCaseLog]    Script Date: 02-Jul-24 3:52:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[AddUseCaseLog] @UseCaseName nvarchar(50), @Username nvarchar(20), @Data nvarchar(MAX), @ExecutedAt Datetime
as begin
	insert into UseCaseLogs (UseCaseName, Username, UseCaseData, ExecutedAt) 
	VALUES (@useCaseName,@username, @data, @executedAt)
end
GO
USE [master]
GO
ALTER DATABASE [AspProjekat] SET  READ_WRITE 
GO
