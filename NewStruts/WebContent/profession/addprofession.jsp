<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//日期转换
	java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
	java.util.Date currentTime = new java.util.Date();//得到当前系统时间 
	String str_date1 = formatter.format(currentTime); //将日期时间格式化 
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加院系</title>
<script type="text/javascript">
function form_onValidSave(){

var pid=document.getElementById("pid").value;
var pname=document.getElementById("pname").value;
var leader=document.getElementById("leader").value;
var class=document.getElementById("class").value;
var b=false;
if((teacherCode.length==0)||(teacherName.length==0)||(teacherSex.length==0)||(teacherType.length==0)){
	alert("请输入红色*标注的必填项！");
	mainForm.teacherCode.focus();
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
<FORM id=mainForm method=post name=mainForm action="<%=request.getContextPath()%>/addTeacher">

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
               <TD height=28 align=center>&nbsp;&nbsp;&nbsp;&nbsp;<b>添加院系</b></TD>
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
                        <INPUT id=teacherId type=hidden name=teacherId/> <!-- 隐藏数据 end -->
                         
                          <TBODY>
                          <TR>
                            <TD class=FieldTitle_Text width="15%"></TD>
                            <TD width="35%"></TD>
                            <TD class=FieldTitle_Text width="15%"></TD>
                            <TD></TD></TR>
                          <TR>
                            <TD class=FieldTitle_Text>院系编号<IMG 
                              src="../img/star.gif">:</TD>
                            <TD><INPUT style="WIDTH: 70%" id=pid class=required 
                              name=pid></TD>
                              
                                  <TD class=FieldTitle_Text>院系名称<IMG 
                              src="../img/star.gif">:</TD>
                            <TD><INPUT style="WIDTH: 70%" id=pnmae class=required 
                              name=pname></TD>
                            
                            <TD class=FieldTitle_Text>专业名称<IMG 
                              src="../img/star.gif">:</TD>
                            <TD><INPUT style="WIDTH: 70%" id=pnmae class=required 
                              name=pname></TD>
                          <TR>
                            <TD class=FieldTitle_Text>办公地点<IMG 
                              src="../img/star.gif">:</TD>
                            <TD><INPUT style="WIDTH: 70%" id=teacherName class=required 
                              maxLength=50 name=teacherName></TD>
                          
                          
                            <TD class=FieldTitle_Text>领导<IMG 
                              src="../img/star.gif">:</TD>
                             <TD><SELECT id=leader class=required 
                              name=leader> 
                              
                            </TD>
                           </TR>
                         
                            <TD class=FieldTitle_Text>电话:</TD>
                            <TD><INPUT style="WIDTH: 70%" id=linkTel 
                              maxLength=100 name=linkTel></TD></TR>
                       
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