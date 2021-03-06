/*
   September 11, 20195:38:16 PM
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
ALTER TABLE dbo.Edi_Config
	DROP CONSTRAINT PK_Edi_Config
GO
ALTER TABLE dbo.Edi_Config ADD CONSTRAINT
	PK_Edi_Config PRIMARY KEY CLUSTERED 
	(
	id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Edi_Config SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
