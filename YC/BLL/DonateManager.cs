using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using DAL;

namespace BLL
{
    public class DonateManager
    {
        public static List<Lian> GetDonate(int usid)
        {
            return DonateServer.GetDonate(usid);
        }

        public static bool Deldon(int id)
        {
            return DonateServer.Deldon(id);
        }

        //插入用户捐款信息
        public static bool Doninfo(int uid, int pid, double qian, DateTime time, string phone)
        {
            return DonateServer.Doninfo(uid,pid,qian,time,phone);
        }
    }
}
