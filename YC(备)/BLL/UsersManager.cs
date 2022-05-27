using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using Models;
using DAL;

namespace BLL
{
    public class UsersManager
    {
        //用户登录
        public static Users Login(string phone, string password)
        {
            return UsersServer.Login(phone, password);
        }

        //查找一个用户
        public static List<Users> SelectUser(string phone)
        {
            return UsersServer.SelectUser(phone);
        }

        public static Users CheckUser(string phone)
        {
            return UsersServer.CheckUser(phone);
        }

        //用户注册
        public static bool Register(string phone,string password,string email)
        {
            return UsersServer.Register(phone,password,email);
        }

        //登录&&注册验证
        public static Users Seluser(string phone)
        {
            return UsersServer.Seluser(phone);
        }

        //修改
        public static bool Setting(Users u)
        {
            return UsersServer.Setting(u);
        }

        //密码
        public static bool Uppwd(Users u)
        {
            return UsersServer.Uppwd(u);
        }

        //收件地址
        public static bool UPdz(Users u)
        {
            return UsersServer.UPdz(u);
        }

        //头像
        public static bool UPimg(Users u)
        {
            return UsersServer.UPimg(u);
        }
    }
}
