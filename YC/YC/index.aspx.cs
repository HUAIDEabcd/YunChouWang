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
    public partial class index : System.Web.UI.Page
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
            Repeater1.DataSource = ProjectManager.GetProjects();
            Repeater1.DataBind();
        }

        protected void Quanbu_Click(object sender, EventArgs e)
        {
            BindRep();
        }

        protected void Jiating_Click(object sender, EventArgs e)
        {
            string type = "家庭困难";
            Repeater1.DataSource = ProjectManager.ShowPro(type);
            Repeater1.DataBind();
        }

        protected void Shangye_Click(object sender, EventArgs e)
        {
            string type = "商业困难";
            Repeater1.DataSource = ProjectManager.ShowPro(type);
            Repeater1.DataBind();
        }

        protected void Ziran_Click(object sender, EventArgs e)
        {
            string type = "自然灾害";
            Repeater1.DataSource = ProjectManager.ShowPro(type);
            Repeater1.DataBind();
        }

        protected void Chuangye_Click(object sender, EventArgs e)
        {
            string type = "创业众筹";
            Repeater1.DataSource = ProjectManager.ShowPro(type);
            Repeater1.DataBind();
        }

        protected void Jingji_Click(object sender, EventArgs e)
        {
            string type = "经济困难";
            Repeater1.DataSource = ProjectManager.ShowPro(type);
            Repeater1.DataBind();
        }

        protected void Qita_Click(object sender, EventArgs e)
        {
            string type = "其它";
            Repeater1.DataSource = ProjectManager.ShowPro(type);
            Repeater1.DataBind();
        }

        protected void Sousuo_Click(object sender, EventArgs e)
        {
            string key = TextBox1.Text;
            Repeater1.DataSource = ProjectManager.GetProjects(key);
            Repeater1.DataBind();
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