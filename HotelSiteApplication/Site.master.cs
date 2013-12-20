using System;
using System.Globalization;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using HotelSiteApplication.Configuration;

public partial class SiteMaster : MasterPage
{
    const string IbtnPrefix = "ibtn";
    private const string AntiXsrfTokenKey = "__AntiXsrfToken";
    private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
    private string _antiXsrfTokenValue;

    protected void Page_Init(object sender, EventArgs e)
    {
        // Код ниже защищает от XSRF-атак
        var requestCookie = Request.Cookies[AntiXsrfTokenKey];
        Guid requestCookieGuidValue;
        if (requestCookie != null && Guid.TryParse(requestCookie.Value, out requestCookieGuidValue))
        {
            // Использование маркера Anti-XSRF из cookie
            _antiXsrfTokenValue = requestCookie.Value;
            Page.ViewStateUserKey = _antiXsrfTokenValue;
        }
        else
        {
            // Создание нового маркера Anti-XSRF и его сохранение в cookie
            _antiXsrfTokenValue = Guid.NewGuid().ToString("N");
            Page.ViewStateUserKey = _antiXsrfTokenValue;

            var ponseCookie = new HttpCookie(AntiXsrfTokenKey)
                {
                    HttpOnly = true,
                    Value = _antiXsrfTokenValue
                };
            if (FormsAuthentication.RequireSSL && Request.IsSecureConnection)
            {
                ponseCookie.Secure = true;
            }
            Response.Cookies.Set(ponseCookie);
        }

        Page.PreLoad += master_Page_PreLoad;
    }

    private void master_Page_PreLoad(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Задание маркера Anti-XSRF
            ViewState[AntiXsrfTokenKey] = Page.ViewStateUserKey;
            ViewState[AntiXsrfUserNameKey] = Context.User.Identity.Name ?? String.Empty;
        }
        else
        {
            // Проверка маркера Anti-XSRF
            if ((string) ViewState[AntiXsrfTokenKey] != _antiXsrfTokenValue
                || (string) ViewState[AntiXsrfUserNameKey] != (Context.User.Identity.Name ?? String.Empty))
            {
                throw new InvalidOperationException("Ошибка проверки маркера Anti-XSRF.");
            }
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        foreach (var lang in Data.Languages)
        {
            var url = "..//Images//lang//" + lang.Image;
            var btn = new ImageButton
            {
                ID = IbtnPrefix + lang.ID,
                AlternateText = lang.Name,
                ImageUrl = url,
            };
            btn.Click += ChangeLanguage;
            cc.Controls.Add(btn);
        }  
    }
    protected void ChangeLanguage(object sender, ImageClickEventArgs e)
    {
        var btn = (ImageButton)sender;
        var culture = btn.ID.Replace(IbtnPrefix, string.Empty);
        Session["Culture"] = new CultureInfo(culture);
        Response.Redirect(Request.RawUrl);
    }
}