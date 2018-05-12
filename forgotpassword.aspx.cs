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
    public partial class WebForm4 : System.Web.UI.Page
    {
        String b;
        SqlCommand sd;
        SqlConnection sq=new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            b = Session["name"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sq.Open();
            sd=new SqlCommand("update [Table] Set password='"+TextBox1.Text+"' where name='"+b+"'",sq);
            int i = sd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Redirect("WebForm1.aspx");
            }
        }
    }
}