package dao;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;
import util.PageDiv;

public interface BaseDAO<T extends Serializable> {

	public int[] addBatch(String[] sql) throws SQLException;

	public int add(T t) throws SQLException;

	public void update(T t) throws SQLException;

	public void delete(Class<T> clazz, Integer id) throws SQLException;

	public T getById(Class<T> clazz, T tem, Integer id) throws SQLException;

	public List<T> getAll(Class<T> clazz, String sql, Object... params) throws SQLException;

	public PageDiv<T> getByPage(Class<T> clazz, String sql, int pageNo, int pageSize, Object... params)
			throws SQLException;

}
