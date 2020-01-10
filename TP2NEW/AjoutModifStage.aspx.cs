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

            if(Session["StageModif"] != null && !this.Page.IsPostBack)
            {
                Stage stag = (Stage)Session["StageModif"];
                txtTitreStage.Text = stag.Titre;
                txtDebutStage.Text = Convert.ToString(stag.Début);
                txtFinStage.Text = Convert.ToString(stag.Fin);
                txtCommentaire.Text = stag.Commentaire;
                litSousTitre.Text= "Modification de stage";
            }
            if(Session["StageModif"] == null)
            {
                litSousTitre.Text = "Ajout de stage";
            }
        }

        protected void btnSoumettre_Click(object sender, EventArgs e)
        {
            //try
            //{
            //    DateTime debut = DateTime.Parse(txtDebutStage.Text);
            //    DateTime fin = DateTime.Parse(txtFinStage.Text);

            //    if (fin < debut)
            //    {
            //        litErreur.Text = "La date de fin ne peut précéder la date de début";
            //    }
            //    else
            //    {
            //        litErreur.Text = "";
            //    }
            //}
            //catch
            //{

            //}

            if (this.Page.IsValid)
            {

                if (litSousTitre.Text == "Ajout de stage")
                {
                    try
                    {
                        BDGestionStages bd = new BDGestionStages();

                        Superviseur supervis = (Superviseur)Session["Superviseur"];
                        int supervisID = supervis.Id;

                        int stagiaireID = (int)Session["StagiaireIDD"];

                        Stage stage = new Stage();
                        stage.Commentaire = txtCommentaire.Text;
                        stage.Titre = txtTitreStage.Text;
                        stage.Début = Convert.ToDateTime(txtDebutStage.Text);
                        stage.Fin = Convert.ToDateTime(txtFinStage.Text);

                        bd.Ajouter(stage, supervisID, stagiaireID);
                        bd.Sauvegarder();

                        litErreur.Text = "Élément ajouté ! ";
                        btnSoumettre.Enabled = false;

                    }
                    catch (ArgumentException)
                    {

                    }
                }

                if (litSousTitre.Text == "Modification de stage")
                {
                    try
                    {
                        if (Session["StageModif"] != null)
                        {
                            BDGestionStages bd = new BDGestionStages();
                            Stage vieux_stage = (Stage)Session["StageModif"];


                            Stage stageModifie = bd.GetStage(vieux_stage.Id);

                            stageModifie.Commentaire = txtCommentaire.Text;
                            stageModifie.Titre = txtTitreStage.Text;
                            stageModifie.Début = Convert.ToDateTime(txtDebutStage.Text);
                            stageModifie.Fin = Convert.ToDateTime(txtFinStage.Text);

                            bd.Sauvegarder();
                            litErreur.Text = "Élément Modifié ! ";
                            Session["StageModif"] = stageModifie;
                        }
                    }
                    catch
                    {

                    }
                }
            }
        }

        protected void btnOk_Click(object sender, EventArgs e)
        {
            if (this.Page.IsValid)
            {

                this.Session["StageModif"] = null;
                this.Response.Redirect("~/Page Superviseur.aspx");
            }
            else
            {
                this.Session["StageModif"] = null;
                this.Response.Redirect("~/Page Superviseur.aspx");
            }
        }
    }
}