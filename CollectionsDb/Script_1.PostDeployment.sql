/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]		
			   
fill tables with seed data for testing
--------------------------------------------------------------------------------------
*/

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

--if not exists (select 1 from dbo.[AccessRole])
--begin

--	Insert into AccessRole ([Role], IsActive) values ('Basic', 1);
--	Insert into AccessRole ([Role], IsActive) values ('Premium', 1);
--	Insert into AccessRole ([Role], IsActive) values ('Admin', 1);
	
--end

--if not exists (select 1 from dbo.[PersonToAccessRole])
--begin

--	Insert into PersonToAccessRole (PersonId, [AccessRole], IsActive) values (1, 'Admin', 1);
--	Insert into PersonToAccessRole (PersonId, [AccessRole], IsActive) values (1, 'Basic', 1);
--	Insert into PersonToAccessRole (PersonId, [AccessRole], IsActive) values (1, 'Premium', 1);

--end