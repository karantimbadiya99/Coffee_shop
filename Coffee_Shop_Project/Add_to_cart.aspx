<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Add_to_cart.aspx.cs" Inherits="Coffee_Shop_Project.Add_to_cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Page Header Start -->
    <div class="container-fluid page-header mb-5 position-relative overlay-bottom">
        <div class="d-flex flex-column align-items-center justify-content-center pt-0 pt-lg-5" style="min-height: 400px">
            <h1 class="display-4 mb-3 mt-0 mt-lg-5 text-white text-uppercase">Add To Cart</h1>
            <div class="d-inline-flex mb-lg-5">
                <p class="m-0 text-white"><a class="text-white" href="">Home</a></p>
                <p class="m-0 text-white px-2">/</p>
                <p class="m-0 text-white">Cart</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->

    <center>

        <h2>&nbsp;</h2>
        <h2>&nbsp;</h2>
        <h2>&nbsp;</h2>
       
        <p>
            <%--<asp:DataList ID="Cart_List" runat="server" RepeatDirection="Horizontal"  OnItemCommand="Cart_List_ItemCommand">
                <ItemTemplate>
                    <asp:Image ID="Image1" Height="200" Width="200" runat="server" ImageUrl='<%# Eval("image") %>' />
                    &nbsp;
                <br />
                    Name  :&nbsp;&nbsp;
                <asp:Label runat="server" ID="lbl1" Text='<%# Eval("p_name") %>' />
                    <br />
                    Price :&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("p_price") %>'></asp:Label>
                    <br />
                    Dec :&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("p_dec") %>'></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="btn_remove"  runat="server" Text="Remove Item" CommandArgument='<%# Eval("p_Id") %>' CommandName="cmd_remove_item" OnClick="btn_remove_Click" />
                    <br />
                </ItemTemplate>
            </asp:DataList>--%>
             <div class="cart-container">
        <h2>Cart</h2>
      <asp:DataList ID="Cart_List" runat="server" RepeatDirection="Horizontal" CssClass="cart-list" 
                      OnItemCommand="Cart_List_ItemCommand">
            <ItemTemplate>
                <div class="cart-item">
                    <asp:Image ID="Image1" runat="server" CssClass="product-image" ImageUrl='<%# Eval("image") %>' />
                    <p class="product-name">Name: <asp:Label runat="server" ID="lbl1" Text='<%# Eval("name") %>' /></p>
                    <p class="product-price">Price: ₹<asp:Label ID="Label1" runat="server" Text='<%# Eval("price") %>' /></p>
                    <asp:Button ID="btn_remove" runat="server" CssClass="remove-btn" Text="Remove Item"
                        CommandArgument='<%# Eval("Pro_Id") %>' CommandName="cmd_remove_item" OnClick="btn_remove_Click" />
                </div>
            </ItemTemplate>
        </asp:DataList>
        </p>
        <p>&nbsp;</p>
    </center>
</asp:Content>
