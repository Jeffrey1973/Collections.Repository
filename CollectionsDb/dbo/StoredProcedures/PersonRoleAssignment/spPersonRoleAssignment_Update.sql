CREATE PROCEDURE [dbo].[spPersonRoleAssignment_Update]
	@Id int,
	@PersonId int,
	@PersonRole nvarchar(50),
	@IsActive bit
	AS 	
	begin try
			begin transaction

		UPDATE [dbo].[PersonRoleAssignment]
			SET
				[PersonId] = @PersonId,
				[PersonRole] = @PersonRole,
				[IsActive] = @IsActive
			WHERE
				[Id] = @Id;

		commit transaction

	end try
	begin catch
	 rollback transaction
	end catch