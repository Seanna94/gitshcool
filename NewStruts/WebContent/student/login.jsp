<%@ page contentType="text/html;charset=GBK" %>
<HTML>
	<BODY>
	<script language="javascript">
function check()
{
    if (my.T1.value=="") 
    { 
         alert("�û�������Ϊ��"); 
          my.T1.focus();
         return false; 
      } 
      if (my.T2.value=="") 
      { 
          alert("���벻��Ϊ��"); 
          my.T2.focus();
          return false; 
      } 
      my.submit();    
}
</script>
<div align="center">
<form method="POST" action="login.jsp"��   name="my">
	<table border="1" width="324" id="table1" height="226">
		<tr>
			<td colspan="2" bgcolor="#FF0000"><font color="#FFFFFF">
			<font size="4">***</font>*********��ӭʹ�ñ�ϵͳ************</font></td>
		</tr>
		<tr>
			<td width="48%" align="center">�������û���</td>
			<td width="47%">
			
				<p><input type="text" name="T1" size="20"></p>
			
			</td>
		</tr>
		<tr>
			<td width="48%" height="23" align="center">������������</td>
			<td width="47%" height="23">
			<input type="password" name="T2" size="20"></td>
		</tr>
		<tr>
			<td width="48%">
			<p align="center"><input type="button" value="�ύ" name="B1" onclick="check()"></td>
			<td width="47%">
			<p align="center"><input type="reset" value="����" name="B2"></td>
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
alert("�Բ���������û����������������룡");
history.back();

</script>
<% 
}
} %>
	</BODY>
</HTML>


