USE [Center.flowers]
GO
/****** Object:  Table [dbo].[Domicilios]    Script Date: 29/05/2021 0:31:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Domicilios](
	[Calle] [nvarchar](50) NULL,
	[Altura] [int] NULL,
	[Piso] [nvarchar](50) NULL,
	[Localidad] [nvarchar](50) NULL,
	[Provincia] [nvarchar](50) NULL,
	[Pais] [nvarchar](50) NULL,
	[ID_domicilio_usuario] [nvarchar](50) NULL,
	[Id_domicilio_proveedor] [nvarchar](50) NULL,
	[Id_proveedores] [nvarchar](50) NULL,
	[Id_dni] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Emails]    Script Date: 29/05/2021 0:31:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emails](
	[Personal] [nvarchar](50) NULL,
	[Laboral] [nvarchar](50) NULL,
	[Id_email] [nvarchar](50) NULL,
	[Id_dni_usuario] [nvarchar](50) NULL,
	[Id_dni_proveedor] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IVA]    Script Date: 29/05/2021 0:31:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IVA](
	[Id_iva] [nvarchar](50) NOT NULL,
	[Responsable_inscripto] [nvarchar](50) NULL,
	[Excento] [nvarchar](50) NULL,
	[Monotributista] [nvarchar](50) NULL,
 CONSTRAINT [PK_IVA] PRIMARY KEY CLUSTERED 
(
	[Id_iva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mercaderia]    Script Date: 29/05/2021 0:31:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mercaderia](
	[Categoria_mercaderia] [nvarchar](50) NULL,
	[Descripcion_mercaderia] [nvarchar](50) NULL,
	[Id_producto] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Mercaderia] PRIMARY KEY CLUSTERED 
(
	[Id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mercaderia-provista]    Script Date: 29/05/2021 0:31:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mercaderia-provista](
	[Nro_remito] [int] NULL,
	[Cantidad_producto] [int] NULL,
	[Estado_producto] [nvarchar](50) NULL,
	[Fecha_ingreso] [date] NULL,
	[Valor_sin_impuesto] [int] NULL,
	[Valor_total] [int] NULL,
	[Id_producto_mercaderia] [nvarchar](50) NULL,
	[Id_proveedore_mercaderia] [nvarchar](50) NULL,
	[Proveedor_mercaderia] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Perfil_usuario]    Script Date: 29/05/2021 0:31:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfil_usuario](
	[Id_perfil] [nvarchar](50) NOT NULL,
	[Descripcion_perfil] [nvarchar](50) NULL,
	[Id_dni] [nvarchar](50) NULL,
	[Permiso] [nvarchar](50) NULL,
 CONSTRAINT [PK_Perfil_usuario] PRIMARY KEY CLUSTERED 
(
	[Id_perfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 29/05/2021 0:31:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedores](
	[Id_proveedores] [nvarchar](50) NOT NULL,
	[Tipo_iva] [nvarchar](50) NULL,
	[Nombre_fantasia] [nvarchar](50) NULL,
	[Razon_social] [nvarchar](50) NULL,
	[Descripcion_proveedor] [nvarchar](50) NULL,
	[Cuit_proveedore] [nvarchar](50) NULL,
	[Ingresos_brutos_proveedor] [int] NULL,
 CONSTRAINT [PK_Proveedores] PRIMARY KEY CLUSTERED 
(
	[Id_proveedores] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Telefonos]    Script Date: 29/05/2021 0:31:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telefonos](
	[Fijo] [int] NULL,
	[Celular] [int] NULL,
	[ID_dni] [nvarchar](50) NULL,
	[ID_proveedores] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 29/05/2021 0:31:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[ID_dni] [nvarchar](50) NOT NULL,
	[Contraseña] [nvarchar](50) NULL,
	[Id_perfil_usuario] [nvarchar](50) NULL,
	[Tipo_vendedor] [nvarchar](50) NULL,
	[Nombre] [nvarchar](50) NULL,
	[Apellido] [nvarchar](50) NULL,
	[Permiso] [nvarchar](50) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[ID_dni] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Domicilios]  WITH CHECK ADD  CONSTRAINT [FK_Domicilios_Proveedores] FOREIGN KEY([Id_proveedores])
REFERENCES [dbo].[Proveedores] ([Id_proveedores])
GO
ALTER TABLE [dbo].[Domicilios] CHECK CONSTRAINT [FK_Domicilios_Proveedores]
GO
ALTER TABLE [dbo].[Domicilios]  WITH CHECK ADD  CONSTRAINT [FK_Domicilios_Usuario] FOREIGN KEY([Id_dni])
REFERENCES [dbo].[Usuario] ([ID_dni])
GO
ALTER TABLE [dbo].[Domicilios] CHECK CONSTRAINT [FK_Domicilios_Usuario]
GO
ALTER TABLE [dbo].[Emails]  WITH CHECK ADD  CONSTRAINT [FK_Emails_Proveedores] FOREIGN KEY([Id_dni_proveedor])
REFERENCES [dbo].[Proveedores] ([Id_proveedores])
GO
ALTER TABLE [dbo].[Emails] CHECK CONSTRAINT [FK_Emails_Proveedores]
GO
ALTER TABLE [dbo].[Emails]  WITH CHECK ADD  CONSTRAINT [FK_Emails_Usuario] FOREIGN KEY([Id_dni_usuario])
REFERENCES [dbo].[Usuario] ([ID_dni])
GO
ALTER TABLE [dbo].[Emails] CHECK CONSTRAINT [FK_Emails_Usuario]
GO
ALTER TABLE [dbo].[Mercaderia-provista]  WITH CHECK ADD  CONSTRAINT [FK_Mercaderia-provista_Mercaderia] FOREIGN KEY([Id_producto_mercaderia])
REFERENCES [dbo].[Mercaderia] ([Id_producto])
GO
ALTER TABLE [dbo].[Mercaderia-provista] CHECK CONSTRAINT [FK_Mercaderia-provista_Mercaderia]
GO
ALTER TABLE [dbo].[Mercaderia-provista]  WITH CHECK ADD  CONSTRAINT [FK_Mercaderia-provista_Proveedores] FOREIGN KEY([Id_proveedore_mercaderia])
REFERENCES [dbo].[Proveedores] ([Id_proveedores])
GO
ALTER TABLE [dbo].[Mercaderia-provista] CHECK CONSTRAINT [FK_Mercaderia-provista_Proveedores]
GO
ALTER TABLE [dbo].[Proveedores]  WITH CHECK ADD  CONSTRAINT [FK_Proveedores_IVA] FOREIGN KEY([Tipo_iva])
REFERENCES [dbo].[IVA] ([Id_iva])
GO
ALTER TABLE [dbo].[Proveedores] CHECK CONSTRAINT [FK_Proveedores_IVA]
GO
ALTER TABLE [dbo].[Telefonos]  WITH CHECK ADD  CONSTRAINT [FK_Telefonos_Proveedores] FOREIGN KEY([ID_proveedores])
REFERENCES [dbo].[Proveedores] ([Id_proveedores])
GO
ALTER TABLE [dbo].[Telefonos] CHECK CONSTRAINT [FK_Telefonos_Proveedores]
GO
ALTER TABLE [dbo].[Telefonos]  WITH CHECK ADD  CONSTRAINT [FK_Telefonos_Usuario] FOREIGN KEY([ID_dni])
REFERENCES [dbo].[Usuario] ([ID_dni])
GO
ALTER TABLE [dbo].[Telefonos] CHECK CONSTRAINT [FK_Telefonos_Usuario]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Perfil_usuario] FOREIGN KEY([Id_perfil_usuario])
REFERENCES [dbo].[Perfil_usuario] ([Id_perfil])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Perfil_usuario]
GO
