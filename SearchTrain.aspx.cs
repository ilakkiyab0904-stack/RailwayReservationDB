using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace TRAIN_RESERVATION
{
    public partial class SearchTrain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager
                   .ConnectionStrings["RailwayDB"]
                   .ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = @"SELECT
                                    TrainNumber AS [Train Number],
                                    TrainName AS [Train Name],
                                    FromStation AS [From],
                                    ToStation AS [To],
                                    Departure,
                                    Arrival,
                                    AvailableSeats AS [Available Seats]
                                 FROM Trains
                                 WHERE FromStation = @FromStation
                                 AND ToStation = @ToStation";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue(
                        "@FromStation", ddlFrom.SelectedValue);

                    cmd.Parameters.AddWithValue(
                        "@ToStation", ddlTo.SelectedValue);

                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();

                        da.Fill(dt);

                        gvTrains.DataSource = dt;
                        gvTrains.DataBind();
                    }
                }
            }
        }
    }
}