using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using LaptopVS.Laptop;

namespace LaptopVS
{
    public partial class Main : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='D:\KULIAH\Semester 4\Software Engineering\LaptopVS\LaptopVS\App_Data\laptops.mdf';Integrated Security=True;MultipleActiveResultSets=True;Connect Timeout=30;Application Name=EntityFramework");
                SqlCommand cmd = new SqlCommand("select * from laptop", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                LeftLaptopSelection.DataSource = dt;
                LeftLaptopSelection.DataTextField = "laptopname";
                LeftLaptopSelection.DataValueField = "Id";
                LeftLaptopSelection.DataBind();

                LaptopRightSelection.DataSource = dt;
                LaptopRightSelection.DataTextField = "laptopname";
                LaptopRightSelection.DataValueField = "Id";
                LaptopRightSelection.DataBind();

            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void compbutton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='D:\KULIAH\Semester 4\Software Engineering\LaptopVS\LaptopVS\App_Data\laptops.mdf';Integrated Security=True;MultipleActiveResultSets=True;Connect Timeout=30;Application Name=EntityFramework");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from laptop where Id = '" + LeftLaptopSelection.SelectedValue + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            cpu.Text = dr["cpu"].ToString();
            cpuperf.Text = dr["cpuperf"].ToString();
            gpu.Text = dr["gpu"].ToString();
            gpuperf.Text = dr["gpuperf"].ToString();
            ramsize.Text = dr["ram"].ToString();
            storagesize.Text = dr["storage"].ToString();
            tempcels.Text = dr["temperature"].ToString();
            priceusd.Text = dr["price"].ToString();
            sounddb.Text = dr["sound"].ToString();
            screenres.Text = dr["screen"].ToString();
            afflinktokped.Text = dr["afflink"].ToString();
            con.Close();

            con.Open();
            SqlCommand cmd2 = new SqlCommand("select * from laptop where Id = '" + LaptopRightSelection.SelectedValue + "'", con);
            SqlDataReader dr2 = cmd2.ExecuteReader();
            dr2.Read();
            cpu2.Text = dr2["cpu"].ToString();
            cpuperf2.Text = dr2["cpuperf"].ToString();
            gpu2.Text = dr2["gpu"].ToString();
            gpuperf2.Text = dr2["gpuperf"].ToString();
            ramsize2.Text = dr2["ram"].ToString();
            storagesize2.Text = dr2["storage"].ToString();
            tempcels2.Text = dr2["temperature"].ToString();
            priceusd2.Text = dr2["price"].ToString();
            sounddb2.Text = dr2["sound"].ToString();
            screenres2.Text = dr2["screen"].ToString();
            afflinktokped2.Text = dr2["afflink"].ToString();
            con.Close();

            if (LeftLaptopSelection.SelectedValue == "2")
            {
                Image1.ImageUrl = "~/spectre.jpg";
            }
            else if(LeftLaptopSelection.SelectedValue == "3")
            {
                Image1.ImageUrl = "~/tuf.jpg";
            }
            else if(LeftLaptopSelection.SelectedValue == "4")
            {
                Image1.ImageUrl = "~/katana.png";
            }
            else if (LeftLaptopSelection.SelectedValue == "5")
            {
                Image1.ImageUrl = "~/pavilion.jpg";
            }
            else if (LeftLaptopSelection.SelectedValue == "6")
            {
                Image1.ImageUrl = "~/swift.jpg";
            }

            if (LaptopRightSelection.SelectedValue == "2")
            {
                Image2.ImageUrl = "~/spectre.jpg";
            }
            else if (LaptopRightSelection.SelectedValue == "3")
            {
                Image2.ImageUrl = "~/tuf.jpg";
            }
            else if (LaptopRightSelection.SelectedValue == "4")
            {
                Image2.ImageUrl = "~/katana.png";
            }
            else if (LaptopRightSelection.SelectedValue == "5")
            {
                Image2.ImageUrl = "~/pavilion.jpg";
            }
            else if (LaptopRightSelection.SelectedValue == "6")
            {
                Image2.ImageUrl = "~/swift.jpg";
            }
        }
    }
}