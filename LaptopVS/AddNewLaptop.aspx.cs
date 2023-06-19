using LaptopVS.Laptop;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LaptopVS
{
    public partial class AddNewLaptop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addnewlaptop_Click(object sender, EventArgs e)
        {
            LaptopController.addlaptop(laptopname.Text, cpuname.Text, cpuperf.Text, gpuname.Text, 
                gpuperf.Text, ramsize.Text, storagesize.Text, avgtemp.Text, pricetag.Text, noise.Text,
                screenres.Text, linktotokped.Text, int.Parse(battery.Text), features.Text, imagelink.Text);
            Response.Redirect("Main.aspx");
        }
    }
}