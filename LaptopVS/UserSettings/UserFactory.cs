using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using LaptopVS.Model;

namespace LaptopVS.UserSettings
{
    public class UserFactory
    {
        public static User makeUser(string username, string password)
        {
            User user = new User();
            user.username = username;
            user.password = password;
            user.role = "User";

            return user;
        }
    }
}