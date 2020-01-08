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
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Server.Transfer("Page Administrateur.aspx");
        }

        protected void btnSoumettre_click(object sender, EventArgs e)
        {
            BDGestionStages bd = new BDGestionStages();

            if(btnSuperviseur.Enabled==true && btnStagiaire.Enabled==true && btnAdmin.Enabled == true)
            {
                litErreur.Text = "Veuillez d'abord sélectionner votre status";
            }

            if (btnStagiaire.Enabled == false)
            {
               Stagiaire stagiaire =  bd.GetStagiaire(txtNomUtilisateur.Text);
                if (stagiaire.MotDePasse != txtMotDePasse.Text || stagiaire == null)
                {
                    litErreur.Text = "Erreur de connexion : Vérifier votre mot de passe";
                }
                else
                {
                    litErreur.Text = "";
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
            btnStagiaire.Enabled = false;
            litErreur.Text = "";

        }

        protected void btnAdmin_Click(object sender, EventArgs e)
        {
            btnAdmin.Enabled = false;
            btnStagiaire.Enabled = true;
            btnSuperviseur.Enabled = true;
            litErreur.Text = "";

        }
    }
}
