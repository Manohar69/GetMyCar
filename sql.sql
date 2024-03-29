USE [master]
GO
/****** Object:  Database [carshop1]    Script Date: 1/29/2016 1:59:32 PM ******/
CREATE DATABASE [carshop1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'carshop1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\carshop1.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'carshop1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\carshop1_log.ldf' , SIZE = 1088KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [carshop1] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [carshop1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [carshop1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [carshop1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [carshop1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [carshop1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [carshop1] SET ARITHABORT OFF 
GO
ALTER DATABASE [carshop1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [carshop1] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [carshop1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [carshop1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [carshop1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [carshop1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [carshop1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [carshop1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [carshop1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [carshop1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [carshop1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [carshop1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [carshop1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [carshop1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [carshop1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [carshop1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [carshop1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [carshop1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [carshop1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [carshop1] SET  MULTI_USER 
GO
ALTER DATABASE [carshop1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [carshop1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [carshop1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [carshop1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [carshop1]
GO
/****** Object:  StoredProcedure [dbo].[book1_insert]    Script Date: 1/29/2016 1:59:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[book1_insert]
(
@state varchar(50),
@city varchar(50),
@location varchar(50),
@phone varchar(50),
@date date,
@time time
)
as
begin

insert into book_insert(T_state,T_city,T_location,T_phnone_num,T_date,T_time) values(@state,@city,@location,@phone,@date,@time);
end
GO
/****** Object:  StoredProcedure [dbo].[carselect]    Script Date: 1/29/2016 1:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[carselect]
as
begin
select * from carmodels
end


GO
/****** Object:  StoredProcedure [dbo].[contact_ins]    Script Date: 1/29/2016 1:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[contact_ins]
(
@Name varchar(50),
@email varchar(30),
@subject varchar(20),
@message varchar(500)
)
AS
begin
insert into tbl_contact(c_Name,c_Email,c_Subject,c_Message) values(@name,@email,@subject,@message)
end


GO
/****** Object:  StoredProcedure [dbo].[insertuser]    Script Date: 1/29/2016 1:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertuser]
@strFirstName VARCHAR(50),
@strLastName VARCHAR(50),
@strEmail VARCHAR(50),
@strPassword VARCHAR(50)

AS
BEGIN


	INSERT INTO tblUsers(first_name,last_name, email,[password])
	VALUES (@strFirstName,@strLastName,@strEmail,@strPassword)

	select email from tblUsers where email = @strEmail

	select @@identity as RegNum
		

END





GO
/****** Object:  StoredProcedure [dbo].[insertuser1]    Script Date: 1/29/2016 1:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertuser1]
@strFirstName VARCHAR(50),
@strLastName VARCHAR(50),
@strEmail VARCHAR(50),
@strPassword VARCHAR(50)

AS
BEGIN


	INSERT INTO tblUsers(first_name,last_name, email,[password])
	VALUES (@strFirstName,@strLastName,@strEmail,@strPassword)

	select email from tblUsers where email = @strEmail

	select @@identity as RegNum
		

END





GO
/****** Object:  StoredProcedure [dbo].[insrt]    Script Date: 1/29/2016 1:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insrt]
(
@SFName varchar(50),
@SLName varchar(50),
@SEmail varchar(50),
@SPassword varchar(50)
)
as
begin

insert into SignUp(Fname,Lname,Email,[Password]) values(@SFName,@SLName,@SEmail,@SPassword);
end


GO
/****** Object:  StoredProcedure [dbo].[select]    Script Date: 1/29/2016 1:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[select]

AS

BEGIN
	
	select * from carmodels 
END 




GO
/****** Object:  StoredProcedure [dbo].[selectuser]    Script Date: 1/29/2016 1:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[selectuser]
(
@strEmail varchar(50),
@strPassword varchar(50)
)
as
begin
select count(1) from SignUp where Email=@strEmail and [Password]=@strPassword;
End

GO
/****** Object:  StoredProcedure [dbo].[test_insert]    Script Date: 1/29/2016 1:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[test_insert]
(
@state varchar(50),
@city varchar(50),
@location varchar(50),
@phone varchar(50),
@date date,
@time time
)
as
begin

insert into Test_Drive(T_state,T_city,T_location,T_phnone_num,T_date,T_time) values(@state,@city,@location,@phone,@date,@time);
end
GO
/****** Object:  StoredProcedure [dbo].[verify_login]    Script Date: 1/29/2016 1:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[verify_login]
@strUserID Varchar(100),
@strPassword Varchar(100)

AS

BEGIN
	
	select * from tblUsers where email = @strUserID and password = @strPassword

END 



GO
/****** Object:  StoredProcedure [dbo].[verify_login1]    Script Date: 1/29/2016 1:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[verify_login1]
@strUserID Varchar(100),
@strPassword Varchar(100)

AS

BEGIN
	
	select count(1) from tblUsers where email = @strUserID and password = @strPassword

END 



GO
/****** Object:  Table [dbo].[book_insert]    Script Date: 1/29/2016 1:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[book_insert](
	[T_state] [nvarchar](50) NOT NULL,
	[T_city] [nvarchar](50) NOT NULL,
	[T_location] [nvarchar](50) NOT NULL,
	[T_phnone_num] [int] NOT NULL,
	[T_date] [date] NOT NULL,
	[T_time] [time](7) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[carmodels]    Script Date: 1/29/2016 1:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carmodels](
	[c_model] [nvarchar](50) NOT NULL,
	[c_color] [nvarchar](50) NULL,
	[c_capacity] [nvarchar](50) NULL,
	[c_mialage] [nvarchar](50) NULL,
	[c_fuelType] [nvarchar](50) NULL,
	[c_engineType] [nvarchar](50) NULL,
	[c_cylinders] [nvarchar](50) NULL,
	[c_insurence] [nvarchar](50) NULL,
	[c_sedan] [nvarchar](50) NULL,
	[c_glassType] [nvarchar](50) NULL,
	[c_image] [image] NULL,
	[c_id] [nvarchar](50) NULL,
	[c_price] [nvarchar](50) NULL,
	[c_brand] [nvarchar](50) NULL,
 CONSTRAINT [PK_carmodels] PRIMARY KEY CLUSTERED 
(
	[c_model] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CarsInfo1]    Script Date: 1/29/2016 1:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarsInfo1](
	[c_id] [nvarchar](50) NOT NULL,
	[c_brand] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CarsInfo1] PRIMARY KEY CLUSTERED 
(
	[c_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[city]    Script Date: 1/29/2016 1:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[city](
	[cityid] [int] NOT NULL,
	[cityname] [varchar](50) NULL,
	[c_id] [varchar](50) NOT NULL,
 CONSTRAINT [PK_city] PRIMARY KEY CLUSTERED 
(
	[c_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[locatin]    Script Date: 1/29/2016 1:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[locatin](
	[locid] [int] NOT NULL,
	[locname] [varchar](50) NULL,
	[loc_id] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SignUp]    Script Date: 1/29/2016 1:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SignUp](
	[Fname] [char](10) NULL,
	[Lname] [char](10) NULL,
	[Email] [nvarchar](30) NULL,
	[Password] [nvarchar](20) NULL,
	[user_Type] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[state]    Script Date: 1/29/2016 1:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[state](
	[stateid] [int] NOT NULL,
	[statename] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_contact]    Script Date: 1/29/2016 1:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_contact](
	[c_Name] [nvarchar](50) NOT NULL,
	[c_Email] [nvarchar](30) NOT NULL,
	[c_Subject] [nvarchar](20) NOT NULL,
	[c_Message] [nvarchar](500) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Test_Drive]    Script Date: 1/29/2016 1:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test_Drive](
	[T_state] [nvarchar](50) NOT NULL,
	[T_city] [nvarchar](50) NOT NULL,
	[T_location] [nvarchar](50) NOT NULL,
	[T_phnone_num] [int] NOT NULL,
	[T_date] [date] NOT NULL,
	[T_time] [time](7) NOT NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[carmodels]  WITH CHECK ADD  CONSTRAINT [FK_carmodels_carmodels] FOREIGN KEY([c_model])
REFERENCES [dbo].[carmodels] ([c_model])
GO
ALTER TABLE [dbo].[carmodels] CHECK CONSTRAINT [FK_carmodels_carmodels]
GO
USE [master]
GO
ALTER DATABASE [carshop1] SET  READ_WRITE 
GO
