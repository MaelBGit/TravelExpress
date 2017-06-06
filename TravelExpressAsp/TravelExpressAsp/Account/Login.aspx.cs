using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelExpress;

namespace TravelExpressAsp.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        /// <summary>
        /// Clic sur le bouton de Connection à l'application, si la verification est validée, l'utilisateur est connecté
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Login_Click(object sender, EventArgs e)
        {

            DatabaseConnector dbc = new DatabaseConnector();
            int id = 0;
            if ((id = dbc.AcceptConnection(Pseudo.Text, Password.Text)) != 0)
            {
                Session["idu"] = id;
                Server.Transfer("../Default.aspx", true);

            }
        }
    }
}