using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign02
{
    public partial class About : Page
    {
   

        protected void Page_Load(object sender, EventArgs e)
        {
            //changes title
            Title = "Thank You";

            //loads session variables to local variables
            string name = Session["Name"].ToString();
            string email = Session["Email"].ToString();
            string satisfied = Session["Satisfied"].ToString();
            string other = Session["Other"].ToString();           
            string comments = Session["improveCom"].ToString();

            //populates the listbox
            ListBox1.Items.Add(name);
            ListBox1.Items.Add(email);
            ListBox1.Items.Add(satisfied);
            //if the session variable is there import it and put it in
            if (Session["Improve"] != null)
            {
                string improvement = Session["Improve"].ToString();
                ListBox1.Items.Add(improvement);
            }         
            //if the length of comments is geater than zero add comments to the list
            if (comments.Length != 0)
            { 
                ListBox1.Items.Add(comments);
            }
            ListBox1.Items.Add(other);
        }




        protected void Button1_Click1(object sender, EventArgs e)
        {
          //Clears the session and redirects to the home page
            Session.Abandon();
            Response.Redirect("~/Amazun.aspx");
        }
    }
}