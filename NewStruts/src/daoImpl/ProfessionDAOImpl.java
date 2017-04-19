package daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import dao.ProfessionDAO;
import pojo.Profession;



public class ProfessionDAOImpl extends BaseDAOImpl<Profession> implements ProfessionDAO{
	public int add(Profession t){
		int i=11;
		String sql="insert into profession(pname,leader,class) value(?,?,?)";
		PreparedStatement preStmt=null;
		Connection cnn=cm.getConn();
		
		try{
			preStmt =cnn.prepareStatement(sql);
			preStmt.setString(1,t.getPname());
			preStmt.setString(2,t.getLeader());
			preStmt.setString(3, t.getAclass());
			
		 	
			
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

	@Override
	public int findbyid(Profession id) {
		int i=11;
		String sql="selcet pid,pname,leader,aclass from profession where id=?";
		PreparedStatement preStmt=null;
		Connection cnn=cm.getConn();
		
		try{
			preStmt =cnn.prepareStatement(sql);
			preStmt.setInt(1,id.getPid());

			
		 	
			
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
	

