using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Models;

namespace DAL
{
    public class UsersServer
    {
        //登陆验证
        public static Users Login(string phone, string password)
        {
            string sql = string.Format("select * from Users where phone='{0}' and password='{1}'",phone,password);
            int a = DBHelper.GetDataTable(sql).Rows.Count;

            if (a>0)
            {
                Users us = new Users();
                us.Phone = phone;
                us.Password = password;
                return us;
            }
            return null;
        }

        //查找用户
        public static List<Users> SelectUser(string phone)
        {
            string sql = string.Format("select * from Users where phone = '{0}'",phone);
            DataTable ds = DBHelper.GetDataTable(sql);
            List<Users> users = new List<Users>();
            for (int i = 0; i < ds.Rows.Count; i++)
            {
                Users user = new Users();
                user.Userid = int.Parse(ds.Rows[i][0].ToString());
                user.Phone = ds.Rows[i][1].ToString();
                user.Password = ds.Rows[i][2].ToString();
                user.Email = ds.Rows[i][3].ToString();
                user.Username = ds.Rows[i][4].ToString();
                user.Sex = ds.Rows[i][5].ToString();
                user.Address = ds.Rows[i][6].ToString();
                user.Usertext = ds.Rows[i][7].ToString();
                user.Portrait = ds.Rows[i][8].ToString();
                user.Receing = ds.Rows[i][9].ToString();
                users.Add(user);
            }
            return users;
        }

        public static Users CheckUser(string phone)
        {
            string sql = $"select * from Users where phone = '{phone}'";
            DataTable ds = DBHelper.GetDataTable(sql);
            Users user = new Users();
            for (int i = 0; i < ds.Rows.Count; i++)
            { 
                user.Userid = int.Parse(ds.Rows[i][0].ToString());
                user.Phone = ds.Rows[i][1].ToString();
                user.Password = ds.Rows[i][2].ToString();
                user.Email = ds.Rows[i][3].ToString();
                user.Username = ds.Rows[i][4].ToString();
                user.Sex = ds.Rows[i][5].ToString();
                user.Address = ds.Rows[i][6].ToString();
                user.Usertext = ds.Rows[i][7].ToString();
                user.Portrait = ds.Rows[i][8].ToString();
                user.Receing = ds.Rows[i][9].ToString();
            }
            return user;
        }

        //注册验证
        public static bool Register(string phone,string password,string email)
        {
            string sql = string.Format("insert Users(phone,Password,Email) values('{0}','{1}','{2}')", phone,password,email);
            return DBHelper.ExecuteNonQuery(sql);
        }

        //登录&&注册验证
        public static Users Seluser(string phone)
        {
            string sql = "select userid,username,phone,password from Users where phone='" + phone + "'";
            DataTable ds = DBHelper.GetDataTable(sql);
            Users users = null;
            for (int i = 0; i < ds.Rows.Count; i++)
            {
                users = new Users();
                users.Userid = int.Parse(ds.Rows[i][0].ToString());
                users.Username = ds.Rows[i][1].ToString();
                users.Phone = ds.Rows[i][2].ToString();
                users.Password = ds.Rows[i][3].ToString();
            }
            return users;

        }

        //修改
        public static bool Setting(Users u)
        {
            string sql = $"update Users set Username='{u.Username}',Email='{u.Email}',Sex='{u.Sex}',Address='{u.Address}',Usertext='{u.Usertext}' where Userid='{u.Userid}'";
            return DBHelper.ExecuteNonQuery(sql);
        }

        //密码
        public static bool Uppwd(Users u)
        {
            string sql = $"update Users set Password = '{u.Password}' where Userid = '{u.Userid}'";
            return DBHelper.ExecuteNonQuery(sql);
        }

        //收件地址
        public static bool UPdz(Users u)
        {
            string sql = $"update Users set Receing ='{u.Receing}' where Userid = '{u.Userid}'";
            return DBHelper.ExecuteNonQuery(sql);
        }

        //头像
        public static bool UPimg(Users u)
        {
            string sql = $"update Users set Portrait = '{u.Portrait}' where Userid = '{u.Userid}'";
            return DBHelper.ExecuteNonQuery(sql);
        }

    }
}
