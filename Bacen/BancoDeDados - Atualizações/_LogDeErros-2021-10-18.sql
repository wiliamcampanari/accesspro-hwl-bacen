/****** Object:  Table [dbo].[_LogDeErros]    Script Date: 16/10/2021 12:14:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[_LogDeErros](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [nvarchar](50) NULL,
	[Estacao] [nvarchar](30) NULL,
	[VersaoBanco] [nvarchar](50) NULL,
	[VersaoAplicacao] [nvarchar](50) NULL,
	[DataHora] [datetime] NULL,
	[Modulo] [nvarchar](250) NULL,
	[Procedimento] [nvarchar](50) NULL,
	[Linha] [nvarchar](50) NULL,
	[Erro] [nvarchar](250) NULL,
 CONSTRAINT [PK__LogDeErros] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


