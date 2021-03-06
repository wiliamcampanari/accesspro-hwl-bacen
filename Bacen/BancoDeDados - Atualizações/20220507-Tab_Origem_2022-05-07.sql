/*
   Saturday, May 7, 20227:01:26 PM
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
ALTER TABLE dbo.Tab_Origem ADD
	tsExcluidoViaImportacao datetime NULL
GO
ALTER TABLE dbo.Tab_Origem SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Tab_Origem', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Tab_Origem', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Tab_Origem', 'Object', 'CONTROL') as Contr_Per 