<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Survey.aspx.cs" Inherits="Comp229_Assign02.Contact" %>
<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     
        <div>
            <h4>Please enter your Name</h4>
            <p><asp:TextBox ID="Namebox" runat="server" placeholder="Robert"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" style="color:Red;"
               ControlToValidate="Namebox" ErrorMessage="Please enter your name" >
            </asp:RequiredFieldValidator>
            </p>
            <h4>Please enter your Email</h4>
           <p><asp:TextBox ID="Email" runat="server" placeholder="Example@example.com"></asp:TextBox>
           
             <asp:RegularExpressionValidator ID="emailvalid" runat="server" 
               ControlToValidate="Email" ErrorMessage="Enter a valid email" style="color:Red;"
               ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">

            </asp:RegularExpressionValidator></p>
  </div>
        <div>
         <h4>How satisfied are you?</h4>
        <br />
        <asp:RadioButtonList ID="satisfied" runat="server" OnSelectedIndexChanged="satisfied_SelectedIndexChanged">
            <asp:ListItem>Very Satisfied</asp:ListItem>
            <asp:ListItem>Satisfied</asp:ListItem>
            <asp:ListItem>Not satisfied, Nor Dissatisfied</asp:ListItem>
            <asp:ListItem>Dissatified</asp:ListItem>
            <asp:ListItem>Very Dissatified</asp:ListItem>
        </asp:RadioButtonList>

            <asp:RequiredFieldValidator ID="radioreq" runat="server" style="color:Red;"
               ControlToValidate="satisfied" ErrorMessage="Please enter your level of satisfaction" >
            </asp:RequiredFieldValidator>

            <br />

            <asp:Label ID="Disatisfiedlbl" runat="server" ForeColor="Red"  Text="Please Explain why you are so disatisfied" Style="display: none" ></asp:Label>
            <br />
            <asp:TextBox ID="Disatisfiedbox" runat="server" Height="34px" TextMode="MultiLine" Style="display: none"  Width="269px"></asp:TextBox>

            <br />
             <h4>What do you think we need to improve?</h4>
            <asp:CheckBoxList ID="Improvement" runat="server" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                <asp:ListItem>Page Content</asp:ListItem>
                <asp:ListItem>Page Layout</asp:ListItem>
                <asp:ListItem>Responsiveness</asp:ListItem>
                <asp:ListItem>Nebraska</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:CheckBoxList>
            <asp:Label ID="Improvlbl" runat="server" ForeColor="Red" Text="Please Explain what else needs fixing." Style="display: none"></asp:Label>
            <br />
            <asp:TextBox ID="ImprovBox" runat="server" Height="34px" TextMode="MultiLine" Width="269px" Style="display: none"></asp:TextBox>



            <br />
            <h4>Please let us know anything you do not like about our product. </h4>
            <br />
            <asp:TextBox ID="OtherInfo" runat="server" Height="100px" Width="529px" placeholder="Max, 100 Characters" MaxLength="100" TextMode="MultiLine"></asp:TextBox>
              </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
       



 

</asp:Content>
