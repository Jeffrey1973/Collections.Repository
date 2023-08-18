CREATE TABLE [dbo].[Person] (
    [Id]            INT           IDENTITY (1, 1) NOT NULL,
    [FirstName]     NVARCHAR (50) NOT NULL,
    [LastName]      NVARCHAR (50) NOT NULL,
    [MiddleName]    NVARCHAR (50) NULL,
    [PreferredName] NVARCHAR (50) NULL,
    [DateOfBirth]   DATE          NOT NULL,
    [Created]       DATETIME2 (7) DEFAULT (getutcdate()) NULL,
    [Updated]       DATETIME2 (7) DEFAULT (getutcdate()) NULL,
    [IsActive]      BIT           NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO

CREATE TRIGGER [dbo].[Trigger_Person]
    ON [dbo].[Person]
    FOR UPDATE
    AS
    BEGIN
        SET NoCount ON
		update dbo.Person
			set Updated = GETUTCDATE()
			where Id in (select Id from inserted);
    END