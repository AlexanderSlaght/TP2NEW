using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void lnkDeconnection_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            this.Response.Redirect("~/Page d'accueil.aspx");
        }
    }
}