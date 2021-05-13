<%@ Page Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="UserLogin" Title="Content Page"%>
 <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server">
    <p>
        <strong>Username : </strong>
        <asp:TextBox ID="TextBox1" runat="server" Width="190px"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <strong>Password: </strong>
        &nbsp;<asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="196px"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="LOGIN" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Do not have account?
        <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#3399FF" PostBackUrl="~/UserRegistration.aspx">Register</asp:LinkButton>
    </p>
    <p>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </p>
</form>
</asp:Content>
