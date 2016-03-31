<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/font-awesome.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/main.css">
	<link rel="shortcut icon" href="<%=basePath%>images/icon.png">
 </head> 
<body> 
    <header>
    <%@include file="menubar.jsp"%>	                
    </header>
           <div class="re_main" >
		<h3>修改用户信息</h3>
		<div class="return"><a href="user/user_backIndex" ><i class="fa fa-home fa-de"></i></a></div>
		<s:form action="user/user_updateUser" method="post" cssStyle="margin-left:20px;">
			<s:hidden name="user.id"></s:hidden>
			<s:hidden name="user.username"></s:hidden>
			<s:textfield name="user.stunum" label="学号" cssClass="str_input" cssStyle="margin-top:8px;"></s:textfield>
			<s:textfield name="user.password" label="密码" cssClass="str_input"  cssStyle="margin-top:8px;"></s:textfield>
			<s:textfield name="user.nickname" label="昵称" cssClass="str_input" cssStyle="margin-top:8px;"></s:textfield>
			<s:textfield name="user.phonenum" label="电话" cssClass="str_input" cssStyle="margin-top:8px;"></s:textfield>
			<s:textfield name="user.school" label="学校" cssClass="str_input" cssStyle="margin-top:8px;"></s:textfield>
			<s:textfield name="user.academy" label="学院" cssClass="str_input" cssStyle="margin-top:8px;"></s:textfield>
			<s:textfield name="user.major" label="专业" cssClass="str_input" cssStyle="margin-top:8px;"></s:textfield>
			<s:textfield name="user.wealth" label="积分" cssClass="str_input" cssStyle="margin-top:8px;"></s:textfield>
			<s:textfield name="user.email" label="邮箱" cssClass="str_input" cssStyle="margin-top:8px;"></s:textfield>
			<s:textfield name="user.address" label="住址" cssClass="str_input" cssStyle="margin-top:8px;"></s:textfield>

			<s:submit cssClass="btn btn-green" value="保存"></s:submit>
		</s:form>

	</div>

</body>
</html>
