package news;

import java.sql.*;

public class DB {
    String sDBDriver = "com.mysql.cj.jdbc.Driver";
    String sConnStr = "jdbc:mysql://localhost/test?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=GMT";
    Connection connect = null;
    ResultSet rs = null;

    public DB()
    {
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
            Statement stmt = connect.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
            rs = stmt.executeQuery(sql);
        }
        catch(SQLException ex){
            ex.printStackTrace();
        }
        return rs;
    }

    public int executeUpdate(String sql)
    {
        int result = 0;
        try{
            connect = DriverManager.getConnection(sConnStr,"root","chaoyue123");
            Statement stmt = connect.createStatement();
            result = stmt.executeUpdate(sql);
        }
        catch(SQLException ex){
            System.err.println(ex.getMessage());
        }
        return result;
    }

    public void close(){
        if(connect!=null){
            try{
                connect.close();
                connect = null;
            }
            catch(SQLException ex){
                System.err.println(ex.getMessage());
            }
        }
    }
}
