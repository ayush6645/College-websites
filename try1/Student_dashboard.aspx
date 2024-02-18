<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Student_dashboard.aspx.cs" Inherits="try1.Student_dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="faculty_dashboard.css">
 
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="contentt" runat="server">
       <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red"></asp:Label>
    <asp:Label ID="SuccessLabel" runat="server" Text=""></asp:Label>
    <asp:Label ID="UpdateMessageLabel" runat="server" Text="" ForeColor="Green" Visible="false"></asp:Label>
<asp:HiddenField ID="UpdateHiddenField" runat="server" />
    <div> <asp:Label ID="Label2" runat="server" Text="Your Text Here"></asp:Label></div>


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
  
        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
    
</tr>
              <td colspan="2" align="center">
    <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" 
        style="padding: 10px 30px; background-color: #007bff; color: #fff; border: none; border-radius: 5px; cursor: pointer;" 
        onmouseover="this.style.backgroundColor='#0056b3'" 
        onmouseout="this.style.backgroundColor='#007bff'" />
</td>
        </table>       
<asp:Table ID="TimetableTable" runat="server" CssClass="Main" border="1">
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
        <asp:Label ID="SubjectLabel6" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel7" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel78" runat="server"></asp:Label>
    </asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel8" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel9" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel79" runat="server"></asp:Label>
    </asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel10" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel11" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel80" runat="server"></asp:Label>
    </asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel12" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel13" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel81" runat="server"></asp:Label>
    </asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel14" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel15" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel82" runat="server"></asp:Label>
    </asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel16" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel17" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel83" runat="server"></asp:Label>
    </asp:TableCell>
</asp:TableRow>


<asp:TableRow>
    <asp:TableCell class="TimeSlotCell">8:30 AM - 9:15 AM</asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel18" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel19" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel84" runat="server"></asp:Label>
    </asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel20" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel21" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel85" runat="server"></asp:Label>
    </asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel22" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel23" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel86" runat="server"></asp:Label>
    </asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel24" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel25" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel87" runat="server"></asp:Label>
    </asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel26" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel27" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel88" runat="server"></asp:Label>
    </asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel28" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel29" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel89" runat="server"></asp:Label>
    </asp:TableCell>
</asp:TableRow>
<asp:TableRow>
    <asp:TableCell class="TimeSlotCell">9:15 AM - 10:00 AM</asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel30" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel31" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel90" runat="server"></asp:Label>
    </asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel32" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel33" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel91" runat="server"></asp:Label>
    </asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel34" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel35" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel92" runat="server"></asp:Label>
    </asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel36" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel37" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel93" runat="server"></asp:Label>
    </asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel38" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel39" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel94" runat="server"></asp:Label>
    </asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel40" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel41" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel95" runat="server"></asp:Label>
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
        <asp:Label ID="SubjectLabel42" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel43" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel96" runat="server"></asp:Label>
    </asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel44" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel45" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel97" runat="server"></asp:Label>
    </asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel46" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel47" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel98" runat="server"></asp:Label>
    </asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel48" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel49" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel99" runat="server"></asp:Label>
    </asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel50" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel51" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel100" runat="server"></asp:Label>
    </asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel52" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel53" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel101" runat="server"></asp:Label>
    </asp:TableCell>
</asp:TableRow>
<asp:TableRow>
    <asp:TableCell class="TimeSlotCell">11:05 AM - 11:55 AM</asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel54" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel55" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel102" runat="server"></asp:Label>
    </asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel56" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel57" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel103" runat="server"></asp:Label>
    </asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel58" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel59" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel104" runat="server"></asp:Label>
    </asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel60" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel61" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel105" runat="server"></asp:Label>
    </asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel62" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel63" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel106" runat="server"></asp:Label>
    </asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel64" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel65" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel107" runat="server"></asp:Label>
    </asp:TableCell>
</asp:TableRow>
<asp:TableRow>
    <asp:TableCell class="TimeSlotCell">11:55 AM - 12:35 PM </asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel66" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel67" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel108" runat="server"></asp:Label>
    </asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel68" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel69" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel109" runat="server"></asp:Label>
    </asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel70" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel71" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel110" runat="server"></asp:Label>
    </asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel72" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel73" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel111" runat="server"></asp:Label>
    </asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel74" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel75" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel112" runat="server"></asp:Label>
    </asp:TableCell>
    <asp:TableCell>
        <asp:Label ID="SubjectLabel76" runat="server"></asp:Label>
        <asp:Label ID="TeacherLabel77" runat="server"></asp:Label>
        <asp:Label ID="RoomLabel113" runat="server"></asp:Label>
    </asp:TableCell>
</asp:TableRow>
</asp:Table>
    
  
</asp:Content>
