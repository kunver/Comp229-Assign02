using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign02
{

    public partial class Contact : Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //Changes title
            Title = "Survey Page";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string improveout = null;
            //for each checkbox if its checked add the value to the ongoing string
            for (int i = 0; i < 4; i++)
            {
                if (Improvement.Items[i].Selected == true)
                {

                    if (improveout == null)
                    {
                        improveout = Improvement.Items[i].Value;
                    }
                    else
                    {
                        improveout = improveout + ", " + Improvement.Items[i].Value;
                    }
                        
                }
            }
            //adds variables to the session scope
            Session["Name"] = Namebox.Text;
            Session["Email"] = EmailBox.Text;
            Session["Satisfied"] = satisfied.SelectedValue;            
            Session["Other"] = OtherInfo.Text;
            Session["Improve"] = improveout;
            Session["improveCom"] = Improvbox.Text;

            //redirects to thank you page
            Response.Redirect("~/Thank You.aspx");
        }


        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            

            //if other is selected displays the box 
            if (Improvement.Items[4].Selected == true)
            {
                Improvbox.Visible = true;
            }
            //if other is not selected hides the box 
            else
            {
                Improvbox.Visible = false;
            }



        }


    }
}
