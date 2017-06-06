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
            SqlDataSource1.SelectCommand = " SELECT travel.places - COALESCE(SUM(reservation.places), 0) AS availableplaces, travel.id_journey, travel.start, travel.end, travel.`date`, travel.departure, travel.arrival, travel.places, travel.price FROM reservation RIGHT JOIN travel ON reservation.id_journey = travel.id_journey GROUP BY travel.id_journey, travel.start, travel.end, travel.`date`, travel.departure, travel.arrival, travel.places, travel.price having (start LIKE '%" + Departure.Text + "%' and end LIKE '%" + Arrival.Text + "%')";
            if (Session["idu"] == null || (int)Session["idu"] == 0)
            {
                GridView1.Columns[9].Visible = false;
            }
        }
        /// <summary>
        /// clic afin de valider la recherche d'un trajet entre deux points
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Search_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = " SELECT travel.places - COALESCE(SUM(reservation.places), 0) AS availableplaces, travel.id_journey, travel.start, travel.end, travel.`date`, travel.departure, travel.arrival, travel.places, travel.price FROM reservation RIGHT JOIN travel ON reservation.id_journey = travel.id_journey GROUP BY travel.id_journey, travel.start, travel.end, travel.`date`, travel.departure, travel.arrival, travel.places, travel.price having (start LIKE '%" + Departure.Text + "%' and end LIKE '%" + Arrival.Text + "%')";
            GridView1.DataBind();
        }
    }
}