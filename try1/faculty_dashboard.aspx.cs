using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace try1
{
    public partial class faculty_dashboard : System.Web.UI.Page
    {
        protected HiddenField UpdateHiddenField;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if the user is logged in
                if (Session["IsLoggedIn"] != null && (bool)Session["IsLoggedIn"])
                {
                    // User is logged in
                    string userEmail = Session["UserEmail"].ToString();
                    // Access other session variables as needed
                }
                else
                {
                    // User is not logged in
                    // Redirect to the login page or handle accordingly
                    Response.Redirect("login.aspx");
                }
            }
            {
                // Populate dropdown list with branches from the database
                PopulateBranchDropdown();
                // Populate dropdown lists with subjects and teachers
                PopulateDropdowns();
                // Initialize the DropDownListArray
                // Initialize the arrays
                if (UpdateHiddenField == null)
                {
                    UpdateHiddenField = new HiddenField();
                    UpdateHiddenField.ID = "UpdateHiddenField";
                    // Additional properties can be set as needed
                }
            }
        }

        protected void PopulateBranchDropdown()
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\gyang\\source\\repos\\try1\\try1\\App_Data\\StudentDB.mdf;Integrated Security=True";
            string branchQuery = "SELECT Branch FROM Teachers";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand branchCmd = new SqlCommand(branchQuery, connection))
                {
                    branchCmd.CommandType = CommandType.Text;
                    BranchDropdown.DataSource = branchCmd.ExecuteReader();
                }

                BranchDropdown.DataTextField = "Branch";
                BranchDropdown.DataValueField = "Branch";
                BranchDropdown.DataBind();

                connection.Close();
            }
        }

        protected void PopulateDropdowns()
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\gyang\\source\\repos\\try1\\try1\\App_Data\\StudentDB.mdf;Integrated Security=True";
            string subjectQuery = "SELECT SubjectName FROM Subjects";
            string teacherQuery = "SELECT TeacherName FROM Teachers";
            string roomQuery = "SELECT RoomNo FROM Room";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                PopulateDropdownsForDay(connection, subjectQuery, teacherQuery, roomQuery, SubjectDropDownList6,  TeacherDropDownList7,  RoomDropDownList78, SubjectDropDownList18, TeacherDropDownList19, RoomDropDownList84, SubjectDropDownList30, TeacherDropDownList31, RoomDropDownList90, SubjectDropDownList42, TeacherDropDownList43, RoomDropDownList96, SubjectDropDownList54, TeacherDropDownList55, RoomDropDownList102, SubjectDropDownList66, TeacherDropDownList67, RoomDropDownList108);
                PopulateDropdownsForDay(connection, subjectQuery, teacherQuery, roomQuery, SubjectDropDownList8,  TeacherDropDownList9,  RoomDropDownList79, SubjectDropDownList20, TeacherDropDownList21, RoomDropDownList85, SubjectDropDownList32, TeacherDropDownList33, RoomDropDownList91, SubjectDropDownList44, TeacherDropDownList45, RoomDropDownList97, SubjectDropDownList56, TeacherDropDownList57, RoomDropDownList103, SubjectDropDownList68, TeacherDropDownList69, RoomDropDownList109);
                PopulateDropdownsForDay(connection, subjectQuery, teacherQuery, roomQuery, SubjectDropDownList10, TeacherDropDownList11, RoomDropDownList80, SubjectDropDownList22, TeacherDropDownList23, RoomDropDownList86, SubjectDropDownList34, TeacherDropDownList35, RoomDropDownList92, SubjectDropDownList46, TeacherDropDownList47, RoomDropDownList98, SubjectDropDownList58, TeacherDropDownList59, RoomDropDownList104, SubjectDropDownList70, TeacherDropDownList71, RoomDropDownList110);
                PopulateDropdownsForDay(connection, subjectQuery, teacherQuery, roomQuery, SubjectDropDownList12, TeacherDropDownList13, RoomDropDownList81, SubjectDropDownList24, TeacherDropDownList25, RoomDropDownList87, SubjectDropDownList36, TeacherDropDownList37, RoomDropDownList93, SubjectDropDownList48, TeacherDropDownList49, RoomDropDownList99, SubjectDropDownList60, TeacherDropDownList61, RoomDropDownList105, SubjectDropDownList72, TeacherDropDownList73, RoomDropDownList111);
                PopulateDropdownsForDay(connection, subjectQuery, teacherQuery, roomQuery, SubjectDropDownList14, TeacherDropDownList15, RoomDropDownList82, SubjectDropDownList26, TeacherDropDownList27, RoomDropDownList88, SubjectDropDownList38, TeacherDropDownList39, RoomDropDownList94, SubjectDropDownList50, TeacherDropDownList51, RoomDropDownList100, SubjectDropDownList62, TeacherDropDownList63, RoomDropDownList106, SubjectDropDownList74, TeacherDropDownList75, RoomDropDownList112);
                PopulateDropdownsForDay(connection, subjectQuery, teacherQuery, roomQuery, SubjectDropDownList16, TeacherDropDownList17, RoomDropDownList83, SubjectDropDownList28, TeacherDropDownList29, RoomDropDownList89, SubjectDropDownList40, TeacherDropDownList41, RoomDropDownList95, SubjectDropDownList52, TeacherDropDownList53, RoomDropDownList101, SubjectDropDownList64, TeacherDropDownList65, RoomDropDownList107, SubjectDropDownList76, TeacherDropDownList77, RoomDropDownList113);

                connection.Close();

            }
        }

        private DataTable FetchData(SqlConnection connection, string query)
        {
            DataTable dataTable = new DataTable();

            using (SqlCommand cmd = new SqlCommand(query, connection))
            {
                cmd.CommandType = CommandType.Text;
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(dataTable);
            }

            return dataTable;
        }


        private void ShowError(string errorMessage, Exception ex)
        {
            // Log the exception details (replace with your logging mechanism)
            // For example, you can use a logging library or write to a log file
            // LogException(ex);

            // Display the error message to the user
            ErrorLabel.Text = errorMessage;
        }


        // Method to populate subject and teacher dropdowns for a specific day
        // Method to populate subject and teacher dropdowns for a specific day
        protected void PopulateDropdownsForDay(SqlConnection connection, string subjectQuery, string teacherQuery, string roomQuery, params DropDownList[] dropdowns)
        {
            DataTable Subjects = FetchData(connection, subjectQuery);
            DataTable Teachers = FetchData(connection, teacherQuery);
            DataTable Room = FetchData(connection, roomQuery);

            // Assuming you have 6 time slots for each day (adjust as needed)
            int numberOfTimeSlots = 6;

            for (int i = 0; i < numberOfTimeSlots; i++)
            {
                int subjectIndex = i * 3;
                int teacherIndex = subjectIndex + 1;
                int roomIndex = subjectIndex + 2;

                // Populate subject dropdown
                PopulateDropdown(dropdowns[subjectIndex], Subjects, "SubjectName", "SubjectName");

                // Populate teacher dropdown
                PopulateDropdown(dropdowns[teacherIndex], Teachers, "TeacherName", "TeacherName");

                // Populate room dropdown
                PopulateDropdown(dropdowns[roomIndex], Room, "RoomNo", "RoomNo");
            }
        }

        private void PopulateDropdown(DropDownList dropdown, DataTable data, string textField, string valueField)
        {
            dropdown.DataSource = data;
            dropdown.DataTextField = textField;
            dropdown.DataValueField = valueField;
            dropdown.DataBind();
        }

        protected global::System.Web.UI.WebControls.Table MainTable;
        private string GetSelectedValueFromDropDown(DropDownList dropDownList)
        {
            if (dropDownList != null)
            {
                return dropDownList.SelectedValue;
            }

            return string.Empty;
        }
        protected void CreateButton_Click(object sender, EventArgs e)
        {
            // List of days to iterate over
            string[] daysOfWeek = { "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" };

            try
            {
                // Iterate through each day of the week
                foreach (string dayOfWeek in daysOfWeek)
                {
                    // Iterate through each row in the MainTable
                    foreach (TableRow row in MainTable.Rows)
                    {
                        // Skip the header row
                        if (row.Cells.Count == 0)
                            continue;

                        // Extract data from the row
                        string timeSlot = row.Cells[0].Text;

                        // Get the selected branch from the BranchDropdown control
                        string branch = BranchDropdown.SelectedValue;

                        // Use the modified method to get the selected values
                        string subjectName = GetSelectedValueFromDropDown(GetDropDownFromCell(row.Cells[2]));
                        string teacherName = GetSelectedValueFromDropDown(GetDropDownFromCell(row.Cells[3]));
                        string roomNo = GetSelectedValueFromDropDown(GetDropDownFromCell(row.Cells[4]));

                        // Insert data into the database
                        InsertDataIntoDatabase(timeSlot, dayOfWeek, branch, subjectName, teacherName, roomNo);
                    }
                }

                // Display success message
                SuccessLabel.Text = $"Congratulations! {BranchDropdown.SelectedValue} TimeTable is Created";
                SuccessLabel.ForeColor = System.Drawing.Color.Green;
                SuccessLabel.Visible = true;
            }
            catch (Exception ex)
            {
                // Display error message
                ShowError("An error occurred while creating the timetable.", ex);
            }
        }

        private DropDownList GetDropDownFromCell(TableCell cell)
        {
            if (cell.Controls.Count > 0 && cell.Controls[0] is DropDownList)
            {
                return (DropDownList)cell.Controls[0];
            }
            else
            {
                // Handle the case where the control in the cell is not a DropDownList
                return null;
            }
        }


        private string GetSelectedValueFromDropDown(TableCell cell)
        {
            if (cell.Controls.Count > 0 && cell.Controls[0] is DropDownList)
            {
                DropDownList dropDownList = (DropDownList)cell.Controls[0];
                return dropDownList.SelectedValue;
            }

            return string.Empty; // or handle the case where the control is not found
        }
        private void InsertDataIntoDatabase(string timeSlot, string dayOfWeek, string branch, string subjectName, string teacherName, string roomNo)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\gyang\\source\\repos\\try1\\try1\\App_Data\\StudentDB.mdf;Integrated Security=True";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "INSERT INTO      (TimeSlot, DaysOfWeek, Branch, SubjectName, TeacherName, RoomNo) " +
                               "VALUES (@TimeSlot, @DaysOfWeek, @Branch, @SubjectName, @TeacherName, @RoomNo)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@TimeSlot", timeSlot);
                    command.Parameters.AddWithValue("@DaysOfWeek", dayOfWeek);
                    command.Parameters.AddWithValue("@Branch", branch);
                    command.Parameters.AddWithValue("@SubjectName", subjectName);
                    command.Parameters.AddWithValue("@TeacherName", teacherName);
                    command.Parameters.AddWithValue("@RoomNo", roomNo);

                    command.ExecuteNonQuery();
                }
            }
        }



        private bool IsTimetableExists(string branch)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\gyang\\source\\repos\\try1\\try1\\App_Data\\StudentDB.mdf;Integrated Security=True";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "SELECT COUNT(*) FROM Schedule WHERE Branch = @Branch";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Branch", branch);

                    int timetableCount = (int)command.ExecuteScalar();

                    return timetableCount > 0;
                }
            }
        }


        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            string branchToUpdate = UpdateHiddenField.Value;
            try
            {
                // Get the selected branch from the BranchDropdown control
                string branch = BranchDropdown.SelectedValue;

                // Check if the timetable for the selected branch already exists in the database
                if (IsTimetableExists(branch))
                {
                    // Display a confirmation pop-up
                    string confirmScript = "if (confirm('The timetable for this branch already exists. Do you want to update it?')) { document.getElementById('" + UpdateHiddenField.ClientID + "').value = 'true'; }";
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "confirmUpdate", confirmScript, true);

                    // Update the message label to inform the user
                    UpdateMessageLabel.Text = "The timetable for this branch already exists. You can update it.";
                }
                else
                {
                    // Update the message label to inform the user
                    UpdateMessageLabel.Text = "No existing timetable found. You can create a new one.";

                    // If the timetable doesn't exist, you can proceed with any other logic or display a message
                }
            }
            catch (Exception ex)
            {
                // Handle any exceptions
                ShowError("An error occurred while processing the update request.", ex);
            }
        }

        protected void ViewButton_Click(object sender, EventArgs e)
        {
            try
            {
                // Get the selected branch from the BranchDropdown control
                string branch = BranchDropdown.SelectedValue;

                // Redirect to ViewCertificates.aspx with the selected branch as a query parameter
                Response.Redirect("~/ViewCertificates.aspx?branch=" + Server.UrlEncode(branch));
            }
            catch (Exception ex)
            {
                // Handle any exceptions
                ShowError("An error occurred while processing the view request.", ex);
            }
        }

    }
}