using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using LaptopVS.Laptop;
using LaptopVS.Comments;

namespace LaptopVS
{
    public partial class Main : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\laptops.mdf';Integrated Security=True;MultipleActiveResultSets=True;Connect Timeout=30;Application Name=EntityFramework");
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

            HttpCookie cookie = Request.Cookies["ingfo"];
            if (cookie == null)
            {
                LOGOUT.Visible = false;
                AddNewLaptop.Visible = false;
                SendComment1.Visible = false;
                SendComment2.Visible = false;
                CommentBox1.Text = "Login to make comments!";
                CommentBox1.Enabled = false;
                CommentBox2.Text = "Login to make comments!";
                CommentBox2.Enabled = false;
            }

            Image1.Visible = false;
            Image2.Visible = false;

            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;
            Label7.Visible = false;
            ram.Visible = false;
            price.Visible = false;
            storage.Visible = false;
            Label8.Visible = false;
            Label9.Visible = false;
            temp.Visible = false;
            sound.Visible = false;
            Label10.Visible = false;
            screen.Visible = false;
            afflink.Visible = false;

            Label11.Visible = false;
            Label12.Visible = false;
            Label13.Visible = false;
            Label14.Visible = false;
            Label15.Visible = false;
            Label16.Visible = false;
            Label17.Visible = false;
            ram2.Visible = false;
            price2.Visible = false;
            storage2.Visible = false;
            Label18.Visible = false;
            Label19.Visible = false;
            temp2.Visible = false;
            sound2.Visible = false;
            Label20.Visible = false;
            screen2.Visible = false;
            afflink2.Visible = false;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void compbutton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\laptops.mdf';Integrated Security=True;MultipleActiveResultSets=True;Connect Timeout=30;Application Name=EntityFramework");
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

            Image1.Visible = true;
            Image2.Visible = true;

            Label1.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
            Label6.Visible = true;
            Label7.Visible = true;
            ram.Visible = true;
            price.Visible = true;
            storage.Visible = true;
            Label8.Visible = true;
            Label9.Visible = true;
            temp.Visible = true;
            sound.Visible = true;
            Label10.Visible = true;
            screen.Visible = true;
            afflink.Visible = true;

            Label11.Visible = true;
            Label12.Visible = true;
            Label13.Visible = true;
            Label14.Visible = true;
            Label15.Visible = true;
            Label16.Visible = true;
            Label17.Visible = true;
            ram2.Visible = true;
            price2.Visible = true;
            storage2.Visible = true;
            Label18.Visible = true;
            Label19.Visible = true;
            temp2.Visible = true;
            sound2.Visible = true;
            Label20.Visible = true;
            screen2.Visible = true;
            afflink2.Visible = true;

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

            HttpCookie cookie = new HttpCookie("ingfo");
            cookie["left"] = LeftLaptopSelection.SelectedValue;
            cookie["right"] = LaptopRightSelection.SelectedValue;

            Comment1.DataSource = CommentRepository.GetComments();
            Comment1.DataBind();

            foreach (GridViewRow myrow in Comment1.Rows)
            {
                myrow.Visible = false;
                if (myrow.Cells[3].Text == cookie["left"])
                {
                    myrow.Visible = true;
                }
            }

            Comment2.DataSource = CommentRepository.GetComments();
            Comment2.DataBind();

            foreach (GridViewRow myrow in Comment2.Rows)
            {
                myrow.Visible = false;
                if (myrow.Cells[3].Text == cookie["right"])
                {
                    myrow.Visible = true;
                }
            }

        }

        protected void LOGOUT_Click(object sender, ImageClickEventArgs e)
        {
            HttpCookie cookie = Request.Cookies["ingfo"];

            cookie.Expires = DateTime.Now.AddDays(-1);

            Response.Cookies.Add(cookie);
            Response.Redirect("Main.aspx");
        }

        protected void AddNewLaptop_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["ingfo"];
            if (cookie != null)
            {
                if (cookie["role"] == "Admin")
                {
                    Response.Redirect("AddNewLaptop.aspx");
                }
            }
            Response.Redirect("Main.aspx");
        }

        protected void SendComment1_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["ingfo"];
            string usern = cookie["user"].ToString();
            int laptopid = int.Parse(LeftLaptopSelection.SelectedValue);
            CommentController.addNewComment(laptopid, usern, CommentBox1.Text);
            Response.Redirect("Main.aspx");
        }

        protected void SendComment2_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["ingfo"];
            string usern = cookie["user"].ToString();
            int laptopid = int.Parse(LaptopRightSelection.SelectedValue);
            CommentController.addNewComment(laptopid, usern.ToString(), CommentBox2.Text);
            Response.Redirect("Main.aspx");
        }
    }
}