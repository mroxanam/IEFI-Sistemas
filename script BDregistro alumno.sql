USE [master]
GO
/****** Object:  Database [BD_Roxana_Mancuello]    Script Date: 24/11/2023 18:11:32 ******/
CREATE DATABASE [BD_Roxana_Mancuello]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BD_Roxana_Mancuello', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\BD_Roxana_Mancuello.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BD_Roxana_Mancuello_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\BD_Roxana_Mancuello_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BD_Roxana_Mancuello].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET ARITHABORT OFF 
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET RECOVERY FULL 
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET  MULTI_USER 
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BD_Roxana_Mancuello', N'ON'
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET QUERY_STORE = ON
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [BD_Roxana_Mancuello]
GO
/****** Object:  Table [dbo].[Localidad]    Script Date: 24/11/2023 18:11:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localidad](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Id_Provincia] [int] NOT NULL,
 CONSTRAINT [PK_Localidades] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 24/11/2023 18:11:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumno](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NOT NULL,
	[Apellido] [varchar](255) NOT NULL,
	[Dni] [int] NOT NULL,
	[Fecha_Nacimiento] [datetime] NOT NULL,
	[Fecha_Alta] [datetime] NOT NULL,
	[Id_Localidad] [int] NOT NULL,
 CONSTRAINT [PK__Alumnos__3213E83F6167BC7F] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_1]    Script Date: 24/11/2023 18:11:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_1]
AS
SELECT dbo.Alumno.Id, dbo.Alumno.Nombre, dbo.Alumno.Apellido, dbo.Alumno.Dni, dbo.Alumno.Fecha_Nacimiento, dbo.Alumno.Fecha_Alta, dbo.Localidad.Nombre AS Localidad
FROM   dbo.Alumno INNER JOIN
             dbo.Localidad ON dbo.Alumno.Id_Localidad = dbo.Localidad.Id
GO
/****** Object:  Table [dbo].[Provincia]    Script Date: 24/11/2023 18:11:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Provincia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_2]    Script Date: 24/11/2023 18:11:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_2]
AS
SELECT dbo.Localidad.Nombre AS Localidad, dbo.Provincia.Nombre AS provincia
FROM   dbo.Localidad INNER JOIN
             dbo.Provincia ON dbo.Localidad.Id_Provincia = dbo.Provincia.Id
GO
/****** Object:  View [dbo].[View_apellido alumno y nombre alumn loc prov]    Script Date: 24/11/2023 18:11:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_apellido alumno y nombre alumn loc prov]
AS
SELECT dbo.Alumno.Nombre, dbo.Alumno.Apellido, dbo.Localidad.Nombre AS Localidad, dbo.Provincia.Nombre AS Provincia
FROM   dbo.Alumno INNER JOIN
             dbo.Localidad ON dbo.Alumno.Id_Localidad = dbo.Localidad.Id INNER JOIN
             dbo.Provincia ON dbo.Localidad.Id_Provincia = dbo.Provincia.Id
GO
/****** Object:  View [dbo].[views_Nombre loc prov]    Script Date: 24/11/2023 18:11:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[views_Nombre loc prov]
AS
SELECT dbo.Localidad.Id, dbo.Localidad.Nombre, dbo.Provincia.Nombre AS Provincia
FROM   dbo.Localidad INNER JOIN
             dbo.Provincia ON dbo.Localidad.Id_Provincia = dbo.Provincia.Id
GO
/****** Object:  View [dbo].[vistaalumnosvigentes]    Script Date: 24/11/2023 18:11:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vistaalumnosvigentes]
AS
SELECT dbo.Alumnos.id, dbo.Localidad.id AS id_localidad, dbo.Provincia.id AS id_provincia, dbo.Alumnos.Nombre, dbo.Localidad.Nombre AS localidad, dbo.Provincia.Nombre AS provincia, dbo.Alumnos.Apellido
FROM   dbo.Alumnos INNER JOIN
             dbo.Localidad ON dbo.Alumnos.id_Localidad = dbo.Localidad.id INNER JOIN
             dbo.Provincia ON dbo.Localidad.id_Provincia = dbo.Provincia.id
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 24/11/2023 18:11:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Direccion](
	[Id_Direccion] [int] NOT NULL,
	[Calle] [varchar](100) NOT NULL,
	[Numero] [int] NOT NULL,
	[CodigoPostal] [varchar](10) NOT NULL,
	[Id_Alumno] [int] NOT NULL,
 CONSTRAINT [PK__Direccio__535FD6113EA68330] PRIMARY KEY CLUSTERED 
(
	[Id_Direccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Alumno] ON 

INSERT [dbo].[Alumno] ([Id], [Nombre], [Apellido], [Dni], [Fecha_Nacimiento], [Fecha_Alta], [Id_Localidad]) VALUES (1, N'ROMINA', N'MEDINA', 40657897, CAST(N'1984-06-19T00:00:00.000' AS DateTime), CAST(N'2021-10-07T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Alumno] ([Id], [Nombre], [Apellido], [Dni], [Fecha_Nacimiento], [Fecha_Alta], [Id_Localidad]) VALUES (2, N'JORGE', N'BARRIOS', 25765323, CAST(N'1975-12-23T00:00:00.000' AS DateTime), CAST(N'2020-10-22T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Alumno] ([Id], [Nombre], [Apellido], [Dni], [Fecha_Nacimiento], [Fecha_Alta], [Id_Localidad]) VALUES (5, N'Valeria', N'Gomez', 23678954, CAST(N'1970-02-12T00:00:00.000' AS DateTime), CAST(N'2022-01-09T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Alumno] ([Id], [Nombre], [Apellido], [Dni], [Fecha_Nacimiento], [Fecha_Alta], [Id_Localidad]) VALUES (1016, N'FLAVIA', N'LUNA', 2089832, CAST(N'2023-10-26T13:17:41.803' AS DateTime), CAST(N'2023-10-26T13:17:41.777' AS DateTime), 5)
INSERT [dbo].[Alumno] ([Id], [Nombre], [Apellido], [Dni], [Fecha_Nacimiento], [Fecha_Alta], [Id_Localidad]) VALUES (1018, N'DANIEL', N'MIULER', 30564789, CAST(N'1980-01-01T19:19:12.000' AS DateTime), CAST(N'2023-10-30T19:19:12.000' AS DateTime), 6)
INSERT [dbo].[Alumno] ([Id], [Nombre], [Apellido], [Dni], [Fecha_Nacimiento], [Fecha_Alta], [Id_Localidad]) VALUES (2021, N'Dario', N'Gomez', 43456789, CAST(N'1970-02-12T00:00:00.000' AS DateTime), CAST(N'2022-01-09T00:00:00.000' AS DateTime), 6)
INSERT [dbo].[Alumno] ([Id], [Nombre], [Apellido], [Dni], [Fecha_Nacimiento], [Fecha_Alta], [Id_Localidad]) VALUES (2023, N'DANIELA', N'Forenzo', 30564789, CAST(N'1905-06-06T00:00:00.000' AS DateTime), CAST(N'1905-06-07T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[Alumno] ([Id], [Nombre], [Apellido], [Dni], [Fecha_Nacimiento], [Fecha_Alta], [Id_Localidad]) VALUES (2024, N'Marianela', N'Lorenzo', 26998554, CAST(N'1980-01-01T19:19:12.000' AS DateTime), CAST(N'2023-10-30T19:19:12.000' AS DateTime), 9)
SET IDENTITY_INSERT [dbo].[Alumno] OFF
GO
INSERT [dbo].[Direccion] ([Id_Direccion], [Calle], [Numero], [CodigoPostal], [Id_Alumno]) VALUES (1, N'Flores', 333, N'4532', 1)
INSERT [dbo].[Direccion] ([Id_Direccion], [Calle], [Numero], [CodigoPostal], [Id_Alumno]) VALUES (2, N'Tacuari', 1895, N'1617', 2)
INSERT [dbo].[Direccion] ([Id_Direccion], [Calle], [Numero], [CodigoPostal], [Id_Alumno]) VALUES (3, N'Sarmiento', 231, N'678', 5)
INSERT [dbo].[Direccion] ([Id_Direccion], [Calle], [Numero], [CodigoPostal], [Id_Alumno]) VALUES (4, N'San martin', 902, N'5000', 1016)
INSERT [dbo].[Direccion] ([Id_Direccion], [Calle], [Numero], [CodigoPostal], [Id_Alumno]) VALUES (5, N'Dias', 3216, N'5184', 1018)
INSERT [dbo].[Direccion] ([Id_Direccion], [Calle], [Numero], [CodigoPostal], [Id_Alumno]) VALUES (6, N'America', 23, N'1617', 2021)
INSERT [dbo].[Direccion] ([Id_Direccion], [Calle], [Numero], [CodigoPostal], [Id_Alumno]) VALUES (7, N'Galvez', 8760, N'5184', 2023)
GO
SET IDENTITY_INSERT [dbo].[Localidad] ON 

INSERT [dbo].[Localidad] ([Id], [Nombre], [Id_Provincia]) VALUES (1, N'Moreno', 1)
INSERT [dbo].[Localidad] ([Id], [Nombre], [Id_Provincia]) VALUES (2, N'Tigre', 2)
INSERT [dbo].[Localidad] ([Id], [Nombre], [Id_Provincia]) VALUES (4, N'Famatina', 3)
INSERT [dbo].[Localidad] ([Id], [Nombre], [Id_Provincia]) VALUES (5, N'San Fernando', 4)
INSERT [dbo].[Localidad] ([Id], [Nombre], [Id_Provincia]) VALUES (6, N'Merlo', 5)
INSERT [dbo].[Localidad] ([Id], [Nombre], [Id_Provincia]) VALUES (8, N'La Falda', 6)
INSERT [dbo].[Localidad] ([Id], [Nombre], [Id_Provincia]) VALUES (9, N'Giardino', 7)
INSERT [dbo].[Localidad] ([Id], [Nombre], [Id_Provincia]) VALUES (10, N'Soto', 8)
INSERT [dbo].[Localidad] ([Id], [Nombre], [Id_Provincia]) VALUES (1012, N'Dolores', 9)
INSERT [dbo].[Localidad] ([Id], [Nombre], [Id_Provincia]) VALUES (2015, N'HuertaGrande', 11)
INSERT [dbo].[Localidad] ([Id], [Nombre], [Id_Provincia]) VALUES (2016, N'San Miguel', 12)
INSERT [dbo].[Localidad] ([Id], [Nombre], [Id_Provincia]) VALUES (2017, N'Famatina', 6)
SET IDENTITY_INSERT [dbo].[Localidad] OFF
GO
SET IDENTITY_INSERT [dbo].[Provincia] ON 

INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (1, N'SALTA')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (2, N'JUJUY')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (3, N'CHACO')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (4, N'FORMOSA')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (5, N'BUENOS AIRES')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (6, N'LA RIOJA')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (7, N'SANTIAGO DEL ESTERO')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (8, N'SAN LUIS')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (9, N'LA PAMPA')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (11, N'CORRIENTES')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (12, N'CHUBUT')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (1011, N'Tierra Del Fuego')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (1014, N'CHACO')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (2011, N'Jujuy')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (2014, N'Chaco')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (2022, N'Catamarca')
INSERT [dbo].[Provincia] ([Id], [Nombre]) VALUES (2026, N'Buenos Aires')
SET IDENTITY_INSERT [dbo].[Provincia] OFF
GO
ALTER TABLE [dbo].[Alumno]  WITH CHECK ADD  CONSTRAINT [fk_Localidad] FOREIGN KEY([Id_Localidad])
REFERENCES [dbo].[Localidad] ([Id])
GO
ALTER TABLE [dbo].[Alumno] CHECK CONSTRAINT [fk_Localidad]
GO
ALTER TABLE [dbo].[Direccion]  WITH CHECK ADD  CONSTRAINT [FK__Direccion__Id__3F6663D5] FOREIGN KEY([Id_Alumno])
REFERENCES [dbo].[Alumno] ([Id])
GO
ALTER TABLE [dbo].[Direccion] CHECK CONSTRAINT [FK__Direccion__Id__3F6663D5]
GO
ALTER TABLE [dbo].[Localidad]  WITH CHECK ADD  CONSTRAINT [FK_Provincia] FOREIGN KEY([Id_Provincia])
REFERENCES [dbo].[Provincia] ([Id])
GO
ALTER TABLE [dbo].[Localidad] CHECK CONSTRAINT [FK_Provincia]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarAlumno]    Script Date: 24/11/2023 18:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ActualizarAlumno]

    @Id INT,
    @Nombre VARCHAR(255),
    @Apellido VARCHAR(255),
    @DNI INT,
    @Fecha_Nacimiento DATETIME,
    @Fecha_Alta DATETIME,
	@Id_Localidad int 
as
BEGIN
   
    UPDATE Alumno
    SET Nombre = @Nombre,
        Apellido = @Apellido,
        DNI = @DNI,
        Fecha_Nacimiento = @Fecha_Nacimiento,
        Fecha_Alta = @Fecha_Alta,
		Id_Localidad=@Id_Localidad
    WHERE Id = @Id;
END









GO
/****** Object:  StoredProcedure [dbo].[ActualizarLocalidad]    Script Date: 24/11/2023 18:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarLocalidad]
    @Id INT,
    @Nombre NVARCHAR(255),
	@Id_Provincia int
    
AS
BEGIN
    UPDATE Localidad
    SET Nombre = @Nombre,
	Id_Provincia = @Id_Provincia
        
    WHERE Id = @Id;
END
GO
/****** Object:  StoredProcedure [dbo].[ActualizarProvincia]    Script Date: 24/11/2023 18:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActualizarProvincia]
    @Id INT,
    @Nombre VARCHAR(255)
    
AS
BEGIN
    UPDATE Localidad
    SET Nombre = @Nombre
        
    WHERE Id = @Id;
END
GO
/****** Object:  StoredProcedure [dbo].[buscarAlumno]    Script Date: 24/11/2023 18:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[buscarAlumno]
@Nombre varchar(255),
@Apellido varchar(255)
as
begin
select *
from Alumno
where  Nombre LIKE '%' + @Nombre+ '%' AND
       
        Apellido LIKE '%' + @Apellido + '%' 
       
end


  
GO
/****** Object:  StoredProcedure [dbo].[buscarLocalidad]    Script Date: 24/11/2023 18:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[buscarLocalidad]
@Nombre varchar(255)
as
begin
select*
from Localidad
WHERE @Nombre IS NULL OR Nombre LIKE '%' + @Nombre + '%' 
       
  END      
GO
/****** Object:  StoredProcedure [dbo].[buscarProvincia]    Script Date: 24/11/2023 18:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[buscarProvincia]
@Nombre varchar(255)
as
begin
Select * from Provincia
where 
        Nombre LIKE '%' + @Nombre + '%';
end

GO
/****** Object:  StoredProcedure [dbo].[EliminarAlumno]    Script Date: 24/11/2023 18:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarAlumno]
    @Id INT
AS
BEGIN
    DELETE FROM Alumno
    WHERE Id = @Id;
END
GO
/****** Object:  StoredProcedure [dbo].[EliminarLocalidad]    Script Date: 24/11/2023 18:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EliminarLocalidad]
    @Id INT
AS
BEGIN
    DELETE FROM Localidad
    WHERE Id = @Id;
END
GO
/****** Object:  StoredProcedure [dbo].[Eliminarprovincia]    Script Date: 24/11/2023 18:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Eliminarprovincia]
    @Id INT
AS
BEGIN
    DELETE FROM Provincia
    WHERE Id = @Id;
END
GO
/****** Object:  StoredProcedure [dbo].[GuardarAlumno]    Script Date: 24/11/2023 18:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GuardarAlumno]

@Nombre varchar(255),
@Apellido varchar(255),
@Dni int,
@Fecha_Nacimiento datetime,
@Fecha_Alta datetime,
@Id_Localidad int


AS
BEGIN
    
  
    

Insert into Alumno(Nombre,Apellido,Dni,Fecha_Nacimiento,Fecha_Alta,id_Localidad)
values (@Nombre,@Apellido,@Dni,@Fecha_Nacimiento,@Fecha_Alta,@Id_Localidad)
End

GO
/****** Object:  StoredProcedure [dbo].[GuardarLocalidad]    Script Date: 24/11/2023 18:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GuardarLocalidad]

@Nombre varchar (255),
@Id_Provincia int
AS
begin
  
    
insert into Localidad(Nombre,Id_Provincia)
values (@Nombre,@Id_Provincia)
END
GO
/****** Object:  StoredProcedure [dbo].[GuardarProvincia]    Script Date: 24/11/2023 18:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GuardarProvincia]

@Nombre varchar(255)
AS
begin
IF NOT EXISTS (SELECT 1 FROM Provincia WHERE Nombre = @Nombre)


insert into Provincia(Nombre)
values (@Nombre)
end
GO
/****** Object:  StoredProcedure [dbo].[localidadprovincianombre]    Script Date: 24/11/2023 18:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[localidadprovincianombre]
as
SELECT dbo.Localidad.Id, dbo.Localidad.Nombre, dbo.Provincia.Nombre AS Provincia
FROM   dbo.Localidad INNER JOIN
             dbo.Provincia ON dbo.Localidad.Id_Provincia = dbo.Provincia.Id
GO
/****** Object:  StoredProcedure [dbo].[Mostraralumno]    Script Date: 24/11/2023 18:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Mostraralumno]
AS

BEGIN

select Id,Nombre,Apellido,Dni,Fecha_Nacimiento,Fecha_Alta,Id_Localidad
from Alumno;
END; 
GO
/****** Object:  StoredProcedure [dbo].[mostraralumnoinner]    Script Date: 24/11/2023 18:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[mostraralumnoinner]
as
SELECT dbo.Alumno.Id, dbo.Alumno.Nombre, dbo.Alumno.Apellido, dbo.Alumno.Dni, dbo.Alumno.Fecha_Nacimiento, dbo.Alumno.Fecha_Alta, dbo.Localidad.Nombre AS Localidad
FROM   dbo.Alumno INNER JOIN
             dbo.Localidad ON dbo.Alumno.Id_Localidad = dbo.Localidad.Id
GO
/****** Object:  StoredProcedure [dbo].[Mostrarlocalidad]    Script Date: 24/11/2023 18:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Mostrarlocalidad]
AS

BEGIN

select Id,Nombre,Id_Provincia
from Localidad;
END; 
GO
/****** Object:  StoredProcedure [dbo].[mostrarlocalidadprovinciainner]    Script Date: 24/11/2023 18:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[mostrarlocalidadprovinciainner]
as
SELECT dbo.Localidad.Nombre AS localidad, dbo.Provincia.Nombre AS provincia
FROM   dbo.Localidad INNER JOIN
             dbo.Provincia ON dbo.Localidad.Id_Provincia = dbo.Provincia.Id
GO
/****** Object:  StoredProcedure [dbo].[Mostrarprovincia]    Script Date: 24/11/2023 18:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Mostrarprovincia]
AS

BEGIN

select Id,Nombre
from Provincia;
END; 
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Alumno"
            Begin Extent = 
               Top = 9
               Left = 57
               Bottom = 206
               Right = 303
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "Localidad"
            Begin Extent = 
               Top = 9
               Left = 360
               Bottom = 179
               Right = 582
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Localidad"
            Begin Extent = 
               Top = 9
               Left = 57
               Bottom = 179
               Right = 279
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Provincia"
            Begin Extent = 
               Top = 9
               Left = 336
               Bottom = 152
               Right = 558
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Alumno"
            Begin Extent = 
               Top = 9
               Left = 57
               Bottom = 206
               Right = 303
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Localidad"
            Begin Extent = 
               Top = 9
               Left = 360
               Bottom = 179
               Right = 582
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Provincia"
            Begin Extent = 
               Top = 9
               Left = 639
               Bottom = 152
               Right = 861
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_apellido alumno y nombre alumn loc prov'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_apellido alumno y nombre alumn loc prov'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Localidad"
            Begin Extent = 
               Top = 9
               Left = 57
               Bottom = 179
               Right = 279
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Provincia"
            Begin Extent = 
               Top = 9
               Left = 336
               Bottom = 152
               Right = 558
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'views_Nombre loc prov'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'views_Nombre loc prov'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[10] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Alumnos"
            Begin Extent = 
               Top = 9
               Left = 57
               Bottom = 206
               Right = 303
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Localidad"
            Begin Extent = 
               Top = 14
               Left = 402
               Bottom = 184
               Right = 624
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Provincia"
            Begin Extent = 
               Top = 7
               Left = 785
               Bottom = 150
               Right = 1007
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1000
         Width = 1510
         Width = 1000
         Width = 1000
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaalumnosvigentes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaalumnosvigentes'
GO
USE [master]
GO
ALTER DATABASE [BD_Roxana_Mancuello] SET  READ_WRITE 
GO
