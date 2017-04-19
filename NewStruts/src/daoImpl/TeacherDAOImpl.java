package daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dao.TeacherDAO;
import pojo.Teacher;

public class TeacherDAOImpl extends BaseDAOImpl<Teacher> implements TeacherDAO{
	public int add(Teacher t){
		int i=0;
		String sql="insert into teacher(teacherCode,teacherType,teacherName,teacherSex,deptId,linkTel) values(?,?,?,?,?,?)";
        PreparedStatement preStmt=null;
		
		Connection cnn=cm.getConn();

		try{
			preStmt =cnn.prepareStatement(sql);
			preStmt.setString(1,t.getTeacherCode());
			preStmt.setString(2,t.getTeacherType());
			preStmt.setString(3, t.getTeacherName());
			
		    System.out.println(t.getTeacherName()+"-----");
			
			preStmt.setString(4,t.getTeacherSex());
			preStmt.setString(5,t.getDeptId());
			preStmt.setString(6, t.getLinkTel());
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
