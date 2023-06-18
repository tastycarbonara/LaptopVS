using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using LaptopVS.Model;

namespace LaptopVS.UserSettings
{
    public class UserRepository
    {
        public static string AddNewUser(string username, string password)
        {
            laptopsEntities3 userdb = new laptopsEntities3();
            User user = UserFactory.makeUser(username, password);
            userdb.Users.Add(user);
            userdb.SaveChanges();

            return "Success";
        }
    }
}