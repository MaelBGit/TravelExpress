using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TravelExpressAsp.Travel
{
    public partial class ValidTravel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["idu"] == null || (int)Session["idu"] == 0)
            {
                Response.Redirect("~/Default.aspx");
            }
        }

        //Action sur le changement de texte sur le noombre de place afin de recalculer le prix
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            ListBox1.DataBind();
            Error.Visible = false;
            ListBox1.SelectedIndex = 0;
            try
            {
                int places = int.Parse(Places.Text);
                int max = int.Parse(ListBox1.SelectedItem.Text);
                if(places <= max)
                {
                    Price.Text = (places * int.Parse(ListBox1.SelectedItem.Value)).ToString();
                }
                else
                {
                    Price.Text = "0";
                    Error.Visible = true;
                }
            }
            catch(Exception ex)
            {
                Price.Text = "0";
                Error.Visible = true;
            }
        }
        /// <summary>
        /// clic de validation de réservation de voyage
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Validate_Click(object sender, EventArgs e)
        {
            if (Price.Text != "0")
            {
                Validation v = new Validation(0, int.Parse(Request.QueryString["travel"]), int.Parse(Places.Text),(int)Session["idu"]);
                v.Insert_Validation_Into_DB();
                Response.Redirect("~/Account/MyTravels.aspx");
            }
        }
    }
}