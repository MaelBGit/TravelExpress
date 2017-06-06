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
        private string tel;
        private string pseudo;
        private string password;
        private string email;


        public User(int id, string nom, string prenom, string adresse, string ville, string tel, string pseudo, string password,
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
        }

        public User(int id, string nom, string prenom, string adresse, string ville, string  tel, string pseudo, string password, 
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
        }

        public void Insert_User_Into_DB()
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            MySqlConnection con = new MySqlConnection(constr);
            con.Open();
            MySqlCommand myCommand = con.CreateCommand();

            myCommand.CommandText = "INSERT INTO user(first_name,last_name,address,town,telephone,pseudo,mail,password) VALUES(@firstname,@lastname,@address,@town,@telephone,@pseudo,@mail,@password)";

            // utilisation de l'objet contact passé en paramètre
            myCommand.Parameters.AddWithValue("@firstname", prenom);
            myCommand.Parameters.AddWithValue("@lastname", nom);
            myCommand.Parameters.AddWithValue("@address", adresse);
            myCommand.Parameters.AddWithValue("@town", ville);
            myCommand.Parameters.AddWithValue("@telephone", tel);
            myCommand.Parameters.AddWithValue("@pseudo", pseudo);
            myCommand.Parameters.AddWithValue("@mail", email);
            myCommand.Parameters.AddWithValue("@password", password);

            myCommand.ExecuteNonQuery();
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

        public string Tel
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
        #endregion


    }
}