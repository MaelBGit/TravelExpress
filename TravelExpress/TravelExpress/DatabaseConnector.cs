using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace TravelExpress
{
    public class DataBaseConnector
    {

        protected DataTable getDataSetFromTable(String table)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);

            SqlCommand cmd = new SqlCommand("SELECT * FROM " + table);
            SqlDataAdapter sda = new SqlDataAdapter();
                        
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            DataTable dt = new DataTable();
                            
            sda.Fill(dt);
            return dt;
                            
                        
                    
                
            }
        }
    }