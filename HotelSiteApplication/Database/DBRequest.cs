using System.Collections.Generic;

namespace HotelSiteApplication.Database
{
    public class DBRequest
    {
        public int Id { get; set; }
        public string Description { get; set; }
        public string Query { get; set; }

        public DBRequest(int id, IList<object> p)
        {
            Id = id;
            switch (id)
            {
                case 19: Query = string.Format("SELECT cost FROM Rooms WHERE id = {0}", p[0]); break;
                case 20: Query = string.Format("INSERT INTO Bookings (client_id, room_id, date_from, date_to, message) VALUES ({0}, {1}, " +
                                               "CONVERT(datetime, '{2}', 20), CONVERT(datetime, '{3}', 20), '{4}')", 
                    p[0], p[1], p[2], p[3], p[4]); break;
                case 21: Query = string.Format("INSERT INTO Clients (name, email, visits, last_booked, phone_number) " +
                                               "VALUES ('{0}', '{1}', 1, CONVERT(datetime, '{2}', 20), '{3}') ",
                                                 p[0], p[1], p[3], p[4]); break;
                case 22: Query = string.Format("SELECT * FROM Rooms WHERE id = {0}", p[0]); break;
                case 23: Query = string.Format("SELECT Services.id, Services.name, Services.cost, Services.image_name " +
                                               "FROM Services, RoomServices WHERE Services.id = RoomServices.service_id " +
                                               "AND RoomServices.room_id = {0}", p[0]); break;
                case 24: Query = string.Format("SELECT id FROM Clients WHERE phone_number = '{0}'", p[0]); break;
                case 25: Query = string.Format("UPDATE visits = visits + 1, " +
                                               "last_booked = CONVERT(datetime, '{0}', 20) FROM clients", 
                                               p[0]); break;
            }
        }
    }
}
