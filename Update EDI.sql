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
	active bit NOT NULL DEFAULT 0,
	title nvarchar(100) NOT NULL DEFAULT N'Conf'
GO
ALTER TABLE dbo.Edi_Config SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
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
ALTER TABLE dbo.Edi_Config ADD
	useShippedLines bit NOT NULL DEFAULT 0
GO
ALTER TABLE dbo.Edi_Config SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
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
ALTER TABLE dbo.Edi_Config ADD
	soCreationStatus2 nvarchar(10) NOT NULL DEFAULT N'Hold'
GO
ALTER TABLE dbo.Edi_Config SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
GO



update Edi_Config 
set userName = 'PierreLuc-PC\Pierre Luc', 
	workstation = 'PIERRELUC-PC',
	template = 'D:\Code\MfgTech\EDI\830_fields.xml;D:\Code\MfgTech\EDI\862_fields.xml',
	jbDbName = 'ProductionSQL',
	jbDbServer = '.\dev2017',
	active = 1,
	title = 'Conf',
	soCreationStatus = 'Open'
where id = 3

select * from Edi_Config where id = 3