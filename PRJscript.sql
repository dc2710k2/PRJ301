USE [master]
GO
/****** Object:  Database [Sonntvippro]    Script Date: 3/20/2023 2:50:33 AM ******/
CREATE DATABASE [Sonntvippro]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Sonntvippro', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Sonntvippro.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Sonntvippro_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Sonntvippro_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Sonntvippro] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Sonntvippro].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Sonntvippro] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Sonntvippro] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Sonntvippro] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Sonntvippro] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Sonntvippro] SET ARITHABORT OFF 
GO
ALTER DATABASE [Sonntvippro] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Sonntvippro] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Sonntvippro] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Sonntvippro] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Sonntvippro] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Sonntvippro] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Sonntvippro] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Sonntvippro] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Sonntvippro] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Sonntvippro] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Sonntvippro] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Sonntvippro] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Sonntvippro] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Sonntvippro] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Sonntvippro] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Sonntvippro] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Sonntvippro] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Sonntvippro] SET RECOVERY FULL 
GO
ALTER DATABASE [Sonntvippro] SET  MULTI_USER 
GO
ALTER DATABASE [Sonntvippro] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Sonntvippro] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Sonntvippro] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Sonntvippro] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Sonntvippro] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Sonntvippro] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Sonntvippro', N'ON'
GO
ALTER DATABASE [Sonntvippro] SET QUERY_STORE = OFF
GO
USE [Sonntvippro]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 3/20/2023 2:50:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[aid] [int] IDENTITY(1,1) NOT NULL,
	[sid] [int] NULL,
	[sessionid] [int] NULL,
	[status] [bit] NULL,
	[description] [nvarchar](150) NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[aid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 3/20/2023 2:50:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 3/20/2023 2:50:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[gid] [int] NOT NULL,
	[gname] [nvarchar](50) NOT NULL,
	[cid] [int] NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecturer]    Script Date: 3/20/2023 2:50:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturer](
	[lid] [int] NOT NULL,
	[lname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Lesson] PRIMARY KEY CLUSTERED 
(
	[lid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 3/20/2023 2:50:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[rid] [int] NOT NULL,
	[rname] [nvarchar](50) NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 3/20/2023 2:50:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[sessionid] [int] NOT NULL,
	[gid] [int] NOT NULL,
	[rid] [int] NOT NULL,
	[tid] [int] NOT NULL,
	[lid] [int] NOT NULL,
	[date] [date] NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[sessionid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 3/20/2023 2:50:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[sid] [int] NOT NULL,
	[sname] [nvarchar](50) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student Group]    Script Date: 3/20/2023 2:50:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student Group](
	[sid] [int] NOT NULL,
	[gid] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSlot]    Script Date: 3/20/2023 2:50:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSlot](
	[tid] [int] NOT NULL,
	[description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TimeSlot] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 3/20/2023 2:50:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[username] [nvarchar](510) NULL,
	[password] [nvarchar](150) NULL,
	[displayname] [nvarchar](510) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Attendance] ON 

INSERT [dbo].[Attendance] ([aid], [sid], [sessionid], [status], [description]) VALUES (1, 1, 1, 1, N'')
INSERT [dbo].[Attendance] ([aid], [sid], [sessionid], [status], [description]) VALUES (2, 1, 2, 0, N'')
INSERT [dbo].[Attendance] ([aid], [sid], [sessionid], [status], [description]) VALUES (3, 2, 1, 0, N'')
INSERT [dbo].[Attendance] ([aid], [sid], [sessionid], [status], [description]) VALUES (4, 1, 4, 1, NULL)
INSERT [dbo].[Attendance] ([aid], [sid], [sessionid], [status], [description]) VALUES (5, 2, 3, 1, NULL)
INSERT [dbo].[Attendance] ([aid], [sid], [sessionid], [status], [description]) VALUES (6, 2, 5, 1, NULL)
INSERT [dbo].[Attendance] ([aid], [sid], [sessionid], [status], [description]) VALUES (7, 2, 2, 0, N'')
INSERT [dbo].[Attendance] ([aid], [sid], [sessionid], [status], [description]) VALUES (8, 7, 2, 0, N'')
INSERT [dbo].[Attendance] ([aid], [sid], [sessionid], [status], [description]) VALUES (9, 8, 2, 0, N'')
INSERT [dbo].[Attendance] ([aid], [sid], [sessionid], [status], [description]) VALUES (10, 9, 2, 0, N'')
INSERT [dbo].[Attendance] ([aid], [sid], [sessionid], [status], [description]) VALUES (11, 10, 2, 0, N'')
INSERT [dbo].[Attendance] ([aid], [sid], [sessionid], [status], [description]) VALUES (12, 11, 2, 0, N'')
INSERT [dbo].[Attendance] ([aid], [sid], [sessionid], [status], [description]) VALUES (13, 12, 2, 1, N'')
INSERT [dbo].[Attendance] ([aid], [sid], [sessionid], [status], [description]) VALUES (14, 3, 2, 0, N'')
INSERT [dbo].[Attendance] ([aid], [sid], [sessionid], [status], [description]) VALUES (15, 4, 2, 0, N'')
INSERT [dbo].[Attendance] ([aid], [sid], [sessionid], [status], [description]) VALUES (16, 3, 1, 0, N'')
INSERT [dbo].[Attendance] ([aid], [sid], [sessionid], [status], [description]) VALUES (17, 4, 1, 0, N'')
INSERT [dbo].[Attendance] ([aid], [sid], [sessionid], [status], [description]) VALUES (18, 5, 1, 0, N'')
INSERT [dbo].[Attendance] ([aid], [sid], [sessionid], [status], [description]) VALUES (19, 6, 1, 0, N'')
SET IDENTITY_INSERT [dbo].[Attendance] OFF
GO
INSERT [dbo].[Course] ([cid], [cname]) VALUES (1, N'PRJ301')
INSERT [dbo].[Course] ([cid], [cname]) VALUES (2, N'MAS291')
INSERT [dbo].[Course] ([cid], [cname]) VALUES (3, N'SWP391')
INSERT [dbo].[Course] ([cid], [cname]) VALUES (4, N'PRN211')
INSERT [dbo].[Course] ([cid], [cname]) VALUES (5, N'SWT301')
GO
INSERT [dbo].[Group] ([gid], [gname], [cid]) VALUES (1, N'SE1639', 1)
INSERT [dbo].[Group] ([gid], [gname], [cid]) VALUES (2, N'SE1654', 2)
INSERT [dbo].[Group] ([gid], [gname], [cid]) VALUES (3, N'SE1722', 3)
INSERT [dbo].[Group] ([gid], [gname], [cid]) VALUES (4, N'SE1678', 4)
INSERT [dbo].[Group] ([gid], [gname], [cid]) VALUES (5, N'SE1629', 5)
GO
INSERT [dbo].[Lecturer] ([lid], [lname]) VALUES (1, N'sonnt')
INSERT [dbo].[Lecturer] ([lid], [lname]) VALUES (2, N'annt')
INSERT [dbo].[Lecturer] ([lid], [lname]) VALUES (3, N'caupd')
INSERT [dbo].[Lecturer] ([lid], [lname]) VALUES (4, N'khuongpd')
INSERT [dbo].[Lecturer] ([lid], [lname]) VALUES (5, N'thiennv')
INSERT [dbo].[Lecturer] ([lid], [lname]) VALUES (6, N'vandt')
GO
INSERT [dbo].[Room] ([rid], [rname]) VALUES (1, N'BE-212')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (2, N'DE-224')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (3, N'AL201')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (4, N'DE-419')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (5, N'BE-109')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (6, N'DE-322')
GO
INSERT [dbo].[Session] ([sessionid], [gid], [rid], [tid], [lid], [date], [status]) VALUES (1, 1, 2, 1, 1, CAST(N'2023-03-16' AS Date), 1)
INSERT [dbo].[Session] ([sessionid], [gid], [rid], [tid], [lid], [date], [status]) VALUES (2, 2, 1, 4, 4, CAST(N'2023-03-17' AS Date), 1)
INSERT [dbo].[Session] ([sessionid], [gid], [rid], [tid], [lid], [date], [status]) VALUES (3, 2, 2, 3, 2, CAST(N'2023-03-18' AS Date), 1)
INSERT [dbo].[Session] ([sessionid], [gid], [rid], [tid], [lid], [date], [status]) VALUES (4, 5, 3, 2, 3, CAST(N'2023-03-20' AS Date), 1)
INSERT [dbo].[Session] ([sessionid], [gid], [rid], [tid], [lid], [date], [status]) VALUES (5, 4, 5, 5, 5, CAST(N'2023-03-14' AS Date), 1)
INSERT [dbo].[Session] ([sessionid], [gid], [rid], [tid], [lid], [date], [status]) VALUES (6, 2, 1, 4, 2, CAST(N'2023-03-15' AS Date), 1)
INSERT [dbo].[Session] ([sessionid], [gid], [rid], [tid], [lid], [date], [status]) VALUES (7, 1, 2, 1, 4, CAST(N'2023-03-14' AS Date), 1)
INSERT [dbo].[Session] ([sessionid], [gid], [rid], [tid], [lid], [date], [status]) VALUES (8, 3, 2, 1, 4, CAST(N'2023-03-15' AS Date), 0)
INSERT [dbo].[Session] ([sessionid], [gid], [rid], [tid], [lid], [date], [status]) VALUES (9, 1, 4, 3, 2, CAST(N'2023-03-16' AS Date), 1)
INSERT [dbo].[Session] ([sessionid], [gid], [rid], [tid], [lid], [date], [status]) VALUES (10, 4, 3, 2, 1, CAST(N'2023-03-16' AS Date), 1)
INSERT [dbo].[Session] ([sessionid], [gid], [rid], [tid], [lid], [date], [status]) VALUES (11, 2, 3, 4, 4, CAST(N'2023-03-18' AS Date), 1)
INSERT [dbo].[Session] ([sessionid], [gid], [rid], [tid], [lid], [date], [status]) VALUES (12, 4, 1, 2, 3, CAST(N'2023-03-17' AS Date), 1)
INSERT [dbo].[Session] ([sessionid], [gid], [rid], [tid], [lid], [date], [status]) VALUES (13, 4, 3, 2, 1, CAST(N'2023-03-19' AS Date), 1)
INSERT [dbo].[Session] ([sessionid], [gid], [rid], [tid], [lid], [date], [status]) VALUES (14, 5, 4, 2, 3, CAST(N'2023-03-18' AS Date), 1)
INSERT [dbo].[Session] ([sessionid], [gid], [rid], [tid], [lid], [date], [status]) VALUES (15, 4, 2, 5, 1, CAST(N'2023-03-14' AS Date), 0)
GO
INSERT [dbo].[Student] ([sid], [sname]) VALUES (1, N'Nguyen Tuan Duc')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (2, N'Nguyen Chi Thanh')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (3, N'Tran Anh Tung')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (4, N'Ngo Dinh Son')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (5, N'Tran Anh Minh')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (6, N'Hoang The Anh')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (7, N'Hoang Minh Dung')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (8, N'Le Minh Hoang')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (9, N'Duong Van Minh')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (10, N'Luu Canh Thang')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (11, N'Vo Thanh Vinh')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (12, N'Nghiem Gia Phong')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (13, N'Duong Thanh Nam')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (14, N'Nguyen Viet Hung')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (15, N'Hoang Van Thai')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (16, N'Nguyen Truong Giang')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (17, N'Giang A Thai')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (18, N'Nguyen Duc Huy')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (19, N'Nguyen Van Tuan')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (20, N'Tran Son Ha')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (21, N'Yasuo')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (22, N'LeeSin')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (23, N'Gangplank')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (24, N'Zed')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (25, N'XiaoChaoMeng')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (26, N'AATROX')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (27, N'Hoang Nam Tien')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (28, N'Bin La Den')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (29, N'Hitler')
INSERT [dbo].[Student] ([sid], [sname]) VALUES (30, N'Nguyen Ba Hieu')
GO
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (1, 1)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (2, 1)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (3, 1)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (4, 1)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (5, 1)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (6, 1)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (7, 2)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (8, 2)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (9, 2)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (10, 2)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (11, 2)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (12, 2)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (13, 3)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (14, 3)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (15, 3)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (16, 3)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (17, 3)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (18, 3)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (19, 4)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (20, 4)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (21, 4)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (22, 4)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (23, 4)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (24, 4)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (25, 5)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (26, 5)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (27, 5)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (28, 5)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (29, 5)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (30, 5)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (1, 2)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (1, 3)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (1, 4)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (1, 5)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (2, 2)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (2, 3)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (2, 4)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (2, 5)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (3, 2)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (3, 3)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (3, 4)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (3, 5)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (4, 2)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (4, 3)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (4, 4)
INSERT [dbo].[Student Group] ([sid], [gid]) VALUES (4, 5)
GO
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (1, N'7:30-9:40')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (2, N'10:00-12:20')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (3, N'12:50-15:10')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (4, N'15:20-17:40')
GO
INSERT [dbo].[User] ([username], [password], [displayname]) VALUES (N'sonnt', N'sonnt', N'Son NT')
INSERT [dbo].[User] ([username], [password], [displayname]) VALUES (N'duc', N'duc', N'Duke')
INSERT [dbo].[User] ([username], [password], [displayname]) VALUES (N'minh', N'minh', N'Minh')
INSERT [dbo].[User] ([username], [password], [displayname]) VALUES (N'thang', N'thang', N'Thang')
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Course] FOREIGN KEY([cid])
REFERENCES [dbo].[Course] ([cid])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Course]
GO
ALTER TABLE [dbo].[Student Group]  WITH CHECK ADD  CONSTRAINT [FK_Student Group_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Student Group] CHECK CONSTRAINT [FK_Student Group_Group]
GO
ALTER TABLE [dbo].[Student Group]  WITH CHECK ADD  CONSTRAINT [FK_Student Group_Student] FOREIGN KEY([sid])
REFERENCES [dbo].[Student] ([sid])
GO
ALTER TABLE [dbo].[Student Group] CHECK CONSTRAINT [FK_Student Group_Student]
GO
USE [master]
GO
ALTER DATABASE [Sonntvippro] SET  READ_WRITE 
GO
