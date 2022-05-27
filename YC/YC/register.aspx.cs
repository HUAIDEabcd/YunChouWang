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
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Trim() != "" && TextBox2.Text.Trim() != "" && TextBox4.Text.Trim() != "")
            {
                if (True())
                {
                    bool a = UsersManager.Register(TextBox1.Text,TextBox2.Text,TextBox4.Text);
                    if (a)
                    {
                        Response.Write("<script>var a = confirm('注册成功，请进行登录！');if(a==true){window.location.href='login.aspx'}</script>");
                        Session["phone"] = TextBox1.Text;
                    }
                }
                else
                {
                    Response.Write("<script>alert('手机号码："+TextBox1.Text+"已存在！请您重新输入或登录！')</script>");
                }
            }
        }

        protected bool True()
        {
            if (UsersManager.Seluser(TextBox1.Text) != null)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

    }
}