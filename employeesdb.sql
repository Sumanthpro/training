USE [master]
GO
/****** Object:  Database [employees]    Script Date: 17-10-2024 00:25:50 ******/
CREATE DATABASE [employees]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'employees', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\employees.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'employees_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\employees_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [employees] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [employees].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [employees] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [employees] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [employees] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [employees] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [employees] SET ARITHABORT OFF 
GO
ALTER DATABASE [employees] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [employees] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [employees] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [employees] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [employees] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [employees] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [employees] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [employees] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [employees] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [employees] SET  ENABLE_BROKER 
GO
ALTER DATABASE [employees] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [employees] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [employees] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [employees] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [employees] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [employees] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [employees] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [employees] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [employees] SET  MULTI_USER 
GO
ALTER DATABASE [employees] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [employees] SET DB_CHAINING OFF 
GO
ALTER DATABASE [employees] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [employees] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [employees] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [employees] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [employees] SET QUERY_STORE = ON
GO
ALTER DATABASE [employees] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [employees]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 17-10-2024 00:25:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[DepartmentID] [int] NOT NULL,
	[DepartmentName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 17-10-2024 00:25:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[DepartmentID] [int] NULL,
	[Salary] [decimal](18, 2) NULL,
	[HireDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transfer]    Script Date: 17-10-2024 00:25:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transfer](
	[employeeid] [int] NULL,
	[olddepartmentid] [int] NULL,
	[newdepartmentid] [int] NULL,
	[tranferdate] [date] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Departments] ([DepartmentID])
GO
/****** Object:  StoredProcedure [dbo].[revertproc]    Script Date: 17-10-2024 00:25:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	create procedure [dbo].[revertproc]
@empid int,@oldid int,@newid int
as
begin
select @oldid=newdepartmentid,@newid=olddepartmentid from transfer where
        EmployeeID=@empid;
      declare @newsal decimal(18,2)       
 begin transaction 
  begin try
    if(not exists(select DepartmentID from Departments where DepartmentID=@newid))
	   throw 50000,'dept not exisit',1
	     
		if(@oldid <> @newid)
		begin
		  insert into transfer
		   select Employeeid,departmentid,@newid,GETDATE()
		   from Employees where EmployeeID=@empid;
		 end
		 update Employees 
		 set DepartmentID=@newid,
		 Salary=@newsal
		 where  EmployeeID=@empid;
	  commit transaction;
	  end try
	begin catch
	  rollback  transaction;
	    print concat('error line is:',' ',error_line())
		print 'error message is :'+ error_message()
		print concat('error servieraity is :',' ',error_state())
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_AddEmployee]    Script Date: 17-10-2024 00:25:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_AddEmployee]
@employeeid int ,
@newfirstname varchar(max),
@newlastname varchar(max),
@newdepartmentid int,
@newsalary decimal(18,2)
as
  
   begin
	  
	  begin transaction;
	   begin try
	     if(not exists(select *from Departments where DepartmentID=@newdepartmentid))
		 throw 600444,'entering into catch block',1;
		 update Employees 
		 set EmployeeID=@employeeid,FirstName=@newfirstname,
		 LastName=@newlastname,DepartmentID=@newdepartmentid,
		 Salary=@newsalary
		 where departmentid= @newdepartmentid;
	  commit transaction;
	  end try
	begin catch
	  rollback  transaction;
	    print concat('error line is:',' ',error_line())
		print 'error message is :'+error_message()
		print concat('error servieraity is :',' ',error_state())
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_updatedtransfer]    Script Date: 17-10-2024 00:25:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_updatedtransfer]
@empid int,@oldid int,@newid int,@newsal decimal(18,2)
as
begin
select @oldid=DepartmentID from employees where
        EmployeeID=@empid;
              
 begin transaction 
  begin try
    if(not exists(select DepartmentID from Departments where DepartmentID=@newid))
	   throw 50000,'dept not exisit',1
	     if(not exists(select * from Employees where EmployeeID=@empid and  @newsal between 1.1*Salary and 1.3*Salary ))
		throw 50000,'entering into catch block',1;
		if(@oldid <> @newid)
		begin
		  insert into transfer
		   select Employeeid,departmentid,@newid,GETDATE()
		   from Employees where EmployeeID=@empid;
		 end
		 update Employees 
		 set DepartmentID=@newid,
		 Salary=@newsal
		 where  EmployeeID=@empid;
	  commit transaction;
	  end try
	begin catch
	  rollback  transaction;
	    print concat('error line is:',' ',error_line())
		print 'error message is :'+ error_message()
		print concat('error servieraity is :',' ',error_state())
	end catch
end
GO
/****** Object:  StoredProcedure [dbo].[sp_updateemployeeinfo]    Script Date: 17-10-2024 00:25:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_updateemployeeinfo]
@employeeid int ,
@newfirstname varchar(max),
@newlastname varchar(max),
@newdepartmentid int,
@newsalary decimal(18,2)
as
  
   begin
	  
	  begin transaction;
	   begin try
	   if(not exists(select DepartmentID from Departments where DepartmentID=@newdepartmentid))
	   throw 50000,'dept not exisit',1
	     if(not exists(select * from Employees where EmployeeID=@employeeid and  @newsalary between 1.1*Salary and 1.3*Salary ))
		throw 50000,'entering into catch block',1;
		 update Employees 
		 set DepartmentID=@newdepartmentid,
		 Salary=@newsalary
		 where  EmployeeID=@employeeid;
	  commit transaction;
	  end try
	begin catch
	  rollback  transaction;
	    print concat('error line is:',' ',error_line())
		print 'error message is :'+ error_message()
		print concat('error servieraity is :',' ',error_state())
	end catch
end
GO
USE [master]
GO
ALTER DATABASE [employees] SET  READ_WRITE 
GO
