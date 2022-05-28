/****** Object:  Table [dbo].[LogArquivoMorto]    Script Date: 16/10/2021 12:15:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LogArquivoMorto](
	[IDLog] [int] IDENTITY(1,1) NOT NULL,
	[IDTipoLog] [int] NULL,
	[DataLog] [datetime] NULL,
	[Usuario] [nvarchar](50) NULL,
	[Detalhes] [nvarchar](max) NULL,
 CONSTRAINT [PK_LogArquivoMorto] PRIMARY KEY CLUSTERED 
(
	[IDLog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[LogArquivoMorto]  WITH CHECK ADD  CONSTRAINT [FK_LogArquivoMorto_Tab_TipoLog] FOREIGN KEY([IDTipoLog])
REFERENCES [dbo].[Tab_TipoLog] ([IDTipoLog])
GO

ALTER TABLE [dbo].[LogArquivoMorto] CHECK CONSTRAINT [FK_LogArquivoMorto_Tab_TipoLog]
GO


