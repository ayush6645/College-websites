using System;
using System.Web;

namespace try1
{
    public partial class time_table : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check the user's role from the session
            if (Session["IsLoggedIn"] != null && Convert.ToBoolean(Session["IsLoggedIn"]))
            {
                string memberType = Session["MemberType"].ToString();

                // Redirect based on the user's role
                switch (memberType)
                {
                    case "faculty":
                        Response.Redirect("faculty_dashboard.aspx");
                        break;

                    case "student":
                        Response.Redirect("student_dashboard.aspx");
                        break;

                    case "teacher":
                        Response.Redirect("teacher_dashboard.aspx");
                        break;

                    default:
                        // Handle the case where the user's role is not recognized
                        Response.Write("Unknown role. Please log in.");
                        break;
                }
            }
            else
            {
                // Handle the case where the session is not present
                Response.Write("Session not found. Please log in.");
            }
        }
    }
}
