using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RubyLocke_Unit06_2
{
    public partial class Site : System.Web.UI.MasterPage
    {
        public string PageH1Text
        {
            set { lblH1.Text = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (lblfooter != null)
            {
                lblfooter.Text = "&copy; 2014, Royal Inns and Suites";
            }
            
        }
    }
}