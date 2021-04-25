CREATE TABLE [dbo].[Table]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Admin_ID] NVARCHAR(50) NULL, 
    [Admin_Username] NVARCHAR(50) NULL, 
    [Admin_Password] NVARCHAR(50) NULL, 
    [Admin_FName] NVARCHAR(50) NULL, 
    [Admin_LName] NVARCHAR(50) NULL, 
    [Admin_Email] NVARCHAR(50) NULL, 
    [Admin_Country] NVARCHAR(50) NULL
)
