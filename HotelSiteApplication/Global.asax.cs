using System;
using System.Globalization;
using System.Threading;
using System.Web;
using HotelSiteApplication.Configuration;
using HotelSiteApplication.Database;
//using HotelSiteApplication.HotelModel;

namespace HotelSiteApplication
{
    public class Global : HttpApplication
    {
        public Data ConfigData;
        public static DBConnect DBConnect;
        //public static Hotel Hotel;
        void Application_Start(object sender, EventArgs e)
        {
            DBConnect = new DBConnect();
            //Hotel = new Hotel();
            ConfigData = new Data();
            ConfigData.LoadConfiguration();
            // Код, выполняемый при запуске приложения
        }

        void Application_End(object sender, EventArgs e)
        {
            //  Код, выполняемый при завершении работы приложения

        }

        void Application_Error(object sender, EventArgs e)
        {
            // Код, выполняемый при появлении необработанной ошибки

        }
        protected void Application_AcquireRequestState(object sender, EventArgs e)
        {
            //Очень важно проверять готовность объекта сессии
            if (HttpContext.Current.Session != null)
            {
                var ci = (CultureInfo)Session["Culture"];
                //Вначале проверяем, что в сессии нет значения
                //и устанавливаем значение по умолчанию
                //это происходит при первом запросе пользователя
                if (ci == null)
                {
                    //Устанавливает значение по умолчанию - базовый английский
                    var langName = "uk-UA";
                    //Пытаемся получить значения с HTTP заголовка
                    if (HttpContext.Current.Request.UserLanguages != null && HttpContext.Current.Request.UserLanguages.Length != 0)
                    {
                        //Получаем список 
                        langName = HttpContext.Current.Request.UserLanguages[0].Substring(0, 2);
                    }
                    ci = new CultureInfo(langName);
                    Session["Culture"] = ci;
                }
                //Устанавливаем культуру для каждого запроса
                Thread.CurrentThread.CurrentUICulture = ci;
                Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(ci.Name);
            }
        }
    }
}
