<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="SearchTrain.aspx.cs"
    Inherits="TRAIN_RESERVATION.SearchTrain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Search Train</title>

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

        .container {
            width: 80%;
            margin: 40px auto;
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 2px 10px #cccccc;
        }

        h2 {
            text-align: center;
            color: #333333;
        }

        .form-row {
            margin: 20px 0;
        }

        .form-row label {
            display: inline-block;
            width: 150px;
            font-weight: bold;
        }

        .form-control {
            width: 250px;
            padding: 10px;
            border: 1px solid #cccccc;
            border-radius: 5px;
        }

        .search-button {
            background-color: #337ab7;
            color: white;
            padding: 12px 30px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .search-button:hover {
            background-color: #23527c;
        }

        .result {
            margin-top: 30px;
        }

    </style>

</head>

<body>

<form id="form1" runat="server">

    <div class="header">
        <h1>RAILWAY RESERVATION SYSTEM</h1>
    </div>

    <div class="container">

        <h2>Search Train</h2>

        <div class="form-row">

            <label>From Station:</label>

            <asp:DropDownList ID="ddlFrom"
                runat="server"
                CssClass="form-control">

                <asp:ListItem>Select Station</asp:ListItem>
                <asp:ListItem>Trichy</asp:ListItem>
                <asp:ListItem>Chennai</asp:ListItem>
                <asp:ListItem>Madurai</asp:ListItem>
                <asp:ListItem>Coimbatore</asp:ListItem>
                <asp:ListItem>Bangalore</asp:ListItem>

            </asp:DropDownList>

        </div>


        <div class="form-row">

            <label>To Station:</label>

            <asp:DropDownList ID="ddlTo"
                runat="server"
                CssClass="form-control">

                <asp:ListItem>Select Station</asp:ListItem>
                <asp:ListItem>Trichy</asp:ListItem>
                <asp:ListItem>Chennai</asp:ListItem>
                <asp:ListItem>Madurai</asp:ListItem>
                <asp:ListItem>Coimbatore</asp:ListItem>
                <asp:ListItem>Bangalore</asp:ListItem>

            </asp:DropDownList>

        </div>


        <div class="form-row">

            <label>Journey Date:</label>

            <asp:TextBox ID="txtDate"
                runat="server"
                TextMode="Date"
                CssClass="form-control">
            </asp:TextBox>

        </div>


        <div class="form-row">

            <asp:Button ID="btnSearch"
                runat="server"
                Text="Search Train"
                CssClass="search-button"
                OnClick="btnSearch_Click" />

        </div>


        <div class="result">

            <asp:GridView ID="gvTrains"
                runat="server"
                AutoGenerateColumns="true"
                Width="100%">
            </asp:GridView>

        </div>

    </div>

</form>

</body>

</html>