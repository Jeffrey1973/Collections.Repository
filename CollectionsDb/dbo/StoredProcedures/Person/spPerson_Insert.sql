CREATE PROCEDURE [dbo].[spPerson_Insert]
@FirstName NVARCHAR(50), 
    @LastName NVARCHAR(50), 
    @MiddleName NVARCHAR(50), 
    @PreferredName NVARCHAR(50), 
    @DateOfBirth DATE
    AS
    begin try

	begin transaction

		INSERT INTO [dbo].[Person]
		(
			[FirstName], 
			[LastName], 
			[MiddleName], 
			[PreferredName], 
			[DateOfBirth]
		)
		VALUES
		(
			@FirstName, 
			@LastName, 
			@MiddleName, 
			@PreferredName, 
			@DateOfBirth
		);

		commit transaction

	end try
	begin catch
	    
	    rollback transaction

	end catch