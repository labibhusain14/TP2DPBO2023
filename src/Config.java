

import com.mysql.jdbc.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
/**
 *
 * @author labib
 */
public class Config {
    private Statement stmt = null;
    private Connection conn = null;
    
    public Config(){
        String ConAddress = "jdbc:mysql://localhost/tp2dpbo";
        String user = "root";
        String pass = "";
        connect(ConAddress, user, pass);
    }
    
    private void connect(String ConAddress, String username, String pass){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(ConAddress, username, pass);
            stmt = conn.createStatement();
        }catch(ClassNotFoundException | SQLException ex){
            System.out.println(ex.getMessage());
        }
    }
    
    public static Connection getConnection(){
     
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/tp2dpbo", "root", "");
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        
        return con;
    }    
    public ResultSet selectQuery(String sql){
        try{
            stmt.executeQuery(sql);
            return stmt.getResultSet();
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
        return null;
    }
    
    public int updateQuery(String sql){
        try{
            return stmt.executeUpdate(sql);
        }catch(SQLException ex){
            System.out.println(ex.getMessage());
        }
        return 0;
    }
    public Statement getStatement(){
        return stmt;
    }

//    PreparedStatement prepareStatement(String sql) {
//        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
//    }
    
}
