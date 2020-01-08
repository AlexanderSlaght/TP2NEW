<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page d'accueil.aspx.cs" Inherits="TP2._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Admin</asp:LinkButton>
       
    </div>
        <p>
            <asp:Label ID="Label2" runat="server" Font-Size="Larger" Text="Se connecter"></asp:Label>
        </p>
        <p>
            <asp:Button ID="btnStagiaire" runat="server" Text="Stagiaire" OnClick="btnStagiaire_Click" />
            <asp:Button ID="btnSuperviseur" runat="server" Text="Superviseur" OnClick="btnSuperviseur_Click" />
            <asp:Button ID="btnAdmin" runat="server" Text="Admin" OnClick="btnAdmin_Click" />
        </p>
        <p>
            Nom d&#39;utilisateur :
            <asp:TextBox ID="txtNomUtilisateur" runat="server" Width="230px"></asp:TextBox>
        </p>
        <p>
            Mot de passe :
            <asp:TextBox ID="txtMotDePasse" runat="server" Width="226px"></asp:TextBox>
        </p>
        <table>
            <tr>
                <td><asp:Button ID="btnSoumettre" runat="server" Text="Soumettre" OnClick="btnSoumettre_click" /></td>
                <td><asp:Literal ID="litErreur" runat="server" Text=""></asp:Literal></td>

            </tr>
        </table>
        
        <p>
            Première utilisation? Créer vous un compte
            <asp:LinkButton ID="LinkButton2" runat="server">Maintenant!</asp:LinkButton>
        </p>
    </form>
</body>
</html>
