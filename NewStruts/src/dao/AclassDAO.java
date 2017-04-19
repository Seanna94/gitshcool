package dao;

import java.sql.SQLException;

import pojo.Aclass;

public interface AclassDAO extends BaseDAO<Aclass>{
	public int add(Aclass t)throws SQLException;
}
