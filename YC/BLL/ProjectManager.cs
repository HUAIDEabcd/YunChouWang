using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using Models;

namespace BLL
{
    public static class ProjectManager
    {
        //查询所有信息
        public static List<Project> GetProjects()
        {
            return ProjectServer.GetProjects();
        }

        //模糊查询信息
        public static List<Project> GetProjects(string key)
        {
            return ProjectServer.GetProjects(key);
        }

        //根据项目类别查询
        public static List<Project> ShowPro(string type)
        {
            return ProjectServer.ShowPro(type);
        }
        //新增项目模块
        public static bool Projectinfo(int userid, string proname, decimal proprice, int proday, string protype, string prodz, string proimg, string protitle, string protxt, string prophone, decimal donprice,int daysing)
        {
            return ProjectServer.Projectinfo(userid, proname, proprice, proday, protype, prodz, proimg, protitle, protxt, prophone, donprice,daysing);
        }

        //根据id查询
        public static List<Project> GetPro(int id)
        {
            return ProjectServer.GetPro(id);
        }

        //根据id查询返回回到对象中
        public static Project Getject(int id)
        {
            return ProjectServer.Getject(id);
        }

        //修改项目已募捐金额
        public static bool Uppro(double qian, int id)
        {
            return ProjectServer.Uppro(qian,id);
        }
    }
}
