using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.Data;

public partial class _6_salonLogin : System.Web.UI.Page
{
    String Epass, Dpass;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {


        string email = txtEmailId.Text;
        string password = txtPassword.Text;//normal

        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\UserData.mdf;Integrated Security=True";



        using (SqlConnection connection = new SqlConnection(connectionString))
        {

            connection.Open();

            SqlCommand cmd = new SqlCommand("SELECT * FROM salonUser WHERE EmailId=@p1", connection);
            cmd.Parameters.AddWithValue("@p1", txtEmailId.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                Epass = dt.Rows[0]["Password"].ToString();
                Session["SID"] = dt.Rows[0]["SalonID"].ToString();
                Dpass = decryption1(Epass);
                if (password == Dpass)
                {
                    Session["username"] = email;

                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Vaild User');", true);
                    Response.Redirect("3_2profile.aspx");
                }

                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Password incorrect');", true);
                }
            }

            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Not a Vaild User');", true);

            }
        }



    }

    public string decryption1(string ep)
    {
        string encrypwd = Epass;
        string decodedStr = string.Empty;
        byte[] decodedBytes = Convert.FromBase64String(encrypwd);
        decodedStr = Encoding.UTF8.GetString(decodedBytes);
        //txtPassword.Text = decodedStr;
        return (decodedStr);

    }
}