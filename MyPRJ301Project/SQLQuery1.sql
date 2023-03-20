USE [master]
GO

CREATE DATABASE [PRJ301_SPRING2023_Assignment_Demo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PRJ301_SPRING2023_Assignment_Demo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PRJ301_SPRING2023_Assignment_Demo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PRJ301_SPRING2023_Assignment_Demo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\PRJ301_SPRING2023_Assignment_Demo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PRJ301_SPRING2023_Assignment_Demo] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PRJ301_SPRING2023_Assignment_Demo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PRJ301_SPRING2023_Assignment_Demo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PRJ301_SPRING2023_Assignment_Demo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PRJ301_SPRING2023_Assignment_Demo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PRJ301_SPRING2023_Assignment_Demo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PRJ301_SPRING2023_Assignment_Demo] SET ARITHABORT OFF 
GO
ALTER DATABASE [PRJ301_SPRING2023_Assignment_Demo] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PRJ301_SPRING2023_Assignment_Demo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PRJ301_SPRING2023_Assignment_Demo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PRJ301_SPRING2023_Assignment_Demo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PRJ301_SPRING2023_Assignment_Demo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PRJ301_SPRING2023_Assignment_Demo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PRJ301_SPRING2023_Assignment_Demo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PRJ301_SPRING2023_Assignment_Demo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PRJ301_SPRING2023_Assignment_Demo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PRJ301_SPRING2023_Assignment_Demo] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PRJ301_SPRING2023_Assignment_Demo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PRJ301_SPRING2023_Assignment_Demo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PRJ301_SPRING2023_Assignment_Demo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PRJ301_SPRING2023_Assignment_Demo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PRJ301_SPRING2023_Assignment_Demo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PRJ301_SPRING2023_Assignment_Demo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PRJ301_SPRING2023_Assignment_Demo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PRJ301_SPRING2023_Assignment_Demo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PRJ301_SPRING2023_Assignment_Demo] SET  MULTI_USER 
GO
ALTER DATABASE [PRJ301_SPRING2023_Assignment_Demo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PRJ301_SPRING2023_Assignment_Demo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PRJ301_SPRING2023_Assignment_Demo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PRJ301_SPRING2023_Assignment_Demo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PRJ301_SPRING2023_Assignment_Demo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PRJ301_SPRING2023_Assignment_Demo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PRJ301_SPRING2023_Assignment_Demo] SET QUERY_STORE = OFF
GO
USE [PRJ301_SPRING2023_Assignment_Demo]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [varchar](150) NOT NULL,
	[password] [varchar](150) NOT NULL,
	[displayname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[sesid] [int] NOT NULL,
	[stdid] [int] NOT NULL,
	[present] [bit] NOT NULL,
	[description] [varchar](150) NOT NULL,
	[record_time] [datetime] NULL,
	[taker] [varchar](150) NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[sesid] ASC,
	[stdid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Building](
	[bid] [nvarchar](150) NOT NULL,
	[bname] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Building] PRIMARY KEY CLUSTERED 
(
	[bid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature](
	[fid] [int] NOT NULL,
	[fname] [varchar](150) NOT NULL,
	[url] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[gid] [int] NOT NULL,
	[gname] [varchar](150) NOT NULL,
	[subid] [int] NOT NULL,
	[lid] [int] NOT NULL,
	[sem] [varchar](150) NOT NULL,
	[year] [int] NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturer_Account](
	[lid] [int] NOT NULL,
	[username] [varchar](150) NULL,
 CONSTRAINT [PK_Lecturer_Account] PRIMARY KEY CLUSTERED 
(
	[lid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturer](
	[lid] [int] NOT NULL,
	[lname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Lecturer] PRIMARY KEY CLUSTERED 
(
	[lid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[rid] [int] NOT NULL,
	[rname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Account](
	[rid] [int] NOT NULL,
	[username] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Role_Account] PRIMARY KEY CLUSTERED 
(
	[rid] ASC,
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Feature](
	[rid] [int] NOT NULL,
	[fid] [int] NOT NULL,
 CONSTRAINT [PK_Role_Feature] PRIMARY KEY CLUSTERED 
(
	[rid] ASC,
	[fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[rid] [int] NOT NULL,
	[rname] [varchar](150) NOT NULL,
	[floor] [int] NULL,
	[bid] [nvarchar](150) NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[sesid] [int] NOT NULL,
	[gid] [int] NOT NULL,
	[rid] [int] NOT NULL,
	[date] [date] NOT NULL,
	[tid] [int] NOT NULL,
	[index] [int] NOT NULL,
	[lid] [int] NOT NULL,
	[attended] [bit] NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[sesid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[stdid] [int] NOT NULL,
	[stdname] [varchar](150) NOT NULL,
	[imgURL] [varchar](150) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[stdid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Account](
	[stdid] [int] NOT NULL,
	[username] [varchar](150) NULL,
 CONSTRAINT [PK_Student_Account] PRIMARY KEY CLUSTERED 
(
	[stdid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Group](
	[stdid] [int] NOT NULL,
	[gid] [int] NOT NULL,
 CONSTRAINT [PK_Student_Group] PRIMARY KEY CLUSTERED 
(
	[stdid] ASC,
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[subid] [int] NOT NULL,
	[subname] [varchar](150) NOT NULL,
	[numberOfSession] [int] NULL,
	[name] [varchar](150) NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[subid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSlot](
	[tid] [int] NOT NULL,
	[description] [varchar](150) NOT NULL,
 CONSTRAINT [PK_TimeSlot] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'admin', N'123', N'Administrator')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'tranglk    ', N'123       ', N'Lai Khanh Trang')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'maintn', N'123', N'Nguyen Thi Ngoc Mai')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'sonnt5    ', N'123       ', N'Ngo Tung Son')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'std01', N'abc', N'Student 1')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'std02', N'9qcRcBfcJS', N'Student 2')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'std03', N'qEB4azqnPe', N'Student 3')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'std04', N'7xNcIcVzkP', N'Student 4')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'std05', N'12345678', N'Student 5')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'std06', N'bb4IsdLUAT', N'Student 6')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'std07', N'hYxq7zdXfw', N'Student 7')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'std08', N't5gYZgPW4W', N'Student 8')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'std09', N'3mPMg9wyPM', N'Student 9')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'std10', N'Rcfw9RpXxY', N'Student 10')
GO
/*INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (1, 1, 1, N'no probelm', CAST(N'2022-11-07T22:37:29.217' AS DateTime), N'admin')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (1, 2, 0, N' ', CAST(N'2022-11-07T22:37:29.217' AS DateTime), N'admin')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (1, 3, 1, N' ', CAST(N'2022-11-07T22:37:29.230' AS DateTime), N'admin')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (1, 4, 1, N'Test', CAST(N'2022-11-07T22:37:29.230' AS DateTime), N'admin')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (2, 1, 0, N'bad', CAST(N'2022-11-07T00:10:06.230' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (2, 2, 1, N'good', CAST(N'2022-11-07T00:10:06.230' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (2, 3, 1, N'', CAST(N'2022-11-07T00:10:06.230' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (2, 4, 1, N'nothing', CAST(N'2022-11-07T00:10:06.230' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (3, 1, 1, N'abc', CAST(N'2022-11-07T10:52:21.803' AS DateTime), N'sonnt5    ')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (3, 2, 1, N'', CAST(N'2022-11-07T10:52:21.807' AS DateTime), N'sonnt5    ')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (3, 3, 1, N'', CAST(N'2022-11-07T10:52:21.807' AS DateTime), N'sonnt5    ')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (3, 4, 1, N'', CAST(N'2022-11-07T10:52:21.807' AS DateTime), N'sonnt5    ')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (6, 5, 1, N'8', CAST(N'2022-11-05T00:18:46.483' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (6, 6, 1, N'9', CAST(N'2022-11-05T00:18:46.483' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (6, 7, 1, N'9', CAST(N'2022-11-05T00:18:46.483' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (6, 8, 1, N'9', CAST(N'2022-11-05T00:18:46.487' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (7, 5, 1, N'', CAST(N'2022-11-05T00:22:05.400' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (7, 6, 1, N'', CAST(N'2022-11-05T00:22:05.400' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (7, 7, 1, N'', CAST(N'2022-11-05T00:22:05.400' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (7, 8, 1, N'', CAST(N'2022-11-05T00:22:05.403' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (8, 5, 1, N'', CAST(N'2022-11-05T00:23:03.800' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (8, 6, 1, N'', CAST(N'2022-11-05T00:23:03.800' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (8, 7, 1, N'', CAST(N'2022-11-05T00:23:03.800' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (8, 8, 1, N'', CAST(N'2022-11-05T00:23:03.803' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (11, 5, 1, N'abc', CAST(N'2022-11-07T10:14:20.563' AS DateTime), N'ngocnt84')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (11, 6, 1, N'', CAST(N'2022-11-07T10:14:20.563' AS DateTime), N'ngocnt84')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (11, 7, 0, N'', CAST(N'2022-11-07T10:14:20.563' AS DateTime), N'ngocnt84')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (11, 8, 0, N'', CAST(N'2022-11-07T10:14:20.563' AS DateTime), N'ngocnt84')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (12, 5, 1, N'', CAST(N'2022-11-05T11:08:11.407' AS DateTime), N'ngocnt84')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (12, 6, 1, N'', CAST(N'2022-11-05T11:08:11.407' AS DateTime), N'ngocnt84')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (12, 7, 1, N'', CAST(N'2022-11-05T11:08:11.407' AS DateTime), N'ngocnt84')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (12, 8, 1, N'', CAST(N'2022-11-05T11:08:11.407' AS DateTime), N'ngocnt84')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (13, 5, 1, N'', CAST(N'2022-11-05T11:08:40.660' AS DateTime), N'ngocnt84')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (13, 6, 1, N'', CAST(N'2022-11-05T11:08:40.660' AS DateTime), N'ngocnt84')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (13, 7, 1, N'', CAST(N'2022-11-05T11:08:40.660' AS DateTime), N'ngocnt84')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (13, 8, 1, N'', CAST(N'2022-11-05T11:08:40.660' AS DateTime), N'ngocnt84')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (14, 5, 1, N'', CAST(N'2022-11-07T09:11:29.553' AS DateTime), N'ngocnt84')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (14, 6, 1, N'', CAST(N'2022-11-07T09:11:29.553' AS DateTime), N'ngocnt84')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (14, 7, 1, N'', CAST(N'2022-11-07T09:11:29.553' AS DateTime), N'ngocnt84')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (14, 8, 1, N'', CAST(N'2022-11-07T09:11:29.553' AS DateTime), N'ngocnt84')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (16, 1, 1, N'', CAST(N'2022-11-05T11:03:09.143' AS DateTime), N'ngocnt84')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (16, 2, 1, N'', CAST(N'2022-11-05T11:03:09.143' AS DateTime), N'ngocnt84')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (16, 3, 1, N'', CAST(N'2022-11-05T11:03:09.147' AS DateTime), N'ngocnt84')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (16, 4, 1, N'', CAST(N'2022-11-05T11:03:09.147' AS DateTime), N'ngocnt84')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (17, 1, 0, N'', CAST(N'2022-11-05T11:04:37.150' AS DateTime), N'ngocnt84')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (17, 2, 1, N'', CAST(N'2022-11-05T11:04:37.150' AS DateTime), N'ngocnt84')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (17, 3, 0, N'', CAST(N'2022-11-05T11:04:37.153' AS DateTime), N'ngocnt84')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (17, 4, 1, N'', CAST(N'2022-11-05T11:04:37.153' AS DateTime), N'ngocnt84')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (18, 1, 0, N'', CAST(N'2022-11-05T11:06:00.720' AS DateTime), N'ngocnt84')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (18, 2, 1, N'', CAST(N'2022-11-05T11:06:00.720' AS DateTime), N'ngocnt84')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (18, 3, 1, N'', CAST(N'2022-11-05T11:06:00.720' AS DateTime), N'ngocnt84')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (18, 4, 1, N'', CAST(N'2022-11-05T11:06:00.723' AS DateTime), N'ngocnt84')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (19, 1, 1, N'', CAST(N'2022-11-07T09:11:20.440' AS DateTime), N'ngocnt84')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (19, 2, 1, N'', CAST(N'2022-11-07T09:11:20.440' AS DateTime), N'ngocnt84')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (19, 3, 1, N'', CAST(N'2022-11-07T09:11:20.440' AS DateTime), N'ngocnt84')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (19, 4, 1, N'', CAST(N'2022-11-07T09:11:20.440' AS DateTime), N'ngocnt84')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (21, 5, 0, N'', CAST(N'2022-11-03T11:14:48.500' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (21, 6, 1, N'', CAST(N'2022-11-03T11:14:48.500' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (21, 7, 1, N'', CAST(N'2022-11-03T11:14:48.500' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (21, 8, 0, N'', CAST(N'2022-11-03T11:14:48.500' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (22, 5, 1, N'', CAST(N'2022-11-03T11:20:50.973' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (22, 6, 1, N'', CAST(N'2022-11-03T11:20:50.973' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (22, 7, 1, N'', CAST(N'2022-11-03T11:20:50.977' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (22, 8, 1, N'', CAST(N'2022-11-03T11:20:50.977' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (23, 5, 0, N'', CAST(N'2022-11-07T09:10:21.703' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (23, 6, 1, N'', CAST(N'2022-11-07T09:10:21.703' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (23, 7, 1, N'', CAST(N'2022-11-07T09:10:21.703' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (23, 8, 1, N'', CAST(N'2022-11-07T09:10:21.703' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (26, 1, 1, N'', CAST(N'2022-11-04T12:00:16.450' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (26, 2, 1, N'', CAST(N'2022-11-04T12:00:16.453' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (26, 3, 1, N'', CAST(N'2022-11-04T12:00:16.453' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (26, 4, 1, N'', CAST(N'2022-11-04T12:00:16.453' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (27, 1, 1, N'', CAST(N'2022-11-03T11:13:51.953' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (27, 2, 1, N'', CAST(N'2022-11-03T11:13:51.953' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (27, 3, 1, N'', CAST(N'2022-11-03T11:13:51.953' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (27, 4, 1, N'', CAST(N'2022-11-03T11:13:51.953' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (28, 1, 1, N'', CAST(N'2022-11-03T11:20:21.783' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (28, 2, 1, N'', CAST(N'2022-11-03T11:20:21.783' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (28, 3, 1, N'', CAST(N'2022-11-03T11:20:21.783' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (28, 4, 1, N'', CAST(N'2022-11-03T11:20:21.783' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (29, 1, 1, N'', CAST(N'2022-11-03T11:20:42.587' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (29, 2, 1, N'', CAST(N'2022-11-03T11:20:42.587' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (29, 3, 1, N'', CAST(N'2022-11-03T11:20:42.587' AS DateTime), N'sonnt5')
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time], [taker]) VALUES (29, 4, 1, N'', CAST(N'2022-11-03T11:20:42.590' AS DateTime), N'sonnt5')
GO*/
INSERT [dbo].[Building] ([bid], [bname]) VALUES (N'AL', N'Alpha')
INSERT [dbo].[Building] ([bid], [bname]) VALUES (N'BE', N'Beta')
INSERT [dbo].[Building] ([bid], [bname]) VALUES (N'DE', N'Delta')
INSERT [dbo].[Building] ([bid], [bname]) VALUES (N'GA', N'Gamma')
GO
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (1, N'Show Lecture Timetable', N'/lecturer/timetable')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (2, N'Take Attendance', N'/lecturer/takeatt')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (3, N'Show Attendance Status', N'/lecturer/attstatus')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (4, N'Show Student Timetable', N'/student/timetable')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (5, N'Edit Attendance', N'/admin/editatts')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (6, N'Home', N'/lecturer/home')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (7, N'Show Activity Details', N'/student/activitydetails')
GO
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (1, N'01-PRJ301', 1, 1, N'SPRING', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (2, N'02-PRJ301', 1, 1, N'SPRING', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (3, N'02-JPD123', 4, 3, N'SPRING', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (4, N'01-JPD123', 4, 3, N'SPRING', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (5, N'02-MAS291', 2, 1, N'SPRING', 2022)
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (6, N'01-IOT102', 3, 1, N'SPRING', 2022)
GO
INSERT [dbo].[Lecture_Account] ([lid], [username]) VALUES (1, N'sonnt5    ')
INSERT [dbo].[Lecture_Account] ([lid], [username]) VALUES (2, N'annh88    ')
INSERT [dbo].[Lecture_Account] ([lid], [username]) VALUES (3, N'longdq')
GO
INSERT [dbo].[Lecturer] ([lid], [lname]) VALUES (1, N'Ngo Tung Son')
INSERT [dbo].[Lecturer] ([lid], [lname]) VALUES (2, N'Nguyen Hoang Anh')
INSERT [dbo].[Lecturer] ([lid], [lname]) VALUES (3, N'Dang Quang Long')
GO
INSERT [dbo].[Role] ([rid], [rname]) VALUES (1, N'Administrator')
INSERT [dbo].[Role] ([rid], [rname]) VALUES (2, N'Lecture')
INSERT [dbo].[Role] ([rid], [rname]) VALUES (3, N'Student')
GO
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (1, N'admin')
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (1, N'sonnt5')
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (2, N'annh88')
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (2, N'longdq')
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (2, N'sonnt5')
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (3, N'std01')
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (3, N'std02')
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (3, N'std03')
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (3, N'std04')
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (3, N'std05')
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (3, N'std06')
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (3, N'std07')
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (3, N'std08')
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (3, N'std09')
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (3, N'std10')
GO
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (1, 5)
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (2, 1)
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (2, 2)
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (2, 3)
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (2, 6)
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (3, 4)
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (3, 7)
GO
INSERT [dbo].[Room] ([rid], [rname], [floor], [bid]) VALUES (1, N'AL-101', 1, N'AL')
INSERT [dbo].[Room] ([rid], [rname], [floor], [bid]) VALUES (2, N'AL-102', 1, N'AL')
INSERT [dbo].[Room] ([rid], [rname], [floor], [bid]) VALUES (3, N'AL-103', 1, N'AL')
INSERT [dbo].[Room] ([rid], [rname], [floor], [bid]) VALUES (4, N'BE-101', 1, N'BE')
INSERT [dbo].[Room] ([rid], [rname], [floor], [bid]) VALUES (5, N'BE-102', 1, N'BE')
INSERT [dbo].[Room] ([rid], [rname], [floor], [bid]) VALUES (6, N'BE-103', 1, N'BE')
INSERT [dbo].[Room] ([rid], [rname], [floor], [bid]) VALUES (7, N'DE-101', 1, N'DE')
INSERT [dbo].[Room] ([rid], [rname], [floor], [bid]) VALUES (8, N'DE-102', 1, N'DE')
INSERT [dbo].[Room] ([rid], [rname], [floor], [bid]) VALUES (9, N'DE-103', 1, N'DE')
INSERT [dbo].[Room] ([rid], [rname], [floor], [bid]) VALUES (10, N'DE-201', 2, N'DE')
INSERT [dbo].[Room] ([rid], [rname], [floor], [bid]) VALUES (11, N'DE-202', 2, N'DE')
INSERT [dbo].[Room] ([rid], [rname], [floor], [bid]) VALUES (12, N'DE-203', 2, N'DE')
GO
/*INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (1, 1, 12, CAST(N'2022-11-02' AS Date), 1, 1, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (2, 1, 12, CAST(N'2022-11-04' AS Date), 1, 2, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (3, 1, 12, CAST(N'2022-11-07' AS Date), 1, 3, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (4, 1, 12, CAST(N'2022-11-09' AS Date), 1, 4, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (5, 1, 12, CAST(N'2022-11-11' AS Date), 1, 5, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (6, 2, 1, CAST(N'2022-10-31' AS Date), 3, 1, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (7, 2, 1, CAST(N'2022-11-02' AS Date), 3, 2, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (8, 2, 1, CAST(N'2022-11-04' AS Date), 3, 3, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (9, 2, 1, CAST(N'2022-11-07' AS Date), 3, 4, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (10, 2, 1, CAST(N'2022-11-09' AS Date), 3, 5, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (11, 3, 1, CAST(N'2022-10-31' AS Date), 4, 1, 3, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (12, 3, 1, CAST(N'2022-11-02' AS Date), 4, 2, 3, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (13, 3, 1, CAST(N'2022-11-04' AS Date), 4, 3, 3, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (14, 3, 1, CAST(N'2022-11-07' AS Date), 4, 4, 3, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (15, 3, 1, CAST(N'2022-11-09' AS Date), 4, 5, 3, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (16, 4, 1, CAST(N'2022-10-31' AS Date), 3, 1, 3, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (17, 4, 1, CAST(N'2022-11-02' AS Date), 3, 2, 3, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (18, 4, 1, CAST(N'2022-11-04' AS Date), 3, 3, 3, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (19, 4, 1, CAST(N'2022-11-07' AS Date), 3, 4, 3, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (20, 4, 1, CAST(N'2022-11-09' AS Date), 3, 5, 3, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (21, 5, 11, CAST(N'2022-11-02' AS Date), 2, 1, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (22, 5, 11, CAST(N'2022-11-04' AS Date), 2, 2, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (23, 5, 11, CAST(N'2022-11-07' AS Date), 2, 3, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (24, 5, 11, CAST(N'2022-11-09' AS Date), 2, 4, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (25, 5, 11, CAST(N'2022-11-11' AS Date), 2, 5, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (26, 6, 12, CAST(N'2022-11-01' AS Date), 1, 1, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (27, 6, 12, CAST(N'2022-11-01' AS Date), 2, 2, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (28, 6, 12, CAST(N'2022-11-03' AS Date), 1, 3, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (29, 6, 12, CAST(N'2022-11-03' AS Date), 2, 4, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (30, 6, 12, CAST(N'2022-11-08' AS Date), 1, 5, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (31, 4, 1, CAST(N'2022-11-11' AS Date), 3, 6, 3, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (32, 4, 1, CAST(N'2022-11-14' AS Date), 3, 7, 3, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (33, 4, 1, CAST(N'2022-11-16' AS Date), 3, 8, 3, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (34, 3, 1, CAST(N'2022-11-11' AS Date), 4, 6, 3, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (35, 3, 1, CAST(N'2022-11-14' AS Date), 4, 7, 3, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attanded]) VALUES (36, 3, 1, CAST(N'2022-11-16' AS Date), 4, 8, 3, 0)
GO*/
INSERT [dbo].[Student] ([stdid], [stdname], [imgURL]) VALUES (1, N'Student 1', N'image/avatar/000001.png')
INSERT [dbo].[Student] ([stdid], [stdname], [imgURL]) VALUES (2, N'Student 2', N'image/avatar/000002.png')
INSERT [dbo].[Student] ([stdid], [stdname], [imgURL]) VALUES (3, N'Student 3', N'image/avatar/000003.png')
INSERT [dbo].[Student] ([stdid], [stdname], [imgURL]) VALUES (4, N'Student 4', N'image/avatar/000004.png')
INSERT [dbo].[Student] ([stdid], [stdname], [imgURL]) VALUES (5, N'Student 5', N'image/avatar/000005.png')
INSERT [dbo].[Student] ([stdid], [stdname], [imgURL]) VALUES (6, N'Student 6', N'image/avatar/000006.png')
INSERT [dbo].[Student] ([stdid], [stdname], [imgURL]) VALUES (7, N'Student 7', N'image/avatar/000007.png')
INSERT [dbo].[Student] ([stdid], [stdname], [imgURL]) VALUES (8, N'Student 8', N'image/avatar/000008.png')
INSERT [dbo].[Student] ([stdid], [stdname], [imgURL]) VALUES (9, N'Student 9', N'image/avatar/000009.png')
INSERT [dbo].[Student] ([stdid], [stdname], [imgURL]) VALUES (10, N'Student 10', N'image/avatar/000010.png')
GO
INSERT [dbo].[Student_Account] ([stdid], [username]) VALUES (1, N'std01')
INSERT [dbo].[Student_Account] ([stdid], [username]) VALUES (2, N'std02')
INSERT [dbo].[Student_Account] ([stdid], [username]) VALUES (3, N'std03')
INSERT [dbo].[Student_Account] ([stdid], [username]) VALUES (4, N'std04')
INSERT [dbo].[Student_Account] ([stdid], [username]) VALUES (5, N'std05')
INSERT [dbo].[Student_Account] ([stdid], [username]) VALUES (6, N'std06')
INSERT [dbo].[Student_Account] ([stdid], [username]) VALUES (7, N'std07')
INSERT [dbo].[Student_Account] ([stdid], [username]) VALUES (8, N'std08')
INSERT [dbo].[Student_Account] ([stdid], [username]) VALUES (9, N'std09')
INSERT [dbo].[Student_Account] ([stdid], [username]) VALUES (10, N'std10')
GO
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (1, 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (1, 4)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (1, 6)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (2, 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (2, 4)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (2, 6)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (3, 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (3, 4)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (3, 6)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (4, 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (4, 4)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (4, 6)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (5, 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (5, 3)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (5, 5)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (6, 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (6, 3)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (6, 5)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (7, 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (7, 3)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (7, 5)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (8, 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (8, 3)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (8, 5)
GO
INSERT [dbo].[Subject] ([subid], [subname], [numberOfSession], [name]) VALUES (1, N'PRJ301', 5, N'Java Web Application Development')
INSERT [dbo].[Subject] ([subid], [subname], [numberOfSession], [name]) VALUES (2, N'MAS291', 5, N'	Statistics and Probability')
INSERT [dbo].[Subject] ([subid], [subname], [numberOfSession], [name]) VALUES (3, N'IOT102', 5, N'		Internet of Things')
INSERT [dbo].[Subject] ([subid], [subname], [numberOfSession], [name]) VALUES (4, N'JPD123', 8, N'	Elementary Japanese 1-A1.2')
GO
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (1, N'7:30 - 9:50')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (2, N'10:00 - 12:20')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (3, N'12:50 - 15:10')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (4, N'15:20 - 17:40')
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Session] FOREIGN KEY([sesid])
REFERENCES [dbo].[Session] ([sesid])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Session]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Student] FOREIGN KEY([stdid])
REFERENCES [dbo].[Student] ([stdid])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Student]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Lecturer] FOREIGN KEY([lid])
REFERENCES [dbo].[Lecturer] ([lid])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Lecturer]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Subject] FOREIGN KEY([subid])
REFERENCES [dbo].[Subject] ([subid])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Subject]
GO
ALTER TABLE [dbo].[Lecturer_Account]  WITH CHECK ADD  CONSTRAINT [FK_Lecturer_Account_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[Lecturer_Account] CHECK CONSTRAINT [FK_Lecturer_Account_Account]
GO
ALTER TABLE [dbo].[Lecturer_Account]  WITH CHECK ADD  CONSTRAINT [FK_Lecturer_Account_Lecturer] FOREIGN KEY([lid])
REFERENCES [dbo].[Lecturer] ([lid])
GO
ALTER TABLE [dbo].[Lecturer_Account] CHECK CONSTRAINT [FK_Lecturer_Account_Lecturer]
GO
ALTER TABLE [dbo].[Role_Account]  WITH CHECK ADD  CONSTRAINT [FK_Role_Account_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[Role_Account] CHECK CONSTRAINT [FK_Role_Account_Account]
GO
ALTER TABLE [dbo].[Role_Account]  WITH CHECK ADD  CONSTRAINT [FK_Role_Account_Role] FOREIGN KEY([rid])
REFERENCES [dbo].[Role] ([rid])
GO
ALTER TABLE [dbo].[Role_Account] CHECK CONSTRAINT [FK_Role_Account_Role]
GO
ALTER TABLE [dbo].[Role_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Role_Feature_Feature] FOREIGN KEY([fid])
REFERENCES [dbo].[Feature] ([fid])
GO
ALTER TABLE [dbo].[Role_Feature] CHECK CONSTRAINT [FK_Role_Feature_Feature]
GO
ALTER TABLE [dbo].[Role_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Role_Feature_Role] FOREIGN KEY([rid])
REFERENCES [dbo].[Role] ([rid])
GO
ALTER TABLE [dbo].[Role_Feature] CHECK CONSTRAINT [FK_Role_Feature_Role]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_Building] FOREIGN KEY([bid])
REFERENCES [dbo].[Building] ([bid])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_Building]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Group]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Lecturer] FOREIGN KEY([lid])
REFERENCES [dbo].[Lecturer] ([lid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Lecturer]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Room] FOREIGN KEY([rid])
REFERENCES [dbo].[Room] ([rid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Room]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_TimeSlot] FOREIGN KEY([tid])
REFERENCES [dbo].[TimeSlot] ([tid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_TimeSlot]
GO
ALTER TABLE [dbo].[Student_Account]  WITH CHECK ADD  CONSTRAINT [FK_Student_Account_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[Student_Account] CHECK CONSTRAINT [FK_Student_Account_Account]
GO
ALTER TABLE [dbo].[Student_Account]  WITH CHECK ADD  CONSTRAINT [FK_Student_Account_Student] FOREIGN KEY([stdid])
REFERENCES [dbo].[Student] ([stdid])
GO
ALTER TABLE [dbo].[Student_Account] CHECK CONSTRAINT [FK_Student_Account_Student]
GO
ALTER TABLE [dbo].[Student_Group]  WITH CHECK ADD  CONSTRAINT [FK_Student_Group_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Student_Group] CHECK CONSTRAINT [FK_Student_Group_Group]
GO
ALTER TABLE [dbo].[Student_Group]  WITH CHECK ADD  CONSTRAINT [FK_Student_Group_Student] FOREIGN KEY([stdid])
REFERENCES [dbo].[Student] ([stdid])
GO
ALTER TABLE [dbo].[Student_Group] CHECK CONSTRAINT [FK_Student_Group_Student]
GO
USE [master]
GO
ALTER DATABASE [PRJ301_SPRING2023_Assignment_Demo] SET  READ_WRITE 
GO
