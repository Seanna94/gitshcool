package dao;

import java.sql.SQLException;

import pojo.Profession;

public interface ProfessionDAO extends BaseDAO<Profession> {
	public int add(Profession t)throws SQLException;

	public int findbyid(Profession profession);
}
