using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Xml.Serialization;

namespace HotelSiteApplication.Configuration
{
    public class Data
    {
        public static List<Language> Languages;

        public void LoadConfiguration()
        {  
            var serializer = new XmlSerializer(typeof(List<Language>));
            using (var fs = new FileStream(ConfigurationManager.AppSettings["ApplicationPath"] + "\\App_Data\\Languages.xml", FileMode.Open))
            {
                Languages = (List<Language>)serializer.Deserialize(fs);
            }
        }
    }
}
