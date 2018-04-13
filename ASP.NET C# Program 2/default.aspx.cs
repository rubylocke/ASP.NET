using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RubyLocke_Unit02
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            // Declare variables to hold values
            double salesPrice;    // to hold the sales price

            double discountPercent;   // to hold the sales percent discount
            double discountAmt;     // to hold the discount amount sales price - discount
            double totalPrice;      // to hold the total Price after discount applied

            // Retrieve contents of form and convert into variables
            salesPrice = double.Parse(tbSalesPrice.Text);
            discountPercent = double.Parse(tbDiscPercent.Text);

            discountAmt = salesPrice * (discountPercent * 0.01);

            totalPrice = salesPrice - discountAmt;
            lblOutDiscAmt.Text = discountAmt.ToString("c2");
            lblOutPrice.Text = totalPrice.ToString("c2");

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            tbSalesPrice.Text = "";
            tbDiscPercent.Text = "";
            lblOutDiscAmt.Text = "";
            lblOutPrice.Text = "";
        }

    }
}