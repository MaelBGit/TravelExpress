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
        private int idp;

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
                return idp;
            }

            set
            {
                idp = value;
            }
        }

        #endregion
    }
}