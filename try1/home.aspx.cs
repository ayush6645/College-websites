using System;

namespace try1
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
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

            // Code to be executed only on the initial page load
            // Set the text of a label based on the current date
        }
    }
}
