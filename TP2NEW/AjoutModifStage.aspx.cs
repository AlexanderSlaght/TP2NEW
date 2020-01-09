using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2
{
    public partial class AjoutModifStage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Superviseur supervis = (Superviseur)Session["Superviseur"];
            litTitre.Text = supervis.NomUtilisateur;

            if(Session["StageModif"] != null)
            {
                Stage stag = (Stage)Session["StageModif"];
                txtTitreStage.Text = stag.Titre;
                txtDebutStage.Text = Convert.ToString(stag.Début);
                txtFinStage.Text = Convert.ToString(stag.Fin);
                txtCommentaire.Text = stag.Commentaire;
                litSousTitre.Text= "Modification de stage";
            }
            else
            {
                litSousTitre.Text = "Ajout de stage";
            }
        }
    }
}