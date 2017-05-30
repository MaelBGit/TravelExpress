using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;
using System.Collections.Generic;

namespace TravelExpress
{
    public class User
    {
        private int id;
        private string nom;
        private string prenom;
        private int age;
        private string adresse;
        private string ville;
        private string codepostal;
        private int tel;
        private string pseudo;
        private string password;
        private string email;
        Preference pref;
        List<Car> listCar;

        public User(int id, string nom, string prenom, int age, string adresse, string ville, string codepostal, int tel, string pseudo, string password, 
            string email, Preference pref)
        {
            this.id = id;
            this.nom = nom;
            this.prenom = prenom;
            this.age = age;
            this.adresse = adresse;
            this.ville = ville;
            this.codepostal = codepostal;
            this.tel = tel;
            this.pseudo = pseudo;
            this.password = password;
            this.email = email;
            this.pref = pref;
            this.listCar = new List<Car>();
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

        public int Age
        {
            get
            {
                return age;
            }

            set
            {
                age = value;
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


        public void addCar(Car car)
        {
            this.listCar.Add(car);
        }

    }
}