using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _3_1_customer_stylists : System.Web.UI.Page
{
    private readonly string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\UserData.mdf;Integrated Security=True";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            string email = Session["username"].ToString(); // Get email from session

            // Connect to the database
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Query to fetch the salon name from the Salon table using email
                string querySalon = "SELECT SalonName FROM salonUser WHERE EmailId = @Email";
                using (SqlCommand commandSalon = new SqlCommand(querySalon, connection))
                {
                    commandSalon.Parameters.AddWithValue("@Email", email); // Add email as parameter to the query
                    string salonNa1me = Convert.ToString(commandSalon.ExecuteScalar()); // Execute the query and fetch the salon name

                    lblSalon.Text = salonNa1me; // Display the salon name on a label or any other control on the web page
                }
                connection.Close();
            }
        }


    }
}