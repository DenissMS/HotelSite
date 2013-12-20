using System.Configuration;
using System.Data;
using System.Data.SqlServerCe;

namespace HotelSiteApplication.Database
{
    public class DBConnect
    {
        private readonly SqlCeConnection _connection;

        public DBConnect()
        {
            _connection = new SqlCeConnection(ConfigurationManager.AppSettings["ConnectionString"]);
        }

        public object SendRequest(RequestType type, int id, object[] param)
        {
            var request = new DBRequest(id, param);
            try
            {
                _connection.Open();
                switch (type)
                {
                    case RequestType.Select:
                        var adr = new SqlCeDataAdapter(request.Query, _connection)
                        {
                            SelectCommand = {CommandType = CommandType.Text}
                        };
                        var dt = new DataTable();
                        adr.Fill(dt);
                        return dt;
                    default:
                        var cmd = new SqlCeCommand(request.Query, _connection);
                        cmd.ExecuteNonQuery();
                        break;
                }
                return true;
            }
            catch (SqlCeException)
            {
                return false;
            }
            finally
            {
                _connection.Close();
            }
        }
    }
}