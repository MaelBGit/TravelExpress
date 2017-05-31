using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;

namespace TravelExpress
{
    public class Car
    {
        private int idV;
        private string marque;
        private string modele;
        private int annee;
        private int places;
        private string type;
        private string plaque;
        private int idP;

        public Car(int idV, string marque, string modele, int annee, int places, string type, string plaque, int idP)
        {
            this.idV = idV;
            this.marque = marque;
            this.modele = modele;
            this.annee = annee;
            this.places = places;
            this.type = type;
            this.plaque = plaque;
            this.idP = idP;
        }

        public void Insert_Car()
        {

        }


        #region Get/Set
        public int IdV
        {
            get
            {
                return idV;
            }

            set
            {
                idV = value;
            }
        }

        public string Marque
        {
            get
            {
                return marque;
            }

            set
            {
                marque = value;
            }
        }

        public string Modele
        {
            get
            {
                return modele;
            }

            set
            {
                modele = value;
            }
        }

        public int Annee
        {
            get
            {
                return annee;
            }

            set
            {
                annee = value;
            }
        }

        public int Places
        {
            get
            {
                return places;
            }

            set
            {
                places = value;
            }
        }

        public string Type
        {
            get
            {
                return type;
            }

            set
            {
                type = value;
            }
        }

        public string Plaque
        {
            get
            {
                return plaque;
            }

            set
            {
                plaque = value;
            }
        }

        public int Idp
        {
            get
            {
                return idP;
            }

            set
            {
                idP = value;
            }
        }

        #endregion
    }
}