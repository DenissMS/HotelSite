using System;
using System.Globalization;
using System.Web.UI;

namespace HotelSiteApplication
{
    public partial class Default : Page
    {
        protected void btnBookNow_Click(object sender, EventArgs e)
        {
            //if (ddlRoom.SelectedValue == "0") return;
            //Session["RoomType"] = ddlRoom.SelectedValue;
            string[] formats = {"M/d/yyyy", "MM/dd/yyyy", "M/d/yyyy", "M/dd/yyyy", "MM.dd.yyyy"};
            DateTime from, to;
            if (!DateTime.TryParseExact(tbDateFrom.Text, formats, CultureInfo.InvariantCulture, DateTimeStyles.None, out from) ||
                !DateTime.TryParseExact(tbDateTo.Text, formats, CultureInfo.InvariantCulture,DateTimeStyles.None, out to)) return;
            if(DateTime.Compare(from, to) >= 0) return;
            Session["DateFrom"] = from;
            Session["DateTo"] = to;
            Session["Duration"] = to - from;
            Response.Redirect("Booking.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
        }
    }
}