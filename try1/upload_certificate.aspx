 <%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="upload_certificate.aspx.cs" Inherits="try1.upload_certificate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link rel="stylesheet" type="text/css" href="upload_certificate.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentt" runat="server">
   <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
    <div class="upload-certificate-form">
        <h2>Upload Certificate</h2>
        <div id="certificateForm" runat="server">
            <div class="form-field">
                <label>Name:</label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </div>
            <div class="form-field">
                <label>Roll No.:</label>
                <asp:TextBox ID="txtRollNo" runat="server"></asp:TextBox>
            </div>
            <div class="form-field">
    <label>Branch:</label>
    <asp:DropDownList ID="ddlBranch" runat="server"></asp:DropDownList>
</div>
            <div class="form-field">
                <label>Class:</label>
                <asp:DropDownList ID="ddlClass" runat="server">
                    <asp:ListItem Value="fy">A</asp:ListItem>
                    <asp:ListItem Value="sy">B</asp:ListItem>
                    <asp:ListItem Value="ty">C</asp:ListItem>
                    <asp:ListItem Value="ty">D</asp:ListItem>
                    <asp:ListItem Value="ty">E</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-field">
                <label>Certificate File:</label>
                <asp:FileUpload ID="fileCertificate" runat="server" />
            </div>
            <div class="form-field">
                <label>Link of the Certificate:</label>
                <asp:TextBox ID="txtCertificateLink" runat="server"></asp:TextBox>
            </div>
            <div class="form-field">
                <label>Name of the Organization:</label>
                <asp:TextBox ID="txtOrgName" runat="server"></asp:TextBox>
            </div>
            <div class="form-field">
                <label>Course:</label>
                <asp:RadioButtonList ID="rblCourse" runat="server">
                    <asp:ListItem Value="paid">Paid</asp:ListItem>
                    <asp:ListItem Value="free">Free</asp:ListItem>
                </asp:RadioButtonList>
            </div>
           <div class="form-field">
    <label>Start Date:</label>
    <asp:TextBox ID="txtStartDate" runat="server" placeholder="Enter start date (YYYY-MM-DD)"></asp:TextBox>
</div>
<div class="form-field">
    <label>End Date:</label>
    <asp:TextBox ID="txtEndDate" runat="server" placeholder="Enter end date (YYYY-MM-DD)"></asp:TextBox>
</div>
<asp:Button ID="Submit1" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            </div>
        </div>
    
    <script>
    function showPopup() {
        alert("You are not a student member. Only student members can upload certificates.");
        // Alternatively, you can use a modal popup library like Bootstrap modal to show a modal popup
        // Example: $('#myModal').modal('show');
    }
    </script>

</asp:Content>
