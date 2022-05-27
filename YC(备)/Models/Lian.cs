using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class Lian
    {
        int donid;
        int usersid;
        string proname;
        double donprice;
        string dontime;
        string donphone;

        public int Donid { get => donid; set => donid = value; }
        public int Usersid { get => usersid; set => usersid = value; }
        public string Proname { get => proname; set => proname = value; }
        public double Donprice { get => donprice; set => donprice = value; }
        public string Dontime { get => dontime; set => dontime = value; }
        public string Donphone { get => donphone; set => donphone = value; }
    }
}
