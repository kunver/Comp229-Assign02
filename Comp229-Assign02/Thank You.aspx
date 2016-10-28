<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Thank You.aspx.cs"  %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Thank You!</h3>
    <p>Your feedback is much appriciated for our development team.</p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="You're Welcome" />
    </p>
    <p>&nbsp;</p>
</asp:Content>
