<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="BookingConfirmation.aspx.cs"
    Inherits="TRAIN_RESERVATION.BookingConfirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Booking Confirmation</title>

    <style>
        body {
            font-family: Arial;
            background-color: #f2f5f8;
            margin: 0;
        }

        .header {
            background-color: #337ab7;
            color: white;
            padding: 20px;
            text-align: center;
        }

        .box {
            width: 60%;
            margin: 60px auto;
            background-color: white;
            padding: 40px;
            text-align: center;
            border-radius: 10px;
            box-shadow: 0px 2px 10px #cccccc;
        }

        h2 {
            color: green;
        }

        .message {
            font-size: 18px;
            margin: 25px;
        }

        .btn {
            background-color: #337ab7;
            color: white;
            padding: 12px 30px;
            border: none;
            border-radius: 5px;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <div class="header">
        <h1>RAILWAY RESERVATION SYSTEM</h1>
    </div>

    <div class="box">

        <h2>Booking Confirmed!</h2>

        <p class="message">
            Your railway ticket has been successfully booked.
        </p>

        <p>
            Thank you for using Railway Reservation System.
        </p>

        <br />

        <asp:Button ID="btnHome"
            runat="server"
            Text="Go to Home"
            CssClass="btn"
            PostBackUrl="~/Default.aspx" />

    </div>

</form>

</body>
</html>