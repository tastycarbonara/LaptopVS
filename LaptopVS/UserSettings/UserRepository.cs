using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LaptopVS.UserSettings
{
    public class UserRepository
    {
        public static string AddNewUser(string username, string password)
        {
            laptopsEntities userdb = new laptopsEntities();
            User user = UserFactory.makeUser(username, password);
            userdb.Users.Add(user);
            userdb.SaveChanges();

            return "Success";
        }
    }
}