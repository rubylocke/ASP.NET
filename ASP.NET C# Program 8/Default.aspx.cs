/**
 * Ruby-Anne Locke
 *  Operating System: Windows 10
 * Microsoft Visual Studio Version 2015
 * CIS 174
 * Unit 8 Gridview
 * Program Description: Use a Gridview
 *    
 * 
 Academic Honesty:
   I attest that this is my original work.
   I have not used unauthorized source code, either modified or unmodified.
   I have not given other fellow student(s) access to my program.

 * **/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RubyLocke_Unit08
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void GridView1_RowUpdated(
        Object sender, GridViewUpdatedEventArgs e)
        {
            if (e.Exception != null)
            {
                lblError.Text = "A database error has occurred.<br /><br />" +
                    e.Exception.Message;
                if (e.Exception.InnerException != null)
                    lblError.Text += "<br />Message: "
                        + e.Exception.InnerException.Message;
                e.ExceptionHandled = true;
                e.KeepInEditMode = true;
            }
            else if (e.AffectedRows == 0)
                lblError.Text = "Another user may have updated that category."
                    + "<br />Please try again.";
        }




    }
}
 