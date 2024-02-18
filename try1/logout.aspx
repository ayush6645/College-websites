<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="logout.aspx.cs" Inherits="try1.logout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="logout_Style.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentt" runat="server">
<div class="box-form">
    <div class="right">
        <h1>Logout</h1>
        <div class="logout-content">
            <% if (Session["userEmail"] != null) { %>
                <p>Name of user: <%= Session["userEmail"].ToString() %></p>
                <p>You are already logged in to the Portal.</p>
                <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="logout-button custom-button" OnClick="btnLogout_Click" />
            <% } else { %>
                <p>You are not currently logged in.</p>
            <% } %>
        </div>
    </div>
</div>

</asp:Content>
