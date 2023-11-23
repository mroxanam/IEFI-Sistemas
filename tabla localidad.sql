USE [BD_Roxana_Mancuello]
GO

/****** Object:  Table [dbo].[Localidad]    Script Date: 23/11/2023 11:04:31 ******/
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

ALTER TABLE [dbo].[Localidad]  WITH CHECK ADD  CONSTRAINT [FK_Provincia] FOREIGN KEY([Id_Provincia])
REFERENCES [dbo].[Provincia] ([Id])
GO

ALTER TABLE [dbo].[Localidad] CHECK CONSTRAINT [FK_Provincia]
GO

