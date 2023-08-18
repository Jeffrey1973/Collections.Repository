CREATE PROCEDURE [dbo].[spPersonRole_Insert]
	@Role nvarchar(50)
	AS
	Begin TRY
			BEGIN TRANSACTION
			INSERT INTO [dbo].[PersonRole]
				(
					[Role]
				)
			VALUES
				(
					@Role
				);
		COMMIT TRANSACTION
	END TRY
	begin catch
		rollback transaction
	end catch

		