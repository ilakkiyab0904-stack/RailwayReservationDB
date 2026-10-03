using System;

namespace TRAIN_RESERVATION
{
    public partial class Reservation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            Session["TrainName"] = ddlTrain.SelectedValue;
            Session["FromStation"] = ddlFrom.SelectedValue;
            Session["ToStation"] = ddlTo.SelectedValue;
            Session["JourneyDate"] = txtDate.Text;
            Session["NumberOfSeats"] = ddlSeats.SelectedValue;

            Response.Redirect("Passenger.aspx");
        }
    }
}