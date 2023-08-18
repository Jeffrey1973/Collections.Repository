CREATE PROCEDURE [dbo].[spPersonRole_Get]
	@Id INT
AS
BEGIN

	SELECT * 
	FROM [dbo].[PersonRole]
	WHERE Id = @Id;

END
