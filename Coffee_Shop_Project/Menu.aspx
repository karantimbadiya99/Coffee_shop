<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Coffee_Shop_Project.Menu" %>

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


    <!-- Menu Start -->

    <div style="text-align: center; margin-bottom: 20px;">
        <asp:DropDownList ID="ddlCategory" runat="server" AutoPostBack="true"
            OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged"
            Style="padding: 10px; font-size: 16px; border-radius: 5px;">
        </asp:DropDownList>
    </div>

    <div class="row" style="display: flex; flex-wrap: wrap; justify-content: center;">
        <center>
            <%--<asp:DataList ID="dlProducts" runat="server" RepeatColumns="2" CellPadding="10"
                OnItemCommand="dlProducts_ItemCommand" OnSelectedIndexChanged="dlProducts_SelectedIndexChanged1">
                <ItemTemplate>
                    <div style="width: 48%; margin: 1%; padding: 15px; background: #f5f5f5; border-radius: 10px; text-align: center;">
                        <div style="display: flex; align-items: center; justify-content: space-between;">
                            <div style="width: 30%;">
                                <img src='<%# Eval("Image") %>' alt='<%# Eval("Name") %>'
                                    style="width: 100%; border-radius: 50%; margin-bottom: 10px;" />
                                <h5 style="color: #d2691e; font-weight: bold;">₹<%# Eval("Price") %></h5>
                            </div>
                            <div style="width: 65%; text-align: left;">
                                <h4 style="color: #8b4513; margin-bottom: 5px;"><%# Eval("Name") %></h4>
                                <p style="font-size: 14px; color: #555;"><%# Eval("Description") %></p>
                                <%--<asp:LinkButton ID="lnkViewDetails" runat="server" Text="View Details"
                                    CssClass="btn btn-link" CommandName="cmd_detailV"
                                    CommandArgument='<%# Eval("Id") %>' OnCommand="dlProducts_ItemCommand"
                                    Style="text-decoration: none; color: #8b4513; font-weight: bold;" />--%>

                                <%--<asp:LinkButton ID="lnkViewDetails" runat="server" Text="View Details"
                                    CssClass="btn btn-primary"  CommandName="cmd_detailV"
                                     CommandArgument='<%# Eval("Id") %>' OnCommand="dlProducts_ItemCommand"
                                    Style="background: #d2691e; color: white; padding: 5px 10px; border-radius: 5px; border: none;" />

                                <asp:LinkButton ID="lnkAddToCart" runat="server" Text="Add to Cart"
                                    CssClass="btn btn-primary" 
                                    CommandArgument='<%# Eval("Id") %>' OnCommand="dlProducts_ItemCommand"
                                    Style="background: #d2691e; color: white; padding: 5px 10px; border-radius: 5px; border: none;" CommandName="cmd_AddToCart" />
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>--%>


            <asp:DataList ID="dlProducts" runat="server" RepeatDirection="Horizontal" Width="1523px"  OnItemCommand="dlProducts_ItemCommand" OnSelectedIndexChanged="dlProducts_SelectedIndexChanged1">
                <ItemTemplate>
                    <div style="border: 1px solid #ccc; padding: 10px; margin: 10px; text-align: center;">
                        <asp:Image ID="Image1" runat="server" Height="150px" Width="150px" ImageUrl='<%# Eval("Image") %>' />
                        <br />
                        <strong>Name:</strong>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                        <br />
                        <strong>Price:</strong>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                         <br />
                        <asp:LinkButton ID="lnkViewDetails" runat="server" Text="View Details"
                                    CssClass="btn btn-primary"  CommandName="cmd_detailV"
                                     CommandArgument='<%# Eval("Id") %>' OnCommand="dlProducts_ItemCommand"
                                    Style="background: #d2691e; color: white; padding: 5px 10px; border-radius: 5px; border: none;" />

                                <asp:LinkButton ID="lnkAddToCart" runat="server" Text="Add to Cart"
                                    CssClass="btn btn-primary" 
                                    CommandArgument='<%# Eval("Id") %>' OnCommand="dlProducts_ItemCommand"
                                    Style="background: #d2691e; color: white; padding: 5px 10px; border-radius: 5px; border: none;" CommandName="cmd_AddToCart" />
                          
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </center>
            
    </div>

    <div style="text-align: center; margin-top: 20px;">
        <asp:LinkButton ID="btnPrev" runat="server" OnClick="btnPrev_Click"
            Style="background: #8b4513; color: white; padding: 10px 20px; border-radius: 5px; border: none; margin-right: 10px;">
        Previous
        </asp:LinkButton>
        <asp:LinkButton ID="btnNext" runat="server" OnClick="btnNext_Click"
            Style="background: #8b4513; color: white; padding: 10px 20px; border-radius: 5px; border: none;">
        Next
        </asp:LinkButton>
    </div>

    <!-- Menu End -->
</asp:Content>
