CREATE PROCEDURE [dbo].[spPersonRoleAssignment_Get]
	@Id INT
AS
BEGIN

	SELECT * 
	FROM [dbo].[PersonRoleAssignment]
	WHERE Id = @Id;

END
