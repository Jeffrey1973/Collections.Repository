namespace CoreEntities.Models;

public class Person : BaseModel
{
    public required string FirstName { get; set; }
    public required string LastName { get; set; }

    public required string? MiddleName { get; set; }

    public required string? PreferredName { get; set; }
    public required DateTime DateOfBirth { get; set; }
}

