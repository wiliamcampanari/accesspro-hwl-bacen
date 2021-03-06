/*
   Saturday, May 7, 20226:49:02 PM
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
CREATE TABLE dbo.tbImportacaoOrigem
	(
	id int NOT NULL IDENTITY (1, 1),
	AccNrP varchar(20) NULL,
	AccNrR varchar(20) NULL,
	CodOrigem varchar(10) NULL,
	Nome varchar(512) NULL,
	Endereco varchar(512) NULL,
	idTab_Origem int NULL,
	tsDataImportacao datetime NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.tbImportacaoOrigem ADD CONSTRAINT
	DF_tbImportacaoOrigem_tsDataImportacao DEFAULT getDate() FOR tsDataImportacao
GO
ALTER TABLE dbo.tbImportacaoOrigem SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.tbImportacaoOrigem', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.tbImportacaoOrigem', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.tbImportacaoOrigem', 'Object', 'CONTROL') as Contr_Per 