<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
//日期转换
	java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
	java.util.Date currentTime = new java.util.Date();//得到当前系统时间 
	String str_date1 = formatter.format(currentTime); //将日期时间格式化 
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
<title>添加教学生</title>
  
<script type="text/javascript">
function form_onValidSave(){

var deptId=document.getElementById("deptId").value;

var studentId=document.getElementById("studentId").value;
var studentsid=document.getElementById("studentsid").value;
var studengsname=document.getElementById("studengsname").value;
var studentsex=document.getElementById("studentsex").value;
var studengaclass=document.getElementById("studentaclass").value;
var studengprofession=document.getElementById("studentprofession").value;
var studengteacher=document.getElementById("studentteacher").value;
var studengfaculty=document.getElementById("studentfaculty").value;
var studengtel=document.getElementById("studenttel").value;
var studengaddress=document.getElementById("studentaddress").value;


var b=false;
 
if((studentsid.length==0)||(studentsname.length==0)||(studentsex.length==0)||(studentaclass.length==0)||(studentprofession.length==0)||(studentteacher.length==0)||(studentfaculty.length==0)||(studenttel.length==0)||(studentaddress.length==0)){
	alert("请输入红色*标注的必填项！");
	mainForm.studentsid.focus();
	return false; 
}
	mainForm.submit();

}
	




</script>

<script type="text/javascript">

</script>

<!-- script type="text/javascript">
function getTypeName(){

  utilDao.getTypeName(         
          function(data){   
          dwr.util.addOptions("cmClientType",data,"typeId","typeName");       
          }
);

}

</script-->

</head>
<body onload="getTypeName();">
<FORM id=mainForm method=post name=mainForm action="<%=request.getContextPath()%>/addstudent">

<TABLE cellSpacing=0 cellPadding=0 width="100%" bgColor=#f1f5fb height="100%">
  <TBODY>
  <TR>
    <TD vAlign=top>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" height="100%">
        <TBODY>
        <TR>
          <TD vAlign=top><!-- 表头 start -->
            <TABLE class=place border=0 cellSpacing=0 cellPadding=0 width="100%" 
            align=center height=28>
              <TBODY>
              <TR>
                <TD width=100 align=center></TD>
               <TD height=28 align=center>&nbsp;&nbsp;&nbsp;&nbsp;<b>添加学生</b></TD>
                <TD width=100 align=right></TD></TR></TBODY></TABLE>
            <TABLE border=0 cellSpacing=0 cellPadding=0 width="60%" align=center 
            height=0>
              <TBODY>
              <TR>
                <TD><INPUT value=struts.token type=hidden 
                  name=struts.token.name> <INPUT 
                  value=4XF2BLTLX0260HG2M6P2503DFIWN48AU type=hidden 
                  name=struts.token> </TD></TR></TBODY></TABLE><!-- 表头 end --><!-- 表单内容 start -->
            <TABLE cellSpacing=0 cellPadding=0 width="96%" align=center 
            height="80%">
              <TBODY>
              <TR>
                <TD height=30 colSpan=3></TD></TR>
              <TR>
                <TD height=4 background=../img/table_lt.gif 
                width=4></TD>
                <TD background=../img/table_top.gif></TD>
                <TD background=../img/table_rt.gif></TD></TR>
              <TR>
                <TD background=../img/table_left.gif width=4></TD>
                
                <TD class=table_bg vAlign=top>
                  <TABLE cellSpacing=0 cellPadding=0 width="96%" align=center 
                  height="100%">
                    <TBODY>
                    <TR>
                      <TD height=1 vAlign=top><!-- 标题 start -->
                        <TABLE cellSpacing=0 cellPadding=0 width="100%">
                          
                          <TBODY>
                          <TR height=20>
                            <TD align=left></TD></TR></TBODY></TABLE><!-- 标题 end --><!-- 主数据 start -->
                        <TABLE cellSpacing=0 cellPadding=2 width="100%"><!-- 隐藏数据 start -->
                        <INPUT id=deptIdA value="111" type=hidden name=deptIdAs> <!-- 隐藏数据 end -->
                        <INPUT id=studentId type=hidden name=studentId/> <!-- 隐藏数据 end -->
                         
                          <TBODY>
                          <TR>
                            <TD class=FieldTitle_Text width="15%"></TD>
                            <TD width="35%"></TD>
                            <TD class=FieldTitle_Text width="15%"></TD>
                            <TD></TD></TR>
                          <TR>
                            <TD class=FieldTitle_Text>学生学号<IMG 
                              src="../img/star.gif">:</TD>
                            <TD><INPUT style="WIDTH: 70%" id=studentsid class=required 
                              name=studentsid></TD>
                            
                            <TD class=FieldTitle_Text>学生姓名<IMG 
                              src="../img/star.gif">:</TD>
                            <TD><INPUT style="WIDTH: 70%" id=studentsid class=required 
                              name=studentsid></TD><td></td></TR>
                          <TR>
                           <TD class=FieldTitle_Text>学生性别<IMG 
                              src="../img/star.gif">:</TD>
                             <TD><SELECT id=teacherType class=required 
                              name=teacherType> 
                              <OPTION selected value="男">男</OPTION>
                               <OPTION value="女">女</OPTION>
                               </SELECT> 
                           
                          
                          
                            <TD class=FieldTitle_Text>学生班级<IMG 
                              src="../img/star.gif">:</TD>
                             <TD><SELECT id=studentaclass class=required 
                              name=studentaclass> 
                            </TD>
                           </TR>
                            <TD class=FieldTitle_Text>学生专业<IMG 
                              src="../img/star.gif">:</TD>
                             <TD><SELECT id=studentprofession class=required 
                              name=studentprofession> 
                            </TD>
                             <TD class=FieldTitle_Text>学生老师<IMG 
                              src="../img/star.gif">:</TD>
                             <TD><SELECT id=studentteacher class=required 
                              name=studentteacher> 
                            </TD>
                            <TR>
                             <TD class=FieldTitle_Text>学生院系<IMG 
                              src="../img/star.gif">:</TD>
                             <TD><SELECT id=studentfaculty class=required 
                              name=studentfaculty> 
                            </TD><TR>
                            <TR>
                             <TD class=FieldTitle_Text>学生电话<IMG 
                              src="../img/star.gif">:</TD>
                            <TD><INPUT style="WIDTH: 70%" id=studentsid class=required 
                              name=studentsid></TD><TR>
                             <<TD class=FieldTitle_Text>学生地址<IMG 
                              src="../img/star.gif">:</TD>
                            <TD><INPUT style="WIDTH: 70%" id=studentsid class=required 
                              name=studentsid></TD>

                       
                          </TBODY></TABLE><!-- 主数据 end --><BR></TD></TR></TBODY></TABLE></TD>
                <TD background=../img/table_right.gif 
width=4></TD></TR>
              <TR>
                <TD height=4 background=../img/table_lb.gif 
                width=4></TD>
                <TD height=4 background=../img/table_bottom.gif></TD>
                <TD height=4 background=../img/table_rb.gif 
                width=4></TD></TR></TBODY></TABLE><!-- 操作按钮 start -->
            <TABLE width="100%">
              <TBODY>
              <TR>
                <TD height=50 align=center>
               <!-- input id=save type="image" class=bnt onclick="form_onValidSave();" name=save 
                  src="../img/bc.gif" value="保存(Alt+2)"/--> 
                <!--  IMG id=save class=bnt onclick="form_onValidSave();" name=save 
                  src="../img/bc.gif" value="保存(Alt+2)"/--> 
                  
                  <input type="button" id=save class=bnt  onclick="form_onValidSave();" name=save 
                  src="../img/bc.gif" value="保存(Alt+2)"/> 
                  
                  <IMG id=back 
                  class=bnt onclick="history.back();" name=back 
                  src="../img/fh.gif" value="返回(Alt+R)"> 
              </TD></TR></TBODY></TABLE><!-- 操作按钮 end --></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></FORM><!-- 表单内容 end -->


  </body>
</html>
