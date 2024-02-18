using System;
using System.Data;
using System.Data.SqlClient;
using System.Reflection.Emit;
using System.Web.UI.WebControls;

namespace try1
{
    public partial class Student_dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                PopulateBranchDropdown();
            }
            {
                // Check if the user is logged in
                if (Session["IsLoggedIn"] != null && Convert.ToBoolean(Session["IsLoggedIn"]))
                {
                    // Retrieve user details from the session
                    string userEmail = Session["UserEmail"].ToString();
                    string userName = Session["UserName"].ToString();

                    // Display a personalized greeting
                    Label2.Text = $"Hello {userName} ({userEmail})!";
                }
                else
                {
                    // Redirect the user to the login page if not logged in
                    Response.Redirect("login.aspx");
                }

                // Code to be executed only on the initial page load
                // Set the text of a label based on the current date
            }
        }


            private void PopulateBranchDropdown()
        {
            using (SqlConnection connection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\gyang\source\repos\try1\try1\App_Data\StudentDB.mdf;Integrated Security=True"))
            {
                string query = "SELECT Branch FROM Teachers";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        DropDownList1.Items.Clear();

                        while (reader.Read())
                        {
                            string branchName = reader["Branch"].ToString();
                            DropDownList1.Items.Add(branchName);
                        }
                    }
                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            PopulateTimetableFromDatabase(DropDownList1.SelectedValue);
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            // Upon clicking the Submit button, repopulate the timetable based on the selected branch
            PopulateTimetableFromDatabase(DropDownList1.SelectedValue);
        }

        private void PopulateTimetableFromDatabase(string selectedBranch)
        {
            using (SqlConnection connection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\gyang\source\repos\try1\try1\App_Data\StudentDB.mdf;Integrated Security=True"))
            {
                string query = "SELECT TimeSlot, DaysOfWeek, SubjectName, TeacherName, RoomNo FROM Schedule WHERE Branch = @Branch";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Branch", selectedBranch);

                    connection.Open();

                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);

                    // Clear existing data in the timetable table
                    TimetableTable.Rows.Clear();

                    // Add header row
                    TableHeaderRow headerRow = new TableHeaderRow();
                    headerRow.Cells.Add(new TableHeaderCell { Text = "Timing" });
                    headerRow.Cells.Add(new TableHeaderCell { Text = "Monday" });
                    headerRow.Cells.Add(new TableHeaderCell { Text = "Tuesday" });
                    headerRow.Cells.Add(new TableHeaderCell { Text = "Wednesday" });
                    headerRow.Cells.Add(new TableHeaderCell { Text = "Thursday" });
                    headerRow.Cells.Add(new TableHeaderCell { Text = "Friday" });
                    headerRow.Cells.Add(new TableHeaderCell { Text = "Saturday" });
                    TimetableTable.Rows.Add(headerRow);


                    // Define time slots
                    string[] timeSlots = { "7:45 AM - 8:30 AM", "8:30 AM - 9:15 AM", "9:15 AM - 10:00 AM", "10:00 AM (Break) 10:20 AM", "10:20 AM - 11:05 AM", "11:05 AM - 11:55 AM", "11:55 AM - 12:35 PM" };

                    // Loop through each time slot
                    foreach (string timeSlot in timeSlots)
                    {
                        TableRow dataRow = new TableRow();
                        dataRow.Cells.Add(new TableCell { Text = timeSlot });

                        // Loop through each day of the week
                        for (int i =1; i < 7; i++)
                        {
                            string dayOfWeek = ((DayOfWeek)i).ToString();
                            string cellContent = GetCellContent(dataTable, selectedBranch, dayOfWeek, timeSlot);
                            dataRow.Cells.Add(new TableCell { Text = cellContent });
                        }

                        // Add the row to the timetable table
                        TimetableTable.Rows.Add(dataRow);
                    }
                }
            }
        }

        private string GetCellContent(DataTable dataTable, string branch, string dayOfWeek, string timeSlot)
        {
            DataRow[] rows = dataTable.Select($"DaysOfWeek = '{dayOfWeek}' AND TimeSlot = '{timeSlot}'");

            if (rows.Length > 0)
            {
                string subject = rows[0]["SubjectName"].ToString();
                string teacher = rows[0]["TeacherName"].ToString();
                string room = rows[0]["RoomNo"].ToString();
                return $"Subject: {subject}<br/>Teacher: {teacher}<br/>Room: {room}";
            }
            else
            {
                return string.Empty;
            }
        }
    }
}
