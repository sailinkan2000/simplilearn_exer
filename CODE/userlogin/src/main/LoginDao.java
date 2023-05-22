import java.sql.*;  
public class LoginDao
{  
     public static boolean validate(String email,String pass)
     {  
          boolean status=false;
          try
          {  
               Class.forName("oracle.jdbc.driver.OracleDriver");  
               Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:3306","root","root");  
      
               PreparedStatement ps=con.prepareStatement(  
               "select * from userreg where email=? and pass=?");  
               ps.setString(1,email);  
               ps.setString(2,pass);  
               ResultSet rs=ps.executeQuery();  
               status=rs.next();  
          }
          catch(Exception e)
          {
               System.out.println(e);
          }  
          return status;  
     }  
}

