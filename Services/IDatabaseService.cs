namespace Midterm.Services;
using Dapper;
using Microsoft.Data.SqlClient;
using Midterm.Models.Dtos;

public interface IDatabaseService
{
    NganhHocDto? GetNganh(int manganh);
}

public class DatabaseService : IDatabaseService
{
    private readonly string _connectionString;
    public DatabaseService(string connectionString)
    {
        _connectionString = connectionString;
    }
    public NganhHocDto? GetNganh(int manganh)
    {
        string sql = """
            select m.MaMon,m.TenMon,m.SoTinChi
            from Monhoc m join NganhHoc n on m.MaNganh = n.MaNganh
            where m.MaNganh = @manganh
            """;
        using var connection = GetConnection();

        return connection.Query<NganhHocDto>(sql, new { manganh }).FirstOrDefault();
    }

    private SqlConnection GetConnection()
    {
        return new SqlConnection(_connectionString);
    }


}


