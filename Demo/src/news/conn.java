package  news;

import java.sql.*;

public class conn{
    String sDBDriver = "com.mysql.cj.jdbc.Driver";
    String sConnStr = "jdbc:mysql://localhost/test?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT";
    Connection connect = null;
    ResultSet rs = null;

    public conn(){
        try{
            Class.forName(sDBDriver);
        }
        catch(java.lang.ClassNotFoundException e){
            System.err.println(e.getMessage());
        }

    }

    public ResultSet executeQuery(String sql){
        try{
            connect = DriverManager.getConnection(sConnStr,"root","chaoyue123");
            Statement stmt = connect.createStatement();
            rs = stmt.executeQuery(sql);
        }
        catch (SQLException ex){
            System.err.println(ex.getMessage());
        }
        return rs;
    }

    public int executeUpdate(String sql) {
        int result = 0;
        return result;
    }

    public  void close(){
        if(connect!=null){
            try{
                connect.close();
                connect = null;
            }
            catch (SQLException ex){
                System.err.println(ex.getMessage());
            }
        }
    }
}
