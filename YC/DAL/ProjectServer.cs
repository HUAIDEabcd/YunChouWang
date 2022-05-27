using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class ProjectServer
    {

        //获取项目信息
        public static List<Project> GetProjects()
        {   
            List<Project> stpro = new List<Project>();
            string sql = "select * from Project";
            DataTable ds = DBHelper.GetDataTable(sql); 
            for (int i = 0; i < ds.Rows.Count; i++)
            {
                Project pro = new Project();
                pro.Proid = int.Parse(ds.Rows[i][0].ToString());
                pro.Userid= int.Parse(ds.Rows[i][1].ToString());
                pro.Proname = ds.Rows[i][2].ToString();
                pro.Amount = decimal.Parse(ds.Rows[i][3].ToString());
                pro.Prodays = int.Parse(ds.Rows[i][4].ToString());
                pro.Type= ds.Rows[i][5].ToString();
                pro.Proaddress= ds.Rows[i][6].ToString();
                pro.Proimg= ds.Rows[i][7].ToString();
                pro.Protitle= ds.Rows[i][8].ToString();
                pro.Protext= ds.Rows[i][9].ToString();
                pro.Prophone= ds.Rows[i][10].ToString();
                pro.Donprice = decimal.Parse(ds.Rows[i][11].ToString());
                pro.Daysing = int.Parse(ds.Rows[i][12].ToString());
                stpro.Add(pro);
            }
            return stpro;
        }

        //模糊查询项目信息
        public static List<Project> GetProjects(string key)
        {
            List<Project> stpro = new List<Project>();
            string sql = string.Format("select * from Project where Proname like '%{0}%' or Amount like '%{0}%' or Prodays like '%{0}%' or Type like '%{0}%' or Proaddress like '%{0}%' or Protitle like '%{0}%' or Protext like '%{0}%' or Prophone like '%{0}%'",key);
            DataTable ds = DBHelper.GetDataTable(sql);
            
            for (int i = 0; i < ds.Rows.Count; i++)
            {
                Project pro = new Project();
                pro.Proid = int.Parse(ds.Rows[i][0].ToString());
                pro.Userid = int.Parse(ds.Rows[i][1].ToString());
                pro.Proname = ds.Rows[i][2].ToString();
                pro.Amount = decimal.Parse(ds.Rows[i][3].ToString());
                pro.Prodays = int.Parse(ds.Rows[i][4].ToString());
                pro.Type = ds.Rows[i][5].ToString();
                pro.Proaddress = ds.Rows[i][6].ToString();
                pro.Proimg = ds.Rows[i][7].ToString();
                pro.Protitle = ds.Rows[i][8].ToString();
                pro.Protext = ds.Rows[i][9].ToString();
                pro.Prophone = ds.Rows[i][10].ToString();
                pro.Donprice = decimal.Parse(ds.Rows[i][11].ToString());
                pro.Daysing = int.Parse(ds.Rows[i][12].ToString());
                stpro.Add(pro);
            }
            return stpro;
        }

        //根据id查询
        public static List<Project> GetPro(int id)
        {
            List<Project> stpro = new List<Project>();
            string sql = string.Format("select * from Project where Proid ='{0}'",id);
            DataTable ds = DBHelper.GetDataTable(sql);

            for (int i = 0; i < ds.Rows.Count; i++)
            {
                Project pro = new Project();
                pro.Proid = int.Parse(ds.Rows[i][0].ToString());
                pro.Userid = int.Parse(ds.Rows[i][1].ToString());
                pro.Proname = ds.Rows[i][2].ToString();
                pro.Amount = decimal.Parse(ds.Rows[i][3].ToString());
                pro.Prodays = int.Parse(ds.Rows[i][4].ToString());
                pro.Type = ds.Rows[i][5].ToString();
                pro.Proaddress = ds.Rows[i][6].ToString();
                pro.Proimg = ds.Rows[i][7].ToString();
                pro.Protitle = ds.Rows[i][8].ToString();
                pro.Protext = ds.Rows[i][9].ToString();
                pro.Prophone = ds.Rows[i][10].ToString();
                pro.Donprice = decimal.Parse(ds.Rows[i][11].ToString());
                pro.Daysing = int.Parse(ds.Rows[i][12].ToString());
                stpro.Add(pro);
            }
            return stpro;
        }

        //根据项目类别查询
        public static List<Project> ShowPro(string type)
        {
            List<Project> stpro = new List<Project>();
            string sql = string.Format("select * from Project where Type='{0}'", type);
            DataTable ds = DBHelper.GetDataTable(sql);
            for (int i = 0; i < ds.Rows.Count; i++)
            {
                Project pro = new Project();
                pro.Proid = int.Parse(ds.Rows[i][0].ToString());
                pro.Userid = int.Parse(ds.Rows[i][1].ToString());
                pro.Proname = ds.Rows[i][2].ToString();
                pro.Amount = decimal.Parse(ds.Rows[i][3].ToString());
                pro.Prodays = int.Parse(ds.Rows[i][4].ToString());
                pro.Type = ds.Rows[i][5].ToString();
                pro.Proaddress = ds.Rows[i][6].ToString();
                pro.Proimg = ds.Rows[i][7].ToString();
                pro.Protitle = ds.Rows[i][8].ToString();
                pro.Protext = ds.Rows[i][9].ToString();
                pro.Prophone = ds.Rows[i][10].ToString();
                pro.Donprice = decimal.Parse(ds.Rows[i][11].ToString());
                pro.Daysing = int.Parse(ds.Rows[i][12].ToString());
                stpro.Add(pro);
            }
            return stpro;
        }

        //根据id查询返回回到对象中
        public static Project Getject(int id)
        {
            string sql = string.Format("select * from Project where Proid ='{0}'", id);
            DataTable ds = DBHelper.GetDataTable(sql);
            Project pro = null;
            for (int i = 0; i < ds.Rows.Count; i++)
            {
                pro= new Project();
                pro.Proid = int.Parse(ds.Rows[i][0].ToString());
                pro.Userid = int.Parse(ds.Rows[i][1].ToString());
                pro.Proname = ds.Rows[i][2].ToString();
                pro.Amount = decimal.Parse(ds.Rows[i][3].ToString());
                pro.Prodays = int.Parse(ds.Rows[i][4].ToString());
                pro.Type = ds.Rows[i][5].ToString();
                pro.Proaddress = ds.Rows[i][6].ToString();
                pro.Proimg = ds.Rows[i][7].ToString();
                pro.Protitle = ds.Rows[i][8].ToString();
                pro.Protext = ds.Rows[i][9].ToString();
                pro.Prophone = ds.Rows[i][10].ToString();
                pro.Donprice = decimal.Parse(ds.Rows[i][11].ToString());
                pro.Daysing = int.Parse(ds.Rows[i][12].ToString());
            }
            return pro;
        }

        //新增项目模块
        public static bool Projectinfo(int userid,string proname,decimal proprice,int proday,string protype,string prodz,string proimg,string protitle,string protxt,string prophone,decimal donprice,int daysing)
        {
            string sql = string.Format("insert Project values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}')",userid,proname,proprice,proday,protype,prodz,proimg,protitle,protxt,prophone,donprice,daysing);
            return DBHelper.ExecuteNonQuery(sql);
        }

        //修改项目金额
        public static bool Uppro(double qian,int id)
        {
            string sql = string.Format("update Project set Donprice='{0}' where Proid='{1}'",qian,id);
            return DBHelper.ExecuteNonQuery(sql);
        }

    }
}
