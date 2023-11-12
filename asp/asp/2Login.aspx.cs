using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.Data;

public partial class _2Login : System.Web.UI.Page
{
    String Epass, Dpass;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {


        string username = txtUsername.Text;
        string password = txtPassword.Text;//normal

        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\UserData.mdf;Integrated Security=True";



        using (SqlConnection connection = new SqlConnection(connectionString))
        {

            connection.Open();

            SqlCommand cmd = new SqlCommand("SELECT * FROM tblUser WHERE EmailId=@p1", connection);
            cmd.Parameters.AddWithValue("@p1", txtUsername.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                Epass = dt.Rows[0]["Password"].ToString();
                Session["CID"] = dt.Rows[0]["UserId"].ToString();
                Session["SID"] = dt.Rows[0]["UserId"].ToString();
                Session["CustomerName"] = dt.Rows[0]["UserName"].ToString();
                Session["username"] = dt.Rows[0]["EmailId"].ToString();
                Dpass = decryption1(Epass);
                if (password == Dpass)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Vaild User');", true);
                    Response.Redirect("3(customer)Landing.aspx");
                }

                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Not Vaild User');", true);
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