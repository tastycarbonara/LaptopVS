using LaptopVS.UserSettings;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LaptopVS
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            UserController.RegisterUser(usernm.Text, pass.Text, confpass.Text);
            Response.Redirect("Login.aspx");
        }
    }
}