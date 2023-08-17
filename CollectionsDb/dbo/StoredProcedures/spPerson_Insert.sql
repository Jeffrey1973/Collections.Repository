CREATE PROCEDURE [dbo].[spPerson_Insert]
	@FirstName NVARCHAR(50), 
    @LastName NVARCHAR(50), 
    @MiddleName NVARCHAR(50), 
    @PreferredName NVARCHAR(50), 
    @DateOfBirth DATE, 
    @IsActive BIT NOT NULL
    AS
    begin
		INSERT INTO [dbo].[Person]
		(
			[FirstName], 
			[LastName], 
			[MiddleName], 
			[PreferredName], 
			[DateOfBirth], 
			[IsActive]
		)
		VALUES
		(
			@FirstName, 
			@LastName, 
			@MiddleName, 
			@PreferredName, 
			@DateOfBirth, 
			@IsActive
		);
	end