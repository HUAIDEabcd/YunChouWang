using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;

namespace DAL
{
    public class MessageServer
    {

        public static bool Messageinfo(int id,string name,string dizhi,string phone,string bankname,string bankcard)
        {
            string sql = string.Format("insert Message values('{0}','{1}','{2}','{3}','{4}','{5}')",id,name,dizhi,phone,bankname,bankcard);
            return DBHelper.ExecuteNonQuery(sql);
        }

    }
}
