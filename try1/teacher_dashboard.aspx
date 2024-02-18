<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="teacher_dashboard.aspx.cs" Inherits="YourNamespace.teacher_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="teacher_dashboard.css">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="contentt" runat="server">
    <h2>Teacher Dashboard</h2>

    <div>
        <label for="txtTeacherName">Teacher's Name:</label>
        <asp:TextBox ID="txtTeacherName" runat="server" placeholder="Enter the name of the teacher"></asp:TextBox>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit/Enter" OnClick="btnSubmit_Click" CssClass="btn btn-primary" />
    </div>

    <table class="Main" border="1">
        <tr>
            <th>Timing</th>
            <th>Monday</th>
            <th>Tuesday</th>
            <th>Wednesday</th>
            <th>Thursday</th>
            <th>Friday</th>
            <th>Saturday</th>
        </tr>
        <tr>
            <td>7:45 AM - 8:30 AM</td>
            <td><asp:Label ID="Monday1Label" runat="server" Text=""></asp:Label></td>
            <td><asp:Label ID="Tuesday1Label" runat="server" Text=""></asp:Label></td>
            <td><asp:Label ID="Wednesday1Label" runat="server" Text=""></asp:Label></td>
            <td><asp:Label ID="Thursday1Label" runat="server" Text=""></asp:Label></td>
            <td><asp:Label ID="Friday1Label" runat="server" Text=""></asp:Label></td>
            <td><asp:Label ID="Saturday1Label" runat="server" Text=""></asp:Label></td>
        </tr>
        <!-- Add similar rows for other timings -->
    </table>
</asp:Content>
