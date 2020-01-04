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
            <asp:Button ID="Button1" runat="server" Text="Stagiaire" />
            <asp:Button ID="Button2" runat="server" Text="Superviseur" />
            <asp:Button ID="Button3" runat="server" Text="Admin" />
        </p>
        <p>
            Nom d&#39;utilisateur :
            <asp:TextBox ID="TextBox1" runat="server" Width="230px"></asp:TextBox>
        </p>
        <p>
            Mot de passe :
            <asp:TextBox ID="TextBox2" runat="server" Width="226px"></asp:TextBox>
        </p>
        <asp:Button ID="Button4" runat="server" Text="Soumettre" />
        <p>
            Première utilisation? Créer vous un compte
            <asp:LinkButton ID="LinkButton2" runat="server">Maintenant!</asp:LinkButton>
        </p>
    </form>
</body>
</html>
