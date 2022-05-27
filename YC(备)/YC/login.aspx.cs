using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Models;
using BLL;

namespace YC
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string phone = TextBox1.Text;
                string password = TextBox2.Text;
                Users us = UsersManager.Login(phone, password);
                if (us != null)
                {
                    Session["phone"] = us.Phone;
                    Session["password"] = us.Password;
                    Response.Redirect("index.aspx?phone="+TextBox1.Text+"");
                }
                else
                {
                    Response.Write("<script>alert('账号或密码错误，请重新输入！')</script>");
                }
            }
        }



    }
}