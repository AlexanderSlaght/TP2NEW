<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page Administrateur.aspx.cs" Inherits="TP2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Size="Larger" Text="Superviseur"></asp:Label>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged" style="height:200px; overflow:scroll;" DataKeyNames="Id">
                <AlternatingItemTemplate>
                    <tr style="background-color:#FFF8DC;">
                        <td>
                            <asp:DynamicControl runat="server" DataField="Id" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Nom" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Téléphone" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Courriel" Mode="ReadOnly" />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color:#008A8C;color: #FFFFFF;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Id" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Nom" Mode="Edit" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Téléphone" Mode="Edit" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Courriel" Mode="Edit" />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" ValidationGroup="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Nom" Mode="Insert" ValidationGroup="Insert" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Téléphone" Mode="Insert" ValidationGroup="Insert" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Courriel" Mode="Insert" ValidationGroup="Insert" />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color:#DCDCDC;color: #000000;">
                        <td>
                            <asp:DynamicControl runat="server" DataField="Id" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Nom" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Téléphone" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Courriel" Mode="ReadOnly" />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                        <th runat="server">Id</th>
                                        <th runat="server">Nom</th>
                                        <th runat="server">Téléphone</th>
                                        <th runat="server">Courriel</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                        <td>
                            <asp:DynamicControl runat="server" DataField="Id" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Nom" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Téléphone" Mode="ReadOnly" />
                        </td>
                        <td>
                            <asp:DynamicControl runat="server" DataField="Courriel" Mode="ReadOnly" />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:Button ID="Button1" runat="server" Text="Ajouter un superviseur" />
            <br />
            <asp:Label ID="Label2" runat="server" Font-Size="Larger" Text="Stagiaire"></asp:Label>
            <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2" DataKeyNames="Id">
                <AlternatingItemTemplate>
                    <tr style="background-color:#FFF8DC;">
                        <td>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="NomLabel" runat="server" Text='<%# Eval("Nom") %>' />
                        </td>
                        <td>
                            <asp:Label ID="TéléphoneLabel" runat="server" Text='<%# Eval("Téléphone") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CourrielLabel" runat="server" Text='<%# Eval("Courriel") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color:#008A8C;color: #FFFFFF;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="NomTextBox" runat="server" Text='<%# Bind("Nom") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="TéléphoneTextBox" runat="server" Text='<%# Bind("Téléphone") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="CourrielTextBox" runat="server" Text='<%# Bind("Courriel") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="NomTextBox" runat="server" Text='<%# Bind("Nom") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="TéléphoneTextBox" runat="server" Text='<%# Bind("Téléphone") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="CourrielTextBox" runat="server" Text='<%# Bind("Courriel") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color:#DCDCDC;color: #000000;">
                        <td>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="NomLabel" runat="server" Text='<%# Eval("Nom") %>' />
                        </td>
                        <td>
                            <asp:Label ID="TéléphoneLabel" runat="server" Text='<%# Eval("Téléphone") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CourrielLabel" runat="server" Text='<%# Eval("Courriel") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                        <th runat="server">Id</th>
                                        <th runat="server">Nom</th>
                                        <th runat="server">Téléphone</th>
                                        <th runat="server">Courriel</th>
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
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                        </td>
                        <td>
                            <asp:Label ID="NomLabel" runat="server" Text='<%# Eval("Nom") %>' />
                        </td>
                        <td>
                            <asp:Label ID="TéléphoneLabel" runat="server" Text='<%# Eval("Téléphone") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CourrielLabel" runat="server" Text='<%# Eval("Courriel") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:Button ID="Button2" runat="server" Text="Ajouter un stage" />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GestionStagesConnectionString %>" SelectCommand="SELECT [Id], [Nom], [Téléphone], [Courriel] FROM [Stagiaire]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GestionStagesConnectionString %>" SelectCommand="SELECT [Id], [Nom], [Téléphone], [Courriel] FROM [Superviseur]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
