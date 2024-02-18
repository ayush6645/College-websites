using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace try1
{
    public partial class _event : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable eventDataTable = GetEventData(); // Corrected method name

                cblEvents.DataSource = eventDataTable;
                cblEvents.DataTextField = "EventName";
                cblEvents.DataValueField = "EntryFees";
                cblEvents.DataBind();

                foreach (ListItem item in cblEvents.Items)
                {
                    item.Attributes["title"] = $"{item.Text}|{item.Value}";
                }
            }
        }

        private DataTable GetEventData()
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\gyang\\source\\repos\\try1\\try1\\App_Data\\StudentDB.mdf;Integrated Security=True";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "SELECT EventName, EntryFees FROM EventList"; // Replace 'YourEventTable' with your actual table name
                SqlDataAdapter adapter = new SqlDataAdapter(query, connection);

                DataTable EventList = new DataTable();
                adapter.Fill(EventList);

                return EventList;
            }
        }

        private void BindEventsToCheckBoxList()
        {
            // Replace the connection string with your actual database connection string
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\gyang\source\repos\try1\try1\App_Data\StudentDB.mdf;Integrated Security=True";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Open the database connection
                connection.Open();

                // Define the SQL query to fetch data from the database
                string query = "SELECT EventName, " +
                               "CONCAT(EventName, ' - Entry Fees: ', EntryFees, ' | First Prize: ', FirstPrize, ' | Second Prize: ', SecondPrize, ' | Third Prize: ', ThirdPrize) AS DisplayText " +
                               "FROM EventList";

                // Create a SqlCommand object to execute the query
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Execute the query and get the data
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        // Bind the data to the CheckBoxList
                        cblEvents.DataSource = reader;
                        cblEvents.DataTextField = "DisplayText";
                        cblEvents.DataValueField = "EventName";
                        cblEvents.DataBind();
                    }
                }
            }
        }


        protected void btnPayment_Click(object sender, EventArgs e)
        {
            // Your existing code for btnPayment_Click
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String connectionSting = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\gyang\\source\\repos\\try1\\try1\\App_Data\\StudentDB.mdf;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionSting))
            {
                string Querry = "";
            }

        }

        protected void lbEvents_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Your existing code for lbEvents_SelectedIndexChanged
        }
    }
}
