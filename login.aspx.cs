using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace registrationform
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection sq=new SqlConnection(ConfigurationManager.ConnectionStrings["Connectionstring"].ConnectionString);
        SqlDataAdapter sd;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm2.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            Session["name"] = TextBox1.Text;
            Session["pass"] = TextBox2.Text;
            DataTable dt = new DataTable();
            sd = new SqlDataAdapter("select name,Password from [Table] where name='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", sq);
            sd.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                Response.Redirect("h1.aspx");
            }

            else
            {
                Label3.Text = "Wrong Pasword!!";
            }
          
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("WebForm3.aspx");
            

        }
    }
}