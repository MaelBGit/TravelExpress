using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace TravelExpressAsp
{
    public class Travels

    {
        private int id;
        private int id_car;
        private string start;
        private string end;
        private string date;
        private string departure;
        private string arrival;
        private int places;
        private string price;


        public Travels(int id,int id_car, string start, string end, string date, string departure, string arrival, int places, string price)
        {
            this.id = id;
            this.id_car = id_car;
            this.start = start;
            this.end = end;
            this.date = date;
            this.departure = departure;
            this.arrival = arrival;
            this.places = places;
            this.price = price;
        }

        public void Insert_Travel_Into_DB()
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            MySqlConnection con = new MySqlConnection(constr);
            con.Open();
            MySqlCommand myCommand = con.CreateCommand();

            myCommand.CommandText = "INSERT INTO travel(id_car,start,end,date,departure,arrival,places,price) VALUES(@id_car,@start,@end,@date,@departure,@arrival,@places,@price)";

            // utilisation de l'objet contact passé en paramètre
            myCommand.Parameters.AddWithValue("@id_car", id_car);
            myCommand.Parameters.AddWithValue("@start", start);
            myCommand.Parameters.AddWithValue("@end", end);
            myCommand.Parameters.AddWithValue("@date", date);
            myCommand.Parameters.AddWithValue("@departure", departure);
            myCommand.Parameters.AddWithValue("@arrival", arrival);
            myCommand.Parameters.AddWithValue("@places", places);
            myCommand.Parameters.AddWithValue("@price", price);

            myCommand.ExecuteNonQuery();
        }

    }
}