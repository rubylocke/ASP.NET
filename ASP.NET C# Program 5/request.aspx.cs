/**
 * Ruby-Anne Locke
 *  Operating System: Windows 10
 * Microsoft Visual Studio Version 2015
 * CIS 174
 * Unit 5 Confirmation
 * Program Description: Take confirmation from an user 
 *    Ask user to confirm reseration on second page
 *    
 * 
 Academic Honesty:
   I attest that this is my original work.
   I have not used unauthorized source code, either modified or unmodified.
   I have not given other fellow student(s) access to my program.

 * **/
using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RubyLocke_Unit05
{
    public partial class _default : System.Web.UI.Page
    {
        String startDate = DateTime.Now.ToShortDateString();
        int numOfPeople = 1;
        Reservation resv = new Reservation();

        protected void Page_Load(object sender, EventArgs e)
        {
           

            if (!IsPostBack)
            {
                tbArrivalDate.Text = startDate.ToString();
                tbDepartDate.Text = "";
                ddlNoOfPeople.Text = numOfPeople.ToString();
                tbSpecialRequests.Text = "";
                tbFirstName.Text = "";
                tbLastName.Text = "";

                rbKing.Checked = true;
                rbTwoQueens.Checked = false;
                rbOneQueen.Checked = false;
                ddlPreferredMethod.SelectedValue = "Email";
                email1.Value = "";
                telNo.Value = "";

                if ((Request.Cookies["NameCookie"] != null))
                {
                    lblName.Text = "Welcome Back " + Request.Cookies["NameCookie"].Value + " " + Request.Cookies["EmailCookie"].Value + ".";
                }
            }

            if (Session["Reservation"] != null)
            {
                resv = (Reservation)HttpContext.Current.Session["Reservation"];
                tbArrivalDate.Text = resv.ArrivalDate.ToShortDateString();
                tbDepartDate.Text = resv.DepartureDate.ToString("yyyy-MM-dd");
                ddlNoOfPeople.Text = Convert.ToString(resv.NoOfPeople);

                tbSpecialRequests.Text = resv.SpecialRequests;
                tbFirstName.Text = resv.FirstName;
                tbLastName.Text = resv.LastName;
                email1.Value = resv.Email;
                telNo.Value = resv.Phone;
                ddlPreferredMethod.SelectedValue = resv.PreferredMethod;

                if (resv.BedType == "One Queen")
                {
                    rbOneQueen.Checked = true;
                }
                else if (resv.BedType == "Two Queens")
                {
                    rbTwoQueens.Checked = true;
                }
                else
                {
                    rbKing.Checked = true;
                }
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            tbArrivalDate.Text = startDate.ToString();
            tbDepartDate.Text = "";
            ddlNoOfPeople.Text = numOfPeople.ToString();
            tbSpecialRequests.Text = "";
            tbFirstName.Text = "";
            tbLastName.Text = "";

            rbKing.Checked = true;
            rbTwoQueens.Checked = false;
            rbOneQueen.Checked = false;
            ddlPreferredMethod.SelectedValue = "Email";
            email1.Value = "";
            telNo.Value = "";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Validate form
            if (IsValid)
            {
                resv.ArrivalDate = DateTime.Parse(tbArrivalDate.Text);
                if (tbDepartDate.Text == "")
                {
                    // add one day as that is the minimun 
                    resv.DepartureDate.AddDays(1);
                    
                }
                else
                {
                    resv.DepartureDate = DateTime.Parse(tbDepartDate.Text);
                }

                //int x = 0;
                //int.TryParse(ddlNoOfPeople.ToString(), out x);
                resv.NoOfPeople = int.Parse(ddlNoOfPeople.SelectedValue);
                
                if (rbKing.Checked)
                {
                    resv.BedType = rbKing.Text;
                }
                else if (rbTwoQueens.Checked)
                {
                    resv.BedType = rbTwoQueens.Text;
                }
                else if (rbOneQueen.Checked)
                {
                    resv.BedType = rbOneQueen.Text;
                }

                resv.SpecialRequests = tbSpecialRequests.Text;
                resv.FirstName = tbFirstName.Text;
                resv.LastName = tbLastName.Text;
                resv.Email = email1.Value;
                resv.Phone = telNo.Value;
                resv.PreferredMethod = ddlPreferredMethod.SelectedValue.ToString();
                TimeSpan tsDays = resv.DepartureDate - resv.ArrivalDate;
                int days = tsDays.Days;
                resv.NoOfDays = days;

                Session["Reservation"] = resv;
                Response.Redirect("~/confirm.aspx");
            }
        }

    }
}