<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page Administrateur.aspx.cs" Inherits="TP2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:auto;float:left">
            <asp:Label ID="Label1" runat="server" Font-Size="Larger" Text="Superviseur"></asp:Label>
            <div style="width: 100%; height: 200px; overflow: scroll">
            <asp:GridView ID="gvSuperviseurs" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="dsSuperviseurs">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
                    <asp:BoundField DataField="Téléphone" HeaderText="Téléphone" SortExpression="Téléphone" />
                    <asp:BoundField DataField="Courriel" HeaderText="Courriel" SortExpression="Courriel" />
                    <asp:BoundField DataField="NomUtilisateur" HeaderText="NomUtilisateur" SortExpression="NomUtilisateur" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                </Columns>
            </asp:GridView>
               </div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Ajouter un superviseur" />
            <br />
            <asp:SqlDataSource ID="dsSuperviseurs" runat="server" ConnectionString="<%$ ConnectionStrings:C:\USERS\ABOUMSO\DOCUMENTS\COURS PROG DE GESTION\420-329-SF PROG III\TP\TP 2\TP2\APP_DATA\GESTIONSTAGES.MDFConnectionString %>" SelectCommand="SELECT [Nom], [Téléphone], [Courriel], [NomUtilisateur], [Id] FROM [Superviseur]"></asp:SqlDataSource>
        </div>
        <div style="width:auto;float:left;margin-left:30px">
            <asp:Label ID="Label2" runat="server" Font-Size="Larger" Text="Stagiaire"></asp:Label>
            <div style="width: 100%; height: 200px; overflow: scroll">
            <asp:GridView ID="gvStages" runat="server" AutoGenerateColumns="False" DataSourceID="dsStagiaires" DataKeyNames="Id">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
                    <asp:BoundField DataField="Téléphone" HeaderText="Téléphone" SortExpression="Téléphone" />
                    <asp:BoundField DataField="Courriel" HeaderText="Courriel" SortExpression="Courriel" />
                </Columns>
            </asp:GridView>
                </div>
            <br />
            <asp:Button ID="Button2" runat="server" Text="Ajouter un stage" />

            <asp:SqlDataSource ID="dsStagiaires" runat="server" ConnectionString="<%$ ConnectionStrings:C:\USERS\ABOUMSO\DOCUMENTS\COURS PROG DE GESTION\420-329-SF PROG III\TP\TP 2\TP2\APP_DATA\GESTIONSTAGES.MDFConnectionString %>" SelectCommand="SELECT [Id], [Nom], [Téléphone], [Courriel] FROM [Stagiaire]"></asp:SqlDataSource>

        </div>
        
    </form>
    <div style="position:absolute;bottom:-14px; left: 96px;";left:0>
        <asp:LinkButton ID="lnkDeconnection" runat="server" Text="Se déconnecter" OnClick="lnkDeconnection_Click" ></asp:LinkButton>
    </div>
</body>

</html>
