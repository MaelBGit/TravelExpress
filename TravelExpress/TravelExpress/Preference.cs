using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;

namespace TravelExpress
{
    public class Preference
    {
        private int idPref;
        private int idP;
        private bool fumeur;
        private string autre;

        public Preference(int idPref, int idP, bool fumeur)
        {
            this.idPref = idPref;
            this.idP = idP;
            this.fumeur = fumeur;
        }

        public Preference(int idPref, int idP, bool fumeur, string autre)
        {
            this.idPref = idPref;
            this.idP = idP;
            this.fumeur = fumeur;
            this.autre = autre;
        }

        #region Get/Set
        public int IdPref
        {
            get
            {
                return idPref;
            }

            set
            {
                idPref = value;
            }
        }

        public int IdP
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

        public bool Fumeur
        {
            get
            {
                return fumeur;
            }

            set
            {
                fumeur = value;
            }
        }

        public string Autre
        {
            get
            {
                return autre;
            }

            set
            {
                autre = value;
            }
        }

        #endregion
    }
}