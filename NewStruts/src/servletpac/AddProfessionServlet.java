package servletpac;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pojo.Profession;
import pojo.Teacher;
import service.ProfessionService;
import service.TeacherService;
import serviceImpl.ProfessionServiceImpl;
import serviceImpl.TeacherServiceImpl;

public class AddProfessionServlet extends HttpServlet {
private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp, int pid, String pname, String leader) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doGet(req, resp);
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String code=req.getParameter("pid");
		String type=req.getParameter("pname");
		String name=req.getParameter("leader");
		String aclass=req.getParameter("aclass");
		//req.setAttribute("code", code);
		System.out.println(name);
		
		Profession profession=new Profession();
		profession.setPid(pid);
		profession.setPname(pname);
		profession.setLeader(leader);
		profession.setAclass(aclass);
		
		ProfessionService ts=new ProfessionServiceImpl();
		try {
			ts.addProfession(profession);
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

	
	

