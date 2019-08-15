USE [master]
GO

/****** Object:  Database [kiemtragiuaki]    Script Date: 08/15/2019 10:11:30 ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'kiemtragiuaki')
DROP DATABASE [kiemtragiuaki]
GO

USE [master]
GO

/****** Object:  Database [kiemtragiuaki]    Script Date: 08/15/2019 10:11:30 ******/
CREATE DATABASE [kiemtragiuaki] ON  PRIMARY 
( NAME = N'kiemtragiuaki', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\kiemtragiuaki.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'kiemtragiuaki_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\kiemtragiuaki_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [kiemtragiuaki] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [kiemtragiuaki].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [kiemtragiuaki] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [kiemtragiuaki] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [kiemtragiuaki] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [kiemtragiuaki] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [kiemtragiuaki] SET ARITHABORT OFF 
GO

ALTER DATABASE [kiemtragiuaki] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [kiemtragiuaki] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [kiemtragiuaki] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [kiemtragiuaki] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [kiemtragiuaki] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [kiemtragiuaki] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [kiemtragiuaki] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [kiemtragiuaki] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [kiemtragiuaki] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [kiemtragiuaki] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [kiemtragiuaki] SET  DISABLE_BROKER 
GO

ALTER DATABASE [kiemtragiuaki] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [kiemtragiuaki] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [kiemtragiuaki] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [kiemtragiuaki] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [kiemtragiuaki] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [kiemtragiuaki] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [kiemtragiuaki] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [kiemtragiuaki] SET  READ_WRITE 
GO

ALTER DATABASE [kiemtragiuaki] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [kiemtragiuaki] SET  MULTI_USER 
GO

ALTER DATABASE [kiemtragiuaki] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [kiemtragiuaki] SET DB_CHAINING OFF 
GO

