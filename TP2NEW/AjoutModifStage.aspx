<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjoutModifStage.aspx.cs" Inherits="TP2.AjoutModifStage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Session de  <asp:Literal runat="server" ID="litTitre"></asp:Literal></h1>
            <asp:Literal runat="server" ID="litSousTitre"></asp:Literal>
            <table>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Titre : " ID="lblTitre" Width="250"></asp:Label>
                    </td>
                    <td>
                        <asp:Textbox runat="server" ID="txtTitreStage" ></asp:Textbox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Date de début du Stage : " ID="lblDebutStage" Width="250"></asp:Label>
                    </td>
                    <td>
                        <asp:Textbox runat="server" ID="txtDebutStage" ></asp:Textbox>
                        </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Date de fin de Stage : " ID="lblFinStage" Width="250"></asp:Label>
                    </td>
                    <td><asp:Textbox runat="server" ID="txtFinStage" ></asp:Textbox>
                        </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Commentaire " ID="lblCommentaire" Width="250"></asp:Label>
                    </td>
                    <td><asp:Textbox runat="server" ID="txtCommentaire" ></asp:Textbox>
                        </td>
                </tr>
                <tr>      
                <td><asp:Label runat="server" ID="litvide" Text="" Width="250"></asp:Label></td>
                    <td><asp:Button runat="server" ID="btnSoumettre"  Text="Soumettre"/></td>          
                </tr>
            </table>          
        </div>
    </form>
</body>
</html>
