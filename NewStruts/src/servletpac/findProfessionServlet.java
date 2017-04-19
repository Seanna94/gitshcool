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

public class findProfessionServlet extends HttpServlet {
protected void doGet(HttpServletRequest req, HttpServletResponse resp, int pid, String pname, String leader, String aclass) throws ServletException, IOException {
	req.setCharacterEncoding("UTF-8");
	resp.setCharacterEncoding("UTF-8");
	
	String pid1=req.getParameter("pid");
	
	
	Profession profession=new Profession();
	profession.setPid(Integer.parseInt(pid1));
	
	
	ProfessionService ts=new ProfessionServiceImpl();
	try {
		ts.findbyid(profession);
		RequestDispatcher rd=req.getRequestDispatcher("teacher/test.jsp");
		rd.forward(req, resp);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		//e.printStackTrace();
		RequestDispatcher rd=req.getRequestDispatcher("teacher/error.jsp");
		rd.forward(req, resp);
	}
	
	super.doGet(req, resp);
	
}

@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
