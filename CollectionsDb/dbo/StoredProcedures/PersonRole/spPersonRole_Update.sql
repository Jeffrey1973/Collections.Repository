CREATE PROCEDURE [dbo].[spPersonRole_Update]
	@Id int,
	 @Role nvarchar(50)
	 AS
    begin try

	begin transaction

		UPDATE [dbo].[PersonRole]
			SET
				[Role] = @Role
			WHERE
				[Id] = @Id;

		commit transaction

	end try
	begin catch
	    
	    rollback transaction

	end catch