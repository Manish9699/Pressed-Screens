<%@ Page Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="AdminViewAllProduct.aspx.cs" Inherits="AdminViewAllProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
    <p>
        <br />
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Product List"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
            <Columns>
                <asp:TemplateField HeaderText="Product ID">
                    <EditItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("pId") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("pId") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Product Type">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("category") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <div class="text-center">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("category") %>'></asp:Label>
                        </div>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Product Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("pName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("pName") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Product Image">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("pImg") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("pImg") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Product Price">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("price") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Product Description">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Eval("pDesc") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("pDesc") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Qauntity">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Eval("quantity") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <div class="text-center">
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("quantity") %>'></asp:Label>
                        </div>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Operation">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Update">Update</asp:LinkButton>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label10" runat="server"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:SqlDataSource ID="SqlDataSourceViewAllProducts" runat="server" ConnectionString="<%$ ConnectionStrings:myConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [pId] = @pId" InsertCommand="INSERT INTO [Product] ([pId], [category], [pName], [pImg], [pDesc], [price], [quantity]) VALUES (@pId, @category, @pName, @pImg, @pDesc, @price, @quantity)" ProviderName="<%$ ConnectionStrings:myConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [category] = @category, [pName] = @pName, [pImg] = @pImg, [pDesc] = @pDesc, [price] = @price, [quantity] = @quantity WHERE [pId] = @pId">
            <DeleteParameters>
                <asp:Parameter Name="pId" Type="string" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="pId" Type="String" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="pName" Type="String" />
                <asp:Parameter Name="pImg" Type="String" />
                <asp:Parameter Name="pDesc" Type="String" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="quantity" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="pName" Type="String" />
                <asp:Parameter Name="pImg" Type="String" />
                <asp:Parameter Name="pDesc" Type="String" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="quantity" Type="Int32" />
                <asp:Parameter Name="pId" Type="string" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
        </form>
</asp:Content>