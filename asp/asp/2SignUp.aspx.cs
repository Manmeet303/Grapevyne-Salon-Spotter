using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
public partial class _2SignUp : System.Web.UI.Page
{

    String encrypwd;
    private readonly string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\UserData.mdf;Integrated Security=True";


    protected void btnRegister_Click(object sender, EventArgs e)
    {
        if (txtPassword.Text != txtConfirmPassword.Text)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Password and Confirm Password do not match');", true);
            return;
        }

        encryption1();
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            //SqlCommand checkUsernameCommand = new SqlCommand("SELECT * FROM tblUser WHERE UserName = @UserName", connection);
            //checkUsernameCommand.Parameters.AddWithValue("@UserName", txtUserName.Text);

            //int count = (int)checkUsernameCommand.ExecuteScalar();

            //if (count > 0)
            //{
            //  ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Username already exists');", true);
            //return;
            //}

            SqlCommand checkCommand = new SqlCommand("SELECT COUNT(*) FROM tblUser WHERE UserName = @UserName AND EmailId = @EmailId AND Password = @Password", connection);
            checkCommand.Parameters.AddWithValue("@UserName", txtUserName.Text);
            checkCommand.Parameters.AddWithValue("@EmailId", txtEmailId.Text);
            checkCommand.Parameters.AddWithValue("@Password", txtPassword.Text);

            int count1 = (int)checkCommand.ExecuteScalar();

            if (count1 > 0)
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Data already exists');", true);
                return;
            }

            SqlCommand insertCommand = new SqlCommand("INSERT INTO tblUser ( UserName, EmailId, Password) VALUES (@UserName, @EmailId, @Password)", connection);

            insertCommand.Parameters.AddWithValue("@UserName", txtUserName.Text);
            insertCommand.Parameters.AddWithValue("@EmailId", txtEmailId.Text);
            insertCommand.Parameters.AddWithValue("@Password", encrypwd);


            int result = insertCommand.ExecuteNonQuery();

            if (result > 0)
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Data Inserted successfully');", true);
                Response.Redirect("2Login.aspx");
                disp_data();
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Data Insertation failed');", true);
            }

        }
        disp_data();
    }

    private void disp_data()
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            SqlCommand command = new SqlCommand("SELECT * FROM tblUser", connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            adapter.Fill(dt);

        }
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