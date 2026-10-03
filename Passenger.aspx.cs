using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace TRAIN_RESERVATION
{
    public partial class Passenger : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager
                .ConnectionStrings["RailwayDB"]
                .ConnectionString;

            string trainName = Session["TrainName"].ToString();
            string fromStation = Session["FromStation"].ToString();
            string toStation = Session["ToStation"].ToString();
            string journeyDate = Session["JourneyDate"].ToString();
            int numberOfSeats = Convert.ToInt32(Session["NumberOfSeats"]);

            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();

                SqlTransaction transaction = con.BeginTransaction();

                try
                {
                    // Save passenger details
                    string passengerQuery = @"
                        INSERT INTO Passengers
                        (PassengerName, Age, Gender, PhoneNumber)
                        VALUES
                        (@Name, @Age, @Gender, @Phone);

                        SELECT SCOPE_IDENTITY();";

                    int passengerId;

                    using (SqlCommand cmd = new SqlCommand(
                        passengerQuery, con, transaction))
                    {
                        cmd.Parameters.AddWithValue("@Name", txtName.Text);
                        cmd.Parameters.AddWithValue("@Age", Convert.ToInt32(txtAge.Text));
                        cmd.Parameters.AddWithValue("@Gender", ddlGender.SelectedValue);
                        cmd.Parameters.AddWithValue("@Phone", txtPhone.Text);

                        passengerId = Convert.ToInt32(cmd.ExecuteScalar());
                    }

                    // Get Train ID
                    string trainQuery = @"
                        SELECT TrainId
                        FROM Trains
                        WHERE TrainName = @TrainName
                        AND FromStation = @FromStation
                        AND ToStation = @ToStation";

                    int trainId;

                    using (SqlCommand cmd = new SqlCommand(
                        trainQuery, con, transaction))
                    {
                        cmd.Parameters.AddWithValue("@TrainName", trainName);
                        cmd.Parameters.AddWithValue("@FromStation", fromStation);
                        cmd.Parameters.AddWithValue("@ToStation", toStation);

                        trainId = Convert.ToInt32(cmd.ExecuteScalar());
                    }

                    // Save booking details
                    string bookingQuery = @"
                        INSERT INTO Bookings
                        (TrainId, PassengerId, JourneyDate, NumberOfSeats)
                        VALUES
                        (@TrainId, @PassengerId, @JourneyDate, @Seats)";

                    using (SqlCommand cmd = new SqlCommand(
                        bookingQuery, con, transaction))
                    {
                        cmd.Parameters.AddWithValue("@TrainId", trainId);
                        cmd.Parameters.AddWithValue("@PassengerId", passengerId);
                        cmd.Parameters.AddWithValue("@JourneyDate",
                            Convert.ToDateTime(journeyDate));
                        cmd.Parameters.AddWithValue("@Seats", numberOfSeats);

                        cmd.ExecuteNonQuery();
                    }

                    transaction.Commit();

                    Response.Redirect("BookingConfirmation.aspx",false);
                }
                catch
                {
                    transaction.Rollback();
                    throw;
                }
            }
        }
    }
}