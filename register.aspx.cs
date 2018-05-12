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
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection sq = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand sd;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");   
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sq.Open();
            sd = new SqlCommand("insert into [Table] values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox10.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','"+TextBox11.Text+"','"+TextBox12.Text+"')", sq);
            int i=sd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Redirect("WebForm1.aspx");
            }
        }
    }
}