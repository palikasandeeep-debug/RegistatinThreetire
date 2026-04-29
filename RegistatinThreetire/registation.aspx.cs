using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace RegistatinThreetire
{
    public partial class registation : System.Web.UI.Page
    {
        Bclass objb=new Bclass();
   

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btninsert_Click(object sender, EventArgs e)
        {
            string hobbies = "";
            foreach (ListItem item in chkhabbies.Items)
            {
                if (item.Selected)
                {
                   hobbies += item.Text + ",";
                }
            }
            string fistname = txtfname.Text;
            string lastname = txtname.Text;
            string email = txtemail.Text;
            string phn = txtphn.Text;
            string address = txtadd.Text;
            string gender = radiogen.SelectedValue;
            string dob = txtdob.Text;
            string course = ddlcourse.SelectedValue;
            string password = txtpass.Text;
            string cpassword = txtcpass.Text;
            string habbies = hobbies;

            string result=objb.regi(fistname,lastname,email, phn, address, gender,dob, course, password, cpassword, habbies);
            lblmsg.Text = result;







        }
    }
}