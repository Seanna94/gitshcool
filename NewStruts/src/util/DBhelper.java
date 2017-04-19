package util;

import java.sql.Connection;   
import java.sql.DriverManager;   
import java.sql.PreparedStatement;   
import java.sql.SQLException;   
 
public class DBhelper {   
    public static final String url = "jdbc:mysql://127.0.0.1:3306/test";   
    public static final String name = "com.mysql.jdbc.Driver";   
    public static final String user = "root";   
    public static final String password = "root";   
  
    public Connection conn = null;   
    public PreparedStatement pst = null;   
  
    public Connection getConn()
	{
		Connection conn=null;
		try
		{
			Class.forName(name);
		}
		catch (ClassNotFoundException e)
		{
			e.printStackTrace();
		}
		try
		{
			conn = DriverManager.getConnection(url,user,password);
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		return conn;
	}
    
    public void closeConn(){
    	if(null!=conn){
    		try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    	}
    }
    

    
      
}  
