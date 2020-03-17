USE [master]
GO
/****** Object:  Database [Saludos]    Script Date: 03/16/2020 7:08:36 p. m. ******/
CREATE DATABASE [Saludos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Saludos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\Saludos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Saludos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\Saludos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Saludos] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Saludos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Saludos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Saludos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Saludos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Saludos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Saludos] SET ARITHABORT OFF 
GO
ALTER DATABASE [Saludos] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Saludos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Saludos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Saludos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Saludos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Saludos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Saludos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Saludos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Saludos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Saludos] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Saludos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Saludos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Saludos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Saludos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Saludos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Saludos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Saludos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Saludos] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Saludos] SET  MULTI_USER 
GO
ALTER DATABASE [Saludos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Saludos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Saludos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Saludos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Saludos] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Saludos] SET QUERY_STORE = OFF
GO
USE [Saludos]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Saludos]
GO
/****** Object:  Table [dbo].[Mensajes]    Script Date: 03/16/2020 7:08:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mensajes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Mensaje] [varchar](500) NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_Mensajes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Saludos] SET  READ_WRITE 
GO
