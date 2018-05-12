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
    public partial class WebForm3 : System.Web.UI.Page
    {
        public static int i;
        SqlConnection sq = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand sd;
        SqlDataAdapter sad;
 
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            sad = new SqlDataAdapter("select * from [Table] where clr='"+TextBox2.Text+"' and hobbie='"+TextBox3.Text+"'",sq);
            sad.Fill(dt);
            Session["name"] = TextBox1.Text;
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("WebForm4.aspx");
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
    }
}