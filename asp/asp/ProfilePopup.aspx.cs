using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Text;

public partial class ProfilePopup : System.Web.UI.Page
{

    String encrypwd;
    private readonly string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\UserData.mdf;Integrated Security=True";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Load the user's information into the textboxes
            string userName = Session["CustomerName"].ToString();
            string email = ""; // Fetch the user's email from the database or session
            txtUserName.Text = userName;
            txtEmail.Text = email;
        }
    }

    protected void btnUpdateProfile_Click(object sender, EventArgs e)
    {
        // Update the user's information in the database
        string userName = txtUserName.Text;
        string email = txtEmail.Text;


        // Update the user's information in the database (e.g., UserData.tblUser)
        encryption1();
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            string updateQuery = "UPDATE tblUser SET UserName=@UserName, EmailId=@Email, Password=@Password WHERE UserId=@UserId";
            using (SqlCommand command = new SqlCommand(updateQuery, connection))
            {
                command.Parameters.AddWithValue("@UserName", userName);
                command.Parameters.AddWithValue("@Email", email);
                command.Parameters.AddWithValue("@Password", encrypwd);
                command.Parameters.AddWithValue("@UserId", Session["CID"]); // Assuming UserId is a unique identifier for the user
                

                int result = command.ExecuteNonQuery();

                if (result > 0)
                {
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Data Inserted successfully');", true);
                  
                }
                else
                {
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Data Insertation failed');", true);
                }
            }
        }

        // Close the popup window
        ScriptManager.RegisterStartupScript(this, GetType(), "ClosePopup", "window.close();", true);
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        // Close the popup window
        ScriptManager.RegisterStartupScript(this, GetType(), "ClosePopup", "window.close();", true);
    }


    public void encryption1()
    {
        string strmsg = string.Empty;
        byte[] encode = new byte[txtPassword.Text.Length];
        encode = Encoding.UTF8.GetBytes(txtPassword.Text);
        strmsg = Convert.ToBase64String(encode);
        encrypwd = strmsg;

        Session["EncryptedPassword"] = encrypwd;
    }
}