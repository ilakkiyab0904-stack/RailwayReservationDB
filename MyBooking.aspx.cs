using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace TRAIN_RESERVATION
{
    public partial class MyBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadBookings();
            }
        }

        private void LoadBookings()
        {
            string cs = ConfigurationManager
                .ConnectionStrings["RailwayDB"]
                .ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = @"
                    SELECT
                        B.BookingId AS [Booking ID],
                        P.PassengerName AS [Passenger Name],
                        T.TrainName AS [Train Name],
                        T.FromStation AS [From],
                        T.ToStation AS [To],
                        B.JourneyDate AS [Journey Date],
                        B.NumberOfSeats AS [Seats]
                    FROM Bookings B
                    INNER JOIN Passengers P
                        ON B.PassengerId = P.PassengerId
                    INNER JOIN Trains T
                        ON B.TrainId = T.TrainId
                    ORDER BY B.BookingId DESC";

                using (SqlDataAdapter da =
                    new SqlDataAdapter(query, con))
                {
                    DataTable dt = new DataTable();

                    da.Fill(dt);

                    gvBookings.DataSource = dt;
                    gvBookings.DataBind();
                }
            }
        }
    }
}