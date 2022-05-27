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
    public partial class Prodetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRep();
            }
        }

        private void BindRep()
        {
            int a = int.Parse(Request["id"]);
            Repeater1.DataSource = ProjectManager.GetPro(a);
            Repeater1.DataBind();
        }

        protected void Queding_Click(object sender, EventArgs e)
        {
            if (Session["phone"]!=null)
            {
                double pr = double.Parse(TextBox1.Text);
                int id = int.Parse(Request["id"]);
                double yuan = double.Parse(ProjectManager.Getject(id).Donprice.ToString());
                double qian = yuan + pr;
                DateTime time = DateTime.Now;
                string u = Session["phone"].ToString();
                Users us = UsersManager.Seluser(u);
                int uid = us.Userid;
                string phone = us.Phone;
                ProjectManager.Uppro(qian,id);
                BindRep();
                DonateManager.Doninfo(uid,id,pr,time,phone);
                Response.Write("<script>alert('感谢您的帮助，祝您前程似锦！')</script>");
            }
            else
            {
                Response.Write("<script>var a = confirm('请先登录后，在进行捐款！');if(a==true){window.location.href='login.aspx'}</script>");
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