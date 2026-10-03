<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="MyBooking.aspx.cs"
    Inherits="TRAIN_RESERVATION.MyBooking" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>My Booking</title>

    <style>
        body {
            font-family: Arial;
            background-color: #f2f2f2;
        }

        .container {
            width: 90%;
            margin: 50px auto;
            background: white;
            padding: 25px;
            border-radius: 10px;
        }

        h2 {
            text-align: center;
        }

        .btn {
            padding: 10px 20px;
            background-color: #333;
            color: white;
            border: none;
            border-radius: 5px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">

        <div class="container">

            <h2>My Booking</h2>

            <asp:GridView ID="gvBookings"
                runat="server"
                AutoGenerateColumns="true"
                Width="100%">
            </asp:GridView>

            <br />

            <asp:Button ID="btnHome"
                runat="server"
                Text="Back to Home"
                CssClass="btn"
                PostBackUrl="Default.aspx" />

        </div>

    </form>
</body>
</html>