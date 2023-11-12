using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _3_customer_Landing : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        // Check if the user is logged in
        
        if (Session["CustomerName"] != null)
        {
            lblCustomerName.Text = Session["CustomerName"].ToString();
            lblCustomerName.Visible = true;
            iconProfile.Visible = true;
        }
        else
        {
            lblCustomerName.Visible = false;
            iconProfile.Visible = false;
        }

    }

    protected void profileLink_Click(object sender, EventArgs e)
    {
        // Redirect to the user's profile page or login page if not logged in
        if (Session["CustomerName"] != null)
        {
            // User is logged in, redirect to profile page
            Response.Redirect("Profile.aspx");
        }
        else
        {
            // User is not logged in, redirect to login page
            Response.Redirect("Login.aspx");
        }
    }
}