CREATE PROCEDURE [dbo].[spPerson_Get]
	@Id INT
AS
BEGIN

	SELECT * 
	FROM [dbo].[Person]
	WHERE Id = @Id;

END
