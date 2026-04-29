using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace DAL
{
    public class Dclass
    {
        public int register(string fistname, string lastname, string email, string phn, string address, string gender, string dob, string course, string password, string cpassword, string habbies)
        {
            
            SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=userdatabase;Integrated Security=True");
            conn.Open();

            SqlCommand cmd = new SqlCommand(
                 "insert into regi2 (fistname, lastname, email, phn, address, gender, dob, course, password, cpassword, habbies) " +
                        "values (@fistname, @lastname, @email, @phn, @address, @gender, @dob, @course, @password, @cpassword, @habbies)",
  conn);
            cmd.Parameters.AddWithValue("@fistname", fistname);
            cmd.Parameters.AddWithValue("@lastname",lastname);
             cmd.Parameters.AddWithValue("@email",email);
            cmd.Parameters.AddWithValue("@phn",phn);
            cmd.Parameters.AddWithValue("@address",address);
            cmd.Parameters.AddWithValue("@gender",gender);
            cmd.Parameters.AddWithValue("@dob",dob);
            cmd.Parameters.AddWithValue("@course",course);
            cmd.Parameters.AddWithValue("@password",password);
            cmd.Parameters.AddWithValue("@cpassword",cpassword);
            cmd.Parameters.AddWithValue("@habbies",habbies);
           int i=cmd.ExecuteNonQuery();
            conn.Close();
            return i;

        }

    }
}
