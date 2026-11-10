using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;

namespace TheGoldenPlatter
{
    public partial class Book : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string connString = ConfigurationManager.ConnectionStrings["GoldenPlatterDb"].ConnectionString;
                
                try 
                {
                    using (SqlConnection conn = new SqlConnection(connString))
                    {
                        string sql = "INSERT INTO Bookings (CustomerName, BookingDate, Time, GuestCount, Notes) VALUES (@Name, @Date, @Time, @Guests, @Notes)";
                        using (SqlCommand cmd = new SqlCommand(sql, conn))
                        {
                            cmd.Parameters.AddWithValue("@Name", txtName.Text);
                            cmd.Parameters.AddWithValue("@Date", DateTime.Parse(txtDate.Text));
                            cmd.Parameters.AddWithValue("@Time", txtTime.Text);
                            cmd.Parameters.AddWithValue("@Guests", int.Parse(txtGuests.Text));
                            cmd.Parameters.AddWithValue("@Notes", txtNotes.Text);

                            conn.Open();
                            cmd.ExecuteNonQuery();
                        }
                    }

                    // Success
                    pnlForm.Visible = false;
                    pnlSuccess.Visible = true;
                    lblConfirmName.Text = txtName.Text;
                    lblConfirmDate.Text = txtDate.Text + " at " + txtTime.Text;
                }
                catch (Exception ex)
                {
                    lblError.Text = "Error booking table: " + ex.Message;
                }
            }
        }
    }
}
