<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page Superviseur.aspx.cs" Inherits="TP2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label2" runat="server" Font-Size="Larger" Text="Stagiaires"></asp:Label>
            <p>*Veuillez sélectionner un stagiaire pour consulter ses stages</p>
            <asp:GridView ID="gvStagiaire" runat="server" AutoGenerateColumns="False" DataSourceID="dsStagiaire" OnSelectedIndexChanged="gvStagiaire_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
                    <asp:BoundField DataField="Téléphone" HeaderText="Téléphone" SortExpression="Téléphone" />
                    <asp:BoundField DataField="Courriel" HeaderText="Courriel" SortExpression="Courriel" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="dsStagiaire" runat="server" ConnectionString="<%$ ConnectionStrings:C:\USERS\ABOUMSO\DOCUMENTS\COURS PROG DE GESTION\420-329-SF PROG III\TP\TP 2\TP2\APP_DATA\GESTIONSTAGES.MDFConnectionString %>" SelectCommand="SELECT [Nom], [Téléphone], [Courriel] FROM [Stagiaire]"></asp:SqlDataSource>
        </div>
        <div>
            <p>
            <asp:Label ID="Label3" runat="server" Font-Size="Larger" Text="Stages"></asp:Label>
                <p>*Veuillez d'abord sélectionner un stage pour le modifier"</p>
                <asp:GridView ID="gvStages" runat="server" AutoGenerateColumns="False" DataSourceID="dsStages" OnSelectedIndexChanged="gvStages_SelectedIndexChanged" DataKeyNames="Id">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Titre" HeaderText="Titre" SortExpression="Titre" />
                        <asp:BoundField DataField="Début" HeaderText="Début" SortExpression="Début" />
                        <asp:BoundField DataField="Fin" HeaderText="Fin" SortExpression="Fin" />
                        <asp:BoundField DataField="Commentaire" HeaderText="Commentaire" SortExpression="Commentaire" />
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    </Columns>
                </asp:GridView>
            <asp:Button ID="btnAjouter" runat="server" Text="Ajouter un Stage" OnClick="btnAjouter_Click" />
            <asp:Button ID="btnModifier" runat="server" Text="Modifier un stage" OnClick="btnModifier_Click" />
            <asp:SqlDataSource ID="dsStages" runat="server" ConnectionString="<%$ ConnectionStrings:C:\USERS\ABOUMSO\DOCUMENTS\COURS PROG DE GESTION\420-329-SF PROG III\TP\TP 2\TP2\APP_DATA\GESTIONSTAGES.MDFConnectionString %>" SelectCommand="SELECT [Titre], [Début], [Fin], [Commentaire], [Id] FROM [Stage] WHERE ([StagiaireId] = @StagiaireId)" OnSelecting="SqlDataSource2_Selecting">
                <SelectParameters>
                    <asp:SessionParameter Name="StagiaireId" SessionField="StagiaireIDD" Type="Int32" />
                </SelectParameters>
                </asp:SqlDataSource>
                <asp:Button ID="btnRetour" runat="server" Text="Revenir à la page précédente" OnClick="btnRetour_Click" />
    <div>
        <asp:LinkButton ID="lnkDeconnection" runat="server" Text="Se déconnecter" OnClick="lnkDeconnection_Click" ></asp:LinkButton>
    </div>
                
            </p>
        </div>
    </form>
</body>
</html>
