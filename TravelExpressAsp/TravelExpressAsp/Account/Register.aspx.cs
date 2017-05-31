using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelExpress;

namespace TravelExpressAsp.Account
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int number = int.Parse(Phone.Text);
            User user = new User(0, L_Name.Text, F_name.Text, Address.Text, Town.Text, number, Pseudo.Text, Password.Text, Mail.Text);
        }
    }
}