using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _3_3calendar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Populate dropdown list dynamically
            DropDownList1.Items.Add("slot1");
            DropDownList1.Items.Add("slot2");
            DropDownList1.Items.Add("slot3");
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
            string checkDateQuery = "SELECT COUNT(*) FROM Events WHERE EventDate = @Date";
            SqlCommand checkDateCommand = new SqlCommand(checkDateQuery, connection);
            checkDateCommand.Parameters.AddWithValue("@Date", selectedDate.Date);
            int dateCount = (int)checkDateCommand.ExecuteScalar();

            bool flag = true;

            if (dateCount == 0)
            {
                // If the selected date does not exist in the table, insert it along with the selected slot
                string insertDateQuery = "INSERT INTO Events (EventDate, Slot1, Slot2, Slot3, Flag) VALUES (@Date, @Slot1, @Slot2, @Slot3, @Flag)";
                SqlCommand insertDateCommand = new SqlCommand(insertDateQuery, connection);
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
                    updateSlotCommand.CommandText = "UPDATE Events SET Slot1 = @SlotValue WHERE EventDate = @Date";
                }
                else if (selectedSlot == "slot2")
                {
                    updateSlotCommand.CommandText = "UPDATE Events SET Slot2 = @SlotValue WHERE EventDate = @Date";
                }
                else if (selectedSlot == "slot3")
                {
                    updateSlotCommand.CommandText = "UPDATE Events SET Slot3 = @SlotValue WHERE EventDate = @Date";
                }

                updateSlotCommand.Parameters.AddWithValue("@SlotValue", false);
                updateSlotCommand.Parameters.AddWithValue("@Date", selectedDate.Date);
                updateSlotCommand.ExecuteNonQuery();

                // Check if all slots are taken
                string checkSlotsQuery = "SELECT Slot1, Slot2, Slot3 FROM Events WHERE EventDate = @Date";
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
                    string updateFlagQuery = "UPDATE Events SET Flag = @Flag WHERE EventDate = @Date";
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









    //string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True";

    protected void dycalendar_DayRender(object sender, DayRenderEventArgs e)
    {
        // Get the connection string from the web.config file
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\UserData.mdf;Integrated Security=True";

        // Create the SQL query to get the flag value from the Events table for the current date
        string query = "SELECT * FROM Events WHERE EventDate = @date";

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

        string query2 = "SELECT flag FROM Events WHERE EventDate = @date";

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

        string query = "SELECT flag,slot1, slot2, slot3 FROM Events WHERE EventDate = @selectedDate";

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



}