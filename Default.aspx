<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CRUD_ASP_SP._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="StyleSheet.css" rel="stylesheet" />
    
    <div class="container">
    <table class="nav-justified">
        <tr>
            <td class="heading" colspan="2" style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: bold; color: #0066FF">PRODUCT MANAGEMENT SYSTEM</td>
        </tr> 
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Product ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
&nbsp;&nbsp;
                <asp:Button class="button" ID="Button4" runat="server" BackColor="#0066FF" Font-Bold="False" Font-Size="Large" ForeColor="Black" OnClick="searchButtonHandler" Text="Search" Width="120px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Item Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="Specification"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Font-Size="Medium" Text="Unit"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Medium" Width="200px">
                    <asp:ListItem>PCS</asp:ListItem>
                    <asp:ListItem>KG</asp:ListItem>
                    <asp:ListItem>DZ</asp:ListItem>
                    <asp:ListItem>LTR</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Font-Size="Medium" Text="Status"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Running</asp:ListItem>
                    <asp:ListItem>Unused</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Font-Size="Medium" Text="Creation Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button class="button" ID="Button1" runat="server" BackColor="#0066FF" Font-Bold="False" Font-Size="Large" ForeColor="Black" OnClick="addProductHandler" Text="Insert" Width="120px" />
&nbsp;<asp:Button class="button" ID="Button2" runat="server" BackColor="#0066FF" Font-Bold="False" Font-Size="Large" ForeColor="Black" OnClick="updateProductHandler" Text="Update" Width="120px" />
&nbsp;<asp:Button class="button" ID="Button3" runat="server" BackColor="#0066FF" Font-Bold="False" Font-Size="Large" ForeColor="Black" OnClick="deleteProductHandler" OnClientClick="return confirm('Are you sure to delete?');" Text="Delete" Width="120px" />
&nbsp;<asp:Button class="button" ID="Button5" runat="server" BackColor="#0066FF" Font-Bold="False" Font-Size="Large" ForeColor="Black" OnClick="loadAllData" Text="Load All Data" Width="120px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" Width="1067px">
                    <HeaderStyle BackColor="#0066FF" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

    </div>

</asp:Content>
