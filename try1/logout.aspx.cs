using System;
using System.Web.UI;

namespace try1
{
    public partial class logout : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Redirect to login page if not logged in
            if (Session["userEmail"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // Clear the session
            Session.Abandon();

            // Redirect to the login page
            Response.Redirect("login.aspx");
        }
    }
}
