using System;
using System.Web.UI;

namespace try1
{
    public partial class logout_logic : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Clear the session
            Session.Abandon();

            // Redirect to the login page
            Response.Redirect("login.aspx");
        }
    }
}
