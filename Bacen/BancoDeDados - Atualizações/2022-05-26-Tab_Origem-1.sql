/*
   Thursday, May 26, 20227:06:08 PM
   User: weg.corp.2021
   Server: mssql-19185-0.cloudclusters.net,19200
   Database: Hellmann-BacenPro2
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Tab_Origem
	DROP CONSTRAINT DF_Tab_Origem_Bloqueado
GO
ALTER TABLE dbo.Tab_Origem
	DROP CONSTRAINT DF_Tab_Origem_Excluido
GO
CREATE TABLE dbo.Tmp_Tab_Origem
	(
	IDOrigem int NOT NULL IDENTITY (1, 1),
	CodOrigem nvarchar(3) NULL,
	Nome nvarchar(50) NULL,
	Endereco ntext NULL,
	Bloqueado bit NULL,
	AccNrP nvarchar(512) NULL,
	AccNrR nvarchar(512) NULL,
	Excluido bit NULL,
	tsImportacao datetime NULL,
	tsExcluidoViaImportacao datetime NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_Tab_Origem SET (LOCK_ESCALATION = TABLE)
GO
DECLARE @v sql_variant 
SET @v = N'0'
EXECUTE sp_addextendedproperty N'Attributes', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', NULL, NULL
SET @v = N'16/07/2010 01:37:53'
EXECUTE sp_addextendedproperty N'DateCreated', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', NULL, NULL
SET @v = N'16/07/2010 01:38:03'
EXECUTE sp_addextendedproperty N'LastUpdated', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', NULL, NULL
SET @v = N'2'
EXECUTE sp_addextendedproperty N'MS_DefaultView', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', NULL, NULL
SET @v = N'False'
EXECUTE sp_addextendedproperty N'MS_OrderByOn', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', NULL, NULL
SET @v = N'0'
EXECUTE sp_addextendedproperty N'MS_Orientation', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', NULL, NULL
SET @v = N'Tab_Origem'
EXECUTE sp_addextendedproperty N'Name', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', NULL, NULL
SET @v = N'130'
EXECUTE sp_addextendedproperty N'RecordCount', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', NULL, NULL
SET @v = N'True'
EXECUTE sp_addextendedproperty N'Updatable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', NULL, NULL
GO
DECLARE @v sql_variant 
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AllowZeroLength', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'IDOrigem'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AppendOnly', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'IDOrigem'
SET @v = N'17'
EXECUTE sp_addextendedproperty N'Attributes', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'IDOrigem'
SET @v = N'1033'
EXECUTE sp_addextendedproperty N'CollatingOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'IDOrigem'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ColumnHidden', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'IDOrigem'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ColumnOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'IDOrigem'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'ColumnWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'IDOrigem'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'DataUpdatable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'IDOrigem'
SET @v = N'憒梃줢俕뾒ꋓჷ磊'
EXECUTE sp_addextendedproperty N'GUID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'IDOrigem'
SET @v = N'IDOrigem'
EXECUTE sp_addextendedproperty N'Name', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'IDOrigem'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'OrdinalPosition', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'IDOrigem'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'Required', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'IDOrigem'
SET @v = N'4'
EXECUTE sp_addextendedproperty N'Size', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'IDOrigem'
SET @v = N'IDOrigem'
EXECUTE sp_addextendedproperty N'SourceField', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'IDOrigem'
SET @v = N'Tab_Origem'
EXECUTE sp_addextendedproperty N'SourceTable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'IDOrigem'
SET @v = N'4'
EXECUTE sp_addextendedproperty N'Type', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'IDOrigem'
GO
DECLARE @v sql_variant 
SET @v = N'True'
EXECUTE sp_addextendedproperty N'AllowZeroLength', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'CodOrigem'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AppendOnly', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'CodOrigem'
SET @v = N'2'
EXECUTE sp_addextendedproperty N'Attributes', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'CodOrigem'
SET @v = N'1033'
EXECUTE sp_addextendedproperty N'CollatingOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'CodOrigem'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ColumnHidden', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'CodOrigem'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ColumnOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'CodOrigem'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'ColumnWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'CodOrigem'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'DataUpdatable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'CodOrigem'
SET @v = N'瓯븧偁䝂ꂐ凌⨔̓'
EXECUTE sp_addextendedproperty N'GUID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'CodOrigem'
SET @v = N'Cód. Origem'
EXECUTE sp_addextendedproperty N'MS_Caption', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'CodOrigem'
SET @v = N'109'
EXECUTE sp_addextendedproperty N'MS_DisplayControl', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'CodOrigem'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'MS_IMEMode', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'CodOrigem'
SET @v = N'3'
EXECUTE sp_addextendedproperty N'MS_IMESentMode', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'CodOrigem'
SET @v = N'CodOrigem'
EXECUTE sp_addextendedproperty N'Name', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'CodOrigem'
SET @v = N'1'
EXECUTE sp_addextendedproperty N'OrdinalPosition', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'CodOrigem'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'Required', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'CodOrigem'
SET @v = N'3'
EXECUTE sp_addextendedproperty N'Size', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'CodOrigem'
SET @v = N'CodOrigem'
EXECUTE sp_addextendedproperty N'SourceField', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'CodOrigem'
SET @v = N'Tab_Origem'
EXECUTE sp_addextendedproperty N'SourceTable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'CodOrigem'
SET @v = N'10'
EXECUTE sp_addextendedproperty N'Type', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'CodOrigem'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'UnicodeCompression', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'CodOrigem'
GO
DECLARE @v sql_variant 
SET @v = N'True'
EXECUTE sp_addextendedproperty N'AllowZeroLength', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Nome'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AppendOnly', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Nome'
SET @v = N'2'
EXECUTE sp_addextendedproperty N'Attributes', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Nome'
SET @v = N'1033'
EXECUTE sp_addextendedproperty N'CollatingOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Nome'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ColumnHidden', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Nome'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ColumnOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Nome'
SET @v = N'4545'
EXECUTE sp_addextendedproperty N'ColumnWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Nome'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'DataUpdatable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Nome'
SET @v = N'⃭Ŕ⍘䀁ㆿ೹뤉裮'
EXECUTE sp_addextendedproperty N'GUID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Nome'
SET @v = N'109'
EXECUTE sp_addextendedproperty N'MS_DisplayControl', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Nome'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'MS_IMEMode', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Nome'
SET @v = N'3'
EXECUTE sp_addextendedproperty N'MS_IMESentMode', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Nome'
SET @v = N'Nome'
EXECUTE sp_addextendedproperty N'Name', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Nome'
SET @v = N'2'
EXECUTE sp_addextendedproperty N'OrdinalPosition', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Nome'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'Required', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Nome'
SET @v = N'50'
EXECUTE sp_addextendedproperty N'Size', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Nome'
SET @v = N'Nome'
EXECUTE sp_addextendedproperty N'SourceField', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Nome'
SET @v = N'Tab_Origem'
EXECUTE sp_addextendedproperty N'SourceTable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Nome'
SET @v = N'10'
EXECUTE sp_addextendedproperty N'Type', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Nome'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'UnicodeCompression', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Nome'
GO
DECLARE @v sql_variant 
SET @v = N'True'
EXECUTE sp_addextendedproperty N'AllowZeroLength', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Endereco'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AppendOnly', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Endereco'
SET @v = N'2'
EXECUTE sp_addextendedproperty N'Attributes', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Endereco'
SET @v = N'1033'
EXECUTE sp_addextendedproperty N'CollatingOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Endereco'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ColumnHidden', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Endereco'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ColumnOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Endereco'
SET @v = N'10050'
EXECUTE sp_addextendedproperty N'ColumnWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Endereco'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'DataUpdatable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Endereco'
SET @v = N'䅟ᜥ뛻䥻ꪭꔙ᫵᷋'
EXECUTE sp_addextendedproperty N'GUID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Endereco'
SET @v = N'Endereço'
EXECUTE sp_addextendedproperty N'MS_Caption', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Endereco'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'MS_IMEMode', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Endereco'
SET @v = N'3'
EXECUTE sp_addextendedproperty N'MS_IMESentMode', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Endereco'
SET @v = N'Endereco'
EXECUTE sp_addextendedproperty N'Name', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Endereco'
SET @v = N'3'
EXECUTE sp_addextendedproperty N'OrdinalPosition', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Endereco'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'Required', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Endereco'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'Size', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Endereco'
SET @v = N'Endereco'
EXECUTE sp_addextendedproperty N'SourceField', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Endereco'
SET @v = N'Tab_Origem'
EXECUTE sp_addextendedproperty N'SourceTable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Endereco'
SET @v = N'12'
EXECUTE sp_addextendedproperty N'Type', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Endereco'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'UnicodeCompression', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Tab_Origem', N'COLUMN', N'Endereco'
GO
ALTER TABLE dbo.Tmp_Tab_Origem ADD CONSTRAINT
	DF_Tab_Origem_Bloqueado DEFAULT ((0)) FOR Bloqueado
GO
ALTER TABLE dbo.Tmp_Tab_Origem ADD CONSTRAINT
	DF_Tab_Origem_Excluido DEFAULT ((0)) FOR Excluido
GO
SET IDENTITY_INSERT dbo.Tmp_Tab_Origem ON
GO
IF EXISTS(SELECT * FROM dbo.Tab_Origem)
	 EXEC('INSERT INTO dbo.Tmp_Tab_Origem (IDOrigem, CodOrigem, Nome, Endereco, Bloqueado, AccNrP, AccNrR, Excluido, tsImportacao, tsExcluidoViaImportacao)
		SELECT IDOrigem, CodOrigem, Nome, Endereco, Bloqueado, CONVERT(nvarchar(512), AccNrP), CONVERT(nvarchar(512), AccNrR), Excluido, tsImportacao, tsExcluidoViaImportacao FROM dbo.Tab_Origem WITH (HOLDLOCK TABLOCKX)')
GO
SET IDENTITY_INSERT dbo.Tmp_Tab_Origem OFF
GO
DROP TABLE dbo.Tab_Origem
GO
EXECUTE sp_rename N'dbo.Tmp_Tab_Origem', N'Tab_Origem', 'OBJECT' 
GO
ALTER TABLE dbo.Tab_Origem ADD CONSTRAINT
	aaaaaTab_Origem_PK PRIMARY KEY NONCLUSTERED 
	(
	IDOrigem
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
CREATE NONCLUSTERED INDEX IDOrigem ON dbo.Tab_Origem
	(
	IDOrigem
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Tab_Origem', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Tab_Origem', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Tab_Origem', 'Object', 'CONTROL') as Contr_Per 