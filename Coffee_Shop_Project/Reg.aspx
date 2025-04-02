<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Reg.aspx.cs" Inherits="Coffee_Shop_Project.Reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Header Start -->
    <div class="container-fluid page-header mb-5 position-relative overlay-bottom">
        <div class="d-flex flex-column align-items-center justify-content-center pt-0 pt-lg-5" style="min-height: 400px">
            <h1 class="display-4 mb-3 mt-0 mt-lg-5 text-white text-uppercase">Registration</h1>
            <div class="d-inline-flex mb-lg-5">
                <p class="m-0 text-white"><a class="text-white" href="">Home</a></p>
                <p class="m-0 text-white px-2">/</p>
                <p class="m-0 text-white">Registration</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->

    <%--    REGISTRATION PART START--%>

    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Coffee Shop Registration</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f5f5dc;
                text-align: center;
                padding: 20px;
            }

            .container {
                max-width: 400px;
                margin: auto;
                background: white;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
                text-align: left;
            }

            input, select, button {
                width: 100%;
                padding: 10px;
                margin: 8px 0;
                border: 1px solid #ccc;
                border-radius: 5px;
            }

            .radio-group {
                margin: 15px 0;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
                background: #f9f9f9;
                display: flex;
                align-items: center;
                gap: 15px;
            }

                .radio-group label {
                    display: flex;
                    align-items: center;
                    gap: 5px;
                }

            .checkbox-group {
                margin: 15px 0;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
                background: #f9f9f9;
                display: flex;
                align-items: center;
                justify-content: space-between;
                flex-wrap: wrap;
            }

                .checkbox-group label {
                    display: flex;
                    align-items: center;
                    gap: 5px;
                    white-space: nowrap;
                }

            button {
                background-color: #8b4513;
                color: white;
                font-size: 16px;
                cursor: pointer;
                width: 100%;
            }

                button:hover {
                    background-color: #6b3226;
                }
        </style>
    </head>

    <body>

        <asp:Label ID="Label1" runat="server" Text="Register for Our Coffee Club" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
        <div class="container">
            <form>
                <div>
                    <!-- Full Name -->
                    <asp:Label ID="lblFullName" runat="server" Text="Full Name:" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <div>
                    <!-- Gender -->
                    <asp:Label ID="lblGender" runat="server" Text="Gender:" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <asp:RadioButtonList ID="rbGender" runat="server" RepeatDirection="Horizontal" CssClass="form-control-lg">
                        <asp:ListItem Value="Male">Male</asp:ListItem>
                        <asp:ListItem Value="Female">Female</asp:ListItem>
                    </asp:RadioButtonList>
                </div>

                <div>
                    <!-- Email Address -->
                    <asp:Label ID="lblEmail" runat="server" Text="Email Address:" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <div>
                    <!-- Phone Number -->
                    <asp:Label ID="lblPhoneNumber" runat="server" Text="Phone Number:" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <div>
                    <!-- Password -->
                    <asp:Label ID="Label11" runat="server" Text="Password:" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <asp:TextBox ID="txt_paswd" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <div>
                    <!-- confirm Password -->
                    <asp:Label ID="Label12" runat="server" Text="Conform Paassword:" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <asp:TextBox ID="txt_c_pswd" runat="server" CssClass="form-control"></asp:TextBox>
                </div>


                <div>
                    <!-- Submit Button -->
                    <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-primary" Font-Bold="True" Font-Size="X-Large" OnClick="btnRegister_Click" />

                    <br />
                </div>
            </form>

        </div>
        <center>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
                <Columns>
                    <asp:TemplateField HeaderText="Id">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Gender">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Phone">
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Phone") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Password">
                        <ItemTemplate>
                            <asp:Label ID="Label13" runat="server" Text='<%# Eval("Password") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Conform_Password">
                        <ItemTemplate>
                            <asp:Label ID="Label14" runat="server" Text='<%# Eval("Conform_Password") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Update">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_upd">Update</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_del">Delete</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </center>
        <br />

    </body>

    </html>

    <%--    REGISTRATION PART END--%>
    <center>
    </center>
</asp:Content>
