using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!this.IsPostBack && Session["Superviseur"] != null)
            {
                
            }
            else
            {
                //this.Response.Redirect("~/Page d'accueil.aspx");
            }
        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }


        protected void gvStagiaire_SelectedIndexChanged(object sender, EventArgs e)
        {
            AfficherLesStagesDUnStagiaireSelectionner();
        }

        private void AfficherLesStagesDUnStagiaireSelectionner()
        {
            BDGestionStages bd = new BDGestionStages();

            try
            {
                if (gvStagiaire.SelectedRow != null)
                {
                    int index = gvStagiaire.SelectedIndex + 1;

                    Stagiaire stagiaire = (Stagiaire)bd.GetStagiaire(index);

                    Session["StagiaireIDD"] = stagiaire.Id;
                }
            }
            catch
            {

            }
        }

        protected void btnModifier_Click(object sender, EventArgs e)
        {
            this.Response.Redirect("~/AjoutModifStage.aspx");
        }

        protected void gvStages_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (gvStages.SelectedRow != null)
                {
                    int index = gvStages.SelectedIndex + 1;
                    BDGestionStages bd = new BDGestionStages();
                    Stage stage = (Stage)bd.GetStage(index);

                    Session["StageModif"] = stage;
                }
            }
            catch
            {

            }
        }

        protected void btnAjouter_Click(object sender, EventArgs e)
        {
            this.Response.Redirect("~/AjoutModifStage.aspx");
        }
    }
}