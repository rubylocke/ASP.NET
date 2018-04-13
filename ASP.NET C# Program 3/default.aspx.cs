/**
 * Ruby-Anne Locke
 *  Operating System: Windows 10
 * Microsoft Visual Studio Version 2015
 * CIS 174
 * Unit 3 Price Quotation
 * Program Description: Take a sale price and a discount amount and 
 *    calculate the amount of the discount and total net sale
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

namespace RubyLocke_Unit03
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (tbSalesPrice.Text.Equals(""))
            {
                tbSalesPrice.Text = (String)Session["SalesPrice"];
            }
            lblOutDiscAmt.Text = (String)Session["DiscountAmt"];
            lblOutPrice.Text = (String)Session["TotalPrice"];

            Boolean calcHit = ((string.Compare(lblOutDiscAmt.Text, "") == 0) || (string.Compare(lblOutPrice.Text, "") == 0));
            Session["CalcHit"] = calcHit;
        }


        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            // Declare variables to hold values
            double salesPrice;    // to hold the sales price

            double discountPercent;   // to hold the sales percent discount
            double discountAmt;     // to hold the discount amount sales price - discount
            double totalPrice;      // to hold the total Price after discount applied

            // Retrieve contents of form and convert into variables
            if (IsValid)
            {
                salesPrice = double.Parse(tbSalesPrice.Text);
                discountPercent = double.Parse(tbDiscPercent.Text);

                discountAmt = salesPrice * (discountPercent * 0.01);

                totalPrice = salesPrice - discountAmt;
                lblOutDiscAmt.Text = discountAmt.ToString("c2");
                lblOutPrice.Text = totalPrice.ToString("c2");

                Session["SalesPrice"] = tbSalesPrice.Text;
                Session["DiscountAmt"] = lblOutDiscAmt.Text;
                Session["TotalPrice"] = lblOutPrice.Text;
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            tbSalesPrice.Text = "";
            tbDiscPercent.Text = "";
            lblOutDiscAmt.Text = "";
            lblOutPrice.Text = "";
            Session["SalesPrice"] = null;
            Session["DiscountAmt"] = null;
            Session["TotalPrice"] = null;
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            //if ((Session["SalesPrice"] != null) || (Session["DiscountAmt"] != null) || (Session["TotalPrice"] != null))
            //{
            //   Response.Redirect("~/confirm.aspx");
            //}
            //else
            //{
            //    lblCalculate.Text = "Hit the Calculate button before you confirm";
            //}
            // if ((Session["SalesPrice"] == null) || (Session["DiscountAmt"] == null) || (Session["TotalPrice"] == null))
            // if (lblSalesPrice.Text == "" || lblOutDiscAmt.Text = "" || lblOutPrice.Text = "")
            Boolean canConfirm = bool.Parse(Session["CalcHit"].ToString());
            if (canConfirm)
            {
                lblCalculate.Text = "Hit the Calculate button before you confirm";
            }
            else
            {
                // Response.Redirect("~/confirm.aspx");
                Server.Transfer("Confirm.aspx");
              
            }
        }

        protected void tbSalesPrice_TextChanged(object sender, EventArgs e)
        {
            Session["SalesPrice"] = null;
            Session["DiscountAmt"] = null;
            Session["TotalPrice"] = null;
        }

        protected void tbDiscPercent_TextChanged(object sender, EventArgs e)
        {
            Session["SalesPrice"] = null;
            Session["DiscountAmt"] = null;
            Session["TotalPrice"] = null;
        }        
    }
}
