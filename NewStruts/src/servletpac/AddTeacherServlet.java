package servletpac;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pojo.Teacher;
import service.TeacherService;
import serviceImpl.TeacherServiceImpl;

public class AddTeacherServlet extends HttpServlet {

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
		
		String code=req.getParameter("tCode");
		String type=req.getParameter("tType");
		String name=req.getParameter("tName");
		String sex=req.getParameter("tSex");
		String deptId=req.getParameter("deptId");
		String tel=req.getParameter("tel");
		//req.setAttribute("code", code);
		System.out.println(name);
		
		Teacher teacher=new Teacher();
		teacher.settCode(code);
		teacher.settType(type);
		teacher.settName(name);
		teacher.settSex(sex);
		teacher.setDeptId(deptId);
		teacher.setTel(tel);
		
		TeacherService ts=new TeacherServiceImpl();
		try {
			ts.addTeacher(teacher);
			RequestDispatcher rd=req.getRequestDispatcher("teacher/test.jsp");
			rd.forward(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
			RequestDispatcher rd=req.getRequestDispatcher("teacher/error.jsp");
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
