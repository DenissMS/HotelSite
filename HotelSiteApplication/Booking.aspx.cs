using System;
using System.Configuration;
using System.Data;
using System.IO;
using System.Linq;
using System.Web.Services;
using System.Web.UI;
using HotelSiteApplication.Database;

namespace HotelSiteApplication
{
    public partial class Booking : Page
    {
        protected string Svg;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack) return;
            if (Session["DateFrom"] == null || Session["DateTo"]==null) Response.Redirect("Default.aspx");
            Df = (DateTime)Session["DateFrom"];
            Dt = (DateTime)Session["DateTo"];
            DateFrom.Text = Df.ToString("yyyy-MM-dd");
            DateTo.Text = Dt.ToString("yyyy-MM-dd");
            using (var sr = new StreamReader(Server.MapPath("map/map.svg")))
            {
                Svg = RemoveXmlHeader(sr.ReadToEnd());
            }
            Map.InnerHtml = Svg;
            LoadInterFace();
        }

        protected void LoadInterFace()
        {
            const string onb = "onblur", onf = "onfocus";
            FullName.Attributes.Add(onf, string.Format("Clear(this, '{0}')",Resources.Booking.FullName));
            FullName.Attributes.Add(onb, string.Format("Restore(this, '{0}')",Resources.Booking.FullName));
            Email.Attributes.Add(onf, string.Format("Clear(this, '{0}')",Resources.Booking.Email));
            Email.Attributes.Add(onb, string.Format("Restore(this, '{0}')",Resources.Booking.Email));;
            PhoneNumber.Attributes.Add(onf, string.Format("Clear(this, '{0}')",Resources.Booking.PhoneNumber));
            PhoneNumber.Attributes.Add(onb, string.Format("Restore(this, '{0}')",Resources.Booking.PhoneNumber));
            Message.Attributes.Add(onf, string.Format("Clear(this, '{0}')",Resources.Booking.Message));
            Message.Attributes.Add(onb, string.Format("Restore(this, '{0}')", Resources.Booking.Message));
        }

        [WebMethod]
        public static string[] GetRoomInfo(string n)
        {
            var dt = (DataTable)Global.DBConnect.SendRequest(RequestType.Select, 22, new object[] { n });
            return dt.Rows[0].ItemArray.Select(x => x.ToString()).ToArray();
        }

        public string RemoveXmlHeader(string s)
        {
            return new System.Text.RegularExpressions.Regex("<\\?xml.*?>").Replace(s, string.Empty);
        }

        [WebMethod]
        public static bool ConfirmBookingClick(string[] data)
        {
            var date = DateTime.Now.ToString("yyyy-MM-dd hh:mm");
            var client = GetClientData(data[3]);
            if (client.Rows.Count == 0)
            {
                Global.DBConnect.SendRequest(RequestType.Insert, 21, new[] { data[0], data[1], data[2], date, data[3] });
                client = GetClientData(data[3]);
            }
            else
            {
                Global.DBConnect.SendRequest(RequestType.Select, 24, new[] { date });
            }
            Global.DBConnect.SendRequest(RequestType.Insert, 20, new[]
            {
                client.Rows[0]["id"], data[5], data[6], data[7], data[4]
            });
            return true;
        }

        public static DataTable GetClientData(string phone)
        {
            return (DataTable) Global.DBConnect.SendRequest(RequestType.Select, 24, new[] {phone});
        }

        [WebMethod]
        public static string GetServiceList(string n)
        {
            var dt = (DataTable)Global.DBConnect.SendRequest(RequestType.Select, 23, new[] { n });
            const string serviceName = "service";
            const string suffix = "-white";
            string css = string.Empty, controls = string.Empty;
            for (var i = 0; i < dt.Rows.Count; i++)
            {
                css += string.Format("#{2}{3}{0}background: url({4}/{5}.png) #fff left 10px bottom no-repeat; {1} " +
                                     "#{2}{3}:hover{0}background: url({4}/{5}{6}.png) #e26143 left 10px bottom no-repeat; {1}", 
                                     "{", "}", serviceName, i, ConfigurationManager.AppSettings["serviceImagesDir"], dt.Rows[i]["image_name"], suffix);
                controls += string.Format("<div id='service{0}' class='service'>" +
                                            "<div style='display: inline-block; height: 96px; width: 96px;'>{1}</div>" +
                                          "</div>", i, dt.Rows[i]["name"]);
            }
            return string.Format(@"<div id='room-services'><style type='text/css'>{0}</style>{1}</div>", css, controls);
        }

        public DateTime Df { get; set; }

        public DateTime Dt { get; set; }
    }
}