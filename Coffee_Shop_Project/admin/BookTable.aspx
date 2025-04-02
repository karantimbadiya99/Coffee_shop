<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site2.Master" AutoEventWireup="true" CodeBehind="BookTable.aspx.cs" Inherits="Coffee_Shop_Project.admin.BookTable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>&nbsp;</h1>
    <h1>&nbsp;</h1>
    <h1>&nbsp;</h1>
    <h1>&nbsp;</h1>
    
    <center>
        
        <div class="container gridview-container">
            <h2 class="text-center mb-4">Manage Bookings</h2>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" CssClass="gridview-table">
                <Columns>
                    <asp:TemplateField HeaderText="Booking ID">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="User Name">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="People">
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("People") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Special Request">
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Request") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Remove">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_delete" OnClientClick="return confirm('Are you sure you want to delete this booking?');" CssClass="remove-button">
                                Remove
                            </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </center>
</asp:Content>
