using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LaptopVS
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            laptopsEntities db = new laptopsEntities();

            User user = (from u in db.Users where u.username.Equals(usern.Text) && u.password.Equals(pw.Text) select u).FirstOrDefault(); //FirstOrDefault = untuk memilih hasil pencarian pertama

            if (user == null)
            {
                Response.Redirect("login.aspx");
                return;
            }

            HttpCookie cookie = new HttpCookie("ingfo");

            cookie["user"] = user.username;
            cookie["role"] = user.role;

            Session["user_pass"] = user.password;

            cookie.Expires = DateTime.Now.AddDays(1);

            Response.Cookies.Add(cookie);

            Response.Redirect("Main.aspx");
        }
    }
}