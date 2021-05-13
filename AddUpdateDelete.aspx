<%@ Page Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="AddUpdateDelete.aspx.cs" Inherits="AddUpdateDelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

<html>
<head>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div><center>
         <h1>
             Add Product/Remove Product/Update Product Details
         </h1>
         <br />
         Product ID:&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="TextBox1" runat="server" Width="184px"></asp:TextBox> 
         <br />
         Category:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 0px" Width="183px"></asp:TextBox>
         <br />
         Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server" Width="180px"></asp:TextBox>
         <br />
         Description:&nbsp;&nbsp;
         <asp:TextBox ID="TextBox4" runat="server" Width="185px"></asp:TextBox>
         <br />
         Product Image:&nbsp;<asp:TextBox ID="TextBox7" runat="server" Width="188px"></asp:TextBox>
         &nbsp;&nbsp;
         <br />
         Price:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="TextBox5" runat="server" Width="179px"></asp:TextBox>
         <br />
         Quantity:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="TextBox6" runat="server" Width="172px"></asp:TextBox>
         <br />
         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Product" />
         </center>
    </div>
    </form>
</body>
</html>
    </asp:Content>