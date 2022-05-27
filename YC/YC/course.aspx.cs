using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YC
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Exit_Click(object sender, EventArgs e)
        {
            Session.Remove("phone");
            Session.Remove("password");
            Session.Remove("id");
            Response.Redirect("index.aspx");
        }
    }
}