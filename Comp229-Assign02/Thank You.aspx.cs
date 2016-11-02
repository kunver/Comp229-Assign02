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
            Title = "Thank You";

            string name = Session["Name"].ToString();
            string email = Session["Email"].ToString();
            string satisfied = Session["Satisfied"].ToString();
            string other = Session["Other"].ToString();
            
    
            ListBox1.Items.Add(name);
            ListBox1.Items.Add(email);
            ListBox1.Items.Add(satisfied);           
            ListBox1.Items.Add(other);
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //keep this here till i find out where he wants me to redirect too
            Response.Redirect("~/Amazun.aspx");
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ListBox1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
          
            Session.Abandon();
            Response.Redirect("~/Amazun.aspx");
        }
    }
}