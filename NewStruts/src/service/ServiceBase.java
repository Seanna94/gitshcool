package service;




import dao.AclassDAO;
import dao.ProfessionDAO;
import dao.StudentDAO;
import dao.TeacherDAO;
import daoImpl.AclassDAOImpl;
import daoImpl.ProfessionDAOImpl;
import daoImpl.StudentDAOImpl;
import daoImpl.TeacherDAOImpl;
import pojo.Profession;

public class ServiceBase {
	
	//DaoFactory df=new DaoFactory();
	//protected   TeacherDAO teacherDao=(TeacherDAO)df.getDao(TeacherDAO.class);
	
	protected TeacherDAO teacherDao=new TeacherDAOImpl();
	protected AclassDAO aclassDao=new AclassDAOImpl();
	protected ProfessionDAO professionDao=new ProfessionDAOImpl();
	protected StudentDAO studentDao=new StudentDAOImpl();
}
