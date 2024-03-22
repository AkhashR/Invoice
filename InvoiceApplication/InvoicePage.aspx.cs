using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


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

            InvDateText.Text = DateTime.Now.ToString("dd/MM/yyyy").ToString();
        }

        protected void InvDateCal_SelectionChanged(object sender, EventArgs e)
        {
            InvDateText.Text = InvDateCal.SelectedDate.ToString("dd/MM/yyyy");
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

        protected void InsertButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["InvoiceDb"].ConnectionString);
            {
                string InvNum = InvNumText.Text;
                string InvDate = InvDateText.Text;
                string InvType = InvTypeTxt.Text;
                string Brocker = BrockerText.Text;
                string Contract = ContractText.Text;
                string ConfoNum = ConfNumText.Text;
                string Dispatch = DispatchText.Text;
                string Vehicle = VechNumText.Text;
                string BAdd1 = BAddr1Text.Text, BAdd2 = BAddr2Text.Text;
                string BCity = BCityText.Text, BState = BStateText.Text, BPinCode = BPinCdText.Text;
                string CAdd1 = CAddr1Text.Text, CAdd2 = CAddr2Text.Text;
                string CCity = CCityText.Text, CState = CStateText.Text, CPinCode = CPinCdText.Text;
                string DescGoods1 = Dog1Text.Text, DescGoods2 = Dog2Text.Text, DescGoods3 = Dog3Text.Text, DescGoods4 = Dog4Text.Text, DescGoods5 = Dog5Text.Text;
                string HSCCode1 = Hcd1Text.Text, HSCCode2 = Hcd2Text.Text, HSCCode3 = Hcd3Text.Text, HSCCode4 = Hcd4Text.Text, HSCCode5 = Hcd5Text.Text;
                string Bag1 = Bag1Text.Text, Bag2 = Bag2Text.Text, Bag3 = Bag3Text.Text, Bag4 = Bag4Text.Text, Bag5 = Bag5Text.Text;
                string Qty1 = Qty1Text.Text, Qty2 = Qty2Text.Text, Qty3 = Qty3Text.Text, Qty4 = Qty4Text.Text, Qty5 = Qty5Text.Text;
                string Rate1 = Rate1Text.Text, Rate2 = Rate2Text.Text, Rate3 = Rate3Text.Text, Rate4 = Rate4Text.Text, Rate5 = Rate5Text.Text;
                string TotalAmnt = TotalAmntText.Text;
                SqlCommand cmd = new SqlCommand("exec Insert_InvoiceProcedure '" + InvNum + "','" + InvDate + "','" + InvType + "','" + Brocker + "', '" + Contract + "','" + ConfoNum + "','" + Dispatch + "','" + Vehicle + "','" + BAdd1 + "','" + BAdd2 + "','" + BCity + "','" + BState + "','" +
                    BPinCode + "','" + CAdd1 + "','" + CAdd2 + "','" + CCity + "','" + CState + "','" + CPinCode + "','" + DescGoods1 + "','" + DescGoods2 + "','" + DescGoods3 + "','" + DescGoods4 + "','" + DescGoods5 + "','" + HSCCode1 + "','" + HSCCode2 + "','" + HSCCode3 + "', '" +
                    HSCCode4 + "','" + HSCCode5 + "','" + Bag1 + "','" + Bag2 + "','" + Bag3 + "','" + Bag4 + "','" + Bag5 + "','" + Qty1 + "','" + Qty2 + "','" + Qty3 + "','" + Qty4 + "','" + Qty5 + "','" + Rate1 + "','" + Rate2 + "','" + Rate3 + "','" + Rate4 + "','" + Rate5 + "','" +
                    TotalAmnt + "'",con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                con.Open();
                int invoice1 = cmd.ExecuteNonQuery();
                con.Close();
                if (dt.Rows.Count > 0)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Successfully Inserted');",true);
                    InvoiceGrid.DataSource = dt;
                    InvoiceGrid.DataBind();
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Not inserted successfully');", true);
                }
            }
        }
    }
}