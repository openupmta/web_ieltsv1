USE [master]
GO
/****** Object:  Database [WEB_IELTS]    Script Date: 5/24/2020 4:38:32 PM ******/
CREATE DATABASE [WEB_IELTS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WEB_IELTS', FILENAME = N'D:\CSDL\MSSQL14.MSSQLSERVER\MSSQL\DATA\WEB_IELTS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WEB_IELTS_log', FILENAME = N'D:\CSDL\MSSQL14.MSSQLSERVER\MSSQL\DATA\WEB_IELTS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [WEB_IELTS] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WEB_IELTS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WEB_IELTS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WEB_IELTS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WEB_IELTS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WEB_IELTS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WEB_IELTS] SET ARITHABORT OFF 
GO
ALTER DATABASE [WEB_IELTS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WEB_IELTS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WEB_IELTS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WEB_IELTS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WEB_IELTS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WEB_IELTS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WEB_IELTS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WEB_IELTS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WEB_IELTS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WEB_IELTS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WEB_IELTS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WEB_IELTS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WEB_IELTS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WEB_IELTS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WEB_IELTS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WEB_IELTS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WEB_IELTS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WEB_IELTS] SET RECOVERY FULL 
GO
ALTER DATABASE [WEB_IELTS] SET  MULTI_USER 
GO
ALTER DATABASE [WEB_IELTS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WEB_IELTS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WEB_IELTS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WEB_IELTS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WEB_IELTS] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'WEB_IELTS', N'ON'
GO
ALTER DATABASE [WEB_IELTS] SET QUERY_STORE = OFF
GO
USE [WEB_IELTS]
GO
/****** Object:  Table [dbo].[blogs]    Script Date: 5/24/2020 4:38:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blogs](
	[bl_id] [int] IDENTITY(1,1) NOT NULL,
	[bl_name] [nvarchar](50) NULL,
	[bl_slug] [varchar](50) NULL,
	[bl_image] [varchar](150) NULL,
	[bl_summary] [text] NULL,
	[bl_content] [text] NULL,
	[bl_status] [tinyint] NULL,
	[bl_created_at] [datetime] NULL,
	[bl_updated_at] [datetime] NULL,
 CONSTRAINT [PK_blogs] PRIMARY KEY CLUSTERED 
(
	[bl_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category_librarys]    Script Date: 5/24/2020 4:38:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category_librarys](
	[ca_id] [int] IDENTITY(1,1) NOT NULL,
	[ca_name] [nvarchar](150) NULL,
	[ca_slug] [varchar](150) NULL,
	[ca_icon] [varchar](150) NULL,
	[ca_status] [tinyint] NULL,
	[ca_created_at] [datetime] NULL,
	[ca_updated_at] [datetime] NULL,
 CONSTRAINT [PK_category_librarys] PRIMARY KEY CLUSTERED 
(
	[ca_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contacts]    Script Date: 5/24/2020 4:38:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contacts](
	[co_id] [int] IDENTITY(1,1) NOT NULL,
	[co_name] [nvarchar](150) NULL,
	[co_icon] [varchar](150) NULL,
	[co_link] [varchar](150) NULL,
	[co_status] [tinyint] NULL,
	[co_created_at] [datetime] NULL,
	[co_updated_at] [datetime] NULL,
 CONSTRAINT [PK_contacts] PRIMARY KEY CLUSTERED 
(
	[co_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[course]    Script Date: 5/24/2020 4:38:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course](
	[co_id] [int] IDENTITY(1,1) NOT NULL,
	[co_name] [nvarchar](150) NULL,
	[co_slug] [varchar](150) NULL,
	[co_image] [varchar](150) NULL,
	[co_content] [text] NULL,
	[co_type] [tinyint] NULL,
	[co_status] [tinyint] NULL,
	[co_created_at] [datetime] NULL,
	[co_updated_at] [datetime] NULL,
	[staff_id] [int] NULL,
 CONSTRAINT [PK_course_offlines] PRIMARY KEY CLUSTERED 
(
	[co_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[course_customer]    Script Date: 5/24/2020 4:38:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course_customer](
	[co_cu_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NULL,
	[course_id] [int] NULL,
 CONSTRAINT [PK_course_customer] PRIMARY KEY CLUSTERED 
(
	[co_cu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customers]    Script Date: 5/24/2020 4:38:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customers](
	[cu_id] [int] IDENTITY(1,1) NOT NULL,
	[cu_mobile] [varchar](50) NULL,
	[cu_email] [varchar](50) NULL,
	[cu_fullname] [nvarchar](50) NULL,
	[cu_address] [nchar](10) NULL,
	[cu_status] [tinyint] NULL,
	[cu_note] [text] NULL,
	[cu_created_at] [datetime] NULL,
	[cu_updated_at] [datetime] NULL,
 CONSTRAINT [PK_customers] PRIMARY KEY CLUSTERED 
(
	[cu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[group_role]    Script Date: 5/24/2020 4:38:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[group_role](
	[gr_id] [int] IDENTITY(1,1) NOT NULL,
	[gr_name] [nvarchar](50) NULL,
	[gr_description] [text] NULL,
 CONSTRAINT [PK_group_role] PRIMARY KEY CLUSTERED 
(
	[gr_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[image]    Script Date: 5/24/2020 4:38:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[image](
	[im_id] [int] IDENTITY(1,1) NOT NULL,
	[im_image] [nvarchar](150) NULL,
	[im_title] [nvarchar](150) NULL,
	[im_location] [tinyint] NULL,
	[im_status] [tinyint] NULL,
	[im_created_at] [datetime] NULL,
	[im_updated_at] [datetime] NULL,
 CONSTRAINT [PK_image] PRIMARY KEY CLUSTERED 
(
	[im_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[introduce]    Script Date: 5/24/2020 4:38:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[introduce](
	[in_id] [int] IDENTITY(1,1) NOT NULL,
	[in_logo] [varchar](150) NULL,
	[in_address] [nvarchar](150) NULL,
	[in_phone] [varchar](50) NULL,
	[in_email] [varchar](150) NULL,
	[in_facebook] [varchar](150) NULL,
	[in_title] [varchar](250) NULL,
	[in_content] [text] NULL,
	[in_created_at] [datetime] NULL,
	[in_updated_at] [datetime] NULL,
 CONSTRAINT [PK_introduce] PRIMARY KEY CLUSTERED 
(
	[in_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[librarys]    Script Date: 5/24/2020 4:38:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[librarys](
	[li_id] [int] IDENTITY(1,1) NOT NULL,
	[li_name] [nvarchar](150) NULL,
	[li_slug] [varchar](150) NULL,
	[li_image] [varchar](150) NULL,
	[li_summary] [text] NULL,
	[li_content] [text] NULL,
	[category_library_id] [int] NULL,
	[li_status] [tinyint] NULL,
	[li_created_at] [datetime] NULL,
	[li_updated_at] [datetime] NULL,
 CONSTRAINT [PK_librarys] PRIMARY KEY CLUSTERED 
(
	[li_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[positions]    Script Date: 5/24/2020 4:38:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[positions](
	[pos_id] [int] IDENTITY(1,1) NOT NULL,
	[pos_name] [nvarchar](150) NULL,
	[pos_description] [text] NULL,
 CONSTRAINT [PK_positions] PRIMARY KEY CLUSTERED 
(
	[pos_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[staffs]    Script Date: 5/24/2020 4:38:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[staffs](
	[sta_id] [int] IDENTITY(1,1) NOT NULL,
	[sta_email] [varchar](150) NULL,
	[sta_fullname] [nvarchar](150) NULL,
	[sta_username] [varchar](150) NULL,
	[sta_password] [varchar](150) NULL,
	[group_role_id] [int] NULL,
	[sta_image] [varchar](150) NULL,
	[sta_created_at] [datetime] NULL,
	[sta_update_at] [datetime] NULL,
 CONSTRAINT [PK_admins] PRIMARY KEY CLUSTERED 
(
	[sta_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[teachers]    Script Date: 5/24/2020 4:38:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teachers](
	[te_id] [int] IDENTITY(1,1) NOT NULL,
	[te_name] [nvarchar](150) NULL,
	[position_id] [int] NULL,
	[te_content] [text] NULL,
	[te_image] [varchar](150) NULL,
	[te_status] [tinyint] NULL,
	[te_created_at] [datetime] NULL,
	[te_updated_at] [datetime] NULL,
	[staff_id] [int] NULL,
 CONSTRAINT [PK_teachers] PRIMARY KEY CLUSTERED 
(
	[te_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[course]  WITH CHECK ADD  CONSTRAINT [FK_course_staffs] FOREIGN KEY([staff_id])
REFERENCES [dbo].[staffs] ([sta_id])
ON UPDATE SET NULL
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[course] CHECK CONSTRAINT [FK_course_staffs]
GO
ALTER TABLE [dbo].[course_customer]  WITH CHECK ADD  CONSTRAINT [FK_course_customer_course] FOREIGN KEY([course_id])
REFERENCES [dbo].[course] ([co_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[course_customer] CHECK CONSTRAINT [FK_course_customer_course]
GO
ALTER TABLE [dbo].[course_customer]  WITH CHECK ADD  CONSTRAINT [FK_course_customer_customers] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customers] ([cu_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[course_customer] CHECK CONSTRAINT [FK_course_customer_customers]
GO
ALTER TABLE [dbo].[librarys]  WITH CHECK ADD  CONSTRAINT [FK_librarys_category_librarys] FOREIGN KEY([category_library_id])
REFERENCES [dbo].[category_librarys] ([ca_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[librarys] CHECK CONSTRAINT [FK_librarys_category_librarys]
GO
ALTER TABLE [dbo].[staffs]  WITH CHECK ADD  CONSTRAINT [FK_staffs_group_role] FOREIGN KEY([group_role_id])
REFERENCES [dbo].[group_role] ([gr_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[staffs] CHECK CONSTRAINT [FK_staffs_group_role]
GO
ALTER TABLE [dbo].[teachers]  WITH CHECK ADD  CONSTRAINT [FK_teachers_positions] FOREIGN KEY([position_id])
REFERENCES [dbo].[positions] ([pos_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[teachers] CHECK CONSTRAINT [FK_teachers_positions]
GO
ALTER TABLE [dbo].[teachers]  WITH CHECK ADD  CONSTRAINT [FK_teachers_staffs] FOREIGN KEY([staff_id])
REFERENCES [dbo].[staffs] ([sta_id])
ON UPDATE SET NULL
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[teachers] CHECK CONSTRAINT [FK_teachers_staffs]
GO
USE [master]
GO
ALTER DATABASE [WEB_IELTS] SET  READ_WRITE 
GO
