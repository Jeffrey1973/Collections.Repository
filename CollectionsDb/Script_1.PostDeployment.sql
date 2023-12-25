

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

if not exists (select 1 from dbo.PersonRole)
begin

	Insert into PersonRole([Role], IsActive) values ('Basic', 1);
	Insert into PersonRole ([Role], IsActive) values ('Premium', 1);
	Insert into PersonRole ([Role], IsActive) values ('Admin', 1);
	
end

if not exists (select 1 from dbo.[PersonRoleAssignment])
begin

	Insert into PersonRoleAssignment (PersonId, PersonRole, IsActive) values (1, 'Admin', 1);
	Insert into PersonRoleAssignment (PersonId, PersonRole, IsActive) values (1, 'Basic', 1);
	Insert into PersonRoleAssignment (PersonId, PersonRole, IsActive) values (1, 'Premium', 1);

end



if not exists (select 1 from dbo.AuthorRole)
begin

	Insert into AuthorRole([Role]) values ('Primary Author');
	Insert into AuthorRole([Role]) values ('Secondary Author');
	Insert into AuthorRole([Role]) values ('Editor');
	
end



--if not exists (select 1 from dbo.[WorkType])
--begin	

--	Insert into WorkType (WorkType, IsActive) 
--	values ('Book', 1);

--	Insert into WorkType (WorkType, IsActive) 
--	values ('Journal', 1);

--	Insert into WorkType (WorkType, IsActive) 
--	values ('Government Document', 1);

--	Insert into WorkType (WorkType, IsActive) 
--	values ('Map', 1);

--	Insert into WorkType (WorkType, IsActive) 
--	values ('Globe', 1);

--	Insert into WorkType (WorkType, IsActive) 
--	values ('Atlas', 1);

--	Insert into WorkType (WorkType, IsActive) 
--	values ('Microform', 1);

--	Insert into WorkType (WorkType, IsActive) 
--	values ('E-Resource', 1);

--	Insert into WorkType (WorkType, IsActive) 
--	values ('Sound Recording', 1);

--	Insert into WorkType (WorkType, IsActive) 
--	values ('Video Recording', 1);

--	Insert into WorkType (WorkType, IsActive) 
--	values ('Print', 1);

--	Insert into WorkType (WorkType, IsActive) 
--	values ('Drawing', 1);

--	Insert into WorkType (WorkType, IsActive) 
--	values ('Photograph', 1);

--	Insert into WorkType (WorkType, IsActive) 
--	values ('Film', 1);

--	Insert into WorkType (WorkType, IsActive) 
--	values ('Manuscript', 1);

--	Insert into WorkType (WorkType, IsActive) 
--	values ('Other', 1);





--	--Insert into WorkType (WorkType, IsActive) 
--	--values ('Conference Paper', 1);

--	--Insert into WorkType (WorkType, IsActive) 
--	--values ('Legislation', 1);

--	--Insert into WorkType (WorkType, IsActive) 
--	--values ('Map', 1);

--	--Insert into WorkType (WorkType, IsActive) 
--	--values ('Newspaper Article', 1);

--	--Insert into WorkType (WorkType, IsActive) 
--	--values ('Patent', 1);

--	--Insert into WorkType (WorkType, IsActive) 
--	--values ('Thesis', 1);

--	--Insert into WorkType (WorkType, IsActive) 
--	--values ('Degree', 1);

--	--Insert into WorkType (WorkType, IsActive) 
--	--values ('Certification', 1);

--	--Insert into WorkType (WorkType, IsActive) 
--	--values ('Standard', 1);

--	--Insert into WorkType (WorkType, IsActive) 
--	--values ('Statistic', 1);

--	--Insert into WorkType (WorkType, IsActive) 
--	--values ('Rare Book', 1);

--	--Insert into WorkType (WorkType, IsActive) 
--	--values ('Journal Article', 1);

--	--Insert into WorkType (WorkType, IsActive) 
--	--values ('Internet Article', 1);

----	Articles
----Books
----Journals
----Archives - here at Reading or elsewhere
----Company information
----Conference papers
----European Union information and publications
----Examination papers
----Free research resources
----Government publications - see Parliamentary and government publications
----Legislation
----Maps
----Market research
----Newspapers
----Parliamentary and government publications
----Patents
----Rare books - see here at Reading or elsewhere
----Standards
----Statistics
----Theses
----Video, image and sound resources
--end