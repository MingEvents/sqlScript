USE [master]
GO
/****** Object:  Database [MingsEvents]    Script Date: 22/05/2025 17:49:00 ******/
CREATE DATABASE [MingsEvents]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MingsEvents', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\MingsEvents.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MingsEvents_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\MingsEvents_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [MingsEvents] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MingsEvents].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MingsEvents] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MingsEvents] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MingsEvents] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MingsEvents] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MingsEvents] SET ARITHABORT OFF 
GO
ALTER DATABASE [MingsEvents] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MingsEvents] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MingsEvents] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MingsEvents] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MingsEvents] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MingsEvents] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MingsEvents] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MingsEvents] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MingsEvents] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MingsEvents] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MingsEvents] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MingsEvents] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MingsEvents] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MingsEvents] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MingsEvents] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MingsEvents] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MingsEvents] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MingsEvents] SET RECOVERY FULL 
GO
ALTER DATABASE [MingsEvents] SET  MULTI_USER 
GO
ALTER DATABASE [MingsEvents] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MingsEvents] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MingsEvents] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MingsEvents] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MingsEvents] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MingsEvents] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MingsEvents', N'ON'
GO
ALTER DATABASE [MingsEvents] SET QUERY_STORE = ON
GO
ALTER DATABASE [MingsEvents] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [MingsEvents]
GO
/****** Object:  Table [dbo].[Armchair]    Script Date: 22/05/2025 17:49:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Armchair](
	[armchair_id] [int] IDENTITY(1,1) NOT NULL,
	[columns] [int] NOT NULL,
	[rows] [int] NOT NULL,
	[user_id] [int] NULL,
	[establish_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[armchair_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chat]    Script Date: 22/05/2025 17:49:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chat](
	[chat_id] [int] IDENTITY(1,1) NOT NULL,
	[send_date] [varchar](255) NULL,
	[user1_id] [int] NULL,
	[user2_id] [int] NULL,
 CONSTRAINT [pk_chats] PRIMARY KEY CLUSTERED 
(
	[chat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 22/05/2025 17:49:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[city_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[city_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Establishment]    Script Date: 22/05/2025 17:49:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Establishment](
	[establish_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[direction] [varchar](255) NOT NULL,
	[capacity] [int] NOT NULL,
	[city_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[establish_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 22/05/2025 17:49:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[event_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[price] [int] NOT NULL,
	[reserved_places] [int] NOT NULL,
	[photo] [varchar](255) NULL,
	[start_date] [varchar](255) NOT NULL,
	[end_date] [varchar](255) NOT NULL,
	[seating] [bit] NOT NULL,
	[descripcion] [varchar](1000) NOT NULL,
	[establish_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[event_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 22/05/2025 17:49:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[message_id] [int] IDENTITY(1,1) NOT NULL,
	[sender_id] [int] NULL,
	[content] [nvarchar](255) NULL,
	[send_at] [varchar](255) NULL,
	[is_read] [bit] NULL,
	[chat_id] [int] NULL,
 CONSTRAINT [pk_messages] PRIMARY KEY CLUSTERED 
(
	[message_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reserve_Ticket]    Script Date: 22/05/2025 17:49:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reserve_Ticket](
	[armchair_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[reservation_date] [varchar](255) NULL,
	[event_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[armchair_id] ASC,
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 22/05/2025 17:49:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 22/05/2025 17:49:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[second_name] [varchar](150) NOT NULL,
	[phone] [int] NOT NULL,
	[password] [varchar](max) NOT NULL,
	[photo] [varchar](255) NULL,
	[email] [varchar](255) NOT NULL,
	[role_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Armchair] ON 

INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (1, 12, 12, 1, 1)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (2, 2, 1, 2, 1)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (3, 1, 2, 3, 2)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (4, 2, 2, NULL, 3)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (105, 1, 1, NULL, 8)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (106, 2, 1, NULL, 8)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (107, 3, 1, NULL, 8)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (108, 4, 1, NULL, 8)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (109, 1, 2, NULL, 8)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (110, 2, 2, NULL, 8)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (111, 3, 2, NULL, 8)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (112, 4, 2, NULL, 8)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (113, 1, 3, NULL, 8)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (114, 2, 3, NULL, 8)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (115, 3, 3, NULL, 8)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (116, 4, 3, NULL, 8)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (117, 1, 4, NULL, 8)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (118, 2, 4, NULL, 8)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (119, 3, 4, NULL, 8)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (120, 4, 4, NULL, 8)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (121, 1, 1, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (122, 2, 1, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (123, 3, 1, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (124, 4, 1, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (125, 5, 1, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (126, 6, 1, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (127, 7, 1, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (128, 8, 1, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (129, 9, 1, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (130, 10, 1, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (131, 1, 2, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (132, 2, 2, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (133, 3, 2, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (134, 4, 2, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (135, 5, 2, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (136, 6, 2, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (137, 7, 2, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (138, 8, 2, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (139, 9, 2, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (140, 10, 2, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (141, 1, 3, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (142, 2, 3, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (143, 3, 3, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (144, 4, 3, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (145, 5, 3, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (146, 6, 3, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (147, 7, 3, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (148, 8, 3, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (149, 9, 3, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (150, 10, 3, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (151, 1, 4, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (152, 2, 4, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (153, 3, 4, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (154, 4, 4, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (155, 5, 4, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (156, 6, 4, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (157, 7, 4, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (158, 8, 4, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (159, 9, 4, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (160, 10, 4, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (161, 1, 5, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (162, 2, 5, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (163, 3, 5, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (164, 4, 5, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (165, 5, 5, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (166, 6, 5, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (167, 7, 5, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (168, 8, 5, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (169, 9, 5, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (170, 10, 5, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (171, 1, 6, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (172, 2, 6, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (173, 3, 6, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (174, 4, 6, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (175, 5, 6, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (176, 6, 6, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (177, 7, 6, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (178, 8, 6, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (179, 9, 6, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (180, 10, 6, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (181, 1, 7, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (182, 2, 7, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (183, 3, 7, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (184, 4, 7, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (185, 5, 7, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (186, 6, 7, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (187, 7, 7, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (188, 8, 7, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (189, 9, 7, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (190, 10, 7, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (191, 1, 8, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (192, 2, 8, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (193, 3, 8, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (194, 4, 8, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (195, 5, 8, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (196, 6, 8, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (197, 7, 8, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (198, 8, 8, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (199, 9, 8, NULL, 9)
GO
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (200, 10, 8, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (201, 1, 9, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (202, 2, 9, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (203, 3, 9, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (204, 4, 9, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (205, 5, 9, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (206, 6, 9, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (207, 7, 9, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (208, 8, 9, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (209, 9, 9, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (210, 10, 9, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (211, 1, 10, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (212, 2, 10, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (213, 3, 10, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (214, 4, 10, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (215, 5, 10, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (216, 6, 10, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (217, 7, 10, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (218, 8, 10, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (219, 9, 10, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (220, 10, 10, NULL, 9)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (221, 1, 1, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (222, 2, 1, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (223, 3, 1, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (224, 4, 1, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (225, 5, 1, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (226, 6, 1, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (227, 7, 1, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (228, 8, 1, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (229, 9, 1, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (230, 10, 1, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (231, 1, 2, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (232, 2, 2, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (233, 3, 2, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (234, 4, 2, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (235, 5, 2, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (236, 6, 2, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (237, 7, 2, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (238, 8, 2, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (239, 9, 2, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (240, 10, 2, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (241, 1, 3, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (242, 2, 3, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (243, 3, 3, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (244, 4, 3, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (245, 5, 3, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (246, 6, 3, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (247, 7, 3, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (248, 8, 3, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (249, 9, 3, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (250, 10, 3, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (251, 1, 4, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (252, 2, 4, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (253, 3, 4, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (254, 4, 4, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (255, 5, 4, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (256, 6, 4, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (257, 7, 4, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (258, 8, 4, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (259, 9, 4, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (260, 10, 4, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (261, 1, 5, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (262, 2, 5, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (263, 3, 5, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (264, 4, 5, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (265, 5, 5, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (266, 6, 5, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (267, 7, 5, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (268, 8, 5, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (269, 9, 5, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (270, 10, 5, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (271, 1, 6, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (272, 2, 6, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (273, 3, 6, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (274, 4, 6, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (275, 5, 6, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (276, 6, 6, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (277, 7, 6, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (278, 8, 6, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (279, 9, 6, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (280, 10, 6, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (281, 1, 7, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (282, 2, 7, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (283, 3, 7, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (284, 4, 7, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (285, 5, 7, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (286, 6, 7, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (287, 7, 7, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (288, 8, 7, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (289, 9, 7, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (290, 10, 7, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (291, 1, 8, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (292, 2, 8, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (293, 3, 8, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (294, 4, 8, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (295, 5, 8, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (296, 6, 8, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (297, 7, 8, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (298, 8, 8, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (299, 9, 8, NULL, 10)
GO
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (300, 10, 8, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (301, 1, 9, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (302, 2, 9, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (303, 3, 9, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (304, 4, 9, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (305, 5, 9, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (306, 6, 9, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (307, 7, 9, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (308, 8, 9, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (309, 9, 9, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (310, 10, 9, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (311, 1, 10, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (312, 2, 10, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (313, 3, 10, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (314, 4, 10, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (315, 5, 10, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (316, 6, 10, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (317, 7, 10, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (318, 8, 10, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (319, 9, 10, NULL, 10)
INSERT [dbo].[Armchair] ([armchair_id], [columns], [rows], [user_id], [establish_id]) VALUES (320, 10, 10, NULL, 10)
SET IDENTITY_INSERT [dbo].[Armchair] OFF
GO
SET IDENTITY_INSERT [dbo].[Chat] ON 

INSERT [dbo].[Chat] ([chat_id], [send_date], [user1_id], [user2_id]) VALUES (1, N'2025-05-01', 1, 2)
INSERT [dbo].[Chat] ([chat_id], [send_date], [user1_id], [user2_id]) VALUES (2, N'2025-05-01', 2, 3)
INSERT [dbo].[Chat] ([chat_id], [send_date], [user1_id], [user2_id]) VALUES (13, NULL, 1, 22)
SET IDENTITY_INSERT [dbo].[Chat] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([city_id], [name]) VALUES (1, N'Paris')
INSERT [dbo].[City] ([city_id], [name]) VALUES (2, N'London')
INSERT [dbo].[City] ([city_id], [name]) VALUES (3, N'Rome')
INSERT [dbo].[City] ([city_id], [name]) VALUES (4, N'Tokyo')
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Establishment] ON 

INSERT [dbo].[Establishment] ([establish_id], [name], [direction], [capacity], [city_id]) VALUES (1, N'Cinema A', N'123 Main St', 100, 1)
INSERT [dbo].[Establishment] ([establish_id], [name], [direction], [capacity], [city_id]) VALUES (2, N'Theater B', N'456 Oak Rd', 200, 2)
INSERT [dbo].[Establishment] ([establish_id], [name], [direction], [capacity], [city_id]) VALUES (3, N'Stadium C', N'789 Elm St', 500, 3)
INSERT [dbo].[Establishment] ([establish_id], [name], [direction], [capacity], [city_id]) VALUES (4, N'FSEFWHall D', N'101 Pine Ave', 150, 4)
INSERT [dbo].[Establishment] ([establish_id], [name], [direction], [capacity], [city_id]) VALUES (8, N'qwasas', N'asas', 112, 2)
INSERT [dbo].[Establishment] ([establish_id], [name], [direction], [capacity], [city_id]) VALUES (9, N'PRUEBA', N'asas', 100, 3)
INSERT [dbo].[Establishment] ([establish_id], [name], [direction], [capacity], [city_id]) VALUES (10, N'prueba2', N'asas', 100, 2)
SET IDENTITY_INSERT [dbo].[Establishment] OFF
GO
SET IDENTITY_INSERT [dbo].[Event] ON 

INSERT [dbo].[Event] ([event_id], [name], [price], [reserved_places], [photo], [start_date], [end_date], [seating], [descripcion], [establish_id]) VALUES (6, N'Concert A', 50, 10, N'/Images/EventPhotos/6', N'2025-05-10', N'2025-05-11', 1, N'Great music', 1)
INSERT [dbo].[Event] ([event_id], [name], [price], [reserved_places], [photo], [start_date], [end_date], [seating], [descripcion], [establish_id]) VALUES (7, N'Play B', 30, 20, N'/Images/EventPhotos/7.jpg', N'2025-06-01', N'2025-06-02', 1, N'Dramatic play', 2)
INSERT [dbo].[Event] ([event_id], [name], [price], [reserved_places], [photo], [start_date], [end_date], [seating], [descripcion], [establish_id]) VALUES (8, N'Match C', 100, 50, NULL, N'2025-07-15', N'2025-07-15', 0, N'Football match', 3)
INSERT [dbo].[Event] ([event_id], [name], [price], [reserved_places], [photo], [start_date], [end_date], [seating], [descripcion], [establish_id]) VALUES (9, N'Talk D', 0, 30, NULL, N'2025-08-20', N'2025-08-20', 1, N'Tech talk', 4)
INSERT [dbo].[Event] ([event_id], [name], [price], [reserved_places], [photo], [start_date], [end_date], [seating], [descripcion], [establish_id]) VALUES (11, N'Evento firme', 12000, 1, NULL, N'5/19/2025 13:00:00 AM', N'5/22/2025 12:00:00 AM', 1, N'¡Bienvenidos a aSSDAS Theater B! Prepárate para sumergirte en una experiencia teatral única en el corazón de Londres. El 19 de mayo de 2025 a las 12:00 AM, te esperamos con un espectáculo imperdible lleno de emoción y talento. ¡Déjate llevar por la magia del teatro por tan solo 120 unidades monetarias! ¡No te pierdas esta', 2)
INSERT [dbo].[Event] ([event_id], [name], [price], [reserved_places], [photo], [start_date], [end_date], [seating], [descripcion], [establish_id]) VALUES (12, N'asas', 10, 0, NULL, N'5/20/2025 12:00:00 AM', N'5/21/2025 12:00:00 AM', 1, N'¡Bienvenidos a "asas" en Stadium C, el lugar donde tus sueños se hacen realidad! No te pierdas la oportunidad de vivir una experiencia única el próximo 5 de mayo de 2025 en Romey. Un evento imperdible, lleno de emoción y diversión, por tan solo 10. ¡Prepárate para disfrutar de un ambiente increíble y momentos inolvidables!', 3)
INSERT [dbo].[Event] ([event_id], [name], [price], [reserved_places], [photo], [start_date], [end_date], [seating], [descripcion], [establish_id]) VALUES (13, N'evento Android', 10, 0, NULL, N'5/22/2025 12:00:00 AM', N'5/24/2025 12:00:00 AM', 1, N'¡Descubre el evento Android en PRUEBA el 22 de mayo de 2025 en Romey! Sumérgete en el apasionante mundo de la tecnología y conoce las últimas novedades en dispositivos y aplicaciones. ¡No te pierdas esta oportunidad única por tan solo 10!', 9)
INSERT [dbo].[Event] ([event_id], [name], [price], [reserved_places], [photo], [start_date], [end_date], [seating], [descripcion], [establish_id]) VALUES (14, N'prueba Android real', 10, 0, NULL, N'5/22/2025 12:00:00 AM', N'6/1/2025 12:00:00 AM', 1, N'¡Descubre la revolucionaria y emocionante experiencia de prueba2 en Londres! Sumérgete en el mundo de la tecnología de vanguardia con "prueba Android real", un evento único que te llevará a explorar las infinitas posibilidades de Android. Únete a nosotros el 22 de mayo de 2025 a las 12:00 AM y prepárate para desafiar tus límites en un ambiente innovador y estim', 10)
SET IDENTITY_INSERT [dbo].[Event] OFF
GO
SET IDENTITY_INSERT [dbo].[Message] ON 

INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (10, 3, N'041AgbJe/sVOqUJgmGm1Bw==', N'19/05/2025 16:03:40', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (11, 3, N'qMrGalJK90CvqGZq/h79wg==', N'19/05/2025 16:08:32', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (12, 3, N'qMrGalJK90CvqGZq/h79wg==', N'19/05/2025 16:09:52', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (13, 3, N'6E2rfCZOLxID+m+vWkuaeA==', N'19/05/2025 16:38:51', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (14, 3, N'uATi4iFiNmlC5ztip4TiBg==', N'19/05/2025 16:40:54', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (15, 3, N'uATi4iFiNmlC5ztip4TiBg==', N'19/05/2025 17:06:49', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (16, 2, N'uATi4iFiNmlC5ztip4TiBg==', N'19/05/2025 17:06:54', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (17, 3, N'uATi4iFiNmlC5ztip4TiBg==', N'19/05/2025 17:07:09', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (18, 3, N'HVHgRU7Ii4Y2BGgOybN1tg==', N'19/05/2025 17:07:15', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (19, 2, N'uATi4iFiNmlC5ztip4TiBg==', N'19/05/2025 17:07:16', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (20, 3, N'g1Bhxe/rXp6p/PRrRD+4ag==', N'19/05/2025 17:07:21', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (21, 2, N'uATi4iFiNmlC5ztip4TiBg==', N'19/05/2025 17:08:19', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (22, 3, N'uATi4iFiNmlC5ztip4TiBg==', N'19/05/2025 17:08:23', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (23, 3, N'DQYjcVuyBEGrMw2QFVxGLQ==', N'19/05/2025 17:08:29', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (24, 2, N'5kgnuYxFRzOB1+cdciwLig==', N'19/05/2025 17:08:33', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (25, 3, N'mFmkpgaujm4vm+jIYLeXbA==', N'19/05/2025 17:08:34', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (26, 3, N'DGIDixe6PwsTRuBmzQzFtA==', N'19/05/2025 17:08:36', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (27, 3, N'DQYjcVuyBEGrMw2QFVxGLQ==', N'19/05/2025 17:08:43', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (28, 3, N'xQRnZD4vGJPOGpek0gIt8g==', N'19/05/2025 17:08:52', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (29, 3, N'4ugpD64/0fBDJfFm3qt1mw==', N'19/05/2025 17:08:55', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (30, 3, N'Yq1hsNn1QuGhLWE6DKiDgg==', N'19/05/2025 17:08:55', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (31, 2, N'306ubkv9fMrypftkDAGNwzZ256rsqR4qv+pn9XiildE=', N'19/05/2025 17:09:04', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (32, 3, N'85JXvUBkCkTCiEkI8LVxnA==', N'19/05/2025 17:09:13', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (33, 3, N'YUvp7u8QT5NCA8OGRBUwAQ==', N'19/05/2025 17:09:18', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (34, 3, N'XJfcQCKq6xlMPQuzxCcfPg==', N'19/05/2025 17:09:41', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (35, 3, N'iJfyMGIq/ORDqLnZUtdqWA==', N'19/05/2025 17:09:42', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (36, 3, N'Nkox4lP1oWqeLJskpKI9ZA==', N'19/05/2025 17:09:42', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (37, 3, N'y8fhdqG6OU0LrrxeJgWoRw==', N'19/05/2025 17:09:43', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (38, 3, N'5SCyi3LOvuaPeD2r8T2ssQ==', N'19/05/2025 17:09:43', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (39, 3, N'5SCyi3LOvuaPeD2r8T2ssQ==', N'19/05/2025 17:09:44', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (40, 3, N'5SCyi3LOvuaPeD2r8T2ssQ==', N'19/05/2025 17:09:44', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (41, 3, N'5SCyi3LOvuaPeD2r8T2ssQ==', N'19/05/2025 17:09:44', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (42, 3, N'5SCyi3LOvuaPeD2r8T2ssQ==', N'19/05/2025 17:09:45', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (43, 3, N'5SCyi3LOvuaPeD2r8T2ssQ==', N'19/05/2025 17:09:45', 0, 2)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (44, 22, N'phg1OiW/T7SRLl3cI4+Hew==', N'21/05/2025 19:50:31', 0, 13)
INSERT [dbo].[Message] ([message_id], [sender_id], [content], [send_at], [is_read], [chat_id]) VALUES (45, 22, N'ds/EY9XSST2JEO6gjcZfwQ==', N'21/05/2025 19:50:44', 0, 13)
SET IDENTITY_INSERT [dbo].[Message] OFF
GO
INSERT [dbo].[Reserve_Ticket] ([armchair_id], [user_id], [reservation_date], [event_id]) VALUES (1, 5, NULL, 6)
INSERT [dbo].[Reserve_Ticket] ([armchair_id], [user_id], [reservation_date], [event_id]) VALUES (2, 5, NULL, 7)
INSERT [dbo].[Reserve_Ticket] ([armchair_id], [user_id], [reservation_date], [event_id]) VALUES (3, 5, NULL, 8)
INSERT [dbo].[Reserve_Ticket] ([armchair_id], [user_id], [reservation_date], [event_id]) VALUES (4, 5, NULL, 9)
INSERT [dbo].[Reserve_Ticket] ([armchair_id], [user_id], [reservation_date], [event_id]) VALUES (105, 5, NULL, 8)
INSERT [dbo].[Reserve_Ticket] ([armchair_id], [user_id], [reservation_date], [event_id]) VALUES (106, 5, NULL, 8)
INSERT [dbo].[Reserve_Ticket] ([armchair_id], [user_id], [reservation_date], [event_id]) VALUES (107, 5, NULL, 8)
INSERT [dbo].[Reserve_Ticket] ([armchair_id], [user_id], [reservation_date], [event_id]) VALUES (108, 5, NULL, 8)
INSERT [dbo].[Reserve_Ticket] ([armchair_id], [user_id], [reservation_date], [event_id]) VALUES (109, 5, NULL, 8)
INSERT [dbo].[Reserve_Ticket] ([armchair_id], [user_id], [reservation_date], [event_id]) VALUES (110, 5, NULL, 8)
INSERT [dbo].[Reserve_Ticket] ([armchair_id], [user_id], [reservation_date], [event_id]) VALUES (111, 5, NULL, 8)
INSERT [dbo].[Reserve_Ticket] ([armchair_id], [user_id], [reservation_date], [event_id]) VALUES (112, 5, NULL, 8)
INSERT [dbo].[Reserve_Ticket] ([armchair_id], [user_id], [reservation_date], [event_id]) VALUES (113, 5, NULL, 8)
INSERT [dbo].[Reserve_Ticket] ([armchair_id], [user_id], [reservation_date], [event_id]) VALUES (114, 5, NULL, 8)
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([role_id], [name]) VALUES (5, N'manager')
INSERT [dbo].[Role] ([role_id], [name]) VALUES (6, N'superAdmin')
INSERT [dbo].[Role] ([role_id], [name]) VALUES (7, N'normal')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([user_id], [name], [second_name], [phone], [password], [photo], [email], [role_id]) VALUES (1, N'John', N'Doe', 123456789, N'pass123', NULL, N'john@example.com', 5)
INSERT [dbo].[Users] ([user_id], [name], [second_name], [phone], [password], [photo], [email], [role_id]) VALUES (2, N'Ann0', N'Smith', 234567890, N'qwerty', N'/Images/ProfilePictures/2.jpg', N'anna@example.com', 5)
INSERT [dbo].[Users] ([user_id], [name], [second_name], [phone], [password], [photo], [email], [role_id]) VALUES (3, N'Mike', N'Lee', 345678901, N'abc123', NULL, N'mike@example.com', 5)
INSERT [dbo].[Users] ([user_id], [name], [second_name], [phone], [password], [photo], [email], [role_id]) VALUES (4, N'Sara', N'Kim', 456789012, N'xyz456', NULL, N'sara@example.com', 5)
INSERT [dbo].[Users] ([user_id], [name], [second_name], [phone], [password], [photo], [email], [role_id]) VALUES (5, N'ax', N'a', 123456789, N'ax', N'', N'ax', 5)
INSERT [dbo].[Users] ([user_id], [name], [second_name], [phone], [password], [photo], [email], [role_id]) VALUES (6, N'BRUYNO', N'CONVALHSDFW', 230, N'A', NULL, N'SDFASDF', 5)
INSERT [dbo].[Users] ([user_id], [name], [second_name], [phone], [password], [photo], [email], [role_id]) VALUES (7, N'Bruno', N'Convalia', 120, N'c', N'/Images/ProfilePictures/7.jpg', N'c', 6)
INSERT [dbo].[Users] ([user_id], [name], [second_name], [phone], [password], [photo], [email], [role_id]) VALUES (8, N'bruno', N'bruno', 122340, N'bruno', NULL, N'bruno', 5)
INSERT [dbo].[Users] ([user_id], [name], [second_name], [phone], [password], [photo], [email], [role_id]) VALUES (9, N'asda', N'Aisa', 12230, N'aimad', NULL, N'aimad', 5)
INSERT [dbo].[Users] ([user_id], [name], [second_name], [phone], [password], [photo], [email], [role_id]) VALUES (12, N'Nuevo Usuario', N'asdasd', 5230, N'buenosdias', NULL, N'asasa', 6)
INSERT [dbo].[Users] ([user_id], [name], [second_name], [phone], [password], [photo], [email], [role_id]) VALUES (13, N'Brunico', N'', 66543213, N'2505', N'', N'bruno@gmail.com', 7)
INSERT [dbo].[Users] ([user_id], [name], [second_name], [phone], [password], [photo], [email], [role_id]) VALUES (15, N'Bruno', N'', 43, N'2505', N'', N'gafafa', 7)
INSERT [dbo].[Users] ([user_id], [name], [second_name], [phone], [password], [photo], [email], [role_id]) VALUES (16, N'seg', N'', 35, N'2', N'', N'sges', 7)
INSERT [dbo].[Users] ([user_id], [name], [second_name], [phone], [password], [photo], [email], [role_id]) VALUES (17, N'seg', N'', 35, N'2', N'', N'2', 7)
INSERT [dbo].[Users] ([user_id], [name], [second_name], [phone], [password], [photo], [email], [role_id]) VALUES (19, N'seasdg', N'', 35, N'2', N'', N'asd', 7)
INSERT [dbo].[Users] ([user_id], [name], [second_name], [phone], [password], [photo], [email], [role_id]) VALUES (20, N'seasdg', N'', 35, N'2', N'', N'assdafsdfd', 7)
INSERT [dbo].[Users] ([user_id], [name], [second_name], [phone], [password], [photo], [email], [role_id]) VALUES (21, N'bete', N'bbdb', 353535, N'2', N'', N'dbxdbbxd', 7)
INSERT [dbo].[Users] ([user_id], [name], [second_name], [phone], [password], [photo], [email], [role_id]) VALUES (22, N'awfa', N'wfaf', 535, N'2', N'', N'awfafw', 7)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__AB6E6164A4C6C193]    Script Date: 22/05/2025 17:49:00 ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Armchair]  WITH CHECK ADD FOREIGN KEY([establish_id])
REFERENCES [dbo].[Establishment] ([establish_id])
GO
ALTER TABLE [dbo].[Armchair]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Chat]  WITH CHECK ADD FOREIGN KEY([user1_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Chat]  WITH CHECK ADD FOREIGN KEY([user2_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Establishment]  WITH CHECK ADD FOREIGN KEY([city_id])
REFERENCES [dbo].[City] ([city_id])
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD FOREIGN KEY([establish_id])
REFERENCES [dbo].[Establishment] ([establish_id])
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD  CONSTRAINT [fk_messages_chat] FOREIGN KEY([chat_id])
REFERENCES [dbo].[Chat] ([chat_id])
GO
ALTER TABLE [dbo].[Message] CHECK CONSTRAINT [fk_messages_chat]
GO
ALTER TABLE [dbo].[Reserve_Ticket]  WITH CHECK ADD FOREIGN KEY([armchair_id])
REFERENCES [dbo].[Armchair] ([armchair_id])
GO
ALTER TABLE [dbo].[Reserve_Ticket]  WITH CHECK ADD FOREIGN KEY([event_id])
REFERENCES [dbo].[Event] ([event_id])
GO
ALTER TABLE [dbo].[Reserve_Ticket]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
USE [master]
GO
ALTER DATABASE [MingsEvents] SET  READ_WRITE 
GO
