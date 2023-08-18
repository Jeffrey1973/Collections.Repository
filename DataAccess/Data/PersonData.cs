using DataAccess.DbAccess;
using CoreEntities.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Data;

public class PersonData : IPersonData
{
    private readonly ISqlDataAccess _db;

    public PersonData(ISqlDataAccess db)
    {
        _db = db;
    }

    public async Task<IEnumerable<Person>> GetPeople() => await _db.LoadData<Person, dynamic>("dbo.spPeople_GetAll", new { });

    public async Task<Person?> GetPersonAsync(int id)
    {
        var people = await _db.LoadData<Person, dynamic>(
            "dbo.spPeople_GetById",
            new { Id = id });

        return people.FirstOrDefault();
    }

    public Task InsertPerson(Person person) => _db.SaveData("dbo.spPeople_Insert", person);

    public Task UpdatePerson(Person person) => _db.SaveData("dbo.spPeople_Update", person);

}
