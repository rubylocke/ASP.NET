using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RubyLocke_Unit06_2
{
    public partial class confirm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Reservation resv = (Reservation)HttpContext.Current.Session["Reservation"];
            lblFirstName.Text = resv.FirstName;
            lblLastName.Text = resv.LastName;
            lblEmailAddress.Text = resv.Email;
            lblPhone.Text = resv.Phone;
            lblPreferredMethod.Text = resv.PreferredMethod;
            lblArrivalDate.Text = resv.ArrivalDate.ToShortDateString();
            lblDepartureDate.Text = resv.DepartureDate.ToShortDateString();
            lblNoOfDays.Text = resv.NoOfDays.ToString();
            lblNoOfPeople.Text = resv.NoOfPeople.ToString();
            lblBedType.Text = resv.BedType;
            lblSpecialRequests.Text = resv.SpecialRequests;

            if (!IsPostBack)
            {
                resv = new Reservation();
            }
        }

        protected void btnConfirmSubmit_Click(object sender, EventArgs e)
        {
            // First Name cookie
            HttpCookie nameCookie = new HttpCookie("NameCookie");
            nameCookie.Value = lblFirstName.Text;
            nameCookie.Expires = DateTime.Now.AddMonths(6);
            Response.Cookies.Add(nameCookie);

            // Email Cookie
            HttpCookie emailCookie = new HttpCookie("EmailCookie");
            emailCookie.Value = lblEmailAddress.Text;
            emailCookie.Expires = DateTime.Now.AddMonths(6);
            Response.Cookies.Add(emailCookie);

            lblThankYou.Text = "Thank you for your request";
            lbl24Hours.Text = "We will get back to you within 24 hours";
        }

        protected void btnModifyRequest_Click(object sender, EventArgs e)
        {
        }
    }
}