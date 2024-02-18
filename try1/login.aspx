<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="try1.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="login_Style.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentt" runat="server">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Portal</title>
</head>
<body>
    <div class="box-form">
        <div class="left">
            <div class="overlay">
                <h1>Hello Students.</h1>
                <p>Make Sure you login with the Email id provided by the college.</p>
                <span>
                    <a href="https://accounts.google.com/o/oauth2/auth?client_id=YOUR_CLIENT_ID&redirect_uri=YOUR_REDIRECT_URI&scope=openid%20email&response_type=token">
                        <img src="IMAGES\Login_page\google.png" alt="Google icon" height="20px" width="20px" />
                        Login With Google
                    </a>
                </span>
            </div>
        </div>

        <div class="right">
            <h1>Login</h1>
            <div class="inputs">
                <asp:TextBox runat="server" ID="Email" placeholder="Email"></asp:TextBox>
                <br />
                <asp:TextBox runat="server" ID="Membtype" placeholder="Member"></asp:TextBox>
<br />
                <asp:TextBox runat="server" ID="Password" TextMode="Password" placeholder="password"></asp:TextBox>
            </div>

            <br /><br />

            <div class="remember-me-">
                <!-- Angular -->
                <label>
                    <input type="checkbox" name="item" checked="checked" />
                    <span class="text-checkbox">Remember me</span>
                </label>
            </div>

            <br />
<asp:Button runat="server" ID="loginButton" Text="Login" CssClass="custom-button" OnClick="loginButton_Click" />
        </div>
    </div>
</body>
</html>
</asp:Content>
