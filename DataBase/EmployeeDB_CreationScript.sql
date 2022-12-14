USE [master]
GO
/****** Object:  Database [EmployeeDB]    Script Date: 8/21/2022 1:34:58 AM ******/
CREATE DATABASE [EmployeeDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EmployeeDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.TAQNEEN\MSSQL\DATA\EmployeeDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EmployeeDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.TAQNEEN\MSSQL\DATA\EmployeeDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [EmployeeDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EmployeeDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EmployeeDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EmployeeDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EmployeeDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EmployeeDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EmployeeDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [EmployeeDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EmployeeDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EmployeeDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EmployeeDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EmployeeDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EmployeeDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EmployeeDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EmployeeDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EmployeeDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EmployeeDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EmployeeDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EmployeeDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EmployeeDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EmployeeDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EmployeeDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EmployeeDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [EmployeeDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EmployeeDB] SET RECOVERY FULL 
GO
ALTER DATABASE [EmployeeDB] SET  MULTI_USER 
GO
ALTER DATABASE [EmployeeDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EmployeeDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EmployeeDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EmployeeDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EmployeeDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EmployeeDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'EmployeeDB', N'ON'
GO
ALTER DATABASE [EmployeeDB] SET QUERY_STORE = OFF
GO
USE [EmployeeDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 8/21/2022 1:34:59 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 8/21/2022 1:34:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 8/21/2022 1:34:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 8/21/2022 1:34:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 8/21/2022 1:34:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 8/21/2022 1:34:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 8/21/2022 1:34:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 8/21/2022 1:34:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 8/21/2022 1:34:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](120) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[DeletedDate] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
	[Isdeleted] [bit] NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 8/21/2022 1:34:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [nvarchar](10) NOT NULL,
	[FirstName] [nvarchar](30) NOT NULL,
	[LastName] [nvarchar](30) NOT NULL,
	[PhoneNo] [nvarchar](15) NOT NULL,
	[HireDate] [nvarchar](max) NOT NULL,
	[Sex] [nvarchar](max) NOT NULL,
	[BirthDate] [datetime2](7) NOT NULL,
	[Salary] [decimal](18, 2) NOT NULL,
	[JobId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[DeletedDate] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
	[Isdeleted] [bit] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jobs]    Script Date: 8/21/2022 1:34:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jobs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](120) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[DeletedDate] [datetime2](7) NULL,
	[IsActive] [bit] NOT NULL,
	[Isdeleted] [bit] NULL,
 CONSTRAINT [PK_Jobs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220819233651_DatabaseCreated', N'6.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220820013121_UpdateSchema', N'6.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220820015705_FixIdentityUserId', N'6.0.8')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'cec5e15f-8c80-44ff-9072-fc815e017c3a', N'Admin', NULL, NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cec5e15f-8c80-44ff-9072-fc815e017c3a', N'cec5e15f-8c80-44ff-9072-fc815e017c3a')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'326b7dde-3327-4138-9422-daa95aeff0c4', N'Mohamed', N'MOHAMED', N'Mohamed.AbdelNabyy@hotmail.com', N'MOHAMED.ABDELNABYY@HOTMAIL.COM', 1, N'AQAAAAEAACcQAAAAEJlFLcRhsziQ9tYwxQjCH4EMor7obH4LcXQfBB5bHvd3AQ4zSbeLwP28T3xQCPlpcw==', N'ABT3AR2FWVTXATNNQKCJZDI43B4W6SD7', N'26e674b7-724a-44aa-8732-5cf0a12e1a32', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'53e87bb5-e20a-49bd-8101-05989cd18922', N'MohamedAdmin3', N'MOHAMEDADMIN3', N'MohamedAdmin3@sss.com', N'MOHAMEDADMIN3@SSS.COM', 0, N'AQAAAAEAACcQAAAAEEGORAvMs2NX9T8Z1jnwLdPvXOVOBaYcb3UdfBPsrZd91wofRl0lH2XUC9VSqH44Hw==', N'IUM5LU45ZVOWITO72EHFCCGNBPVENDIP', N'74574da7-f8df-43f5-9372-5061bb7cd8ca', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'62b71489-ec89-4539-a6c0-f537952db153', N'MohamedAdmin2', N'MOHAMEDADMIN2', N'Mohamed.AbdelNabyy@hotmail.com', N'MOHAMED.ABDELNABYY@HOTMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFlsRusJcHmAksYlMn9X0oLzhrvdrYcwZXH5fwfJw+Q8Y+9j0UNSd1/H+I2+dkN2Fg==', N'OTKDGXFQDFSK7NA4AGFQFLLAOBVMZ6FX', N'95d4e926-30dc-49ca-b2b6-f882dc51973d', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9a7e6b73-fc8c-4525-b3dc-233d6b13f6d6', N'MohamedAdmin', N'MOHAMEDADMIN', N'Mohamed.AbdelNabyy@hotmail.com', N'MOHAMED.ABDELNABYY@HOTMAIL.COM', 0, N'AQAAAAEAACcQAAAAEKy7YilH4XkSvAPSNWPddlRyBszd4cS1Wzks2casF8tPcmXMmi2zI5ugSskvRCWQLg==', N'F3SN7ORRTXLY4XEQXKK62WSEZRARWIVH', N'65e6cb81-d11a-4415-9dfe-d8825b2e7da9', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'cec5e15f-8c80-44ff-9072-fc815e017c3a', N'MohamedAdmin1', N'MOHAMEDADMIN1', N'Mohamed.AbdelNabyy@hotmail.com', N'MOHAMED.ABDELNABYY@HOTMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJ10qrZdaaJQS/6aK9ECYPvLvO0xSkKKI6Mv+z6VG1+MMBkXs4G+sesoZCLxqanRNA==', N'MH52MCKKQ7QZMWYSMCTUL6X6WMQIWXRT', N'6dc6d219-527d-40dc-91ca-6329126b60a6', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Departments] ON 

INSERT [dbo].[Departments] ([Id], [Name], [Description], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [DeletedDate], [IsActive], [Isdeleted]) VALUES (4, N'IT', N'IT', CAST(N'2022-08-20T00:00:00.0000000' AS DateTime2), NULL, N'326B7DDE-3327-4138-9422-DAA95AEFF0C4', NULL, NULL, 1, NULL)
INSERT [dbo].[Departments] ([Id], [Name], [Description], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [DeletedDate], [IsActive], [Isdeleted]) VALUES (5, N'HR', N'HR', CAST(N'2022-08-20T00:00:00.0000000' AS DateTime2), NULL, N'326B7DDE-3327-4138-9422-DAA95AEFF0C4', NULL, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[Departments] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([Id], [EmployeeCode], [FirstName], [LastName], [PhoneNo], [HireDate], [Sex], [BirthDate], [Salary], [JobId], [DepartmentId], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [DeletedDate], [IsActive], [Isdeleted]) VALUES (1, N'EMP-0001', N'Mohamed', N'Abdel Naby', N'00201008922693', N'2022-10-01', N'Male', CAST(N'1990-07-01T00:00:00.0000000' AS DateTime2), CAST(16000.00 AS Decimal(18, 2)), 1, 4, CAST(N'2022-08-20T00:00:00.0000000' AS DateTime2), NULL, N'326B7DDE-3327-4138-9422-DAA95AEFF0C4', NULL, NULL, 1, NULL)
INSERT [dbo].[Employees] ([Id], [EmployeeCode], [FirstName], [LastName], [PhoneNo], [HireDate], [Sex], [BirthDate], [Salary], [JobId], [DepartmentId], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [DeletedDate], [IsActive], [Isdeleted]) VALUES (2, N'Emp-0002', N'Anas', N'Mohamed', N'00201008922693', N'2022-08-20', N'Male', CAST(N'2022-08-20T01:58:39.1730000' AS DateTime2), CAST(16500.00 AS Decimal(18, 2)), 1, 4, CAST(N'2022-08-20T04:00:48.8870805' AS DateTime2), NULL, N'00000000-0000-0000-0000-000000000000', NULL, NULL, 0, NULL)
INSERT [dbo].[Employees] ([Id], [EmployeeCode], [FirstName], [LastName], [PhoneNo], [HireDate], [Sex], [BirthDate], [Salary], [JobId], [DepartmentId], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [DeletedDate], [IsActive], [Isdeleted]) VALUES (3, N'Emp-0003', N'Malek', N'Mohamed', N'00201008922693', N'2022-08-20', N'Male', CAST(N'2022-08-20T01:58:39.1730000' AS DateTime2), CAST(16500.00 AS Decimal(18, 2)), 1, 4, CAST(N'2022-08-20T04:01:41.8435880' AS DateTime2), NULL, N'00000000-0000-0000-0000-000000000000', NULL, NULL, 0, NULL)
INSERT [dbo].[Employees] ([Id], [EmployeeCode], [FirstName], [LastName], [PhoneNo], [HireDate], [Sex], [BirthDate], [Salary], [JobId], [DepartmentId], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [DeletedDate], [IsActive], [Isdeleted]) VALUES (4, N'Emp-0004', N'Eyad', N'Mohamed', N'00201008922693', N'2022-08-20', N'Male', CAST(N'2022-08-20T01:58:39.1730000' AS DateTime2), CAST(16500.00 AS Decimal(18, 2)), 1, 4, CAST(N'2022-08-20T04:02:40.8508761' AS DateTime2), NULL, N'00000000-0000-0000-0000-000000000000', NULL, NULL, 0, NULL)
INSERT [dbo].[Employees] ([Id], [EmployeeCode], [FirstName], [LastName], [PhoneNo], [HireDate], [Sex], [BirthDate], [Salary], [JobId], [DepartmentId], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [DeletedDate], [IsActive], [Isdeleted]) VALUES (5, N'Emp-0006', N'test', N'Mohamed', N'00201008922693', N'2022-08-20', N'Male', CAST(N'2022-08-20T01:58:39.1730000' AS DateTime2), CAST(16500.00 AS Decimal(18, 2)), 1, 4, CAST(N'2022-08-20T04:02:56.5183765' AS DateTime2), CAST(N'2022-08-20T04:04:30.2988884' AS DateTime2), N'00000000-0000-0000-0000-000000000000', N'00000000-0000-0000-0000-000000000000', CAST(N'2022-08-20T04:06:43.5216939' AS DateTime2), 0, 1)
INSERT [dbo].[Employees] ([Id], [EmployeeCode], [FirstName], [LastName], [PhoneNo], [HireDate], [Sex], [BirthDate], [Salary], [JobId], [DepartmentId], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [DeletedDate], [IsActive], [Isdeleted]) VALUES (6, N'Emp-0007', N'test', N'Mohamed', N'00201008922693', N'2022-08-20', N'Male', CAST(N'2022-08-20T01:58:39.1730000' AS DateTime2), CAST(16500.00 AS Decimal(18, 2)), 1, 4, CAST(N'2022-08-20T07:07:13.0557110' AS DateTime2), NULL, N'cec5e15f-8c80-44ff-9072-fc815e017c3a', NULL, NULL, 1, NULL)
INSERT [dbo].[Employees] ([Id], [EmployeeCode], [FirstName], [LastName], [PhoneNo], [HireDate], [Sex], [BirthDate], [Salary], [JobId], [DepartmentId], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [DeletedDate], [IsActive], [Isdeleted]) VALUES (7, N'Emp-0007', N'test', N'Mohamed', N'00201008922693', N'2022-08-20', N'Male', CAST(N'2022-08-20T01:58:39.1730000' AS DateTime2), CAST(16500.00 AS Decimal(18, 2)), 1, 4, CAST(N'2022-08-20T07:07:30.5988409' AS DateTime2), NULL, N'cec5e15f-8c80-44ff-9072-fc815e017c3a', NULL, NULL, 1, NULL)
INSERT [dbo].[Employees] ([Id], [EmployeeCode], [FirstName], [LastName], [PhoneNo], [HireDate], [Sex], [BirthDate], [Salary], [JobId], [DepartmentId], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [DeletedDate], [IsActive], [Isdeleted]) VALUES (8, N'Emp-0007', N'test', N'Mohamed', N'00201008922693', N'2022-08-20', N'Male', CAST(N'2022-08-20T01:58:39.1730000' AS DateTime2), CAST(16500.00 AS Decimal(18, 2)), 1, 4, CAST(N'2022-08-20T21:59:38.5354269' AS DateTime2), NULL, N'cec5e15f-8c80-44ff-9072-fc815e017c3a', NULL, NULL, 1, NULL)
INSERT [dbo].[Employees] ([Id], [EmployeeCode], [FirstName], [LastName], [PhoneNo], [HireDate], [Sex], [BirthDate], [Salary], [JobId], [DepartmentId], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [DeletedDate], [IsActive], [Isdeleted]) VALUES (9, N'ssss', N'ssssss', N'ssss', N'ssss', N'2022-08-20T01:58:39.173Z', N'male', CAST(N'2022-08-20T01:58:39.1730000' AS DateTime2), CAST(10000.00 AS Decimal(18, 2)), 1, 4, CAST(N'2022-08-20T22:16:50.7245735' AS DateTime2), NULL, N'8888', NULL, NULL, 1, NULL)
INSERT [dbo].[Employees] ([Id], [EmployeeCode], [FirstName], [LastName], [PhoneNo], [HireDate], [Sex], [BirthDate], [Salary], [JobId], [DepartmentId], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [DeletedDate], [IsActive], [Isdeleted]) VALUES (10, N'Emp-0007', N'test', N'Mohamed', N'00201008922693', N'2022-08-20', N'Male', CAST(N'2022-08-20T01:58:39.1730000' AS DateTime2), CAST(16500.00 AS Decimal(18, 2)), 1, 4, CAST(N'2022-08-20T22:29:39.4579932' AS DateTime2), NULL, N'cec5e15f-8c80-44ff-9072-fc815e017c3a', NULL, NULL, 1, NULL)
INSERT [dbo].[Employees] ([Id], [EmployeeCode], [FirstName], [LastName], [PhoneNo], [HireDate], [Sex], [BirthDate], [Salary], [JobId], [DepartmentId], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [DeletedDate], [IsActive], [Isdeleted]) VALUES (11, N'222', N'22', N'22', N'222', N'2022-08-20T01:58:39.173Z', N'fff', CAST(N'2022-08-20T01:58:39.1730000' AS DateTime2), CAST(1000.00 AS Decimal(18, 2)), 1, 4, CAST(N'2022-08-20T23:11:51.7413701' AS DateTime2), NULL, N'cec5e15f-8c80-44ff-9072-fc815e017c3a', NULL, NULL, 1, NULL)
INSERT [dbo].[Employees] ([Id], [EmployeeCode], [FirstName], [LastName], [PhoneNo], [HireDate], [Sex], [BirthDate], [Salary], [JobId], [DepartmentId], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [DeletedDate], [IsActive], [Isdeleted]) VALUES (12, N'vv', N'vv', N'vv', N'vv', N'2022-08-03', N'Male', CAST(N'2022-08-20T00:00:00.0000000' AS DateTime2), CAST(1000.00 AS Decimal(18, 2)), 1, 4, CAST(N'2022-08-20T23:54:25.6264946' AS DateTime2), NULL, N'cec5e15f-8c80-44ff-9072-fc815e017c3a', NULL, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[Jobs] ON 

INSERT [dbo].[Jobs] ([Id], [Name], [Description], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [DeletedDate], [IsActive], [Isdeleted]) VALUES (1, N'Engineer', N'Engineer', CAST(N'2022-08-20T00:00:00.0000000' AS DateTime2), NULL, N'326B7DDE-3327-4138-9422-DAA95AEFF0C4', NULL, NULL, 1, NULL)
INSERT [dbo].[Jobs] ([Id], [Name], [Description], [CreatedDate], [ModifiedDate], [CreatedBy], [ModifiedBy], [DeletedDate], [IsActive], [Isdeleted]) VALUES (2, N'HR', N'HR', CAST(N'2022-08-20T00:00:00.0000000' AS DateTime2), NULL, N'326B7DDE-3327-4138-9422-DAA95AEFF0C4', NULL, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[Jobs] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 8/21/2022 1:34:59 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 8/21/2022 1:34:59 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 8/21/2022 1:34:59 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 8/21/2022 1:34:59 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 8/21/2022 1:34:59 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 8/21/2022 1:34:59 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 8/21/2022 1:34:59 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Employees_DepartmentId]    Script Date: 8/21/2022 1:34:59 AM ******/
CREATE NONCLUSTERED INDEX [IX_Employees_DepartmentId] ON [dbo].[Employees]
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Employees_JobId]    Script Date: 8/21/2022 1:34:59 AM ******/
CREATE NONCLUSTERED INDEX [IX_Employees_JobId] ON [dbo].[Employees]
(
	[JobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Departments] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Jobs] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsActive]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Departments_DepartmentId] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Departments_DepartmentId]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Jobs_JobId] FOREIGN KEY([JobId])
REFERENCES [dbo].[Jobs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Jobs_JobId]
GO
USE [master]
GO
ALTER DATABASE [EmployeeDB] SET  READ_WRITE 
GO
