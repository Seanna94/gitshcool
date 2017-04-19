package servletpac;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pojo.Student;
import service.StudentService;
import serviceImpl.StudentServiceImpl;

public class AddStudentServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doGet(req, resp);
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String sid=req.getParameter("sid");
		String sname=req.getParameter("sname");
		String sex=req.getParameter("sex");
		String aclass=req.getParameter("aclass");
		String profession=req.getParameter("profession");
		String teacher=req.getParameter("teacher");
		String faculty=req.getParameter("faculty");
		String tel=req.getParameter("tel");
		String address=req.getParameter("address");
		//req.setAttribute("code", code);
		System.out.println(sname);
		
		Student student=new Student();
		student.setSid(Integer.parseInt(sid));
		student.setSname(sname);
		student.setSex(sex);
		student.setAclass(aclass);
		student.setProfession(profession);
		student.setTeacher(teacher);
		student.setFaculty(faculty);
		student.setTel(Integer.parseInt(tel));
		student.setAddress(address);
		
		StudentService ts=new StudentServiceImpl();
		try {
			ts.addStudent(student);
			RequestDispatcher rd=req.getRequestDispatcher("student/test.jsp");
			rd.forward(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
			RequestDispatcher rd=req.getRequestDispatcher("student/error.jsp");
			rd.forward(req, resp);
		}
		
		
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doPost(req, resp);
		doGet(req,resp);
	}
	

}
