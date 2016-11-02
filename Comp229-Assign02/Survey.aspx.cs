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
            Title = "Survey Page";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            Session["Name"] = Namebox.Text;
            Session["Email"] = EmailBox.Text;
            Session["Satisfied"] = satisfied.SelectedValue;
            Session["Improve"] = Improvement.SelectedValue;

            Session["Other"] = OtherInfo.Text;
            
            Response.Redirect("~/Thank You.aspx");
        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //if other is selected displays the box and label
            if (Improvement.SelectedValue == "Other")
            {
                Improvlbl.Style.Add("display", "all");
                Improvlbl.Style.Add("display", "all");

            }
            //if other is not selected hides the box and label
            else
            {
                Improvlbl.Style.Add("display", "none");
                Improvlbl.Style.Add("display", "all");
            }
        }

       
    }
}