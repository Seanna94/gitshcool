package daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dao.AclassDAO;
import dao.TeacherDAO;
import pojo.Aclass;

public class AclassDAOImpl extends BaseDAOImpl<Aclass> implements AclassDAO{
	public int add(Aclass t){
		int i=0;
		String sql="insert into class(cid,cname,teacher,student) values(?,?,?,?)";
        PreparedStatement preStmt=null;
		
		Connection cnn=cm.getConn();

		try{
			preStmt =cnn.prepareStatement(sql);
			preStmt.setInt(1,t.getCid());
			preStmt.setString(2,t.getCname());
			preStmt.setString(3, t.getTeacher());
			
		    System.out.println(t.getTeacher()+"-----");
			
			preStmt.setInt(4,t.getStudent());
			i=preStmt.executeUpdate();
		}catch (SQLException e)
		{
			e.printStackTrace();
		}
		
		if(preStmt!=null){
			try {
				preStmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(cnn!=null){
			try {
				cnn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return i;
	}
}
