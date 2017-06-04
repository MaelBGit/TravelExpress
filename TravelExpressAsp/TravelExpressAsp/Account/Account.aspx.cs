using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelExpress;

namespace TravelExpressAsp.Account
{
    public partial class Account : System.Web.UI.Page
    {


        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Cars.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (ShowAddCar.Visible == false)
                ShowAddCar.Visible = true;

            else if (ShowAddCar.Visible == true)
                ShowAddCar.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Erreur.Visible = false;
            Erreur2.Visible = false;
            try
            {
                if (Marque.Text != "" && Model.Text != "" && Annee.Text != "" && Places.Text != "" && ListeTypeCar.SelectedValue != "" && Plaque.Text != "" && (int)Session["idu"] != 0)
                {
                    int year = int.Parse(Annee.Text);
                    int place = int.Parse(Places.Text);
                    Car addCar = new Car(0, Marque.Text, Model.Text, year, place, ListeTypeCar.SelectedValue, Plaque.Text, (int)Session["idu"]);
                    addCar.Insert_Car_Into_DB();
                    Response.Redirect("Account.aspx");
                }
                else
                {
                    Erreur.Visible = true;
                }
            }
            catch (Exception ex)
            {
                Erreur2.Visible = true;
            }

        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
        protected void Cars_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int ID = int.Parse(Cars.DataKeys[e.RowIndex].Values["id_car"].ToString());
            string delete_command = "DELETE FROM car WHERE id_car = " + ID;
            SqlDataSource2.DeleteCommand = delete_command;
        }
    }
}