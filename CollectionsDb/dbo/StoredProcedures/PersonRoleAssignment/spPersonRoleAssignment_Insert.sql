CREATE PROCEDURE [dbo].[spPersonRoleAssignment_Insert]
	@PersonId int,
	@PersonRole nvarchar(50),
	@IsActive bit
AS
begin try
begin transaction

    insert into dbo.PersonRoleAssignment (PersonId, PersonRole, IsActive)
								values (@PersonId, @PersonRole, @IsActive);

	commit transaction

end try
begin catch
 rollback transaction
end catch

