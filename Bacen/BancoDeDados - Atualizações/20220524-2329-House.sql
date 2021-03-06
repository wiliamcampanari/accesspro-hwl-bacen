/*
   Tuesday, May 24, 202211:28:44 PM
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
ALTER TABLE dbo.House ADD
	ValorDemurrage numeric(18, 2) NULL
GO
ALTER TABLE dbo.House SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.House', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.House', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.House', 'Object', 'CONTROL') as Contr_Per 