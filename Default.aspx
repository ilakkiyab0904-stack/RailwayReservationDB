<%@ Page Title="Railway Reservation" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TRAIN_RESERVATION._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .railway-home {
            text-align: center;
            padding: 60px 20px;
            background: #f4f6f8;
            min-height: 500px;
        }

        .railway-home h1 {
            font-size: 42px;
            font-weight: bold;
            margin-bottom: 15px;
        }

        .railway-home p {
            font-size: 20px;
            margin-bottom: 35px;
        }

        .menu-box {
            display: flex;
            justify-content: center;
            gap: 20px;
            flex-wrap: wrap;
        }

        .menu-button {
            display: inline-block;
            padding: 15px 30px;
            background: #337ab7;
            color: white !important;
            text-decoration: none;
            border-radius: 6px;
            font-size: 17px;
        }

        .menu-button:hover {
            background: #23527c;
            text-decoration: none;
        }

        .info-box {
            margin: 40px auto 0;
            max-width: 800px;
            padding: 25px;
            background: white;
            border-radius: 8px;
        }
    </style>

    <div class="railway-home">

        <h1>RAILWAY RESERVATION SYSTEM</h1>

        <p>
            Welcome to Railway Reservation System
        </p>

        <div class="menu-box">

            <a href="Default.aspx" class="menu-button">
                Home
            </a>

            <a href="SearchTrain.aspx" class="menu-button">
                Search Train
            </a>

            <a href="Reservation.aspx" class="menu-button">
                Reservation
            </a>

            <a href="MyBooking.aspx" class="menu-button">
                My Booking
            </a>

        </div>

        <div class="info-box">

            <h2>Book Your Train Ticket Easily</h2>

            <p>
                Search available trains, select your journey,
                enter passenger details and reserve your ticket.
            </p>

        </div>

    </div>

</asp:Content>