if not exists (select 1 from dbo.[Person])
begin
	INSERT INTO [dbo].[Person]
	(
		[FirstName], 
		[LastName], 
		[MiddleName], 
		[PreferredName], 
		[DateOfBirth], 
		[IsActive]
	)
	VALUES
	(
		'Jeffrey', 
		'Tibbetts', 
		'Allen', 
		'Jeff', 
		'1973-05-29', 
		1
	);
end