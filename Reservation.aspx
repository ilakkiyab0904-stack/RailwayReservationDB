<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Reservation.aspx.cs"
    Inherits="TRAIN_RESERVATION.Reservation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Railway Reservation</title>

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
            width: 70%;
            margin: 40px auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 2px 10px #cccccc;
        }

        h2 {
            text-align: center;
        }

        .row {
            margin: 20px 0;
        }

        .row label {
            display: inline-block;
            width: 180px;
            font-weight: bold;
        }

        .input {
            width: 250px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .btn {
            background-color: #337ab7;
            color: white;
            padding: 12px 30px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <div class="header">
        <h1>RAILWAY RESERVATION SYSTEM</h1>
    </div>

    <div class="box">

        <h2>Ticket Reservation</h2>

        <div class="row">
            <label>Train Name:</label>

            <asp:DropDownList ID="ddlTrain"
                runat="server"
                CssClass="input">

                <asp:ListItem>Select Train</asp:ListItem>
                <asp:ListItem>Cholan Express</asp:ListItem>
                <asp:ListItem>Rockfort Express</asp:ListItem>
                <asp:ListItem>Pandian Express</asp:ListItem>

            </asp:DropDownList>
        </div>

        <div class="row">
            <label>From Station:</label>

            <asp:DropDownList ID="ddlFrom"
                runat="server"
                CssClass="input">

                <asp:ListItem>Select Station</asp:ListItem>
                <asp:ListItem>Trichy</asp:ListItem>
                <asp:ListItem>Chennai</asp:ListItem>
                <asp:ListItem>Madurai</asp:ListItem>
                <asp:ListItem>Coimbatore</asp:ListItem>

            </asp:DropDownList>
        </div>

        <div class="row">
            <label>To Station:</label>

            <asp:DropDownList ID="ddlTo"
                runat="server"
                CssClass="input">

                <asp:ListItem>Select Station</asp:ListItem>
                <asp:ListItem>Chennai</asp:ListItem>
                <asp:ListItem>Trichy</asp:ListItem>
                <asp:ListItem>Madurai</asp:ListItem>
                <asp:ListItem>Coimbatore</asp:ListItem>

            </asp:DropDownList>
        </div>

        <div class="row">
            <label>Journey Date:</label>

            <asp:TextBox ID="txtDate"
                runat="server"
                TextMode="Date"
                CssClass="input">
            </asp:TextBox>
        </div>

        <div class="row">
            <label>Number of Seats:</label>

            <asp:DropDownList ID="ddlSeats"
                runat="server"
                CssClass="input">

                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>

            </asp:DropDownList>
        </div>

        <div class="row" style="text-align:center;">

            <asp:Button ID="btnContinue"
                runat="server"
                Text="Continue"
                CssClass="btn" 
                OnClick="btnContinue_Click" />

        </div>

    </div>

</form>

</body>
</html>