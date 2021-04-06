package kr.co.sp04.cmm;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBConnection 
{
    public static Connection dbConn;
    
        public static Connection getConnection()
        {
            Connection conn = null;
            try {
                String user = "hr2"; 
                String pw = "1111";
                String url = "jdbc:oracle:thin:@localhost:1521:xe";
                
                Class.forName("oracle.jdbc.driver.OracleDriver");        
                conn = DriverManager.getConnection(url, user, pw);
                
                System.out.println("Databa connected.\n");
                
            } catch (ClassNotFoundException cnfe) {
                System.out.println("DB class Î•? Ï∞æÏùÑ ?àò ?óÜ?äµ?ãà?ã§. :"+cnfe.toString());
            } catch (SQLException sqle) {
                System.out.println("DB ÔøΩÏ†íÔøΩÎÉΩÔøΩÎñéÔøΩÎô£ : "+sqle.toString());
            } catch (Exception e) {
                System.out.println("Unkonwn error");
                e.printStackTrace();
            }
            return conn;     
        }
}