using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class Message
    {
        int messid;
        int userid;
        string messname;
        string messaddress;
        string messphone;
        string bankname;
        int bankcard;

        public int Messid { get => messid; set => messid = value; }
        public int Userid { get => userid; set => userid = value; }
        public string Messname { get => messname; set => messname = value; }
        public string Messaddress { get => messaddress; set => messaddress = value; }
        public string Messphone { get => messphone; set => messphone = value; }
        public string Bankname { get => bankname; set => bankname = value; }
        public int Bankcard { get => bankcard; set => bankcard = value; }
    }
}
