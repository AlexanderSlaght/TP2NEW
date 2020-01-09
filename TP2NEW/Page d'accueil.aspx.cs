using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && Session["Stagiaire"] != null)
            {
                Stagiaire stagi = (Stagiaire)Session["Stagiaire"];
                txtNomUtilisateur.Text = stagi.NomUtilisateur;
                txtMotDePasse.Text = stagi.MotDePasse;
                btnStagiaire.Enabled = false;
            }
        }


        protected void btnSoumettre_click(object sender, EventArgs e)
        {
            SoumettreLogin();
        }

        protected void btnStagiaire_Click(object sender, EventArgs e)
        {
            btnStagiaire.Enabled = false;
            btnSuperviseur.Enabled = true;
            btnAdmin.Enabled = true;
            litErreur.Text = "";

        }

        protected void btnSuperviseur_Click(object sender, EventArgs e)
        {
            btnSuperviseur.Enabled = false;
            btnAdmin.Enabled = true;
            btnStagiaire.Enabled = true;
            litErreur.Text = "";

        }

        protected void btnAdmin_Click(object sender, EventArgs e)
        {
            btnAdmin.Enabled = false;
            btnStagiaire.Enabled = true;
            btnSuperviseur.Enabled = true;
            litErreur.Text = "";

        }

        public void SoumettreLogin()
        {
            BDGestionStages bd = new BDGestionStages();

            if (btnSuperviseur.Enabled == true && btnStagiaire.Enabled == true && btnAdmin.Enabled == true)
            {
                litErreur.Text = "Veuillez d'abord sélectionner votre status";
            }

            if (btnStagiaire.Enabled == false)
            {
                Stagiaire stagiaire = bd.GetStagiaire(txtNomUtilisateur.Text);
                if (stagiaire.MotDePasse != txtMotDePasse.Text || stagiaire == null)
                {
                    litErreur.Text = "Erreur de connexion : Vérifier votre mot de passe et votre identifiant";
                }
                else
                {
                    litErreur.Text = "";
                    Session["Stagiaire"] = stagiaire;
                    Session["StagiaireID"] = stagiaire.Id;
                    this.Response.Redirect("~/Page Stagiaire.aspx");
                }

            }
            if (btnSuperviseur.Enabled == false)
            {
                Superviseur supervis = bd.GetSuperviseur(txtNomUtilisateur.Text);
                if (supervis.MotDePasse != txtMotDePasse.Text || supervis == null)
                {
                    litErreur.Text = "Erreur de connexion : Vérifier votre mot de passe";
                }
                else
                {
                    litErreur.Text = "";
                    Session["Superviseur"] = supervis;
                    this.Response.Redirect("~/Page Superviseur.aspx");
                }

                if (btnAdmin.Enabled == false)
                {
                    Administrateur admin = bd.GetAdministrateur();
                    if (admin.MotDePasse != txtMotDePasse.Text || supervis == null)
                    {
                        litErreur.Text = "Erreur de connexion : Vérifier votre mot de passe";
                    }
                    else
                    {
                        litErreur.Text = "";
                        this.Response.Redirect("~/Page Administrateur.aspx");
                    }
                }
            }
        }
    }
}
