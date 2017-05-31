using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelExpress;

namespace TravelExpressAsp
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DatabaseConnector dbc = new DatabaseConnector();
            dbc.AcceptConnection("johny", "password");
            Session["idu"] = "1";

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}