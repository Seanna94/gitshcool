package daoImpl;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Types;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TreeMap;

import dao.BaseDAO;
import util.DBhelper;

//import org.apache.log4j.Logger;

//import com.opensymphony.sitemesh.Content;

import util.PageDiv;

public class BaseDAOImpl <T extends Serializable> implements BaseDAO<T> {
	protected DBhelper cm=new DBhelper();

	@Override
	public int[] addBatch(String[] sql) throws SQLException {
		int []result=null;
		Statement stat=cm.getConn().createStatement();
		
		if(null!=sql&&sql.length>0)
		{
			for(String tem:sql)
			{
				stat.addBatch(tem);
			}
			result=stat.executeBatch();
		}
		return result;
	}

	@Override
	public int add(T t) throws SQLException {
		int re=-1;
		StringBuilder strFied=new StringBuilder();
		StringBuilder strQuery=new StringBuilder();
		
		
		
		return re;
	
	}

	public void update(T t) throws SQLException 
	{
		
		
	}
	@Override
	public void delete(Class<T> clazz,Integer id) throws SQLException 
	{
		T t=null;
		 try
		{
			t=(T)clazz.newInstance();
		} catch (Exception e)
		{
			//log.error("010_BaseDaoImp_ɾ��ʵ�����ʧ��?"+e);
		} 
		
		
	
	}

	@Override
	public T getById(Class<T> clazz,T tem, Integer id) throws SQLException 
	{
		
		
		 try
		{
			 if(null==tem)
			   tem=(T)clazz.newInstance();
		} catch (Exception e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		//T t=null;
		
		Statement stat=cm.getConn().createStatement();
		
		return tem;
	}

	@Override
	public List<T> getAll(Class<T> clazz, String sql, Object... params)
			throws SQLException 
	{
		
		List<T> list=new ArrayList<T>();
		PreparedStatement ps=cm.getConn().prepareStatement(sql);
		
		return list;
	}

	@Override
	public PageDiv<T> getByPage(Class<T> clazz, String sql, int pageNo, int pageSize, Object... params)
			throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	public void  parseSQL(TreeMap<String,Object> fields,StringBuilder[]sb,String[] pattern)
	{
		Set<String> set=fields.keySet();
		Iterator<String> it=set.iterator();
	    int count=set.size();
	    int index=0;
	    while(it.hasNext())
	    {
	    	String key=it.next();
	    	index++;
	    	if(index!=count)
	    	{
	    		for(int i=0;i<sb.length;i++)
	    		{
	    			sb[i].append(MessageFormat.format(pattern[i], key));
	    			sb[i].append(",");
	    		}
	    	//	strFied.append(key+",");
			//	strQuery.append("?,");
	    	}else
	    	{
	    	//	strFied.append(key);
			//	strQuery.append("?");
	    		for(int i=0;i<sb.length;i++)
	    		{
	    			sb[i].append(MessageFormat.format(pattern[i], key));
	    		}
	    	}
	 
	    }
		
	}
	public void executeSQL(TreeMap<String,Object> fields,String sql)throws SQLException
	{
		PreparedStatement ps=cm.getConn().prepareStatement(sql);
	    Iterator<String> it1=fields.keySet().iterator();
	   	int paramindex=1;
		while(it1.hasNext())
		{
			//NULLʱ�������?
			ps.setObject(paramindex++,fields.get(it1.next()));

		}
		
	    ps.executeUpdate();
	    ps.close();
	}
	
	
	
		
	
	
}

