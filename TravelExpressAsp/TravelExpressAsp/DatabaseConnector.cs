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
        }
    }