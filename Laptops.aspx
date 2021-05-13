<%@ Page Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Laptops.aspx.cs" Inherits="ItemList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-right: 0px;
        }
        .auto-style2 {
            width: 100%;
            height: 221px;
        }
        .auto-style3 {
            text-align: center;
            height: 213px;
        }
        .auto-style4 {
            height: 35px;
            text-align: center;
        }
        .auto-style6 {
            height: 49px;
            text-align: center;
        }
        .auto-style7 {
            height: 45px;
            text-align: center;
        }
    </style>
    <form runat="server">
        <p>
        <br />
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
        <asp:DataList ID="DataList1" runat="server" CssClass="auto-style1" DataKeyField="pId" DataSourceID="SqlDataSourceLaptops" OnItemCommand="DataList1_ItemCommand" RepeatDirection="Horizontal" Width="737px" RepeatColumns="6">
            <ItemTemplate>
                <br />
                <table border="1" class="auto-style2">
                    <tr>
                        <td class="text-center">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("pName") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("pImg") %>' Width="200px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Price : Rs. 
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("pId")%>' CommandName="buynow" Text="Buy Now" Width="180px" PostBackUrl='<%#"https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&business=wd.pra_1317033108_biz@gmail.com&image_url=http://www.gravatar.com/avatar/6329074fd4edc72597a688f2c65ff44c.png&item_name="+Eval("category")+" "+Eval("pName")+"&item_number=132&amount="+Eval("price")%>'/>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("pId")%>' CommandName="viewdetails" Text="View Details" Width="181px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:SqlDataSource ID="SqlDataSourceLaptops" runat="server" ConnectionString="<%$ ConnectionStrings:myConnectionString %>" ProviderName="<%$ ConnectionStrings:myConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Product] WHERE ([category]='Laptop')"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
         </form>
</asp:Content>
   