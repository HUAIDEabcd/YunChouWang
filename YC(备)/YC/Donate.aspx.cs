using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Models;

namespace YC
{
    public partial class Donate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["phone"]!=null)
                {
                    BindRep();
                }
                else
                {

                }
            }
        }

        private void BindRep()
        {
            string ph = Session["phone"].ToString();
            Users users = UsersManager.Seluser(ph);
            int usid = users.Userid;
            Repeater1.DataSource = DonateManager.GetDonate(usid);
            Repeater1.DataBind();
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName=="Del")
            {
                int id = int.Parse(e.CommandArgument.ToString());
                DonateManager.Deldon(id);
                BindRep();
            }
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