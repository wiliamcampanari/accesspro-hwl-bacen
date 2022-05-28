/****** Object:  Table [dbo].[Tab_TipoLog]    Script Date: 16/10/2021 12:15:30 ******/
CREATE TABLE [dbo].[Tab_TipoLog](
	[IDTipoLog] [int] IDENTITY(1,1) NOT NULL,
	[TipoLog] [nvarchar](50) NULL,
	[Critico] [bit] NOT NULL,
	[Ignorar] [bit] NOT NULL,
 CONSTRAINT [PK_Tab_TipoLog] PRIMARY KEY CLUSTERED 
(
	[IDTipoLog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Tab_TipoLog] ADD  CONSTRAINT [DF_Tab_TipoLog_Critico]  DEFAULT ((0)) FOR [Critico]
GO

ALTER TABLE [dbo].[Tab_TipoLog] ADD  CONSTRAINT [DF_Tab_TipoLog_Ignorar]  DEFAULT ((0)) FOR [Ignorar]
GO


