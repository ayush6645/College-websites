<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="faculty_dashboard.aspx.cs" Inherits="try1.faculty_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <link rel="stylesheet" type="text/css" href="faculty_dashboard.css">



</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="contentt" runat="server">
    <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red"></asp:Label>
    <asp:Label ID="SuccessLabel" runat="server" Text=""></asp:Label>
    <asp:Label ID="UpdateMessageLabel" runat="server" Text="" ForeColor="Green" Visible="false"></asp:Label>
<asp:HiddenField ID="UpdateHiddenField" runat="server" />


    <h2>Faculty Dashboard - Timetable</h2>
    <table id="BranchTable" class="Branch">    <tr>
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;
        Branch
  
        <asp:DropDownList ID="BranchDropdown" runat="server"></asp:DropDownList>
    
</tr>
        </table>       
<asp:Table ID="MainTable" runat="server" CssClass="Main" border="1">
    <asp:TableRow>
        <asp:TableCell>Timing</asp:TableCell>
        <asp:TableCell>Monday</asp:TableCell>
        <asp:TableCell>Tuesday</asp:TableCell>
        <asp:TableCell>Wednesday</asp:TableCell>
        <asp:TableCell>Thursday</asp:TableCell>
        <asp:TableCell>Friday</asp:TableCell>
        <asp:TableCell>Saturday</asp:TableCell>
    </asp:TableRow>

    <asp:TableRow>
        <asp:TableCell class="TimeSlotCell">7:45 AM - 8:30 AM</asp:TableCell>
        <asp:TableCell>
            <asp:DropDownList ID="SubjectDropDownList6" runat="server"></asp:DropDownList>
            <asp:DropDownList ID="TeacherDropDownList7" runat="server"></asp:DropDownList>
            <asp:DropDownList ID="RoomDropDownList78" runat="server"></asp:DropDownList>
        </asp:TableCell>
        <asp:TableCell>
            <asp:DropDownList ID="SubjectDropDownList8" runat="server"></asp:DropDownList>
            <asp:DropDownList ID="TeacherDropDownList9" runat="server"></asp:DropDownList>
            <asp:DropDownList ID="RoomDropDownList79" runat="server"></asp:DropDownList>
        </asp:TableCell>
        <asp:TableCell>
            <asp:DropDownList ID="SubjectDropDownList10" runat="server"></asp:DropDownList>
            <asp:DropDownList ID="TeacherDropDownList11" runat="server"></asp:DropDownList>
            <asp:DropDownList ID="RoomDropDownList80" runat="server"></asp:DropDownList>
        </asp:TableCell>
        <asp:TableCell>
            <asp:DropDownList ID="SubjectDropDownList12" runat="server"></asp:DropDownList>
            <asp:DropDownList ID="TeacherDropDownList13" runat="server"></asp:DropDownList>
            <asp:DropDownList ID="RoomDropDownList81" runat="server"></asp:DropDownList>
        </asp:TableCell>
        <asp:TableCell>
            <asp:DropDownList ID="SubjectDropDownList14" runat="server"></asp:DropDownList>
            <asp:DropDownList ID="TeacherDropDownList15" runat="server"></asp:DropDownList>
            <asp:DropDownList ID="RoomDropDownList82" runat="server"></asp:DropDownList>
        </asp:TableCell>
        <asp:TableCell>
            <asp:DropDownList ID="SubjectDropDownList16" runat="server"></asp:DropDownList>
            <asp:DropDownList ID="TeacherDropDownList17" runat="server"></asp:DropDownList>
            <asp:DropDownList ID="RoomDropDownList83" runat="server"></asp:DropDownList>
        </asp:TableCell>
    </asp:TableRow>


<asp:TableRow>
    <asp:TableCell class="TimeSlotCell">8:30 AM - 9:15 AM</asp:TableCell>
    <asp:TableCell>
        <asp:DropDownList ID="SubjectDropDownList18" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="TeacherDropDownList19" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="RoomDropDownList84" runat="server"></asp:DropDownList>
    </asp:TableCell>
    <asp:TableCell>
        <asp:DropDownList ID="SubjectDropDownList20" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="TeacherDropDownList21" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="RoomDropDownList85" runat="server"></asp:DropDownList>
    </asp:TableCell>
    <asp:TableCell>
        <asp:DropDownList ID="SubjectDropDownList22" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="TeacherDropDownList23" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="RoomDropDownList86" runat="server"></asp:DropDownList>
    </asp:TableCell>
    <asp:TableCell>
        <asp:DropDownList ID="SubjectDropDownList24" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="TeacherDropDownList25" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="RoomDropDownList87" runat="server"></asp:DropDownList>
    </asp:TableCell>
    <asp:TableCell>
        <asp:DropDownList ID="SubjectDropDownList26" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="TeacherDropDownList27" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="RoomDropDownList88" runat="server"></asp:DropDownList>
    </asp:TableCell>
    <asp:TableCell>
        <asp:DropDownList ID="SubjectDropDownList28" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="TeacherDropDownList29" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="RoomDropDownList89" runat="server"></asp:DropDownList>
    </asp:TableCell>
</asp:TableRow>
<asp:TableRow>
    <asp:TableCell class="TimeSlotCell">9:15 AM - 10:00 AM</asp:TableCell>
    <asp:TableCell>
        <asp:DropDownList ID="SubjectDropDownList30" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="TeacherDropDownList31" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="RoomDropDownList90" runat="server"></asp:DropDownList>
    </asp:TableCell>
    <asp:TableCell>
        <asp:DropDownList ID="SubjectDropDownList32" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="TeacherDropDownList33" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="RoomDropDownList91" runat="server"></asp:DropDownList>
    </asp:TableCell>
    <asp:TableCell>
        <asp:DropDownList ID="SubjectDropDownList34" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="TeacherDropDownList35" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="RoomDropDownList92" runat="server"></asp:DropDownList>
    </asp:TableCell>
    <asp:TableCell>
        <asp:DropDownList ID="SubjectDropDownList36" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="TeacherDropDownList37" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="RoomDropDownList93" runat="server"></asp:DropDownList>
    </asp:TableCell>
    <asp:TableCell>
        <asp:DropDownList ID="SubjectDropDownList38" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="TeacherDropDownList39" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="RoomDropDownList94" runat="server"></asp:DropDownList>
    </asp:TableCell>
    <asp:TableCell>
        <asp:DropDownList ID="SubjectDropDownList40" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="TeacherDropDownList41" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="RoomDropDownList95" runat="server"></asp:DropDownList>
    </asp:TableCell>
</asp:TableRow>

<asp:TableRow>
    <asp:TableCell class="TimeSlotCell">10:00 AM (Break) 10:20 AM</asp:TableCell>
    <asp:TableCell>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;Break</asp:TableCell>
    <asp:TableCell>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;Break</asp:TableCell>
    <asp:TableCell>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;Break</asp:TableCell>
    <asp:TableCell>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;Break</asp:TableCell>
    <asp:TableCell>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;Break</asp:TableCell>
    <asp:TableCell>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;Break</asp:TableCell>
</asp:TableRow>
<asp:TableRow>
    <asp:TableCell class="TimeSlotCell">10:20 AM - 11:05 AM</asp:TableCell>
    <asp:TableCell>
        <asp:DropDownList ID="SubjectDropDownList42" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="TeacherDropDownList43" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="RoomDropDownList96" runat="server"></asp:DropDownList>
    </asp:TableCell>
    <asp:TableCell>
        <asp:DropDownList ID="SubjectDropDownList44" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="TeacherDropDownList45" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="RoomDropDownList97" runat="server"></asp:DropDownList>
    </asp:TableCell>
    <asp:TableCell>
        <asp:DropDownList ID="SubjectDropDownList46" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="TeacherDropDownList47" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="RoomDropDownList98" runat="server"></asp:DropDownList>
    </asp:TableCell>
    <asp:TableCell>
        <asp:DropDownList ID="SubjectDropDownList48" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="TeacherDropDownList49" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="RoomDropDownList99" runat="server"></asp:DropDownList>
    </asp:TableCell>
    <asp:TableCell>
        <asp:DropDownList ID="SubjectDropDownList50" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="TeacherDropDownList51" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="RoomDropDownList100" runat="server"></asp:DropDownList>
    </asp:TableCell>
    <asp:TableCell>
        <asp:DropDownList ID="SubjectDropDownList52" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="TeacherDropDownList53" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="RoomDropDownList101" runat="server"></asp:DropDownList>
    </asp:TableCell>
</asp:TableRow>

<asp:TableRow>
    <asp:TableCell class="TimeSlotCell">11:05 AM - 11:55 AM</asp:TableCell>
    <asp:TableCell>
        <asp:DropDownList ID="SubjectDropDownList54" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="TeacherDropDownList55" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="RoomDropDownList102" runat="server"></asp:DropDownList>
    </asp:TableCell>
    <asp:TableCell>
        <asp:DropDownList ID="SubjectDropDownList56" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="TeacherDropDownList57" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="RoomDropDownList103" runat="server"></asp:DropDownList>
    </asp:TableCell>
    <asp:TableCell>
        <asp:DropDownList ID="SubjectDropDownList58" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="TeacherDropDownList59" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="RoomDropDownList104" runat="server"></asp:DropDownList>
    </asp:TableCell>
    <asp:TableCell>
        <asp:DropDownList ID="SubjectDropDownList60" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="TeacherDropDownList61" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="RoomDropDownList105" runat="server"></asp:DropDownList>
    </asp:TableCell>
    <asp:TableCell>
        <asp:DropDownList ID="SubjectDropDownList62" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="TeacherDropDownList63" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="RoomDropDownList106" runat="server"></asp:DropDownList>
    </asp:TableCell>
    <asp:TableCell>
        <asp:DropDownList ID="SubjectDropDownList64" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="TeacherDropDownList65" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="RoomDropDownList107" runat="server"></asp:DropDownList>
    </asp:TableCell>
</asp:TableRow>
<asp:TableRow>
    <asp:TableCell class="TimeSlotCell">11:55 AM - 12:35 PM </asp:TableCell>
    <asp:TableCell>
        <asp:DropDownList ID="SubjectDropDownList66" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="TeacherDropDownList67" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="RoomDropDownList108" runat="server"></asp:DropDownList>
    </asp:TableCell>
    <asp:TableCell>
        <asp:DropDownList ID="SubjectDropDownList68" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="TeacherDropDownList69" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="RoomDropDownList109" runat="server"></asp:DropDownList>
    </asp:TableCell>
    <asp:TableCell>
        <asp:DropDownList ID="SubjectDropDownList70" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="TeacherDropDownList71" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="RoomDropDownList110" runat="server"></asp:DropDownList>    
    </asp:TableCell>
    <asp:TableCell>
        <asp:DropDownList ID="SubjectDropDownList72" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="TeacherDropDownList73" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="RoomDropDownList111" runat="server"></asp:DropDownList>
    </asp:TableCell>
    <asp:TableCell>
        <asp:DropDownList ID="SubjectDropDownList74" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="TeacherDropDownList75" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="RoomDropDownList112" runat="server"></asp:DropDownList>
    </asp:TableCell>
    <asp:TableCell>
        <asp:DropDownList ID="SubjectDropDownList76" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="TeacherDropDownList77" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="RoomDropDownList113" runat="server"></asp:DropDownList>
    </asp:TableCell>
</asp:TableRow>
</asp:Table>

    <asp:Button ID="B3" runat="server" Text="Create" OnClick="CreateButton_Click" CssClass="btn btn-primary" />
    <asp:Button ID="B1" runat="server" Text="Update" OnClick="UpdateButton_Click" CssClass="btn btn-primary"  />
<asp:Button ID="B2" runat="server" Text="View" OnClick="ViewButton_Click" CssClass="btn btn-primary" />
   <style>
         
       /* Change the background color of the header cells to lavender within the "Main" class */
.Main tr:first-child td {
    background-color: #E6E6FA !important; /* Lavender color, you can adjust the color code as needed */
}

.TimeSlotCell {
    background-color: lavender; /* Change this to the desired color */
}
    .button-container {
        text-align: center;
        position: fixed;
        bottom: 0;
        left: 50%;
        transform: translateX(-50%);
        width: 100%; /* Ensure the container takes the full width */
    }

    .btn-primary {
        background-color: #008000; /* Updated color */
        color: #ffffff;
        border: none;
        padding: 12px 30px;
        border-radius: 30px;
        cursor: pointer;
        font-size: 18px;
        transition: background-color 0.3s ease-in-out, transform 0.2s ease-in-out;
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        margin: 20px 10px; /* Adjust the margin for spacing between buttons */
        display: inline-block;
        width: fit-content;
        text-align: center;
    }

    .btn-primary:hover {
        background-color: #006400; /* Updated hover color */
        transform: scale(1.05);
    }

    .btn-primary:active {
        background-color: #006400; /* Updated active color */
        transform: scale(0.98);
    }

    .btn-primary:focus {
        outline: none;
    }

 
</style>


</asp:Content>
