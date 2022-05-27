using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Models;
using System.Data;

namespace YC
{
    public partial class YC : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["phone"]!= null && Session["password"] != null)
                {
                    string ph = Session["phone"].ToString();
                    string pd = Session["password"].ToString();
                    if (UsersManager.Login(ph,pd) != null)
                    {
                        Repeater2.DataSource = UsersManager.SelectUser(ph);
                        Repeater2.DataBind();
                    }
                }
                else
                {
                    string phone = "00000000000";
                    Repeater2.DataSource = UsersManager.SelectUser(phone);
                    Repeater2.DataBind();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            
        }

    }
}