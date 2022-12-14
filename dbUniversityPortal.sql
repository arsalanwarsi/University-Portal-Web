USE [master]
GO
/****** Object:  Database [dbUniversityPortal_DBMS]    Script Date: 21-Aug-22 10:50:25 PM ******/
CREATE DATABASE [dbUniversityPortal_DBMS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbUniversityPortal_DBMS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.WARSI\MSSQL\DATA\dbUniversityPortal_DBMS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dbUniversityPortal_DBMS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.WARSI\MSSQL\DATA\dbUniversityPortal_DBMS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [dbUniversityPortal_DBMS] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbUniversityPortal_DBMS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbUniversityPortal_DBMS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbUniversityPortal_DBMS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbUniversityPortal_DBMS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbUniversityPortal_DBMS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbUniversityPortal_DBMS] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbUniversityPortal_DBMS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbUniversityPortal_DBMS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbUniversityPortal_DBMS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbUniversityPortal_DBMS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbUniversityPortal_DBMS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbUniversityPortal_DBMS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbUniversityPortal_DBMS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbUniversityPortal_DBMS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbUniversityPortal_DBMS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbUniversityPortal_DBMS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbUniversityPortal_DBMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbUniversityPortal_DBMS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbUniversityPortal_DBMS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbUniversityPortal_DBMS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbUniversityPortal_DBMS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbUniversityPortal_DBMS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbUniversityPortal_DBMS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbUniversityPortal_DBMS] SET RECOVERY FULL 
GO
ALTER DATABASE [dbUniversityPortal_DBMS] SET  MULTI_USER 
GO
ALTER DATABASE [dbUniversityPortal_DBMS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbUniversityPortal_DBMS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbUniversityPortal_DBMS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbUniversityPortal_DBMS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dbUniversityPortal_DBMS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [dbUniversityPortal_DBMS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'dbUniversityPortal_DBMS', N'ON'
GO
ALTER DATABASE [dbUniversityPortal_DBMS] SET QUERY_STORE = OFF
GO
USE [dbUniversityPortal_DBMS]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Admin_ID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Gender] [varchar](10) NULL,
	[Email] [nvarchar](70) NOT NULL,
	[PhoneNo] [nvarchar](20) NULL,
	[Password] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Admin_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Admin_Login_Table]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Admin_Login_Table]
AS
	SELECT Admin_ID,Password
	FROM Admin

GO
/****** Object:  Table [dbo].[Students]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[Student_ID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Gender] [varchar](10) NULL,
	[Email] [nvarchar](70) NOT NULL,
	[PhoneNo] [nvarchar](20) NULL,
	[Program] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[Dues] [bigint] NULL,
	[Total_CR] [int] NULL,
	[Earned_CR] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Student_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Student_Login_Table]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Student_Login_Table]
AS
	SELECT Student_ID,Password
	FROM Students

GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[Teacher_ID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Gender] [varchar](10) NULL,
	[Email] [nvarchar](70) NOT NULL,
	[PhoneNo] [nvarchar](20) NULL,
	[Password] [nvarchar](20) NOT NULL,
	[Dept_No] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Teacher_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Teacher_Login_Table]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Teacher_Login_Table]
AS
	SELECT Teacher_ID,Password
	FROM Teachers

GO
/****** Object:  Table [dbo].[Departments]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Dept_No] [int] NOT NULL,
	[Dept_Name] [nvarchar](50) NOT NULL,
	[Dept_Block] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Dept_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Teacher_Table]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Teacher_Table]
AS
	SELECT t.Teacher_ID,t.Name,t.Gender,t.Email,t.PhoneNo,t.Password,d.Dept_Name FROM Teachers t
	INNER JOIN Departments d
	ON t.Dept_No = d.Dept_No

GO
/****** Object:  Table [dbo].[Courses]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[Course_ID] [nvarchar](10) NOT NULL,
	[Course_Name] [nvarchar](50) NOT NULL,
	[Credit_Hours] [decimal](5, 1) NOT NULL,
	[Prerequisite] [nvarchar](10) NULL,
	[Teacher_ID] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Course_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Course_Table]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Course_Table]
AS
	SELECT c.Course_ID,c.Course_Name,c.Credit_Hours,d.Course_Name AS 'Prerequisite',t.Name AS 'Teacher' FROM Courses c
	LEFT JOIN Courses d
	ON c.Prerequisite = d.Course_ID
	INNER JOIN Teachers t
	ON c.Teacher_ID = t.Teacher_ID
GO
/****** Object:  View [dbo].[Reg_Course]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Reg_Course]
AS
	SELECT Course_ID AS 'ID',Course_Name AS 'Name',Credit_Hours AS 'Cr.',Prerequisite AS 'Pre_Req' FROM Courses

GO
/****** Object:  Table [dbo].[Enrolled]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enrolled](
	[Course_ID] [nvarchar](10) NULL,
	[Student_ID] [nvarchar](50) NULL,
	[Reg_Date] [date] NULL,
	[Attendence] [nvarchar](10) NULL,
	[Grade] [nvarchar](6) NULL,
	[Semester] [nvarchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Register_Course]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Register_Course]
AS
	SELECT e.Course_ID AS 'ID',c.Course_Name AS 'Name',e.Student_ID,e.Semester FROM Enrolled e
	INNER JOIN Courses c
	on e.Course_ID = c.Course_ID

GO
/****** Object:  View [dbo].[Course_Registered]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Course_Registered]
AS
	SELECT e.Student_ID as 'St_ID',e.Course_ID AS 'ID',c.Course_Name AS 'Name',e.Attendence,e.Grade,t.Name AS 'Teacher',e.Semester FROM Enrolled e
	INNER JOIN Courses c
	ON e.Course_ID = c.Course_ID
	INNER JOIN Teachers t
	ON c.Teacher_ID = t.Teacher_ID
GO
/****** Object:  Table [dbo].[Notices]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notices](
	[Notice_NO] [int] IDENTITY(1,1) NOT NULL,
	[Notice] [nvarchar](400) NOT NULL,
	[Notice_For] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Notice_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Notice_Record]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Notice_Record]
AS
	SELECT Notice,Notice_For FROM Notices
GO
/****** Object:  Table [dbo].[Announcements]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Announcements](
	[Ann_No] [int] IDENTITY(1,1) NOT NULL,
	[Announcement] [nvarchar](300) NOT NULL,
	[Teacher_ID] [nvarchar](50) NULL,
	[Course_ID] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ann_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Student_Announcement]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Student_Announcement]
AS
	SELECT e.Student_ID,e.Course_ID AS 'Course', a.Announcement FROM Enrolled e
	INNER JOIN Announcements a
	ON e.Course_ID = a.Course_ID

GO
/****** Object:  View [dbo].[Teacher_Announce]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Teacher_Announce]
AS
	SELECT Ann_No AS 'ID',Announcement,Course_ID AS 'Course',Teacher_ID FROM Announcements
GO
/****** Object:  View [dbo].[Teacher_Course]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Teacher_Course]
AS
	SELECT t.Teacher_ID,c.Course_ID AS 'ID',c.Course_Name AS 'Course' FROM Teachers t
	INNER JOIN Courses c
	ON t.Teacher_ID= c.Teacher_ID
GO
/****** Object:  View [dbo].[Techer_Assigned_Course]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Techer_Assigned_Course]
AS
	SELECT t.Teacher_ID,c.Course_ID AS 'ID',c.Course_Name AS 'COURSE',c.Credit_Hours AS 'Cr_Hour' FROM Teachers t
	INNER JOIN Courses c
	ON t.Teacher_ID = c.Teacher_ID
GO
/****** Object:  View [dbo].[Course_Students]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Course_Students]
AS
	SELECT c.Course_ID,e.Student_ID AS 'ID',s.Name,s.Email,e.Attendence,e.Grade,e.Semester FROM Courses c
	INNER JOIN Enrolled e
	on c.Course_ID = e.Course_ID
	INNER JOIN Students s
	ON e.Student_ID = s.Student_ID
GO
/****** Object:  Table [dbo].[SemesterGPA]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SemesterGPA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Semester] [nvarchar](50) NULL,
	[CGP] [float] NULL,
	[Student_ID] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Admin] ADD  DEFAULT ('admin123') FOR [Password]
GO
ALTER TABLE [dbo].[Students] ADD  DEFAULT ('student123') FOR [Password]
GO
ALTER TABLE [dbo].[Students] ADD  DEFAULT ((132)) FOR [Total_CR]
GO
ALTER TABLE [dbo].[Students] ADD  DEFAULT ((132)) FOR [Earned_CR]
GO
ALTER TABLE [dbo].[Teachers] ADD  DEFAULT ('teacher123') FOR [Password]
GO
ALTER TABLE [dbo].[Announcements]  WITH CHECK ADD FOREIGN KEY([Course_ID])
REFERENCES [dbo].[Courses] ([Course_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Announcements]  WITH CHECK ADD FOREIGN KEY([Teacher_ID])
REFERENCES [dbo].[Teachers] ([Teacher_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD FOREIGN KEY([Prerequisite])
REFERENCES [dbo].[Courses] ([Course_ID])
GO
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD FOREIGN KEY([Teacher_ID])
REFERENCES [dbo].[Teachers] ([Teacher_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Enrolled]  WITH CHECK ADD FOREIGN KEY([Course_ID])
REFERENCES [dbo].[Courses] ([Course_ID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Enrolled]  WITH CHECK ADD FOREIGN KEY([Student_ID])
REFERENCES [dbo].[Students] ([Student_ID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SemesterGPA]  WITH CHECK ADD FOREIGN KEY([Student_ID])
REFERENCES [dbo].[Students] ([Student_ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD FOREIGN KEY([Dept_No])
REFERENCES [dbo].[Departments] ([Dept_No])
ON UPDATE CASCADE
GO
/****** Object:  StoredProcedure [dbo].[add_admin]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[add_admin]
(
	@Admin_ID nvarchar(50),
	@Name nvarchar(50),
	@Gender varchar(10),
	@Email nvarchar(70),
	@PhoneNo nvarchar(20),
	@Password nvarchar(20)
)
AS
	BEGIN
		INSERT INTO [dbo].[Admin]
           (Admin_ID,Name,Gender,Email,PhoneNo,Password)
	     VALUES
           (@Admin_ID,@Name,@Gender,@Email,@PhoneNo,@Password)
	END

GO
/****** Object:  StoredProcedure [dbo].[add_announcement]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[add_announcement]
(	@Announcement nvarchar(300),
	@Teacher_ID nvarchar(50),
	@Course_ID nvarchar(10)
)
AS
	BEGIN
	INSERT INTO [dbo].[Announcements]
           (Announcement,Teacher_ID,Course_ID)
     VALUES
           (@Announcement,@Teacher_ID,@Course_ID)
	END
GO
/****** Object:  StoredProcedure [dbo].[add_course]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[add_course]
(
	@Course_ID nvarchar(10),
	@Course_Name nvarchar(50),
	@Credit_Hours decimal(5,1),
	@Prerequisite nvarchar(10),
	@Teacher_ID nvarchar(50)
)
AS
	BEGIN
		INSERT INTO [dbo].[Courses]
           (Course_ID,Course_Name,Credit_Hours,Prerequisite,Teacher_ID)
	     VALUES
           (@Course_ID,@Course_Name,@Credit_Hours,@Prerequisite,@Teacher_ID)
	END
GO
/****** Object:  StoredProcedure [dbo].[add_notice]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[add_notice]
(
	@Notice nvarchar(400),
	@Notice_For varchar(20)
)
AS
	BEGIN
		INSERT INTO [dbo].[Notices]
           (Notice,Notice_For)
	     VALUES
           (@Notice,@Notice_For)
	END
GO
/****** Object:  StoredProcedure [dbo].[add_student]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[add_student]
(
	@ID nvarchar(50),
    @Name nvarchar(50),
    @Gender varchar(10),
	@Email nvarchar(70),
	@PhoneNo nvarchar(20),
    @Program nvarchar(50),
    @Password nvarchar(20)
)
AS
	BEGIN
		INSERT INTO [dbo].[Students]
           (Student_ID,Name,Gender,Email,PhoneNo,Program,Password)
	     VALUES
           (@ID,@Name,@Gender,@Email,@PhoneNo,@Program,@Password)
	END

GO
/****** Object:  StoredProcedure [dbo].[add_teacher]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[add_teacher]
(
	@ID nvarchar(50),
    @Name nvarchar(50),
    @Gender varchar(10),
	@Email nvarchar(70),
	@PhoneNo nvarchar(20),
	@Password nvarchar(20),
    @Dept_No int
)
AS
	BEGIN
		INSERT INTO [dbo].[Teachers]
			(Teacher_ID,Name,Gender,Email,PhoneNo,Password,Dept_No)
	     VALUES
           (@ID,@Name,@Gender,@Email,@PhoneNo,@Password,@Dept_No)
	END

GO
/****** Object:  StoredProcedure [dbo].[admin_login]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[admin_login]
(
	@ID nvarchar(50),
	@Password nvarchar(20)
)
AS
	BEGIN
		SELECT 'true' FROM Admin_Login_Table WHERE Admin_ID = @ID AND Password = @Password
	END

GO
/****** Object:  StoredProcedure [dbo].[dept_teacher]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[dept_teacher]
(
	@Dept_No nvarchar(50)
)
AS
	BEGIN
		SELECT t.Teacher_ID,t.Name,t.Gender,t.Email,t.PhoneNo,t.Password,d.Dept_Name FROM Teachers t
		INNER JOIN Departments d
		ON t.Dept_No = d.Dept_No
		WHERE d.Dept_No LIKE '%'+@Dept_No+'%';
	END

GO
/****** Object:  StoredProcedure [dbo].[enroll_student]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[enroll_student]
(
	@Course_ID nvarchar(10),
	@Student_ID nvarchar(50),
	@Reg_Date date,
	@Semester nvarchar(15)
)
AS
	BEGIN
		INSERT INTO [dbo].[Enrolled]
		(Course_ID,Student_ID,Reg_Date,Attendence,Grade,Semester)
     VALUES
           (@Course_ID,@Student_ID,@Reg_Date,'99','I',@Semester)
	END
GO
/****** Object:  StoredProcedure [dbo].[program_students]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[program_students]
(
	@Program nvarchar(50)
)
AS
	BEGIN
		SELECT * FROM Students WHERE Program LIKE '%'+@Program+'%';
	END

GO
/****** Object:  StoredProcedure [dbo].[search_course]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[search_course]
(
	@ID nvarchar(50)
)
AS
	BEGIN
		SELECT c.Course_ID,c.Course_Name,c.Credit_Hours,d.Course_Name AS 'Prerequisite',t.Name AS 'Teacher' FROM Courses c
		LEFT JOIN Courses d
		ON c.Prerequisite = d.Course_ID
		INNER JOIN Teachers t
		ON c.Teacher_ID = t.Teacher_ID
		WHERE c.Course_ID like '%'+@ID+'%'
	END
GO
/****** Object:  StoredProcedure [dbo].[search_student]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[search_student]
(
	@ID nvarchar(50)
)
AS
	BEGIN
		SELECT * FROM Students WHERE Student_ID LIKE '%'+@ID+'%'
	END

GO
/****** Object:  StoredProcedure [dbo].[search_teacher]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[search_teacher]
(
	@ID nvarchar(50)
)
AS
	BEGIN
		SELECT t.Teacher_ID,t.Name,t.Gender,t.Email,t.PhoneNo,t.Password,d.Dept_Name FROM Teachers t
		INNER JOIN Departments d
		ON t.Dept_No = d.Dept_No
		WHERE Teacher_ID LIKE '%'+@ID+'%'
	END

GO
/****** Object:  StoredProcedure [dbo].[student_login]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[student_login]
(
	@ID nvarchar(50),
	@Password nvarchar(20)
)
AS
	BEGIN
		SELECT 'true' FROM Student_Login_Table WHERE Student_ID = @ID AND Password = @Password
	END

GO
/****** Object:  StoredProcedure [dbo].[teacher_login]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[teacher_login]
(
	@ID nvarchar(50),
	@Password nvarchar(20)
)
AS
	BEGIN
		SELECT 'TRUE' FROM Teacher_Login_Table WHERE Teacher_ID = @ID AND Password = @Password
	END

GO
/****** Object:  StoredProcedure [dbo].[update_admin]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[update_admin]
(
	@Admin_ID nvarchar(50),
	@Name nvarchar(50),
	@Email nvarchar(70),
	@PhoneNo nvarchar(20),
	@Password nvarchar(20)
)
AS
	BEGIN
		UPDATE Admin
		SET Name = @Name,
			Email = @Email,
			PhoneNo = @PhoneNo,
			Password = @Password
		WHERE Admin_ID = @Admin_ID
	END
GO
/****** Object:  StoredProcedure [dbo].[update_course]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[update_course]
(
	@Course_ID nvarchar(10),
	@Course_Name nvarchar(50),
	@Credit_Hours decimal(5,1),
	@Prerequisite nvarchar(10),
	@Teacher_ID nvarchar(50)
)
AS
	BEGIN
		UPDATE Courses
		SET Course_Name = @Course_Name,
			Credit_Hours = @Credit_Hours,
			Prerequisite = @Prerequisite,
			Teacher_ID = @Teacher_ID
		 WHERE Course_ID = @Course_ID
	END
GO
/****** Object:  StoredProcedure [dbo].[update_student]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[update_student]
(
	@ID nvarchar(50),
	@Name nvarchar(50),
	@Email nvarchar(70),
	@PhoneNo nvarchar(20),
	@Password nvarchar(20)
)
AS
	BEGIN
		UPDATE Students
		SET Name = @Name,
			Email = @Email,
			PhoneNo = @PhoneNo,
			Password = @Password
		WHERE Student_ID = @ID
	END
GO
/****** Object:  StoredProcedure [dbo].[update_teacher]    Script Date: 21-Aug-22 10:50:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[update_teacher]
(
	@ID nvarchar(50),
	@Name nvarchar(50),
	@Email nvarchar(70),
	@PhoneNo nvarchar(20),
	@Password nvarchar(20),
	@Dept_No int
)
AS
	BEGIN
		UPDATE Teachers
		SET Name = @Name,
			Email = @Email,
			PhoneNo = @PhoneNo,
			Password = @Password,
			Dept_No = @Dept_No
		WHERE Teacher_ID = @ID
	END

GO
USE [master]
GO
ALTER DATABASE [dbUniversityPortal_DBMS] SET  READ_WRITE 
GO
