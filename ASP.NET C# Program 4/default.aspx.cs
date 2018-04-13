using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RubyLocke_Unit04
{
    public partial class _default : System.Web.UI.Page
    {
        String startDate = DateTime.Now.ToShortDateString();
        int numOfPeople = 1;

        protected void Page_Load(object sender, EventArgs e)
        {
            tbArrivalDate.Text = startDate.ToString();
            ddlNoOfPeople.Text = "";
            rbKing.Checked = true;
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            tbArrivalDate.Text = startDate.ToString();
            tbDepartDate.Text = "";
            ddlNoOfPeople.Text = numOfPeople.ToString();
            tbSpecialRequests.Text = "";
            tbFirstName.Text = "";
            tbLastName.Text = "";

            lblThankYou.Text = "";
            lbl24Hours.Text = "";
            rbKing.Checked = true;
            rbTwoQueens.Checked = false;
            rbOneQueen.Checked = false;
            ddlPreferredMethod.SelectedValue = "Email";
            email.Value = "";
            telNo.Value = "";
         }

         protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Validate form
            if(IsValid)
            {
                lblThankYou.Text = "Thank you for your request";
                lbl24Hours.Text = "We will get back to you within 24 hours";
            }
         }
    }
}