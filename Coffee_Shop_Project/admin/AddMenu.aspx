<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site2.Master" AutoEventWireup="true" CodeBehind="AddMenu.aspx.cs" Inherits="Coffee_Shop_Project.admin.AddMenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--  <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <h2>Coffee Menu</h2>
    <p>
        <asp:DataList ID="CoffeeMenu_datalist" runat="server" RepeatDirection="Horizontal" BorderStyle="None" RepeatColumns="3" OnSelectedIndexChanged="CoffeeMenu_datalist_SelectedIndexChanged">
            <ItemTemplate>
                <asp:Image ID="CoffeeImage" runat="server" Height="200px" Width="200px" ImageUrl='<%# Eval("image") %>' />
                <br /><br />
                <asp:Label ID="CoffeeName" runat="server" Text='<%# Eval("coffee_name") %>' Font-Bold="true"></asp:Label>
                <br />
                <asp:Label ID="CoffeePrice" runat="server" Text='<%# Eval("price") %>' Font-Italic="true"></asp:Label>
                <br /><br />
                <asp:LinkButton ID="ViewDetails" runat="server" CommandArgument='<%# Eval("Id") %>' OnClick="ViewDetails_Click">View Details</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="AddToCart" runat="server" CommandArgument='<%# Eval("Id") %>' OnClick="AddToCart_Click">Add To Cart</asp:LinkButton>
            </ItemTemplate>
        </asp:DataList>
    </p>
    
    <p>
        <asp:Button ID="btn_previous" runat="server" OnClick="btn_previous_Click" Text="Back" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_next" runat="server" OnClick="btn_next_Click" Text="Next" />
    </p>--%>


</asp:Content>
