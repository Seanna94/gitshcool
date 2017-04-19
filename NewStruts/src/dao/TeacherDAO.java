package dao;

import pojo.Teacher;

import java.sql.SQLException;

import dao.BaseDAO;

public interface TeacherDAO extends BaseDAO<Teacher>{
	
	public int add(Teacher t)throws SQLException;
}
