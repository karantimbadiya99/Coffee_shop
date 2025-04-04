<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site2.Master" AutoEventWireup="true" CodeBehind="Add_Product.aspx.cs" Inherits="Coffee_Shop_Project.admin.Add_Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <title>Add Product</title>
    <center>
        <%--<form id="form1" runat="server" style="display: flex; justify-content: center; align-items: center; height: auto; background: url('coffee-bg.jpg') no-repeat center center/cover; font-family: 'Poppins', sans-serif; padding: 50px;">--%>
        <div style="max-width: 700px; width: 100%; background: #FFF8E1; padding: 30px; border-radius: 10px; box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.3); border: 2px solid #6D4C41;">

            <h2 style="text-align: center; color: #5D4037; font-size: 28px; font-weight: bold; text-transform: uppercase; margin-bottom: 20px;">&nbsp;</h2>
            <h2 style="text-align: center; color: #5D4037; font-size: 28px; font-weight: bold; text-transform: uppercase; margin-bottom: 20px;">&nbsp;</h2>
            <h2 style="text-align: center; color: #5D4037; font-size: 28px; font-weight: bold; text-transform: uppercase; margin-bottom: 20px;">Add Product</h2>

            <!-- Product Form -->
            <div style="margin-bottom: 20px;">
                <label style="display: block; font-size: 16px; font-weight: 600; color: #6D4C41;">Select Category:</label>
                <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-control" Style="background: #FFFBF2;">
                    <asp:ListItem Text="-- Select Category --" Value="0"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <div style="display: flex; gap: 15px; margin-bottom: 20px;">
                <div style="width: 50%;">
                    <label style="display: block; font-size: 16px; font-weight: 600; color: #6D4C41;">Product Name:</label>
                    <asp:TextBox ID="txtProductName" runat="server" CssClass="form-control" Style="background: #FFFBF2;"></asp:TextBox>
                </div>
                <div style="width: 50%;">
                    <label style="display: block; font-size: 16px; font-weight: 600; color: #6D4C41;">Price:</label>
                    <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control" Style="background: #FFFBF2;"></asp:TextBox>
                </div>
            </div>

            <div style="margin-bottom: 20px;">
                <label style="display: block; font-size: 16px; font-weight: 600; color: #6D4C41;">Upload Image:</label>
                <asp:FileUpload ID="fldimg" runat="server" CssClass="form-control" />
                <br />
                <asp:Image ID="imgPreview" runat="server" Width="100" Height="100" />
            </div>

            <div style="margin-bottom: 20px;">
                <label style="display: block; font-size: 16px; font-weight: 600; color: #6D4C41;">Description:</label>
                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" Style="background: #FFFBF2;"></asp:TextBox>
            </div>

            <!-- Buttons -->
            <asp:Button ID="btnAddProduct" runat="server" Text="Add Product"
                CssClass="btn btn-primary"
                Style="width: 100%; background-color: #6D4C41; color: white; border: none; padding: 12px; border-radius: 5px; font-size: 18px; font-weight: bold; cursor: pointer; transition: background 0.3s, transform 0.2s;"
                OnMouseOver="this.style.backgroundColor='#4E342E'; this.style.transform='scale(1.05)'"
                OnMouseOut="this.style.backgroundColor='#6D4C41'; this.style.transform='scale(1)'"
                OnClick="btnAddProduct_Click" />

            <!-- Product List -->








            <%--  <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-striped" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
                    <Columns>
                        <asp:TemplateField HeaderText="Id">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Name">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Description">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Price">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                                <asp:Image ID="Image1" Height="100px" Width="100px" runat="server"
                                    ImageUrl='<%# Eval("Image") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Update">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_edt">Update</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_dlt">Delete</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>--%>
        </div>

        </div>
    </center>
    <%--</form>--%>
    <br />
    <br />
    <div class="container mt-4">
    <h3 class="text-center mb-4">Product List</h3>

    <asp:GridView ID="GridView1" runat="server" 
        CssClass="table table-bordered table-striped" 
        AutoGenerateColumns="False" 
        OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:TemplateField HeaderText="ID">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Name">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Description">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Price">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Image">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" 
                        ImageUrl='<%# Eval("Image") %>' 
                        Height="100px" Width="100px" />
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Update">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" 
                        CommandArgument='<%# Eval("Id") %>' 
                        CommandName="cmd_edt">
                        Update
                    </asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" 
                        CommandArgument='<%# Eval("Id") %>' 
                        CommandName="md_dlt" 
                        OnClientClick="return confirm('Are you sure you want to delete this product?');">
                        Delete
                    </asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</div>

</asp:Content>
