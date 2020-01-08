<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page Stagiaire.aspx.cs" Inherits="TP2.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label2" runat="server" Font-Size="Larger" Text="Liste de stages :"></asp:Label>
        </div>
        <asp:ListView ID="lvStages" runat="server" DataSourceID="dsStages" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Label ID="TitreLabel" runat="server" Text='<%# Eval("Titre") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DébutLabel" runat="server" Text='<%# Eval("Début") %>' />
                    </td>
                    <td>
                        <asp:Label ID="FinLabel" runat="server" Text='<%# Eval("Fin") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CommentaireLabel" runat="server" Text='<%# Eval("Commentaire") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#008A8C;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Mettre à jour" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Annuler" />
                    </td>
                    <td>
                        <asp:TextBox ID="TitreTextBox" runat="server" Text='<%# Bind("Titre") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DébutTextBox" runat="server" Text='<%# Bind("Début") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="FinTextBox" runat="server" Text='<%# Bind("Fin") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CommentaireTextBox" runat="server" Text='<%# Bind("Commentaire") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>Aucune donnée n&#39;a été retournée.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insérer" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Désactiver" />
                    </td>
                    <td>
                        <asp:TextBox ID="TitreTextBox" runat="server" Text='<%# Bind("Titre") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DébutTextBox" runat="server" Text='<%# Bind("Début") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="FinTextBox" runat="server" Text='<%# Bind("Fin") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CommentaireTextBox" runat="server" Text='<%# Bind("Commentaire") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;">
                    <td>
                        <asp:Label ID="TitreLabel" runat="server" Text='<%# Eval("Titre") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DébutLabel" runat="server" Text='<%# Eval("Début") %>' />
                    </td>
                    <td>
                        <asp:Label ID="FinLabel" runat="server" Text='<%# Eval("Fin") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CommentaireLabel" runat="server" Text='<%# Eval("Commentaire") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th runat="server">Titre</th>
                                    <th runat="server">Début</th>
                                    <th runat="server">Fin</th>
                                    <th runat="server">Commentaire</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                    <td>
                        <asp:Label ID="TitreLabel" runat="server" Text='<%# Eval("Titre") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DébutLabel" runat="server" Text='<%# Eval("Début") %>' />
                    </td>
                    <td>
                        <asp:Label ID="FinLabel" runat="server" Text='<%# Eval("Fin") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CommentaireLabel" runat="server" Text='<%# Eval("Commentaire") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="dsStages" runat="server" ConnectionString="<%$ ConnectionStrings:C:\USERS\ABOUMSO\DOCUMENTS\COURS PROG DE GESTION\420-329-SF PROG III\TP\TP 2\TP2\APP_DATA\GESTIONSTAGES.MDFConnectionString %>" SelectCommand="SELECT [Titre], [Début], [Fin], [Commentaire] FROM [Stage] WHERE ([StagiaireId] = @StagiaireId)">
            <SelectParameters>
                <asp:SessionParameter Name="StagiaireId" SessionField="StagiaireId" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Button ID="btnRetour" runat="server" Text="Revenir à la page d'identification" OnClick="btnRetour_Click" />
    <div>
        <asp:LinkButton ID="lnkDeconnection" runat="server" Text="Se déconnecter" OnClick="lnkDeconnection_Click" ></asp:LinkButton>
    </div>
        
    </form>
</body>
</html>
