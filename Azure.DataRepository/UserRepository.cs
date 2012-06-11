using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Azure.DomainModel;

namespace Azure.DataRepository
{
    public class UserRepository
    {
        private static DataContext _db = new DataContext();

        //public UserRepository()
        //{
        //    _db = new DataContext();
        //}

        public static IList<User> GetUsers()
        {
            return _db.Users.ToList();
        }
    }
}
