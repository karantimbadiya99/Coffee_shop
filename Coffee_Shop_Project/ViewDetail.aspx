<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewDetail.aspx.cs" Inherits="Coffee_Shop_Project.ViewDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Header Start -->
    <div class="container-fluid page-header mb-5 position-relative overlay-bottom">
        <div class="d-flex flex-column align-items-center justify-content-center pt-0 pt-lg-5" style="min-height: 400px">
            <h1 class="display-4 mb-3 mt-0 mt-lg-5 text-white text-uppercase">Menu</h1>
            <div class="d-inline-flex mb-lg-5">
                <p class="m-0 text-white"><a class="text-white" href="">Home</a></p>
                <p class="m-0 text-white px-2">/</p>
                <p class="m-0 text-white">Menu</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->
    <br />
    <br />
    <br />
    <br />
    <br />
   
    <center>
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" CellSpacing="10">
            <ItemTemplate>
                <div class="card text-center shadow-sm p-3 mb-4 bg-white rounded" style="width: 18rem;">
                    <asp:Image ID="Image1" runat="server" CssClass="card-img-top img-fluid" ImageUrl='<%# Eval("Image") %>' Style="height: 180px; object-fit: cover;" />
                    <br />
                    <div class="card-body">
                        <h6 class="card-title text-primary">Name:</h6>
                        <p class="card-text">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Name") %>' CssClass="text-muted"></asp:Label>
                        </p>
                        <h6 class="card-title text-primary">Description:</h6>
                        <p class="card-text">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Description") %>' CssClass="text-muted"></asp:Label>
                        </p>
                        <h6 class="card-title text-success">Price:</h6>
                        <p class="card-text fw-bold">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Price") %>' CssClass="text-dark"></asp:Label>
                        </p>
                        <p class="card-text fw-bold">
                            <asp:LinkButton ID="lnkAddToCart" runat="server"  CssClass="btn btn-primary"  CommandArgument='<%# Eval("Id") %>'   OnCommand="dlProducts_ItemCommand" Style="background: #d2691e; color: white; padding: 5px 10px; border-radius: 5px; border: none;" CommandName="cmd_AddToCart" >Add to cart</asp:LinkButton>
                             
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="lnkorder" runat="server" CssClass="btn btn-primary"  CommandArgument='<%# Eval("Id") %>'   OnCommand="dlProducts_ItemCommand" Style="background: #d2691e; color: white; padding: 5px 10px; border-radius: 5px; border: none;" CommandName="cmd_order">Order</asp:LinkButton>
                        </p>


                       <%-- <asp:LinkButton ID="lnkAddToCart" runat="server" Text="Add to Cart"
                            CssClass="btn btn-primary"
                            CommandArgument='<%# Eval("Id") %>' OnCommand="dlProducts_ItemCommand"
                            Style="background: #d2691e; color: white; padding: 5px 10px; border-radius: 5px; border: none;" CommandName="cmd_AddToCart" />
                        <asp:LinkButton ID="lnkorder" runat="server" Text="Order"
                            CssClass="btn btn-primary"
                            CommandArgument='<%# Eval("Id") %>' OnCommand="dlProducts_ItemCommand"
                            Style="background: #d2691e; color: white; padding: 5px 10px; border-radius: 5px; border: none;" CommandName="cmd_order" />--%>

                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </center>
</asp:Content>
