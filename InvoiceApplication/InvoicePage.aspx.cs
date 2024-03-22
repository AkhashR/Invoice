using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InvoiceApplication
{
    public partial class InvoicePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                InvDateCal.Visible = false;
            }

            InvDateTxt.Text = DateTime.Now.ToString("dd/MM/yyyy").ToString();
        }

        protected void InvDateCal_SelectionChanged(object sender, EventArgs e)
        {
            InvDateTxt.Text = InvDateCal.SelectedDate.ToString("dd/MM/yyyy");
            InvDateCal.Visible = false;
        }

        protected void InvDateCal_DayRender(object sender, DayRenderEventArgs e)
        {
            if(e.Day.IsOtherMonth)
            {
                e.Day.IsSelectable = false;
                e.Cell.BackColor=System.Drawing.Color.White;
            }
        }

        protected void InvDateImg_Click(object sender, ImageClickEventArgs e)
        {
            if(InvDateCal.Visible) 
            {
                InvDateCal.Visible = false;
            } else
            {
                InvDateCal.Visible = true;
            }
            InvDateCal.Attributes.Add("style","position:absolute");
        }
    }
}