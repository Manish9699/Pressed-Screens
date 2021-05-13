<%@ Page Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" Title="Content Page"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 22px;
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
            height: 425px;
        }
        .auto-style3 {
            height: 57px;
            text-align: center;
        }
        .auto-style17 {
            width: 416px;
            text-align: center;
        }
        .auto-style18 {
            height: 109px;
            text-align: center;
        }
        .auto-style19 {
            height: 123px;
            text-align: center;
        }
        .auto-style20 {
            height: 113px;
            text-align: center;
        }
        .auto-style21 {
            height: 74px;
        }
    </style>
        <p>
        <br />
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Welcome"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="pId" DataSourceID="SqlDataSourceViewDetails" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <table border="1" class="auto-style2">
                    <tr>
                        <td class="auto-style3" colspan="2">
                            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# Eval("category") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17" rowspan="3">
                            <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl='<%# Eval("pImg") %>' Width="300px" />
                        </td>
                        <td class="auto-style18">Name:
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("pName") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style20">Price :&nbsp;
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style19">Available Quantity :&nbsp;
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("quantity") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style21" colspan="2">Description&nbsp; :
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("pDesc") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" colspan="2">
                            <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("pId")%>' CommandName="buynow" Text="Buy Now" Width="223px" PostBackUrl='<%#"https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&business=wd.pra_1317033108_biz@gmail.com&image_url=http://www.gravatar.com/avatar/6329074fd4edc72597a688f2c65ff44c.png&item_name="+Eval("category")+" "+Eval("pName")+"&item_number=132&amount="+Eval("price")%>'/>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:SqlDataSource ID="SqlDataSourceViewDetails" runat="server" ConnectionString="<%$ ConnectionStrings:myConnectionString %>" ProviderName="<%$ ConnectionStrings:myConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Product] WHERE ([pId] = @pId)">
            <SelectParameters>
                <asp:QueryStringParameter Name="pId" QueryStringField="id" Type="string" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
        </form>
</asp:Content>
