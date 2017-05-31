using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace TravelExpress
{
    public class DatabaseConnector
    {

        public DataTable getDataSetFromTable(String table)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            MySqlConnection con = new MySqlConnection(constr);

            MySqlCommand cmd = new MySqlCommand("SELECT * FROM " + table);
            MySqlDataAdapter sda = new MySqlDataAdapter();
                        
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            DataTable dt = new DataTable();
                            
            sda.Fill(dt);
            return dt;    
            }

        public int AcceptConnection(String pseudo,String password)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            MySqlConnection con = new MySqlConnection(constr);
            String command = "SELECT id_user FROM user where pseudo ='" + pseudo + "' and password ='" + password + "'";
            MySqlCommand cmd = new MySqlCommand(command);
            MySqlDataAdapter sda = new MySqlDataAdapter();

            cmd.Connection = con;
            sda.SelectCommand = cmd;
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Console.WriteLine(dt.Rows.Count);
            if (dt.Rows.Count == 1)
            {
                return (int) dt.Rows[0][0];
            }
            return 0;
        }
    }
}