/*
   September 13, 20191:23:32 PM
   User: jobboss
   Server: W10DEV\SQLEXPRESS
   Database: MFG_EDI
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
ALTER TABLE dbo.Edi_Config ADD
	useShippedLines bit NOT NULL DEFAULT 0
GO
ALTER TABLE dbo.Edi_Config SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
