using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Entity;
using Azure.DomainModel;

namespace Azure.DataRepository
{
    public class DataContext : DbContext
    {
        public DbSet<User> Users { get; set; }
    }
}
