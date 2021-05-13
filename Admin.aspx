<%@ Page Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style2{
            height:22px;
            width:400px;
        }
        .auto-style4{
            border-style:solid;
            width:100%;
            height:127px;
            text-align:center;
            background-color:pink;
        }
    </style>
    <p>
        <br />
    </p>
    <p class="text-center">
        <asp:Label ID="Label1" runat="server" ForeColor="#ffffff" BackColor="#ff0000" Font-Bold="true" Font-Size="XX-Large" Text="Administrator Console"></asp:Label>
    </p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <form id="form1" runat="server">
    <table align="center" class="auto-style4">
        <tr>
            <td class="auto-style2">
                <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#ffffff" Font-Bold="true" Font-Size="Large" PostBackUrl="~/AddUpdateDelete.aspx">Add Product Details</asp:LinkButton>
            </td>
            <td class="auto-style2">
                <asp:LinkButton ID="LinkButton2" runat="server" BackColor="#ffffff" Font-Bold="true" Font-Size="Large" OnClick="LinkButton2_Click" PostBackUrl="~/AdminViewAllProduct.aspx">Update or Delete Product Details</asp:LinkButton>
            </td>
        </tr>
    </table>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="cId" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                cId:
                <asp:Label ID="cIdLabel" runat="server" Text='<%# Eval("cId") %>' />
                <br />
                userId:
                <asp:Label ID="userIdLabel" runat="server" Text='<%# Eval("userId") %>' />
                <br />
                password:
                <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                <br />
                cName:
                <asp:Label ID="cNameLabel" runat="server" Text='<%# Eval("cName") %>' />
                <br />
                dob:
                <asp:Label ID="dobLabel" runat="server" Text='<%# Eval("dob") %>' />
                <br />
                contactNo:
                <asp:Label ID="contactNoLabel" runat="server" Text='<%# Eval("contactNo") %>' />
                <br />
                email:
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                <br />
                address:
                <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [Customer]" ProviderName="<%$ ConnectionStrings:myConnectionString.ProviderName %>"></asp:SqlDataSource>
        <br />
        </form>
</asp:Content>