package servletpac;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pojo.Aclass;
import pojo.Teacher;
import service.AclassService;
import service.TeacherService;
import serviceImpl.AclassServiceImpl;
import serviceImpl.TeacherServiceImpl;

public class AddAclassServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp, int cid, String teacher, int student, int proid, String faid) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doGet(req, resp);
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String code=req.getParameter("cid");
		String cname=req.getParameter("cname");
		String teachername=req.getParameter("teacher");
		String studentnum=req.getParameter("student");
		String pofessionid=req.getParameter("poid");
		String facultyid=req.getParameter("faid");
		
		
		//req.setAttribute("code", code);
		System.out.println(cname);
		
		Aclass aclass=new Aclass();
		aclass.setCid(cid);
		aclass.setCname(cname);
		aclass.setTeacher(teacher);
		aclass.setStudent(student);
		aclass.setProid(proid);
		aclass.setFaid(Integer.parseInt(faid));
		
		AclassService ts=new AclassServiceImpl();
		try {
			ts.addAclass(aclass);
			RequestDispatcher rd=req.getRequestDispatcher("aclass/test.jsp");
			rd.forward(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
			RequestDispatcher rd=req.getRequestDispatcher("aclass/error.jsp");
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
