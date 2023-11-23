USE [BD_Roxana_Mancuello]
GO

/****** Object:  Table [dbo].[Direccion]    Script Date: 23/11/2023 11:03:57 ******/
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

ALTER TABLE [dbo].[Direccion]  WITH CHECK ADD  CONSTRAINT [FK__Direccion__Id__3F6663D5] FOREIGN KEY([Id_Alumno])
REFERENCES [dbo].[Alumno] ([Id])
GO

ALTER TABLE [dbo].[Direccion] CHECK CONSTRAINT [FK__Direccion__Id__3F6663D5]
GO

