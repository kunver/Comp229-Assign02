<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="True" CodeBehind="Thank You.aspx.cs" Inherits="Comp229_Assign02.About" %>







<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Thank You!</h3>
    <p>What you have submitted to us</p>
    <asp:ListBox ID="ListBox1" runat="server" OnSelectedIndexChanged="Page_Load" Height="100px" Width="400px"></asp:ListBox>
    
    <p>Your feedback is much appriciated for our development team.</p>
    <p>

        <asp:Button ID="ReturnBtn" runat="server" OnClick="Button1_Click1" Text="Return to Home" />
</asp:Content>
