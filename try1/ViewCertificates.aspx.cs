using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace try1
{
    public partial class ViewCertificates : System.Web.UI.Page
    {
        protected Table TimetableTable;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if the branch parameter is present in the query string
                if (!string.IsNullOrEmpty(Request.QueryString["branch"]))
                {
                    string branch = Request.QueryString["branch"];
                    PopulateTimetable(branch);
                }
                else
                {
                    // Handle the case where the branch parameter is missing
                    HandleMissingBranchParameter();
                }
            }
        }

        private void PopulateTimetable(string branch)
        {
            // Fetch timetable data from the database based on the selected branch
            DataTable timetableData = GetTimetableDataFromDatabase(branch);
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\gyang\\source\\repos\\try1\\try1\\App_Data\\StudentDB.mdf;Integrated Security=True";

            // Check if there is any data to display
            if (timetableData.Rows.Count > 0)
            {
                // Create header row
                TableHeaderRow headerRow = new TableHeaderRow();
                headerRow.Cells.Add(new TableHeaderCell { Text = "Time Slot" });
                headerRow.Cells.Add(new TableHeaderCell { Text = "Subject" });
                headerRow.Cells.Add(new TableHeaderCell { Text = "Teacher" });
                headerRow.Cells.Add(new TableHeaderCell { Text = "Room" });
                TimetableTable.Rows.Add(headerRow);


                // Iterate through each row in the datatable and add to the table
                foreach (DataRow row in timetableData.Rows)
                {
                    TableRow dataRow = new TableRow();
                    dataRow.Cells.Add(new TableCell { Text = row["TimeSlot"].ToString() });
                    dataRow.Cells.Add(new TableCell { Text = row["SubjectName"].ToString() });
                    dataRow.Cells.Add(new TableCell { Text = row["TeacherName"].ToString() });
                    dataRow.Cells.Add(new TableCell { Text = row["RoomNo"].ToString() });
                    TimetableTable.Rows.Add(dataRow);
                }
            }
            else
            {
                // Handle the case where no timetable data is available for the selected branch
                HandleNoTimetableData();
            }
        }

        private DataTable GetTimetableDataFromDatabase(string branch)
        {
            DataTable timetableData = new DataTable();
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\gyang\\source\\repos\\try1\\try1\\App_Data\\StudentDB.mdf;Integrated Security=True"; // Replace with your actual connection string

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Query to fetch timetable data based on the branch
                string query = "SELECT TimeSlot, SubjectName, TeacherName, RoomNo FROM Schedule WHERE Branch = @Branch";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Branch", branch);

                    using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                    {
                        adapter.Fill(timetableData);
                    }
                }

                connection.Close();
            }

            return timetableData;
        }

        private void HandleMissingBranchParameter()
        {
            // Handle the case where the branch parameter is missing
            // For example, you can redirect to an error page or display an error message
            Response.Redirect("~/ErrorPage.aspx");
            // or
            // ErrorMessageLabel.Text = "Branch parameter is missing. Please provide a valid branch.";
            // ErrorMessageLabel.Visible = true;
        }

        private void HandleNoTimetableData()
        {
            // Handle the case where no timetable data is available for the selected branch
            // For example, you can display a message or take appropriate action
            Response.Redirect("~/ErrorPage.aspx");
        }
    }
}
