using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using Models;

namespace BLL
{
    public class MessageManager
    {
        public static bool Messageinfo(int id, string name, string dizhi, string phone, string bankname, string bankcard)
        {
            return MessageServer.Messageinfo(id,name,dizhi,phone,bankname,bankcard);
        }

    }
}
