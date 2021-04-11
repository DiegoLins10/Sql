USE MASTER
GO
DROP DATABASE [Departamento]
GO
CREATE DATABASE [Departamento]
GO
USE [Departamento]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 02/25/2018 20:31:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Departamento]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Departamento](
	[IdDepto] [int] NOT NULL,
	[NomeDepto] [varchar](15) NOT NULL,
	[Gerente] [int] NOT NULL,
	[Divisao] [varchar](10) NOT NULL,
	[Local] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDepto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Departamento] ([IdDepto], [NomeDepto], [Gerente], [Divisao], [Local]) VALUES (10, N'DIRETORIA', 1, N'SUDOESTE', N'SAO PAULO')
INSERT [dbo].[Departamento] ([IdDepto], [NomeDepto], [Gerente], [Divisao], [Local]) VALUES (20, N'ESTOQUE', 101, N'SUDOESTE', N'CAMPINAS')
INSERT [dbo].[Departamento] ([IdDepto], [NomeDepto], [Gerente], [Divisao], [Local]) VALUES (30, N'TI', 2, N'SUDOESTE', N'RIBEIRAO')
INSERT [dbo].[Departamento] ([IdDepto], [NomeDepto], [Gerente], [Divisao], [Local]) VALUES (40, N'VENDAS', 102, N'SUDOESTE', N'JUNDIAI')
INSERT [dbo].[Departamento] ([IdDepto], [NomeDepto], [Gerente], [Divisao], [Local]) VALUES (50, N'COMPRAS', 3, N'SUDOESTE', N'SAO PAULO')
INSERT [dbo].[Departamento] ([IdDepto], [NomeDepto], [Gerente], [Divisao], [Local]) VALUES (60, N'RH', 103, N'SUDOESTE', N'COTIA')
/****** Object:  Table [dbo].[Empregado]    Script Date: 02/25/2018 20:31:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empregado]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Empregado](
	[IdEmpregado] [int] NOT NULL,
	[NomeEmpregado] [varchar](20) NOT NULL,
	[IdDepto] [int] NULL,
	[Cargo] [varchar](6) NOT NULL,
	[Tempo_Emp] [int] NULL,
	[Salario] [decimal](10, 2) NULL,
	[Comissao] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEmpregado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (1, N'Alice', 10, N'GER', 5, CAST(15000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (2, N'Sophia', 20, N'GER', 6, CAST(15000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (3, N'Helena', 30, N'GER', 6, CAST(15000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (4, N'Valentina', 40, N'GER', 9, CAST(15000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (5, N'Laura', 50, N'GER', 5, CAST(15000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (6, N'Isabella', 60, N'GER', 8, CAST(15000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (7, N'Manuela', 10, N'ADM', 7, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (8, N'Júlia', 20, N'ADM', 5, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (9, N'Heloísa', 30, N'ADM', 7, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (10, N'Luiza', 40, N'VEND', 5, CAST(3500.00 AS Decimal(10, 2)), CAST(1150.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (11, N'Maria Luiza', 50, N'ADM', 11, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (12, N'Lorena', 60, N'ADM', 6, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (13, N'Lívia', 10, N'ADM', 5, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (14, N'Giovanna', 20, N'ADM', 8, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (15, N'Maria Eduarda', 30, N'ADM', 13, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (16, N'Beatriz', 40, N'VEND', 7, CAST(3500.00 AS Decimal(10, 2)), CAST(1230.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (17, N'Maria Clara', 50, N'ADM', 11, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (18, N'Cecília', 60, N'ADM', 7, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (19, N'Eloá', 10, N'ADM', 4, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (20, N'Lara', 20, N'ADM', 4, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (21, N'Maria Júlia', 30, N'ADM', 11, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (22, N'Isadora', 40, N'VEND', 7, CAST(3500.00 AS Decimal(10, 2)), CAST(1290.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (23, N'Mariana', 50, N'AUX', 7, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (24, N'Emanuelly', 60, N'AUX', 9, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (25, N'Ana Júlia', 10, N'AUX', 9, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (26, N'Ana Luiza', 20, N'AUX', 9, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (27, N'Ana Clara', 30, N'AUX', 9, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (28, N'Melissa', 40, N'VEND', 7, CAST(3500.00 AS Decimal(10, 2)), CAST(1350.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (29, N'Yasmin', 50, N'ADM', 6, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (30, N'Maria Alice', 60, N'ATEND', 11, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (31, N'Isabelly', 10, N'ATEND', 8, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (32, N'Lavínia', 20, N'ATEND', 7, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (33, N'Esther', 30, N'ATEND', 6, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (34, N'Sarah', 40, N'ATEND', 5, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (35, N'Elisa', 50, N'ATEND', 5, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (36, N'Antonella', 60, N'ADM', 9, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (37, N'Rafaela', 10, N'AUX', 7, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (38, N'Maria Cecília', 20, N'AUX', 13, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (39, N'Liz', 30, N'ADM', 3, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (40, N'Marina', 40, N'VEND', 6, CAST(3500.00 AS Decimal(10, 2)), CAST(1460.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (41, N'Nicole', 50, N'AUX', 6, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (42, N'Maitê', 60, N'ADM', 5, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (43, N'Isis', 10, N'VEND', 4, CAST(3500.00 AS Decimal(10, 2)), CAST(1470.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (44, N'Alícia', 20, N'ATEND', 6, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (45, N'Luna', 30, N'ATEND', 4, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (46, N'Rebeca', 40, N'VEND', 6, CAST(3500.00 AS Decimal(10, 2)), CAST(1520.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (47, N'Agatha', 50, N'AUX', 6, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (48, N'Letícia', 60, N'AUX', 7, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (49, N'Maria-', 10, N'AUX', 6, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (50, N'Gabriela', 20, N'AUX', 8, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (51, N'Ana Laura', 30, N'ADM', 9, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (52, N'Catarina', 40, N'VEND', 8, CAST(3500.00 AS Decimal(10, 2)), CAST(1600.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (53, N'Clara', 50, N'ADM', 5, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (54, N'Ana Beatriz', 60, N'ADM', 11, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (55, N'Vitória', 10, N'ADM', 7, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (56, N'Olívia', 20, N'AUX', 6, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (57, N'Maria Fernanda', 30, N'AUX', 14, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (58, N'Emilly', 40, N'VEND', 6, CAST(3500.00 AS Decimal(10, 2)), CAST(1640.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (59, N'Maria Valentina', 50, N'ADM', 15, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (60, N'Milena', 60, N'ADM', 6, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (61, N'Maria Helena', 10, N'ADM', 12, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (62, N'Bianca', 20, N'ADM', 6, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (63, N'Larissa', 30, N'ADM', 7, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (64, N'Mirella', 40, N'VEND', 7, CAST(3500.00 AS Decimal(10, 2)), CAST(1710.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (65, N'Maria Flor', 50, N'AUX', 10, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (66, N'Allana', 60, N'ATEND', 6, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (67, N'Ana Sophia', 10, N'ATEND', 10, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (68, N'Clarice', 20, N'ATEND', 7, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (69, N'Pietra', 30, N'ATEND', 6, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (70, N'Maria Vitória', 40, N'VEND', 13, CAST(3500.00 AS Decimal(10, 2)), CAST(1830.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (71, N'Maya', 50, N'AUX', 4, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (72, N'Laís', 60, N'AUX', 4, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (73, N'Ayla', 10, N'AUX', 4, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (74, N'Ana Lívia', 20, N'AUX', 9, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (75, N'Eduarda', 30, N'AUX', 7, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (76, N'Mariah', 40, N'AUX', 6, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (77, N'Stella', 50, N'ATEND', 6, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (78, N'Ana', 60, N'ATEND', 3, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (79, N'Gabrielly', 10, N'AUX', 9, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (80, N'Sophie', 20, N'ADM', 6, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (81, N'Carolina', 30, N'AUX', 8, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (82, N'Maria Laura', 40, N'VEND', 11, CAST(3500.00 AS Decimal(10, 2)), CAST(1930.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (83, N'Maria Heloísa', 50, N'ATEND', 13, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (84, N'Maria Sophia', 60, N'ATEND', 12, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (85, N'Fernanda', 10, N'ATEND', 8, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (86, N'Malu', 20, N'ATEND', 4, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (87, N'Analu', 30, N'ADM', 5, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (88, N'Amanda', 40, N'AUX', 6, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (89, N'Aurora', 50, N'ATEND', 6, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (90, N'Maria Isis', 60, N'ATEND', 10, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (91, N'Louise', 10, N'ATEND', 6, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (92, N'Heloise', 20, N'ATEND', 7, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (93, N'Ana Vitória', 30, N'ADM', 11, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (94, N'Ana Cecília', 40, N'AUX', 11, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (95, N'Ana Liz', 50, N'ADM', 7, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (96, N'Joana', 60, N'AUX', 5, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (97, N'Luana', 10, N'ATEND', 5, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (98, N'Antônia', 20, N'AUX', 7, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (99, N'Isabel', 30, N'ADM', 6, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (100, N'Bruna', 40, N'VEND', 5, CAST(3500.00 AS Decimal(10, 2)), CAST(2050.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (101, N'Miguel', 50, N'GER', 6, CAST(15000.00 AS Decimal(10, 2)), NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (102, N'Arthur', 60, N'GER', 6, CAST(15000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (103, N'Bernardo', 10, N'GER', 8, CAST(15000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (104, N'Heitor', 20, N'GER', 6, CAST(15000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (105, N'Davi', 30, N'GER', 4, CAST(15000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (106, N'Lorenzo', 40, N'GER', 7, CAST(15000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (107, N'Théo', 50, N'ADM', 4, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (108, N'Pedro', 60, N'ADM', 5, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (109, N'Gabriel', 10, N'ADM', 7, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (110, N'Enzo', 20, N'VEND', 4, CAST(3500.00 AS Decimal(10, 2)), CAST(2140.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (111, N'Matheus', 30, N'ADM', 7, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (112, N'Lucas', 40, N'ADM', 5, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (113, N'Benjamin', 50, N'ADM', 8, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (114, N'Nicolas', 60, N'ADM', 7, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (115, N'Guilherme', 10, N'ADM', 9, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (116, N'Rafael', 20, N'VEND', 6, CAST(3500.00 AS Decimal(10, 2)), CAST(2220.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (117, N'Joaquim', 30, N'ADM', 7, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (118, N'Samuel', 40, N'ADM', 6, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (119, N'Enzo Gabriel', 50, N'ADM', 12, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (120, N'João Miguel', 60, N'ADM', 11, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (121, N'Henrique', 10, N'ADM', 8, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (122, N'Gustavo', 20, N'VEND', 7, CAST(3500.00 AS Decimal(10, 2)), CAST(2290.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (123, N'Murilo', 30, N'AUX', 6, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (124, N'Pedro Henrique', 40, N'AUX', 14, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (125, N'Pietro', 50, N'AUX', 6, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (126, N'Lucca', 60, N'AUX', 5, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (127, N'Felipe', 10, N'AUX', 6, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (128, N'João Pedro', 20, N'VEND', 10, CAST(3500.00 AS Decimal(10, 2)), CAST(2380.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (129, N'Isaac', 30, N'ADM', 5, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (130, N'Benício', 40, N'ATEND', 7, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (131, N'Daniel', 50, N'ATEND', 6, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (132, N'Anthony', 60, N'ATEND', 7, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (133, N'Leonardo', 10, N'ATEND', 8, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (134, N'Davi Lucca', 20, N'ATEND', 10, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (135, N'Bryan', 30, N'ATEND', 5, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (136, N'Eduardo', 40, N'ADM', 7, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (137, N'João Lucas', 50, N'AUX', 10, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (138, N'Victor', 60, N'AUX', 6, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (139, N'João', 10, N'ADM', 4, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (140, N'Cauã', 20, N'VEND', 4, CAST(3500.00 AS Decimal(10, 2)), CAST(2440.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (141, N'Antônio', 30, N'AUX', 7, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (142, N'Vicente', 40, N'ADM', 7, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (143, N'Caleb', 50, N'VEND', 5, CAST(3500.00 AS Decimal(10, 2)), CAST(2480.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (144, N'Gael', 60, N'ATEND', 4, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (145, N'Bento', 10, N'ATEND', 5, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (146, N'Caio', 20, N'VEND', 4, CAST(3500.00 AS Decimal(10, 2)), CAST(2500.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (147, N'Emanuel', 30, N'AUX', 7, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (148, N'Vinícius', 40, N'AUX', 8, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (149, N'João Guilherme', 50, N'AUX', 14, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (150, N'Davi Lucas', 60, N'AUX', 10, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (151, N'Noah', 10, N'ADM', 4, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (152, N'João Gabriel', 20, N'VEND', 12, CAST(3500.00 AS Decimal(10, 2)), CAST(2640.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (153, N'João Victor', 30, N'ADM', 11, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (154, N'Luiz Miguel', 40, N'ADM', 11, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (155, N'Francisco', 50, N'ADM', 9, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (156, N'Kaique', 60, N'AUX', 6, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (157, N'Otávio', 10, N'AUX', 6, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (158, N'Augusto', 20, N'VEND', 7, CAST(3500.00 AS Decimal(10, 2)), CAST(2650.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (159, N'Levi', 30, N'ADM', 4, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (160, N'Yuri', 40, N'ADM', 4, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (161, N'Enrico', 50, N'ADM', 6, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (162, N'Thiago', 60, N'ADM', 6, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (163, N'Ian', 10, N'ADM', 3, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (164, N'Victor Hugo', 20, N'VEND', 11, CAST(3500.00 AS Decimal(10, 2)), CAST(2750.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (165, N'Thomas', 30, N'AUX', 6, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (166, N'Henry', 40, N'ATEND', 5, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (167, N'Luiz Felipe', 50, N'ATEND', 11, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (168, N'Ryan', 60, N'ATEND', 4, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (169, N'Arthur Miguel', 10, N'ATEND', 13, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (170, N'Davi Luiz', 20, N'VEND', 9, CAST(3500.00 AS Decimal(10, 2)), CAST(2790.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (171, N'Nathan', 30, N'AUX', 6, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (172, N'Pedro Lucas', 40, N'AUX', 11, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (173, N'Davi Miguel', 50, N'AUX', 11, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (174, N'Raul', 60, N'AUX', 4, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (175, N'Pedro Miguel', 10, N'AUX', 12, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (176, N'Luiz Henrique', 20, N'AUX', 13, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (177, N'Luan', 30, N'ATEND', 4, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (178, N'Erick', 40, N'ATEND', 5, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (179, N'Martin', 50, N'AUX', 6, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (180, N'Bruno', 60, N'ADM', 5, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (181, N'Rodrigo', 10, N'AUX', 7, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (182, N'Luiz Gustavo', 20, N'VEND', 12, CAST(3500.00 AS Decimal(10, 2)), CAST(2940.00 AS Decimal(10, 2)))
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (183, N'Arthur Gabriel', 30, N'ATEND', 14, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (184, N'Breno', 40, N'ATEND', 5, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (185, N'Kauê', 50, N'ATEND', 4, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (186, N'Enzo Miguel', 60, N'ATEND', 11, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (187, N'Fernando', 10, N'ADM', 8, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (188, N'Arthur Henrique', 20, N'AUX', 15, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (189, N'Luiz Otávio', 30, N'ATEND', 11, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (190, N'Carlos Eduardo', 40, N'ATEND', 14, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (191, N'Tomás', 50, N'ATEND', 5, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (192, N'Lucas Gabriel', 60, N'ATEND', 13, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (193, N'André', 10, N'ADM', 5, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (194, N'José', 20, N'AUX', 4, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (195, N'Yago', 30, N'ADM', 4, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (196, N'Danilo', 40, N'AUX', 6, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (197, N'Anthony Gabriel', 50, N'ATEND', 15, CAST(2700.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (198, N'Ruan', 60, N'AUX', 4, CAST(3000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (199, N'Miguel Henrique', 10, N'ADM', 15, CAST(5000.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[Empregado] ([IdEmpregado], [NomeEmpregado], [IdDepto], [Cargo], [Tempo_Emp], [Salario], [Comissao]) VALUES (200, N'Oliver', 20, N'VEND', 6, CAST(3500.00 AS Decimal(10, 2)), CAST(3060.00 AS Decimal(10, 2)))
/****** Object:  ForeignKey [FK_Depto]    Script Date: 02/25/2018 20:31:56 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Depto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empregado]'))
ALTER TABLE [dbo].[Empregado]  WITH CHECK ADD  CONSTRAINT [FK_Depto] FOREIGN KEY([IdDepto])
REFERENCES [dbo].[Departamento] ([IdDepto])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Depto]') AND parent_object_id = OBJECT_ID(N'[dbo].[Empregado]'))
ALTER TABLE [dbo].[Empregado] CHECK CONSTRAINT [FK_Depto]
GO
