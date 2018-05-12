using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace registrationform
{
    public partial class h1 : System.Web.UI.Page
    {
        String a,b;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["name"] != null)
            {
                a = Session["name"].ToString();
                b = Session["pass"].ToString();
                Label1.Text = a+":your password is " + b;
            }
            else
            {
                Response.Redirect("WebForm1.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("WebForm1.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("WebForm5.aspx");
        }
    }
}