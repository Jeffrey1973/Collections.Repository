CREATE PROCEDURE [dbo].[spPersonRoleAssignment_GetAll]
	AS
BEGIN

	SELECT * 
	FROM [dbo].[PersonRoleAssignment];

END
