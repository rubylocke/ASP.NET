using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RubyLocke_Unit09
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        // Update database 
        protected void ObjectDataSource1_Updated(
        object sender, ObjectDataSourceStatusEventArgs e)
        {
            e.AffectedRows = Convert.ToInt32(e.ReturnValue);
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

        protected void ObjectDataSource1_Deleted(
            object sender, ObjectDataSourceStatusEventArgs e)
        {
            e.AffectedRows = Convert.ToInt32(e.ReturnValue);
        }

        protected void GridView1_RowDeleted(
            object sender, GridViewDeletedEventArgs e)
        {
            if (e.Exception != null)
            {
                lblError.Text = "A database error has occurred.<br /><br />" +
                    e.Exception.Message;
                if (e.Exception.InnerException != null)
                    lblError.Text += "<br />Message: "
                        + e.Exception.InnerException.Message;
                e.ExceptionHandled = true;
            }
            else if (e.AffectedRows == 0)
                lblError.Text = "Another user may have updated that category. "
                    + "<br />Please try again.";
        }

        protected void DetailsView1_ItemInserted(
            object sender, DetailsViewInsertedEventArgs e)
        {
            if (e.Exception != null)
            {
                lblError.Text = "A database error has occurred.<br /><br />" +
                    e.Exception.Message;
                if (e.Exception.InnerException != null)
                    lblError.Text += "<br />Message: "
                        + e.Exception.InnerException.Message;
                e.ExceptionHandled = true;
            }
        }
    }
}