<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Survey.aspx.cs" Inherits="Comp229_Assign02.Contact" %>
<%@ MasterType VirtualPath="~/Site.Master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <h3>Survey</h3>
    <div>
        <div>
            <p><asp:TextBox ID="Namebox" runat="server" placeholder="Name"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="namerequired" runat="server" style="color:Red;"
               ControlToValidate="Namebox" ErrorMessage="Please enter your name" >
            </asp:RequiredFieldValidator>
           <p><asp:TextBox ID="EmailBox" runat="server" placeholder="Example@example.com"></asp:TextBox>
           
             <asp:RegularExpressionValidator ID="emailrequired" runat="server" 
               ControlToValidate="EmailBox" ErrorMessage="Enter a valid email" style="color:Red;"
               ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
            </asp:RegularExpressionValidator></p>
  
         <h4>How satisfied are you?</h4>
        <asp:RadioButtonList ID="satisfied" runat="server" >
            <asp:ListItem>Very Satisfied</asp:ListItem>
            <asp:ListItem>Satisfied</asp:ListItem>
            <asp:ListItem>Not satisfied, Nor Dissatisfied</asp:ListItem>
            <asp:ListItem>Dissatified</asp:ListItem>
            <asp:ListItem>Very Dissatified</asp:ListItem>
        </asp:RadioButtonList>
             <asp:RequiredFieldValidator ID="radiorequired" runat="server" style="color:Red;"
               ControlToValidate="satisfied" ErrorMessage="Please enter your ssatisfaction" >
            </asp:RequiredFieldValidator>
           
            </div>
            
             <h4>What do you think we need to improve?</h4>
            <asp:CheckBoxList ID="Improvement" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" >
                <asp:ListItem>Page Content</asp:ListItem>
                <asp:ListItem>Page Layout</asp:ListItem>
                <asp:ListItem>Responsiveness</asp:ListItem>
                <asp:ListItem>Nebraska</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:CheckBoxList>
            
            <div>  
            <asp:TextBox ID="Improvbox" runat="server" Height="34px" TextMode="MultiLine"
                placeholder="Please explain what else." visible="false" Width="529px"></asp:TextBox>
                <br/>
            <br/>
       
                
                     <asp:TextBox ID="OtherInfo" runat="server" Height="100px" Width="529px" placeholder="Any other comments/ concerns? " MaxLength="100" TextMode="MultiLine" AutoPostBack="True"></asp:TextBox>
              </div>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
       



    </div>

</asp:Content>
