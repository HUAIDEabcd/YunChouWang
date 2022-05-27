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
    public class DonateServer
    {
        //根据用户id查询数据
        public static List<Lian> GetDonate(int usid)
        {
            List<Lian> don = new List<Lian>();
            string sql = "select Donid,Proname,d.Donprice,Dontime,Donphone from Donate d,Project p where d.ProID=p.ProID and UsersID='"+usid+"'";
            DataTable ds = DBHelper.GetDataTable(sql);
            for (int i = 0; i < ds.Rows.Count; i++)
            {
                Lian la = new Lian();
                la.Donid = int.Parse(ds.Rows[i][0].ToString());
                la.Proname = ds.Rows[i][1].ToString();
                la.Donprice = double.Parse(ds.Rows[i][2].ToString());
                la.Dontime = ds.Rows[i][3].ToString();
                la.Donphone = ds.Rows[i][4].ToString();
                don.Add(la);
            }
            return don;
        }

        //根据用户id删除数据
        public static bool Deldon(int id)
        {
            string sql = "Delete Donate where Donid='" + id + "'";
            if (DBHelper.ExecuteNonQuery(sql))
            {
                return true;
            }
            return false;
        }

        //插入用户捐款信息
        public static bool Doninfo(int uid,int pid,double qian,DateTime time,string phone)
        {
            string sql = string.Format("insert Donate values('{0}','{1}','{2}','{3}','{4}')",uid,pid,qian,time,phone);
            return DBHelper.ExecuteNonQuery(sql);
        }

    }
}
