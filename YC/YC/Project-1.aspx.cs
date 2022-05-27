using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using BLL;
using Models;

namespace YC
{
    public partial class Project_1 : System.Web.UI.Page
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
            string proimg = FileUpload();
            string proname = TextBox1.Text;
            decimal proprice = decimal.Parse(TextBox2.Text)+.00M;
            int prodays = int.Parse(TextBox3.Text);
            string prophone = TextBox4.Text;
            string protype = types.Items[(types.SelectedIndex)].Text;
            string prodizhi = TextBox5.Text;
            string protitle = TextArea1.Value;
            string protxt = TextArea2.Value;
            decimal donprice = 00.00M;
            int daysing = prodays;
            string ph = Session["phone"].ToString();
            Users users = UsersManager.Seluser(ph);
            int usid = users.Userid;
            if (proname.Trim() !="" && proprice.ToString().Trim() !="" && prodays.ToString().Trim() != "" && prophone.Trim() != "" && protype.Trim() != "" && prodizhi.Trim() != "" && protitle.Trim() != "" && protxt.Trim() != "" && proimg.ToString().Trim() != "")
            {
                if (ProjectManager.Projectinfo(usid,proname,proprice,prodays,protype,prodizhi,proimg,protitle,protxt,prophone,donprice,daysing))
                {   
                    Response.Write("<script>alert('恭喜您成功完成第一步，请您继续完善您的信息！');window.location.href='Project-2.aspx'</script>");
                }
                else
                {
                    Response.Write("<script>alert('失败！')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('请将所有信息填写完善！')</script>");
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
                    Label1.Text = "您上传的不是图片，请重新选择文件";
                }
                else
                {
                    if (FileUpload1.PostedFile.ContentLength < 8192000)
                    {
                        FileUpload1.SaveAs(Server.MapPath(".\\picture\\" + filename));
                        string lujing = "picture/" + filename;
                        return lujing;
                    }
                    else
                    {
                        Label1.Text = "上传的图片大小不能超过8M";
                    }
                }
            }
            return null;
        }

    }
}