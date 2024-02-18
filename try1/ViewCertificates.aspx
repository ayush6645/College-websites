<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCertificates.aspx.cs" Inherits="try1.ViewCertificates" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Timetable</title>
    <style>
           /* Unique style for the timetable heading */
        header h2 {
            font-size: 24px;
            color: #333; /* Change the color as desired */
            text-align: center;
            margin-bottom: 20px;
        }
        /* General Body Styles */
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background: linear-gradient(to right, #2c3e50, #3498db);
    color: #fff;
    margin: 0;
    padding: 0;
}

.container {
    width: 80%;
    margin: 0 auto;
}

/* Style for the Timetable Table */
#TimetableTable {
    border-collapse: collapse;
    width: 100%;
    margin-top: 20px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
    border-radius: 8px;
    overflow: hidden;
    animation: fadeIn 0.5s ease-in-out;
}

#TimetableTable th, #TimetableTable td {
    border: 1px solid #3498db;
    padding: 12px;
    text-align: left;
}

#TimetableTable th {
    background-color: #2980b9;
    color: #fff;
}

#TimetableTable td:hover {
    background-color: #34495e;
}

/* Style for the No Data Message */
#NoDataMessageLabel {
    color: #e74c3c; /* Alizarin color */
    font-size: 18px;
    margin-top: 20px;
    animation: fadeIn 0.5s ease-in-out;
}

/* Animation Styles */
@keyframes fadeIn {
    0% { opacity: 0; transform: translateY(-10px); }
    100% { opacity: 1; transform: translateY(0); }
}

/* Button Styles */
.button {
    display: inline-block;
    padding: 10px 20px;
    font-size: 16px;
    text-align: center;
    text-decoration: none;
    background-color: #3498db;
    color: #fff;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

.button:hover {
    background-color: #2980b9;
}

/* Header Styles */
header {
    background: linear-gradient(to right, #3498db, #2c3e50);
    padding: 20px 0;
    text-align: center;
}

header h1 {
    margin: 0;
    font-size: 36px;
}

header p {
    font-size: 18px;
    margin-top: 10px;
}

/* Footer Styles */
footer {
    background: linear-gradient(to right, #2c3e50, #3498db);
    padding: 20px 0;
    text-align: center;
    color: #fff;
    position: fixed;
    bottom: 0;
    width: 100%;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Timetable for <%= Request.QueryString["branch"] %></h2>

            <hr />

            <asp:Table ID="TimetableTable" runat="server">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>Time Slot</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Subject</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Teacher</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Room</asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <%-- Add table rows dynamically using code-behind --%>
            </asp:Table>
                        <asp:Label ID="NoDataMessageLabel" runat="server" Visible="false" Text="No timetable data available for the selected branch." CssClass="error-message"></asp:Label>

        </div>
    </form>
</body>
</html>
