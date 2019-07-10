<%@ Page Title="Generate QRCode" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmQRcodeGenerate.aspx.cs" Inherits="QRCodeApp.frmQRcodeGenerate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="row">
        <div class="col-md-8">
            <h2>Generate QRCode</h2>

            <asp:TextBox ID="txtCode" Width="400px" runat="server"></asp:TextBox>
            <br />
            <br />

            <asp:Button ID="btnGenQR" runat="server" Text="Generate QR" OnClick="btnGenQR_Click" />
            <br />
            <br />
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
        </div>
    </div>
</asp:Content>
