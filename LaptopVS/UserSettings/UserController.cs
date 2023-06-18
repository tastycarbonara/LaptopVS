using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using LaptopVS.Model;

namespace LaptopVS.UserSettings
{
    public class UserController
    {
        public static string RegisterUser(string username, string pass, string cpass)
        {
            if (username.Equals("") || pass.Equals("") || cpass.Equals(""))
            {
                return "Please fill all the fields";
            }
            else if (pass.Equals(cpass))
            {
                return UserRepository.AddNewUser(username, pass);
            }
            return "wrong password confirmation";
        }
    }
}