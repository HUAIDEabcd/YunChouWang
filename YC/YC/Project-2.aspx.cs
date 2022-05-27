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
    public partial class Project_2 : System.Web.UI.Page
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
        protected void Button2_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            string address = TextBox2.Text;
            string phone = TextBox3.Text;
            string bankname = TextBox4.Text;
            string bankcard = TextBox5.Text;
            string ph = Session["phone"].ToString();
            Users us = UsersManager.Seluser(ph);
            int userid = us.Userid;
            if (name.Trim() != "" && address.Trim() != "" && phone.Trim() != "" && bankname.Trim() != "" && bankcard.Trim() != "")
            {
                if (MessageManager.Messageinfo(userid,name,address,phone,bankname,bankcard))
                {
                    Response.Write("<script>alert('恭喜您成功发布您的众筹项目，请您内心等待！');window.location.href='Project-3.aspx'</script>");
                }
                else
                {
                    Response.Write("<script>alert('cuowu！')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('请将您的信息完善完整！')</script>");
            }    
        }
    }
}