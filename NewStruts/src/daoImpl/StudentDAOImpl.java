package daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dao.StudentDAO;
import pojo.Student;

public class StudentDAOImpl extends BaseDAOImpl<Student> implements StudentDAO{
	public int add(Student t){
		int i=0;
		String sql="insert into student(sid,sname,sex,class,profession,teacher,faculty,tel,address) values(?,?,?,?,?,?,?,?,?)";
        PreparedStatement preStmt=null;
		
		Connection cnn=cm.getConn();

		try{
			preStmt =cnn.prepareStatement(sql);
			preStmt.setLong(1,t.getSid());
			preStmt.setString(2,t.getSname());
			preStmt.setString(3, t.getSex());
			
		    System.out.println(t.getSname()+"-----");
			
			preStmt.setString(4,t.getAclass());
			preStmt.setString(5,t.getProfession());
			preStmt.setString(6, t.getFaculty());
			preStmt.setInt(7, t.getTel());
			preStmt.setString(8, t.getAddress());
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
