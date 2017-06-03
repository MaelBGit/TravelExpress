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
            Erreur1.Visible = false;
            Erreur2.Visible = false;
            if (L_Name.Text != "" && F_name.Text != "" && Address.Text != "" && Town.Text != "" && Phone.Text != "" && Pseudo.Text != "" && Password.Text != "" && Mail.Text != "" )
            {
                Preference pref = null;
                pref = new Preference(0, 0, Smoke.Checked, Other.Text);
                
                User user = new User(0, L_Name.Text, F_name.Text, Address.Text, Town.Text, Phone.Text, Pseudo.Text, Password.Text, Mail.Text);
               
                DatabaseConnector dbo = new DatabaseConnector();
                try
                {
                    user.Insert_User_Into_DB();
                }
                catch(Exception ex)
                {
                    Erreur2.Visible = true;
                }
                pref.IdP = dbo.AcceptConnection(Pseudo.Text, Password.Text);
                Session["idu"] = pref.IdP;
                pref.Insert_Pref_Into_DB();
                
                
                Response.Redirect("../Default.aspx");
            }
            else
            {
                Erreur1.Visible = true;
            }

        }
    }
}