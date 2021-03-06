USE [master]
GO
/****** Object:  Database [stagiaire]    Script Date: 11/03/2022 14:23:22 ******/
CREATE DATABASE [stagiaire]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'stagiaire', FILENAME = N'C:\New folder\internsMangmentDB\stagiaire_backup_db\stagiaire_backup_db\backupdb\stagiaire.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'stagiaire_log', FILENAME = N'C:\New folder\internsMangmentDB\stagiaire_backup_db\stagiaire_backup_db\backupdb\stagiaire_log.ldf' , SIZE = 3520KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [stagiaire] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [stagiaire].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [stagiaire] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [stagiaire] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [stagiaire] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [stagiaire] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [stagiaire] SET ARITHABORT OFF 
GO
ALTER DATABASE [stagiaire] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [stagiaire] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [stagiaire] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [stagiaire] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [stagiaire] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [stagiaire] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [stagiaire] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [stagiaire] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [stagiaire] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [stagiaire] SET  DISABLE_BROKER 
GO
ALTER DATABASE [stagiaire] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [stagiaire] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [stagiaire] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [stagiaire] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [stagiaire] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [stagiaire] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [stagiaire] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [stagiaire] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [stagiaire] SET  MULTI_USER 
GO
ALTER DATABASE [stagiaire] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [stagiaire] SET DB_CHAINING OFF 
GO
ALTER DATABASE [stagiaire] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [stagiaire] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [stagiaire] SET DELAYED_DURABILITY = DISABLED 
GO
USE [stagiaire]
GO
/****** Object:  User [admin]    Script Date: 11/03/2022 14:23:22 ******/
CREATE USER [admin] FOR LOGIN [admin] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [admin]
GO
ALTER ROLE [db_datareader] ADD MEMBER [admin]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [admin]
GO
/****** Object:  Table [dbo].[acc]    Script Date: 11/03/2022 14:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[acc](
	[id] [int] NOT NULL,
	[nom] [varchar](50) NULL,
	[prenom] [varchar](50) NULL,
	[specialite] [varchar](100) NULL,
	[Du] [date] NULL,
	[Au] [date] NULL,
	[ecole] [varchar](100) NULL,
	[observation] [varchar](50) NULL,
	[dateD] [date] NULL,
	[Service] [varchar](50) NULL,
	[sexe] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[accinfo]    Script Date: 11/03/2022 14:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[accinfo](
	[id] [int] NOT NULL,
	[info] [varchar](200) NULL,
	[etat] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[appsettings]    Script Date: 11/03/2022 14:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[appsettings](
	[nbstg] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[archive]    Script Date: 11/03/2022 14:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[archive](
	[idd] [int] NULL,
	[nom] [varchar](50) NULL,
	[prenom] [varchar](50) NULL,
	[specialite] [varchar](100) NULL,
	[Du] [date] NULL,
	[Au] [date] NULL,
	[ecole] [varchar](100) NULL,
	[observation] [varchar](50) NULL,
	[dateD] [date] NULL,
	[sexe] [varchar](1) NULL,
	[id] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[archiveacc]    Script Date: 11/03/2022 14:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[archiveacc](
	[idd] [int] NULL,
	[nom] [varchar](50) NULL,
	[prenom] [varchar](50) NULL,
	[specialite] [varchar](100) NULL,
	[Du] [date] NULL,
	[Au] [date] NULL,
	[ecole] [varchar](100) NULL,
	[observation] [varchar](50) NULL,
	[dateD] [date] NULL,
	[Service] [varchar](50) NULL,
	[sexe] [varchar](1) NULL,
	[id] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[archiveinfo]    Script Date: 11/03/2022 14:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[archiveinfo](
	[idd] [int] NULL,
	[info] [varchar](200) NULL,
	[etat] [varchar](1) NULL,
	[id] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[notif]    Script Date: 11/03/2022 14:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notif](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[value1] [varchar](200) NULL,
	[value2] [varchar](200) NULL,
	[senderid] [int] NULL,
	[popedby] [varchar](200) NULL,
	[notiftype] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reseter]    Script Date: 11/03/2022 14:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reseter](
	[newid] [int] IDENTITY(1,1) NOT NULL,
	[oldid] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stagiaire]    Script Date: 11/03/2022 14:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stagiaire](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nom] [varchar](50) NULL,
	[prenom] [varchar](50) NULL,
	[specialite] [varchar](100) NULL,
	[Du] [date] NULL,
	[Au] [date] NULL,
	[ecole] [varchar](100) NULL,
	[observation] [varchar](50) NULL,
	[dateD] [date] NULL,
	[sexe] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[test]    Script Date: 11/03/2022 14:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test](
	[x] [int] IDENTITY(1,1) NOT NULL,
	[d] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userE]    Script Date: 11/03/2022 14:23:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[mdp] [varchar](50) NULL,
	[nom] [varchar](50) NULL,
	[Admintype] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[accinfo]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[acc] ([id])
GO
ALTER TABLE [dbo].[accinfo]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[acc] ([id])
GO
ALTER TABLE [dbo].[accinfo]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[acc] ([id])
GO
ALTER TABLE [dbo].[accinfo]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[acc] ([id])
GO
ALTER TABLE [dbo].[accinfo]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[acc] ([id])
GO
ALTER TABLE [dbo].[accinfo]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[acc] ([id])
GO
ALTER TABLE [dbo].[accinfo]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[acc] ([id])
GO
ALTER TABLE [dbo].[accinfo]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[acc] ([id])
GO
ALTER TABLE [dbo].[notif]  WITH CHECK ADD  CONSTRAINT [ch1] CHECK  (([notiftype]='Info' OR [notiftype]='Error' OR [notiftype]='Warning' OR [notiftype]='Success'))
GO
ALTER TABLE [dbo].[notif] CHECK CONSTRAINT [ch1]
GO
USE [master]
GO
ALTER DATABASE [stagiaire] SET  READ_WRITE 
GO
