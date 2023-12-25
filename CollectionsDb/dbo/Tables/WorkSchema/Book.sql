CREATE TABLE [dbo].[Book]
(
	[Id] INT NOT NULL PRIMARY KEY identity, 

    [Title] INT NOT NULL,   
    [ContentsSummary] nvarchar(MAX),
    [PhysicalDescription] nvarchar(MAX),
    [Media] nvarchar(50),

    [WeightLbs] decimal null,
    [HeightIn] decimal null,
    [ThicknessIn] decimal null,
    [LengthIn] decimal null,
    [PageCount] int null,
    [ChapterCount] int null,

    [CoverPic] Image null,

	[Created] DATETIME2 NULL, 
    [Updated] DATETIME2 NULL, 
    [IsActive] BIT NULL DEFAULT 1, 
    
)

Go 



CREATE TRIGGER [dbo].[Trigger_BookUpdate]
    ON [dbo].[Book]
    FOR UPDATE
    AS
    BEGIN
        SET NoCount ON
		update dbo.Book
			set Updated = GETUTCDATE()
			where Id in (select Id from inserted);
    END


