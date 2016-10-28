using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign02
{

    public partial class Contact : Page
    {
       

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Thank You.aspx");
        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //if other is selected displays the box and label
            if (Improvement.SelectedValue == "Other")
            {
                Improvlbl.Style.Add("display", "all");
                ImprovBox.Style.Add("display", "all");

            }
            //if other is not selected hides the box and label
            else
            {
                Improvlbl.Style.Add("display", "none");
                ImprovBox.Style.Add("display", "none");
            }
        }

        protected void satisfied_SelectedIndexChanged(object sender, EventArgs e)
        {
            //if other is selected displays the box and label
            if (satisfied.SelectedIndex == 4)
            {           
                Disatisfiedlbl.Style.Add("display", "all");
                Disatisfiedbox.Style.Add("display", "all");

            }
            //if other is not selected hides the box and label
            else
            {
                Disatisfiedlbl.Style.Add("display", "none");
                Disatisfiedbox.Style.Add("display", "none");
            }
        }

       
    }
}