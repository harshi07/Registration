using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace registrationform
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection  sq=new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand sd;
        String c;
        protected void Page_Load(object sender, EventArgs e)
        {
            c = Session["name"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sq.Open();
            sd = new SqlCommand("update [Table] set password='"+TextBox1.Text+"' where name='"+c+"'",sq);
            sd.ExecuteNonQuery();
            sq.Close();


        }
    }
}