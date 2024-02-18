using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace try1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                // Set the text of a label based on the current date
                Label1.Text = "Welcome to ABC College! Today is " + DateTime.Now.ToString("dddd, MMMM dd, yyyy");
            }
        }
    }
}
