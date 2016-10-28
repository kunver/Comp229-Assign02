<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Survey.aspx.cs" Inherits="Comp229_Assign02.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Survey</h3>
    <div>
        <div>
            <p>What is your first name?</p>
            <p><asp:TextBox ID="Namebox" runat="server" placeholder="Robert"></asp:TextBox></p>
            <p>What is your Email address?</p>
           <p><asp:TextBox ID="Email" runat="server" placeholder="Example@example.com"></asp:TextBox></p>
           
             <asp:RegularExpressionValidator ID="emailvalid" runat="server" 
               ControlToValidate="Email" ErrorMessage="Enter a valid email" 
               ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">

            </asp:RegularExpressionValidator>
  
         <p>How satisfied are you?</p>
        <br />
        <asp:RadioButtonList ID="satisfied" runat="server">
            <asp:ListItem>Very Satisfied</asp:ListItem>
            <asp:ListItem>Satisfied</asp:ListItem>
            <asp:ListItem>Not satisfied, Nor Dissatisfied</asp:ListItem>
            <asp:ListItem>Dissatified</asp:ListItem>
            <asp:ListItem>Very Dissatified</asp:ListItem>
        </asp:RadioButtonList>

            <asp:RequiredFieldValidator ID="radioreq" runat="server" 
               ControlToValidate="satisfied" ErrorMessage="Please enter your level of satisfaction" >
            </asp:RequiredFieldValidator>

            <br />
             <p>What do you think we need to improve?</p>
            <asp:CheckBoxList ID="Improvement" runat="server" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                <asp:ListItem>Page Content</asp:ListItem>
                <asp:ListItem>Page Layout</asp:ListItem>
                <asp:ListItem>Responsiveness</asp:ListItem>
                <asp:ListItem>Nebraska</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:CheckBoxList>



            <br />
            Please let us know anything you do not like about our product. <br />
            <asp:TextBox ID="OtherInfo" runat="server" Height="100px" Width="529px" placeholder="Max, 100 Characters"></asp:TextBox>
            <asp:RangeValidator ID="maxinfo" runat="server" ControlToValidate="OtherInfo" 
               ErrorMessage="Please keep it under 100 characters" MinimumValue="0" MaximumValue="100" Type="Integer">
            </asp:RangeValidator>
              </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
       



    </div>

</asp:Content>
