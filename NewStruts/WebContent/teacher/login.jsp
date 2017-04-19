<%@ page contentType="text/html;charset=GBK" %>
<HTML>
	<BODY>
	<script language="javascript">
function check()
{
    if (my.T1.value=="") 
    { 
         alert("用户名不能为空"); 
          my.T1.focus();
         return false; 
      } 
      if (my.T2.value=="") 
      { 
          alert("密码不能为空"); 
          my.T2.focus();
          return false; 
      } 
      my.submit();    
}
</script>
<div align="center">
<form method="POST" action="login.jsp"　   name="my">
	<table border="1" width="324" id="table1" height="226">
		<tr>
			<td colspan="2" bgcolor="#FF0000"><font color="#FFFFFF">
			<font size="4">***</font>*********欢迎使用本系统************</font></td>
		</tr>
		<tr>
			<td width="48%" align="center">请输入用户名</td>
			<td width="47%">
			
				<p><input type="text" name="T1" size="20"></p>
			
			</td>
		</tr>
		<tr>
			<td width="48%" height="23" align="center">请输入你密码</td>
			<td width="47%" height="23">
			<input type="password" name="T2" size="20"></td>
		</tr>
		<tr>
			<td width="48%">
			<p align="center"><input type="button" value="提交" name="B1" onclick="check()"></td>
			<td width="47%">
			<p align="center"><input type="reset" value="重置" name="B2"></td>
		</tr>
		<tr>
			<td colspan="2" bgcolor="#FF0000">
			<p align="center"><font color="#FFFFFF">ver2.0</font></td>
		</tr>
		
	</table>
	</form>
</div>

<%  
    request.setCharacterEncoding("gb2312"); 
    String name=request.getParameter("T1") ;
    String pass=request.getParameter("T2") ;
    if (name!=null && pass!=null)
    {
        if (name.equals("sunli") && pass.equals("7204"))
        { 
        String str = "1";
	    session.setAttribute("p", str); 
	    response.sendRedirect("sucess.jsp");
        }
   else
   {
%>
<script language="javascript">
alert("对不起密码或用户名错误，请重新输入！");
history.back();

</script>
<% 
}
} %>
	</BODY>
</HTML>


