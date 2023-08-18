CREATE PROCEDURE [dbo].[spPerson_Update]
	@Id INT,
		@FirstName NVARCHAR(50), 
		@LastName NVARCHAR(50), 
		@MiddleName NVARCHAR(50), 
		@PreferredName NVARCHAR(50), 
		@DateOfBirth DATE, 
		@IsActive BIT 
	AS
    begin try

	begin transaction

		UPDATE [dbo].[Person]
			SET
				[FirstName] = @FirstName, 
				[LastName] = @LastName, 
				[MiddleName] = @MiddleName, 
				[PreferredName] = @PreferredName, 
				[DateOfBirth] = @DateOfBirth, 
				[IsActive] = @IsActive
			WHERE
				[Id] = @Id;
		commit transaction

	end try
	begin catch
	    
	    rollback transaction

	end catch