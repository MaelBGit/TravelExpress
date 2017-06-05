using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TravelExpress;

namespace TravelExpressAsp.Account
{
    public partial class MyTravels : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["idu"] == null || (int)Session["idu"] == 0)
            {
                Response.Redirect("~/Default.aspx");
            }
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
                if (Marque.Text != "" && Model.Text != "" && Annee.Text != "" && Places.Text != "" &&  ListeTypeCar.SelectedValue != "" && Plaque.Text != "" && (int)Session["idu"] != 0)
                {
                    int year = int.Parse(Annee.Text);
                    int place = int.Parse(Places.Text);
                    Car addCar = new Car(0, Marque.Text, Model.Text, year, place, ListeTypeCar.SelectedValue, Plaque.Text, (int)Session["idu"]);
                    addCar.Insert_Car_Into_DB();
                    Response.Redirect("MyTravels.aspx");
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

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
        }

        protected void SqlDataSource3_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void ShowTravel_Click(object sender, EventArgs e)
        {
            ShowAddTravel.Visible = true;
        }

        protected void ValidateTravel_Click(object sender, EventArgs e)
        {
            Erreur3.Visible = false;
            Erreur4.Visible = false;
            try
            {
                int i = int.Parse(MaxPlace.SelectedValue);
                if (Start.Text != "" && End.Text != "" && Date.SelectedDate.ToShortDateString() != "" && Departure.Text != "" && Arrival.Text != "" && TravelPlaces.Text != "" && (int.Parse(TravelPlaces.Text) <= int.Parse(MaxPlace.Text)) && Price.Text != "" && (int)Session["idu"] != 0)
                {
                    Travels addTravel = new Travels(0, int.Parse(ListCar.SelectedValue), Start.Text, End.Text, Date.SelectedDate.ToShortDateString().Replace('/','-'), Departure.Text, Arrival.Text, int.Parse(TravelPlaces.Text), Price.Text);
                    addTravel.Insert_Travel_Into_DB();
                    Response.Redirect("MyTravels.aspx");
                }
                else
                {
                    Erreur3.Visible = true;
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex.Message);
                Erreur4.Visible = true;
            }
        }

        protected void ListCar_DataBound(object sender, EventArgs e)
        {
            if (ListCar.SelectedValue != "")
            {

                ShowAddTravelCar.Visible = true;

            }
        }

        protected void MaxPlace_DataBound(object sender, EventArgs e)
        {
            MaxPlace.SelectedIndex = 0;
        }

        protected void SqlDataSource4_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}