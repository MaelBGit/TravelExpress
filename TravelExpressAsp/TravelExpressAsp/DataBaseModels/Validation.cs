using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace TravelExpressAsp
{
    public class Validation
    {
        private int id;
        private int id_journey;
        private int  places;
        private int id_user;



        public Validation(int id, int id_journey, int places, int id_user)
        {
            this.id = id;
            this.id_journey = id_journey;
            this.places = places;
            this.id_user = id_user;
        }

        public void Insert_Validation_Into_DB()
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            MySqlConnection con = new MySqlConnection(constr);
            con.Open();
            MySqlCommand myCommand = con.CreateCommand();

            myCommand.CommandText = "INSERT INTO reservation(id_journey,id_user,places) VALUES(@id_journey,@id_user,@places)";

            // utilisation de l'objet contact passé en paramètre
            myCommand.Parameters.AddWithValue("@id_journey", id_journey);
            myCommand.Parameters.AddWithValue("@id_user", id_user);
            myCommand.Parameters.AddWithValue("@places", places);

            myCommand.ExecuteNonQuery();
        }

    }
}