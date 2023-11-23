USE [BD_Roxana_Mancuello]
GO

/****** Object:  Table [dbo].[Alumno]    Script Date: 23/11/2023 11:02:47 ******/
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

ALTER TABLE [dbo].[Alumno]  WITH CHECK ADD  CONSTRAINT [fk_Localidad] FOREIGN KEY([Id_Localidad])
REFERENCES [dbo].[Localidad] ([Id])
GO

ALTER TABLE [dbo].[Alumno] CHECK CONSTRAINT [fk_Localidad]
GO

