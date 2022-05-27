using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class Project
    {
        int proid;
        int userid;
        string proname;
        decimal amount;
        int prodays;
        string type;
        string proaddress;
        string proimg;
        string protitle;
        string protext;
        string prophone;
        decimal donprice;
        int daysing;

        public int Proid { get => proid; set => proid = value; }
        public int Userid { get => userid; set => userid = value; }
        public string Proname { get => proname; set => proname = value; }
        public decimal Amount { get => amount; set => amount = value; }
        public int Prodays { get => prodays; set => prodays = value; }
        public string Type { get => type; set => type = value; }
        public string Proaddress { get => proaddress; set => proaddress = value; }
        public string Proimg { get => proimg; set => proimg = value; }
        public string Protitle { get => protitle; set => protitle = value; }
        public string Protext { get => protext; set => protext = value; }
        public string Prophone { get => prophone; set => prophone = value; }
        public decimal Donprice { get => donprice; set => donprice = value; }
        public int Daysing { get => daysing; set => daysing = value; }
    }
}
