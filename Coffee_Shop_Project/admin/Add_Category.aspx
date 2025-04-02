<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site2.Master" AutoEventWireup="true" CodeBehind="Add_Category.aspx.cs" Inherits="Coffee_Shop_Project.admin.Add_Category" %>
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
    <center>
<%--   <form id="form1" runat="server" style="display: flex; justify-content: center; align-items: center; height: 100vh; background: url('coffee-bg.jpg') no-repeat center center/cover; font-family: 'Poppins', sans-serif; margin: 0;">--%>
    <div style="width: 450px; background: #FFF8E1; padding: 30px; border-radius: 10px; box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.3); text-align: center; border: 2px solid #6D4C41;">
        
        <h2 style="color: #5D4037; margin-bottom: 20px; font-size: 26px; font-weight: bold; text-transform: uppercase;">Add Category</h2>

        

        <div style="text-align: left; margin-bottom: 10px;">
            <asp:Label ID="lblCategoryName" runat="server" Text="Category Name:" 
                Style="font-size: 16px; font-weight: 600; color: #6D4C41;"></asp:Label>
        </div>

        <asp:TextBox ID="txtCategoryName" runat="server"
            Style="width: 100%; padding: 12px; border: 2px solid #A1887F; border-radius: 5px; font-size: 16px; margin-bottom: 20px; outline: none; transition: border-color 0.3s; background: #FFFBF2;" 
            onfocus="this.style.borderColor='#6D4C41'" onblur="this.style.borderColor='#A1887F'"></asp:TextBox>

        <asp:Button ID="btnAddCategory" runat="server" Text="Add Category"
            Style="width: 100%; background-color: #6D4C41; color: white; border: none; padding: 14px; border-radius: 5px; font-size: 18px; font-weight: bold; cursor: pointer; transition: background 0.3s, transform 0.2s;" 
            OnMouseOver="this.style.backgroundColor='#4E342E'; this.style.transform='scale(1.05)'" 
            OnMouseOut="this.style.backgroundColor='#6D4C41'; this.style.transform='scale(1)'" 
            OnClick="btnAddCategory_Click1" />
        <br />
        <br />
        
<%--        <div class="container gridview-container">--%>
            <h2 class="text-center mb-4">Manage Categories</h2>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" CssClass="gridview-table">
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
                    <asp:TemplateField HeaderText="Remove">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_delete" OnClientClick="return confirm('Are you sure you want to delete this Category?');" CssClass="remove-button">
                                Remove
                            </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
<%--      </div>--%>
    </center>
    


</asp:Content>
