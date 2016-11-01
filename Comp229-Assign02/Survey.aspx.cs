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
   
            // from here
            System.Configuration.Configuration saveddata = null;
            if (System.Web.HttpContext.Current != null)
            {
                saveddata =
                    System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("~");
            }
            else
            {
                saveddata =
                    ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);
            }
            // to here i need permission before handing in !
            saveddata.AppSettings.Settings.Add("name", Namebox.Text);
            saveddata.AppSettings.Settings.Add("email", EmailBox.Text);
            saveddata.AppSettings.Settings.Add("satisfied", satisfied.SelectedValue);
            saveddata.AppSettings.Settings.Add("dissatisfied", Disatisfiedbox.Text);
            saveddata.AppSettings.Settings.Add("other", OtherInfo.Text);
          

            saveddata.Save(ConfigurationSaveMode.Modified);
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