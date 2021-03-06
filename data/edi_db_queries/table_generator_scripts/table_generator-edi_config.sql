/*
   November 21, 20182:27:16 PM
   User: sa
   Server: W10DEV\SQLEXPRESS
   Database: MFG_APPS
   Application:
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
USE [MFG_APPS]
GO

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
CREATE TABLE dbo.Edi_Config
	(
	id int NOT NULL IDENTITY (1, 1),
	userName nvarchar(80) NOT NULL,
	workstation nvarchar(200) NOT NULL,
	engine nvarchar(20) NOT NULL,
	soCreation bit NOT NULL,
	soCreationStatus nvarchar(10) NOT NULL,
	executionType nvarchar(10) NOT NULL,
	template nvarchar(MAX) NOT NULL,
	clients nvarchar(MAX) NOT NULL,
	filetype nvarchar(100) NOT NULL,
	extras nvarchar(50) NOT NULL,
	writeScheduleLineToNote bit NOT NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
GO
DECLARE @v sql_variant
SET @v = N'simple (only delivery), double (delivery and forecast), complex (like BRP where we give a folder the engine determines what all the files are)'
EXECUTE sp_addextendedproperty N'MS_Description', @v, N'SCHEMA', N'dbo', N'TABLE', N'Edi_Config', N'COLUMN', N'executionType'
GO
ALTER TABLE dbo.Edi_Config ADD CONSTRAINT
	PK_Edi_Config PRIMARY KEY CLUSTERED
	(
	userName,
	workstation
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Edi_Config SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
