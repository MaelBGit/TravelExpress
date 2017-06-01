using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Collections.Generic;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace TravelExpress
{
    public class User
    {
        private int id;
        private string nom;
        private string prenom;
        private string adresse;
        private string ville;
        private string codepostal;
        private int tel;
        private string pseudo;
        private string password;
        private string email;
        Preference pref;
        List<Car> listCar;


        public User(int id, string nom, string prenom, string adresse, string ville, int tel, string pseudo, string password,
    string email)
        {
            this.id = id;
            this.nom = nom;
            this.prenom = prenom;
            this.adresse = adresse;
            this.ville = ville;
            this.tel = tel;
            this.pseudo = pseudo;
            this.password = password;
            this.email = email;
            listCar = new List<Car>();
        }

        public User(int id, string nom, string prenom, string adresse, string ville, int tel, string pseudo, string password, 
            string email, Preference pref)
        {
            this.id = id;
            this.nom = nom;
            this.prenom = prenom;
            this.adresse = adresse;
            this.ville = ville;
            this.tel = tel;
            this.pseudo = pseudo;
            this.password = password;
            this.email = email;
            this.pref = pref;
            listCar = new List<Car>();
        }

        public void Insert_User_Into_DB()
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            MySqlConnection con = new MySqlConnection(constr);
            con.Open();
            MySqlCommand myCommand = con.CreateCommand();

            myCommand.CommandText = "INSERT INTO user(first name,last name,address,town,telephone,pseudo,mail,password) VALUES(@first name,@last name,@address,@town,@telephone,@pseudo,@mail,@password)";

            // utilisation de l'objet contact passé en paramètre
            myCommand.Parameters.AddWithValue("@first name", prenom);
            myCommand.Parameters.AddWithValue("@last name", nom);
            myCommand.Parameters.AddWithValue("@address", adresse);
            myCommand.Parameters.AddWithValue("@town", ville);
            myCommand.Parameters.AddWithValue("@telephone", tel);
            myCommand.Parameters.AddWithValue("@pseudo", pseudo);
            myCommand.Parameters.AddWithValue("@mail", email);
            myCommand.Parameters.AddWithValue("@password", password);

            myCommand.ExecuteNonQuery(); //Problème insertion idP car c'est un FOREIGN KEY
        }

        #region Get/Set
        public int Id
        {
            get
            {
                return id;
            }

            set
            {
                id = value;
            }
        }

        public string Nom
        {
            get
            {
                return nom;
            }

            set
            {
                nom = value;
            }
        }

        public string Prenom
        {
            get
            {
                return prenom;
            }

            set
            {
                prenom = value;
            }
        }


        public string Adresse
        {
            get
            {
                return adresse;
            }

            set
            {
                adresse = value;
            }
        }

        public string Ville
        {
            get
            {
                return ville;
            }

            set
            {
                ville = value;
            }
        }

        public string Codepostal
        {
            get
            {
                return codepostal;
            }

            set
            {
                codepostal = value;
            }
        }

        public int Tel
        {
            get
            {
                return tel;
            }

            set
            {
                tel = value;
            }
        }

        public string Pseudo
        {
            get
            {
                return pseudo;
            }

            set
            {
                pseudo = value;
            }
        }

        public string Password
        {
            get
            {
                return password;
            }

            set
            {
                password = value;
            }
        }

        public string Email
        {
            get
            {
                return email;
            }

            set
            {
                email = value;
            }
        }

        public Preference Pref
        {
            get
            {
                return pref;
            }

            set
            {
                pref = value;
            }
        }

        public List<Car> ListCar
        {
            get
            {
                return listCar;
            }

            set
            {
                listCar = value;
            }
        }

        #endregion


    }
}