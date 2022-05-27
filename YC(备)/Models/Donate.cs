using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class Donate
    {
        int donid;
        int userid;
        int proid;
        decimal donprice;
        DateTime dontime;
        string donphone;

        public int Donid { get => donid; set => donid = value; }
        public int Userid { get => userid; set => userid = value; }
        public int Proid { get => proid; set => proid = value; }
        public decimal Donprice { get => donprice; set => donprice = value; }
        public DateTime Dontime { get => dontime; set => dontime = value; }
        public string Donphone { get => donphone; set => donphone = value; }
    }
}
