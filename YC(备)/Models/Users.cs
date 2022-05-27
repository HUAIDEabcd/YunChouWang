using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class Users
    {
        int userid;
        string phone;
        string password;
        string email;
        string username;
        string sex;
        string address;
        string usertext;
        string portrait;
        string receing;

        public int Userid { get => userid; set => userid = value; }
        public string Phone { get => phone; set => phone = value; }
        public string Password { get => password; set => password = value; }
        public string Email { get => email; set => email = value; }
        public string Username { get => username; set => username = value; }
        public string Sex { get => sex; set => sex = value; }
        public string Address { get => address; set => address = value; }
        public string Usertext { get => usertext; set => usertext = value; }
        public string Portrait { get => portrait; set => portrait = value; }
        public string Receing { get => receing; set => receing = value; }
    }
}
