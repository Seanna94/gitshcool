<%@ page language="java" import="java.util.*,pojo.*" contentType="text/html; charset=utf-8" 
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>按id查找</title>
</head>
<body>

  <form action="findbyid" method="post">
    请输入员工编号：<input type=text name="bh"/>
    <input type=submit value="查找"/>
    </center>
    </form>
  <%
  Profession profession=(Profession)session.getAttribute("Profession") ;
  if (profession!=null)
  {
  out.print(profession.getPid());
  out.print(profession.getPname());
  out.print(profession.getLeader());
  out.print(profession.getAclass());
  }
  else
  {
  String error=(String)session.getAttribute("error");
  out.print(error);
  }
   
   
   %>
</body>
</html>