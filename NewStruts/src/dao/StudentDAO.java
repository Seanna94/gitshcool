package dao;

import pojo.Student;

import java.sql.SQLException;

import dao.BaseDAO;

public interface StudentDAO extends BaseDAO<Student>{
	
	public int add(Student t)throws SQLException;
}
