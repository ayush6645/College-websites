using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI.WebControls;

namespace try1
{
    public partial class upload_certificate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Call a method to populate the branch dropdown list
                PopulateBranchDropdown();
            }

            // Check if the user is logged in
            if (Session["IsLoggedIn"] == null || !(bool)Session["IsLoggedIn"])
            {
                // Redirect the user to the login page or display a message
                Response.Redirect("login.aspx"); // Assuming login page is named "login.aspx"
            }
            else
            {
                // Check if the logged-in member is a student
                if (Session["MemberType"] != null && Session["MemberType"].ToString() == "student")
                {
                    // Retrieve user details from the session
                    if (Session["UserEmail"] != null)
                    {
                        string userEmail = Session["UserEmail"].ToString();
                        string userName = Session["UserName"].ToString();

                        // Display a personalized greeting or perform any other actions
                        Label2.Text = $"Hello {userName} ({userEmail})!";
                    }
                }
                else
                {
                    // Show a message indicating that only student members can upload certificates
                    showPopup();
                }
            }
        }

        private void PopulateBranchDropdown()
        {
            // Retrieve branches from the database and populate the dropdown list
            List<string> branches = GetBranchesFromDatabase();

            ddlBranch.DataSource = branches;
            ddlBranch.DataBind();
        }

        private List<string> GetBranchesFromDatabase()
        {
            List<string> branches = new List<string>();

            // Connection string for your database
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\gyang\\source\\repos\\try1\\try1\\App_Data\\StudentDB.mdf;Integrated Security=True";

            // SQL query to fetch branches
            string query = "SELECT DISTINCT Branch FROM Teachers"; // Assuming 'Branch' is a column in the Teachers table

            // Create a SqlConnection and a SqlCommand
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    try
                    {
                        // Open the connection
                        connection.Open();

                        // Execute the query and read the results
                        SqlDataReader reader = command.ExecuteReader();
                        while (reader.Read())
                        {
                            // Add each branch name to the list
                            branches.Add(reader["Branch"].ToString());
                        }
                    }
                    catch (Exception ex)
                    {
                        // Handle exceptions, if any
                        Console.WriteLine("An error occurred: " + ex.Message);
                    }
                }
            }

            return branches;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Check if the user is logged in and is a student member
            if (Session["IsLoggedIn"] != null && (bool)Session["IsLoggedIn"] && Session["MemberType"] != null && Session["MemberType"].ToString() == "student")
            {
                // Process form submission and store data in the database
                try
                {
                    // Your database connection string
                    string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\gyang\\source\\repos\\try1\\try1\\App_Data\\StudentDB.mdf;Integrated Security=True";

                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        // Your SQL insert query
                        string query = "INSERT INTO UserCertificates (Name, RollNo, Branch, Class, CertificateFile, CertificateLink, OrgName, Course, StartDate, EndDate) " +
                                                           "VALUES (@Name, @RollNo, @Branch, @Class, CONVERT(varbinary(max), @CertificateFile), @CertificateLink, @OrgName, @Course, @StartDate, @EndDate)";


                        using (SqlCommand command = new SqlCommand(query, connection))
                        {
                            // Add parameters
                            command.Parameters.AddWithValue("@Name", txtName.Text);
                            command.Parameters.AddWithValue("@RollNo", txtRollNo.Text);
                            command.Parameters.AddWithValue("@Branch", ddlBranch.SelectedItem.Text);
                            command.Parameters.AddWithValue("@Class", ddlClass.SelectedItem.Text);
                            try
                            {
                                // Save file to directory and get the file path
                                string fileName = Path.GetFileName(fileCertificate.FileName);
                                string filePath = "C://Users//gyang//source//repos//try1//student Certificate/" + fileName;
                                fileCertificate.SaveAs(filePath);
                                command.Parameters.AddWithValue("@CertificateFile", filePath);


                            }
                            catch (Exception ex)
                            {
                                // Handle the exception
                                lblMessage.Text = "An error occurred while saving the file: " + ex.Message;
                            }

                            command.Parameters.AddWithValue("@CertificateLink", txtCertificateLink.Text);
                            command.Parameters.AddWithValue("@OrgName", txtOrgName.Text);
                            command.Parameters.AddWithValue("@Course", rblCourse.SelectedItem.Value);
                            command.Parameters.AddWithValue("@StartDate", txtStartDate.Text);
                            command.Parameters.AddWithValue("@EndDate", txtEndDate.Text);

                            // Open connection
                            connection.Open();

                            // Execute query
                            int rowsAffected = command.ExecuteNonQuery();

                            // Close connection
                            connection.Close();

                            if (rowsAffected > 0)
                            {
                                // Display success message
                                lblMessage.Text = "Certificate uploaded successfully!";
                            }
                            else
                            {
                                // Display error message
                                lblMessage.Text = "Failed to upload certificate!";
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    // Handle exceptions
                    lblMessage.Text = "An error occurred: " + ex.Message;
                }
            }
            else
            {
                // Show a message indicating that only student members can upload certificates
                showPopup();
            }
        }


        private void showPopup()
        {
            // You can use a modal popup library like Bootstrap modal to show a modal popup
            // For simplicity, I'll just display an alert here
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('You are not a student member. Only student members can upload certificates.');", true);
        }
    }
}
