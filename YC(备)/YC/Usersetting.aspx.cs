using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Models;
using BLL;
using System.IO;

namespace YC
{
    public partial class Usersetting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string ph = Session["phone"].ToString();
                Users u = UsersManager.CheckUser(ph);
                Label1.Text = u.Phone;
                Label2.Text = u.Username;
                Label3.Text = u.Email;
                Label4.Text = u.Sex;
                Label5.Text = u.Address;
                Label6.Text = u.Usertext;
                Label7.Text = u.Receing;
                if (Label7.Text=="")
                {
                    Label7.Text = "您还没有收件地址，请先点击修改进行添加！";
                }
                TextBox1.Text= u.Username;
                TextBox2.Text = u.Email;
                TextBox3.Text = u.Sex;
                TextBox4.Text = u.Address;
                TextBox5.Text = u.Usertext;
                TextBox9.Text = u.Receing;
                Repeater1.DataSource = UsersManager.SelectUser(ph);
                Repeater1.DataBind();
                
            }
        }

        protected void Queding_Click(object sender, EventArgs e)
        {
            string ph = Session["phone"].ToString();
            Users user = UsersManager.CheckUser(ph);
            Users u = new Users();
            u.Userid = user.Userid;
            u.Username = TextBox1.Text;
            u.Email = TextBox2.Text;
            u.Sex = TextBox3.Text;
            u.Address = TextBox4.Text;
            u.Usertext = TextBox5.Text;
            if (UsersManager.Setting(u))
            {
                Response.Write("<script>alert('修改成功！')</script>");
                Users uu = UsersManager.CheckUser(ph);
                Label1.Text = u.Phone;
                Label2.Text = u.Username;
                Label3.Text = u.Email;
                Label4.Text = u.Sex;
                Label5.Text = u.Address;
                Label6.Text = u.Usertext;
            }

        }

        protected void Exit_Click(object sender, EventArgs e)
        {
            Session.Remove("phone");
            Session.Remove("password");
            Session.Remove("id");
            Response.Redirect("index.aspx");
        }

        protected void Mimabtn_Click(object sender, EventArgs e)
        {
            string ph = Session["phone"].ToString();
            Users user = UsersManager.CheckUser(ph);
            if (TextBox6.Text == user.Password)
            {
                if (TextBox7.Text.Trim() != "")
                {
                    if (TextBox6.Text != TextBox7.Text)
                    {
                        Users u = new Users();
                        u.Userid = user.Userid;
                        u.Password = TextBox7.Text;
                        if (UsersManager.Uppwd(u))
                        {
                            Response.Write("<script>alert('修改成功！')</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('新密码不能与旧密码一致！')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('新密码不能为空！')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('原密码输入错误！')</script>");
            }
        }

        protected void Dzbtn_Click(object sender, EventArgs e)
        {
            string ph = Session["phone"].ToString();
            Users user = UsersManager.CheckUser(ph);
            Users u = new Users();
            u.Receing = TextBox9.Text;
            u.Userid = user.Userid;
            if (UsersManager.UPdz(u))
            {
                Response.Write("<script>alert('修改成功！')</script>");
                Users uu = UsersManager.CheckUser(ph);
                Label7.Text = uu.Receing;
            }
        }

        private string FileUpload()
        {
            if (FileUpload1.HasFile)
            {
                //获取上传文件名
                string filename = FileUpload1.FileName;
                //获取上传文件后缀名
                string filefix = Path.GetExtension(filename).ToLower();

                if (filefix != ".jpg" && filefix != ".jpeg" && filefix != ".png")
                {
                    Label8.Text = "您上传的不是图片，请重新选择文件";
                }
                else
                {
                    if (FileUpload1.PostedFile.ContentLength < 8192000)
                    {
                        FileUpload1.SaveAs(Server.MapPath(".\\face\\" + filename));
                        string lujing = "face/" + filename;
                        return lujing;
                    }
                    else
                    {
                        Label8.Text = "上传的图片大小不能超过8M";
                    }
                }
            }
            return null;
        }

        protected void Imgbtn_Click(object sender, EventArgs e)
        {
            string ph = Session["phone"].ToString();
            Users user = UsersManager.CheckUser(ph);
            Users u = new Users();
            u.Userid = user.Userid;
            u.Portrait=FileUpload();
            if (UsersManager.UPimg(u))
            {
                Response.Write("<script>alert('修改成功！');window.location.href='Usersetting.aspx'</script>");
            }
        }
    }
}