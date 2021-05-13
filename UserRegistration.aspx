<%@ Page Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="UserRegistration.aspx.cs" Inherits="UserRegistration" Title="Content Page"%>

    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <form id="form1" runat="server" style="height: 568px">
<h1>New Registration</h1>
    <p style="font-weight: 700">Enter Username:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    &nbsp; 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p style="font-weight: 700">Enter password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
    &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p style="font-weight: 700">Re-enter password:
        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" ValidateRequestMode="Enabled"></asp:TextBox>
&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Password does Not Match!" ForeColor="Red"></asp:CompareValidator>
        </p>
    <p style="font-weight: 700">Enter name: <asp:TextBox ID="TextBox4" runat="server" Width="250px"></asp:TextBox>
    &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
            <p style="font-weight: 700">Date Of Birth:<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p style="font-weight: 700">
        &nbsp;Contact number:
        <asp:TextBox ID="TextBox5" runat="server" ValidateRequestMode="Enabled"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="number is invalid!" ForeColor="Red" ValidationExpression="^[789]\d{9}$"></asp:RegularExpressionValidator>
    </p>
    <p style="font-weight: 700">Address: <asp:TextBox ID="TextBox6" runat="server" Height="70px" Width="439px"></asp:TextBox>
    &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p style="font-weight: 700">Enter E-mail address:
        <asp:TextBox ID="TextBox7" runat="server" ValidateRequestMode="Enabled" Width="314px"></asp:TextBox>
    &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox7" ErrorMessage="Email id is invalid! " ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </p>
    <p style="font-weight: 700">
        <asp:Button ID="Button1" runat="server" Text="SUBMIT" BackColor="#CC0000" ForeColor="White" OnClick="Button1_Click" />
&nbsp;</p>
    <p style="font-weight: 700">Already have account? 
    </p>
</form>
        </asp:Content>
