using System.Xml.Serialization;

namespace HotelSiteApplication.Configuration
{
    public class Language
    {
        [XmlAttribute]
        public string ID;
        [XmlAttribute]
        public string Name;
        [XmlAttribute]
        public string Image;
    }
}