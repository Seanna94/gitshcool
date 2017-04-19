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
   
<title>客户新增</title>
   <script type='text/javascript' src='/chint/dwr/util.js'></script>
<script type='text/javascript' src='/chint/dwr/interface/utilDao.js'></script>
  <script type='text/javascript' src='/chint/dwr/engine.js'></script>
    
	<SCRIPT type=text/javascript 
src="kehuxinzeng_files/prototype_for_validation.js"></SCRIPT>

<SCRIPT type=text/javascript src="kehuxinzeng_files/effects.js"></SCRIPT>

<SCRIPT type=text/javascript src="kehuxinzeng_files/tooltips.js"></SCRIPT>

<SCRIPT type=text/javascript src="kehuxinzeng_files/validation_cn.js"></SCRIPT>
<LINK rel=stylesheet type=text/css href="kehuxinzeng_files/validation.css"><LINK 
rel=stylesheet type=text/css href="kehuxinzeng_files/tooltips.css">
<META content=text/html;charset=UTF-8 http-equiv=Content-Type>
<META content=IE=EmulateIE7 http-equiv=X-UA-Compatible>
<META content=no-cache http-equiv=Pragma>
<META content=no-cache http-equiv=Cache-Control>
<META content=0 http-equiv=Expires><!-- 语言选择 -->
<SCRIPT type=text/javascript src="kehuxinzeng_files/CHN.js"></SCRIPT>
<!-- jquery -->
<SCRIPT type=text/javascript 
src="kehuxinzeng_files/jquery-1.4.2.min.js"></SCRIPT>

<SCRIPT type=text/javascript 
src="kehuxinzeng_files/jquery.actionform.js"></SCRIPT>
<!-- Load Mask -->
<SCRIPT type=text/javascript 
src="kehuxinzeng_files/jquery.loadmask.min.js"></SCRIPT>
<LINK rel=stylesheet type=text/css href="kehuxinzeng_files/jquery.loadmask.css"><!-- My97DatePicker -->
<SCRIPT type=text/javascript src="kehuxinzeng_files/WdatePicker.js"></SCRIPT>
<!-- file upload --><LINK rel=stylesheet type=text/css 
href="kehuxinzeng_files/ajaxfileupload.css">
<SCRIPT type=text/javascript src="kehuxinzeng_files/ajaxfileupload.js"></SCRIPT>
<!-- application default css --><LINK rel=stylesheet type=text/css 
href="kehuxinzeng_files/default.css"><!-- chint ec js -->
<script type="text/javascript">
function form_onValidSave(){

//alert("1");


var deptId=document.getElementById("deptId").value;

var clientId=document.getElementById("clientId").value;
var clientCode=document.getElementById("clientCode").value;
var cmClientType=document.getElementById("cmClientType").value;
var clientName=document.getElementById("clientName").value;
var clientAlias=document.getElementById("clientAlias").value;
var settlementMode=document.getElementById("settlementMode").value;
var dunningCycle=document.getElementById("dunningCycle").value;
var salesman=document.getElementById("salesman").value;

var chargeDept=document.getElementById("chargeDept").value;
var head=document.getElementById("head").value;
var linkMan=document.getElementById("linkMan").value;
var linkTel=document.getElementById("linkTel").value;
var linkMan1=document.getElementById("linkMan1").value;
var linkTel1=document.getElementById("linkTel1").value;
var linkMan2=document.getElementById("linkMan2").value;
var linkTel2=document.getElementById("linkTel2").value;

var mainSelling=document.getElementById("mainSelling").value;
var salesArea=document.getElementById("salesArea").value;
var corpAddr=document.getElementById("corpAddr").value;
var industry=document.getElementById("industry").value;
var deliveryAddr=document.getElementById("deliveryAddr").value;
var zipCode=document.getElementById("zipCode").value;
var telephone=document.getElementById("telephone").value;

var fax=document.getElementById("fax").value;
var email=document.getElementById("emailss").value;
var bankName=document.getElementById("bankName").value;
var accountNumber=document.getElementById("accountNumber").value;
var legalPerson=document.getElementById("legalPerson").value;
var tariff=document.getElementById("tariff").value;
var remark=document.getElementById("remark").value;
var priceRate=document.getElementById("priceRate").value;
var clientStatus=document.getElementById("clientStatus").value;
var creater=document.getElementById("creater").value;
var creatTime=document.getElementById("creatTime").value;

var printMode="";

var b=false;
 
if((clientCode.length>0)&&(clientName.length>0)&&(clientAlias.length>0)&&(cmClientType.length>0)){
  b=true;
}else{
	b=false;
	alert("请输入红色*标注的必填项！")
}
	if(b==true){
	  
			var str="";
	var namess=document.getElementsByName("printMode");
	for(var i=0;i<namess.length;i++)
	      {
	     if(namess.item(i).checked){
	     
	         str=namess.item(i).getAttribute("value");  
	     }
	    
	  }


	$.ajax({
            url : '<%=request.getContextPath()%>/cmClientAction!save.action',
            data:{
            'creatTime':document.getElementById("creatTime").value,
            'deptId':document.getElementById("deptId").value,
            'clientId':clientId,
            'clientCode':clientCode,
            'cmClientType':cmClientType,
            
            'clientName':clientName,
            'clientAlias':clientAlias,
            'settlementMode':settlementMode,
            'dunningCycle':dunningCycle,
            'salesman':salesman,
            
            'chargeDept':chargeDept,
            'head':document.getElementById("head").value,
            'linkMan':linkMan,
            'linkTel':linkTel,
            'linkMan1':linkMan1,
            'linkTel1':linkTel1,
            'linkMan2':linkMan2,
            'linkTel2':linkTel2,
            
            'mainSelling':mainSelling,
            'salesArea':salesArea,            
            'corpAddr':corpAddr,
            'industry':industry,
            'deliveryAddr':deliveryAddr,
            'printMode':str,
            'zipCode':zipCode,
            'telephone':telephone,
            
            'fax':fax,
            'email':email,
            'bankName':bankName,
            'accountNumber':accountNumber,
            'legalPerson':legalPerson,
            'tariff':tariff,
            'remark':remark,
            'priceRate':priceRate,
            
            'clientStatus':clientStatus,
            'creater':creater
           
          
            },
            type: "post",                     
            dataType: "json",
            cache: false,           
             beforeSend: function () {
           
              },success: function (r){ 
            	            	  
            	  if(r.msg=="true"){
            		  
            		  
            		  location.href="kehuguanli.jsp";
            	  }else{
            		   alert(r.msg);
            	  }
                 
           
            }, 
            error: function(r) {
            
         alert("增加失败");
              
                   
              
            }
        });
	
		
	}
}




</script>
<script type="text/javascript">
function getTypeName(){

  utilDao.getTypeName(         
          function(data){   
          dwr.util.addOptions("cmClientType",data,"typeId","typeName");       
          }
);

}

</script>
<%-- 
//根据单位Id查询单位下面的 部门
	public List<SysDepartement> getDepartement(String deptId) {
		hql="from SysDepartement dep where dep.sysDept.deptId='"+deptId+"'";
         Query query=this.getCurrentSession().createQuery(hql);		
		return query.list();
	}
--%>
</head>
<body onload="getTypeName();">
<FORM id=mainForm method=post name=mainForm>
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
                <TD width=100 align=center><!-- IMG class=imageButton 
                  onclick=openKeyBoard() alt=快捷键 
                  src="kehuxinzeng_files/kuaijie.gif"--></TD>
                <TD height=28 align=center>&nbsp;&nbsp;&nbsp;&nbsp;客户新增</TD>
                <TD width=100 align=right><!--IMG class=imageButton 
                  onclick="form_setHomePage('')" alt=设为首页 align=center 
                  src="kehuxinzeng_files/home.gif"--> </TD></TR></TBODY></TABLE>
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
                <TD height=4 background=kehuxinzeng_files/table_lt.gif 
                width=4></TD>
                <TD background=kehuxinzeng_files/table_top.gif></TD>
                <TD background=kehuxinzeng_files/table_rt.gif></TD></TR>
              <TR>
                <TD background=kehuxinzeng_files/table_left.gif width=4></TD>
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
                        <INPUT id=deptId value="111" type=hidden name=deptId> <!-- 隐藏数据 end -->
                        <INPUT id=clientId type=hidden name=clientId/> <!-- 隐藏数据 end -->
                         
                          <TBODY>
                          <TR>
                            <TD class=FieldTitle_Text width="15%"></TD>
                            <TD width="35%"></TD>
                            <TD class=FieldTitle_Text width="15%"></TD>
                            <TD></TD></TR>
                          <TR>
                            <TD class=FieldTitle_Text>客户代码<IMG 
                              src="kehuxinzeng_files/star.gif">:</TD>
                            <TD><INPUT style="WIDTH: 100%" id=clientCode class=required 
                              name=clientCode></TD>
                            <TD class=FieldTitle_Text>客户类别<IMG 
                              src="kehuxinzeng_files/star.gif">:</TD>
                            <TD><SELECT id=cmClientType class=required 
                              name=cmClientType> <OPTION selected 
                                value="">请选择</OPTION> </SELECT> 
                            </TD></TR>
                          <TR>
                            <TD class=FieldTitle_Text>客户名称<IMG 
                              src="kehuxinzeng_files/star.gif">:</TD>
                            <TD><INPUT style="WIDTH: 100%" id=clientName class=required 
                              maxLength=50 name=clientName></TD>
                            <TD>用于显示、查询 </TD>
                            <TD></TD></TR>
                          <TR>
                            <TD class=FieldTitle_Text>客户别名<IMG 
                              src="kehuxinzeng_files/star.gif">:</TD>
                            <TD><INPUT style="WIDTH: 100%" id=clientAlias class=required 
                              name=clientAlias></TD>
                            <TD>只用于打印</TD>
                            <TD></TD></TR>
                          <TR>
                            <TD class=FieldTitle_Text>默认结算方式:</TD>
                            <TD><SELECT id=settlementMode 
                              name=settlementMode> <OPTION selected 
                                value="">请选择</OPTION> <OPTION 
                                value=现结>现结</OPTION> <OPTION 
                              value=赊销>赊销</OPTION></SELECT> &nbsp;&nbsp; 
                                                                                    催款周期： 
                              <SELECT id=dunningCycle name=dunningCycle> 
                              <OPTION selected value="">请选择</OPTION>
                                <OPTION value=现结>现结</OPTION> 
                                <OPTION value=货到付款>货到付款</OPTION> 
                                <OPTION  value=日结>日结</OPTION> 
                                <OPTION value=月结>月结</OPTION> 
                                <OPTION  value=协议>协议</OPTION> 
                                <OPTION value=其他>其他</OPTION>
                              </SELECT> </TD>
                            <TD class=FieldTitle_Text>默认业务员:</TD>
                            <TD><INPUT style="WIDTH: 100%" id=salesman 
                              maxLength=25 name=salesman>                                
                          </TD></TR>
                          <TR>
                            <TD class=FieldTitle_Text>负责部门:</TD>
                            <TD><INPUT style="WIDTH: 100%" id=chargeDept 
                              maxLength=25 name=chargeDept>
                            </TD>
                            <TD class=FieldTitle_Text>负责人:</TD>
                            <TD><INPUT style="WIDTH: 100%" id=head 
                              maxLength=25 name=head></TD></TR>
                          <TR>
                            <TD class=FieldTitle_Text>联系人:</TD>
                            <TD><INPUT style="WIDTH: 100%" id=linkMan 
                              maxLength=100 name=linkMan></TD>
                            <TD class=FieldTitle_Text>联系人电话:</TD>
                            <TD><INPUT style="WIDTH: 100%" id=linkTel 
                              maxLength=100 name=linkTel></TD></TR>
                          <TR>
                            <TD class=FieldTitle_Text>联系人1:</TD>
                            <TD><INPUT style="WIDTH: 100%" id=linkMan1 
                              maxLength=100 name=linkMan1></TD>
                            <TD class=FieldTitle_Text>联系人电话1:</TD>
                            <TD><INPUT style="WIDTH: 100%" id=linkTel1 
                              maxLength=100 name=linkTel1></TD></TR>
                          <TR>
                            <TD class=FieldTitle_Text>联系人2:</TD>
                            <TD><INPUT style="WIDTH: 100%" id=linkMan2 
                              maxLength=100 name=linkMan2></TD>
                            <TD class=FieldTitle_Text>联系人电话2:</TD>
                            <TD><INPUT style="WIDTH: 100%" id=linkTel2 
                              maxLength=100 name=linkTel2></TD></TR>
                          <TR>
                            <TD class=FieldTitle_Text>主销产品:</TD>
                            <TD><INPUT style="WIDTH: 100%" id=mainSelling 
                              name=mainSelling></TD>
                            <TD class=FieldTitle_Text>销售区域:</TD>
                            <TD><INPUT style="WIDTH: 100%" id=salesArea 
                              maxLength=100 name=salesArea></TD></TR>
                          <TR>
                            <TD class=FieldTitle_Text>地址:</TD>
                            <TD><INPUT style="WIDTH: 100%" id=corpAddr 
                              maxLength=50 name=corpAddr></TD>
                            <TD class=FieldTitle_Text>行业:</TD>
                            <TD><INPUT style="WIDTH: 100%" id=industry 
                              maxLength=100 name=industry>
                          </TD></TR>
                          <TR>
                            <TD class=FieldTitle_Text>送货地址:</TD>
                            <TD><INPUT style="WIDTH: 100%" id=deliveryAddr 
                              name=deliveryAddr></TD>
                            <TD class=FieldTitle_Text>销售单打印方式：</TD>
                            <TD><INPUT id=printMode class=radio value="" CHECKED 
                              type=radio name=printMode><LABEL 
                              for=defaultPrintStyle0>无</LABEL> 
                              <INPUT id=defaultPrintStyle1 class=radio value=完整 
                              type=radio name=printMode><LABEL 
                              for=defaultPrintStyle1>完整</LABEL> 
                              <INPUT  id=defaultPrintStyle2 class=radio value=开单 
                              type=radio name=printMode><LABEL 
                              for=defaultPrintStyle2>开单</LABEL> 
                              <INPUT id=defaultPrintStyle3 class=radio value=优惠 
                              type=radio name=printMode><LABEL 
                              for=defaultPrintStyle3>优惠</LABEL> 
                              <INPUT id=defaultPrintStyle4 class=radio value=产品 
                              type=radio name=printMode><LABEL 
                              for=defaultPrintStyle4>产品</LABEL> 
                          </TD></TR>
                          <TR>
                            <TD class=FieldTitle_Text>邮编:</TD>
                            <TD><INPUT style="WIDTH: 100%" id=zipCode 
                            name=zipCode></TD>
                            <TD class=FieldTitle_Text>电话:</TD>
                            <TD><INPUT style="WIDTH: 100%" id=telephone 
                          name=telephone></TD></TR>
                          <TR>
                            <TD class=FieldTitle_Text>传真:</TD>
                            <TD><INPUT style="WIDTH: 100%" id=fax name=fax></TD>
                            <TD class=FieldTitle_Text>Email:</TD>
                            <TD><INPUT style="WIDTH: 100%" id=emailss 
                            name=emailss></TD></TR>
                          <TR>
                            <TD class=FieldTitle_Text>开户银行:</TD>
                            <TD><INPUT style="WIDTH: 100%" id=bankName 
                              name=bankName></TD>
                            <TD class=FieldTitle_Text>银行账号:</TD>
                            <TD><INPUT style="WIDTH: 100%" id=accountNumber 
                              name=accountNumber></TD></TR>
                          <TR>
                            <TD class=FieldTitle_Text>企业法人:</TD>
                            <TD><INPUT style="WIDTH: 100%" id=legalPerson 
                              name=legalPerson></TD>
                            <TD class=FieldTitle_Text>税号:</TD>
                            <TD><INPUT style="WIDTH: 100%" id=tariff 
                            name=tariff></TD></TR>
                          <TR>
                            <TD class=FieldTitle_Text>备注:</TD>
                            <TD><INPUT style="WIDTH: 100%" id=remark 
                              name=remark></TD>
                            <TD class=FieldTitle_Text>开单价上浮:</TD>
                            <TD><INPUT style="WIDTH: 50px" id=priceRate 
                              value=0.0 name=priceRate>% <FONT 
                              color=red>此设置在原开单价基础上追加上浮！</FONT></TD></TR>
                          <TR>
                            <td></td><!--TD class=FieldTitle_Text>MyChint 用户:</TD-->
                            <TD><INPUT id=MyChint type="hidden"
                              name=MyChint value="未开启"></TD>
                            <TD class=FieldTitle_Text>状态:</TD>
                            <TD><SELECT id=clientStatus name=clientStatus> 
                                <OPTION selected value=正常>正常</OPTION> <OPTION 
                                value=停用>停用</OPTION></SELECT> </TD></TR>
                          <TR>
                            <!--TD class=FieldTitle_Text>启动myChint帐号</TD-->
                            <TD><INPUT type=hidden id=myChintCkb class=checkboxs 
                              onclick="checkbox_onClick('myChintCkb','myChintFlag')" 
                              value=1 type=checkbox name=myChintCkb> <INPUT type=hidden
                              id=myChintFlag value=0 type=hidden 
                              name=myChintFlag> </TD>
                            <TD class=FieldTitle_Text></TD>
                            <TD></TD></TR>
                          <TR>
                            <TD class=FieldTitle_Text>创建人</TD>
                            <TD><INPUT style="WIDTH: 100%" id=creater 
                              class=input_show></TD>
                            <TD class=FieldTitle_Text>创建时间:</TD>
                            <TD><INPUT style="WIDTH: 100%" id=creatTime name="creatTime"
                             class=FieldContent_ReadOnly  value=<%=str_date1%>  readonly>
                            </TD>
                            
                            </TR>
                          <!-- TR>
                            <TD class=FieldTitle_Text>更新人</TD>
                            <TD><INPUT style="WIDTH: 100%" id=updater 
                              class=input_show readOnly></TD>
                            <TD class=FieldTitle_Text>更新时间:</TD>
                            <TD><INPUT style="WIDTH: 100%" id=updateTime 
                              class=input_show readOnly></TD></TR--></TBODY></TABLE><!-- 主数据 end --><BR></TD></TR></TBODY></TABLE><BR><BR></TD>
                <TD background=kehuxinzeng_files/table_right.gif 
width=4></TD></TR>
              <TR>
                <TD height=4 background=kehuxinzeng_files/table_lb.gif 
                width=4></TD>
                <TD height=4 background=kehuxinzeng_files/table_bottom.gif></TD>
                <TD height=4 background=kehuxinzeng_files/table_rb.gif 
                width=4></TD></TR></TBODY></TABLE><!-- 操作按钮 start -->
            <TABLE width="100%">
              <TBODY>
              <TR>
                <TD height=50 align=center>
               
                <IMG id=save class=bnt 
                  onclick="form_onValidSave();" name=save 
                  src="kehuxinzeng_files/bc.gif" value="保存(Alt+2)"/> <IMG id=back 
                  class=bnt onclick="history.back();" name=back 
                  src="kehuxinzeng_files/fh.gif" value="返回(Alt+R)"> 
              </TD></TR></TBODY></TABLE><!-- 操作按钮 end --></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></FORM><!-- 表单内容 end -->




  </body>
</html>
