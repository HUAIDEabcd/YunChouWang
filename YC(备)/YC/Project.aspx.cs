using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YC
{
    public partial class Project : System.Web.UI.Page
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
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            { 
                if (Session["phone"] != null)
                {
                    Response.Redirect("Project-1.aspx");
                }
                else
                {
                    Response.Write("<script>var a = confirm('请先登录！');if(a==true){window.location.href='login.aspx'}</script>");
                }
            }
            else
            {
                Response.Write("<script>confirm('请已仔细阅读并同意网站《服务协议》和《众筹公告》')</script>");
            }
        }
    }
}