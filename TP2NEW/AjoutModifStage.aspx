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
            <asp:ValidationSummary ID="vsErreurs" runat="server" />
            <table>
                <tr>
                    <td>

                    </td>
                    <td><asp:Literal runat="server" ID="litSousTitre"></asp:Literal></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Titre : " ID="lblTitre" Width="250"></asp:Label>
                    </td>
                    <td>
                        <asp:Textbox runat="server" ID="txtTitreStage" ></asp:Textbox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="valTitre" runat="server" ErrorMessage="Le titre ne peut être vide" Text="*" ControlToValidate="txtTitreStage" ></asp:RequiredFieldValidator>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Date de début du Stage : " ID="lblDebutStage" Width="250"></asp:Label>
                    </td>
                    <td>
                        <asp:Textbox runat="server" ID="txtDebutStage" placeholder="YYYY-MM-DD"></asp:Textbox>
                        </td>
                     <td>
                         <asp:RegularExpressionValidator ID="valRegexDebut" runat="server" ErrorMessage="La date de début de stage doit correspondre au format YYYY-MM-DD" Text="*" ControlToValidate="txtDebutStage" ValidationExpression="^(19|20)\d\d[- /.](0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])$" ></asp:RegularExpressionValidator>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Date de fin de Stage : " ID="lblFinStage" Width="250"></asp:Label>
                    </td>
                    <td><asp:Textbox runat="server" ID="txtFinStage" placeholder="YYYY-MM-DD" ></asp:Textbox>
                        </td>
                     <td>
                         <asp:RegularExpressionValidator ID="valRegexFinStage" runat="server" ErrorMessage="La date de fin du stage ne correspond pas au format YYYY-MM-DD" ControlToValidate ="txtFinStage" ValidationExpression="^(19|20)\d\d[- /.](0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])$" Text="*"></asp:RegularExpressionValidator>
                    </td>
                    <td>
                      
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Commentaire " ID="lblCommentaire" Width="250"></asp:Label>
                    </td>
                    <td><asp:Textbox runat="server" ID="txtCommentaire" ></asp:Textbox>
                        </td>
                     <td></td>
                    <td></td>
                </tr>
                <tr>      
                <td><asp:Label runat="server" ID="litvide" Text="" Width="250"></asp:Label></td>
                    <td><asp:Button runat="server" ID="btnSoumettre"  Text="Soumettre" OnClick="btnSoumettre_Click"/></td>   
                     <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Literal runat="server" ID="litErreur" Text=""></asp:Literal></td>
                </tr>
                <tr>
                    <td>
            </td>
                    <td><asp:Button runat="server" ID="btnOk" Text="Revenir à la page précédente" Width OnClick="btnOk_Click" /></td>
                </tr>
            </table>
            
        </div>
    </form>
</body>
</html>
