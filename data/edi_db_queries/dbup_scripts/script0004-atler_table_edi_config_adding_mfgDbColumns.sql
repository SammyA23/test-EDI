USE [MFG_EDI]
GO

ALTER TABLE [dbo].[Edi_Config] ADD jbDbName NVARCHAR(50) NOT NULL, jbDbServer NVARCHAR(50) NOT NULL ;