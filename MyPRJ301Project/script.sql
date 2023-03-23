create database [PRJ301_Spring23_Assignment]
go
USE [PRJ301_Spring23_Assignment]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [varchar](150) NOT NULL,
	[password] [varchar](150) NOT NULL,
	[displayname] [nvarchar](150) NOT NULL,
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
	[stdid] [varchar](150) NOT NULL,
	[present] [bit] NOT NULL,
	[description] [varchar](150) NOT NULL,
	[record_time] [datetime] NULL,
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
	[lid] [varchar](150) NOT NULL,
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
CREATE TABLE [dbo].[Lecturer](
	[lid] [varchar](150) NOT NULL,
	[lname] [nvarchar](150) NOT NULL,
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
	[lid] [varchar](150) NOT NULL,
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
	[stdid] [varchar](150) NOT NULL,
	[stdname] [nvarchar](150) NOT NULL,
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
CREATE TABLE [dbo].[Student_Group](
	[stdid] [varchar](150) NOT NULL,
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
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'tranglk', N'123', N'Lại Khánh Trang')
GO
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'maintn', N'123', N'Nguyễn Thị Ngọc Mai')
GO
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'linhlt', N'123', N'Lê Thùy Linh')
GO
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'longdq', N'123', N'Đặng Quang Long')
GO
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'anhnh88', N'123', N'Nguyễn Hoàng Anh')
GO
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'sonnt5', N'123', N'Ngô Tùng Sơn')
GO
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'tranglk', 1, N'', CAST(N'2023-03-20T12:14:42.783' AS DateTime))
GO
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'maintn', 0, N'Khong phep', CAST(N'2023-03-20T12:14:42.783' AS DateTime))
GO
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'linhlt', 1, N'', CAST(N'2023-03-20T12:14:42.783' AS DateTime))
GO
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, N'hiephn', 1, N'', CAST(N'2023-03-20T12:14:42.783' AS DateTime))
GO
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (2, N'tranglk', 0, N'', CAST(N'2023-03-20T03:19:32.740' AS DateTime))
GO
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (2, N'maintn', 1, N'', CAST(N'2023-03-20T03:19:32.743' AS DateTime))
GO
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (2, N'linhlt', 1, N'', CAST(N'2023-03-20T03:19:32.743' AS DateTime))
GO
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (2, N'hiephn', 1, N'', CAST(N'2023-03-20T03:19:32.743' AS DateTime))
GO
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, N'locdp', 0, N'X', CAST(N'2023-03-21T01:26:54.853' AS DateTime))
GO
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, N'maintn', 1, N'', CAST(N'2023-03-21T01:26:54.857' AS DateTime))
GO
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, N'tuanna', 1, N'', CAST(N'2023-03-21T01:26:54.857' AS DateTime))
GO
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (7, N'locdp', 0, N'', CAST(N'2023-03-20T03:20:10.797' AS DateTime))
GO
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (7, N'tranglk', 1, N'', CAST(N'2023-03-20T03:20:10.797' AS DateTime))
GO
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (7, N'tuanna', 1, N'', CAST(N'2023-03-20T03:20:10.797' AS DateTime))
GO
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (11, N'duongpt', 1, N'', CAST(N'2023-03-22T22:49:59.040' AS DateTime))
GO
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (16, N'maintn', 1, N'', CAST(N'2023-03-22T22:48:19.013' AS DateTime))
GO
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (16, N'tranglk', 1, N'', CAST(N'2023-03-22T22:48:19.013' AS DateTime))
GO
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (17, N'maintn', 1, N'', CAST(N'2023-03-20T03:20:29.943' AS DateTime))
GO
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (17, N'hiephn', 1, N'', CAST(N'2023-03-20T03:20:29.943' AS DateTime))
GO
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (1, N'Timetable', N'/lecturer/timetable')
GO
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (2, N'Take Attendance', N'/lecturer/takeatt')
GO
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (3, N'Attendance Status', N'/lecturer/status')
GO
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (4, N'Timetable', N'/student/timetable')
GO
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (5, N'Attendance Status', N'/student/status')
GO
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (6, N'Home', N'/home')
GO
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (1, N'PRJ301-SE1722', 1, N'sonnt5', N'SPRING', 2023)
GO
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (2, N'MAS291-SE1722', 3, N'longdq', N'SPRING', 2023)
GO
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (3, N'JPD123-SE1722', 2, N'anhnh88', N'SPRING', 2023)
GO
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (4, N'PRJ301-SE1723', 1, N'sonnt5', N'SPRING', 2023)
GO
INSERT [dbo].[Lecturer] ([lid], [lname]) VALUES (N'anhnh88', N'Nguyễn Hoàng Anh')
GO
INSERT [dbo].[Lecturer] ([lid], [lname]) VALUES (N'longdq', N'Đặng Quang Long')
GO
INSERT [dbo].[Lecturer] ([lid], [lname]) VALUES (N'sonnt5', N'Ngô Tùng Sơn')
GO
INSERT [dbo].[Role] ([rid], [rname]) VALUES (1, N'Lecturer')
GO
INSERT [dbo].[Role] ([rid], [rname]) VALUES (2, N'Student')
GO
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (1, N'anhnh88')
GO
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (1, N'longdq')
GO
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (1, N'sonnt5')
GO
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (2, N'tranglk')
GO
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (2, N'maintn')
GO
INSERT [dbo].[Role_Account] ([rid], [username]) VALUES (2, N'linhlt')
GO
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (1, 1)
GO
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (1, 2)
GO
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (1, 3)
GO
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (1, 6)
GO
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (2, 4)
GO
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (2, 5)
GO
INSERT [dbo].[Role_Feature] ([rid], [fid]) VALUES (2, 6)
GO
INSERT [dbo].[Room] ([rid], [rname]) VALUES (1, N'DE-C205')
GO
INSERT [dbo].[Room] ([rid], [rname]) VALUES (2, N'BE-211')
GO
INSERT [dbo].[Room] ([rid], [rname]) VALUES (3, N'AL-R203')
GO
INSERT [dbo].[Room] ([rid], [rname]) VALUES (4, N'BE-401')
GO
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (1, 1, 1, CAST(N'2023-03-13' AS Date), 1, 1, N'sonnt5', 1)
GO
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (2, 1, 1, CAST(N'2023-03-14' AS Date), 1, 2, N'sonnt5', 1)
GO
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (3, 1, 1, CAST(N'2023-03-15' AS Date), 1, 3, N'sonnt5', 0)
GO
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (4, 1, 1, CAST(N'2023-03-16' AS Date), 1, 4, N'sonnt5', 1)
GO
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (5, 1, 1, CAST(N'2023-03-17' AS Date), 1, 5, N'sonnt5', 0)
GO
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (6, 2, 1, CAST(N'2023-03-13' AS Date), 2, 1, N'longdq', 1)
GO
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (7, 2, 1, CAST(N'2023-03-14' AS Date), 2, 2, N'longdq', 1)
GO
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (8, 2, 1, CAST(N'2023-03-15' AS Date), 2, 3, N'longdq', 0)
GO
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (9, 2, 1, CAST(N'2023-03-16' AS Date), 2, 4, N'longdq', 1)
GO
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (10, 2, 1, CAST(N'2023-03-17' AS Date), 2, 5, N'longdq', 0)
GO
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (11, 3, 2, CAST(N'2023-03-13' AS Date), 4, 1, N'anhnh88', 1)
GO
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (12, 3, 2, CAST(N'2023-03-14' AS Date), 4, 2, N'anhnh88', 0)
GO
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (13, 3, 2, CAST(N'2023-03-15' AS Date), 4, 3, N'anhnh88', 1)
GO
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (14, 3, 2, CAST(N'2023-03-20' AS Date), 4, 4, N'anhnh88', 0)
GO
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (15, 3, 2, CAST(N'2023-03-21' AS Date), 4, 5, N'anhnh88', 1)
GO
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (16, 4, 1, CAST(N'2023-03-13' AS Date), 3, 1, N'sonnt5', 1)
GO
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (17, 4, 1, CAST(N'2023-03-14' AS Date), 3, 2, N'sonnt5', 1)
GO
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (18, 4, 1, CAST(N'2023-03-15' AS Date), 3, 3, N'sonnt5', 0)
GO
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (19, 4, 1, CAST(N'2023-03-16' AS Date), 3, 4, N'sonnt5', 1)
GO
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (20, 4, 1, CAST(N'2023-03-21' AS Date), 3, 5, N'sonnt5', 1)
GO
INSERT [dbo].[Student] ([stdid], [stdname]) VALUES (N'tranglk', N'Lại Khánh Trang')
GO
INSERT [dbo].[Student] ([stdid], [stdname]) VALUES (N'maintn', N'Nguyễn Thị Ngọc Mai')
GO
INSERT [dbo].[Student] ([stdid], [stdname]) VALUES (N'linhlt', N'Lê Thùy Linh')
GO
INSERT [dbo].[Student] ([stdid], [stdname]) VALUES (N'hiephn', N'Hoàng Nghĩa Hiệp')
GO
INSERT [dbo].[Student] ([stdid], [stdname]) VALUES (N'locdp', N'Đỗ Phú Lộc')
GO
INSERT [dbo].[Student] ([stdid], [stdname]) VALUES (N'tuanna', N'Nguyễn Anh Tuấn')
GO
INSERT [dbo].[Student] ([stdid], [stdname]) VALUES (N'duongpt', N'Phạm Tuấn Dương')
GO
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'tranglk', 1)
GO
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'maintn', 2)
GO
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'linhlt', 1)
GO
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'linhlt', 2)
GO
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'linhlt', 4)
GO
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'hiephn', 1)
GO
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'locdp', 1)
GO
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'locdp', 4)
GO
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'locdp', 3)
GO
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'tuanna', 3)
GO
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'duongpt', 2)
GO
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (N'duongpt', 3)
GO
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (1, N'PRJ301')
GO
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (2, N'JPD123')
GO
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (3, N'MAS291')
GO
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (1, N'7:30 - 9:50')
GO
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (2, N'10:00 - 12:20')
GO
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (3, N'12:50 - 15:10')
GO
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
ALTER TABLE [dbo].[Lecturer]  WITH CHECK ADD  CONSTRAINT [FK_Lecturer_Account] FOREIGN KEY([lid])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[Lecturer] CHECK CONSTRAINT [FK_Lecturer_Account]
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
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Account] FOREIGN KEY([stdid])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Account]
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
