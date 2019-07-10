<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="QRCodeApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>QRCode App</h1>
        <p class="lead">QRCode App is developed using ASP.NET - a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-8">
            <h2>Getting started</h2>
            <p>
                Step 1 : Click "QRCode Generate" button from top menu. <br />
                Step 2 : Keyin text/numeric data/web URL in the textbox.<br />
                Step 3 : Click "generate" will generate the QRCode for the keyedin data in textbox.<br />
                Step 4 : Use your mobile phone camera to scan the QRCode and view data.
                
            </p>
            <p>
                <b>Hope this helps you!!!</b>
            </p>
        </div>
        
    </div>

</asp:Content>
