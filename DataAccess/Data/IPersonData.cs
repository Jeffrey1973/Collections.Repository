using CoreEntities.Models;

namespace DataAccess.Data
{
    public interface IPersonData
    {
        Task<IEnumerable<Person>> GetPeople();
        Task<Person?> GetPersonAsync(int id);
        Task InsertPerson(Person person);
        Task UpdatePerson(Person person);
    }
}