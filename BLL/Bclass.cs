
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
namespace BLL
{
    public class Bclass
    {
        Dclass objd=new Dclass();
        public string regi(string fistname, string lastname, string email, string phn, string address, string gender, string dob, string course, string password, string cpassword, string hobbies)
        {
            int i = objd.register(fistname, lastname, email, phn, address, gender, dob, course, password, cpassword, hobbies);
            if(i>0)
            {
                return "register sucessful";
            }
            else
            {
                return "registation failed";
            }


        }





    }
}
