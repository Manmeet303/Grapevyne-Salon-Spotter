using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _3_2profile : System.Web.UI.Page
{
    String encrypwd;
    private readonly string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\UserData.mdf;Integrated Security=True";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Populate dropdown list dynamically
            DropDownList1.Items.Add("slot1");
            DropDownList1.Items.Add("slot2");
            DropDownList1.Items.Add("slot3");

            // Check if email session variable is not null
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
                        string salonName = Convert.ToString(commandSalon.ExecuteScalar()); // Execute the query and fetch the salon name

                        lblSalonName.Text = salonName; // Display the salon name on a label or any other control on the web page
                    }

                    // Query to fetch the hairstyles associated with the fetched salon name from the SalonHairstyles table
                    var a = Session["SID"];
                    string queryHairstyles = "SELECT HairStyleID,HairStyleName,Prize FROM SalonHairStyle WHERE SalonID = @SalonID";
                    using (SqlCommand commandHairstyles = new SqlCommand(queryHairstyles, connection))
                    {
                        commandHairstyles.Parameters.AddWithValue("@SalonID", Session["SID"]); // Add salon name as parameter to the query
                        SqlDataReader reader = commandHairstyles.ExecuteReader(); // Execute the query and fetch the hairstyles

                        rptHairstyles.DataSource = reader; // Set the data source for the Repeater control
                        rptHairstyles.DataBind(); // Bind the data to the Repeater control

                        reader.Close();

                    }

                    connection.Close();
                }
            }
        }
    }






    protected void Button1_Click(object sender, EventArgs e)
    {
    

        DateTime selectedDate = dycalendar.SelectedDate;
        string selectedSlot = DropDownList1.SelectedValue.ToString();

        // Connect to the database and execute the query to check if the selected date already exists
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\UserData.mdf;Integrated Security=True";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
                
            // Check if the selected date already exists in the Events table
            string checkDateQuery = "SELECT COUNT(*) FROM BookedCustomer WHERE EventDate = @Date";
            SqlCommand checkDateCommand = new SqlCommand(checkDateQuery, connection);
            checkDateCommand.Parameters.AddWithValue("@Date", selectedDate.Date);
            int dateCount = (int)checkDateCommand.ExecuteScalar();

            bool flag = true;

            if (dateCount == 0)
            {
                // If the selected date does not exist in the table, insert it along with the selected slot
                string insertDateQuery = "INSERT INTO BookedCustomer (SalonID, UserId, SelectedHairStyle, Prize, CustomerName, PhoneNumber, EventDate, Slot1, Slot2, Slot3, Flag) VALUES (@SalonID, @UserId, @style, @prize, @CustomerName, @PhoneNumber,@Date, @Slot1, @Slot2, @Slot3, @Flag)";
                SqlCommand insertDateCommand = new SqlCommand(insertDateQuery, connection);
                insertDateCommand.Parameters.AddWithValue("@SalonID", Session["SID"]);
                insertDateCommand.Parameters.AddWithValue("@UserId", Session["CID"]);
                insertDateCommand.Parameters.AddWithValue("@style", "curley");
                insertDateCommand.Parameters.AddWithValue("@prize", "$60");
                insertDateCommand.Parameters.AddWithValue("@CustomerName", txtCustomerName.Text);
                insertDateCommand.Parameters.AddWithValue("@PhoneNumber", txtPhoneNumber.Text);
                insertDateCommand.Parameters.AddWithValue("@Date", selectedDate.Date);
                insertDateCommand.Parameters.AddWithValue("@Slot1", selectedSlot == "slot1" ? false : true);
                insertDateCommand.Parameters.AddWithValue("@Slot2", selectedSlot == "slot2" ? false : true);
                insertDateCommand.Parameters.AddWithValue("@Slot3", selectedSlot == "slot3" ? false : true);
                insertDateCommand.Parameters.AddWithValue("@Flag", flag);
                insertDateCommand.ExecuteNonQuery();
            }
            else
            {
                // If the selected date already exists in the table, update the selected slot
                SqlCommand updateSlotCommand = new SqlCommand();
                updateSlotCommand.Connection = connection;

                // Determine which slot to update based on the selected slot
                if (selectedSlot == "slot1")
                {
                    updateSlotCommand.CommandText = "UPDATE BookedCustomer SET Slot1 = @SlotValue WHERE EventDate = @Date";
                }
                else if (selectedSlot == "slot2")
                {
                    updateSlotCommand.CommandText = "UPDATE BookedCustomer SET Slot2 = @SlotValue WHERE EventDate = @Date";
                }
                else if (selectedSlot == "slot3")
                {
                    updateSlotCommand.CommandText = "UPDATE BookedCustomer SET Slot3 = @SlotValue WHERE EventDate = @Date";
                }

                updateSlotCommand.Parameters.AddWithValue("@SlotValue", false);
                updateSlotCommand.Parameters.AddWithValue("@Date", selectedDate.Date);
                updateSlotCommand.ExecuteNonQuery();

                // Check if all slots are taken
                string checkSlotsQuery = "SELECT Slot1, Slot2, Slot3 FROM BookedCustomer WHERE EventDate = @Date";
                SqlCommand checkSlotsCommand = new SqlCommand(checkSlotsQuery, connection);
                checkSlotsCommand.Parameters.AddWithValue("@Date", selectedDate.Date);
                SqlDataReader reader = checkSlotsCommand.ExecuteReader();
                bool slot1 = false, slot2 = false, slot3 = false;
                while (reader.Read())
                {
                    slot1 = (bool)reader["Slot1"];
                    slot2 = (bool)reader["Slot2"];
                    slot3 = (bool)reader["Slot3"];
                }
                reader.Close();

                // If all slots are taken, update the flag to false and change the color of the date in the calendar to red
                if (!slot1 && !slot2 && !slot3)
                {
                    flag = false;
                    string updateFlagQuery = "UPDATE BookedCustomer SET Flag = @Flag WHERE EventDate = @Date";
                    SqlCommand updateFlagCommand = new SqlCommand(updateFlagQuery, connection);
                    updateFlagCommand.Parameters.AddWithValue("@Flag", flag);
                    updateFlagCommand.Parameters.AddWithValue("@Date", selectedDate.Date);
                    updateFlagCommand.ExecuteNonQuery();
                }


            }

            connection.Close();
        }

        // Refresh the calendar and dropdown to reflect the changes
        dycalendar.DataBind();
        DropDownList1.DataBind();

        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Date stored successfully!');", true);
    }




    protected void dycalendar_DayRender(object sender, DayRenderEventArgs e)
    {
        // Get the connection string from the web.config file
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\UserData.mdf;Integrated Security=True";

        // Create the SQL query to get the flag value from the Events table for the current date
        string query = "SELECT * FROM BookedCustomer WHERE EventDate = @date";

        // Create a new SQL connection and command objects
        using (SqlConnection connection = new SqlConnection(connectionString))
        using (SqlCommand command = new SqlCommand(query, connection))
        {
            if (e.Day.Date == dycalendar.SelectedDate)
            {
                // Fetch the values from the database based on the selected date
                List<string> values = FetchValuesFromDatabase(e.Day.Date);

                // Bind the values to the DropDownList control
                DropDownList1.DataSource = values;
                DropDownList1.DataBind();
            }

        }

        string query2 = "SELECT flag FROM BookedCustomer WHERE EventDate = @date";

        using (SqlConnection connection = new SqlConnection(connectionString))

        using (SqlCommand command = new SqlCommand(query2, connection))
        {
            // Add the current date as a parameter to the query
            command.Parameters.AddWithValue("@date", e.Day.Date);

            // Open the connection and execute the query
            connection.Open();
            object flag = command.ExecuteScalar();

            // Check if the flag value is false
            if (flag != null && flag.ToString() == "False")
            {

                // Set the background color of the calendar day to red
                e.Cell.BackColor = System.Drawing.Color.Red;
            }
        }


    }

    private List<string> FetchValuesFromDatabase(DateTime selectedDate)
    {
        List<string> values = new List<string>();

        // Connect to the database and execute the query to fetch the slot values based on the selected date
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\UserData.mdf;Integrated Security=True";

        string query = "SELECT flag,slot1, slot2, slot3 FROM BookedCustomer WHERE EventDate = @selectedDate";

        using (SqlConnection connection = new SqlConnection(connectionString))
        using (SqlCommand command = new SqlCommand(query, connection))
        {
            command.Parameters.AddWithValue("@selectedDate", Convert.ToDateTime(selectedDate));
            connection.Open();


            using (SqlDataReader reader = command.ExecuteReader())
            {
                if (reader.Read())
                {
                    // Check the flag value to determine if any slots are available
                    bool flag = (bool)reader["flag"];
                    if (!flag)
                    {
                        // If flag is false, display "No Slots Available" in the dropdown
                        values.Add("No Slots Available");
                    }
                    else
                    {
                        // Otherwise, check which slots are true and add their names to the list
                        if ((bool)reader["slot1"])
                        {
                            values.Add("slot1");
                        }

                        if ((bool)reader["slot2"])
                        {
                            values.Add("slot2");
                        }

                        if ((bool)reader["slot3"])
                        {
                            values.Add("slot3");
                        }
                    }
                }

                else
                {
                    // If the selected date does not exist in the database, add all slots to the list
                    values.Add("slot1");
                    values.Add("slot2");
                    values.Add("slot3");
                }
            }
        }

        return values;
    }














    private void disp_data()
    {
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            SqlCommand command = new SqlCommand("SELECT * FROM salonUser", connection);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            adapter.Fill(dt);

        }
    }

   



}
