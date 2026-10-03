<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Passenger.aspx.cs"
    Inherits="TRAIN_RESERVATION.Passenger" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Passenger Details</title>

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

        <h2>Passenger Details</h2>

        <div class="row">
            <label>Passenger Name:</label>

            <asp:TextBox ID="txtName"
                runat="server"
                CssClass="input">
            </asp:TextBox>
        </div>

        <div class="row">
            <label>Age:</label>

            <asp:TextBox ID="txtAge"
                runat="server"
                CssClass="input">
            </asp:TextBox>
        </div>

        <div class="row">
            <label>Gender:</label>

            <asp:DropDownList ID="ddlGender"
                runat="server"
                CssClass="input">

                <asp:ListItem>Select Gender</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>

            </asp:DropDownList>
        </div>

        <div class="row">
            <label>Phone Number:</label>

            <asp:TextBox ID="txtPhone"
                runat="server"
                CssClass="input">
            </asp:TextBox>
        </div>

        <div class="row" style="text-align:center;">

            <asp:Button ID="btnConfirm"
                runat="server"
                Text="Confirm Booking"
                CssClass="btn"
                OnClick="btnConfirm_Click" />

        </div>

    </div>

</form>

</body>
</html>