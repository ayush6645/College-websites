using System;
using System.Data.SqlClient;
using System.Web;
using System.Web.Script.Serialization;

namespace try1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {
            HttpCookie authCookie = new HttpCookie("AuthenticationCookie");
            authCookie.Values["IsLoggedIn"] = "true";
            authCookie.Values["UserEmail"] = "Email"; // Set this to the actual user's name
            authCookie.Expires = DateTime.Now.AddMinutes(30); // Set the expiration time for the cookie (adjust as needed)
            Response.Cookies.Add(authCookie);
        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            // Get user input
            string userEmail = Email.Text;
            string userPassword = Password.Text;

            // Create a connection to the database
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\gyang\\source\\repos\\try1\\try1\\App_Data\\StudentDB.mdf;Integrated Security=True";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();

                    // Prepare a SQL query to retrieve the user data associated with the given email
                    string query = "SELECT Member, ID, Name, Address, Contact, Password FROM Main WHERE EmailID = @Email";
                    SqlCommand cmd = new SqlCommand(query, connection);
                    cmd.Parameters.AddWithValue("@Email", userEmail);

                    // Execute the query
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        // Email exists, retrieve the user data
                        string storedPassword = reader["Password"].ToString();

                        // Verify the password
                        if (userPassword == storedPassword)
                        {
                            // Passwords match, user is authenticated

                            // Set session variables for user details
                            Session["IsLoggedIn"] = true;
                            Session["UserEmail"] = userEmail;
                            Session["UserName"] = reader["Name"].ToString();
                            Session["UserID"] = reader["ID"].ToString();
                            Session["UserAddress"] = reader["Address"].ToString();
                            Session["UserContact"] = reader["Contact"].ToString();
                            Session["MemberType"] = reader["Member"].ToString();

                            // Redirect the user to a specific page based on the member type
                            if (Session["MemberType"].ToString() == "student" ||
                                Session["MemberType"].ToString() == "teacher" ||
                                Session["MemberType"].ToString() == "faculty")
                            {
                                Response.Redirect("home.aspx");
                            }
                        }
                        else
                        {
                            // Passwords do not match, show an error message
                            Response.Write("Invalid email or password.");
                        }
                    }
                    else
                    {
                        // Email does not exist, show an error message
                        Response.Write("Please enter the valid email.");
                    }
                }
                catch (Exception ex)
                {
                    // Handle any exceptions (e.g., database connection error)
                    Response.Write("An error occurred: " + ex.Message);
                }
            }
        }
    }
}