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

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

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
            }
            catch(Exception ex)
            {
                Price.Text = "0";
                Error.Visible = true;
            }
        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }

        protected void ListBox1_DataBound(object sender, EventArgs e)
        {
            
        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
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