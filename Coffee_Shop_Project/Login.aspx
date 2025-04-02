<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Coffee_Shop_Project.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Login & Signup - Coffee Shop</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background: url('coffee-bg.jpg') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background: rgba(0, 0, 0, 0.75);
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.6);
            text-align: center;
            width: 450px;
        }
        h2 {
            color: #d4a373;
            margin-bottom: 25px;
            font-size: 24px;
        }
        .input-group {
            text-align: left;
            margin-bottom: 18px;
        }
        .input-group label {
            color: #f5f5f5;
            font-weight: bold;
        }
        .input-box {
            width: 100%;
            padding: 12px;
            border: 1px solid #d4a373;
            background: transparent;
            color: white;
            font-size: 16px;
            border-radius: 5px;
            outline: none;
        }
        .btn {
            width: 100%;
            padding: 14px;
            background: #d4a373;
            color: white;
            border: none;
            border-radius: 25px;
            font-size: 18px;
            cursor: pointer;
            transition: background 0.3s;
            margin-top: 15px;
        }
        .btn:hover {
            background: #a36f40;
        }
        .toggle-link {
            color: white;
            font-size: 14px;
            cursor: pointer;
            margin-top: 20px;
            display: block;
            text-decoration: underline;
        }
    </style>
    <script>
        function toggleForms() {
            var loginForm = document.getElementById("loginForm");
            var signupForm = document.getElementById("signupForm");
            loginForm.style.display = (loginForm.style.display === "none") ? "block" : "none";
            signupForm.style.display = (signupForm.style.display === "none") ? "block" : "none";
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div id="loginForm">
                <h2>Log In</h2>
                <div class="input-group">
                    <label>Email</label>
                    <asp:TextBox ID="txteml" runat="server" CssClass="input-box" placeholder="Enter Email"></asp:TextBox>
                </div>
                <div class="input-group">
                    <label>Password</label>
                    <asp:TextBox ID="txtpass" runat="server" TextMode="Password" CssClass="input-box" placeholder="Enter Password"></asp:TextBox>
                </div>
                <asp:Button ID="signin" runat="server" Text="SIGN IN" CssClass="btn" OnClick="signin_Click" />
                <span class="toggle-link" onclick="toggleForms()">Don't have an account? Sign up</span>
            </div>
            
            <div id="signupForm" style="display: none;">
                <h2>Sign Up</h2>
                <div class="input-group">
                    <label>Name</label>
                    <asp:TextBox ID="txtname" runat="server" CssClass="input-box" placeholder="Enter Name"></asp:TextBox>
                </div>
                <div class="input-group">
                    <label>Email</label>
                    <asp:TextBox ID="txtemail_signup" runat="server" CssClass="input-box" placeholder="Enter Email"></asp:TextBox>
                </div>
                <div class="input-group">
                    <label>Password</label>
                    <asp:TextBox ID="txtpswd" runat="server" TextMode="Password" CssClass="input-box" placeholder="Enter Password"></asp:TextBox>
                </div>
                <div class="input-group">
                    <label>Select Role</label>
                    <asp:DropDownList ID="ddlRole" runat="server" CssClass="input-box">
                        <asp:ListItem Text="User" Value="User"></asp:ListItem>
                        <asp:ListItem Text="Admin" Value="Admin"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <asp:Button ID="btnsignup" runat="server" Text="SIGN UP" CssClass="btn" OnClick="btnsignup_Click"/>
                <span class="toggle-link" onclick="toggleForms()">Already have an account? Sign in</span>
            </div>
        </div>
    </form>
</body>
</html>