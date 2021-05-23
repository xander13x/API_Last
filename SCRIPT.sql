USE [clientes]
GO
/****** Object:  Table [dbo].[CAT_CMV_TIPO_CUENTA]    Script Date: 23/05/2021 11:02:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAT_CMV_TIPO_CUENTA](
	[idCuenta] [int] IDENTITY(1,1) NOT NULL,
	[nombreCuenta] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idCuenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_CMV_CLIENTE]    Script Date: 23/05/2021 11:02:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_CMV_CLIENTE](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellidoPaterno] [varchar](50) NOT NULL,
	[apellidoMaterno] [varchar](50) NOT NULL,
	[rfc] [varchar](13) NOT NULL,
	[curp] [varchar](80) NOT NULL,
	[fechaAlta] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_CMV_CLIENTE_CUENTA]    Script Date: 23/05/2021 11:02:14 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_CMV_CLIENTE_CUENTA](
	[idClienteCuenta] [int] IDENTITY(1,1) NOT NULL,
	[idCliente] [int] NOT NULL,
	[idCuenta] [int] NOT NULL,
	[saldoActual] [money] NOT NULL,
	[fechaContratacion] [datetime] NOT NULL,
	[fechaUltimoMovimiento] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idClienteCuenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CAT_CMV_TIPO_CUENTA] ON 
GO
INSERT [dbo].[CAT_CMV_TIPO_CUENTA] ([idCuenta], [nombreCuenta]) VALUES (1, N'Ahorro')
GO
INSERT [dbo].[CAT_CMV_TIPO_CUENTA] ([idCuenta], [nombreCuenta]) VALUES (2, N'Debito')
GO
INSERT [dbo].[CAT_CMV_TIPO_CUENTA] ([idCuenta], [nombreCuenta]) VALUES (3, N'Abicuenta')
GO
INSERT [dbo].[CAT_CMV_TIPO_CUENTA] ([idCuenta], [nombreCuenta]) VALUES (4, N'Iverdinamica')
GO
INSERT [dbo].[CAT_CMV_TIPO_CUENTA] ([idCuenta], [nombreCuenta]) VALUES (5, N'Credito')
GO
SET IDENTITY_INSERT [dbo].[CAT_CMV_TIPO_CUENTA] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_CMV_CLIENTE] ON 
GO
INSERT [dbo].[TBL_CMV_CLIENTE] ([idCliente], [nombre], [apellidoPaterno], [apellidoMaterno], [rfc], [curp], [fechaAlta]) VALUES (1, N'Aldo', N'Madrigal', N'García', N'MAGA9110048J2', N'MAGA911004HMNDRL03', CAST(N'2021-05-23T10:51:47.390' AS DateTime))
GO
INSERT [dbo].[TBL_CMV_CLIENTE] ([idCliente], [nombre], [apellidoPaterno], [apellidoMaterno], [rfc], [curp], [fechaAlta]) VALUES (2, N'David', N'Madrigal', N'García', N'MAGO9110048J2', N'MAGO911004HMNDRL04', CAST(N'2021-05-23T10:51:47.393' AS DateTime))
GO
INSERT [dbo].[TBL_CMV_CLIENTE] ([idCliente], [nombre], [apellidoPaterno], [apellidoMaterno], [rfc], [curp], [fechaAlta]) VALUES (3, N'Marychelo', N'Madrigal', N'García', N'MAGE9110048J2', N'MAGE911004HMNDRL05', CAST(N'2021-05-23T10:51:47.393' AS DateTime))
GO
INSERT [dbo].[TBL_CMV_CLIENTE] ([idCliente], [nombre], [apellidoPaterno], [apellidoMaterno], [rfc], [curp], [fechaAlta]) VALUES (4, N'Alex', N'Madrigal', N'García', N'MAGI9110048J2', N'MAGI911004HMNDRL06', CAST(N'2021-05-23T10:51:47.393' AS DateTime))
GO
INSERT [dbo].[TBL_CMV_CLIENTE] ([idCliente], [nombre], [apellidoPaterno], [apellidoMaterno], [rfc], [curp], [fechaAlta]) VALUES (5, N'Consuelo', N'Madrigal', N'García', N'MAGU9110048J2', N'MAGU911004HMNDRL07', CAST(N'2021-05-23T10:51:47.393' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[TBL_CMV_CLIENTE] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_CMV_CLIENTE_CUENTA] ON 
GO
INSERT [dbo].[TBL_CMV_CLIENTE_CUENTA] ([idClienteCuenta], [idCliente], [idCuenta], [saldoActual], [fechaContratacion], [fechaUltimoMovimiento]) VALUES (1, 1, 1, 3141.2900, CAST(N'2021-05-23T10:53:24.967' AS DateTime), CAST(N'2021-05-23T10:53:24.967' AS DateTime))
GO
INSERT [dbo].[TBL_CMV_CLIENTE_CUENTA] ([idClienteCuenta], [idCliente], [idCuenta], [saldoActual], [fechaContratacion], [fechaUltimoMovimiento]) VALUES (2, 2, 2, 3142.2900, CAST(N'2021-05-23T10:53:24.970' AS DateTime), CAST(N'2021-05-23T10:53:24.970' AS DateTime))
GO
INSERT [dbo].[TBL_CMV_CLIENTE_CUENTA] ([idClienteCuenta], [idCliente], [idCuenta], [saldoActual], [fechaContratacion], [fechaUltimoMovimiento]) VALUES (3, 3, 3, 3143.2900, CAST(N'2021-05-23T10:53:24.970' AS DateTime), CAST(N'2021-05-23T10:53:24.970' AS DateTime))
GO
INSERT [dbo].[TBL_CMV_CLIENTE_CUENTA] ([idClienteCuenta], [idCliente], [idCuenta], [saldoActual], [fechaContratacion], [fechaUltimoMovimiento]) VALUES (4, 4, 4, 3144.2900, CAST(N'2021-05-23T10:53:24.970' AS DateTime), CAST(N'2021-05-23T10:53:24.970' AS DateTime))
GO
INSERT [dbo].[TBL_CMV_CLIENTE_CUENTA] ([idClienteCuenta], [idCliente], [idCuenta], [saldoActual], [fechaContratacion], [fechaUltimoMovimiento]) VALUES (5, 5, 5, 3145.2900, CAST(N'2021-05-23T10:53:24.970' AS DateTime), CAST(N'2021-05-23T10:53:24.970' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[TBL_CMV_CLIENTE_CUENTA] OFF
GO
ALTER TABLE [dbo].[TBL_CMV_CLIENTE_CUENTA]  WITH CHECK ADD FOREIGN KEY([idCliente])
REFERENCES [dbo].[TBL_CMV_CLIENTE] ([idCliente])
GO
ALTER TABLE [dbo].[TBL_CMV_CLIENTE_CUENTA]  WITH CHECK ADD FOREIGN KEY([idCuenta])
REFERENCES [dbo].[CAT_CMV_TIPO_CUENTA] ([idCuenta])
GO
