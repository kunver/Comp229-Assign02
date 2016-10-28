<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_Assign02._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Amazun</h1>
        <p class="lead">Amazun is a website devoted to maintaining customer satisfation through providing high quality web pages for its users.</p>
       
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Take our Survey</h2>
               <p>
                   By participating in our survey, you will help us improve our pages when we develop later iterations of them!
               </p>   
                <p>
                    <a class="btn btn-primary btn-lg" href="Survey.aspx">Take Survey</a>
                </p>         
        </div>
         </div>
    <div>
        insert privacy and disclaimers here
    </div>

</asp:Content>
