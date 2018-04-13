using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RubyLocke_Unit03
{
    public partial class confirm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //Session["SalesPrice"] = tbSalesPrice.Text;
            //Session["DiscountAmt"] = lblOutDiscAmt.Text;
            //Session["TotalPrice"] = lblOutPrice.Text;


            Page previousPage = this.Page.PreviousPage;
            
            if (previousPage != null)
            {
                TextBox tbSalesPrice = (TextBox)PreviousPage.FindControl("tbSalesPrice");
                lblOutSalesPrice.Text = tbSalesPrice.Text;
                // if (tbSalesPrice.Text != null)
                //{
                //  lblOutSalesPrice.Text = tbSalesPrice.Text;
                // }

                Label lblOutDiscAmt = (Label)PreviousPage.FindControl("lblOutDiscAmt");
                //if (lblOutDiscAmt.Text !=null)
                if (lblOutDiscAmt.Text != "")
                {
                    lblOutDiscAmt1.Text = lblOutDiscAmt.Text;
                }
                // Label lblTotalPrice = (Label)PreviousPage.FindControl("lblOutPrice");
                Label lblOutPrice = (Label)PreviousPage.FindControl("lblOutPrice");
                lblOutPrice1.Text = lblOutPrice.Text;
                // if (lblOutPrice1.Text != null)
                //if (lblOutPrice1.Text != "")
                //{
                //    lblOutPrice1.Text = lblTotalPrice.Text;
                //}
            }
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {

        }
    }
}